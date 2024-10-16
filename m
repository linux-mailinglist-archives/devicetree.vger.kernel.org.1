Return-Path: <devicetree+bounces-112116-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5354B9A113C
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 20:08:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CDBD11F2717F
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 18:08:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B2A9210195;
	Wed, 16 Oct 2024 18:08:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="WS1yf97p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDCF620C493
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 18:08:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729102092; cv=none; b=AXxV3XFzfOV5GP2z2oIzlRNU4kAGJ8det2hD9TAwzIRYFyo09//KHsDeA4a8zFH4r3G3G6HPQFiRHuH0X+7liK8bOSjcfqPFOvYCgAwn2kgMNrsumxuKJR+Mi7Br5FsdsnmcNwERgv3NpX0MPQt474r7wCiRXiCwdRCVhxqiPBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729102092; c=relaxed/simple;
	bh=uc/Y4bZmRuHb/CI+f7vhlsxz3SmdwdaHRBs+BAXIP+c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=S7Rmq+V3zm3j/Xb6y7aeLWdzmTcaiiQy+LcTTDN5Cc5rWJz0LN/81MtCdkWeMTeTUzgugtRT4o8J/VUgUUotobMbgZ7WAU89KnjUoD0p55xD4yKD7ForcmsGa6AqcYnqQn94d2wS4YYuc2NN4+/JIDkdSmLVnBqq8kmk5HtsHlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=WS1yf97p; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-20c693b68f5so1094555ad.1
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 11:08:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1729102090; x=1729706890; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6Do5NZzoXtrPkRCkHPB7RbxDjXCyCXzT+J3lpLdQhsU=;
        b=WS1yf97p5Q+o9w/K11zrBdp0jgx0wm/C/H/vdCsm8plaYFDk0j8jgLatirTdGIm1HC
         wGVB8RfR8o0xyzOo6kBWelmTTsME/3ToAOVpnVe/EY1CvIosj4i5VEL0QqMWrDJtCL38
         BOW2DaNqodRO9OwZzL7nolkAsY6KRLV1pw4ncu7az1RBg/oR4p9liPx3BNVwUG6MJacY
         EQAYifMfD8wL7PcLj4JeAEjM5raN3o5yBEr36+8b89ErGl1B/PhnH5C+xB2XT9GWLKdu
         iEmxU5LbaZcWT3rTr/29WACXJ3oxIsbaXZYb7D18tXFW9kOlzkvagwqOdcBtCw9zVJLz
         wtQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729102090; x=1729706890;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6Do5NZzoXtrPkRCkHPB7RbxDjXCyCXzT+J3lpLdQhsU=;
        b=j+QsB8DtrggML1y1S7vSfJFiwJECcsh8rrqINYIqElK1fFBkDdhsqedxgryXiJPAH+
         wJL3IgJWH3Qd4GzyLt6CrZyT+4FtzrUQlF9ikmm6FklK3187PjI55rfCJyF16ictKztK
         2yACEytaaDCap+u1Y3Yvtw30jPsR7RKSHckGXHOtarhLtxao0yVwa+BvVe+/80Aicwie
         qvfBi3Aqi2L5j9NrOc0/AEOaB5aOVKM/7yroMJoswX2oGnOrvaErn06w+OYgJ+5XNa6N
         lQKEHFqpajSPgqWqfr16kpdNS4/YjDV6JwB5Gf2JjDrBzL1WqOZC/HvOyn3V0kjdddav
         s4ow==
X-Forwarded-Encrypted: i=1; AJvYcCUpmdr+PN9uEePPh0WFMU10JUceXLcW2a1aoz+DIYWfe2D6K2BEetmfwLq4KQ/9GZ1DQEYWr+/N/y9j@vger.kernel.org
X-Gm-Message-State: AOJu0YxLbzk8xba6XEJBr7iw3SOOvb3O8a7U9IvHuGHQ45wkDgQ+hwW0
	F/zFPW/XZFel27qHi1JknGvaixuTDzg/xAc5Ct5TATpaF6KCF5m2OPx4iKW1/mA=
X-Google-Smtp-Source: AGHT+IHk7EqhzNNVg4OZzagkiI9u/M85Rdln26E/pLQmb1Zz13C4O48RJDEyeV5O9x9KbH9fTQkQcg==
X-Received: by 2002:a17:903:41c5:b0:20c:c482:1d66 with SMTP id d9443c01a7336-20cc4821f85mr213342205ad.35.1729102090025;
        Wed, 16 Oct 2024 11:08:10 -0700 (PDT)
Received: from x1 (71-34-69-82.ptld.qwest.net. [71.34.69.82])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20d18036714sm31306885ad.152.2024.10.16.11.08.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2024 11:08:09 -0700 (PDT)
Date: Wed, 16 Oct 2024 11:08:08 -0700
From: Drew Fustini <dfustini@tenstorrent.com>
To: Michal Wilczynski <m.wilczynski@samsung.com>
Cc: drew@pdp7.com, guoren@kernel.org, wefu@redhat.com,
	jassisinghbrar@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com,
	aou@eecs.berkeley.edu, m.szyprowski@samsung.com,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v4 0/3] Introduce support for T-head TH1520 Mailbox
Message-ID: <ZxABCCJcoTmxiRXB@x1>
References: <CGME20241014123409eucas1p2a3a3f085c0630073326ca299a870f3ee@eucas1p2.samsung.com>
 <20241014123314.1231517-1-m.wilczynski@samsung.com>
 <Zw1jdl64f5l8N+Km@x1>
 <431e98cd-6c53-4478-86a6-e532be4ed58e@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <431e98cd-6c53-4478-86a6-e532be4ed58e@samsung.com>

On Wed, Oct 16, 2024 at 12:03:05AM +0200, Michal Wilczynski wrote:
> 
> 
> On 10/14/24 20:31, Drew Fustini wrote:
> > On Mon, Oct 14, 2024 at 02:33:11PM +0200, Michal Wilczynski wrote:
> >> The T-head TH1520 SoC supports a hardware mailbox that enables two cores
> >> within the SoC to communicate and coordinate [1]. One example of such
> >> coordination would be cooperation with the T-Head E902 core, which is
> >> responsible for power, clock, and resource management. For example, in
> >> the specific case of the BXM-4-64 GPU, it needs to be powered on by the
> >> E902 core, and the kernel running on the E910 needs to 'ask' the
> >> firmware running on the E902 core to enable power to the GPU island.
> >> Given recent advancements in work on the upstream GPU driver [2], there
> >> is an emerging need to get this code in the mainline kernel.
> >>
> >> Link: https://protect2.fireeye.com/v1/url?k=2021d256-7fbdfb7c-20205919-000babe598f7-ca654d1a9bc866ac&q=1&e=11e97355-e6e9-4aac-a996-cc475156b3c8&u=https%3A%2F%2Fopenbeagle.org%2Fbeaglev-ahead%2Fbeaglev-ahead%2F-%2Fblob%2Fmain%2Fdocs%2FTH1520%2520System%2520User%2520Manual.pdf [1]
> >> Link: https://gitlab.freedesktop.org/imagination/linux-firmware/-/issues/1 [2]
> >>
> >> Thanks, Krzysztof and Rob, for your review! Since this series is gaining
> >> some interest, I've dropped the RFC prefix with the v3 update.
> > 
> > I've applied this series and booted okay. I see the driver loaded:
> > 
> >  /sys/devices/platform/soc/ffffc38000.mailbox/driver points to
> >  /sys/bus/platform/drivers/th1520-mbox
> > 
> > How do you test that the communication with the E902 is working
> > correctly?
> 
> Thank you for your interest. To test this, I've prepared a diff that
> includes the missing drivers utilizing the mailbox and enabled the GPU
> node in the device tree to use the drm/imagination driver.
> 
> I've observed that when the power was turned off through the E902 core
> using the mailbox, the drm/imagination driver would hang in
> pvr_load_gpu_id() while attempting to read its BVNC from the register.
> However, when the GPU was turned on via the mailbox, the BVNC could be
> read correctly. Still, the firmware fails to boot due to some missing
> programming in the drm/imagination driver, which is currently being
> worked on. I've briefly explained this in the first commit of this
> series.
> 
> If you'd like to try this yourself, I'd be happy to push these setups to
> a GitHub repository and provide you with a link, so you can see the
> setup in action.

I think that would be helpful for myself and others to be able to see
the interaction.

Thanks,
Drew

