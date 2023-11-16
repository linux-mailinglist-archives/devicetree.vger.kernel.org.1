Return-Path: <devicetree+bounces-16401-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 329367EE80E
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 21:03:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9E6291F240F9
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 20:03:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBFB230CED;
	Thu, 16 Nov 2023 20:03:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48FEE1A5;
	Thu, 16 Nov 2023 12:03:15 -0800 (PST)
Received: from [194.95.143.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r3ia0-0005T4-Vl; Thu, 16 Nov 2023 21:03:13 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Arnd Bergmann <arnd@arndb.de>, Bjorn Andersson <andersson@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Michal Simek <michal.simek@amd.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Nishanth Menon <nm@ti.com>,
 Olof Johansson <olof@lixom.net>
Subject: Re: [PATCH] docs: dt-bindings: add DTS Coding Style document
Date: Thu, 16 Nov 2023 21:03:12 +0100
Message-ID: <3266223.44csPzL39Z@phil>
In-Reply-To: <a338048d-bdee-4be5-bd47-c744b301913a@linaro.org>
References:
 <20231116181218.18886-1-krzysztof.kozlowski@linaro.org>
 <5727404.DvuYhMxLoT@phil> <a338048d-bdee-4be5-bd47-c744b301913a@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Am Donnerstag, 16. November 2023, 20:51:24 CET schrieb Krzysztof Kozlowski:
> On 16/11/2023 20:26, Heiko Stuebner wrote:
> > Hi Krzysztof,
> > Am Donnerstag, 16. November 2023, 19:12:18 CET schrieb Krzysztof Kozlowski:
> >> Document preferred coding style for Devicetree sources (DTS and DTSI),
> >> to bring consistency among all (sub)architectures and ease in reviews.
> >>
> >> Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> >> Cc: Arnd Bergmann <arnd@arndb.de>
> >> Cc: Bjorn Andersson <andersson@kernel.org>
> >> Cc: Geert Uytterhoeven <geert+renesas@glider.be>
> >> Cc: Heiko Stuebner <heiko@sntech.de>
> >> Cc: Konrad Dybcio <konrad.dybcio@linaro.org>
> >> Cc: Matthias Brugger <matthias.bgg@gmail.com>
> >> Cc: Michal Simek <michal.simek@amd.com>
> >> Cc: Neil Armstrong <neil.armstrong@linaro.org>
> >> Cc: Nishanth Menon <nm@ti.com>
> >> Cc: Olof Johansson <olof@lixom.net>
> >> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >>
> > 
> >> +Order of Properties in Device Node
> >> +----------------------------------
> >> +
> >> +Following order of properties in device nodes is preferred:
> >> +
> >> +1. compatible
> >> +2. reg
> >> +3. ranges
> >> +4. All properties with values
> >> +5. Boolean properties
> > 
> > I guess the only thing I do have questions about is the part
> > 
> >> +4. All properties with values
> >> +5. Boolean properties
> > 
> > Is there a rationale for it? Because with it things like regulator-*
> > properties then end up in two different blocks.
> 
> Good point. It is only a matter of style that this:
> 
> foo {
> 	compatible = "foo";
> 	reg = <0x1>;
> 	clocks = <&clk>;
> 	wakeup-source;
> 	key-autorepeat;
> }
> 
> looks better to me than:
> 
> 
> foo {
> 	compatible = "foo";
> 	reg = <0x1>;
> 	key-autorepeat;
> 	wakeup-source;
> 	clocks = <&clk>;
> }
> 
> But you have good point that similar properties should be usually
> grouped together.
> 
> About which regulator properties are you thinking now? You mean the
> supplies or the provider?

I was thinking about the provider. There are 
	regulator-min-microvolt = <>;
and friends, but also
	regulator-boot-on;


I guess I would just go with

1. compatible
2. reg
3. ranges
4. All other properties
5. status (if applicable)
6. Child nodes

aka grouping the old 4+5 together. The difference is probably minimal
but doesn't create corner cases and you don't need to know if a property
has a value or is boolean when looking for it.


Heiko



