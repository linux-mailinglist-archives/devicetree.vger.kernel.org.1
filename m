Return-Path: <devicetree+bounces-245386-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 78929CB0230
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 15:01:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 57236300B2B1
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 13:56:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E92B285C96;
	Tue,  9 Dec 2025 13:56:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="bAJl99Vd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1E5C27A93C
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 13:56:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765288588; cv=none; b=M1eT/P+BDMkS1R7pRp1Xvv7V+ry8bVxj11eNzgkWmg/vURg7HmtVURd1czRdA6+6uLDKQ2XDLMNJRaQNZt53g7g/x+F5t15c/8QJ6A4MlrmR+XqUpxKbXGgIBYmdNLH7y/szyM4FqMG9gkxn58UEdVGOR4/42rGyYv5LkItXoyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765288588; c=relaxed/simple;
	bh=/rSPiRj0Atm89jd6WEtGijL+Oi5CNd4q4d5uuOcNG/8=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=b57NWryihR5yLnzDJQSilHTHrHdlx2ml261JpPkuio83sDk8cYA4IFGxnOtUTNkQE1nXUMM3/mHTFDIWO1JukI3XeDPUYvzAHPt2aeJ7YtRaz7haBRs/Lrn7ArIXzIzvB9iU4Vft5ztb9o9nZgjqAtkdAGrLlfyiIwyXIwmR8ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=bAJl99Vd; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-641677916b5so8142836a12.0
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 05:56:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1765288584; x=1765893384; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZHNjTLLxaiUYX9lnsCkT/PipZxZCO7Z4aDIJ/ePIGAo=;
        b=bAJl99Vda6oPOKRuo0uD9y8bvC6AzutvRMD/NfVBz6IS5BdQNJ04yR7/ORDzwXQzoM
         MYx/qZMzYspNkBvVeqW+Nn+RDxp9LNVAt3FHsyTTW/4gV99d0ClHF0/tH2IyygGMxDOt
         kc5V6A4VlVOmjLEQR/6pKHDXTFjDNaLKopjRk6z5HV7aL8IB2Iz/6gVtpPbUTrlh5cek
         gpUsHvVMlhXt3Vd8k0Tc8rhWxHJfMH6hbZsU89DA1Fo/ioNcP+/deGL4YtmYjBiWcs1J
         z51TdHnJk0cZBfTHGwwcbldR2QJ5oMWaQwgsDyqKm/3dKQFOPl1pCH96QyKYvVidIuMh
         zuDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765288584; x=1765893384;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZHNjTLLxaiUYX9lnsCkT/PipZxZCO7Z4aDIJ/ePIGAo=;
        b=uvC9gQpdVfAJ1vXXzQEUsIXO4/k3cJ8/OFQ3Gavr19KYJ27pyRTxhg4s+HrMkS45+k
         ZTDYAB3EB0TpG4tzOt9cwKR9FL5UvCapBKSaSz3zvheFCYKCXrsyuxMvR0nS/t0UpHTB
         oIQAAZBXZxMX81JdLfzs+4ikjWhLhmSI6n0jpVsK2rXeBGXPkStdSlDzLSCJznfl7bem
         kEUSBnsqloHnIFbqDvtKXvPzDgAXwBYLwlmE2QooZyFeslicpI3z/jqmaLX8HwJiRtqd
         e+qFLt5CNVFhdKOD8gBtxEz4Sw5EGSomAnOB1SdQR819Tfz9L2JoLvN89R4GB5i4mXYQ
         rOSA==
X-Forwarded-Encrypted: i=1; AJvYcCVlHr3/VApolEpUbg6Gi+HVhUfo1REntVq000wSFwDm7942T+bbfYpuKybG0DqZNc8Db2Fql6YsOxcL@vger.kernel.org
X-Gm-Message-State: AOJu0YxQ4DM7JDRmj87Ch+FCYBWzUTgeAArW1oxdaRhMtXSsmF1mADkZ
	f7wMu4+/DopVs425vuVEnxP13LAJl+ed11+aVZ1c8nD6GNQU0sJ72U3+tgzMSsXO4eE=
X-Gm-Gg: ASbGnctLRlXGmrTzjFPJpocAAQUOE5M2wSrfBi4XWhgTo/SVnkrF7JrR+4PjG7xWk6K
	qt0hLxOdi4i303WjOPGMpn5a8oPqi2Uqhe7buDi8h8PVPviWEJVGXuPWeDQCnA2RNznZOZrIm+m
	9HACD/DDg+Xj8m0n85SDi3CpsTiDiK1BBB3gpcxFAwBYgBP8APlmTEYJh/YLwNwnJCyUq4RaT8T
	bon7v3he+Wdj4D6tbb2JG8RDsDc+muUq+9tWSF23azRAAyqY0IHPCmakyYo6n5rYsd+JkjLwQbo
	GuD62plQ/Pb4a6V0Xp7G2RueRmLY6IMkwRzetPhFKj2zInVz6uddniuBP03CwItAXBqCWeK4ZYh
	h9PlN4uZaTkOB1mDiKCyFSerbFeMJbNt61rEhw8rU5C/eaco3muYi7nQ7i16g0JellLeF7hLSex
	lKG7bHMZCtryqWCUBY7Hvy5d9C/lPsVzCNnPbNa9SDDeA8lulaHn8A6A==
X-Google-Smtp-Source: AGHT+IEVtNxShWKdJLARvgeokUGdhCwxfGrQUplQ/ttNSMiqiRZXHBzJAE2rqsYOnWcYgx+CnvNcUA==
X-Received: by 2002:a05:6402:4314:b0:640:976f:13b0 with SMTP id 4fb4d7f45d1cf-6491a3e1fe8mr9388418a12.12.1765288583801;
        Tue, 09 Dec 2025 05:56:23 -0800 (PST)
Received: from localhost (host-87-6-211-245.retail.telecomitalia.it. [87.6.211.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-647b368dcf8sm14243157a12.19.2025.12.09.05.56.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 05:56:22 -0800 (PST)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Tue, 9 Dec 2025 14:58:52 +0100
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Andrea della Porta <andrea.porta@suse.com>,
	Phil Elwell <phil@raspberrypi.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [RFC PATCH] arm64: broadcom: bcm2712: Rework rp1 overlay handling
Message-ID: <aTgrHEoxl7J8_BuU@apocalypse>
References: <20251117211503.728354-2-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251117211503.728354-2-robh@kernel.org>

Hi Rob,
sorry for the delay...

On 15:15 Mon 17 Nov     , Rob Herring (Arm) wrote:
> It's a requirement that DT overlays be applied at build time in order to
> validate them as overlays are not validated on their own.
> 
> Simply adding a build time target is possible, but it's also not desirable
> to have targets which include the overlay contents and apply the same
> overlay.
> 
> Rework the targets such that there are 2 overlays: the existing RP1 overlay
> and the board specific configuration of the RP1 (bcm2712-rpi-5-b.dtso).
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
> The missing applying of rp1.dtbo will soon be a warning[1].
> 
> The comment in bcm2712-rpi-5-b.dts(o) needs updating or removing. The RP1
> driver or userspace handling of the overlay probably needs updating to
> handle the 2 overlays. IIRC, I think we can apply overlays to overlays
> which may be useful here. If not, adding that to the tools should be
> possible.
> 
> [1] https://lore.kernel.org/all/20251114222759.4181152-1-robh@kernel.org/
> ---
>  arch/arm64/boot/dts/broadcom/Makefile                 | 10 ++++++++--
>  ...m2712-d-rpi-5-b.dts => bcm2712-d-rpi-5-b-base.dts} |  2 +-
>  .../{bcm2712-rpi-5-b.dts => bcm2712-rpi-5-b.dtso}     | 11 +++++------
>  3 files changed, 14 insertions(+), 9 deletions(-)
>  rename arch/arm64/boot/dts/broadcom/{bcm2712-d-rpi-5-b.dts => bcm2712-d-rpi-5-b-base.dts} (95%)
>  rename arch/arm64/boot/dts/broadcom/{bcm2712-rpi-5-b.dts => bcm2712-rpi-5-b.dtso} (92%)
> 
> diff --git a/arch/arm64/boot/dts/broadcom/Makefile b/arch/arm64/boot/dts/broadcom/Makefile
> index 83d45afc6588..4957edec9d9f 100644
> --- a/arch/arm64/boot/dts/broadcom/Makefile
> +++ b/arch/arm64/boot/dts/broadcom/Makefile
> @@ -6,9 +6,9 @@ DTC_FLAGS := -@
>  dtb-$(CONFIG_ARCH_BCM2835) += bcm2711-rpi-400.dtb \
>  			      bcm2711-rpi-4-b.dtb \
>  			      bcm2711-rpi-cm4-io.dtb \
> -			      bcm2712-rpi-5-b.dtb \
> +			      bcm2712-rpi-5-b.dtbo \
>  			      bcm2712-rpi-5-b-ovl-rp1.dtb \
> -			      bcm2712-d-rpi-5-b.dtb \
> +			      bcm2712-d-rpi-5-b-base.dtb \
>  			      bcm2837-rpi-2-b.dtb \
>  			      bcm2837-rpi-3-a-plus.dtb \
>  			      bcm2837-rpi-3-b.dtb \
> @@ -17,6 +17,12 @@ dtb-$(CONFIG_ARCH_BCM2835) += bcm2711-rpi-400.dtb \
>  			      bcm2837-rpi-zero-2-w.dtb \
>  			      rp1.dtbo
>  
> +bcm2712-rpi-5-b-dtbs := bcm2712-rpi-5-b-ovl-rp1.dtb rp1.dtbo bcm2712-rpi-5-b.dtbo
> +dtb-$(CONFIG_ARCH_BCM2835) += bcm2712-rpi-5-b.dtb
> +
> +bcm2712-d-rpi-5-b-dtbs := bcm2712-d-rpi-5-b-base.dtb rp1.dtbo bcm2712-rpi-5-b.dtbo
> +dtb-$(CONFIG_ARCH_BCM2835) += bcm2712-d-rpi-5-b.dtb
> +
>  subdir-y	+= bcmbca
>  subdir-y	+= northstar2
>  subdir-y	+= stingray
> diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-d-rpi-5-b.dts b/arch/arm64/boot/dts/broadcom/bcm2712-d-rpi-5-b-base.dts
> similarity index 95%
> rename from arch/arm64/boot/dts/broadcom/bcm2712-d-rpi-5-b.dts
> rename to arch/arm64/boot/dts/broadcom/bcm2712-d-rpi-5-b-base.dts
> index 7de24d60bcd1..48a0ae118839 100644
> --- a/arch/arm64/boot/dts/broadcom/bcm2712-d-rpi-5-b.dts
> +++ b/arch/arm64/boot/dts/broadcom/bcm2712-d-rpi-5-b-base.dts
> @@ -1,7 +1,7 @@
>  // SPDX-License-Identifier: (GPL-2.0 OR MIT)
>  /dts-v1/;
>  
> -#include "bcm2712-rpi-5-b.dts"
> +#include "bcm2712-rpi-5-b-ovl-rp1.dts"
>  
>  &gio_aon {
>  	brcm,gpio-bank-widths = <15 6>;
> diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dtso
> similarity index 92%
> rename from arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
> rename to arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dtso
> index b8f256545022..89d099c00035 100644
> --- a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
> +++ b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dtso
> @@ -15,19 +15,18 @@
>   */
>  
>  /dts-v1/;
> +/plugin/;
>  
> -#include "bcm2712-rpi-5-b-ovl-rp1.dts"
> -
> -&pcie2 {
> -	#include "rp1-nexus.dtsi"
> -};
> +#include <dt-bindings/gpio/gpio.h>

Sounds reasonable to me, please let me have a full round of tests to check for
any issue with the driver and I'll come back with feedback.

>  
>  &rp1_eth {
>  	status = "okay";
>  	phy-mode = "rgmii-id";
>  	phy-handle = <&phy1>;
> +        #address-cells = <1>;
> +        #size-cells = <0>;

I think this should go in a separate patch.

>  
> -	mdio {
> +	mdio@1 {

Ditto.

Many thanks,
Andrea

>  		reg = <0x1>;
>  		reset-gpios = <&rp1_gpio 32 GPIO_ACTIVE_LOW>;
>  		reset-delay-us = <5000>;
> -- 
> 2.51.0
> 

