Return-Path: <devicetree+bounces-96786-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A237E95F71A
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2024 18:48:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 59A90282AAD
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2024 16:48:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1739A197A9F;
	Mon, 26 Aug 2024 16:48:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="NOnQCsFk"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D38F19755A
	for <devicetree@vger.kernel.org>; Mon, 26 Aug 2024 16:48:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724690924; cv=none; b=WoGTGoKFMwnxqjK2BOTXL6yT5cufLCo87xpabCxu3RY2+2WxYah5mNG7hoTmT3/V2W7zr1UYrKE+kKYCqeJmpAy9qSA4zr/MlZQft8+iZBrpgksOqtRow+sAQdAuKs2Ep58SvHkIfFTEtt4CSEbUZ8ppxV7puIQVI6KLweT/U0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724690924; c=relaxed/simple;
	bh=QIZlWlOKjt+PHUMQENV4zcV4IB6y4+nLZLdQh2ZY048=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SKp1ZczcEGdfJKYMJIUWaON3v518sSlVo3Zigrob9ffQ+J2VU4Itzb9FjNfnaXaf05c9MEAJiiFe8nOJUlWVY0y2pmBOq3/v1jr+FtCYusmmXAo9DZlIBcHqDWiiKBy0TV966UptJDcyw8D6XPRogp6xrs7Bx0Z5cfpP/10zBM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=NOnQCsFk; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1724690921;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=J6MQ35IogVaoklcRn4SC9L8zTCxffuvqSq5E6N5ow4Y=;
	b=NOnQCsFkRK7ow7P2Mq0oy0BXULkP9pXpjq1+xrEOYaf7fYxSVqyjCacaft9xgodxqnBdT9
	Zyi1W9FhgQrnU6lM3WNwlUs5/FhhkTVP401mY25IyaW5qP5pb5MKm1QxP5LkDjPANMsmlw
	YyNIGCXrEdS2r8nayE1BzgY9ZbsFMBo=
Received: from mail-ot1-f72.google.com (mail-ot1-f72.google.com
 [209.85.210.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-574-FfyOKE-JOD6tCRGC7zzRoQ-1; Mon, 26 Aug 2024 12:48:37 -0400
X-MC-Unique: FfyOKE-JOD6tCRGC7zzRoQ-1
Received: by mail-ot1-f72.google.com with SMTP id 46e09a7af769-7092f2d50ceso5864075a34.2
        for <devicetree@vger.kernel.org>; Mon, 26 Aug 2024 09:48:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724690917; x=1725295717;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J6MQ35IogVaoklcRn4SC9L8zTCxffuvqSq5E6N5ow4Y=;
        b=MkGz8ZGosutAdGSwjBK/6zY0JTvzu9E58R7XVVFzWQDO7x8QdWZ0q2LbK9DVdJCWHG
         1EVVvPiV0JuErQdBPDG+q9+UPAT6uDc4X5DhcAeDm4D0HkGNVW0Eb3LFydiBkHNPvyen
         ymvxHk/BqomxBRncvq9n1zh1LNlmFPcv6SgLqZOB6+s43SMJGEGF41/V4h2Wpz6DieAi
         Ob7OawxHugxPKaKsg77kQa/QtDELD2VpFVDbOA0jFfRDnvv+zLuoAJZwZNeY06iPnW/w
         uJvCcL1lNGDw/U0DVNp9OGYTv4Sq+NyjRa/xkNJWNlBkpVx126j+ID2Ksn/pP0mYWs39
         uItQ==
X-Forwarded-Encrypted: i=1; AJvYcCVHQDIHO/jMAg4JxKCZztL9jDA/RQbRWWL63DWYhBJ1X83tD+mHxVRyucvFRoKBaXsDo7aKBUGzvdtw@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9oj0iud9jffbTdHu6ExmUtqIlHWtFLEbFAiBWEzvbXT/6PT6J
	PUEGB93ZEhzuViVwjmpb7gm5NjPCaI6+G+QY7Q/YITESXMbbH7jJis7/Kw2SQEOAkcO6zPDbOC6
	uHgFSWfN7MS60ngz5SvhOBdXjEUcVoNuWsLSIBf0+HPlZTyRhq9AGtXpccOQ=
X-Received: by 2002:a05:6808:19a5:b0:3dd:334f:eccc with SMTP id 5614622812f47-3de2a895cb6mr11015452b6e.27.1724690917037;
        Mon, 26 Aug 2024 09:48:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGmfUG/hVDElkJCPw9rY3KLo5Ow2OMHGmBNi3SHE2Dj6jyHJLyN44+W7y+L9e9i8AIX3OecIw==
X-Received: by 2002:a05:6808:19a5:b0:3dd:334f:eccc with SMTP id 5614622812f47-3de2a895cb6mr11015427b6e.27.1724690916548;
        Mon, 26 Aug 2024 09:48:36 -0700 (PDT)
Received: from x1gen2nano ([2600:1700:1ff0:d0e0::33])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-454fe0d914dsm45195381cf.29.2024.08.26.09.48.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Aug 2024 09:48:36 -0700 (PDT)
Date: Mon, 26 Aug 2024 11:48:34 -0500
From: Andrew Halaney <ahalaney@redhat.com>
To: Eric Chanudet <echanude@redhat.com>
Cc: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
	Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: ti: k3-j784s4-main: align watchdog clocks
Message-ID: <2sm6owthrdao6jzsrokccw54dg4xm5c57ertzotbk3kxorbwlb@gvidv6e5o2pl>
References: <20240805174330.2132717-2-echanude@redhat.com>
 <wiyw7h7hkc7u2brehi6zgxykesajtqmwwajo7tpwwvayjtcykw@w7rcmojs62vi>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <wiyw7h7hkc7u2brehi6zgxykesajtqmwwajo7tpwwvayjtcykw@w7rcmojs62vi>

On Tue, Aug 20, 2024 at 06:01:34PM GMT, Eric Chanudet wrote:
> On Mon, Aug 05, 2024 at 01:42:51PM GMT, Eric Chanudet wrote:
> > assigned-clock sets DEV_RTIx_RTI_CLK(id:0) whereas clocks sets
> > DEV_RTIx_RTI_CLK_PARENT_GLUELOGIC_HFOSC0_CLKOUT(id:1)[1]. This does not
> > look right, the timers in the driver assume a max frequency of 32kHz for
> > the heartbeat (HFOSC0 is 19.2MHz on j784s4-evm).
> > 
> > With this change, WDIOC_GETTIMELEFT return coherent time left
> > (DEFAULT_HEARTBEAT=60, reports 60s upon opening the cdev).
> > 
> > [1] http://downloads.ti.com/tisci/esd/latest/5_soc_doc/j784s4/clocks.html#clocks-for-rti0-device
> > 
> > Fixes: caae599de8c6 ("arm64: dts: ti: k3-j784s4-main: Add the main domain watchdog instances")
> > Suggested-by: Andrew Halaney <ahalaney@redhat.com>
> > Signed-off-by: Eric Chanudet <echanude@redhat.com>
> 
> Gentle ping and update to the test comment.
> 
> > ---
> > I could not get the watchdog to do more than reporting 0x32 in
> > RTIWDSTATUS. Setting RTIWWDRXCTRL[0:3] to generate a reset instead of an
> > interrupt (0x5) didn't trigger a reset either when the window expired.
> 
> Re-testing using u-boot from the BSP (2023.04) has the board reset as
> expected when the watchdog expires and WDIOC_GETTIMELEFT report the time
> left coherently with this patch until that happens.
> 
> I initially had a u-boot with a DT lacking:
> 	"mcu_esm: esm@40800000"
> and I could reproduce the board not resetting by commenting in its
> description:
> 	"ti,esm-pins = <95>;"
> 
> I don't understand why that is on the other hand. The TRM says ESM0
> ERR_O drives the SOC_SAFETY_ERRORn pin, which goes to the PMIC GPIO3 on
> the schematic _and_ to MCU_ESM0 as an error input event. The tps6594-esm
> module is probing successfully and it sets both ESM_SOC_EN|ESM_SOC_ENDRV
> and ESM_SOC_START, so I would expect the PMIC to reset the board without
> MCU_ESM0 being described or configured by u-boot.
> 

So, just so I understand (after writing/reading this ten times basically
I think we're saying the same thing, with mine just being 10x the words
:P )... This patch is needed to fix the clock for RTIx's else they tick at
the wrong speed and things go wrong.

Further with respect to actually resetting the board...
When an RTIx wdog trips, it sends the error to the associated
ESM (MAIN, MCU, WKUP, depending on the RTI instance). The ESM's need
to be programmed to take that as an error input ("ti,esm-pins").
The 3 ESMs are daisy chained too, and we assume that ti,esm-pins = <95>
describes the MCU_ESM0 and ESM0 connection (IIRC we couldn't find that explictly
documented, in fact we think that pin is not described in the TRM docs but
the others next to it were...).

The MAIN ESM, and the WKUP ESM, have a SOC_SAFETY_ERRORn/MCU_SAFETY_ERRORn
output from the SoC as well. That goes to tps6594's GPIO3/GPIO7. So if the
daisy chaining is setup you get ESM0 kicking all the way to WKUP_ESM0
which asserts out GPIO7/MCU_SAFETY_ERRORn. Without the daisy chaining you just
get GPIO3/SOC_SAFETY_ERRORn.

The tps6594 has a state machine (ESM again) that will reset the SoC
if those lines are asserted for long enough. That state machine needs
programming. Upstream linux programs that with
tps6594-esm + ESM_SOC_EN + ESM_SOC_START. The MCU_SOC_EN etc bits are only
referenced in upstream u-boots esm_pmic.c (using compatible = "ti,tps659413-esm").
At the moment, that's not setup for the j784s4 in upstream u-boot:
    halaney@x1gen2nano ~/git/u-boot (git)-[master] % git grep tps659413-esm
    arch/arm/dts/k3-j721e-r5-common-proc-board.dts:                 compatible = "ti,tps659413-esm";
    arch/arm/dts/k3-j721e-r5-sk.dts:                        compatible = "ti,tps659413-esm";
    ...
but it is in the BSP u-boot version you mentioned:
    tisdk@cd6a76441f0d:~/yocto-build/build/arago-tmp-default-baremetal-k3r5/work/j784s4_evm_k3r5-oe-eabi/u-boot-ti-staging/1_2023.04+gitAUTOINC+f9b966c674-r0_tisdk_3_edgeai_4/git$ git grep tps659413-esm | grep j784s4
    arch/arm/dts/k3-j784s4-r5-evm.dts:			compatible = "ti,tps659413-esm";

You (and I) were expecting to that even without the ESM daisy chaining,
the RTI0 instance if tripped would assert to pin 688 to ESM0 (which needs
to be programmed for ESM0 to pay attention to), and that would assert
SOC_SAFETY_ERRORn to tps6594's GPIO3, which Linux should have finished the
setup for to ensure the state machine is ran thru and the board is reset...
but you did not see that happen in practice, and needed to ensure MCU_ESM0
(via pin 95) was also programmed to get the board reset.

Dumb question, but there's so many pieces and domains at play I'll ask, did
you ensure that ESM0 was programmed in this test? Right now if you're using
upstream u-boot and upstream linux, nobody seems to be configured by default
to do that (u-boot needs to do that with k3_esm.c - meaning the defconfig needs
CONFIG_ESM_K3 && the dts needs ti,j721-esm with the RTI0-7 pins (688-695)
described). I think you probably did (since it sounds like adding the
daisy chaining pin 95 description back in made things reset), but just
making sure since I'm getting confused about the contexts here!

Below I grep through upstream u-boot to see if CONFIG_ESM_K3 is set
for j784s4 + to see if the devicetree used describes the ESMs:

    ahalaney@x1gen2nano ~/git/u-boot (git)-[master] % # Note how j784s4 isn't in the list... also note the r5 handles this usually on other socs             :(
    ahalaney@x1gen2nano ~/git/u-boot (git)-[master] % git grep ESM_K3                                                                                        :(
    ...
    configs/am62x_beagleplay_r5_defconfig:CONFIG_ESM_K3=y
    configs/am62x_evm_r5_defconfig:CONFIG_ESM_K3=y
    configs/am64x_evm_r5_defconfig:CONFIG_ESM_K3=y
    configs/j721e_evm_r5_defconfig:CONFIG_ESM_K3=y
    configs/phycore_am62x_r5_defconfig:CONFIG_ESM_K3=y
    configs/phycore_am64x_r5_defconfig:CONFIG_ESM_K3=y
    configs/verdin-am62_r5_defconfig:CONFIG_ESM_K3=y
    ahalaney@x1gen2nano ~/git/u-boot (git)-[master] % git grep DEVICE_TREE configs/j784s4_evm_r5_defconfig
    configs/j784s4_evm_r5_defconfig:CONFIG_DEFAULT_DEVICE_TREE="k3-j784s4-r5-evm"
    ahalaney@x1gen2nano ~/git/u-boot (git)-[master] % git grep j721e-esm | grep j784s4                                                                     :(
    dts/upstream/src/arm64/ti/k3-j784s4-main.dtsi:		compatible = "ti,j721e-esm";
    dts/upstream/src/arm64/ti/k3-j784s4-mcu-wakeup.dtsi:		compatible = "ti,j721e-esm";
    dts/upstream/src/arm64/ti/k3-j784s4-mcu-wakeup.dtsi:		compatible = "ti,j721e-esm";
    ahalaney@x1gen2nano ~/git/u-boot (git)-[master] % git grep k3-j784s4-mcu-wakeup.dtsi
    dts/upstream/src/arm64/ti/k3-j784s4.dtsi:#include "k3-j784s4-mcu-wakeup.dtsi"
    ahalaney@x1gen2nano ~/git/u-boot (git)-[master] % git grep k3-j784s4.dtsi
    dts/upstream/src/arm64/ti/k3-am69-sk.dts:#include "k3-j784s4.dtsi"
    dts/upstream/src/arm64/ti/k3-j784s4-evm.dts:#include "k3-j784s4.dtsi"
    ahalaney@x1gen2nano ~/git/u-boot (git)-[master] % git grep k3-j784s4-evm.dts
    arch/arm/dts/k3-j784s4-r5-evm.dts:#include "k3-j784s4-evm.dts"
    ahalaney@x1gen2nano ~/git/u-boot (git)-[master] % # Just to make sure there's not another file with that name in the tree..
    ahalaney@x1gen2nano ~/git/u-boot (git)-[master] % git ls-files | grep k3-j784s4-evm.dts
    dts/upstream/src/arm64/ti/k3-j784s4-evm.dts
    ahalaney@x1gen2nano ~/git/u-boot (git)-[master] % # Nope, ok, j784s4 r5 dts inherits the upstream one!

So upstream u-boot currently doesn't touch the ESMs on j784s4 at all as
far as I can tell due to lacking CONFIG_ESM_K3.

With all that in my scrambled mind, I feel we need to:

1. Take this patch to fix the RTI clocks and make that block work
   appropriately
2. Enable the ESM_K3 in upstream u-boot for the r5 build

The u-boot bits above are already done in the BSP u-boot, which is why I suppose things
work:
    tisdk@cd6a76441f0d:$ # Verify the r5 dts in the BSP describes the ESMs
    tisdk@cd6a76441f0d:$ git grep DEVICE_TREE configs/j784s4_evm_r5_defconfig 
    configs/j784s4_evm_r5_defconfig:CONFIG_DEFAULT_DEVICE_TREE="k3-j784s4-r5-evm"
    tisdk@cd6a76441f0d:$ git grep ti,j721e-esm | grep j784s4
    arch/arm/dts/k3-j784s4-main.dtsi:		compatible = "ti,j721e-esm";
    arch/arm/dts/k3-j784s4-mcu-wakeup.dtsi:		compatible = "ti,j721e-esm";
    arch/arm/dts/k3-j784s4-mcu-wakeup.dtsi:		compatible = "ti,j721e-esm";
    tisdk@cd6a76441f0d:$ git grep k3-j784s4-mcu-wakeup.dtsi 
    arch/arm/dts/k3-j784s4.dtsi:#include "k3-j784s4-mcu-wakeup.dtsi"
    tisdk@cd6a76441f0d:$ git grep k3-j784s4.dtsi
    arch/arm/dts/k3-am69-sk.dts:#include "k3-j784s4.dtsi"
    arch/arm/dts/k3-j784s4-evm.dts:#include "k3-j784s4.dtsi"
    tisdk@cd6a76441f0d:$ git grep k3-j784s4-evm.dts
    arch/arm/dts/k3-j784s4-r5-evm.dts:#include "k3-j784s4-evm.dts"
    # verify that the driver is built
    tisdk@cd6a76441f0d:$ git grep ESM_K3 | grep j784s4
    board/ti/j784s4/evm.c:	if (IS_ENABLED(CONFIG_ESM_K3)) {
    configs/j784s4_evm_r5_defconfig:CONFIG_ESM_K3=y

There's also that board file bit right above this comment, but I'm not
entirely sure if that's needed or not. Its not in upstream u-boot at least
for j784s4 (but is for j721e).

Here's how I view the connections mentally in case that garbled mess
above makes no sense. RTI0 is driven by the MAIN domain with linux,
ESMs are driven (if they are at all) by the MCU/r5 domains in u-boot,
TPS6594 is driven by linux wrt GPIO3's state machine, u-boot (if at all)
wrt GPIO7's state machine:

rti0 ---> ESM0 pin 688 --SOC_SAFETY_ERRORn--> TPS6594 GPIO3
				|
				|
				--> MCU_ESM0 pin 95 --> WKUP_ESM0 pin 63 --MCU_SAFETY_ERRORn--> TPS6584 GPIO7

Please let me know if that matches your view Eric... if so hopefully someone
from TI who's a little more intimate with the platform can comment on our view
and we can wrap this up for all the different contexts at play here!

Thanks,
Andrew


