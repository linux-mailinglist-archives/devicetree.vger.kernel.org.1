Return-Path: <devicetree+bounces-175224-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 401B2AB02BB
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 20:30:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 64BFE1B6774B
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 18:30:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6157F284677;
	Thu,  8 May 2025 18:30:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b="YXn2BWwm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C129214211
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 18:29:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746729000; cv=none; b=KYSNk7aez7B0QcwHCB4B52oHXcYFBnhgkcpKEtyJTgZbJ4vALUaEe1TL7Hi7L26YANXTgRgdd4jnKm7jXbjE7or7oU2xrglul1ll4/tiaBtW5Qn0kC/dvqxkHFPlRQK1QtXrJeE7bAbsTqGBR2GgB+meYcJr68Wu/0uCA+Muufo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746729000; c=relaxed/simple;
	bh=kyb04malG+RwKZmlL7WK3dUsz2SulfWs8ytrGBGsmbc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dJ++oDyr2GmdlC9qMjELjsur5DAGO+nL2Fbheyph8hRsXh08WfflGwa19ouQG2vAO8tm3ChDPu9MXv/He09UaKVtnIjmGWpL4wNVnTmvgBtUaUYT1supa+Hyxu0ZBuTp80fIMA7flfCLtlgwgsiKRNVbzOPVFao70jUPMohoY6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com; spf=none smtp.mailfrom=pdp7.com; dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b=YXn2BWwm; arc=none smtp.client-ip=209.85.160.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=pdp7.com
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-2cc57330163so1093236fac.2
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 11:29:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pdp7-com.20230601.gappssmtp.com; s=20230601; t=1746728997; x=1747333797; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=T3GC3nd2QY3ZXudwqT4kCMNlEBnSWQ4/Y+mWvsZzVRU=;
        b=YXn2BWwm1FyC32RGeNnMGIKa/921AJJiM16Fd7qld09tVH4XjgXKvv67aI6c3ssrsv
         /31uhUXUUiV2anCxghJAq9iBBK2NcQsCdslvnx/bE1LzFQRXdFQ5Ze62tSsvuE5tRRq2
         wzVJ4ZgfL6OJyfA3/gSLofebQr7ZxuWm2zzafBv3spKKUW9Pbc5zDN6zYNdeCeerXr8i
         R1kTApmN8S+0etFBeZ5/VuVSEPCoKH/K2RtALhGwrFOWnaWm+Wsc4gzr6WKqysu0ZSW3
         NME26KvHcaxJNT+SW5xHQxuJBuFIS2ZusRiLxMW6OrMOIhJloeAqIt0jP4V6eM+W6VIN
         Pu6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746728997; x=1747333797;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=T3GC3nd2QY3ZXudwqT4kCMNlEBnSWQ4/Y+mWvsZzVRU=;
        b=X0e/NenvENMzzKuRVGsd+7Y0K0AX0/Nk7evav9OSGHzT5ubL//1j6ImMmojzJ6oLah
         XInN0S7DTiNdfE9jc9yEoHUOKBVBrps6UECdxdiJWQNMyZuNA2vBIUc0jwP3Q+kQ9uC1
         T62tuPR0g4upy69XOdmzzXPjGgKU+jEVzPmLl0bWH6Ca2yE0kTjlV0o7KDD2iHIlIqSi
         30lKT3ebAJQHMUBUXuwYqEt/KdrOy6fygXcGGbRR2gBITbczx9Bh/+l30CBPF/q7dEb5
         MNO61iAcFy3PnMzMoefXZp1j1hlOtc69cfLD8L02d16M0C2cd2y8GysdwIxWOcUoiawc
         RNpw==
X-Forwarded-Encrypted: i=1; AJvYcCU2GWHCxhE6V0/qm//skamxTipDsqMLtav4SVtAWPaa0NmYkyFjx+7RlVl0960Gd7Vs9KsdSPysELjz@vger.kernel.org
X-Gm-Message-State: AOJu0YwXpA0+BekeIVtvrA/yCJl+tKG6hujF+GwSIJ2R4xEnhYZ/zfHm
	VqlzRvfNnAlpj1IpTSLVuk/jrGChlbwl5NTCKKhYluYDW9cXa69TNg89aYFiizMX9ga6ECw/Lq/
	q
X-Gm-Gg: ASbGncuLfxuGZtW3wDfxgel8A+0HxNra2IwzAMtLv7ayJhwTbWVC3+i8qgeKg2zkXTO
	xTOseLk377o0ACRQRiGUANJlNoAtMRnU8iYYwImpdanT6TuLdJFt1dyQC1jqJzWEFc1sB9yVfBX
	vfB5wchAFyYJb9F9UBh92Y3NrGfE8l9jb+ak7Qi/zgVWAuTtY0lf+QIhBWE5MsBM5wtQ+F4AkIW
	Ox4MbZUUcUMqTLb1qoZEWAE+ePUTo/w7YpxNuGo34+x3BaGRfJyWGBs/yslpuxIIlhoMmZDd4Vk
	cpGOcIfUs2qLjGWq1CzCum6lnzBw7SKVYpDLu6713SO5F3Y=
X-Google-Smtp-Source: AGHT+IEsxgb6xpj/TfNH2Jats/rW7/6lQIZRnNAaVkD3rlO2gB/eCZLowl4BgQ20sS07u8Lsi9VRPA==
X-Received: by 2002:a17:902:cf06:b0:223:517c:bfa1 with SMTP id d9443c01a7336-22fc9185e59mr5399955ad.38.1746728636019;
        Thu, 08 May 2025 11:23:56 -0700 (PDT)
Received: from x1 (97-120-122-6.ptld.qwest.net. [97.120.122.6])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22fc828b37asm2411005ad.187.2025.05.08.11.23.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 May 2025 11:23:55 -0700 (PDT)
Date: Thu, 8 May 2025 11:23:53 -0700
From: Drew Fustini <drew@pdp7.com>
To: Michal Wilczynski <m.wilczynski@samsung.com>
Cc: Stephen Boyd <sboyd@kernel.org>, mturquette@baylibre.com,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	guoren@kernel.org, wefu@redhat.com, paul.walmsley@sifive.com,
	palmer@dabbelt.com, aou@eecs.berkeley.edu, alex@ghiti.fr,
	jszhang@kernel.org, p.zabel@pengutronix.de,
	m.szyprowski@samsung.com, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH v7 3/3] riscv: dts: thead: Add device tree VO clock
 controller
Message-ID: <aBz2uePXAtY6c6jD@x1>
References: <20250403094425.876981-1-m.wilczynski@samsung.com>
 <CGME20250403094433eucas1p2da03e00ef674c1f5aa8d41f2a7371319@eucas1p2.samsung.com>
 <20250403094425.876981-4-m.wilczynski@samsung.com>
 <Z/BoQIXKEhL3/q50@x1>
 <17d69810-9d1c-4dd9-bf8a-408196668d7b@samsung.com>
 <9ce45e7c1769a25ea1abfaeac9aefcfb@kernel.org>
 <475c9a27-e1e8-4245-9ca0-74c9ed663920@samsung.com>
 <c46de621e098b7873a00c1af4ca550a1@kernel.org>
 <91ecca14-2102-4c29-9252-025ce6b6a07f@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <91ecca14-2102-4c29-9252-025ce6b6a07f@samsung.com>

On Wed, May 07, 2025 at 12:04:01PM +0200, Michal Wilczynski wrote:
> 
> 
> On 5/6/25 23:30, Stephen Boyd wrote:
> > Quoting Michal Wilczynski (2025-04-30 00:52:29)
> >>
> >> In the v2 version of the patchset, there was no reset controller yet, so
> >> I thought your comment was made referring to that earlier version.
> >> This representation clearly describes the hardware correctly, which is
> >> the requirement for the Device Tree.
> >>
> >> The manual, in section 5.4.1.6 VO_SUBSYS, describes the reset registers
> >> starting at 0xFF_EF52_8000:
> >>
> >> GPU_RST_CFG             0x00
> >> DPU_RST_CFG             0x04
> >> MIPI_DSI0_RST_CFG       0x8
> >> MIPI_DSI1_RST_CFG       0xc
> >> HDMI_RST_CFG            0x14
> >> AXI4_VO_DW_AXI          0x18
> >> X2H_X4_VOSYS_DW_AXI_X2H 0x20
> >>
> >> And the clock registers for VO_SUBSYS, manual section 4.4.1.6 start at offset 0x50:
> >> VOSYS_CLK_GATE          0x50
> >> VOSYS_CLK_GATE1         0x54
> >> VOSYS_DPU_CCLK_CFG0     0x64
> >> TEST_CLK_FREQ_STAT      0xc4
> >> TEST_CLK_CFG            0xc8
> >>
> >> So I considered this back then and thought it was appropriate to divide
> >> it into two nodes, as the reset node wasn't being considered at that
> >> time.
> >>
> >> When looking for the reference [1], I didn't notice if you corrected
> >> yourself later, but I do remember considering the single-node approach
> >> at the time.
> >>
> > 
> > If the two register ranges don't overlap then this is probably OK. I
> > imagine this is one device shipped by the hardware engineer, VO_SUBSYS,
> > which happens to be a clock and reset controller. This is quite common,
> > and we usually have one node with both #clock-cells and #reset-cells in
> > it. Then we use the auxiliary bus to create the reset device from the
> > clk driver with the same node. This helps match the device in the
> > datasheet to the node and compatible in DT without making the compatible
> > provider specific (clk or reset postfix).
> > 
> > That's another reason why we usually have one node. DT doesn't describe
> > software, i.e. the split between clk and reset frameworks may not exist
> > in other operating systems. We don't want to put the software design
> > decisions into the DT.
> > 
> > It may also be that a device like this consumes shared power resources
> > like clks or regulators that need to be enabled to drive the device, or
> > an IOMMU is used to translate the register mappings. We wouldn't want to
> > split the device in DT in that case so we can easily manage the power
> > resources or memory mappings for the device.
> > 
> > TL;DR: This is probably OK, but I'd be careful to not make it a thing.
> 
> Thank you very much for the comprehensive explanation. Because the
> registers don’t overlap, it’s fine in this case. Since Drew also seem to
> agree, we can probably push these patches forward, while keeping in mind
> that for future SoCs it would be better to use a single node.

Yes, I think in this instance it makes sense to go ahead. I sent a pull
request [1] to Stephen for my thead clk for-next tree with this series
applied.

Thanks,
Drew

[1] https://lore.kernel.org/all/aBus+Yc7kf%2FH2HE5@x1/

