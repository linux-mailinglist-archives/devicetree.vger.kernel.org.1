Return-Path: <devicetree+bounces-66288-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8719D8C250A
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 14:47:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 07CCAB21902
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 12:47:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F60E127B5F;
	Fri, 10 May 2024 12:47:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UEzyeguv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A71E338DE4
	for <devicetree@vger.kernel.org>; Fri, 10 May 2024 12:47:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715345242; cv=none; b=ILUpmAKLb/VTgkF8CMnKlOVH9ZNbxJ3mSvvudDpYv7E4ZdLTXVtXss8JQNfUl6Q2+iyoONpFxwBm3m1RDr10Y5Z6DsPWGOwthpV51L3141mPybK3NZXgiMuu2j+830imVFCNOUN4zVH2xJ5dqsW8vAWP2EKLhGvUjoInuQPEVqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715345242; c=relaxed/simple;
	bh=d1GYaWihPIxQCVEXmbw32R+gKUSLf8Nx0BPKiUM0VBg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Vge1RXqb9vllEGcISZLEYT7/dANj5E/sFN05Py5a1P1sd2OOJPWMzk8i3Tl7RtNCl0kOGWJ66C2Qr/rQWUy9MqOw7RbSTX98LYfTicRu7jEgPKw1kUmtMASnruxoPtyDeXu345VmTUdrc0i01OIUnG1iG20P2uSFW07Oo2wqnps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UEzyeguv; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3504ad82a64so706145f8f.3
        for <devicetree@vger.kernel.org>; Fri, 10 May 2024 05:47:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715345239; x=1715950039; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nxXptygVxzs9ZyI1NnjxnbgZkUJZH8Rb2+KbP5uaxLQ=;
        b=UEzyeguvMY67ZN6AnPQutCfXP9Bm6P655yrqDXXUFrh94qXwLS1aFGaE7FTGW/TDUc
         s/lxjvUKW8O1OyIt2oG6juBYL8WvsJnsR//MZz8jXHM0veJjSg45CnD+6BReIBdra3tk
         NJ9K3IdrM/XG8uvrtwKWYQi0AoUAtkkzQESCBtboT5KZtD00M/eVT9LBSqTGrV0oH0Vs
         hW1WKYwTFVtF0AGoxgPFNIUAjnW0wWYV3/FpKS3RbZuKUoVaB+SXlv2iVeo5BfvU8Hwb
         wD9bD3bI9O2c5YMbXLF4NK85xEq1KG/hqKH+tscGL+UVQkG2KBGZQlEcFfFYDnUY0Ib3
         oNMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715345239; x=1715950039;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nxXptygVxzs9ZyI1NnjxnbgZkUJZH8Rb2+KbP5uaxLQ=;
        b=LnyZ6znUy+RQkDhuMxP+OoU7buBPlz6fn4vT4+f2ANLATc/j5yaGHA1OL5+v01R9G7
         GtNwzPNnCnlqOpv1oQ73A74yUnJxuPiAd989bQnfxH9YV4DE02dCWe9GEOj5zKBB0yiD
         9r4dsmRx5xXbVV3ZLG5zAdQo8gcNhIb/2LvIu2VCDM5LeD8nCgVREPqYV3i1317MSACD
         DazqCZIEP8cei9pqj0cVviBrHVyj0VdNKRoG8QEuPa20goAYyIYpSwZLfWEfQXc4mpRI
         Ty/SuSirYxEKqAYr8/dvxzaMnIpefM0reaamqY5HTUzKyfuksfIobGVY4gfdyYK0T2Eu
         Ggvg==
X-Forwarded-Encrypted: i=1; AJvYcCXtjUMNUCIOqffD1Lb3u4XP8BKrKPkzmNVuafHn06O/IwH9C5GBm3og6uoosBVIidWXcW5pgt0VKANgdz1HeLpDMoypYTyit7Sv4Q==
X-Gm-Message-State: AOJu0Yw6e5Hji8EB+d0zO0isabO0TFxuefzBfnafECEBs6pfrG7Euhmz
	EtpaTYa0KD0b0Wu1g7eb2cf5jSRgnOLfjnHB1Q8hMGvF2ax9Dbq3J/HnvY6xWTA=
X-Google-Smtp-Source: AGHT+IFnaBBeY7mvmHhC8XodUmGtkP//yvCKoGTsTYjDvg3yXGfKBRrDcS+5v3UnOzhL11SsQT6XKA==
X-Received: by 2002:adf:ce0e:0:b0:346:ad3d:e4bd with SMTP id ffacd0b85a97d-3504a631201mr1870321f8f.17.1715345238912;
        Fri, 10 May 2024 05:47:18 -0700 (PDT)
Received: from [192.168.0.3] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3502b8a79cbsm4481566f8f.65.2024.05.10.05.47.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 May 2024 05:47:18 -0700 (PDT)
Message-ID: <a6e75f97-0479-4346-af84-5d7bd05f0063@linaro.org>
Date: Fri, 10 May 2024 13:47:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 31/31] arm64: dts: qcom: sm8650-*: Remove thermal zone
 polling delays
To: Konrad Dybcio <konrad.dybcio@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org,
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240510-topic-msm-polling-cleanup-v2-0-436ca4218da2@linaro.org>
 <20240510-topic-msm-polling-cleanup-v2-31-436ca4218da2@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20240510-topic-msm-polling-cleanup-v2-31-436ca4218da2@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/05/2024 12:59, Konrad Dybcio wrote:
> All of the thermal zone suppliers are interrupt-driven, remove the
> bogus and unnecessary polling that only wastes CPU time.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sm8650.dtsi | 88 +++++++-----------------------------
>   1 file changed, 16 insertions(+), 72 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> index 62a6e77730bc..39e789b21acc 100644
> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> @@ -5328,8 +5328,6 @@ compute-cb@12 {
>   
>   	thermal-zones {
>   		aoss0-thermal {
> -			polling-delay-passive = <0>;
> -			polling-delay = <0>;

Commit log doesn't really match the values being subtracted

polling-delay:
   $ref: /schemas/types.yaml#/definitions/uint32
   description:
     The maximum number of milliseconds to wait between polls when
     checking this thermal zone. Setting this to 0 disables the polling
     timers setup by the thermal framework and assumes that the thermal
     sensors in this zone support interrupts.


