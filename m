Return-Path: <devicetree+bounces-24583-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 270A78107B7
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 02:36:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DA96D1F21AF4
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 01:36:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56F8DA50;
	Wed, 13 Dec 2023 01:36:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id D5DA3B2;
	Tue, 12 Dec 2023 17:36:47 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B6767C15;
	Tue, 12 Dec 2023 17:37:33 -0800 (PST)
Received: from minigeek.lan (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D7AB43F762;
	Tue, 12 Dec 2023 17:36:45 -0800 (PST)
Date: Wed, 13 Dec 2023 01:35:44 +0000
From: Andre Przywara <andre.przywara@arm.com>
To: Anne Macedo <retpolanne@posteo.net>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>, "open list:OPEN FIRMWARE AND
 FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, "moderated
 list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Allwinner sunXi SoC
 support" <linux-sunxi@lists.linux.dev>, open list
 <linux-kernel@vger.kernel.org>, Corentin Labbe <clabbe@baylibre.com>
Subject: Re: [PATCH] arm64: dts: allwinner: Orange Pi One Plus PHY support
Message-ID: <20231213013544.2fc7e0d1@minigeek.lan>
In-Reply-To: <axsvii25yrknfae6gdreti7lcskoscsdbsujwuispiieimsbdy@gwzm4l7mwlew>
References: <20231212122835.10850-2-retpolanne@posteo.net>
	<20231212162200.10b3868b@donnerap.manchester.arm.com>
	<axsvii25yrknfae6gdreti7lcskoscsdbsujwuispiieimsbdy@gwzm4l7mwlew>
Organization: Arm Ltd.
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.31; x86_64-slackware-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Tue, 12 Dec 2023 19:27:14 +0000
Anne Macedo <retpolanne@posteo.net> wrote:

Hi Anne,

> On Tue, Dec 12, 2023 at 04:22:00PM +0000, Andre Przywara wrote:
> > On Tue, 12 Dec 2023 12:28:30 +0000
> > Anne Macedo <retpolanne@posteo.net> wrote:
> > 
> > Hi Anne,
> >   
> > > Adds compatible values to mdio subnodes for Ethernet PHY representing
> > > Realtek 8211 PHY to Orange Pi One Plus.  
> > 
> > So can you state why this would be needed? This is the RTL8211 ID,  
> 
> Apologies, I completely forgot to include some context. 
> 
> > right? Which should be autodetected via MDIO. Looking back in my inbox
> > you proposed this change before, for U-Boot, specifically, but I fail to
> > find a solution or explanation what really happens here. Two Renesas .dts
> > files have the same compatible, and the commit message talks about the
> > reset line there, is this related?
> > 
> > So can you please give some more background and explanation? That would be
> > part of a good commit message anyway ("why", not "what").  
> 
> Should I resend the commit with a more meaningful explanation? The
> context is the following:
> 
> currently, ethernet doesn't seem to work on both u-boot and Linux on the
> Orange Pi One Plus board. 
> 
> On the kernel, this error shows up:
> 
> Configuring network interfaces... [    5.992589] dwmac-sun8i 5020000.ethernet eth0: Register MEM_TYPE_PAGE_POOL RxQ-0
> [    6.000823] dwmac-sun8i 5020000.ethernet eth0: __stmmac_open: Cannot attach to PHY (error: -19)
> 
> After applying this fix, the PHY gets attached: 
> 
> Configuring network interfaces... [    6.060020] dwmac-sun8i 5020000.ethernet eth0: Register MEM_TYPE_PAGE_POOL RxQ-0
> [    6.069460] dwmac-sun8i 5020000.ethernet eth0: PHY [stmmac-0:01] driver [RTL8211E Gigabit Ethernet] (irq=POLL)
> 
> The previous compatible list that had ethernet-phy-ieee802.3-c22 fails
> to find a PHY, so this patch includes the correct PHY ID with the
> RTL8211 ID. 
> 
> The behaviour is described on [1].

So this is all an observation, but no real explanation, isn't it?
To cite [1]: "If the PHY reports an incorrect ID (or none at all) ...".
I am pretty sure this is not the case here, instead we are looking at
some missing platform bits, like a missing clock, reset, or most likely
regulator. Or one of the existing resources is wrongly assigned or
configured? If the PHY is not (yet?) powered correctly when the code
does the auto-detection via the MDIO bus, then the initialisation would
fail. But since it works when overriding the auto-detection, I feel
like we are papering over something here.
Do you have the schematics for this board? I can only find the one for
the Orange Pi Plus 2E, and I don't know how similar those two are. This
shows *two* regulators, but both are activated by the same GPIO.
It would also be interesting to see if any of Corentin's work for the
Orange Pi 3 helps here?

Cheers,
Andre


> U-boot fails completely if the
> correct PHY ID is not correct, and in order to fix U-boot we need to fix
> the upstream dts [2].
> 
> [1] https://elixir.bootlin.com/linux/v4.14/source/Documentation/devicetree/bindings/net/phy.txt#L20
> [2] https://elixir.bootlin.com/u-boot/latest/source/drivers/core/ofnode.c#L1258
> 
> > 
> > Cheers,
> > Andre
> >   
> > > Signed-off-by: Anne Macedo <retpolanne@posteo.net>
> > > ---
> > >  arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-one-plus.dts | 3 ++-
> > >  1 file changed, 2 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-one-plus.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-one-plus.dts
> > > index 29a081e72..7248ab72f 100644
> > > --- a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-one-plus.dts
> > > +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-one-plus.dts
> > > @@ -37,7 +37,8 @@ &emac {
> > >  
> > >  &mdio {
> > >  	ext_rgmii_phy: ethernet-phy@1 {
> > > -		compatible = "ethernet-phy-ieee802.3-c22";
> > > +		compatible = "ethernet-phy-id001c.c915",
> > > +			     "ethernet-phy-ieee802.3-c22";
> > >  		reg = <1>;
> > >  	};
> > >  };  
> >   
> 
> Regards, Anne
> 


