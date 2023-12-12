Return-Path: <devicetree+bounces-24412-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E4C2C80F25C
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 17:22:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8FC331F214B7
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 16:22:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D49477F1C;
	Tue, 12 Dec 2023 16:22:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id A05E7B4;
	Tue, 12 Dec 2023 08:22:10 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 66B36143D;
	Tue, 12 Dec 2023 08:22:56 -0800 (PST)
Received: from donnerap.manchester.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5BC0C3F738;
	Tue, 12 Dec 2023 08:22:08 -0800 (PST)
Date: Tue, 12 Dec 2023 16:22:00 +0000
From: Andre Przywara <andre.przywara@arm.com>
To: Anne Macedo <retpolanne@posteo.net>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>, devicetree@vger.kernel.org (open
 list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/Allwinner sunXi
 SoC support), linux-sunxi@lists.linux.dev (open list:ARM/Allwinner sunXi
 SoC support), linux-kernel@vger.kernel.org (open list)
Subject: Re: [PATCH] arm64: dts: allwinner: Orange Pi One Plus PHY support
Message-ID: <20231212162200.10b3868b@donnerap.manchester.arm.com>
In-Reply-To: <20231212122835.10850-2-retpolanne@posteo.net>
References: <20231212122835.10850-2-retpolanne@posteo.net>
Organization: ARM
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Tue, 12 Dec 2023 12:28:30 +0000
Anne Macedo <retpolanne@posteo.net> wrote:

Hi Anne,

> Adds compatible values to mdio subnodes for Ethernet PHY representing
> Realtek 8211 PHY to Orange Pi One Plus.

So can you state why this would be needed? This is the RTL8211 ID,
right? Which should be autodetected via MDIO. Looking back in my inbox
you proposed this change before, for U-Boot, specifically, but I fail to
find a solution or explanation what really happens here. Two Renesas .dts
files have the same compatible, and the commit message talks about the
reset line there, is this related?

So can you please give some more background and explanation? That would be
part of a good commit message anyway ("why", not "what").

Cheers,
Andre

> Signed-off-by: Anne Macedo <retpolanne@posteo.net>
> ---
>  arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-one-plus.dts | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-one-plus.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-one-plus.dts
> index 29a081e72..7248ab72f 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-one-plus.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-one-plus.dts
> @@ -37,7 +37,8 @@ &emac {
>  
>  &mdio {
>  	ext_rgmii_phy: ethernet-phy@1 {
> -		compatible = "ethernet-phy-ieee802.3-c22";
> +		compatible = "ethernet-phy-id001c.c915",
> +			     "ethernet-phy-ieee802.3-c22";
>  		reg = <1>;
>  	};
>  };


