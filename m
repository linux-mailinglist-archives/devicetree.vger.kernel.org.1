Return-Path: <devicetree+bounces-187309-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B1B8ADF7E6
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 22:41:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1AFA13BD001
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 20:41:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD0BB21C198;
	Wed, 18 Jun 2025 20:41:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="l2MUqNBP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1760C21C185
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 20:41:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750279283; cv=none; b=JoYgAo5IjiRktxuwQdoTFPKoAzKyxF4GXFq8n1f95YWZYB5CUl+DCesWM58u1aAj+yNpbs0lJKlBjB4Rk9RRZuzvmlg5hNpakDHIrZmyTvEHermhk4gDouuNY2GQSiBzAUzdy8XZNG63dSr0vPkihLZ6fBmInGhCj0vkWsh5+uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750279283; c=relaxed/simple;
	bh=3dkE3lsYL5FGEBR8G1u7uyEL2RsZEtB06UZ0J9FZ1Jg=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=XCSwSoKcbnv84jHysmizgfmqj/eF3/36pLXYaIL1mqoF87WndzyNdmtzeLvHWOAqHwCx8kL4T5+uiGAJ+6r/L4gss+HylGm6awpzl4KrBzO9gUFtxt5hToDHZQn+uw0LN2ruJ0NDXo4AvxkPRmBPpqNSMYLFWjw0HGUydchyYrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=l2MUqNBP; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-2366e5e4dbaso536025ad.1
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 13:41:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1750279280; x=1750884080; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=FRgH8+d7aznA4MQghmGW1XETNNC6iKcuwGWHKJaLMaY=;
        b=l2MUqNBPue5CgmYbguEYfPtEqU25bdFeMOa/OXl8ulmi2vQzAQRlPsDtrne2Gxg7uK
         LjvwC5e7Vpi6H8e/ucd/EVpiy6Hu9JuvqOblUpbudcWAxBVf4rddJjkAQsVWj2PQ7U/s
         ChggQozH1tqhpctoNnHdIqGnOopbPpZ3Z0vbSqPX8tHSHICDmHe2R5KZWaZldSkRd2+6
         8LLsgdAbvlmJiI9nH+fuh29U0QKYuu/ZSdKS/1ED1sEy/CeY0+HktM37TNHHitW7pJKr
         rCCsaxhp/lKauNoGyvNMinCt3K4OSXAZe349oBTVAoWdS1oWx9aixo/5Uu2oEwziY2DT
         VXZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750279280; x=1750884080;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FRgH8+d7aznA4MQghmGW1XETNNC6iKcuwGWHKJaLMaY=;
        b=pJoQkUuSJDuVjSB592lWowLCIobaL3Dl4+CWX6MepjTAeevx0GHEZzbryRRN//9r5d
         P+ON6KF9ojEg49qN9VYb/EOhoYU/9F/NTYSQu5EJUYT7vcfho5az7GASsLFLDkoUBced
         SPTYDPXK8c57CHbS5DqF/vSXt/B6OKVRYtCeld2s88Ue/meOE29206uQuU7MzUX8onm0
         ogWbKq2tCScvvBoyChptsIIvoGKCPpu00QBJUMBEvz05ztQBuJtfzweMT7xKK0xiljs4
         tyypiQOoVGWSqEslLyPhmtyXqpR5y27Q5iAax3MNNz7oUgyp/5Yf3eE91NiGL+vBiBrN
         nxwg==
X-Forwarded-Encrypted: i=1; AJvYcCW1PeZSXK9sE4lUnSzCnpgMWrg2szaNWyDEgTqJ+Bk+JejeF7OAd6j7z544KQDRExTzh/HfSdozgyNM@vger.kernel.org
X-Gm-Message-State: AOJu0YxbdN4H4UllDpkeep3eheN0TX1GWwMZI3zsc+iQqJeLM4Nv3CW9
	QvannNqck6w67uQ/VMWK40dD5WHiOOteJ/DHpe718dMszUXAokJ5Uvp3caruN8EAy3c=
X-Gm-Gg: ASbGncuGuqL4/Db4jaL018FUWRbUZ1zuF8XYcRYh2oOANoeu2Qbge9pm+nhVIv9xaAk
	nhtVqV8D7qoQkF2Wq6uqcrHUfIE2ePRAYd+AL7zZ6VQ8x0+gN4CwLsgKYBIBJgh73dDhSGWXhf0
	L601rTzFo573vA3e3oTpl408cwEGtdAVPsFU3g/kvrQCptcAJeMAD/5UGQSUShzz9a7W/p2/EcR
	3+8BmaazHscn9Qn5yA0pxllJfMX8NpjHptJBwAUQDZCEDZ/UYJj5yilPmGuGMiTYdcn4wmE6gW5
	UdHGXJ1UPLmnSsptaclAxXrz1V7J/XWciXaLOFOMpLnzoIetE6Zxu9tZnsmA
X-Google-Smtp-Source: AGHT+IE2M4wu8ONpX/IiaC9ZvenKuU3UdWNHV2TzBZwcoAY9dPpuZfPN3dnzzwJJvIJDvRrlPVMKzw==
X-Received: by 2002:a17:902:da90:b0:231:ad5a:fe9c with SMTP id d9443c01a7336-237cbf35959mr12925525ad.15.1750279280168;
        Wed, 18 Jun 2025 13:41:20 -0700 (PDT)
Received: from localhost ([97.126.182.119])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2365d88d921sm105355355ad.40.2025.06.18.13.41.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jun 2025 13:41:19 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Kory Maincent <kory.maincent@bootlin.com>, Tony Lindgren
 <tony@atomide.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Aaro Koskinen
 <aaro.koskinen@iki.fi>, Andreas Kemnade <andreas@kemnade.info>, Roger
 Quadros <rogerq@kernel.org>, Russell King <linux@armlinux.org.uk>, Paul
 Barker <paul.barker@sancloud.com>, Marc Murphy <marc.murphy@sancloud.com>
Cc: Jason Kridner <jkridner@gmail.com>, Andrew Davis <afd@ti.com>, Bajjuri
 Praneeth <praneeth@ti.com>, Liam Girdwood <lgirdwood@gmail.com>, Mark
 Brown <broonie@kernel.org>, Thomas Petazzoni
 <thomas.petazzoni@bootlin.com>, linux-omap@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Kory Maincent
 <kory.maincent@bootlin.com>
Subject: Re: [PATCH v4 2/7] arm: dts: omap: Remove incorrect compatible
 strings from device trees
In-Reply-To: <20250617-bbg-v4-2-827cbd606db6@bootlin.com>
References: <20250617-bbg-v4-0-827cbd606db6@bootlin.com>
 <20250617-bbg-v4-2-827cbd606db6@bootlin.com>
Date: Wed, 18 Jun 2025 13:41:19 -0700
Message-ID: <7hzfe4ok9c.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Kory Maincent <kory.maincent@bootlin.com> writes:

> Several device trees incorrectly included extraneous compatible strings
> in their compatible property lists. The policy is to only describe the
> specific board name and SoC name to avoid confusion.
>
> Remove these incorrect compatible strings to fix the inconsistency.
>
> Also fix board vendor prefixes for BeagleBoard variants that were
> incorrectly using "ti" instead of "beagle" or "seeed".
>
> Signed-off-by: Kory Maincent <kory.maincent@bootlin.com>

While I agree with adding the new compatibles for clarity, I question
removing the old ones after so much time in the kernel. 

As mentioned in earlier reviews, there is other tooling outside the
kernel that has been built around these strings.  The one that I have in
mind is KernelCI based tooling that tracks boards based on compatible
strings.

While the KernelCI tooling does evolve with these kinds of kernel
changes, it also still builds and tests older kernels.  So if we want
these tools to know that "beagle,am335x-bone" on a new kernel and
"ti,am335x-bone" on an older stable kernel are actually the same board,
the tools will need to keep track of that mapping as these change.

So instead of removing them, can't we just make the new ones higher prio
than the old ones?  That way the tools can see both, and also see which
one is higher prio.

I fully realize this is not necessarily the best technical argument to
keeping the old and wrong names, so I will defer to DT maintainers on
this one.  But since it's been wrong for a long time, I'm a bit
reluctant to remove them completely knowing there will be external tools
breakage.

Kevin

> ---
> Changes in v4:
> - Rename ti,am335x-shc to bosch,am335x-shc
> - Drop model value change to avoid conflict with script based on this
>   value like:
>   https://salsa.debian.org/installer-team/flash-kernel/-/blob/master/db/all.db?ref_type=heads
>
> Changes in v3:
> - Remove extraneous compatible strings.
> - Replace BeagleBone board name vendor.
>
> Changes in v2:
> - New patch
> ---
>  arch/arm/boot/dts/ti/omap/am335x-base0033.dts                   | 2 +-
>  arch/arm/boot/dts/ti/omap/am335x-bone.dts                       | 2 +-
>  arch/arm/boot/dts/ti/omap/am335x-boneblack-wireless.dts         | 2 +-
>  arch/arm/boot/dts/ti/omap/am335x-boneblack.dts                  | 2 +-
>  arch/arm/boot/dts/ti/omap/am335x-boneblue.dts                   | 2 +-
>  arch/arm/boot/dts/ti/omap/am335x-bonegreen-wireless.dts         | 2 +-
>  arch/arm/boot/dts/ti/omap/am335x-bonegreen.dts                  | 2 +-
>  arch/arm/boot/dts/ti/omap/am335x-chiliboard.dts                 | 3 +--
>  arch/arm/boot/dts/ti/omap/am335x-myirtech-myd.dts               | 2 +-
>  arch/arm/boot/dts/ti/omap/am335x-osd3358-sm-red.dts             | 2 +-
>  arch/arm/boot/dts/ti/omap/am335x-pocketbeagle.dts               | 2 +-
>  arch/arm/boot/dts/ti/omap/am335x-sancloud-bbe-extended-wifi.dts | 5 +----
>  arch/arm/boot/dts/ti/omap/am335x-sancloud-bbe-lite.dts          | 5 +----
>  arch/arm/boot/dts/ti/omap/am335x-sancloud-bbe.dts               | 2 +-
>  arch/arm/boot/dts/ti/omap/am335x-shc.dts                        | 2 +-
>  15 files changed, 15 insertions(+), 22 deletions(-)
>
> diff --git a/arch/arm/boot/dts/ti/omap/am335x-base0033.dts b/arch/arm/boot/dts/ti/omap/am335x-base0033.dts
> index 46078af4b7a3..176de29de2a6 100644
> --- a/arch/arm/boot/dts/ti/omap/am335x-base0033.dts
> +++ b/arch/arm/boot/dts/ti/omap/am335x-base0033.dts
> @@ -9,7 +9,7 @@
>  
>  / {
>  	model = "IGEP COM AM335x on AQUILA Expansion";
> -	compatible = "isee,am335x-base0033", "isee,am335x-igep0033", "ti,am33xx";
> +	compatible = "isee,am335x-base0033", "ti,am33xx";
>  
>  	hdmi {
>  		compatible = "ti,tilcdc,slave";
> diff --git a/arch/arm/boot/dts/ti/omap/am335x-bone.dts b/arch/arm/boot/dts/ti/omap/am335x-bone.dts
> index b5d85ef51a02..08616d449f95 100644
> --- a/arch/arm/boot/dts/ti/omap/am335x-bone.dts
> +++ b/arch/arm/boot/dts/ti/omap/am335x-bone.dts
> @@ -9,7 +9,7 @@
>  
>  / {
>  	model = "TI AM335x BeagleBone";
> -	compatible = "ti,am335x-bone", "ti,am33xx";
> +	compatible = "beagle,am335x-bone", "ti,am33xx";
>  };
>  
>  &ldo3_reg {
> diff --git a/arch/arm/boot/dts/ti/omap/am335x-boneblack-wireless.dts b/arch/arm/boot/dts/ti/omap/am335x-boneblack-wireless.dts
> index b4b4b80df08c..aa668dfa1c6a 100644
> --- a/arch/arm/boot/dts/ti/omap/am335x-boneblack-wireless.dts
> +++ b/arch/arm/boot/dts/ti/omap/am335x-boneblack-wireless.dts
> @@ -12,7 +12,7 @@
>  
>  / {
>  	model = "TI AM335x BeagleBone Black Wireless";
> -	compatible = "ti,am335x-bone-black-wireless", "ti,am335x-bone-black", "ti,am335x-bone", "ti,am33xx";
> +	compatible = "beagle,am335x-bone-black-wireless", "ti,am33xx";
>  
>  	wlan_en_reg: fixedregulator@2 {
>  		compatible = "regulator-fixed";
> diff --git a/arch/arm/boot/dts/ti/omap/am335x-boneblack.dts b/arch/arm/boot/dts/ti/omap/am335x-boneblack.dts
> index 16b567e3cb47..476fb6677203 100644
> --- a/arch/arm/boot/dts/ti/omap/am335x-boneblack.dts
> +++ b/arch/arm/boot/dts/ti/omap/am335x-boneblack.dts
> @@ -11,7 +11,7 @@
>  
>  / {
>  	model = "TI AM335x BeagleBone Black";
> -	compatible = "ti,am335x-bone-black", "ti,am335x-bone", "ti,am33xx";
> +	compatible = "beagle,am335x-bone-black", "ti,am33xx";
>  };
>  
>  &cpu0_opp_table {
> diff --git a/arch/arm/boot/dts/ti/omap/am335x-boneblue.dts b/arch/arm/boot/dts/ti/omap/am335x-boneblue.dts
> index f579df4c2c54..56f9042a5bfb 100644
> --- a/arch/arm/boot/dts/ti/omap/am335x-boneblue.dts
> +++ b/arch/arm/boot/dts/ti/omap/am335x-boneblue.dts
> @@ -10,7 +10,7 @@
>  
>  / {
>  	model = "TI AM335x BeagleBone Blue";
> -	compatible = "ti,am335x-bone-blue", "ti,am33xx";
> +	compatible = "beagle,am335x-bone-blue", "ti,am33xx";
>  
>  	chosen {
>  		stdout-path = &uart0;
> diff --git a/arch/arm/boot/dts/ti/omap/am335x-bonegreen-wireless.dts b/arch/arm/boot/dts/ti/omap/am335x-bonegreen-wireless.dts
> index a4f5b5262645..37d4d5a3edf6 100644
> --- a/arch/arm/boot/dts/ti/omap/am335x-bonegreen-wireless.dts
> +++ b/arch/arm/boot/dts/ti/omap/am335x-bonegreen-wireless.dts
> @@ -11,7 +11,7 @@
>  
>  / {
>  	model = "TI AM335x BeagleBone Green Wireless";
> -	compatible = "ti,am335x-bone-green-wireless", "ti,am335x-bone-green", "ti,am335x-bone-black", "ti,am335x-bone", "ti,am33xx";
> +	compatible = "seeed,am335x-bone-green-wireless", "ti,am33xx";
>  
>  	wlan_en_reg: fixedregulator@2 {
>  		compatible = "regulator-fixed";
> diff --git a/arch/arm/boot/dts/ti/omap/am335x-bonegreen.dts b/arch/arm/boot/dts/ti/omap/am335x-bonegreen.dts
> index 18cc0f49e999..3d6404653816 100644
> --- a/arch/arm/boot/dts/ti/omap/am335x-bonegreen.dts
> +++ b/arch/arm/boot/dts/ti/omap/am335x-bonegreen.dts
> @@ -10,5 +10,5 @@
>  
>  / {
>  	model = "TI AM335x BeagleBone Green";
> -	compatible = "ti,am335x-bone-green", "ti,am335x-bone-black", "ti,am335x-bone", "ti,am33xx";
> +	compatible = "seeed,am335x-bone-green", "ti,am33xx";
>  };
> diff --git a/arch/arm/boot/dts/ti/omap/am335x-chiliboard.dts b/arch/arm/boot/dts/ti/omap/am335x-chiliboard.dts
> index 648e97fe1dfd..224095304ef3 100644
> --- a/arch/arm/boot/dts/ti/omap/am335x-chiliboard.dts
> +++ b/arch/arm/boot/dts/ti/omap/am335x-chiliboard.dts
> @@ -8,8 +8,7 @@
>  
>  / {
>  	model = "AM335x Chiliboard";
> -	compatible = "grinn,am335x-chiliboard", "grinn,am335x-chilisom",
> -		     "ti,am33xx";
> +	compatible = "grinn,am335x-chiliboard", "ti,am33xx";
>  
>  	chosen {
>  		stdout-path = &uart0;
> diff --git a/arch/arm/boot/dts/ti/omap/am335x-myirtech-myd.dts b/arch/arm/boot/dts/ti/omap/am335x-myirtech-myd.dts
> index fd91a3c01a63..55a454f51148 100644
> --- a/arch/arm/boot/dts/ti/omap/am335x-myirtech-myd.dts
> +++ b/arch/arm/boot/dts/ti/omap/am335x-myirtech-myd.dts
> @@ -12,7 +12,7 @@
>  
>  / {
>  	model = "MYIR MYD-AM335X";
> -	compatible = "myir,myd-am335x", "myir,myc-am335x", "ti,am33xx";
> +	compatible = "myir,myd-am335x", "ti,am33xx";
>  
>  	chosen {
>  		stdout-path = &uart0;
> diff --git a/arch/arm/boot/dts/ti/omap/am335x-osd3358-sm-red.dts b/arch/arm/boot/dts/ti/omap/am335x-osd3358-sm-red.dts
> index d28d39728847..d87ac31a16a9 100644
> --- a/arch/arm/boot/dts/ti/omap/am335x-osd3358-sm-red.dts
> +++ b/arch/arm/boot/dts/ti/omap/am335x-osd3358-sm-red.dts
> @@ -16,7 +16,7 @@
>  
>  / {
>  	model = "Octavo Systems OSD3358-SM-RED";
> -	compatible = "oct,osd3358-sm-refdesign", "ti,am335x-bone-black", "ti,am335x-bone", "ti,am33xx";
> +	compatible = "oct,osd3358-sm-refdesign", "ti,am33xx";
>  };
>  
>  &ldo3_reg {
> diff --git a/arch/arm/boot/dts/ti/omap/am335x-pocketbeagle.dts b/arch/arm/boot/dts/ti/omap/am335x-pocketbeagle.dts
> index 78ce860e59b3..908203fd9190 100644
> --- a/arch/arm/boot/dts/ti/omap/am335x-pocketbeagle.dts
> +++ b/arch/arm/boot/dts/ti/omap/am335x-pocketbeagle.dts
> @@ -12,7 +12,7 @@
>  
>  / {
>  	model = "TI AM335x PocketBeagle";
> -	compatible = "ti,am335x-pocketbeagle", "ti,am335x-bone", "ti,am33xx";
> +	compatible = "beagle,am335x-pocketbeagle", "ti,am33xx";
>  
>  	chosen {
>  		stdout-path = &uart0;
> diff --git a/arch/arm/boot/dts/ti/omap/am335x-sancloud-bbe-extended-wifi.dts b/arch/arm/boot/dts/ti/omap/am335x-sancloud-bbe-extended-wifi.dts
> index 7c9f65126c63..61210f975542 100644
> --- a/arch/arm/boot/dts/ti/omap/am335x-sancloud-bbe-extended-wifi.dts
> +++ b/arch/arm/boot/dts/ti/omap/am335x-sancloud-bbe-extended-wifi.dts
> @@ -13,10 +13,7 @@
>  
>  / {
>  	model = "SanCloud BeagleBone Enhanced Extended WiFi";
> -	compatible = "sancloud,am335x-boneenhanced",
> -		     "ti,am335x-bone-black",
> -		     "ti,am335x-bone",
> -		     "ti,am33xx";
> +	compatible = "sancloud,am335x-boneenhanced", "ti,am33xx";
>  
>  	wlan_en_reg: fixedregulator@2 {
>  		compatible = "regulator-fixed";
> diff --git a/arch/arm/boot/dts/ti/omap/am335x-sancloud-bbe-lite.dts b/arch/arm/boot/dts/ti/omap/am335x-sancloud-bbe-lite.dts
> index c6c96f6182a8..10488b55689c 100644
> --- a/arch/arm/boot/dts/ti/omap/am335x-sancloud-bbe-lite.dts
> +++ b/arch/arm/boot/dts/ti/omap/am335x-sancloud-bbe-lite.dts
> @@ -12,10 +12,7 @@
>  
>  / {
>  	model = "SanCloud BeagleBone Enhanced Lite";
> -	compatible = "sancloud,am335x-boneenhanced",
> -		     "ti,am335x-bone-black",
> -		     "ti,am335x-bone",
> -		     "ti,am33xx";
> +	compatible = "sancloud,am335x-boneenhanced", "ti,am33xx";
>  };
>  
>  &am33xx_pinmux {
> diff --git a/arch/arm/boot/dts/ti/omap/am335x-sancloud-bbe.dts b/arch/arm/boot/dts/ti/omap/am335x-sancloud-bbe.dts
> index 32669346cefe..f1bdbf053fb2 100644
> --- a/arch/arm/boot/dts/ti/omap/am335x-sancloud-bbe.dts
> +++ b/arch/arm/boot/dts/ti/omap/am335x-sancloud-bbe.dts
> @@ -13,7 +13,7 @@
>  
>  / {
>  	model = "SanCloud BeagleBone Enhanced";
> -	compatible = "sancloud,am335x-boneenhanced", "ti,am335x-bone-black", "ti,am335x-bone", "ti,am33xx";
> +	compatible = "sancloud,am335x-boneenhanced", "ti,am33xx";
>  };
>  
>  &am33xx_pinmux {
> diff --git a/arch/arm/boot/dts/ti/omap/am335x-shc.dts b/arch/arm/boot/dts/ti/omap/am335x-shc.dts
> index 597482822608..47b1db476cf3 100644
> --- a/arch/arm/boot/dts/ti/omap/am335x-shc.dts
> +++ b/arch/arm/boot/dts/ti/omap/am335x-shc.dts
> @@ -12,7 +12,7 @@
>  
>  / {
>  	model = "Bosch SHC";
> -	compatible = "ti,am335x-shc", "ti,am335x-bone", "ti,am33xx";
> +	compatible = "bosch,am335x-shc", "ti,am33xx";
>  
>  	aliases {
>  		mmcblk0 = &mmc1;
>
> -- 
> 2.43.0

