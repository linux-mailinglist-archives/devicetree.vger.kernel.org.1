Return-Path: <devicetree+bounces-182765-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FEBBACDFB1
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 15:58:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CCAC418932DA
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 13:58:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE8112900B5;
	Wed,  4 Jun 2025 13:58:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NRoq57/T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D949542A87
	for <devicetree@vger.kernel.org>; Wed,  4 Jun 2025 13:58:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749045488; cv=none; b=YNcgD7eYe6YUNjITpFWWc3WjhJS5ozEnnAft94XXQ4KAMMJTZhYPI7w869KIPtlH+oL53Y68S/hKHoH3Qxn2ir/EvoBTaihC88ZjBJsc5P/cHLg6hpUR1Mc+1CUX7VeMoTlF7QbnBPor3hx26lZHf5B4lhuH2JkvEESiZTrnAXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749045488; c=relaxed/simple;
	bh=zRFxwlOuzhqwZx7qzxl80h5Bo/0p7oc7WIbfN8Qjlw4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ox3DPjRdcv4oFUVOBjTCJdmbpEwLsKi1i1MdWrq6iCF9Xa3MSPdBEuIfGaaz+9b83XJQX1HVdqKoKl5iQRXZnfhcy+VW334aXHl5wolXGSwD4VCRyn1QN4uUVGj2k0u3PlXcs62gsw5PpRrfluPz9tlvNKlxWRRTXhzsuOKx1/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NRoq57/T; arc=none smtp.client-ip=209.85.219.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-e812c817de0so3996606276.0
        for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 06:58:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749045485; x=1749650285; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=IFWXnsIMSq1bn0DUFYmY7z6V87/rRA1du54TZxFaV2Y=;
        b=NRoq57/TUbyB7bb5VxHVyq24yoAGAr1hQ99CQFtbu6trcUZRoVYF23HAk6hj45wG3D
         xLe1YFmQwsOHaa9BMDXe14VjCzh96PvvR5MUJNO+l+6aOU9AEcCfRV2eQXWBsinrtB8e
         kA7MBL8cGEHkE2KlegjBelu5eMfxydvNaMguOW2laDNBFcNSQkSll6Nkz7IEey4Guwd4
         e7qStXO29JO3J6kXMPCMFiM0TYqmMgOpi4u+EEWdWhHwSKZ+J4Mg4WdzGWZyTRTfZQ6f
         rs2D2tVO5bqTuHr7m4Q8BaMd++fXkMlFMTwk1Z5gYK51QjoqSP0HG8sQltH7IStlAGTI
         g0Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749045485; x=1749650285;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IFWXnsIMSq1bn0DUFYmY7z6V87/rRA1du54TZxFaV2Y=;
        b=aTL/BMBWXbtTuy5K5dFIvVNNepSw7v35SCGLn970I5f7icZsvV3geckRiYPi6swK2r
         KqaVTNbgu8Z6zFJ2+wDWr34c27fMnQ7ZOCb+yfyv3FFhi178YEIR5uWiEWgiGXeDXXO1
         CXh94uKXCh7zf8oEmntddGd6xrJqTdLTjAar4wYFdicHlUo+YTmf01ULZRyHoCf9R7YP
         45Q6g7MX4rEwcHane+Ej2bJnmurZfG/zTleMpta5dhg8rZBHOqn9g9RRroa0e5QkHDix
         HBzcQbf4kjmdISoVluwy1RALrc9ZCTH8+E6ZpCiWfvEGJPjiL0O9b6icKwOAbT/m7HJ7
         t/gw==
X-Forwarded-Encrypted: i=1; AJvYcCXlw4pMGMb9zreOfMIWnyxejFGbotjwY+vCN3kK+b4HyaL7hLb1SI1L8Yi71Qnh5Th6PJHjh0lBC4Is@vger.kernel.org
X-Gm-Message-State: AOJu0YzCKDR/qyc/XFH7ZN2NZz1MewzoESh+mJU4O8ZQdHnb4uNT2dJI
	ThB2d8MfeB5oE3MgBLKnMXrJfrT8gRCfoht6+qHh7xUw/DJFp5i+cjyQlMmRXrj8KickQ3CFNYy
	Hgd0MfyTLDVJ4tbVZ63zjqhdTJVLxEG3y9QvZcKkWKA==
X-Gm-Gg: ASbGncs4/S+iny8vfsM0RIt0BDvICmjtIBKDGH//25x59FFVV+2XnDNg5T1p+eK24hV
	Ou+eB+lAPHObndb4ZkN5b465tjhvOwpjIrE93pRPBszLgZjuEzJeYoHI1B4cm8F12t/ow5SAstQ
	oeuQU93yx5SWXDhM9/yjhGXqZqUObNJe6Otg==
X-Google-Smtp-Source: AGHT+IGXFY8gppNCB1I6k87GeD/bmWPUV8R4mMgK2i7dZCLcfF2RhkUBwoySiJMKIOMWeHJraaSZXAxgR7paTZPeyFU=
X-Received: by 2002:a05:6902:1383:b0:e81:2447:6b74 with SMTP id
 3f1490d57ef6-e817a0011f4mr3409868276.43.1749045484537; Wed, 04 Jun 2025
 06:58:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CGME20250529222410eucas1p2e1d41a2fc717caef1aed51367a7db944@eucas1p2.samsung.com>
 <20250530-apr_14_for_sending-v3-0-83d5744d997c@samsung.com>
 <20250530-apr_14_for_sending-v3-7-83d5744d997c@samsung.com>
 <CAPDyKFpYfZNthdRN=pCv4FEdFCzrKEH4aFBy4ew-xLKtpbJ5Tg@mail.gmail.com> <a68e3bee-f4ad-4d73-a5a8-e39772c41711@samsung.com>
In-Reply-To: <a68e3bee-f4ad-4d73-a5a8-e39772c41711@samsung.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 4 Jun 2025 15:57:28 +0200
X-Gm-Features: AX0GCFsKqqHfcoyjgQNY4Bx0T-G_vnaUmkhnEv_Xdt_09WriRo8KoB3SpnFxVUU
Message-ID: <CAPDyKFo8scYL59+ELgawop30habZad0Xsd6bKGLXtSF+UNd9Ng@mail.gmail.com>
Subject: Re: [PATCH v3 7/8] riscv: dts: thead: th1520: Add IMG BXM-4-64 GPU node
To: Michal Wilczynski <m.wilczynski@samsung.com>
Cc: Drew Fustini <drew@pdp7.com>, Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Frank Binns <frank.binns@imgtec.com>, Matt Coster <matt.coster@imgtec.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 4 Jun 2025 at 14:40, Michal Wilczynski <m.wilczynski@samsung.com> wrote:
>
>
>
> On 6/3/25 14:27, Ulf Hansson wrote:
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
> Yeah they are required. Even though this convention doesn't seem to be
> enforced by the dt-binding it seems like it's hard-coded into the driver
> 330e76d31697 ("drm/imagination: Add power domain control"). So I don't
> think I have any choice here.

Well, unless there is a DT doc describing the power-domain-names it's
perfectly fine to change the driver too.

Moreover, it looks like 330e76d31697 is a brand new commit, just in
linux-next, so not even included in a release yet.

Kind regards
Uffe

