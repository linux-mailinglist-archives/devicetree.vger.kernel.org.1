Return-Path: <devicetree+bounces-251167-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D15ACEFBAB
	for <lists+devicetree@lfdr.de>; Sat, 03 Jan 2026 07:13:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9EDB3300E168
	for <lists+devicetree@lfdr.de>; Sat,  3 Jan 2026 06:13:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 874E01A2392;
	Sat,  3 Jan 2026 06:13:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BC4sIwMt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB8C139FCE
	for <devicetree@vger.kernel.org>; Sat,  3 Jan 2026 06:13:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767420829; cv=none; b=lXNAYzUlgjJUbXGze9VAF2LjS0b1DYCbdLl5hCrkoYgt2uPME4gAWqc4uFPOmUn6e0625ecOrQX18ejQjQK6r6jNh12HsymLUkotqW8ekkcLxHEFAoicBYpozw4xsjQ0qbc6H7LcP93CfzGf0ZZobdOZcBgDZlo0Oax6aIY50r0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767420829; c=relaxed/simple;
	bh=97zCHu7eDEq2wSCao5W99k8eHqOyXhfcBG8VjAc7L1E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pf6t+9Gb/VbrOIj8C0Ztd0Ioucwcwjefd835y4YLe40SH3lbvGjomlfTuxTPTmwkq1uhERVN/k/cNH+IvLMB5zjQpqAehxRZOOpEcaKCkm6KOsW5rQ87Hnp0F2zYSpdZOAnHViLNJpzWSD8yQlY7Z7s7OIwAW0yXX2fY14Lb32k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BC4sIwMt; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-477bf34f5f5so92766275e9.0
        for <devicetree@vger.kernel.org>; Fri, 02 Jan 2026 22:13:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767420826; x=1768025626; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=f93gRcp6kFm4mZXOsyuiAcC5fulk1f6gnaxl8osZ7s4=;
        b=BC4sIwMtESo6+2cyWRqKp9te25YjJ1a/npPPPh2X6l2ix1dxsqgND/raQVNg357O/8
         uAMjw8Wx/NNZ3qBaCkVf2Bxtk8ewqkzOkwjzD9SxOkPDwFFU76DM/b17RGmtX/lQdhwl
         ETP7TczR+W8Yjkw8dN06+sGoKxJUxM5Brs2K5xFJO4NJBjqh0FGRSwMYN1JKQ9x9d/RA
         +3HQw0L4PYvzWrbOdennCuvR7p41KnORemt8v6loOl3YVP3ROjrtKSIpVH3cokRFWmHh
         QaRe6/rG9xdvHjghtyNy84hgmnQHDYrgN6QP2fzCCbQ+klKjWIc/GUq0BUkn14lUaeao
         021A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767420826; x=1768025626;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f93gRcp6kFm4mZXOsyuiAcC5fulk1f6gnaxl8osZ7s4=;
        b=gu1nrtGqMAtElu6r1t9RUsLkGUwRdSQIWuM2LxtR32TJB5EgZXLy0VnMl8EdjBlZxW
         RCzZzk7Q037iY3nLr5xQC+bllZcSobeyBdss9oxkgU0zYRM4sOm3TWLl/W96gX4HyVUp
         1MEwqQXntBHB9s7W1HCZAchNT5dhvq55CIrLFX2fTwdNiZP2KRxpuTw8eo75YHfW8nxP
         f5YyXDlp+IPQ/8uBa8XsJ7KCf4VQbNBqz0ABb0FtnZkmioiMfZcs7lkp4VpFsS7jwF9V
         ssFDMWK/X2QF3K0LtMS4Oc1leJxQ2mj/S4p7D4vwoRz7F+jcsGgpBkCIDTPrOzEqG1tb
         p3uA==
X-Forwarded-Encrypted: i=1; AJvYcCWbDy3hOt6QMkUi4YXLRygnGMLT8NuaHLusNN1GJBKci5PQtjlAnp1UMdTffBEDC6LeGwBO2I/HcjIL@vger.kernel.org
X-Gm-Message-State: AOJu0YxPwHfnNZquICTGw/4WF8vcNzs+5gb3DpJXHtJG2ssExTfTsdvQ
	uOFmFQWUakhQr9+jhq5gM6/vJNzBAbpXtM0Uq501ivfrKOELYt8B8xRU
X-Gm-Gg: AY/fxX6PzGFggInEo641X4Fs2XUuu/yMh1qNh2DIaHqFWHgqPDFahDg5a6pwvw38CYU
	nyTQlL5Eti4dxn+iggmxzUUUsmDrDCx5eBJ5eTwf0i8Lhn5D6IdzkS7GUloJs6rZWEPiDJMfi1J
	cPv5rfJlszchcwhi5BNI7EA2819xZSETBFOz7onv6TZE+T1gkOBLZHoyP1E4jy1PdIUGwTsu5RM
	1KA88/rkfUHZOigBLxXh/xHBo6MteQjA2O7agC2TZQlySHqLeybJJFJXbEAxh2Ptg7lvFy9ksEK
	EKbX5rzIH+CQmWaAM6VKAK/BxSU7HXyH35EHpdt+cTVtvntpbZ7f3IrAvMdGso0gxudhanLVzTN
	kGrX1vPtfwqxBswfu0Hpe7KEHFPrHVQ2/A/CJ/RKUexSh6IMcgs5XPZoMfQFdCK2399CDTBFAF4
	tOlKtbKp1KovOpuF1cG4We5vLEyS2h65dpQimSTibP69+0UeWmq4Osxm498QlIWPfh
X-Google-Smtp-Source: AGHT+IEqhEgz23pqULZ0/FEYqnsvhRaMIkKcIDkLAcEj5jOi/WXFwnkZTsPfb8puSZIbrROIMKx2NQ==
X-Received: by 2002:a05:600c:4446:b0:475:e007:bae0 with SMTP id 5b1f17b1804b1-47d1956f896mr560090725e9.16.1767420826016;
        Fri, 02 Jan 2026 22:13:46 -0800 (PST)
Received: from localhost (brnt-04-b2-v4wan-170138-cust2432.vm7.cable.virginm.net. [94.175.9.129])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324ea82f6asm89934101f8f.27.2026.01.02.22.13.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Jan 2026 22:13:44 -0800 (PST)
Date: Sat, 3 Jan 2026 06:13:44 +0000
From: Stafford Horne <shorne@gmail.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: LKML <linux-kernel@vger.kernel.org>,
	Linux OpenRISC <linux-openrisc@vger.kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Jonas Bonn <jonas@southpole.se>,
	Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
	Masahiro Yamada <masahiroy@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 4/5] openrisc: dts: Split simple smp dts to dts and
 dtsi
Message-ID: <aVizmEcLSgD_Sgwj@antec>
References: <20251217080843.70621-1-shorne@gmail.com>
 <20251217080843.70621-5-shorne@gmail.com>
 <CAMuHMdXG2HQ8e+Hx1CUBus_VYKmx4fEeDRH+sDXmaQQANTraBg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMuHMdXG2HQ8e+Hx1CUBus_VYKmx4fEeDRH+sDXmaQQANTraBg@mail.gmail.com>

On Thu, Dec 18, 2025 at 07:37:43PM +0100, Geert Uytterhoeven wrote:
> Hi Stafford,
> 
> On Wed, 17 Dec 2025 at 09:23, Stafford Horne <shorne@gmail.com> wrote:
> > Split out the common memory, CPU and PIC definitions of the simple SMP
> > system to a DTSI file which we will later use for our De0 Nano multicore
> > board device tree.  We also take this opportunity to swich underscores
> > to dashes as that seems to be the more common convention for DTS files.
> >
> > Signed-off-by: Stafford Horne <shorne@gmail.com>
> 
> Thanks for your patch!

Thanks for the review.  Sorry for the delay my home server (internet) went down
when I was out of the country and I didn't fix until I go back.

> > --- /dev/null
> > +++ b/arch/openrisc/boot/dts/simple-smp.dts
> > @@ -0,0 +1,25 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +
> > +/dts-v1/;
> > +
> > +#include "simple-smp.dtsi"
> > +
> > +/ {
> > +       model = "Simple SMP Board";
> > +};
> > +
> > +&cpu0 {
> > +       clock-frequency = <20000000>;
> > +};
> > +
> > +&cpu1 {
> > +       clock-frequency = <20000000>;
> > +};
> > +
> > +&serial0 {
> > +       clock-frequency = <20000000>;
> > +};
> > +
> > +&enet0 {
> 
> Alphabetical sort order?

Sure, I'll fix, I didn't know all of the conventions, thanks for pointing out.

> > +       status = "okay";
> > +};
> > diff --git a/arch/openrisc/boot/dts/simple_smp.dts b/arch/openrisc/boot/dts/simple-smp.dtsi
> > similarity index 90%
> > rename from arch/openrisc/boot/dts/simple_smp.dts
> > rename to arch/openrisc/boot/dts/simple-smp.dtsi
> > index 71af0e117bfe..2013fd3e7a18 100644
> > --- a/arch/openrisc/boot/dts/simple_smp.dts
> > +++ b/arch/openrisc/boot/dts/simple-smp.dtsi
> > @@ -1,4 +1,3 @@
> > -/dts-v1/;
> >  / {
> >         compatible = "opencores,or1ksim";
> >         #address-cells = <1>;
> > @@ -22,15 +21,13 @@ memory@0 {
> >         cpus {
> >                 #address-cells = <1>;
> >                 #size-cells = <0>;
> 
> Missing blank line.

OK.

> > -               cpu@0 {
> > +               cpu0: cpu@0 {
> >                         compatible = "opencores,or1200-rtlsvn481";
> >                         reg = <0>;
> > -                       clock-frequency = <20000000>;
> >                 };
> 
> Likewise.

OK.

> > -               cpu@1 {
> > +               cpu1: cpu@1 {
> >                         compatible = "opencores,or1200-rtlsvn481";
> >                         reg = <1>;
> > -                       clock-frequency = <20000000>;
> >                 };
> >         };
> >

Thanks,

 -Stafford

