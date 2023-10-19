Return-Path: <devicetree+bounces-10164-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A457CFDCF
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 17:27:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8332B1C20E63
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 15:26:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70B5F2FE39;
	Thu, 19 Oct 2023 15:26:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qkfFqJqR"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F6652747A;
	Thu, 19 Oct 2023 15:26:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7418DC433C9;
	Thu, 19 Oct 2023 15:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697729217;
	bh=gJBYevQ+y1P+nfW5qqXc8AdSviknrFQ4+3Gq6tjeXvw=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=qkfFqJqRqFTNMtJGgufHNXok8NJKVDKJ0XzXyr3io3sQ+4lM/JrK/Pm6tEZS7xJvc
	 dzZ03b8zs4yvDkY6BZYdPuwsvraWX6LbcqojqOhHz4+JCrw6DPRbPDCF4QV80jSa1Z
	 koiEsxRDsgLNsQgud6nj1LBZYOpQM+9UKsmyKh4MSxXE/oja5x+73gqWXw5svWnfPs
	 W3JwFqJ+mhZ7l0DwqeAztTUB+9Ya3D5T6l1R2LK9R0bcDGBZtYqNmetCcCNS41FtQs
	 tXfH2nNfI6qCG2CmTscApEv/KIEczMf0A55eO4AmuNahX/oVu/ROVuf7f8uougufB8
	 i8+3GpNZ3sN8w==
Date: Thu, 19 Oct 2023 17:26:49 +0200
From: Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
To: Vladimir Oltean <olteanv@gmail.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>, Sebastian Hesselbarth
 <sebastian.hesselbarth@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Russell King <linux@armlinux.org.uk>, Florian
 Fainelli <f.fainelli@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo
 Abeni <pabeni@redhat.com>, Christian Marangi <ansuelsmth@gmail.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Subject: Re: [PATCH net-next v4 5/7] ARM64: dts: marvell: Fix some common
 switch mistakes
Message-ID: <20231019172649.784a60d4@dellmb>
In-Reply-To: <20231019144935.3wrnqyipiq3vkxb7@skbuf>
References: <20231018-marvell-88e6152-wan-led-v4-0-3ee0c67383be@linaro.org>
	<20231018-marvell-88e6152-wan-led-v4-5-3ee0c67383be@linaro.org>
	<20231019144021.ksymhjpvawv42vhj@skbuf>
	<20231019144935.3wrnqyipiq3vkxb7@skbuf>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu, 19 Oct 2023 17:49:35 +0300
Vladimir Oltean <olteanv@gmail.com> wrote:

> On Thu, Oct 19, 2023 at 05:40:22PM +0300, Vladimir Oltean wrote:
> > +Marek
> > 
> > On Wed, Oct 18, 2023 at 11:03:44AM +0200, Linus Walleij wrote:  
> > > Fix some errors in the Marvell MV88E6xxx switch descriptions:
> > > - The top node had no address size or cells.
> > > - switch0@0 is not OK, should be switch@0.
> > > 
> > > Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> > > ---
> > > diff --git a/arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts b/arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts
> > > index 9eab2bb22134..c69cb4e191e5 100644
> > > --- a/arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts
> > > +++ b/arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts
> > > @@ -305,7 +305,7 @@ phy1: ethernet-phy@1 {
> > >  	};
> > >  
> > >  	/* switch nodes are enabled by U-Boot if modules are present */
> > > -	switch0@10 {
> > > +	switch@10 {  
> > 
> > As the comment says: U-Boot
> > (https://elixir.bootlin.com/u-boot/latest/source/board/CZ.NIC/turris_mox/turris_mox.c#L728)
> > sets up status = "okay" for these nodes depending on the MOXTET
> > configuration. It doesn't look as if it's doing that by alias, just by
> > path ("%s/switch%i@%x").
> > 
> > I have a Turris MOX, please allow me some time to test if the node name
> > change is going to be significant and cause regressions. I expect the
> > answer to be yes (sadly).  
> 
> Yeah, it's bad.
> 
> U-Boot 2018.11 (Dec 16 2018 - 12:50:19 +0000), Build: jenkins-turris-os-packages-kittens-mox-90
> 
> DRAM:  1 GiB
> Enabling Armada 3720 wComphy-0: SGMII1        3.125 Gbps
> Comphy-1: PEX0          5 Gbps
> Comphy-2: USB3_HOST0    5 Gbps
> MMC:   sdhci@d8000: 0
> Loading Environment from SPI Flash... SF: Detected w25q64dw with page size 256 Bytes, erase size 4 KiB, total 8 MiB
> OK
> Model: CZ.NIC Turris Mox Board
> Net:   eth0: neta@30000
> Turris Mox:
>   Board version: 22
>   RAM size: 1024 MiB
>   SD/eMMC version: SD
> Module Topology:
>    1: Peridot Switch Module (8-port)
>    2: Peridot Switch Module (8-port)
>    3: Peridot Switch Module (8-port)
>    4: SFP Module
> 
> Hit any key to stop autoboot:  0
> => run sd_tftp_boot  
> neta@30000 Waiting for PHY auto negotiation to complete....... done
> BOOTP broadcast 1
> BOOTP broadcast 2
> DHCP client bound to address 10.0.0.117 (254 ms)
> Using neta@30000 device
> TFTP from server 10.0.0.1; our IP address is 10.0.0.117
> Filename 'mox/armada-3720-turris-mox.dtb'.
> Load address: 0x4f00000
> Loading: ####
>          1.5 MiB/s
> done
> Bytes transferred = 19479 (4c17 hex)
> Using neta@30000 device
> TFTP from server 10.0.0.1; our IP address is 10.0.0.117
> Filename 'mox/Image'.
> Load address: 0x5000000
> Loading: #################################################################
>          ##########################################
>          6 MiB/s
> done
> Bytes transferred = 54069760 (3390a00 hex)
> ## Flattened Device Tree blob at 04f00000
>    Booting using the fdt blob at 0x4f00000
>    Loading Device Tree to 000000003bf16000, end 000000003bf1dc16 ... OK
> ERROR: board-specific fdt fixup failed: FDT_ERR_NOTFOUND
>  - must RESET the board to recover.
> 
> FDT creation failed! hanging...### ERROR ### Please RESET the board ###

Yes, unfortunately changing that node name will break booting.

Maybe we could add a comment into the DTS to describe this unfortunate
state of things? :)

Marek

