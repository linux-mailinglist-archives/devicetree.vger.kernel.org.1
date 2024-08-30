Return-Path: <devicetree+bounces-98356-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 06F6F965DD4
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 12:03:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B2BF3280DA4
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 10:03:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 016A117A5B5;
	Fri, 30 Aug 2024 10:03:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="H400yGP9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4B0165EF0
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 10:03:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725012190; cv=none; b=AnDjBDRjbLm798mbDMdVLvHOCEaFuknkOzwccOdsPJlltZ6rfnfg2QlrEKTe24cFDWdrzmA+zul4mjgBmn73L+aTszMzxymtlHSue/F5L1Etw13Nln8uvNMD/HU61Dsh8u5M9JwfV0j+4UpUuIXt/rjLc/txKE1Gdgx0BjE7C9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725012190; c=relaxed/simple;
	bh=NqhjObR0g9TCYXeFBy689P7XtTE/aSC8eOkRnrHvMoE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=p+/7JUGvQkrbA64TtLIryRoSvMq/DWmIoV19F6yFNh+EvKjj55XKPnMDJG+D+EQ9ngo1ofy7z2EOnznVuuM1SXGA+t68neh3tIP1xVERaE1qQ2H24U9qurxoovzyfgWXB/QRQBz/Ms0bqm663s8Qi7T8IWAwHK9pU/o7pqcneC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=H400yGP9; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-371c5187198so1044596f8f.3
        for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 03:03:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725012187; x=1725616987; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qxNjZhoM7onVU2zrGpQRDH7iioLmSzrhARxnbxNi4oo=;
        b=H400yGP9guY0PL6tvos0hU/AWX33hcyI542QcW9zF0I+CLLhoFTFW5a8ptNQSpeVcO
         20PA4LyigK+NcmdE6EXms10sE4xjeLvE0CRDcm4tcFE0Wd8mQdw7qYQwOMrTadn/3a8b
         dqB7WPH34d8HmfD8xzLl9kD/gjubX7rGGTDyASxhPR8qfN0MYr81nqGu4J+A9u/P9KlH
         LInf+ihnfc9xwhIXxHySj1aEE9vkSCsF0pqiz3qY8pI8BHxs8c/9+vzw9NdiDGte/O4K
         SoLza25aC2IIO/0J3ItXhYinCskboCsZV+NcFAJWB+UqWdZDMqZJ8NFZ4jyvnA6L/hHN
         TrEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725012187; x=1725616987;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qxNjZhoM7onVU2zrGpQRDH7iioLmSzrhARxnbxNi4oo=;
        b=JynpoTY6MMMwaFwSRj++QhN/a7WKkIqYmTY1yK3IpOvKciO2rkHULpqewa+iln6fp6
         BBw6fRMD6nHmgBMiFoXJHLJ6/acCrymvPBt4hXWdy5Lg0nHJfj5h+Micg0a8fcsk+Tzf
         ZfCX/irvNaLm+157frfP+aY8H9GtduAygqLnER14b6U1KnOne29aNwZmyYO61Up0tGmx
         5hAHJqEsjO/b2TJ4wBFDb3uHUZgHdi918kNItuEQlGkXZP6fyW0BypE0/szfobmtfzPU
         D99PTDKN0PpsNzBTSDOJn5wznOihthVP0mBHR3dW3JJwZ6umSuVdKR4r09K8qEyvHkZ2
         xmGw==
X-Forwarded-Encrypted: i=1; AJvYcCXHxIwH46ClaCsdqUZ5zD+OrQ4Td61iUGh31egkWigqhOUuByh5hkKiEK/LJf2RKJvWr9j2wHVIv9wE@vger.kernel.org
X-Gm-Message-State: AOJu0YytP8g82nzDxmld3R1Keudqi9Pw4WhdDSKCUbzlcU/iKR17+Jat
	Hx0y5NGGMQAgtxeGr4E0AG12PXy0oEHYaGvPVMA9DTHYjL1QRRLd+Hxewrz41+M=
X-Google-Smtp-Source: AGHT+IEqLDsJayD8XgCGU9psowjIY4L1MQWk2w1r9Q3HY/0cyRniVQdk4bnIrCcTrGIQose0nQkV6Q==
X-Received: by 2002:a05:6000:104c:b0:368:3f60:8725 with SMTP id ffacd0b85a97d-3749b57ecccmr3653958f8f.39.1725012187430;
        Fri, 30 Aug 2024 03:03:07 -0700 (PDT)
Received: from [192.168.1.17] (host-80-47-105-51.as13285.net. [80.47.105.51])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42ba639da86sm74008015e9.20.2024.08.30.03.03.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Aug 2024 03:03:07 -0700 (PDT)
Message-ID: <df059de8-0240-43d4-8d9e-c0b113db47d2@linaro.org>
Date: Fri, 30 Aug 2024 11:03:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Betterbird (Linux)
Subject: Re: [PATCH V3] arm64: dts: qcom: Add SD Card node for qcm6490-idp
To: Sachin Gupta <quic_sachgupt@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, quic_nitirawa@quicinc.com,
 quic_bhaskarv@quicinc.com, quic_narepall@quicinc.com,
 quic_rampraka@quicinc.com, quic_sartgarg@quicinc.com, quic_mapa@quicinc.com,
 quic_cang@quicinc.com, quic_nguyenb@quicinc.com
References: <20240829121225.14184-1-quic_sachgupt@quicinc.com>
Content-Language: en-US
From: Caleb Connolly <caleb.connolly@linaro.org>
In-Reply-To: <20240829121225.14184-1-quic_sachgupt@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Sachin,

Thanks for the patch

On 29/08/2024 13:12, Sachin Gupta wrote:
> Add SD Card node for Qualcomm qcm6490-idp Board.
> 
> Signed-off-by: Sachin Gupta <quic_sachgupt@quicinc.com>
> ---
> Changes from v2:
>   - Corrected patch version.
> 
> Changes from v1:
>   - Define sd_cd node. (Thanks Dmitry)
> ---
>   arch/arm64/boot/dts/qcom/qcm6490-idp.dts | 33 ++++++++++++++++++++++++
>   1 file changed, 33 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcm6490-idp.dts b/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
> index a0668f767e4b..95d5cf2d9bcd 100644
> --- a/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
> +++ b/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
> @@ -641,6 +641,21 @@
>   	status = "okay";
>   };
>   
> +&sdc2_clk {
> +	bias-disable;
> +	drive-strength = <16>;
> +};
> +
> +&sdc2_cmd {
> +	bias-pull-up;
> +	drive-strength = <10>;
> +};
> +
> +&sdc2_data {
> +	bias-pull-up;
> +	drive-strength = <10>;
> +};
> +
>   &sdhc_1 {
>   	non-removable;
>   	no-sd;
> @@ -655,12 +670,30 @@
>   &tlmm {
>   	gpio-reserved-ranges = <32 2>, /* ADSP */
>   			       <48 4>; /* NFC */
> +
> +	sd_cd: sd-cd-state {
> +		pins = "gpio91";
> +		function = "gpio";
> +		bias-pull-up;
> +	};
>   };
>   
>   &uart5 {
>   	status = "okay";
>   };
>   
> +&sdhc_2 {

Alphabetical order please! This should go after sdhc_1

With that fix, please add

Reviewed-by: Caleb Connolly <caleb.connolly@linaro.org>

Thanks and regards,
> +	status = "okay";
> +
> +	pinctrl-0 = <&sdc2_clk>, <&sdc2_cmd>, <&sdc2_data>, <&sd_cd>;
> +	pinctrl-1 = <&sdc2_clk_sleep>, <&sdc2_cmd_sleep>, <&sdc2_data_sleep>, <&sd_cd>;
> +
> +	vmmc-supply = <&vreg_l9c_2p96>;
> +	vqmmc-supply = <&vreg_l6c_2p96>;
> +
> +	cd-gpios = <&tlmm 91 GPIO_ACTIVE_LOW>;
> +};
> +
>   &usb_1 {
>   	status = "okay";
>   };

-- 
// Caleb (they/them)

