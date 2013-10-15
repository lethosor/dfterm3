-- | Module that turns CP437 code points to Unicode code points.
--

module Dfterm3.CP437ToUnicode
    ( cp437ToUnicode
    , unicodeToCP437 )
    where

import Data.Word ( Word8 )
import Data.Char ( chr )

import qualified Data.Map as M

cp437ToUnicode :: Word8 -> Char
cp437ToUnicode 1 = '\x263a'
cp437ToUnicode 2 = '\x263b'
cp437ToUnicode 3 = '\x2665'
cp437ToUnicode 4 = '\x2666'
cp437ToUnicode 5 = '\x2663'
cp437ToUnicode 6 = '\x2660'
cp437ToUnicode 7 = '\x2022'
cp437ToUnicode 8 = '\x25d8'
cp437ToUnicode 9 = '\x25cb'
cp437ToUnicode 10 = '\x25d9'
cp437ToUnicode 11 = '\x2642'
cp437ToUnicode 12 = '\x2640'
cp437ToUnicode 13 = '\x266a'
cp437ToUnicode 14 = '\x266b'
cp437ToUnicode 15 = '\x263c'
cp437ToUnicode 16 = '\x25ba'
cp437ToUnicode 17 = '\x25c4'
cp437ToUnicode 18 = '\x2195'
cp437ToUnicode 19 = '\x203c'
cp437ToUnicode 20 = '\x00b6'
cp437ToUnicode 21 = '\x00a7'
cp437ToUnicode 22 = '\x25ac'
cp437ToUnicode 23 = '\x21a8'
cp437ToUnicode 24 = '\x2191'
cp437ToUnicode 25 = '\x2193'
cp437ToUnicode 26 = '\x2192'
cp437ToUnicode 27 = '\x2190'
cp437ToUnicode 28 = '\x221f'
cp437ToUnicode 29 = '\x2194'
cp437ToUnicode 30 = '\x25b2'
cp437ToUnicode 31 = '\x25bc'
cp437ToUnicode 127 = '\x2302'
cp437ToUnicode 128 = '\x00c7'
cp437ToUnicode 129 = '\x00fc'
cp437ToUnicode 130 = '\x00e9'
cp437ToUnicode 131 = '\x00e2'
cp437ToUnicode 132 = '\x00e4'
cp437ToUnicode 133 = '\x00e0'
cp437ToUnicode 134 = '\x00e5'
cp437ToUnicode 135 = '\x00e7'
cp437ToUnicode 136 = '\x00ea'
cp437ToUnicode 137 = '\x00eb'
cp437ToUnicode 138 = '\x00e8'
cp437ToUnicode 139 = '\x00ef'
cp437ToUnicode 140 = '\x00ee'
cp437ToUnicode 141 = '\x00ec'
cp437ToUnicode 142 = '\x00c4'
cp437ToUnicode 143 = '\x00e5'
cp437ToUnicode 144 = '\x00c9'
cp437ToUnicode 145 = '\x00e6'
cp437ToUnicode 146 = '\x00c6'
cp437ToUnicode 147 = '\x00f4'
cp437ToUnicode 148 = '\x00f6'
cp437ToUnicode 149 = '\x00f2'
cp437ToUnicode 150 = '\x00fb'
cp437ToUnicode 151 = '\x00f9'
cp437ToUnicode 152 = '\x00ff'
cp437ToUnicode 153 = '\x00d6'
cp437ToUnicode 154 = '\x00dc'
cp437ToUnicode 155 = '\x00a2'
cp437ToUnicode 156 = '\x00a3'
cp437ToUnicode 157 = '\x00a5'
cp437ToUnicode 158 = '\x20a7'
cp437ToUnicode 159 = '\x0192'
cp437ToUnicode 160 = '\x00e1'
cp437ToUnicode 161 = '\x00ed'
cp437ToUnicode 162 = '\x00f3'
cp437ToUnicode 163 = '\x00fa'
cp437ToUnicode 164 = '\x00f1'
cp437ToUnicode 165 = '\x00d1'
cp437ToUnicode 166 = '\x00aa'
cp437ToUnicode 167 = '\x00ba'
cp437ToUnicode 168 = '\x00bf'
cp437ToUnicode 169 = '\x2310'
cp437ToUnicode 170 = '\x00ac'
cp437ToUnicode 171 = '\x00bd'
cp437ToUnicode 172 = '\x00bc'
cp437ToUnicode 173 = '\x00a1'
cp437ToUnicode 174 = '\x00ab'
cp437ToUnicode 175 = '\x00bb'
cp437ToUnicode 176 = '\x2591'
cp437ToUnicode 177 = '\x2592'
cp437ToUnicode 178 = '\x2593'
cp437ToUnicode 179 = '\x2502'
cp437ToUnicode 180 = '\x2524'
cp437ToUnicode 181 = '\x2561'
cp437ToUnicode 182 = '\x2562'
cp437ToUnicode 183 = '\x2556'
cp437ToUnicode 184 = '\x2555'
cp437ToUnicode 185 = '\x2563'
cp437ToUnicode 186 = '\x2551'
cp437ToUnicode 187 = '\x2557'
cp437ToUnicode 188 = '\x255d'
cp437ToUnicode 189 = '\x255c'
cp437ToUnicode 190 = '\x255b'
cp437ToUnicode 191 = '\x2510'
cp437ToUnicode 192 = '\x2514'
cp437ToUnicode 193 = '\x2534'
cp437ToUnicode 194 = '\x252c'
cp437ToUnicode 195 = '\x251c'
cp437ToUnicode 196 = '\x2500'
cp437ToUnicode 197 = '\x253c'
cp437ToUnicode 198 = '\x255e'
cp437ToUnicode 199 = '\x255f'
cp437ToUnicode 200 = '\x255a'
cp437ToUnicode 201 = '\x2554'
cp437ToUnicode 202 = '\x2569'
cp437ToUnicode 203 = '\x2566'
cp437ToUnicode 204 = '\x2560'
cp437ToUnicode 205 = '\x2550'
cp437ToUnicode 206 = '\x256c'
cp437ToUnicode 207 = '\x2567'
cp437ToUnicode 208 = '\x2568'
cp437ToUnicode 209 = '\x2564'
cp437ToUnicode 210 = '\x2565'
cp437ToUnicode 211 = '\x2559'
cp437ToUnicode 212 = '\x2558'
cp437ToUnicode 213 = '\x2552'
cp437ToUnicode 214 = '\x2553'
cp437ToUnicode 215 = '\x256b'
cp437ToUnicode 216 = '\x256a'
cp437ToUnicode 217 = '\x2518'
cp437ToUnicode 218 = '\x250c'
cp437ToUnicode 219 = '\x2588'
cp437ToUnicode 220 = '\x2584'
cp437ToUnicode 221 = '\x258c'
cp437ToUnicode 222 = '\x2590'
cp437ToUnicode 223 = '\x2580'
cp437ToUnicode 224 = '\x03b1'
cp437ToUnicode 225 = '\x00df'
cp437ToUnicode 226 = '\x0393'
cp437ToUnicode 227 = '\x03c0'
cp437ToUnicode 228 = '\x03a3'
cp437ToUnicode 229 = '\x03c3'
cp437ToUnicode 230 = '\x00b5'
cp437ToUnicode 231 = '\x03c4'
cp437ToUnicode 232 = '\x03a6'
cp437ToUnicode 233 = '\x0398'
cp437ToUnicode 234 = '\x03a9'
cp437ToUnicode 235 = '\x03b4'
cp437ToUnicode 236 = '\x221e'
cp437ToUnicode 237 = '\x03c6'
cp437ToUnicode 238 = '\x03b5'
cp437ToUnicode 239 = '\x2229'
cp437ToUnicode 240 = '\x2261'
cp437ToUnicode 241 = '\x00b1'
cp437ToUnicode 242 = '\x2265'
cp437ToUnicode 243 = '\x2264'
cp437ToUnicode 244 = '\x2320'
cp437ToUnicode 245 = '\x2321'
cp437ToUnicode 246 = '\x00F7'
cp437ToUnicode 247 = '\x2248'
cp437ToUnicode 248 = '\x00b0'
cp437ToUnicode 249 = '\x2219'
cp437ToUnicode 250 = '\x00b7'
cp437ToUnicode 251 = '\x221a'
cp437ToUnicode 252 = '\x207f'
cp437ToUnicode 253 = '\x00b2'
cp437ToUnicode 254 = '\x25a0'
cp437ToUnicode 255 = '\x00a0'
cp437ToUnicode x = chr (fromIntegral x)

unicodeMap :: M.Map Char Word8
unicodeMap = M.fromList (fmap (\x -> ( cp437ToUnicode x
                                     , x ))
                              [0..255])
{-# NOINLINE unicodeMap #-}

unicodeToCP437 :: Char -> Word8
unicodeToCP437 text = M.findWithDefault undefined text unicodeMap

