Return-Path: <devicetree+bounces-16726-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E6F7EF7EE
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 20:38:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1F573280D96
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 19:38:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 383D743AAB;
	Fri, 17 Nov 2023 19:38:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1606D6A;
	Fri, 17 Nov 2023 11:38:17 -0800 (PST)
Received: from i5e861935.versanet.de ([94.134.25.53] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r44fO-0000Ix-QK; Fri, 17 Nov 2023 20:38:14 +0100
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
Date: Fri, 17 Nov 2023 20:38:13 +0100
Message-ID: <4289147.1BCLMh4Saa@diego>
In-Reply-To: <2cb3f992-f214-4cdf-8443-9e14ab864a66@ti.com>
References:
 <20231116181218.18886-1-krzysztof.kozlowski@linaro.org>
 <7592981.EvYhyI6sBW@phil> <2cb3f992-f214-4cdf-8443-9e14ab864a66@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Am Freitag, 17. November 2023, 15:03:38 CET schrieb Andrew Davis:
> On 11/16/23 2:33 PM, Heiko Stuebner wrote:
> > Am Donnerstag, 16. November 2023, 21:23:20 CET schrieb Krzysztof Kozlowski:
> >> On 16/11/2023 21:03, Heiko Stuebner wrote:
> > going with the vcc5v0_host regulator of the rk3588-quartzpro64 and
> > 
> > +1. compatible
> > +2. reg
> > +3. ranges
> > +4. All properties with values
> > +5. Boolean properties
> > +6. status (if applicable)
> > +7. Child nodes
> > 
> > we'd end up with
> > 
> >          vcc5v0_host: vcc5v0-host-regulator {
> > /* 1. */        compatible = "regulator-fixed";
> > /* 4. */        gpio = <&gpio4 RK_PB0 GPIO_ACTIVE_HIGH>;
> >                  pinctrl-names = "default";
> >                  pinctrl-0 = <&vcc5v0_host_en>;
> >                  regulator-min-microvolt = <5000000>;
> >                  regulator-max-microvolt = <5000000>;
> >                  regulator-name = "vcc5v0_host";
> >                  vin-supply = <&vcc5v0_usb>;
> > /* 5. */        enable-active-high;
> >                  regulator-always-on;
> >                  regulator-boot-on;
> >          };
> > 
> 
> How about grouping like properties (defined in the same schema),
> then sorting within that group. Would also allow for defining
> where to add spacing.
> 
> 1. compatible
> 2. reg
> 3. ranges
> 4. All property groups
>    4.1 Properties with values
>    4.2 Boolean properties
>    4.3 Separating space
> 6. status (if applicable)
> 7. Child nodes
> 
> Your node then would look like we expect:
> 
> vcc5v0_host: vcc5v0-host-regulator {
> /* 1   */   compatible = "regulator-fixed";
> 
> /* 4.1 */   pinctrl-names = "default";
> /* 4.1 */   pinctrl-0 = <&vcc5v0_host_en>;
> /* 4.3 */
> /* 4.1 */   regulator-min-microvolt = <5000000>;
> /* 4.1 */   regulator-max-microvolt = <5000000>;
> /* 4.1 */   regulator-name = "vcc5v0_host";
> /* 4.2 */   regulator-always-on;
> /* 4.2 */   regulator-boot-on;
> /* 4.2 */   enable-active-high;
> /* 4.3 */
> /* 4.1 */   gpio = <&gpio4 RK_PB0 GPIO_ACTIVE_HIGH>;
> ...
> };

I'm really not sure about adding big sets of rules.
In the above example you'd also need to define which schema has a higher
priority? ;-)


When I started with Rockchip stuff, I also had some fancy way of sorting
elements in mind that was really intuitive to myself :-) .
Over time I realized that it was quite complex - especially when I had to
explain it to people.

There are definite advantages for having compatible + reg + status in
fixed positions, as it helps going over a whole dt to spot the huge
mistakes (accidentially disabled, wrong address), but for the rest a
simple alphabetical sorting is easiest to explain to people :-) .

And alphabetic elements are also easier on my eyes.


I just think having a short clean set of rules like Krzysztof proposed,
is easier to follow and "enforce" and also most likely doesn't deter
people from contributing, if mainline work is not their main occupation.


Heiko




