Return-Path: <devicetree+bounces-62379-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ED818B0EE8
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 17:44:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EEB9029476A
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 15:44:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1D92160794;
	Wed, 24 Apr 2024 15:44:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Wo9bEsve"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F0FE15EFDB
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 15:43:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713973442; cv=none; b=nuOgu2EM9EaT2mlsm8ZyYAQ6NnGMGM17y6Bw+bmlrE0u8EsooJDsTrq+RHcBCYqIGaonLRKpccPT50G4Pe+r4NWUg76NnJ+sSwR3xF5Y041CnK9wXXfxUO4NHxWerB8D/aTEU1vAkWVYPl7uBvlO0Ycdqnw/+IbHkuxzsRL2U8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713973442; c=relaxed/simple;
	bh=Smn1thELJe6H8Hi4QwFeVCA2i/KhGRWxi/C3KjKLf4A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=T1DgNT/dbx9g7O0QrnSFzvLolYXfCdOG/F+t6NlpObH7HCNdwTSNskmXXGsWxMz/n+82eJM29WbXEo2KbyZi8mz6kcF6Ar9/UxZHyVa0uQkOOofOmXbLIYP1X9FhWXneNlOUF6297aQi96W3AdGv0G6rbi63nLY8UaXBwvcZ1nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Wo9bEsve; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a58772187d8so690966b.3
        for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 08:43:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713973438; x=1714578238; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VNhQouszyO4G6x+Wog6/QhRAtYiInd0o+cfFBd5MkXo=;
        b=Wo9bEsvel6gVXBdrRm/0gns+ED6qsGq/tHfvU6D5JBELEi14+W6uJvYHz7wZxo2iDu
         1rFHFOVnKd27FchUAkkOzQWESOrnFOvAf1zr9bRxdb8soAqyI7BQ4gizGDOoaNteGEPA
         ch/n1NM9ZZ9AmEamq0S3Cu/RPfjjMOVy++dyXucakLK0sJ49NWzwRLvnq+N2P7SNpjiF
         VvNVH31SmriJeXI1g8tJbq/pKKJmHF7BLQ86FZx3LMtqM48Cxr1B2WSmqGXXg0T+9l06
         E9XwjCAVY1lVBS/c2lR+aEJnh7YYCCnyd1W2p7Z7nQU+JedRCEx59TpB2GOf+JCwko9a
         hhvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713973438; x=1714578238;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VNhQouszyO4G6x+Wog6/QhRAtYiInd0o+cfFBd5MkXo=;
        b=JRoAPud/wZ9yTUdJiKw/scPUJeZ+OJHInksLFKjqYu/jcd4oEYNa7whCmPa68fWfrc
         rxkYqA+gqqb9eUnIspCeCdAssQlHjBetpORVnKwou8OHdudU3VREsXd+IxA5ZkMwAuqh
         tq70rbJ3r06Tx2PxYjnoi7YJ6QsaM+2fe/OZPdPdqKxo0nXkM4Vk96EFfpzDPEHvZuGA
         E8DJdP8JwgXvBLIu5EolysM6b44Lte6ZkbmYDkOQoETMQjNnvl3UKYdHrfRV67IjyOBs
         Ok1i5py1iN5Yh/somUHAGzrIeCuVGG4+bz9MQpT+/wS7GA/66PQHydnPIMAririEu0YL
         SEvA==
X-Forwarded-Encrypted: i=1; AJvYcCUS22MF0A3Kx+1wYzfIW+oadeXkcsIV8kmtXBkRQIyngdcKU06JY6bSCX63DwgtDVf8EGgcguozUf0/D1FPF3ZVx5uIkl78j/FJBQ==
X-Gm-Message-State: AOJu0YzXVGqS+7qjJXviN+sASn0tz5aUmHoMw3geclj0rC1Adgj6CKC3
	r1vVe5w6/8h2Qz8Vqb6rXCVfUktimE+UNhJjjHNLW7JkQuejnA5J9u2ASg7PlI4=
X-Google-Smtp-Source: AGHT+IGbXGrpnubvU3fB+twJxorCJaNpth47KfqOPWrUQ5JuHE+TeN75cbmD+qlTh6lLqPPbiQHdkA==
X-Received: by 2002:a17:906:a996:b0:a58:8662:1f06 with SMTP id jr22-20020a170906a99600b00a5886621f06mr2463128ejb.56.1713973437807;
        Wed, 24 Apr 2024 08:43:57 -0700 (PDT)
Received: from [192.168.0.102] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id i9-20020a170906090900b00a55b05c4598sm4459714ejd.133.2024.04.24.08.43.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Apr 2024 08:43:57 -0700 (PDT)
Message-ID: <aad0e811-28ff-4bbc-b5fa-691701d35f01@linaro.org>
Date: Wed, 24 Apr 2024 16:43:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/10] dt-bindings: arm: qcom: Add AYN Odin 2
To: wuxilin123@gmail.com, =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?=
 <u.kleine-koenig@pengutronix.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Junhao Xie <bigfoot@classfun.cn>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Tengfei Fan <quic_tengfan@quicinc.com>,
 Molly Sophia <mollysophia379@gmail.com>
Cc: linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-msm@vger.kernel.org
References: <20240424-ayn-odin2-initial-v1-0-e0aa05c991fd@gmail.com>
 <20240424-ayn-odin2-initial-v1-9-e0aa05c991fd@gmail.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20240424-ayn-odin2-initial-v1-9-e0aa05c991fd@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 24/04/2024 16:29, Xilin Wu via B4 Relay wrote:
> From: Xilin Wu <wuxilin123@gmail.com>
> 
> This documents AYN Odin 2 which is a gaming handheld by AYN based on
> the QCS8550 SoC.
> 
> Signed-off-by: Xilin Wu <wuxilin123@gmail.com>
> ---
>   Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
> index 090fc5fda9b0..8e991f2bd9d8 100644
> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> @@ -1003,6 +1003,7 @@ properties:
>   
>         - items:
>             - enum:
> +              - ayn,odin2
>                 - qcom,qcs8550-aim300-aiot
>             - const: qcom,qcs8550-aim300
>             - const: qcom,qcs8550
> 

Doesn't apply to -next

Patch failed at 0009 dt-bindings: arm: qcom: Add AYN Odin 2
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
error: patch failed: Documentation/devicetree/bindings/arm/qcom.yaml:1003
error: Documentation/devicetree/bindings/arm/qcom.yaml: patch does not apply
hint: Use 'git am --show-current-patch=diff' to see the failed patch


