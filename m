Return-Path: <devicetree+bounces-234109-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E5456C28DDF
	for <lists+devicetree@lfdr.de>; Sun, 02 Nov 2025 12:09:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2384F1889701
	for <lists+devicetree@lfdr.de>; Sun,  2 Nov 2025 11:10:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC78E1E832A;
	Sun,  2 Nov 2025 11:09:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="C4n1d71b"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1670E2E403
	for <devicetree@vger.kernel.org>; Sun,  2 Nov 2025 11:09:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762081786; cv=none; b=iza9s1XW2CmDi/gQpi0wdh0fEP9BsHgWIyKLVf6HF4YaFRXV7ZMjWGFNyxCu0bHTPdPYv8gyu6E4J0QmAxP3Yjv5NmwIlMy5KxrCoQvpDKanBTsZIkYKQEcHqachLIABx0dgIZ8q9HolyhDsxelaIFlXFu8isOKrfHlybpkJ+RY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762081786; c=relaxed/simple;
	bh=2lVVhBbpubNaDFhGqgi+wPk/IWnaTCWLwy0N7I/rbXQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hqP6JjLP8/Z3eT8k5ovFpBUaB9hFDO3FSw6Jr0xbCh0bAy3SHw2AZ/x5SfLglswZnkPk8ZHui4iL1faHvAkaHKVaA3W8ja0A9mzN527cWEJAEM40yNyJfDe1ocq/MwHMDq+VM92q03YAYMQuWTcvUK6wdCNcBLgT2TtxF8FZ2HA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=C4n1d71b; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (82-203-160-149.bb.dnainternet.fi [82.203.160.149])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id DEFCEA98;
	Sun,  2 Nov 2025 12:07:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1762081671;
	bh=2lVVhBbpubNaDFhGqgi+wPk/IWnaTCWLwy0N7I/rbXQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=C4n1d71biUOjL5y9lMdwjwzMNigtVVwx/0BGWXY9ruKy7eFJhuqndjTz3rUndX5BX
	 26Slvi2Ss5TI8vO1uoeB3nHQeCzdwHq9NsguRTrl6mFmo+ASx1uotKqdnbcs7Is/x1
	 I5JCNgRC/Qj6BWSYaO2I3hvt2kl3mC56B1naAiL0=
Date: Sun, 2 Nov 2025 13:09:29 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Stanimir Varbanov <svarbanov@suse.de>
Cc: Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Andrea della Porta <andrea.porta@suse.com>,
	Andrew Lunn <andrew@lunn.ch>, Conor Dooley <conor+dt@kernel.org>,
	Dave Stevenson <dave.stevenson@raspberrypi.com>,
	"Ivan T. Ivanov" <iivanov@suse.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Phil Elwell <phil@raspberrypi.com>, Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rpi-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: broadcom: bcm2712: rpi-5: Add ethernet0 alias
Message-ID: <20251102110929.GL797@pendragon.ideasonboard.com>
References: <20251102002901.467-1-laurent.pinchart@ideasonboard.com>
 <39257a41-6719-4daa-a979-a9c2a629ec24@suse.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <39257a41-6719-4daa-a979-a9c2a629ec24@suse.de>

On Sun, Nov 02, 2025 at 12:58:46PM +0200, Stanimir Varbanov wrote:
> On 11/2/25 2:29 AM, Laurent Pinchart wrote:
> > The RP1 ethernet controller DT node contains a local-mac-address
> > property to pass the MAC address from the boot loader to the kernel. The
> > boot loader does not fill the MAC address as the ethernet0 alias is
> > missing. Add it.
> > 
> > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > ---
> >  arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
> > index 04738bf281eb..fa438ac8c9ef 100644
> > --- a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
> > +++ b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
> > @@ -10,6 +10,7 @@ / {
> >  	model = "Raspberry Pi 5";
> >  
> >  	aliases {
> > +		ethernet0 = &rp1_eth;
> >  		serial10 = &uart10;
> >  	};
> >  
> 
> Unfortunately this does not compile:
> 
> make[1]: Entering directory '/rpi5/kobj'
>   GEN     Makefile
>   DTC     arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dtb
>   DTC     arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dtb
>   DTC     arch/arm64/boot/dts/broadcom/bcm2712-d-rpi-5-b.dtb
> /linux/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts:12.10-15.4:
> ERROR (path_references): /aliases: Reference to non-existent node or
> label "rp1_eth"
> 
> ERROR: Input tree has errors, aborting (use -f to force output)
> make[4]: *** [/linux/scripts/Makefile.dtbs:132:
> arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dtb] Error 2
> make[4]: *** Waiting for unfinished jobs....
> make[3]: *** [/linux/scripts/Makefile.build:556:
> arch/arm64/boot/dts/broadcom] Error 2

Ah indeed, I've only compiled bcm2712-rpi-5-b.dtb and forgot to test
bcm2712-rpi-5-b-ovl-rp1.dtb. My bad.

> I've made following fix on top of your patch, but I'm not sure that it
> is the correct one.
> 
> Andrea, could you comment please?
> 
> diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
> b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
> index bbad90d497fa..734b06ac5ba2 100644
> --- a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
> +++ b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
> @@ -9,8 +9,7 @@ / {
>  	compatible = "raspberrypi,5-model-b", "brcm,bcm2712";
>  	model = "Raspberry Pi 5";
> 
> -	aliases {
> -		ethernet0 = &rp1_eth;
> +	aliases: aliases {
>  		serial10 = &uart10;
>  	};

Adding a label to the aliases node is a bit of an uncommon approach.

> diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
> b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
> index 9f1976f0fd1a..26a99e72d441 100644
> --- a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
> +++ b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
> @@ -22,6 +22,10 @@ &pcie2 {
>  	#include "rp1-nexus.dtsi"
>  };
> 
> +&aliases {
> +	ethernet0 = &rp1_eth;
> +};

We could also just do

/ {
	aliases {
		ethernet0 = &rp1_eth;
	};
};

and drop tha aliases node. I'll send a v2.

There's a side question of how the boot loader should pass the MAC
address to the kernel when using the RP1 overlay, but I think that can
be addressed later.

> +
>  &rp1_adc {
>  	vref-supply = <&rp1_vdd_3v3>;
>  	status = "okay";

-- 
Regards,

Laurent Pinchart

