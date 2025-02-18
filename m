Return-Path: <devicetree+bounces-147976-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 602E6A3A1AE
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 16:49:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CE4AE7A3F26
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 15:48:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E35E226E14D;
	Tue, 18 Feb 2025 15:49:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nexus-software-ie.20230601.gappssmtp.com header.i=@nexus-software-ie.20230601.gappssmtp.com header.b="v5LlfeBM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E54EF243379
	for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 15:49:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739893772; cv=none; b=ol2PV1pfTHlUmaEztAwYUJ59zhN1h4JRBFUrPHxC8izseh4Mav02bGQzKAqRI1TOilp6VeJlRwDbc5beusfa74xLJm+dHXiwttOiZH1MNZKwn4b0LCKsvJFAQ9rTwX1o14fyi66XQWpqcF2Ry6zrMbXCErmkdjbqgKxar51iZb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739893772; c=relaxed/simple;
	bh=KnYpb6bE0eyQCr84HbKFpqpurHoiaGGJGPLTOYYxz18=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Y4b1n1AzDpZnLAc2hMDVKEtIX15jBSY4uBsCo9oak2XmyTJSLnUU5A58MzX0s6vzpnYqUIrTTP05dW+QbKEqzK7MPeFLUjovIxpfzTLBYpYdmRuRO1qGUsDD9SG4skTndSjRiUuSds9mwH9f0UrUQHfSZlYKSdcH/EHFXbfRPRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexus-software.ie; spf=none smtp.mailfrom=nexus-software.ie; dkim=pass (2048-bit key) header.d=nexus-software-ie.20230601.gappssmtp.com header.i=@nexus-software-ie.20230601.gappssmtp.com header.b=v5LlfeBM; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexus-software.ie
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=nexus-software.ie
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-38f3486062eso2582006f8f.0
        for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 07:49:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nexus-software-ie.20230601.gappssmtp.com; s=20230601; t=1739893768; x=1740498568; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=k5lpfrcaL2Is2w5mfT4nI0tpu6NUg+OVNgUbEulgO5s=;
        b=v5LlfeBM+1XbvFnvDOUwev5A72L5lowwCEGWlDMQrlsi17LyMPlFW5IITO+ETfxUrM
         Ns+81FZ0ndU6Q/r6wYTLxsGblbhITj75UV6122y0OuYNO+P3N0wuLVvUaDNW5N/yrgUt
         AA5dtoXdi9BMOjrW9gc9a2A6Tnmf3+O/vqFx66CepAHcruNlpe83sauTdT/yFT/kjbiu
         jcTRuxauGTKPb5O4CitP9pHBh9qlMOSMNe9x8WQbX+P7uTXrxwZOCa9oK+XnVHqFe9Mq
         OHduk5vBuINEU4groW8C7TUAZ95L1YVAHtyvzR5Cj7E/MouachcvZle/PsmUOLqCixKd
         MN6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739893768; x=1740498568;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=k5lpfrcaL2Is2w5mfT4nI0tpu6NUg+OVNgUbEulgO5s=;
        b=Ikj8exFT90VA211B+ND5iXicllq/Zl07972Tlq/FybCgehOj5/FkrronnYbMQFL37/
         qXiinIaq2h95liFw9jnNUlz7e6X1tN7c6YwsqNiuNaWKjnwNBnJOGv6evNPrwymNTqJ1
         yEIGxN8qsnTnuhVaT+RdrlUSnZ1WPPNAKAgzkbKGu2WW9phQZovH4FVa7voWx4B/hjb+
         FAAAyfvvjDaLLdel5Hu73GqQUogFr4A7NOYakjgGQsHnigKZUIHy8wM8LUVtvpu85Lkg
         gFIZkHrERnxjpUqTgiUSRA/4cdmKGc9ymV3qmJcgWmxcc7Cq0lorxoFXBrr3oTnqMqt/
         CTtA==
X-Forwarded-Encrypted: i=1; AJvYcCUgWmqCnP2FvKtJ5RrXWRcm+0eag1qVBr0FpoxQCiNfWMarGa4jZ5sROmL10U4ay/4b1f4mOs8uBVOu@vger.kernel.org
X-Gm-Message-State: AOJu0YwFpa7mLtEGuWKUp0SFOmqzSeRR/hX/ccQ9c7TxnPwDoPIDPggm
	QDZdZ1STW/VEjR3hiqwH4IPzPh3pxyl3B2eRDmXYp9by5ub8rbNmOcK5jbvP3rI=
X-Gm-Gg: ASbGnctTbO8eIhsrA7Qj3ubnIx3tGW/qsM2uYb+go6jvIBRROPJjGcsnxPItxXkS5Lk
	jryMecMwUt17koRdFo/KmpEYYkiAmx4woMTAOvFlnHEbQckLFfEzXgovFutW+OqF7tB3eynAzmg
	54HijGr8XE2LfkQJ1iBprgHYpKH06EoxwYrlEmDUrHwS/aFXzfLHN/5oilLx30wCMY2NSGQ751/
	fn3ZdFqVd7gutlcGQC1xYDilHanjOzlqA13giErfZ2BGTRPw35/vQRFw7nB4zvtaQjmZRxPcMZu
	p2y0P7oxkZ4b7sg6JEwJhCROAtHaXHcdmkSMtABgWcvb1DIYl/coi7mvidI=
X-Google-Smtp-Source: AGHT+IHzHPbfVt1Tel29A+epxPfb2KB2d12lkNDmgHGe0o8ZVjMIavmijEOcnrw/jRAI4QZkUMylUg==
X-Received: by 2002:a05:6000:1568:b0:38f:5481:1160 with SMTP id ffacd0b85a97d-38f54811294mr1777787f8f.15.1739893768059;
        Tue, 18 Feb 2025 07:49:28 -0800 (PST)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f25913f5asm15548613f8f.52.2025.02.18.07.49.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2025 07:49:27 -0800 (PST)
Message-ID: <a38ad793-8660-4942-ba29-aa5f297336ea@nexus-software.ie>
Date: Tue, 18 Feb 2025 15:49:26 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] dt-bindings: clock: qcom,sm8450-videocc: Add MXC
 power domain
To: Jagadeesh Kona <quic_jkona@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
 Imran Shaik <quic_imrashai@quicinc.com>, Taniya Das <quic_tdas@quicinc.com>,
 Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250218-videocc-pll-multi-pd-voting-v1-0-cfe6289ea29b@quicinc.com>
 <20250218-videocc-pll-multi-pd-voting-v1-1-cfe6289ea29b@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <pure.logic@nexus-software.ie>
In-Reply-To: <20250218-videocc-pll-multi-pd-voting-v1-1-cfe6289ea29b@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 18/02/2025 14:26, Jagadeesh Kona wrote:
> To configure the video PLLs and enable the video GDSCs on SM8450,
> SM8475, SM8550 and SM8650 platforms, the MXC rail must be ON along
> with MMCX. Therefore, update the videocc bindings to include
> the MXC power domain on these platforms.
> 
> Fixes: 1e910b2ba0ed ("dt-bindings: clock: qcom: Add SM8450 video clock controller")
> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
> ---
>   Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml | 9 ++++++---
>   1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
> index 62714fa54db82491a7a108f7f18a253d737f8d61..737efc4b46564c1e475b02873d2dc124329fb775 100644
> --- a/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
> +++ b/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
> @@ -32,9 +32,11 @@ properties:
>         - description: Video AHB clock from GCC
>   
>     power-domains:
> -    maxItems: 1
>       description:
> -      MMCX power domain.
> +      Power domains required for the clock controller to operate
> +    items:
> +      - description: MMCX power domain
> +      - description: MXC power domain
>   
>     required-opps:
>       maxItems: 1
> @@ -72,7 +74,8 @@ examples:
>         reg = <0x0aaf0000 0x10000>;
>         clocks = <&rpmhcc RPMH_CXO_CLK>,
>                  <&gcc GCC_VIDEO_AHB_CLK>;
> -      power-domains = <&rpmhpd RPMHPD_MMCX>;
> +      power-domains = <&rpmhpd RPMHPD_MMCX>,
> +                      <&rpmhpd RPMHPD_MXC>;
>         required-opps = <&rpmhpd_opp_low_svs>;
>         #clock-cells = <1>;
>         #reset-cells = <1>;
> 

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

