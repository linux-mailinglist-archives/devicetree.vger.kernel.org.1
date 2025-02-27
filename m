Return-Path: <devicetree+bounces-151834-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E8721A4743D
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 05:18:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 762373A1A9C
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 04:17:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0C801E5217;
	Thu, 27 Feb 2025 04:17:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Q5gXPcHC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7133D1A38E3
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 04:17:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740629825; cv=none; b=Ym9wQ9tof52m43k9kVs5dXV4/JhTf5+qUjvQRqfogULnarYkIrMqQaOQODJvQrK0TTC6v0WqccI4IkmoUl/RsPMsZvwhc2Yd5fg+o9lnRb2/HF7LRffTDCn4LZFN3WnmLhEHIjdBzOFxNdTwYYoE7/4jBTyxv3XPI1fmraCWe2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740629825; c=relaxed/simple;
	bh=cdH66nBgTf0Lwg3K/8eyHtCyVQMYcf9IUF1L6JQC4tk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=d0yhNeGpqndkdtuhGL5LGDseu+yysOBsM4g/33k7yZfFyS2q7zITiVSGjmuZL1pCnfXOHyGh5noE9CUjKWSn7d78XvbIYfHDaM7O0xhXiQIkiuMmKbZXPXZuHEtdsiniYUacFQUIYA8NMBPOjqj4XV2bjEHynk9uxTfvMZ7m8lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Q5gXPcHC; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-546267ed92fso466524e87.2
        for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 20:17:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740629820; x=1741234620; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=sbpE7A80HY+/Mdda5+FpAzRig9IYFvS6m/EoQDwpXAQ=;
        b=Q5gXPcHC5lN5JVX2lf0aUyQc63bMtc0iG5JHy2/dODruChVNW2VZxhugXxooa3WQx1
         OANOD/ClCw/F679fgDtLCFQQwk05hqG7NJWqIO1t44nZwU/aMMhb4fAgkhksL42G70c7
         oydZhdGEKwC6yT3dNFwBRhHEyaOBDj2UU1KqoklO6D3q54Bf4j+tjqAHUufKVRl7Lhrw
         mD3BlgOq9BjY9auio47tCYFtTalb1n6XvfzHLgxaEAfcK6L2nx4Tnc4MtKCYGibBdnRT
         PZsSAB5RkuSshr+5X8fMcbTDraISIEp5EEvNdXLj8aR9L4e0Gnw/Jfluxihi4/Wk4nQo
         wxZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740629820; x=1741234620;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sbpE7A80HY+/Mdda5+FpAzRig9IYFvS6m/EoQDwpXAQ=;
        b=c34VFPLFXoRaWmkerGd8xVvW6wRrKgwPFHHrhJIwwxKA4EcCkbD4+C24Uaw5mRX/uM
         T47uY6QhSgPgaBMwAmjlHB0UFCGJmSlXULw0F04ZesdgDSRvcXn/M6iAOt/Ra2FbjHAk
         c8a4JHRujDlLocjZXF2QuFc2iZLRgF6yaBCKSQ97mYAzTSjA7dooYZbgYKJxmEWgoDtp
         sugNjF/OSzQrNCBs6iHYsYsa8hg0wDw1+1fuS1PA6or7LrF+DTv7sOOU8xzte/yAhSU6
         Gw3tqaFzXYT/F22w9E4MrARg4SBAIeSKb5IYpO4KmangOnDL4Gvfr09Y2/mob5mK5c2z
         Ky9g==
X-Forwarded-Encrypted: i=1; AJvYcCVt+yM28X0u43bDVHesJoIcfZb9J10miQiQ1qpvW5m3fVlI48w/5j1k1vqFnOszbVOtwjReL7g8Z5Yp@vger.kernel.org
X-Gm-Message-State: AOJu0Ywx9a31h8iHq9JfwsNUlf3zVyvDQLDqlRYNMT6yTB1nL+hzIOo3
	055vNzzT4GnxMO+iPjovu6mQcjUT62OpVhCiTVojg0UQaYo1M2h7UJH3TX8FqrQ=
X-Gm-Gg: ASbGncu7E0aguEzdoxrkZxRBiwolGEJ26QIGoAW88ttWu/v81w8Jsyd96+7jiUnqRcH
	TiiuQS5t+ropJmZMHgyyFd8/jAbWuo38/TCkAiB3XySMorum1D+zE8qCvkyvhTABaYCOpgvNso8
	776IgODf4hN7JmYF+0BQxiuh1kEr6N4yqqKSP3lwpvRHnkWcLo8++nwq/FDGGXEhQsSJQPaCzgP
	DrINCoYx/inOMRFa/k16VctwRYgWejBd7E/iN1SRGnb6TDYomff490+Hxv13z/kMvCo22o3YmgR
	jBjLi1Hp+GjXiB39gfYciucCK5hBDSoB0fSViyHV6jvAJ8nBftmwMKv0lrc+yezG6n5dnZWbIo1
	xi4AlAg==
X-Google-Smtp-Source: AGHT+IE5VURtJx3akR0wW8QuRF4r2+WixtLJlHwmRqGjmXOtaF1CwM79EnenRC2OLvGzgMnEngZwiw==
X-Received: by 2002:ac2:4e15:0:b0:545:c7d:1791 with SMTP id 2adb3069b0e04-548510ed5d4mr6767391e87.43.1740629820504;
        Wed, 26 Feb 2025 20:17:00 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549441743c4sm61550e87.49.2025.02.26.20.16.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Feb 2025 20:16:59 -0800 (PST)
Date: Thu, 27 Feb 2025 06:16:56 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Nikita Travkin <nikita@trvn.ru>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] {vision/navigation}-mezzanine: Fix overlay root node
Message-ID: <vq5dcsi55aqn56h6ihysqk4lainhmjbyvot3jiqkxm3i7igsak@da5u6ro7rkvg>
References: <20250226-qcom-nonroot-overlays-v1-0-26c6e7605833@trvn.ru>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250226-qcom-nonroot-overlays-v1-0-26c6e7605833@trvn.ru>

On Wed, Feb 26, 2025 at 07:29:54PM +0500, Nikita Travkin wrote:
> While considering to propose WoA EL2 dt overlays upstream I was looking
> at existing overlays and noticed that some of them are broken: they put
> seemingly meaningful fixups into the overlay's "/" node, which places
> them into the overlay "metadata" itself, not into a fixup fragment to be
> applied to the actual dtb. This series fixes those two by changing to
> full path "&{/}" which should work as it was initially intended.
> 
> See demonstration of the problem below:
> 
> $ cat base.dts
> /dts-v1/;
> / {
> 	compatible = "fake,board";
> 	fake,value = <42>;
> };
> 
> $ cat extra.dtso
> /dts-v1/;
> /plugin/;
> 
> / {
> 	foo;
> 	bar { baz; };
> };
> &{/} { whatever-comes-next-after-baz; };
> 
> $ dtc base.dts -o base.dtb
> $ dtc extra.dtso -o extra.dtbo
> $ fdtoverlay -i base.dtb -o combine.dtb extra.dtbo
> $ dtc base.dtb
> /dts-v1/;
> 
> / {
> 	compatible = "fake,board";
> 	fake,value = <0x2a>;
> };
> 
> $ dtc extra.dtbo
> /dts-v1/;
> 
> / {
> 	foo;
> 
> 	bar {
> 		baz;
> 	};

Is this behaviour documented somewhere? I'd say, it would be a surprise
to me.

> 
> 	fragment@0 {
> 		target-path = "/";
> 
> 		__overlay__ {
> 			whatever-comes-next-after-baz;
> 		};
> 	};
> };
> 
> $ dtc combine.dtb
> /dts-v1/;
> 
> / {
> 	whatever-comes-next-after-baz;
> 	compatible = "fake,board";
> 	fake,value = <0x2a>;
> };
> 
> In the resulting dtb foo bar and baz are missing.
> 
> Signed-off-by: Nikita Travkin <nikita@trvn.ru>
> ---
> Nikita Travkin (2):
>       arm64: dts: qcom: qrb5165-rb5-vision-mezzanine: Fix broken overlay root
>       arm64: dts: qcom: sdm845-db845c-navigation-mezzanine: Fix the overlay root
> 
>  arch/arm64/boot/dts/qcom/qrb5165-rb5-vision-mezzanine.dtso       | 2 +-
>  arch/arm64/boot/dts/qcom/sdm845-db845c-navigation-mezzanine.dtso | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> ---
> base-commit: 8433c776e1eb1371f5cd40b5fd3a61f9c7b7f3ad
> change-id: 20250226-qcom-nonroot-overlays-bfe21d33be8c
> 
> Best regards,
> -- 
> Nikita Travkin <nikita@trvn.ru>
> 

-- 
With best wishes
Dmitry

