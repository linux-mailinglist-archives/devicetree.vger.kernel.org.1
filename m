Return-Path: <devicetree+bounces-87552-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B27CB939E32
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 11:48:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E3EA61C21E3D
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 09:48:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3127914D299;
	Tue, 23 Jul 2024 09:48:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="U9Ugkerz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEE2C14B961
	for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 09:48:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721728104; cv=none; b=gVEgKMHXG6GWooMJFRrvJg8wQEeHSo7OPYWMg2IiTLQHxJ7CuYnULJ5zi83y9V/FGMAV7HMLovV6EHRyACO+Mhy89wJWfjrNus1s2CRa/LGlXX5aQ7kUKJ/GkYUDHcrkQI6g8I/HVqmKWQT9EfJf4WdGta2r/YwF/drPOQOhJO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721728104; c=relaxed/simple;
	bh=gEK4QfdKm7R1z7rrQREmPeNyfS+/FT7vt+UgsRMLc0c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mzRUTVuvLLSGQ46x9tN3Mm3/QWxBulY/AXw2XTdUgOv9q4x4gCVEymD3i2xhS69y+jMP5aBQxdPCRS+VgpJHYrtp2QPrnjYT9H5cXRNubHnCMfADKPF9frTAAdWaLhuIEn3m3pzRXyOrwQ6idLncIQbukICxbQpUbdFCMAHkmkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=U9Ugkerz; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3684eb5be64so2642604f8f.3
        for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 02:48:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1721728100; x=1722332900; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rbEJArM2criAyBNgn8vJ5ITCWqJpj4+z96xeB0rfsFI=;
        b=U9UgkerzcHQpyoRDTxQBNwnu4DRjW2pA4FjOhDCMx39cCMQidF/fKmLj9q2I6gVkh/
         3Ie/LHZ5L87Lzq0y9cj22fxjZGL2vf2JTvHY4VvX1gQB7K7ZwWXtmQ45k0pj4jWSpdyD
         lwzoOoGhPy+W7mIBP2Lu/ayHcC58Vjx10B3/ohLlrsV5mt/HNHtEwQ0QNwip7bIdCAiD
         i01CFR2FndHGJy1AoCixZsdxdNBev0oYR1GcvvqY2k4M8jICKFz0n2yB6pg7WMEkcaHl
         4Hbd1Sz0NsGyJ1KAaQQIlQBE3Zdo9PpCZlaOdcXl+kW4JTggDGqClnIrfju14A0YkgCi
         LuDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721728100; x=1722332900;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rbEJArM2criAyBNgn8vJ5ITCWqJpj4+z96xeB0rfsFI=;
        b=X+0byS95aN8NEJJuwWSEoZs9ymugFsVqO5oCNZwnyVV7NQXVFEo9PZpl/SZM/YMwPT
         121tRRIFIdMjhltSFaIW93fE/36el3qLHZWYyYCcRBZI3p/5kEXu2lZa+nNjSMD0P2Fn
         yb8Jsr7+xXtk3Ty0xXkNe1JgFVSUisCBNwd1XYaDfgnLZ6RrGKrJXeyLIYP8ayu31c69
         YeE94B8KIiC9S1yl2Zto4JeMw06SgP3scbuU3eWXNObHgDpappWZ1dKmr0xR6POTTSoG
         HqOqJYQl7vxfmb3sGlXxlY6QaAhOOxFmUIiNzPG39buWyMtGFHWcKw/N4Z18NacQ44DH
         bmOQ==
X-Forwarded-Encrypted: i=1; AJvYcCUUE1HpmkxQW86abOut6yRTjBr1d5dpoFwfUGqzhiB8ta3gmNr9RKs2fkT7yJPKjNPErmM4vK4rMBVpuFARs18B52PhcrgTM+eTNA==
X-Gm-Message-State: AOJu0YwNNwL+BouYwWV8CZd5BhM7o/4PaJn+Z6vohhmZ0CcD3s3TE8ru
	6BbknLU+tOwiID2qzlznvGhF1e7y6yVrTwd3WUo16AMgBbTvAizRpVLM8cb+r4E=
X-Google-Smtp-Source: AGHT+IH4hk/YqpKQL3zW/Jf38G6coS3kepTKE1VDym0yEzRHfbf7GMeH/Em3PPXdvHdzhvTFpRLYnw==
X-Received: by 2002:a5d:4992:0:b0:368:4c54:ae27 with SMTP id ffacd0b85a97d-369dec2931emr1628909f8f.36.1721728099886;
        Tue, 23 Jul 2024 02:48:19 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-368787caefdsm11053461f8f.66.2024.07.23.02.48.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jul 2024 02:48:19 -0700 (PDT)
Message-ID: <44101ecd-61f4-4609-bb22-12b40b692552@freebox.fr>
Date: Tue, 23 Jul 2024 11:48:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/4] arm64: dts: qcom: add HDMI nodes for msm8998
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Rob Clark <robdclark@gmail.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
 Arnaud Vrac <avrac@freebox.fr>, Pierre-Hugues Husson <phhusson@freebox.fr>,
 Jeffrey Hugo <quic_jhugo@quicinc.com>
References: <20240627-hdmi-tx-v5-0-355d5c1fbc3c@freebox.fr>
 <20240627-hdmi-tx-v5-4-355d5c1fbc3c@freebox.fr>
 <d9898342-2439-4d3d-8e3d-5bf0a7a40245@linaro.org>
 <b6f6c845-6094-44ce-8ad0-ed4f6d353cec@freebox.fr>
 <CAA8EJpqrAFKCr63JHEpZ3b3zdRfoNXoJP6SqKDOO4sqc=c6YdQ@mail.gmail.com>
Content-Language: en-US
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <CAA8EJpqrAFKCr63JHEpZ3b3zdRfoNXoJP6SqKDOO4sqc=c6YdQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 16/07/2024 18:37, Dmitry Baryshkov wrote:

> No, that's fine. It is the SMMU issue that Konrad has been asking you
> to take a look at.

Context:

[    4.911422] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
[    4.923353] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
[    4.927893] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
[    4.941928] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
[    4.944438] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
[    4.956013] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
[    4.961055] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
[    4.974565] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
[    4.977628] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
[    4.989670] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]


As I mentioned, I don't think I've ever seen issues from cd00000.iommu
on my board.

I can test a reboot loop for a few hours, to see if anything shows up.

Regards


