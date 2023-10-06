Return-Path: <devicetree+bounces-6398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 970727BB308
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 10:25:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A52D31C209CD
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 08:25:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65906749E;
	Fri,  6 Oct 2023 08:24:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 603747469
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 08:24:56 +0000 (UTC)
Received: from elvis.franken.de (elvis.franken.de [193.175.24.41])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 2B5BDFC;
	Fri,  6 Oct 2023 01:24:54 -0700 (PDT)
Received: from uucp by elvis.franken.de with local-rmail (Exim 3.36 #1)
	id 1qog8g-0002lN-00; Fri, 06 Oct 2023 10:24:50 +0200
Received: by alpha.franken.de (Postfix, from userid 1000)
	id E4D8CC0250; Fri,  6 Oct 2023 10:22:14 +0200 (CEST)
Date: Fri, 6 Oct 2023 10:22:14 +0200
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: =?utf-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>
Cc: Sergio Paracuellos <sergio.paracuellos@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-mips@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: Re: [PATCH] mips: dts: ralink: mt7621: define each reset as an item
Message-ID: <ZR/Dtm0wTCa/V26h@alpha.franken.de>
References: <20230917103753.52644-1-arinc.unal@arinc9.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230917103753.52644-1-arinc.unal@arinc9.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Sun, Sep 17, 2023 at 01:37:53PM +0300, Arınç ÜNAL wrote:
> Each item of the resets property should define a reset. Split the item with
> two resets on the ethernet node into two separate items.
> 
> Sort the items of the clocks property to the same line as a trivial change.
> 
> Signed-off-by: Arınç ÜNAL <arinc.unal@arinc9.com>
> ---
>  arch/mips/boot/dts/ralink/mt7621.dtsi | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/mips/boot/dts/ralink/mt7621.dtsi b/arch/mips/boot/dts/ralink/mt7621.dtsi
> index 7caed0d14f11..35a10258f235 100644
> --- a/arch/mips/boot/dts/ralink/mt7621.dtsi
> +++ b/arch/mips/boot/dts/ralink/mt7621.dtsi
> @@ -300,14 +300,13 @@ ethernet: ethernet@1e100000 {
>  		compatible = "mediatek,mt7621-eth";
>  		reg = <0x1e100000 0x10000>;
>  
> -		clocks = <&sysc MT7621_CLK_FE>,
> -			 <&sysc MT7621_CLK_ETH>;
> +		clocks = <&sysc MT7621_CLK_FE>, <&sysc MT7621_CLK_ETH>;
>  		clock-names = "fe", "ethif";
>  
>  		#address-cells = <1>;
>  		#size-cells = <0>;
>  
> -		resets = <&sysc MT7621_RST_FE &sysc MT7621_RST_ETH>;
> +		resets = <&sysc MT7621_RST_FE>, <&sysc MT7621_RST_ETH>;
>  		reset-names = "fe", "eth";
>  
>  		interrupt-parent = <&gic>;
> -- 
> 2.39.2
> 

applied to mips-next.

Thomas.

-- 
Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
good idea.                                                [ RFC1925, 2.3 ]

