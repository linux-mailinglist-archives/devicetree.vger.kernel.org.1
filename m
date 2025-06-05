Return-Path: <devicetree+bounces-183005-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F57FACED2B
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 11:58:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 31D92176D70
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 09:58:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95764211A28;
	Thu,  5 Jun 2025 09:58:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OXQAPvZN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4C3C20B218
	for <devicetree@vger.kernel.org>; Thu,  5 Jun 2025 09:58:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749117510; cv=none; b=i5azWeoI7j2gjRU0T6gYuMTu+JX+vTITTeLKZTszPlHf3ZgjLzfkAlsmBX/OGWqZWtM5Fhc0+pa7nZAZz6EPdmyH72BHZyim65PWGpu7q4XtFW8RbwP6cf+5LmWkKJEK/9S+bad8IOInhaSWFALmk+Q4JTyAdQN+4XfDVKVA23I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749117510; c=relaxed/simple;
	bh=o3b2DG8B4UyXxdQJRJfS1yqgkhfWuARiXi72szudhWU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gKBAoUWUntL7AU2sn2UcUoVps9SbcrQATqqxt2pxeiAI/5GkPoietaHftehaY/MR4LlzVu8EmTITTXBBrfjxazpWYA7OOqHTgfjHAAwbSTcsWjsCfCwpHN/6L2cML2WLMkMVfeDJ8IgJkt5ve42YsgQq6jXC3kntLRgrwSrywTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OXQAPvZN; arc=none smtp.client-ip=209.85.219.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-e7dc3df7ac3so749092276.3
        for <devicetree@vger.kernel.org>; Thu, 05 Jun 2025 02:58:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749117507; x=1749722307; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4zPdTQVDPRTSNl8wo5w6MeNmYmfyR+yoWh8tW6/DZaY=;
        b=OXQAPvZN87sHZi8gqnbDYGQQZz24UuqR7c4C9a8AGpZ9C2nZKrsYg4kkCN7CgyZq2s
         HQTdGRv1uz+8KA9K/jo6kn/Z4fWQLVy7ZfUs7bJvrmiK5LE+Hvcd8aNHxLC5JL9SncUw
         cm6gGw0bnk1nRdTIOeXtW2SFcW8kPXyc9UO7RqnHXBBVqr2xKTFfMF2eIFiDwxcVjRAM
         /KThvg6uHDgEM++NPSMjVjk8qRU37lriULuE/E8iI3u41WzpPgXYOXIAB5fZtXz2wp4O
         5oLl2RqDNcirSP6OPfnjM6x6Gu3Hzcd2IZ/Gw1RmMbEVYYjR8rhAXYfgX+0JhsEH/cve
         wPaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749117507; x=1749722307;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4zPdTQVDPRTSNl8wo5w6MeNmYmfyR+yoWh8tW6/DZaY=;
        b=FdN7noVBhyHau4KQz3njWitiUtcgHl8VsUD+GN4fRTRJQo9ccVYcYWHoreGYHOrFqf
         W6+0iON7/d3Wbv0jyIv56ybPA4xMmOcQh7IL4shSK3nvUgFVptXoq63caOOfOTQ6G32f
         l/Sj9zFHjxS+uiPW9j8pPpF8im9NGZBXfWyHBnJ210XHz/5Y5GUP82vQmmnC1nPYPCMM
         w4qJgGCkBioCY1qUal5k4KaSMQuW41ta5en2crMoc94bLKFj1A093WUsgWzrAEwlMPMB
         8Q5L0sqIoSi/H+kdprmQpXbvzi3HzfTUXS5nWl+xEK6DdxSuutBLaewbBPqngtbvQ8bu
         Uc3Q==
X-Forwarded-Encrypted: i=1; AJvYcCUuACUbJFYNpX4ULUyWbs9R3uswrVv0t/Q4wYVSzo4Z5RVRmLCYwdXLJ0RY6QmNjVeivjitfKngtApR@vger.kernel.org
X-Gm-Message-State: AOJu0Yxr1ulOXAxsam0v9l9mDCQ862Xei/Pf7ix0s/hhD8SVKKMZW7cu
	CTrCaeUD8KKBbnl+om+WQM1cxQr1oleOScUgEX83rqiwEvITwBhdojP5jeZ/ycc5nsK3kePwIbf
	jTDftvweeEG2S3Tpc3oLX3dzWHT8u5wk4nmPXiYtKQA==
X-Gm-Gg: ASbGncuUSQHN8iZsGvnh+lIDDLO0WRYusXYP86TVJ/3kmsiQ3LTyaGgtoCQxGGCWtkE
	geX9EFDeE49YTScQTcaDHTgg+sbExWFPMYFIAiUcXKft4a7mCczXupG9INNzphhRDIFHKF33k39
	AOq9AprKNYsCjgn9nttZI5fgmUOR3gKHTFVA==
X-Google-Smtp-Source: AGHT+IEs9z2qDMjfH7cC75fVmmSjHZHDht5i6D5bKkcjTo5PY949JkkRdQafZEhuxNNXbWaU8JI1NrPxlkNCttr89yg=
X-Received: by 2002:a05:6902:1006:b0:e81:89b9:f7fb with SMTP id
 3f1490d57ef6-e8189b9fd46mr2688470276.20.1749117507589; Thu, 05 Jun 2025
 02:58:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CGME20250529222410eucas1p2e1d41a2fc717caef1aed51367a7db944@eucas1p2.samsung.com>
 <20250530-apr_14_for_sending-v3-0-83d5744d997c@samsung.com>
 <20250530-apr_14_for_sending-v3-7-83d5744d997c@samsung.com>
 <CAPDyKFpYfZNthdRN=pCv4FEdFCzrKEH4aFBy4ew-xLKtpbJ5Tg@mail.gmail.com> <e39c6748-59aa-4c4a-98f3-263751a120c1@imgtec.com>
In-Reply-To: <e39c6748-59aa-4c4a-98f3-263751a120c1@imgtec.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 5 Jun 2025 11:57:51 +0200
X-Gm-Features: AX0GCFs9t2KTNaikDlvnZamDB-7XXtdndYPeCom5IA-jJ40VSGgqWKBlwED7Z-4
Message-ID: <CAPDyKFrxqp30RWGoudVsy2NR7dSUoKwxc=nk3Bqp9RVZGZ6_vQ@mail.gmail.com>
Subject: Re: [PATCH v3 7/8] riscv: dts: thead: th1520: Add IMG BXM-4-64 GPU node
To: Matt Coster <Matt.Coster@imgtec.com>
Cc: Michal Wilczynski <m.wilczynski@samsung.com>, Drew Fustini <drew@pdp7.com>, Guo Ren <guoren@kernel.org>, 
	Fu Wei <wefu@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Frank Binns <Frank.Binns@imgtec.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, 
	"linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>, 
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"

On Wed, 4 Jun 2025 at 18:48, Matt Coster <Matt.Coster@imgtec.com> wrote:
>
> On 03/06/2025 13:27, Ulf Hansson wrote:
> > On Fri, 30 May 2025 at 00:24, Michal Wilczynski
> > <m.wilczynski@samsung.com> wrote:
> >>
> >> Add a device tree node for the IMG BXM-4-64 GPU present in the T-HEAD
> >> TH1520 SoC used by the Lichee Pi 4A board. This node enables support for
> >> the GPU using the drm/imagination driver.
> >>
> >> By adding this node, the kernel can recognize and initialize the GPU,
> >> providing graphics acceleration capabilities on the Lichee Pi 4A and
> >> other boards based on the TH1520 SoC.
> >>
> >> Add fixed clock gpu_mem_clk, as the MEM clock on the T-HEAD SoC can't be
> >> controlled programatically.
> >>
> >> Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
> >> ---
> >>  arch/riscv/boot/dts/thead/th1520.dtsi | 22 ++++++++++++++++++++++
> >>  1 file changed, 22 insertions(+)
> >>
> >> diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
> >> index 6170eec79e919b606a2046ac8f52db07e47ef441..ee937bbdb7c08439a70306f035b1cc82ddb4bae2 100644
> >> --- a/arch/riscv/boot/dts/thead/th1520.dtsi
> >> +++ b/arch/riscv/boot/dts/thead/th1520.dtsi
> >> @@ -225,6 +225,13 @@ aonsys_clk: clock-73728000 {
> >>                 #clock-cells = <0>;
> >>         };
> >>
> >> +       gpu_mem_clk: mem-clk {
> >> +               compatible = "fixed-clock";
> >> +               clock-frequency = <0>;
> >> +               clock-output-names = "gpu_mem_clk";
> >> +               #clock-cells = <0>;
> >> +       };
> >> +
> >>         stmmac_axi_config: stmmac-axi-config {
> >>                 snps,wr_osr_lmt = <15>;
> >>                 snps,rd_osr_lmt = <15>;
> >> @@ -504,6 +511,21 @@ clk: clock-controller@ffef010000 {
> >>                         #clock-cells = <1>;
> >>                 };
> >>
> >> +               gpu: gpu@ffef400000 {
> >> +                       compatible = "thead,th1520-gpu", "img,img-bxm-4-64",
> >> +                                    "img,img-rogue";
> >> +                       reg = <0xff 0xef400000 0x0 0x100000>;
> >> +                       interrupt-parent = <&plic>;
> >> +                       interrupts = <102 IRQ_TYPE_LEVEL_HIGH>;
> >> +                       clocks = <&clk_vo CLK_GPU_CORE>,
> >> +                                <&gpu_mem_clk>,
> >> +                                <&clk_vo CLK_GPU_CFG_ACLK>;
> >> +                       clock-names = "core", "mem", "sys";
> >> +                       power-domains = <&aon TH1520_GPU_PD>;
> >> +                       power-domain-names = "a";
> >
> > If the power-domain-names are really needed, please pick a
> > useful/descriptive name.
>
> This isn't the first time our unfortunate power domain names have come
> up [1][2]. Sadly, we're stuck with them for Rogue.

Wow, that's really crazy.

BTW, are there any reasons why you can't rely on attaching them by
index instead, via dev_pm_domain_attach_by_id() for example? Thus
entirely drop the names in the DT docs?

It sounds like the names don't really have a meaning, or do they?

>
> Matt
>
> [1]: https://lore.kernel.org/r/ff4e96e4-ebc2-4c50-9715-82ba3d7b8612@imgtec.com/
> [2]: https://lore.kernel.org/r/cc6a19b3-ba35-465c-9fa6-a764df7c01c1@imgtec.com/
>
> >

[...]

Kind regards
Uffe

