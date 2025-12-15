Return-Path: <devicetree+bounces-246741-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EE96CBF665
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 19:19:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E70E330052E9
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 18:19:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B3F732549B;
	Mon, 15 Dec 2025 18:19:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="S7w6c1/S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9BA328466F
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 18:19:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765822790; cv=none; b=BtobOZV3ITxjVnK4kyQYWu0Zi11S9D+d+4HBKr1SXkvbJi8Nt8+l1iCV8KAm8yq1aL0z+dQgMRVoQW9RI4aEEZd1Jnhl8fe2w9+rKZyMyAk6Stxm+vfrgmJJY0XNHsIwhV16Yz3qmrrTt4goioDUrBZNh7YzX5pRhTW/mNbuXqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765822790; c=relaxed/simple;
	bh=+eSIzyNsld8324MccJzy0k1uEsMhJSv9KmPlRqapoLo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SKN451Rxl7pPSzEpVENz1kAeI0aVU1Zxa5Rgb9HkLCV8xewnaMlfS+L202ne7QbFQ8+iuul7oBvfcPJgaTVVbze29tg6KOvk5RBD9AmvOltwjwopmGY72REKwdWZX5Pz4h/EPsO0V+PlDcW/KWQAMAHxP0jeNZgWK3rXE0BpM8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=S7w6c1/S; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-477b198f4bcso30722565e9.3
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 10:19:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765822787; x=1766427587; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=XM8muLe+cUJikc6NHCimAzQfLZpxefXeXRMQFGpchNU=;
        b=S7w6c1/SU0igq0Bx5ZsIlysEN9LhqllSGpR+dwM2cYGkoIk2ni29edIWvFHKE9f+m1
         ruBY8dMeONYfnC9hx1fyz4El3FCJzFneFXyAKPY66LwnqPVxjmSiJfKwVc9hhqH/Yf+J
         /OSDqZtqQ2oR2mtRuKQrl0EcujRPcVd/sEa8dEh4jkThN4TM4rk2tfPPFof7NjT2bhCr
         tpgVPZLeaPDYqe2lscNS7Jbk16M2wBvuSlPpaOMv98Vk+gSbybTHgme1ttUGOzcH3v7D
         xAWGL/qFki186SvxocnoPzo36GaAO9q0DguUZqGAiN4whWSLvUneB36H/MfTwPolQuBT
         tK0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765822787; x=1766427587;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XM8muLe+cUJikc6NHCimAzQfLZpxefXeXRMQFGpchNU=;
        b=T9Cuh8oS4o1FUku0ei9sR6j9BVeDNR809G2e5BBSkBzyiRqh9jVqvu3CTnPuEt6rVK
         uS4+w0lkA8NdZRfaebCjtbFrCWbrpeN7/AEDcRgFUY7NkvUC0EzIARkVMjJy/g7ihz52
         lXOSV5Jc+u8T82jrLMvNLRzgPSNkomaNzSz+TumrrqcnmBbp7l9Dj7BhOiT6HcEtZzGe
         UF7ZwDUxqXlqws87w+PjjBCCG8ocORqMcA1BSoeXcSCE7oA4B+8Vj2b2bWYtTHrkvvLN
         tr6MXhSDm73SbbjfeYHXsbxAixoo1fgHlhwakWA40T8N0LA9vm1EVSuVCIFQsTC9dex6
         ht6Q==
X-Forwarded-Encrypted: i=1; AJvYcCXGhZ5uAT00gC1R6PE14YTfwkxbcHty6SRvdkrsXJpimZtKRv/e7Xg0JwGKkF4N6ab8QguG2wiSjjtL@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3rWviqdtAk8g+WOF8PGmUvRTsxMVUyh0Fhq93LDOE5gEFrDzg
	L4aK8O3ZFw+rRkTIG+7uA9WSx5W00ZRdaWPTJ/u8DnG7hhGzpIx4ClQh
X-Gm-Gg: AY/fxX6EwmZOm8xZdTPNA7IRKjDcOjngrDlnP+YyhELuQZRbs8D4803/4WOBy+0GKYp
	MpM22Wzu8lORDJJPrePw1yQpFc+oT6vLsIwXtG1CeEpP3rASK8lv90dJPraY2HmNkLGFSCOUf/a
	r1tCsGpaTLhXch09L2F/eadj2DZgkyC2YFT7cRbf2VsCDJWzOiRUJBrUgYbr8pMbNANBihAgqA6
	WpAl2KSmbaZlRXD77m2BNBlL1vG0xobpo+YW8uC1fauzkkdAk0hFr4ql4uLTziWmIafCcf42UeL
	yPaTjOn4kAd7pOPVcRuc01O8/MRJ98VOcbfjiRmgeRJqucf0/sZvdcrufvpwxQJHpx5BSLNzlum
	aAfOANd977TdOMsp3F4hs2MppHDLhbWExZ12QU0J1nqBxdigGRqgBqTgA/7iwvbPmRq4C4Eu5X7
	m4pkluFjXHOwWF0xGIHj5oXJfJuMe5Ua/7GRwyDe2ds4sLJWA0nT1bGjyTVIjwd0TJim/HT7IrP
	3o=
X-Google-Smtp-Source: AGHT+IHlEdUry2/A5eLerel/tgOjxOM1UDY/0/bP0yUxROsj/AbKDjvP1/Icp5UEQBDq+MBNOn2Pzg==
X-Received: by 2002:a05:600d:6405:20b0:47a:935f:618e with SMTP id 5b1f17b1804b1-47a935f64d7mr91820175e9.15.1765822786707;
        Mon, 15 Dec 2025 10:19:46 -0800 (PST)
Received: from localhost (brnt-04-b2-v4wan-170138-cust2432.vm7.cable.virginm.net. [94.175.9.129])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47bd5f89867sm504235e9.0.2025.12.15.10.19.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 10:19:45 -0800 (PST)
Date: Mon, 15 Dec 2025 18:19:44 +0000
From: Stafford Horne <shorne@gmail.com>
To: Conor Dooley <conor@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>,
	Linux OpenRISC <linux-openrisc@vger.kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Jonas Bonn <jonas@southpole.se>,
	Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
	Masahiro Yamada <masahiroy@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH 4/5] openrisc: dts: Split simple smp dts to dts and dtsi
Message-ID: <aUBRQDJdFi7cppI8@antec>
References: <20251214180158.3955285-1-shorne@gmail.com>
 <20251214180158.3955285-5-shorne@gmail.com>
 <20251215-graffiti-baritone-4eb0a9f58ab6@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251215-graffiti-baritone-4eb0a9f58ab6@spud>

On Mon, Dec 15, 2025 at 04:58:41PM +0000, Conor Dooley wrote:
> On Sun, Dec 14, 2025 at 06:01:44PM +0000, Stafford Horne wrote:
> > Split out the common memory, CPU and PIC definitions of the simple SMP
> > system to a DTSI file which we will later use for our De0 Nano multicore
> > board device tree.  We also take this opportunity to swich underscores
> > to dashes as that seems to be the more common convention for DTS files.
> > 
> > Signed-off-by: Stafford Horne <shorne@gmail.com>
> > ---
> >  arch/openrisc/boot/dts/simple-smp.dts         | 25 +++++++++++++++++++
> >  .../dts/{simple_smp.dts => simple-smp.dtsi}   | 12 ++++-----
> >  arch/openrisc/configs/simple_smp_defconfig    |  2 +-
> >  3 files changed, 32 insertions(+), 7 deletions(-)
> >  create mode 100644 arch/openrisc/boot/dts/simple-smp.dts
> >  rename arch/openrisc/boot/dts/{simple_smp.dts => simple-smp.dtsi} (89%)
> > 
> > diff --git a/arch/openrisc/boot/dts/simple-smp.dts b/arch/openrisc/boot/dts/simple-smp.dts
> > new file mode 100644
> > index 000000000000..174c2613c419
> > --- /dev/null
> > +++ b/arch/openrisc/boot/dts/simple-smp.dts
> > @@ -0,0 +1,25 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +
> > +/dts-v1/;
> > +
> > +#include "simple_smp.dtsi"
> > +
> > +/ {
> > +	model = "Simple SMP Board";
> > +};
> > +
> > +&cpu0 {
> > +	clock-frequency = <20000000>;
> > +};
> > +
> > +&cpu1 {
> > +	clock-frequency = <20000000>;
> > +};
> > +
> > +&serial0 {
> > +	clock-frequency = <20000000>;
> > +};
> > +
> > +&enet0 {
> > +	status = "okay";
> > +};
> > diff --git a/arch/openrisc/boot/dts/simple_smp.dts b/arch/openrisc/boot/dts/simple-smp.dtsi
> > similarity index 89%
> > rename from arch/openrisc/boot/dts/simple_smp.dts
> > rename to arch/openrisc/boot/dts/simple-smp.dtsi
> > index 71af0e117bfe..92770bb6fcf7 100644
> > --- a/arch/openrisc/boot/dts/simple_smp.dts
> > +++ b/arch/openrisc/boot/dts/simple-smp.dtsi
> > @@ -1,4 +1,3 @@
> > -/dts-v1/;
> >  / {
> >  	compatible = "opencores,or1ksim";
> >  	#address-cells = <1>;
> > @@ -22,15 +21,15 @@ memory@0 {
> >  	cpus {
> >  		#address-cells = <1>;
> >  		#size-cells = <0>;
> > -		cpu@0 {
> > +		cpu0: cpu@0 {
> >  			compatible = "opencores,or1200-rtlsvn481";
> >  			reg = <0>;
> > -			clock-frequency = <20000000>;
> > +			clock-frequency = <0>;
> 
> Delete these lines, don't set them to zero please.

OK, I wasn't sure what to put here so put 0, Just removing is much better.

-Stafford

> >  		};
> > -		cpu@1 {
> > +		cpu1: cpu@1 {
> >  			compatible = "opencores,or1200-rtlsvn481";
> >  			reg = <1>;
> > -			clock-frequency = <20000000>;
> > +			clock-frequency = <0>;
> >  		};
> >  	};
> >  
> > @@ -57,7 +56,7 @@ serial0: serial@90000000 {
> >  		compatible = "opencores,uart16550-rtlsvn105", "ns16550a";
> >  		reg = <0x90000000 0x100>;
> >  		interrupts = <2>;
> > -		clock-frequency = <20000000>;
> > +		clock-frequency = <0>;
> >  	};
> >  
> >  	enet0: ethoc@92000000 {
> > @@ -65,5 +64,6 @@ enet0: ethoc@92000000 {
> >  		reg = <0x92000000 0x800>;
> >  		interrupts = <4>;
> >  		big-endian;
> > +		status = "disabled";
> >  	};
> >  };
> > diff --git a/arch/openrisc/configs/simple_smp_defconfig b/arch/openrisc/configs/simple_smp_defconfig
> > index 6008e824d31c..db77c795225e 100644
> > --- a/arch/openrisc/configs/simple_smp_defconfig
> > +++ b/arch/openrisc/configs/simple_smp_defconfig
> > @@ -20,7 +20,7 @@ CONFIG_SLUB=y
> >  CONFIG_SLUB_TINY=y
> >  CONFIG_MODULES=y
> >  # CONFIG_BLOCK is not set
> > -CONFIG_BUILTIN_DTB_NAME="simple_smp"
> > +CONFIG_BUILTIN_DTB_NAME="simple-smp"
> >  CONFIG_SMP=y
> >  CONFIG_HZ_100=y
> >  CONFIG_OPENRISC_HAVE_SHADOW_GPRS=y
> > -- 
> > 2.51.0
> > 



