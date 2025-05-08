Return-Path: <devicetree+bounces-175233-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 67517AB02E9
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 20:35:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8D55A188D0E9
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 18:35:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CE142147F6;
	Thu,  8 May 2025 18:35:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dVmFiZ1x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 833864B1E7D
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 18:35:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746729303; cv=none; b=cQL1OgYIo/FUbdURqMLLHMpMJ9sn9OxM+U87QHp0WqF79aHlBbcF/x1Fk35Wv4c7CzIEdago4qb4PdqO3R8uGU7d+CyDC3O87ZK8kfvt8TvsYzA/JrqEo1PqoQ7HLL9Km2Sb5PBGemeixMgc/uWpj070vF8JjzlJQxCG8zvu3s0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746729303; c=relaxed/simple;
	bh=pve4kmBWjpJMouJmACKzohZUAEfULdHO46/0YMB2Ys8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Z++EUHxk3ljqXMqMws1BkU8Xr8lzngJbjXOz4JiuAul3g7vNDuVL9rWHMb1CakXRn+yZpSxrrDGovpSCrcMULay0TfK84O/ugHhuTCIb980F9yVfF86Nu2WaN9yO0oPCmjM/UT7wq6qLfuyEMQ5NZlIvNsbFDvWlJxQM28RH7Js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dVmFiZ1x; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-441c99459e9so9130805e9.3
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 11:35:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746729300; x=1747334100; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=IVDbdK6tFT4p5qSPziDFcg0ZPFHZewJeUyaEpzkNkuw=;
        b=dVmFiZ1xIFr26W5F6b/aNMrSFnV7xGfSmpLQ8g36JUJHnL7/++TGRG137ljZY6Toe8
         ZMFuchiritMMJH1scY/T7J8YaB8S+ycLXtY4ffnnG1iM9nGHbkeBQHtkEvMzak+CMmnJ
         ZZ0xS+qU88MwacFLcE2ugRNebKHCanihfTQLl4jPmd9HFqUNWIw49ujANQ+yG766716P
         /AAV6QbpsMmaWDC4wCDNs03VC5OvMJBcdsqE7l+Em6xlnQ56cjgMXEMhQr6D6qSlNU2p
         hmtNfwCgYKvK37ZRCzQJE///77DTTHIyRZE0xQB6oyVaoQCfEAZxNK+DSrP9nrGYfQB4
         7wnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746729300; x=1747334100;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IVDbdK6tFT4p5qSPziDFcg0ZPFHZewJeUyaEpzkNkuw=;
        b=WNdmphBMoHE8sOgSnnlrz4FNHEbegrIBnxNqgDgtSSR4SSepgpHu8RlJ1MQzliPimG
         Pbx9x95d4Q7ZiRGFVjyVtkq7UT16krp2NwMGLdivquvmVkvsLmA7R2TvrZYNCybhp3UI
         0goCt9xfPCNva1FRHmgxCvV9st64yP/rcFWvctufJpenoPQC6zlvIFb2kZJxDK1g7iLg
         WQmvTDn9fJJxsTPk+EQUYgjPCz64sgGrg6HPCn8JcloRYB0i4byFG+X9nBGEGJQzpq9u
         JQ0Gv50kpSLTHIdidd5osP2pXIk8dul6spzTeo0E083I2H+YExTo/WKO/nJmQZSl33ZR
         ub5A==
X-Forwarded-Encrypted: i=1; AJvYcCWRDdH1hfDc9VWb35wQEJavr41lJdhSSjpu/wWJTWtifOTAK6KUHrGXgpfNe89vHluaF2ivLk1SviAC@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/qVjwx5HlG8L2osat390IUvZFIqFAPScuAN9vUkTuQ2wnKgn4
	tABWkQ7Q0i/FD2f5CLmTeBQzVN9l0b4BqEAWnYblAmy7Nz0p7iNIPP6lVA==
X-Gm-Gg: ASbGncutZTaOfUbQdJQERMnLHMJaKF1MOyPl4R6iM8KFXzm97D9zspBC6jLfEssmEno
	QDWAn/C7Zp1tV5yBE5z2rhn4O3gYeeMD0y3G8PiSE7Y8uh+lCYhq2zh9MTq4svhBGaQcGpB7ElA
	RTfclfP2iAP7tPNJLPQho2wnuhDOKRAcJn9a+C8v/qepwzi/LaVxA7NiTqU9GBxSbOBRBFBTJEs
	ZkC9jWCAdE36qoUU6KDb5m7+cUv1r22dEiLhwuf5DzL49CU0CqpT2NvcEketN0goFWDDsFtbLf+
	YLo1hbYvjU4qymvDTh6CpfZi7/TT28KTEG6t4aug5mqbYnCh2FOJ
X-Google-Smtp-Source: AGHT+IHYSEjULgZ4gpU3lysdol2P4WoCbN6EmeFoDVpmXCq4aDj8KwVvWdJr2UTxFLSQOh9srCA+Tg==
X-Received: by 2002:a05:600c:1d16:b0:43d:2313:7b49 with SMTP id 5b1f17b1804b1-442d6d44ac2mr3297615e9.12.1746729299349;
        Thu, 08 May 2025 11:34:59 -0700 (PDT)
Received: from Red ([2a01:cb1d:898:ab00:4a02:2aff:fe07:1efc])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-442cd3b7dd5sm45158365e9.35.2025.05.08.11.34.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 May 2025 11:34:58 -0700 (PDT)
Date: Thu, 8 May 2025 20:34:55 +0200
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Rob Herring <robh@kernel.org>
Cc: Chris Morgan <macroalpha82@gmail.com>, linux-sunxi@lists.linux.dev,
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
	ryan@testtoast.com, macromorgan@hotmail.com, p.zabel@pengutronix.de,
	tzimmermann@suse.de, maarten.lankhorst@linux.intel.com,
	simona@ffwll.ch, airlied@gmail.com, mripard@kernel.org,
	samuel@sholland.org, jernej.skrabec@gmail.com, wens@csie.org,
	conor+dt@kernel.org, krzk+dt@kernel.org
Subject: Re: [PATCH V9 00/24] drm: sun4i: add Display Engine 3.3 (DE33)
 support
Message-ID: <aBz5T-jAnv_RVAmh@Red>
References: <20250507201943.330111-1-macroalpha82@gmail.com>
 <CAL_Jsq+gtVi1XG7b2g+n-H=fDrkZRqVA0wNSAA5-Ot7EXqG2QA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAL_Jsq+gtVi1XG7b2g+n-H=fDrkZRqVA0wNSAA5-Ot7EXqG2QA@mail.gmail.com>

Le Wed, May 07, 2025 at 04:13:38PM -0500, Rob Herring a écrit :
> On Wed, May 7, 2025 at 3:22 PM Chris Morgan <macroalpha82@gmail.com> wrote:
> >
> > From: Chris Morgan <macromorgan@hotmail.com>
> >
> > I've spoken with Ryan and he agreed to let me take over this series to
> > get the display engine working on the Allwinner H616. I've taken his
> > previous patch series for Display Engine 3.3 and combined it with the
> > LCD controller patch series. I've also fixed a few additional bugs and
> > made some changes to the device tree bindings.
> >
> > Changes since V8:
> >  - Combined the DE33 [1] series and the LCD [2] series to better track
> >    all patches necessary to output to an LCD display for the Allwinner
> >    H700.
> >  - Added a required LVDS reset as requested here [3].
> >  - Added compatible strings with a fallback for
> >    allwinner,sun50i-h616-display-engine, allwinner,sun50i-h616-tcon-top,
> >    and allwinner,sun50i-h616-sram-c.
> >  - Added binding documentation for the LCD controller.
> >  - Renamed the de3_sram device tree node to de33_sram.
> >  - Corrected the LVDS reset for the LCD controller binding.
> >  - Removed the PWM pins from the pincontroller bindings, as PWM is not
> >    yet supported.
> >  - Reordered the patches so that a binding or a device tree node is not
> >    referenced before it is defined.
> >
> > [1] https://lore.kernel.org/linux-sunxi/20250310092345.31708-1-ryan@testtoast.com/
> > [2] https://lore.kernel.org/linux-sunxi/20250216092827.15444-1-ryan@testtoast.com/
> > [3] https://lore.kernel.org/linux-sunxi/38669808.XM6RcZxFsP@jernej-laptop/
> >
> > Chris Morgan (24):
> >   dt-bindings: clock: sun50i-h616-ccu: Add LVDS reset
> >   clk: sunxi-ng: h616: Add LVDS reset for LCD TCON
> >   drm: sun4i: de2/de3: add mixer version enum
> >   drm: sun4i: de2/de3: refactor mixer initialisation
> >   drm: sun4i: de2/de3: add generic blender register reference function
> >   drm: sun4i: de2/de3: use generic register reference function for layer
> >     configuration
> >   dt-bindings: allwinner: add H616 DE33 bus binding
> >   dt-bindings: allwinner: add H616 DE33 clock binding
> >   dt-bindings: allwinner: add H616 DE33 mixer binding
> >   clk: sunxi-ng: ccu: add Display Engine 3.3 (DE33) support
> >   drm: sun4i: de33: vi_scaler: add Display Engine 3.3 (DE33) support
> >   drm: sun4i: de33: mixer: add Display Engine 3.3 (DE33) support
> >   drm: sun4i: de33: mixer: add mixer configuration for the H616
> >   dt-bindings: allwinner: Add TCON_TOP and TCON_LCD clock/reset defines
> >   dt-bindings: display: sun4i: Add compatible strings for H616 DE
> >   dt-bindings: display: sun4i: Add compatible strings for H616 TCON TOP
> >   dt-bindings: sram: sunxi-sram: Add H616 SRAM C compatible
> >   dt-bindings: display: Add R40 and H616 display engine compatibles
> >   drm/sun4i: tcon: Add support for R40 LCD
> >   arm64: dts: allwinner: h616: add display engine, bus and mixer nodes
> >   arm64: dts: allwinner: h616: Add TCON nodes to H616 DTSI
> >   arm64: dts: allwinner: h616: add LCD and LVDS pins
> >   arm64: dts: allwinner: rg35xx: Add GPIO backlight control
> >   arm64: dts: allwinner: rg35xx: Enable LCD output
> 
> What's the base for this series? It didn't apply for me (using b4).
> 
> Rob
> 

I tested it on top of linux-next next-20250508 and revert "arm64: dts: allwinner: h616: Add Mali GPU node"



