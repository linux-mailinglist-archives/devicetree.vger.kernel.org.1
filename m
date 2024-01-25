Return-Path: <devicetree+bounces-35320-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C699A83CF48
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 23:25:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 04AA31C22479
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 22:25:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 100E913B78D;
	Thu, 25 Jan 2024 22:25:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jzggMAON"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF8C13B787
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 22:25:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706221537; cv=none; b=S8oWwIcFmA7TzNGTy4HCxgMrKj2lK1wXx3Wh/+enGk/lvoBL7VLzRiktlXKU/9HEQ7lwb1cV2jLT736cKDL4kUCgC2DF4mdFpVhUUMu93/fsOEd1tOOYrtQQmTXuz7qqsi+k8qefTP/RGNKQi8AQubaCgM/WJhhWIilEz8479uE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706221537; c=relaxed/simple;
	bh=QttQygQdo7pOZKGzvwTMezGVWdOihA0j7oTU2gKSb0w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IKEsnZsDODyW0ajti0mA//IELqSDrHsmmQhXIElmuPf2b7XSb8Cq+57DIvFGUY9MESuI+MjE1wH8Z2dvLfRqC5fAK1OstRXXr9noyPQfS1cAzw8jux43OhoiFdAATjIOpSquWJG4iTAQxUbaWKSPXRiEqaiPG8V0roUEw7Ee8s0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jzggMAON; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-50eab4bf47aso1323745e87.0
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 14:25:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706221533; x=1706826333; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4KiOZjOrG5Dv/gAk5/b+HZFzoBKoxQ5QJzGApcdLCas=;
        b=jzggMAONnKcnQs5EN5O5Jy/+XhG51WD1Qe5EPoU9yE1xKNnXIvSrec7/VQIqefTMwp
         oglv7SM4ooqCLJz6iG2ko361BLSCU17IcFkqvpbd/INZNppl1CQajM5iYoxiAb7YsUnN
         7j5oQwWWKUiXbDga2+d2ZMfQhnBleFL8K/lg/IvBvqUiF/9TmHRvBN1PBiIUEj9NxCRc
         /qHfuwJt+qnGPxU3JnQQHQHL4hWzRrFTOHyQh32El6BfvJuNau4/VlkCgs6/23AysN72
         kQCRv4BIEjgD1mE6BC6jbrKGFmz7hgeYXPWLTx8cGuzJyRMW/RKCQqAijM7WzCTsfLLr
         f2Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706221533; x=1706826333;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4KiOZjOrG5Dv/gAk5/b+HZFzoBKoxQ5QJzGApcdLCas=;
        b=OvShW9WP5Z6zGIU2/4kDdwNuZlX7rMM+x4oC1ey+yb60sn9H1e83hfM9tJFy44OVl+
         zJDMcMiII1SWAdSFDCL8FDME4S23OjTF3KBZFMWro9KTDvk9ywXSZMjkwk1pTimd9uyu
         qTAvJVY7LUGHLJAhy2BEe7IsB8BfEALWmcbh3+Nztq8m5bGf7s8DRtlzACVyvKE5PL5H
         +Ju5s14Uy2mHdI4Fa5c2p+GBcteGcU+WvKbCIrTeU5TzX94/v0E4WRunPXkRoPpq1MXV
         8xOm5z+H4GhpyqPIwwxjlyrdpT5l7v4EhntqACg6qo+NOug+C0ZbBOX3fm3DIiYCqIlO
         wiTg==
X-Gm-Message-State: AOJu0YzSe2Ss6w6At3FhFsuchEIwu2CLH4UW+aZHlBSXvLS9EIwXbrO1
	5DUofKZQnVdOUijJQhuYP5Y8/taglcN/fEmsmSnF1IQfMYdd+OPV95yJLuuVFMQ=
X-Google-Smtp-Source: AGHT+IHqsh+U8A2CY/6REXUe0YOPeKMZR1c3NhEvX0eKiRnqxaHtd16+71a1kqL0RUXl3lS0fgU3vA==
X-Received: by 2002:ac2:504a:0:b0:510:198e:6ee7 with SMTP id a10-20020ac2504a000000b00510198e6ee7mr121722lfm.18.1706221533341;
        Thu, 25 Jan 2024 14:25:33 -0800 (PST)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id bi28-20020a0565120e9c00b00510220e251csm111794lfb.47.2024.01.25.14.25.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jan 2024 14:25:32 -0800 (PST)
Message-ID: <485e5e2a-840d-40f9-a5d3-cfd9bf322e64@linaro.org>
Date: Fri, 26 Jan 2024 00:25:32 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 2/2] arm64: dts: qcom: msm8953: Add GPU
Content-Language: en-GB
To: Luca Weiss <luca@z3ntu.xyz>, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Vladimir Lypak <vladimir.lypak@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240125-msm8953-gpu-v1-0-f6493a5951f3@z3ntu.xyz>
 <20240125-msm8953-gpu-v1-2-f6493a5951f3@z3ntu.xyz>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20240125-msm8953-gpu-v1-2-f6493a5951f3@z3ntu.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 25/01/2024 23:56, Luca Weiss wrote:
> From: Vladimir Lypak <vladimir.lypak@gmail.com>
> 
> Add the GPU node for the Adreno 506 found on this family of SoCs. The
> clock speeds are a bit different per SoC variant, SDM450 maxes out at
> 600MHz while MSM8953 (= SDM625) goes up to 650MHz and SDM632 goes up to
> 725MHz.
> 
> To achieve this, create a new sdm450.dtsi to hold the 600MHz OPP and
> use the new dtsi for sdm450-motorola-ali.
> 
> Signed-off-by: Vladimir Lypak <vladimir.lypak@gmail.com>
> Co-developed-by: Luca Weiss <luca@z3ntu.xyz>
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> ---
>   arch/arm64/boot/dts/qcom/msm8953.dtsi            | 115 +++++++++++++++++++++++
>   arch/arm64/boot/dts/qcom/sdm450-motorola-ali.dts |   2 +-
>   arch/arm64/boot/dts/qcom/sdm450.dtsi             |  14 +++
>   arch/arm64/boot/dts/qcom/sdm632.dtsi             |   8 ++
>   4 files changed, 138 insertions(+), 1 deletion(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry


