Return-Path: <devicetree+bounces-220853-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4407FB9B6B8
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 20:21:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BA8DE7B32B7
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 18:19:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3158F314A8F;
	Wed, 24 Sep 2025 18:16:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NQhFsz+z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AE57273FD
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 18:15:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758737761; cv=none; b=METm+kq1ROr/PucASVmBa01DliXhelj75FAHQgUPHCEXC+7J3LmpbCCTr+/xcQ4bw7faG71+rsHyEIKCX6W1QbMQ/SxGraPxp5yZNlcNPt2L0bM9yQazoqYnnMxrV0teaNWdU+x6NZz7gpuHQYhLYimbJYFo2THYxuCH4Q1QAz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758737761; c=relaxed/simple;
	bh=dfwfuFTY9iyOuR1o5RQ+QUlCADXgYX5kBy4tZYH5TOE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=r4X0r1GmFp5sei5SYK0QVevto5Mf5i4SAdCXQYqIA30ieXu+q9p4hxxGc8SQSRlyTWKt0y9LLKIbGPSpl5reOBt6JX+fipCTd7CK2GyOc0H4XFxpjosNCxB3mroGxpzNLDdYVj6dZzm7ICusxm5lFABUcmG6EGNzY4N8jvXTB8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NQhFsz+z; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-3324523dfb2so126174a91.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 11:15:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758737759; x=1759342559; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JcbuWi+Io8bnFro7IRwuS3doRGB03OgebBpyHP3b0As=;
        b=NQhFsz+zmXONPoJkBuGzyr5fN02Y8+BPQwSl8AIc+YCRgg+Lb9Wq6YZawPEtfxEOHB
         0esH6q4L7B5W33foqiIrw/DhE1hxs1piWDhqW7vH5FOUwLFaTIdZ60iQa7vHvThGIi0H
         AcmG1YS8ZN6vqYlAgqG+r3/ejxVtmGGjssIOh+1F4qp1xiAV/3WsTsN8N6kCHY/1qV/i
         DcnNlYt5EK5ljqsjtqFJ7n8JOsFZe5euDc+8lHa0PWdY6KAdtPdWpzx1/4lwMaTIRFLX
         5wXr5tGoP/bHiM5OSlNvgz2jOuSDAKxqajCeNPeZNkFOJVfDbegAZ0PmpdfquW2oGmaA
         fprA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758737759; x=1759342559;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JcbuWi+Io8bnFro7IRwuS3doRGB03OgebBpyHP3b0As=;
        b=MLoKF5B4HfA1KZmB8UzUMLgTBl+rGXGAL2o2bSTEQ1vW8EYfk4JogKMGBNMEeFt1d7
         NRWcU8qiG/e5AZP+Oqu5lZLAYz1iB7w7wm64CGSOnmMGbbsv1JGti/r6q+YLdfvDp9Vr
         TIGiM93jVsi0rw1evlNr4a0PSL8qCHfbaGbZpYeXPKMbk19yF6XsHIW7wrXhtPHPdRc8
         RriKOElOCVftrqhweohg9hfcJ5ouPmcLWVQ2m2fWUVcmi/+N4YdPu8VNmD8jmN3/IcWP
         31GTZ1Ktqn3jmpmEZuFvGHwR3pqzof3fyMJWWJMcQyGtRX81DELI367P58lAxOgKPg9W
         G1zQ==
X-Forwarded-Encrypted: i=1; AJvYcCUX23PwRSo16hf6HHJxzeQ8MsvaaBN5d3sQMJ9jwRfahkmIcrgQ4NsPAIYnEkrJIQBkOH//Wb5nR2/x@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3zQ9B3cjvMtfCy/ewIgbZ5CdJkXaKgToqIIpVdUdmBRgeliur
	MzRZgj+/Gy1yAifoF1qjB4j19YqlCuijpEx7vc9lO0h9bwnrDqLROePWHl/gaPcMf76tPiXFCRK
	n7gQSfDVbSr+ivw0jWq377pzFUKUpPsI=
X-Gm-Gg: ASbGncvApch4XrM/NcB7QpYXmyTFN2Fz3M2y/YyD0lCZMQODi5P3wzkgAh2tmbiWjtK
	+S4alwDRpncQ6gmGSOacm9g3PAjxqksu+ArOE3daBNTCzNDih+x7Zmss5q8VnWZVsvDuR37QPct
	heoxf1Y8aMSLgYYF+eq3H1nA/G+j5ogy4dRY6+X9vS0uoN5lry4f8tAxCJovD5aP+9yP+rEwGPW
	xyYIw==
X-Google-Smtp-Source: AGHT+IHrp5tqgdua1ITAPTFT5OarXplhOLiXY7sra+HIubTWu73xvhsas1hF0kW3xyrfI+mCZzmHvrcV1fNmRv3INHM=
X-Received: by 2002:a17:90b:2786:b0:327:e59d:2cc2 with SMTP id
 98e67ed59e1d1-3342a24776cmr760319a91.10.1758737758707; Wed, 24 Sep 2025
 11:15:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250921083446.790374-1-uwu@icenowy.me> <20250921083446.790374-3-uwu@icenowy.me>
 <20250922204349.GA1290045-robh@kernel.org> <1ac8c72206abf9f3e0a13e1fcf44be5c605f6372.camel@icenowy.me>
 <36040a0a40311cb1e871075f0c5ad175342ed5db.camel@icenowy.me>
In-Reply-To: <36040a0a40311cb1e871075f0c5ad175342ed5db.camel@icenowy.me>
From: Christian Gmeiner <christian.gmeiner@gmail.com>
Date: Wed, 24 Sep 2025 20:15:46 +0200
X-Gm-Features: AS18NWCvbmWm8Uh8k0eTkgon1YhYqcVgJtn1frt8RyZne-mAquU2_sGmtRcjlzM
Message-ID: <CAH9NwWdx-Ut35RvhmNsdQbC4vfm3rH1VPN7H2uDBRsmsFjZU_Q@mail.gmail.com>
Subject: Re: [PATCH v2 2/8] dt-bindings: display: add verisilicon,dc
To: Icenowy Zheng <uwu@icenowy.me>
Cc: Rob Herring <robh@kernel.org>, Lucas Stach <l.stach@pengutronix.de>, 
	Russell King <linux+etnaviv@armlinux.org.uk>, 
	moderated for non-subscribers <etnaviv@lists.freedesktop.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Drew Fustini <fustini@kernel.org>, Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Michal Wilczynski <m.wilczynski@samsung.com>, Han Gao <rabenda.cn@gmail.com>, 
	Yao Zi <ziyao@disroot.org>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

> > > > Verisilicon has a series of display controllers prefixed with DC
> > > > and
> > > > with self-identification facility like their GC series GPUs.
> > > >
> > > > Add a device tree binding for it.
> > > >
> > > > Depends on the specific DC model, it can have either one or two
> > > > display
> > > > outputs, and each display output could be set to DPI signal or
> > > > "DP"
> > > > signal (which seems to be some plain parallel bus to HDMI
> > > > controllers).
> > > >
> > > > Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> > > > ---
> > > > Changes in v2:
> > > > - Fixed misspelt "versilicon" in title.
> > > > - Moved minItems in clock properties to be earlier than items.
> > > > - Re-aligned multi-line clocks and resets in example.
> > > >
> > > >  .../bindings/display/verisilicon,dc.yaml      | 127
> > > > ++++++++++++++++++
> > > >  1 file changed, 127 insertions(+)
> > > >  create mode 100644
> > > > Documentation/devicetree/bindings/display/verisilicon,dc.yaml
> > > >
> > > > diff --git
> > > > a/Documentation/devicetree/bindings/display/verisilicon,dc.yaml
> > > > b/Documentation/devicetree/bindings/display/verisilicon,dc.yaml
> > > > new file mode 100644
> > > > index 0000000000000..07fedc4c7cc13
> > > > --- /dev/null
> > > > +++
> > > > b/Documentation/devicetree/bindings/display/verisilicon,dc.yaml
> > > > @@ -0,0 +1,127 @@
> > > > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > > > +%YAML 1.2
> > > > +---
> > > > +$id: http://devicetree.org/schemas/display/verisilicon,dc.yaml#
> > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > +
> > > > +title: Verisilicon DC-series display controllers
> > > > +
> > > > +maintainers:
> > > > +  - Icenowy Zheng <uwu@icenowy.me>
> > > > +
> > > > +properties:
> > > > +  $nodename:
> > > > +    pattern: "^display@[0-9a-f]+$"
> > > > +
> > > > +  compatible:
> > > > +    const: verisilicon,dc
> > >
> > > This needs an SoC specific compatible. Generally licensed IP
> > > compatibles
> > > are useless because the specs aren't public and there's always
> > > integration quirks.
> >
> > This mimics the GPU IPs by the same vendor, see gpu/vivante,gc.yaml ,
> > which contain the exact same set of identification registers
> > (including
> > a "customer id" one that can differienate the same configured IP on
> > StarFive JH7110 and T-Head TH1520).
> >
> > If we can get vivante,gc to work w/o SoC specific compatible, then we
> > should be able to get verisilicon,dc to work too.
>
> Well maybe I should add etnaviv people to the recipient list, to allow
> them to tell us the magic behind vivante,gc .
>

Vivante GPUs are special because they contain registers that allow them to
be fully identified - see etnaviv_hw_identify(..).

We can read out the following information:
 - model
 - revision
 - product_id
 - customer_id
 - eco_id

This information, in combination with a hardware database (hwdb) in
kernel/userspace, is enough to support these GPUs/NPUs across
different SoC vendors.

-- 
greets
--
Christian Gmeiner, MSc

https://christian-gmeiner.info/privacypolicy

