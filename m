Return-Path: <devicetree+bounces-247845-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE0CCCC0DD
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 14:40:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E9F733007DA5
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 13:40:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 178ED32ED4A;
	Thu, 18 Dec 2025 13:40:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="ZK+KqrxM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3767432ED33
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 13:40:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766065239; cv=none; b=GTHW3GvuAYS5c6bHYbiTcniVjxoIks6LlpeCzscOeHKLyNPUVyCYYPCc89SPPbao1/BQxSZ8ME7ViIFKPfVmRq/+YaurJqg9Hu/b5fmV6hxLhNhvv7qA6lpSD92UQaYYXdXonN0tz2hXoAaOIzvvRyZDdjgLEtXiAdogF4D555w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766065239; c=relaxed/simple;
	bh=eGaDA3vvIGaXw8t9su+r0TjZyuWLWJ34m2TEX6JDt30=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GVsSF/SNifQkXytepCaZ/Rb9D/3w3xM6h/KZIoZ1Mtu+4FPrKo0EoAVflWEJhP6wXpRemFKJqQgjzLoojKL/H14gEJpKB11TH5EM7z+oIJTAWDE35VBEEBXwvpe87ZgTkgqhagqjgZe3tRlu/DgkEHiqswp9r3xLGjLMXrnUGuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=ZK+KqrxM; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-64b4b35c812so851819a12.0
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 05:40:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1766065235; x=1766670035; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3LSAT77K70NGSM9Qz0SJWa7kxo2rFXyPcHQVzVB1tZg=;
        b=ZK+KqrxMsUZaKGOLTG9y+qS/qezqON/bTuJexpgat+NFg1gygQ/oqqaA7mgB+mqCU1
         NEs014kwSNdnppvfHeQ33PPvyJhJ0XIuRdF0BRKWrEro/QhpPTcxNX31736B3rupvuGU
         tzuEx9CVz3lT/OShSlH1cI/wBtNMXzhKy+Aowi9QT7tNjDf0Gey11wgxAxsrPgCtMb84
         uet7g4PJ93VAGL7RX8k3swa/9iHtxzvmDantCIaZHC7vdnrzCb7sEM5pPSM3ghWV+/PM
         0R5glu3cmBd0jhwpoJLIJGDMDHRPZkbcTP0wRtNfmL/kqZN4Kqda8iv6jn8aeVB4CoQn
         23gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766065235; x=1766670035;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3LSAT77K70NGSM9Qz0SJWa7kxo2rFXyPcHQVzVB1tZg=;
        b=fZBIIg+hhSy0hg3K8lRyI8EWJVlX7suey6cNj1srGM52MX+9BbbsQ3wTPu7BZtE6pj
         eYQz7zklmP4EPHPfBn/g2aGPc11/iaVCZOcEHUCfAWt0zN5al89eUJp63rAq6vt9BA5z
         dBZnfCysPczLiLrJ5NCPuHlZWNTaGsAzADnpmcmqnD4MrPbZqUTPeNhelAjptXnmuc2t
         VH6GpKIadV+UUQnQ6ik2YakyqPMlDFSdjlBavYe+iH29BtMZGxbpdWBENsmL+0MOm9sL
         j6jBi5+yh35ry5YxqEWEzXw3Liw1wSDvHpiR4Tj83r+uITnfuhoxBPYa2yNKTuHME64R
         7hNQ==
X-Forwarded-Encrypted: i=1; AJvYcCUkb5sIeGHCbW0VPwouK9CuTssaVzmSaLHlWJVCWmbL9aUJQaiZ09Okb0MvZ8WnMTsmVhKn65oOtOob@vger.kernel.org
X-Gm-Message-State: AOJu0YwfIkVR9/CdEguOxH6MzVFqNw6/iYLy7ZqaE5kC/sqF4XaqYEK4
	f8h9p3LlkyC9XekxJf9InDamCzCvMcml02zmz/8Ixh5VXDwZHp//6ONDjeD6cjI7wfM=
X-Gm-Gg: AY/fxX4zXbwT2aIlILnXT3K1JfucODeYxFOf1oAfbnN9+DkKxddLwiS4jlHsK2JOX5f
	3pOCtrV/3jzVm7WCdkpxAt5jh7PQkoq2o4ArNJMu6gENWH24gfMRzGRePvXFKcXsSjJRP5vyeke
	tY2pE3kQzWJN6vi8bDTbrboR63zKiLIkTj6GQIZeaksDWgSbt4nA3UrhOCTUyRQyQRpwaC+NZwz
	xGwDnPUeNGJr6q6CEOfx0tPLb7s1UH89utAwlUboSScwmOD1g2/MiYKDlG3hNRCTMKHfvGU5Pmq
	X8NyIbqE7G8hUpAIHMhvbHHUK6TILK0WGGQoYSRdZUrvx1rLGVxoeRu43M4n41Vhvse9IU5ruQq
	NVTQRQ0jVppph3AiqUlqbcR/vVPFqAqDuC9ClkLqVA3eH1QnG2s0JqNTpAcbNgV9LoEGtfP9MXq
	KiWr7AgWph87v4EgCNtzB231w/lpF/NU5T0XYTTyeEKRZM6lPLa08qDQ==
X-Google-Smtp-Source: AGHT+IHubB2aqzYVB60sOrvL9H+YVC9aXHA+OCCZ5f3rKFv1VGMlaYPyOqYSATywdoLRGkGi9cjK8g==
X-Received: by 2002:a17:907:3c90:b0:b70:af3d:e97b with SMTP id a640c23a62f3a-b7d23a425a9mr2129392766b.17.1766065235495;
        Thu, 18 Dec 2025 05:40:35 -0800 (PST)
Received: from localhost (host-79-37-15-246.retail.telecomitalia.it. [79.37.15.246])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b802351a335sm236652066b.66.2025.12.18.05.40.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 05:40:35 -0800 (PST)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Thu, 18 Dec 2025 14:43:08 +0100
To: Andrea della Porta <andrea.porta@suse.com>
Cc: "Rob Herring (Arm)" <robh@kernel.org>,
	Phil Elwell <phil@raspberrypi.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [RFC PATCH] arm64: broadcom: bcm2712: Rework rp1 overlay handling
Message-ID: <aUQE7NbplmY_Qtp6@apocalypse>
References: <20251117211503.728354-2-robh@kernel.org>
 <aTgrHEoxl7J8_BuU@apocalypse>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aTgrHEoxl7J8_BuU@apocalypse>

Hi Rob,

On 14:58 Tue 09 Dec     , Andrea della Porta wrote:
> Hi Rob,
> sorry for the delay...
> 
> On 15:15 Mon 17 Nov     , Rob Herring (Arm) wrote:
> > It's a requirement that DT overlays be applied at build time in order to
> > validate them as overlays are not validated on their own.
> > 
> > Simply adding a build time target is possible, but it's also not desirable
> > to have targets which include the overlay contents and apply the same
> > overlay.
> > 
> > Rework the targets such that there are 2 overlays: the existing RP1 overlay
> > and the board specific configuration of the RP1 (bcm2712-rpi-5-b.dtso).
> > 
> > Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> > ---
> > The missing applying of rp1.dtbo will soon be a warning[1].
> > 
> > The comment in bcm2712-rpi-5-b.dts(o) needs updating or removing. The RP1
> > driver or userspace handling of the overlay probably needs updating to
> > handle the 2 overlays. IIRC, I think we can apply overlays to overlays
> > which may be useful here. If not, adding that to the tools should be
> > possible.
> > 
> > [1] https://lore.kernel.org/all/20251114222759.4181152-1-robh@kernel.org/
> > ---
> >  arch/arm64/boot/dts/broadcom/Makefile                 | 10 ++++++++--
> >  ...m2712-d-rpi-5-b.dts => bcm2712-d-rpi-5-b-base.dts} |  2 +-
> >  .../{bcm2712-rpi-5-b.dts => bcm2712-rpi-5-b.dtso}     | 11 +++++------
> >  3 files changed, 14 insertions(+), 9 deletions(-)
> >  rename arch/arm64/boot/dts/broadcom/{bcm2712-d-rpi-5-b.dts => bcm2712-d-rpi-5-b-base.dts} (95%)
> >  rename arch/arm64/boot/dts/broadcom/{bcm2712-rpi-5-b.dts => bcm2712-rpi-5-b.dtso} (92%)
> > 
> > diff --git a/arch/arm64/boot/dts/broadcom/Makefile b/arch/arm64/boot/dts/broadcom/Makefile
> > index 83d45afc6588..4957edec9d9f 100644
> > --- a/arch/arm64/boot/dts/broadcom/Makefile
> > +++ b/arch/arm64/boot/dts/broadcom/Makefile
> > @@ -6,9 +6,9 @@ DTC_FLAGS := -@
> >  dtb-$(CONFIG_ARCH_BCM2835) += bcm2711-rpi-400.dtb \
> >  			      bcm2711-rpi-4-b.dtb \
> >  			      bcm2711-rpi-cm4-io.dtb \
> > -			      bcm2712-rpi-5-b.dtb \
> > +			      bcm2712-rpi-5-b.dtbo \
> >  			      bcm2712-rpi-5-b-ovl-rp1.dtb \
> > -			      bcm2712-d-rpi-5-b.dtb \
> > +			      bcm2712-d-rpi-5-b-base.dtb \
> >  			      bcm2837-rpi-2-b.dtb \
> >  			      bcm2837-rpi-3-a-plus.dtb \
> >  			      bcm2837-rpi-3-b.dtb \
> > @@ -17,6 +17,12 @@ dtb-$(CONFIG_ARCH_BCM2835) += bcm2711-rpi-400.dtb \
> >  			      bcm2837-rpi-zero-2-w.dtb \
> >  			      rp1.dtbo
> >  
> > +bcm2712-rpi-5-b-dtbs := bcm2712-rpi-5-b-ovl-rp1.dtb rp1.dtbo bcm2712-rpi-5-b.dtbo
> > +dtb-$(CONFIG_ARCH_BCM2835) += bcm2712-rpi-5-b.dtb
> > +
> > +bcm2712-d-rpi-5-b-dtbs := bcm2712-d-rpi-5-b-base.dtb rp1.dtbo bcm2712-rpi-5-b.dtbo
> > +dtb-$(CONFIG_ARCH_BCM2835) += bcm2712-d-rpi-5-b.dtb
> > +
> >  subdir-y	+= bcmbca
> >  subdir-y	+= northstar2
> >  subdir-y	+= stingray
> > diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-d-rpi-5-b.dts b/arch/arm64/boot/dts/broadcom/bcm2712-d-rpi-5-b-base.dts
> > similarity index 95%
> > rename from arch/arm64/boot/dts/broadcom/bcm2712-d-rpi-5-b.dts
> > rename to arch/arm64/boot/dts/broadcom/bcm2712-d-rpi-5-b-base.dts
> > index 7de24d60bcd1..48a0ae118839 100644
> > --- a/arch/arm64/boot/dts/broadcom/bcm2712-d-rpi-5-b.dts
> > +++ b/arch/arm64/boot/dts/broadcom/bcm2712-d-rpi-5-b-base.dts
> > @@ -1,7 +1,7 @@
> >  // SPDX-License-Identifier: (GPL-2.0 OR MIT)
> >  /dts-v1/;
> >  
> > -#include "bcm2712-rpi-5-b.dts"
> > +#include "bcm2712-rpi-5-b-ovl-rp1.dts"
> >  
> >  &gio_aon {
> >  	brcm,gpio-bank-widths = <15 6>;
> > diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dtso
> > similarity index 92%
> > rename from arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
> > rename to arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dtso
> > index b8f256545022..89d099c00035 100644
> > --- a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
> > +++ b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dtso
> > @@ -15,19 +15,18 @@
> >   */
> >  
> >  /dts-v1/;
> > +/plugin/;
> >  
> > -#include "bcm2712-rpi-5-b-ovl-rp1.dts"
> > -
> > -&pcie2 {
> > -	#include "rp1-nexus.dtsi"
> > -};
> > +#include <dt-bindings/gpio/gpio.h>
> 
> Sounds reasonable to me, please let me have a full round of tests to check for
> any issue with the driver and I'll come back with feedback.

Just a heads up, since you've posted this new revision [1] and that I'm currently
reworking RP1 overlay (in order to drop it), I assume that this patch is no longer
relevant and I'll avoid testing it.

Thanks,
Andrea

[1] - https://lore.kernel.org/all/aUQA5IKqqsrElzKP@apocalypse/

> 
> >  
> >  &rp1_eth {
> >  	status = "okay";
> >  	phy-mode = "rgmii-id";
> >  	phy-handle = <&phy1>;
> > +        #address-cells = <1>;
> > +        #size-cells = <0>;
> 
> I think this should go in a separate patch.
> 
> >  
> > -	mdio {
> > +	mdio@1 {
> 
> Ditto.
> 
> Many thanks,
> Andrea
> 
> >  		reg = <0x1>;
> >  		reset-gpios = <&rp1_gpio 32 GPIO_ACTIVE_LOW>;
> >  		reset-delay-us = <5000>;
> > -- 
> > 2.51.0
> > 

