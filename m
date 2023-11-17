Return-Path: <devicetree+bounces-16729-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BA08D7EF820
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 21:04:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 678AE281032
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 20:04:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26B733BB47;
	Fri, 17 Nov 2023 20:04:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31AF6D6A;
	Fri, 17 Nov 2023 12:04:05 -0800 (PST)
Received: from i5e861935.versanet.de ([94.134.25.53] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r454N-0000e0-3u; Fri, 17 Nov 2023 21:04:03 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Andrew Davis <afd@ti.com>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Arnd Bergmann <arnd@arndb.de>, Bjorn Andersson <andersson@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Michal Simek <michal.simek@amd.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Nishanth Menon <nm@ti.com>,
 Olof Johansson <olof@lixom.net>
Subject: Re: [PATCH] docs: dt-bindings: add DTS Coding Style document
Date: Fri, 17 Nov 2023 21:04:01 +0100
Message-ID: <4071780.8hb0ThOEGa@diego>
In-Reply-To: <50eadab2-0f0a-480c-a77c-ca731c5d75cf@ti.com>
References:
 <20231116181218.18886-1-krzysztof.kozlowski@linaro.org>
 <4289147.1BCLMh4Saa@diego> <50eadab2-0f0a-480c-a77c-ca731c5d75cf@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Am Freitag, 17. November 2023, 20:54:05 CET schrieb Andrew Davis:
> On 11/17/23 1:38 PM, Heiko St=FCbner wrote:
> > Am Freitag, 17. November 2023, 15:03:38 CET schrieb Andrew Davis:
> >> On 11/16/23 2:33 PM, Heiko Stuebner wrote:
> >>> Am Donnerstag, 16. November 2023, 21:23:20 CET schrieb Krzysztof Kozl=
owski:
> >>>> On 16/11/2023 21:03, Heiko Stuebner wrote:
> >>> going with the vcc5v0_host regulator of the rk3588-quartzpro64 and
> >>>
> >>> +1. compatible
> >>> +2. reg
> >>> +3. ranges
> >>> +4. All properties with values
> >>> +5. Boolean properties
> >>> +6. status (if applicable)
> >>> +7. Child nodes
> >>>
> >>> we'd end up with
> >>>
> >>>           vcc5v0_host: vcc5v0-host-regulator {
> >>> /* 1. */        compatible =3D "regulator-fixed";
> >>> /* 4. */        gpio =3D <&gpio4 RK_PB0 GPIO_ACTIVE_HIGH>;
> >>>                   pinctrl-names =3D "default";
> >>>                   pinctrl-0 =3D <&vcc5v0_host_en>;
> >>>                   regulator-min-microvolt =3D <5000000>;
> >>>                   regulator-max-microvolt =3D <5000000>;
> >>>                   regulator-name =3D "vcc5v0_host";
> >>>                   vin-supply =3D <&vcc5v0_usb>;
> >>> /* 5. */        enable-active-high;
> >>>                   regulator-always-on;
> >>>                   regulator-boot-on;
> >>>           };
> >>>
> >>
> >> How about grouping like properties (defined in the same schema),
> >> then sorting within that group. Would also allow for defining
> >> where to add spacing.
> >>
> >> 1. compatible
> >> 2. reg
> >> 3. ranges
> >> 4. All property groups
> >>     4.1 Properties with values
> >>     4.2 Boolean properties
> >>     4.3 Separating space
> >> 6. status (if applicable)
> >> 7. Child nodes
> >>
> >> Your node then would look like we expect:
> >>
> >> vcc5v0_host: vcc5v0-host-regulator {
> >> /* 1   */   compatible =3D "regulator-fixed";
> >>
> >> /* 4.1 */   pinctrl-names =3D "default";
> >> /* 4.1 */   pinctrl-0 =3D <&vcc5v0_host_en>;
> >> /* 4.3 */
> >> /* 4.1 */   regulator-min-microvolt =3D <5000000>;
> >> /* 4.1 */   regulator-max-microvolt =3D <5000000>;
> >> /* 4.1 */   regulator-name =3D "vcc5v0_host";
> >> /* 4.2 */   regulator-always-on;
> >> /* 4.2 */   regulator-boot-on;
> >> /* 4.2 */   enable-active-high;
> >> /* 4.3 */
> >> /* 4.1 */   gpio =3D <&gpio4 RK_PB0 GPIO_ACTIVE_HIGH>;
> >> ...
> >> };
> >=20
> > I'm really not sure about adding big sets of rules.
> > In the above example you'd also need to define which schema has a higher
> > priority? ;-)
> >=20
> >=20
> > When I started with Rockchip stuff, I also had some fancy way of sorting
> > elements in mind that was really intuitive to myself :-) .
> > Over time I realized that it was quite complex - especially when I had =
to
> > explain it to people.
> >=20
> > There are definite advantages for having compatible + reg + status in
> > fixed positions, as it helps going over a whole dt to spot the huge
> > mistakes (accidentially disabled, wrong address), but for the rest a
> > simple alphabetical sorting is easiest to explain to people :-) .
> >=20
> > And alphabetic elements are also easier on my eyes.
> >=20
>=20
> +1 for starting with compatible/reg/status that we would like to see
> in the same spot in each node.
>=20
> Not so sure on plain alphabetical. That has the same issue you pointed out
> with splitting value vs boolean properties, related properties would end =
up
> not grouped. Some like regulator- with the same prefix will, but think -g=
pios
> that is a postfix, they would be scattered about.
>=20
> How about just enforcing ordering on the couple common property we care a=
bout
> seeing and everything else left free-hand as it today?

Sounds like a very sensible idea :-) .

Especially as the sorting of individual properties is just a tiny part of
Krzysztof's document, and all the other parts in it are way more
important anyway.


Heiko



