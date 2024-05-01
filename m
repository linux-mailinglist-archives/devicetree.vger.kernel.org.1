Return-Path: <devicetree+bounces-64237-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D67068B88B8
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 12:44:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 149671C22668
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 10:44:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E78F954FA1;
	Wed,  1 May 2024 10:44:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MlwGIw+f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C71954780
	for <devicetree@vger.kernel.org>; Wed,  1 May 2024 10:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714560275; cv=none; b=ILdFcvNMpKnhw+AzVSf7DN19BhUmvslX9sjW+2H1e6FSQnGkO3zLoxHh3M7PFxC7qCCG+HlXc+PosRrstZLJTuyT15Nf3ZNt0EvSXL9Xcy+uC4gr9SoL4D8Z+U8+NQ5feTGBw4Hf3+JkIkkezXbHM4blGFalFmGtG04KilqfzoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714560275; c=relaxed/simple;
	bh=EtIeXovXD9D36tFVtGrfH4wjM2xSaB1ioYhBAs/xH6o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LoyEGFtoDFw5XEADGr8i6Ajmr76NqAPlU6Jo/MIeujkRTCMbfsS7VagrwM/bUS7eTZ4Lhu8mrxelffYiD+yuVrtaqTWxN7J209HCAq239eKMeiW7AWAz8VCluzE/BtV5YeAvD2DZCMBlqQkMegNfOtiuoQXVt29o6CSPJiLHNR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MlwGIw+f; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-34db6a299b2so649465f8f.3
        for <devicetree@vger.kernel.org>; Wed, 01 May 2024 03:44:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714560273; x=1715165073; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SYmuLFK3BGv9NhdBLgDNFCQmHdP6DRQ3PI9eDeKznd4=;
        b=MlwGIw+fwF9bgea49Qq6BRSZl5Pp4nLMNQa8ksdm8/fY1DM+ZGXC/wIOfVcd3m5Xax
         /nz4kPl1y0IPuPxbm3ZsBk6QVMIOo/ixGXT3g2R/IwazoRde6oKujp2FF7PnYV3ZG6tN
         hM0r3YA9MoQFbc1zbYi6m/KoP6BiJBJxsvhO8Nj2fDYgUfq9Yb2SMxjvC62bHGH+7ODm
         czTHB0P1ixfn1nn+IUGhZkzC9ZszsXCgZtSLjW5REIkkTP5w9P3zucbE3AnY61Do/KfV
         XirQl3Tzf0h/BT9QG0ANJHHjGCqlD6J4Avt7/effqStnFLyCuehnq/91ZXXY+DwM1DGK
         /wvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714560273; x=1715165073;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SYmuLFK3BGv9NhdBLgDNFCQmHdP6DRQ3PI9eDeKznd4=;
        b=BYEYc9eSBpuXa3mzkiEZao/TZKN08fH2MfA5/C0j622ovuVOmSLpFosukyfGkFYU+1
         lQBMzhS/a4G0nvtkcURhcxY0CSj1DBtVbfsNs7lMEl/NxZDyFzaFXMX6aFPA1pmqocIt
         hbfhvPD7QiGEDMlkgUAdDZLm2T3fXg7GnNJaCwZRk1/WQMOhE3WsfnV7UHyB6gySOfC8
         ThuE0Wg/r30h5RVUjzI4z+S3c0ijhfyqHbP07cwGRXCbwgowDAGlB57711nQNcSlGnc5
         Ul9t61lyZ3lABXJcVwr0GtpkKLdfWjVdSnjtJ4Z1eMv2EXDtO+XmbcZaEIC2R222C3Rf
         vOwg==
X-Forwarded-Encrypted: i=1; AJvYcCVPeNTaIKal9BT9Q8x8Dp6xVZpBIbkHYxr8Qks+Qqb2c2x2eSYIoDqi3/KJWL9NBETkStd4tGDVskMYx41MTz1yOCrEB4jM7PK/1g==
X-Gm-Message-State: AOJu0YwhN+GyxkJkY6CJe9SkA5chVCKo7YPDiJph12UMiFkpXXzcPb6e
	YAILUaWo8ND0Me1TU+aw1hGJ63lX8jtXmwhq1usBFygUoTR8BBFxaM2skp/992E=
X-Google-Smtp-Source: AGHT+IGkxuY4dhK1o59E+WzYjdOhu0VVa0wkXzXcFXoTG3txAyFGqsjz9Wd91uyD57Er84He7gVn7w==
X-Received: by 2002:a05:6000:128a:b0:34c:c9dc:ccc5 with SMTP id f10-20020a056000128a00b0034cc9dcccc5mr1636807wrx.28.1714560272686;
        Wed, 01 May 2024 03:44:32 -0700 (PDT)
Received: from [192.168.0.102] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id f1-20020a5d64c1000000b0034d24477662sm3562035wri.8.2024.05.01.03.44.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 May 2024 03:44:32 -0700 (PDT)
Message-ID: <e4703eb2-dda5-41b1-bd47-8dd4d15dfb9f@linaro.org>
Date: Wed, 1 May 2024 11:44:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: Add/fix /memory node unit-addresses
To: "Rob Herring (Arm)" <robh@kernel.org>, soc@kernel.org,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Khuong Dinh <khuong@os.amperecomputing.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Robert Richter <rric@kernel.org>,
 Chanho Min <chanho.min@lge.com>, Avi Fishman <avifishman70@gmail.com>,
 Tomer Maimon <tmaimon77@gmail.com>, Tali Perry <tali.perry1@gmail.com>,
 Patrick Venture <venture@google.com>, Nancy Yuen <yuenn@google.com>,
 Benjamin Fair <benjaminfair@google.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Orson Zhai <orsonzhai@gmail.com>, Baolin Wang
 <baolin.wang@linux.alibaba.com>, Chunyan Zhang <zhang.lyra@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-actions@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 openbmc@lists.ozlabs.org, linux-tegra@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20240430191856.874600-2-robh@kernel.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20240430191856.874600-2-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 30/04/2024 20:18, Rob Herring (Arm) wrote:
> +++ b/arch/arm64/boot/dts/qcom/ipq8074-hk10.dtsi
> @@ -16,7 +16,7 @@ chosen {
>   		stdout-path = "serial0";
>   	};
>   
> -	memory {
> +	memory@40000000 {
>   		device_type = "memory";
>   		reg = <0x0 0x40000000 0x0 0x20000000>;
>   	};

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

