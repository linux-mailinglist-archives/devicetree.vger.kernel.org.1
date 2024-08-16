Return-Path: <devicetree+bounces-94097-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F2D953FE3
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 05:00:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 81A7E284DB3
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 03:00:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5A586F2E0;
	Fri, 16 Aug 2024 03:00:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="u+ZCR744"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDD6657CA7
	for <devicetree@vger.kernel.org>; Fri, 16 Aug 2024 02:59:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723777201; cv=none; b=YPT/2lU30PHzLr/Q0zOjWBG4fSd45lVYo9o+nqwjkW967YWv26C95SA/s8M1zUGUzAnIm6+22VPsskugSFxjkyrp1dXBJ4kH3X08uI41/7bIedtqxHDcaBc1nKZXaPcJCK/cT90qurvikFNaYZo0jVLxKQtF01ko8+Gb55FcJj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723777201; c=relaxed/simple;
	bh=9HJ9mLsvE9hBdnzRmPMog4Duyb12/MBm70Ijnu1zd8g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oEiZISp3MkYEbtDuWncMErldE05/OZEQsbU49ByokoKQ1i+mjPxtd+F+paSetSfjIUqLI0oLIa/q5GdO1SUVJsZQNAK8jaolDx3KeOkxTVOvXpZWKOOvmJCgXdSWnzkatlm7Udqtopn7ZOEd52ixDgTOna8bxxcXPGiknLZH0+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=u+ZCR744; arc=none smtp.client-ip=209.85.216.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-2d3d0b06a2dso774171a91.0
        for <devicetree@vger.kernel.org>; Thu, 15 Aug 2024 19:59:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723777199; x=1724381999; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=N3bMIBZKvJVfw9dWJhuewSKLJF4MA9XhsG885+6Ljg0=;
        b=u+ZCR744batxOalIF5E3s712s1CwOo8FHO61hdi2DSkDOTcW854NkWko3wsp8OPXV2
         /Xsz65MKcJhiFcET8f4KyEXJLFsZlgHcaWqpb/a1nskj7HZUdassP76pamTQxbIPMegt
         XCJBZ9gXNWZC6/kb/7wFZipOwpCAOMTqYFJV3nfZiQ6r/IXV+Dn4Aca8jEfFL1IN4Rak
         LRg8G4FSAfHV/VcSSclkfpqEXqfA14f3IJKl10cg3bQqD7uAskgGwXUVdjNL5DAqKI9+
         pnhby6jCUzleU8Y5u+ZJjYf7s6DSrvQzZ2ADdORQUApG9xs575sUr++pYRvCa9sVaguL
         2/Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723777199; x=1724381999;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N3bMIBZKvJVfw9dWJhuewSKLJF4MA9XhsG885+6Ljg0=;
        b=ReGbO0Fn5Ye7vvo0uOP0opBAkxArKBXTkajnOK2hXl2ofL2EOVLtsZGgza8Fwg3Zb9
         KCFW4anRFPa8CqlSeXtFDW6a/w6Iac0fM3xnIDWfaTQGe6ag/iHRMeHuQOJInEjBf4yM
         3ZHWRG+4ZCyfobd94sNemPELxorII50p0FMIQMYfaHHRFlboS3NR0OAkferuF6Qliv7E
         nKyTEQOI8TWqBuQHZmBEm2Pv4TeFVvzmoSa8tbM7GgDLoEiMvvgoeLLVMeUBjiTAX4g2
         8xl8Ot3e8Z5WnGiJt3q3I7YjDeKWLM/32m9MwxnkVQbPtgvdmhUx4LpKJMM8xl2DM2kW
         8/bQ==
X-Forwarded-Encrypted: i=1; AJvYcCXiwaxWp6I20hw4IqXouokZSqprmfRAsF05TqHlGR1ZASse3sJpUfm32mHtsvL40AkVpiSudmpyhlQSFrqh4zHw7ua/0vczcdagkA==
X-Gm-Message-State: AOJu0YxfAXWfQ7BQ9yn2RLD1Nzv7Bm0W7CpDIKxmnnDyqVdV8Y4CzW8l
	yDS944Fy7lF5uF6zbNt30ThTlyc3G1tf5Ddlp/sgTUveO7oVQupcWo0HePHOb6Q=
X-Google-Smtp-Source: AGHT+IG41cmUunEpRo1YEW6i7VN78sorKRs9Ia30Ow8a4NnlLWJDOlmrrRZ7+f/r5YWbnu3bUTT4Ig==
X-Received: by 2002:a17:90a:ca89:b0:2c9:754d:2cba with SMTP id 98e67ed59e1d1-2d3dfc2aa3amr1975748a91.3.1723777199224;
        Thu, 15 Aug 2024 19:59:59 -0700 (PDT)
Received: from localhost ([122.172.84.129])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2d3e2330f26sm626022a91.0.2024.08.15.19.59.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2024 19:59:58 -0700 (PDT)
Date: Fri, 16 Aug 2024 08:29:56 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Danila Tikhonov <danila@jiaxyga.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	andersson@kernel.org, konradybcio@kernel.org, davem@davemloft.net,
	edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
	rafael@kernel.org, kees@kernel.org, tony.luck@intel.com,
	gpiccoli@igalia.com, ulf.hansson@linaro.org, andre.przywara@arm.com,
	quic_rjendra@quicinc.com, davidwronek@gmail.com,
	neil.armstrong@linaro.org, heiko.stuebner@cherry.de,
	rafal@milecki.pl, macromorgan@hotmail.com, linus.walleij@linaro.org,
	lpieralisi@kernel.org, dmitry.baryshkov@linaro.org,
	fekz115@gmail.com, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	netdev@vger.kernel.org, linux-pm@vger.kernel.org,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH v2 03/11] cpufreq: Add SM7325 to cpufreq-dt-platdev
 blocklist
Message-ID: <20240816025956.utm7w2djq5ukvoxx@vireshk-i7>
References: <20240808184048.63030-1-danila@jiaxyga.com>
 <20240808184048.63030-4-danila@jiaxyga.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240808184048.63030-4-danila@jiaxyga.com>

On 08-08-24, 21:40, Danila Tikhonov wrote:
> The Qualcomm SM7325 platform uses the qcom-cpufreq-hw driver, so add
> it to the cpufreq-dt-platdev driver's blocklist.
> 
> Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  drivers/cpufreq/cpufreq-dt-platdev.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/cpufreq/cpufreq-dt-platdev.c b/drivers/cpufreq/cpufreq-dt-platdev.c
> index cac379ba006d..18942bfe9c95 100644
> --- a/drivers/cpufreq/cpufreq-dt-platdev.c
> +++ b/drivers/cpufreq/cpufreq-dt-platdev.c
> @@ -166,6 +166,7 @@ static const struct of_device_id blocklist[] __initconst = {
>  	{ .compatible = "qcom,sm6350", },
>  	{ .compatible = "qcom,sm6375", },
>  	{ .compatible = "qcom,sm7225", },
> +	{ .compatible = "qcom,sm7325", },
>  	{ .compatible = "qcom,sm8150", },
>  	{ .compatible = "qcom,sm8250", },
>  	{ .compatible = "qcom,sm8350", },

Applied. Thanks.

-- 
viresh

