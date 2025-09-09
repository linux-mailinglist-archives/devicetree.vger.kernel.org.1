Return-Path: <devicetree+bounces-214893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E249DB4ACD9
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 13:52:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DBBD4445073
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 11:52:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EE0530E0C3;
	Tue,  9 Sep 2025 11:52:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ko8TPGDo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EC7D2F0C6C
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 11:52:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757418746; cv=none; b=H8MgjWwUx2Ka3bKIKsUKyYBZEEuvdEglZ5k+HfUH7cs6somb+kKkx/gUm3z0Mxuy/NZZUaE9W/r6O5co7InWAvzziWChZGeucy/v9m7fmz3gvMtRjEtocvr5K9aF+bBNOc2Hf0rysmxRavVFwCywxyOmDAKd7ONJdehT10IQULM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757418746; c=relaxed/simple;
	bh=w2OrIUCvxGjgSMhBWX6ZACIGKs9/croVq+jhJ82OqXY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZS/l+9tx6lfeYT3jUCm68+3MXjmTUonfPwFGM3ezd1Gi7cQyMm/C4ipJIgnbcAUbOztcDmndbz3qz+PcrAg/qCS0bTME9HGSpesvf7Qy5gJyy7anN2U5tu64hggPxFJttj5IL/fd133VN2uPhT8DyCt6DHCvYbqkskO394dAi6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ko8TPGDo; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-45deccb2c1eso7077955e9.1
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 04:52:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757418743; x=1758023543; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QXGtU590npYGoj4oICVTI2h7kmCmRCpE+pANWf6Qbi4=;
        b=Ko8TPGDo92M1qXGQlpRonr4gMJ3vgYr/gfndJj55R7+9RXhvCTJ1CJjsEYnKXoqVGi
         SSYtcMXPAGPdR2ay58ZNS2+Xc8x3AReH6UYiR+ZzcyUrOgSLOMi6ijb+eZXml5hu7g6k
         37BwlL63KLf5cdPgWm6pWH5/d6DZiHWxUpPMUYqMrg9HV250miBcrRZvWUROiDszHABB
         dCzkMEs+yGRojSSse0KxZeFmy+0Gly9OjBYcUO9VXnmQsJKDBNN+uOqdRAmKuQQGLcXK
         iOBapaDJfMa8NDwsGTNHBPR0Yn0CWJXqt+eTBEwQV4G5tZkIlcIV7EkmeRq3t/W72TNZ
         fKaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757418743; x=1758023543;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QXGtU590npYGoj4oICVTI2h7kmCmRCpE+pANWf6Qbi4=;
        b=U4nq3IRNwOPjs95L/z2GisOexiD2tm8LqSO/YHHI5DdYBLsf8ntlspymj6M3nSy0nq
         J08/YjFdZB0dKd6dkxUD6Ebh1TB1yrRnjc90eTrLJheKJLk7iiNAnqdeBhUh54/lCpBE
         y5/+vxxR4HmROuVUib6gI6P0WXRKI9oz7pD2hYrL/YHeClHrbjsGzpEpGXLn5n9Dx0yX
         l8HJUjv8hhHhxDTbamXhuR8RHrnuivCj3n4TtXobDLNlqAJ9AS1oF5Zk3KeBE0+oOKrn
         kLeAToUvsHKiMDttHgQEEDo0m7PWygbtGFP/1z6DwQLkWt+u7yOZ2CeC6grB1bB0ECNr
         NicQ==
X-Forwarded-Encrypted: i=1; AJvYcCXAEQ/c3FrFYPFTRW1TinzbWMVwiJGdwu2FzUkI3IeaNLAGGHGSIfWgAHd1pquh+l2okImfROVnJOuJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yxn8eD6sg6AG1lGADs5LhjA7reTvo5UO/aYJOHGjvgY2twCIDOI
	oW7otfchyArQ5xNuEHOzC/c6of88RVO7Ws75bi0x1QJvv9v3IcadvK91F9igAu/voaA=
X-Gm-Gg: ASbGncsSkz0iDNsd5IDbxkNy6ltwf0voScIv+rRYrP4Sdi2rCcN2T1heWAkj1prxOp3
	GUvLGbWCCVq2BFAvxBzcan1Ffz37AE8K7R+JnztykEv/4hHu311TkBpHsVY/kLvpmytjdiGe1N1
	WApHRCIK7HSUJwmKEqVVitH+QVbtlOHgtZ1T41sTfUEW3df5xId+28kP1RKd8XjwUca9K51o3jA
	BLo6O85e8oQgqEXe7gheG8TxrdN7K6gix7v5xMvWuEyeXS3qT5BQ80FKSrH7BAHENLTuqf9zIjk
	eyeKndBxF3tG1BC9C7R3tCnaOG5eLAc4G3qNE6FyMW/EvFPCT9dnnUDwoj6q4YhZFpTfTnYIER/
	vYsh/I7aLzdi6reZGB9g9iO7DROeIQJHj9IQSTiI9cOU1onC/lJcYBpx204C7S0UK6Jv23I5GxG
	bd3rVLUKoc/kOhaPLGaF1CAvnFh6nmEw==
X-Google-Smtp-Source: AGHT+IFBwGxPLPPfzkQid/eqWAjFaBlrJdMzc7K78u4G3kBOTKirNH0Ail+EfDwQ7kJAYlz2Kk0KMw==
X-Received: by 2002:a05:600c:4ecd:b0:45d:d5fb:1858 with SMTP id 5b1f17b1804b1-45dddee8e80mr94844295e9.21.1757418742913;
        Tue, 09 Sep 2025 04:52:22 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45df16a749fsm16413565e9.19.2025.09.09.04.52.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Sep 2025 04:52:22 -0700 (PDT)
Message-ID: <cc9a5ee4-76d5-4efe-a39d-d4ef240b2aeb@linaro.org>
Date: Tue, 9 Sep 2025 12:52:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] dt-bindings: i2c: qcom-cci: Document qcs8300
 compatible
To: Vikram Sharma <quic_vikramsa@quicinc.com>, mchehab@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 andersson@kernel.org, konradybcio@kernel.org, hverkuil-cisco@xs4all.nl,
 cros-qcom-dts-watchers@chromium.org, catalin.marinas@arm.com, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, quic_svankada@quicinc.com,
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250909114241.840842-1-quic_vikramsa@quicinc.com>
 <20250909114241.840842-2-quic_vikramsa@quicinc.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250909114241.840842-2-quic_vikramsa@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 09/09/2025 12:42, Vikram Sharma wrote:
> From: Nihal Kumar Gupta <quic_nihalkum@quicinc.com>
> 
> Add device tree bindings for the CCI controller on the
> Qualcomm QCS8300 SoC.
> Introduce the "qcom,qcs8300-cci" compatible string.
> 
> Signed-off-by: Nihal Kumar Gupta <quic_nihalkum@quicinc.com>
> Signed-off-by: Vikram Sharma <quic_vikramsa@quicinc.com>
> ---
>   Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
> index 73144473b9b2..d50359019501 100644
> --- a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
> +++ b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
> @@ -25,6 +25,7 @@ properties:
>   
>         - items:
>             - enum:
> +              - qcom,qcs8300-cci
>                 - qcom,sc7280-cci
>                 - qcom,sc8280xp-cci
>                 - qcom,sdm670-cci
> @@ -223,6 +224,7 @@ allOf:
>           compatible:
>             contains:
>               enum:
> +              - qcom,qcs8300-cci
>                 - qcom,sm8550-cci
>                 - qcom,sm8650-cci
>                 - qcom,x1e80100-cci
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

