Return-Path: <devicetree+bounces-122386-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E4A9D03F4
	for <lists+devicetree@lfdr.de>; Sun, 17 Nov 2024 14:11:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A8A142831C0
	for <lists+devicetree@lfdr.de>; Sun, 17 Nov 2024 13:11:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F4BD18FC81;
	Sun, 17 Nov 2024 13:11:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FFNCUqcD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69055183CD1
	for <devicetree@vger.kernel.org>; Sun, 17 Nov 2024 13:11:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731849078; cv=none; b=DI+XEumr+8oFwF4O99wCuGPCULQ1UnZOHduS6QlKuXEwVmf8Hu2cTmKMZhH0qUcar0KZ4ejr6iu82PdCtuHa6DQuxvMt1TEXzJjSmeffCsOak1caKM0rqDkLDcboshWMvg5qlMSxyEpmJteylCd7XxyuK7PXyRpUZ5f1lFEatrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731849078; c=relaxed/simple;
	bh=nSwj3A8/ForjeKffUwizb7noaejgig1pPhnISFTHpWo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gCg4UUBlxQOzYst6givulg42V0DxrEbDoQGmjZFz7cGx9m9v9EWerXWRv2kYj6KjPLebjoTHXHM3mdZcCBj6QZnI6bDTK9LjsEqiAoDqXUnI/tdYgqSMtFe+tE6pp7e+RCxmi9ScgdmX+oPVpNZpL8jfIUisNeRwxV886tAmXic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FFNCUqcD; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-53a097aa3daso964512e87.1
        for <devicetree@vger.kernel.org>; Sun, 17 Nov 2024 05:11:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731849074; x=1732453874; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NVTB5fgW0CIPrQ9J8AICgZwfqKYac/1UcCg9s2HGvdI=;
        b=FFNCUqcD/6uAxaCGxwUSXFs0ySP2qm+JEADJpfQ6yluAcuMWiEyafezrmLs4Ndq+0x
         R0DGVJgL1GPjWNyYN/jew9X/YmIJGuL8hBk/hi+GuxKYoe81eMuDf4VIDByruw79OL8/
         mqACKXNpe2oP86OMVGY9PE/lAEzoOjaGfBH9LbxiIisVEtlDQj02bNHfAcv9WyDENgiG
         Pf6wgMiM4nP6g6YkE871PZZZZEo1dNDKDh70myodcv8wv5fPr/nsmKFY3Vx2O4rJ/5dB
         2jyOVLoEfvaV2IWfnwuX0yq6bwfdquGXbpDa7UkfumJxNjkDhUDa5iL1L8A2bF6B4kTS
         5i5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731849074; x=1732453874;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NVTB5fgW0CIPrQ9J8AICgZwfqKYac/1UcCg9s2HGvdI=;
        b=PIf18dAYVklb4TGa3FqBz5PLmLBNS056x2+VvwBLikXcwF/vz6w3Cbh5V5UsqQcCye
         yz8dri2qr09zH/ZzatZkDElXfM+2btBwblQGdM56QgMcLFdraR4CgS6mMwJV3cHUlrsC
         g78cUmoIEUIcNx9ZJpX9Rhy5y47J+ckCNgJjXEhdJeNF0+HSmMx5cdpQzRvMIQZI4R8f
         dbxh6ZgLeHQlNfweVdFinbWzm756Ozh7D91Bz0K9/8wxFttgAJxrxa4EgOiK/BpGjo1d
         WBfMB5UdPPbT2L9kd6F3J0Asy8EcwsvpCg11TOOLkyrGw1/MA8tA0v6gzDkCWHoOrnhv
         XzXA==
X-Forwarded-Encrypted: i=1; AJvYcCWu/Ft4Bqe3auXoCKHiU5vR6T0zgrZTKrcB8Y679K7vr9zPoTGx2+m3/fnsvM76PWr1q4aIVQc4+ikH@vger.kernel.org
X-Gm-Message-State: AOJu0YyxkacsKUrFXwyGFyBMHnqWPNllvRX+NnzizEyxxV0Za3qH0B70
	+BOEJ3oUXko2qH/zCYPALT4PcYhh3HmdmHi9PtJ+pSY5j8fKd363mtQV4RKsgv8=
X-Google-Smtp-Source: AGHT+IG575J6WcG9hzhULgqTQtjUCp+Yew1GGtVJdfAdD7iB6t7lRgirF640uMkUJ3IZlpLMdP65gA==
X-Received: by 2002:a05:6512:1195:b0:53d:a1cd:4d2 with SMTP id 2adb3069b0e04-53dab2b4216mr4246336e87.44.1731849074309;
        Sun, 17 Nov 2024 05:11:14 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53da64ffc6dsm1269110e87.59.2024.11.17.05.11.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Nov 2024 05:11:13 -0800 (PST)
Date: Sun, 17 Nov 2024 15:11:11 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, 
	Viresh Kumar <viresh.kumar@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Marijn Suijten <marijn.suijten@somainline.org>, 
	linux-pm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sc8180x: Add a SoC-specific
 compatible to cpufreq-hw
Message-ID: <7gftvwwc267za5jgyhw4yxmlw6rh7wkb2am5zx6cgl72x45hc7@eetgqavlalpd>
References: <20241116-topic-sc8180x_cpufreq_bindings-v1-0-e7db627da99c@oss.qualcomm.com>
 <20241116-topic-sc8180x_cpufreq_bindings-v1-2-e7db627da99c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241116-topic-sc8180x_cpufreq_bindings-v1-2-e7db627da99c@oss.qualcomm.com>

On Sat, Nov 16, 2024 at 12:31:18PM +0100, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Comply with bindings guidelines and get rid of errors such as:
> 
> cpufreq@18323000: compatible: 'oneOf' conditional failed, one must be fixed:
>         ['qcom,cpufreq-hw'] is too short
> 
> Fixes: 8575f197b077 ("arm64: dts: qcom: Introduce the SC8180x platform")
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sc8180x.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

