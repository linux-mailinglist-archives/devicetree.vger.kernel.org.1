Return-Path: <devicetree+bounces-83005-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A41926C95
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2024 01:42:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 226AA282349
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 23:42:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67605194124;
	Wed,  3 Jul 2024 23:42:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F96C1C68D
	for <devicetree@vger.kernel.org>; Wed,  3 Jul 2024 23:41:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720050120; cv=none; b=r7PF1+QKpJhLgT51QxFa4RaYtcxlKaG4lih9JhKuu8BF1od+zulPYxaqoqB9j2PLTeoJfsxPwEDQZZf+8ZZS5A90FB1mIAp6+yjxezmh8La/A/GE3MX5yQGeCdP5GnZEP7AgNX1wWaf5IH1UE27NfHMvcEA/oLuUoXohbG6RcB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720050120; c=relaxed/simple;
	bh=VklzZ+icKKewoRjn3gR+P4dKzE2Y6XIhFB+S0kU0fEw=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=dQ94WTagAbo18ik9VSEyunR+c7QnrB6e4tJCLglr60FavZlGOb4azIgDD4oo7v9qqg92l3bWYRJHmbuRRu1FhJ/njZHqA3REfYDW4lW8R/aOLDlnzlQVPzcMjEf6W1OZ5lQVWuKyIQ0aBHO8N65WcFMnkQ9+RCbXKzg//0GzNCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 87A93367;
	Wed,  3 Jul 2024 16:42:22 -0700 (PDT)
Received: from minigeek.lan (usa-sjc-mx-foss1.foss.arm.com [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DF1363F762;
	Wed,  3 Jul 2024 16:41:55 -0700 (PDT)
Date: Thu, 4 Jul 2024 00:39:55 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: samuel@sholland.org, jernej.skrabec@gmail.com, wens@csie.org
Cc: Chris Morgan <macroalpha82@gmail.com>, linux-sunxi@lists.linux.dev,
 devicetree@vger.kernel.org, mripard@kernel.org, ryan@testtoast.com,
 conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, Chris Morgan
 <macromorgan@hotmail.com>
Subject: Re: [PATCH V2 2/4] arm64: dts: allwinner: h616: Add r_i2c pinctrl
 nodes
Message-ID: <20240704003955.3d9db0ba@minigeek.lan>
In-Reply-To: <20240703141439.1807b865@donnerap.manchester.arm.com>
References: <20240702193414.57461-1-macroalpha82@gmail.com>
	<20240702193414.57461-3-macroalpha82@gmail.com>
	<20240703141439.1807b865@donnerap.manchester.arm.com>
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

On Wed, 3 Jul 2024 14:14:39 +0100
Andre Przywara <andre.przywara@arm.com> wrote:

> On Tue,  2 Jul 2024 14:34:12 -0500
> Chris Morgan <macroalpha82@gmail.com> wrote:
> 
> > From: Chris Morgan <macromorgan@hotmail.com>
> > 
> > Add pinctrl nodes for the r_i2c node. Without the pinmux defined the
> > r_i2c bus may fail to work, possibly if the bootloader uses rsb mode
> > for the PMIC.  
> 
> Yes, those are the only pins available, checked against the manual.

Looking closer, this is actually a proper bug: none of the five H616
devices using R_I2C set the pinmux (not even in the board .dts files),
so nothing sets this up in the kernel. We are just lucky that U-Boot's
SPL programs the pinmux, and nothing changes it afterwards.
So this should be taken as a fix ASAP, potentially with:

Fixes: 0d17c8651188 ("arm64: dts: allwinner: Add Allwinner H616 .dtsi file")

(though I am a bit doubtful about the useful of DT backports in general)

Cheers,
Andre


> 
> > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>  
> 
> Reviewed-by: Andre Przywara <andre.przywara@arm.com>
> 
> Cheers,
> Andre
> 
> > ---
> >  arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
> > index 921d5f61d8d6..e31945c3895e 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
> > @@ -837,6 +837,8 @@ r_i2c: i2c@7081400 {
> >  			dmas = <&dma 48>, <&dma 48>;
> >  			dma-names = "rx", "tx";
> >  			resets = <&r_ccu RST_R_APB2_I2C>;
> > +			pinctrl-names = "default";
> > +			pinctrl-0 = <&r_i2c_pins>;
> >  			status = "disabled";
> >  			#address-cells = <1>;
> >  			#size-cells = <0>;  
> 
> 


