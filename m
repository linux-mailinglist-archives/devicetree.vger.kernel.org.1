Return-Path: <devicetree+bounces-69838-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 031C18D1B48
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 14:28:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B2C872861DA
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 12:28:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E94D16D4F6;
	Tue, 28 May 2024 12:28:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MhLPtL2d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 958A216D4FF
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 12:28:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716899297; cv=none; b=cGJ4q2pI3K0hF7nWhRX1d0wu5B9IiPsT5pOBpkWIMApg4SIgaMt76Jd20ZWkGDEmp2evgk0xbuei4hpXeIYXtL8f5PsSUwcmKdFbA39CCoEEGs4viUodfWMNiZRs+PLGEHcicoacZO9N8Nj3tVGk4qJ5vwlL6ISFpdxyl/tj5qU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716899297; c=relaxed/simple;
	bh=gfouMYV/06+BHL/0bAd6EAcNAZoOTw8W+qLqYPqa1OU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jA7JG1Y/SUz8MBc2uZSBK3iihYveigyIrGgqsmQxq3mBP8VMt2vLQuMhIamFBCWCHuPIjpmedY1eJQhg6IMPanAuwFWCKYIbCXrIDYmwhlSVBg3H9z6rT/1eFwDAxDhM0UWg2CV4jpyNGbn/JUkROhMl/3viIB1f6UpvKAkxiIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MhLPtL2d; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-5295f012748so1001756e87.1
        for <devicetree@vger.kernel.org>; Tue, 28 May 2024 05:28:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716899294; x=1717504094; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AOuf1rNiHEqjRIxx7oHLdZte2vsAcehwFkh3KgmNv+k=;
        b=MhLPtL2dHrGJ2o3L5dUIld5meLRgD7oMCyLwhgAYT5AX77s3t3JDOH3lkITuJVaavF
         7/mCKUXm2Zv8wcJWFU+LJKuLPPmqJ8cPXBB7hHTqFdg+E2+BxBUxSrRZ9SK4e2aM3kFR
         qaWJMghUX+n2NB3quooDBWDnAKTwRhB0WNbz87OVyvNe5UYm4i6XaT7H26AUJSNBdVGZ
         twgwiWDY5UfxKqVJhiiPyzCMW0eKADE0ay412YPDCC9ZT/WaXwRUsL8GrOVozt772hi2
         ilgdOO5iW0UZlXM2flQUk5oLURDMQ6t0m139bWQzgiQOjylBn9SkajKfL787jIRQoBIn
         GMLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716899294; x=1717504094;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AOuf1rNiHEqjRIxx7oHLdZte2vsAcehwFkh3KgmNv+k=;
        b=Ma/CjMfAh401o14OxgoEidvkKQqF68jETvn1ImMFZfDTwNHCZdavkodIeB1ssdX5zP
         T1Ng2ALDMTOMhipNd7EbB90b8oMNJyz7mnlhVi4ogE7IhEQl+uHVV1iPCpp1pr7U/fcr
         wqMOC7HvuYwuqP0g+wAbg8E3J836Bsj1ezcgStpGiQi8nZqbPDdUtSJZl1QoVEyhF5KK
         AoPJVuT0P0MYT0AS7BlU8tLqlV1AkPQ4OiPmVeIVgSqkIBNGQd8I8SRlnnCnWgm4l+ig
         PcX2RGus0sYjKCQDZ/5NmPR8OilnpjXjA+hzeDdzbyhCinuSjPu+THAWsE9/JBeBZ6Fm
         M9yA==
X-Forwarded-Encrypted: i=1; AJvYcCUX2yMjhimGwkQ2mux/nMIFHtgBe48ht0e41ySvvwvwLSXOXscNm3dBziEpbnvVh2WOX7ldAe10ANw5cIcTruNeCCtL9P+hs1sLCw==
X-Gm-Message-State: AOJu0Yy6xK/woRgv1kNSb5vxBFODeVFqIh/1yU/Hz+TN3wPONabwu14y
	uveaaQnA/ecvlPMkVB7Adcl0YCXrf9aXPPVsfUWynlNldBaWV1kzlFGsENzf5jqPtcxhtk+Zwox
	w
X-Google-Smtp-Source: AGHT+IGfLl/jpqILtIojTGh4cDkPEbEGQQOhY0bVSNspFg/dKAiACdONA9Zkl13ynZ7NG50BdEBj3w==
X-Received: by 2002:a19:435d:0:b0:523:6a08:1c91 with SMTP id 2adb3069b0e04-52964ea97a2mr7518620e87.26.1716899293468;
        Tue, 28 May 2024 05:28:13 -0700 (PDT)
Received: from ?IPV6:2a00:f41:c97:23a9:35bc:df2e:d894:2c76? ([2a00:f41:c97:23a9:35bc:df2e:d894:2c76])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5297066b067sm956720e87.168.2024.05.28.05.28.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 May 2024 05:28:13 -0700 (PDT)
Message-ID: <68e51df8-5553-4df7-91f8-65bef924a407@linaro.org>
Date: Tue, 28 May 2024 14:28:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: qcom: x1e80100-crd: Add pmic-glink node
 with all 3 connectors
To: Abel Vesa <abel.vesa@linaro.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240527-x1e80100-dts-pmic-glink-v1-0-7ea5c8eb4d2b@linaro.org>
 <20240527-x1e80100-dts-pmic-glink-v1-2-7ea5c8eb4d2b@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240527-x1e80100-dts-pmic-glink-v1-2-7ea5c8eb4d2b@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 5/27/24 10:07, Abel Vesa wrote:
> Add the pmic-glink node and describe all 3 USB Type-C connectors. Do this
> for USB only, for now. The DP port will come at a later stage since it
> uses a retimer.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/x1e80100-crd.dts | 143 ++++++++++++++++++++++++++++++
>   1 file changed, 143 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
> index c5c2895b37c7..2fcc994cbb89 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
> +++ b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
> @@ -49,6 +49,101 @@ chosen {
>   		stdout-path = "serial0:115200n8";
>   	};
>   
> +	pmic-glink {
> +		compatible = "qcom,x1e80100-pmic-glink",
> +			     "qcom,sm8550-pmic-glink",
> +			     "qcom,pmic-glink";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		orientation-gpios = <&tlmm 121 GPIO_ACTIVE_HIGH>,
> +				    <&tlmm 123 GPIO_ACTIVE_HIGH>,
> +				    <&tlmm 125 GPIO_ACTIVE_HIGH>;
> +
> +		connector@0 {

Could you describe them somehow? e.g.


/* Left rear port */
connector @0 {


There is probably some better terminology to describe the one closer and
farther away from the user, do as you will..

For the QCP, they're numbered on the chassis

Konrad

