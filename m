Return-Path: <devicetree+bounces-152189-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C59EA4845B
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 17:11:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 024D43B8E09
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 16:09:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0A071DDC1E;
	Thu, 27 Feb 2025 16:04:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="koQKNspj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC7BD1B394E
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 16:04:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740672250; cv=none; b=RwMekf+deajUcT+cqhAKK0eVqk/ZcYK2hFR0eMHwSEAquG4bzRl/BrYeW3qfkAVRjsWvYz9Ag9MGZWZLzUOtekK0YNynNSG0frF0sn3Tf68s/cUEnNEfs9znKWOa1MQ/CrGibHYsvIDMVX+hgAu2qbCz/idIoFRTl4TTX11kV6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740672250; c=relaxed/simple;
	bh=tyjvAD+adDTd//PDrw1nlWoUz+V/OCQOULIAUJl5qMQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bHVoJSPu//OGej/dz21WFtSDs8RpAzOHHJmD470Rvr+d8bZD/BwePrcwXPwDJvd4ytWJVgHUvwnhOJ7ww/02eYvWuc9RTlyNmlN9xi5qecsA2EmP4JfsHch4EU6x7p2RXOls9JdrQb96zqUDZtsgCe8oervzpxGJw4cT69+zwHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=koQKNspj; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-439ac3216dcso8321515e9.1
        for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 08:04:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740672247; x=1741277047; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LvIn24tYLHOsgb21p347DIWtQWK0Ha6hvZuB/OU8gA0=;
        b=koQKNspjSWudfG9DJfPwlQQTnrc2AX/QdoVrNc67zuepx4saVwpGStrcGd9e6CCsaM
         3xyre+69JFtI606iHO9Vn0ipMjdFVrOuxAy55K9SWwlf5ZF6vuU0SMkRhw42pMd5Of9e
         n8YMafu+0x1ARUzQHMgqB/n4p+VSwBzGg3FeT7wQv+5WYZJY/D/ylEwhQBjbaj263Z2a
         Xu8QPf9pOF15K5kbGAGLdOOVA/xZVLykYEysF5R4L0qMuBNACCAg6s8z3xsLR9G3afJX
         M1PQ5oaMO2zuCLtnJAyNnVZ/UOet18YKA2ydy9rP3A3Y5xigwwUWM+Q+RZweVqxa+0Pp
         ybaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740672247; x=1741277047;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LvIn24tYLHOsgb21p347DIWtQWK0Ha6hvZuB/OU8gA0=;
        b=iCnfu1hVrbqjhrOTThXum8ebKlWCUDFRe2BM9PDGm4k1I9FOMrVzxyIWJA4pJHSz1a
         Pl3/Bpi7iOLUdLzi+1Q4NtgLcTV04DSxOyHyCQtebEaliI1UYBCE9ZrRxuRgAZiOxbbS
         FPKlpL1j/jP7488M7GHQ12oZB8SyIeHua3cRZssMj+pj7V19XnSjm/LHZxi9OPWJBtH0
         3WrwSLV/mqnYop8yfUBbNAzNx864Erlo9uMKN9AEQE4BnuQh1S9BmV9eTVG+5OKsI5XI
         r4kq2cZtTu8pMrYijl7zyB7HWp6XZF97U9afLbZB1Yyx7DoMZ6L9PQ8Zu235+PjsYsFE
         VCbQ==
X-Forwarded-Encrypted: i=1; AJvYcCXF3CxdK2LR1pCP/Mrgc+4qEBT5mmugxFE5Zp0q070E/goav5UhM/zgOSZg6hhtCRL6sOgzFfTxfCO2@vger.kernel.org
X-Gm-Message-State: AOJu0Ywz5pZ7Zp5zMdMr9XTbQHt9WELBB5s5ppPW+tzkAHg8BR5LHVk5
	Ej0eNMz7O9LvdsDwHvLeSbyruXnbB1S3YFs2Mse8VOhlBc6f6I4yksdhpcxKa7U=
X-Gm-Gg: ASbGncv2zaLLfrNBy+5wR1KchkQS2SCO9rB38omXUWEinZqMMTQtFmn8xV18FrpvkEc
	giNhszykMZBoJypGizureSREmKNvr90nbdZ/vVrUdReFc3Iwb1hBCCSaM4jDhnwVcDyb3nVy1AP
	GRejeoUGUYAgFH0VTu4sdN+7OkZQeNobCgxiUS6INYIng1+oZ/vfFG7oYrUUdyDCPyZ4yH2YwFR
	mttRHn4pvxDMyMIXcxNczaR0muwiZ5iOO+GYs1Lu8JQMxXFDTHqM3PJcBct2q2d0veZvdyNzdGn
	CPcVZE8H1L9muZU4ehLBBs3WhJl45djZAHX+3+G8vQiVVvFFSFFkyC9CCodR+m4zv4Q=
X-Google-Smtp-Source: AGHT+IE3Ip9lM9pQRwKTBvY/WeuCuU31LF5zKSLs2OxofNzgwY3TCLJUZhTWGYeeFNNIo1VpBFTuBg==
X-Received: by 2002:a05:600c:1c1d:b0:439:9496:181c with SMTP id 5b1f17b1804b1-439aebdc9e1mr215296025e9.29.1740672246975;
        Thu, 27 Feb 2025 08:04:06 -0800 (PST)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43b7a27b27bsm27022515e9.31.2025.02.27.08.04.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Feb 2025 08:04:06 -0800 (PST)
Message-ID: <96208c2e-f38f-4d1b-aa6f-0b774359c2cf@linaro.org>
Date: Thu, 27 Feb 2025 16:04:05 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: qrb5165-rb5-vision-mezzanine:
 Drop CMA heap
To: Nikita Travkin <nikita@trvn.ru>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250227-qcom-nonroot-overlays-v2-0-bde44f708cbe@trvn.ru>
 <20250227-qcom-nonroot-overlays-v2-1-bde44f708cbe@trvn.ru>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250227-qcom-nonroot-overlays-v2-1-bde44f708cbe@trvn.ru>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 27/02/2025 14:26, Nikita Travkin wrote:
> Initially added, the cma heap was supposed to help with libcamera swisp,
> however a mistake was made such that the node was never applied as part
> of the overlay since the change was added to the overlay root ("/") and
> not with a reference to the target dtb root ("&{/}"). Moveover libcamera
> doesn't require CMA heap on Qualcomm platforms anymore as it can now use
> UDMA buffers instead.
> 
> Drop the CMA heap node. This change has no effect on the final dtb.
> 
> This reverts commit 99d557cfe4fcf89664762796678e26009aa3bdd9.
> 
> Fixes: 99d557cfe4fc ("arm64: dts: qcom: qrb5165-rb5-vision-mezzanine: Add cma heap for libcamera softisp support")
> Suggested-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Signed-off-by: Nikita Travkin <nikita@trvn.ru>
> ---
>   arch/arm64/boot/dts/qcom/qrb5165-rb5-vision-mezzanine.dtso | 11 -----------
>   1 file changed, 11 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5-vision-mezzanine.dtso b/arch/arm64/boot/dts/qcom/qrb5165-rb5-vision-mezzanine.dtso
> index ae256c713a36078afdadc67193f381a19ea8e5d3..5fe331923dd3cd31ff2be047a2228e1c4104e80e 100644
> --- a/arch/arm64/boot/dts/qcom/qrb5165-rb5-vision-mezzanine.dtso
> +++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5-vision-mezzanine.dtso
> @@ -9,17 +9,6 @@
>   #include <dt-bindings/clock/qcom,camcc-sm8250.h>
>   #include <dt-bindings/gpio/gpio.h>
>   
> -/ {
> -	reserved-memory {
> -		linux,cma {
> -			compatible = "shared-dma-pool";
> -			size = <0x0 0x8000000>;
> -			reusable;
> -			linux,cma-default;
> -		};
> -	};
> -};
> -
>   &camcc {
>   	status = "okay";
>   };
> 
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

