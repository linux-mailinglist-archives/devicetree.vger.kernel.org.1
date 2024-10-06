Return-Path: <devicetree+bounces-108197-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 294C9991FDF
	for <lists+devicetree@lfdr.de>; Sun,  6 Oct 2024 19:23:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5BCEA1C20DA3
	for <lists+devicetree@lfdr.de>; Sun,  6 Oct 2024 17:23:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62D1017B400;
	Sun,  6 Oct 2024 17:23:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wLLbY1bz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD16F101F2
	for <devicetree@vger.kernel.org>; Sun,  6 Oct 2024 17:23:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728235386; cv=none; b=i5Lqa39DKfNssI5SNCfYQ9/s7W9fNVAurzYBTK1M//Ho206tkyxVRKxe3QzNvXIpcwok8b8EpWPDh3cg521D0D65FVjhpBd/MJIb6sFHhpXZ002fBw99f13DWUsVoDYQ0luHl0xMlCX/muZBZKTUTq95DyBjptJDJIZVFKdxxQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728235386; c=relaxed/simple;
	bh=ZJSZXKa6hnm7n7uOe7aHo4CxuxDS5H5nbC1jrrTwJE4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VxaLS5czju+WAeUqg2CA8iaQOQE23kum4n85dSdvYJCmE4gflSGVQEpsUIfbGbeUNa50yPJFbOBP2CHGA5OzZY1p/9pe7n5SH845eJxR1Zqjiig4fUFGSxbvXpD8pBy0TG2XLf++BHB1Ylu0EwI/VojTkcMItLNPC96NROdLDao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wLLbY1bz; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2fad15b3eeeso37875911fa.2
        for <devicetree@vger.kernel.org>; Sun, 06 Oct 2024 10:23:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728235383; x=1728840183; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OpjRwuLRUXFajbBZIMwsNL34q1UvfF7/XW6ufiH5/Rs=;
        b=wLLbY1bzlvbsITg6L+kjbpJ4d9xgHFwJBydjrJYhHZZvNDI+8iUYt5uDOoqy4rreVv
         PLkfrP4KCFqxqAac2TQvUTmG8CLIVdkKXrPmu1R9eyZSaFPFX2kM47B8Z2OaaReVscNm
         cklf8S7jIxwNBxNU/7zdpaNsWoKEez6A0rZZ/95i23+Ych5ZX45Fp/4i6bhXM2QjH0DW
         F85kzKmloN7lk/SG0mZ/qXeEqYiD0hSf4TqYi9KBMBN6LnlHDGw8GKRyBY6xvEFMC025
         o/sSOwhAuaDqtPtw7b8T8G2zEzLOBUesxfpATSXyLclD5CFt/e7hVpODUDwhBEUzpqHH
         vKNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728235383; x=1728840183;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OpjRwuLRUXFajbBZIMwsNL34q1UvfF7/XW6ufiH5/Rs=;
        b=jzbv/cqnW6XeT247PDCikUaF3nVcjPgmokXnPKTRRnxdiJlaWP8BexNz4OS+DyBRk2
         L1g7EurWCvlxrWPM6T6vTKNlT1ikA+IaJzEjyL50IZ3xt8lyEYqiEAvXUffioiGt2iPJ
         O3EhN5GrA/Gb+H6tMeivSrBrFdmS5MnMWZbAU+zPVBRwf1sdeWxafGeiwLISLtTFIx5j
         m7fpFbN/GJ3jq2Q1A8czYRFbN6qAN+8GzLz7BQkbyOrUNLt+SpEysTlGbGvLLyi+BH9R
         nnx7MsJVeF8x9mJBIecbFnwj6WAGwPiFMMl8jtjCzmMdcym4w/lPbFCWpULW31Zb/tzb
         aeNA==
X-Forwarded-Encrypted: i=1; AJvYcCVKKTeInKW1X/WIIvGP0qEvvpNdC37+ZEVEVUux4Jmq50uOb4n1StCaKqLl/YMqkgjlYd8+rBa3SlM+@vger.kernel.org
X-Gm-Message-State: AOJu0YxIXHFj2L1p/ZVED9rdgW9n+4exZCExSfxkifmK/I3+tWlU/4aN
	ZfwHHgnD31rWW/aMqorVVXVDO5eQtNJcei+Xr0U9vUJGMJ8LE3WHcVFbeVzc8jA=
X-Google-Smtp-Source: AGHT+IE61DamGAP1317Zypxe0TTitTiOyW10Ui4gvyngtBuSthGCAM/z9coVL7umoe8mgDH+OjY/jw==
X-Received: by 2002:a05:6512:130f:b0:535:6778:952b with SMTP id 2adb3069b0e04-539ab8ad9bdmr4740112e87.44.1728235382847;
        Sun, 06 Oct 2024 10:23:02 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00-89ea-67f6-92cd-b49.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:89ea:67f6:92cd:b49])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539aff1d0c8sm567580e87.130.2024.10.06.10.23.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Oct 2024 10:23:02 -0700 (PDT)
Date: Sun, 6 Oct 2024 20:23:00 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Marek Vasut <marex@denx.de>
Cc: linux-arm-kernel@lists.infradead.org, 
	Bjorn Andersson <andersson@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: msm8996-xiaomi-gemini: Fix LP5562 LED1
 reg property
Message-ID: <hq5iot5kl46v6hn5ht2svafhqcvnktmkdxsdodkmcepakeo4us@sx3qgrcfwxxv>
References: <20241006022012.366601-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241006022012.366601-1-marex@denx.de>

On Sun, Oct 06, 2024 at 04:19:48AM GMT, Marek Vasut wrote:
> The LP5562 led@1 reg property should likely be set to 1 to match
> the unit. Fix it.
> 
> Fixes: 4ac46b3682c5 ("arm64: dts: qcom: msm8996: xiaomi-gemini: Add support for Xiaomi Mi 5")
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Bjorn Andersson <andersson@kernel.org>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Konrad Dybcio <konradybcio@kernel.org>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Rob Herring <robh@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: linux-arm-msm@vger.kernel.org
> ---
>  arch/arm64/boot/dts/qcom/msm8996-xiaomi-gemini.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

