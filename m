Return-Path: <devicetree+bounces-262430-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eK9rCEGDgmneVgMAu9opvQ
	(envelope-from <devicetree+bounces-262430-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 00:22:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 97238DFB74
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 00:22:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B70E83053762
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 23:22:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CBA1326944;
	Tue,  3 Feb 2026 23:22:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lA7Z6LXz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1470B31ED8A
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 23:22:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770160939; cv=none; b=ZeYJdf7J65l7LKmZQshBtW2EmdazlSWikvDTHomE0z4nHErfufvxsEiiVEdU40cr4hOQASoVnu9xOePgjIuQzk9OqnYiGCA1hyd9palEaKIWfbSgWakmBmuS0IAk3F2Jg+hmlYhRmT8vs5Lu7I+Yfes1rC+uLcXnP/XP25CnWps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770160939; c=relaxed/simple;
	bh=vmGDTvEh0kB/nA8sp+H/PED+RYlPTGDJvMgu8OOxZgU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=f3MFBMIGyl8u9YhGJFtcTL8BOl+EFT2AxWj+7O0ja5bmuSve3JtvGm2Sr6oRZhyCymIr7SdH05D2tBRHjQylFO4zSMkBFxwTa6rEZpbplcn/XGMHq7j0nPQPASBtJlxfdX6rX6vRMUMa+HYA1nTLSy53q2wLflMFCCKgpGP+N48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lA7Z6LXz; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-42fed090e5fso67905f8f.1
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 15:22:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770160935; x=1770765735; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zHQSzgLVAjnFP4dBv05KnkyuxPSQFJ3wmRvAOwsqKgI=;
        b=lA7Z6LXzT+vaJ1rbVAfhg+7GjJkYrIgBM/ims6zHGMCYrIxKjmE+WPTRfIzvcSdrA6
         jXpZ5dLPLw5gwb75RVqmPp3+pgUFoRZ18CYP6U/dgkpcDx5LKNMhAzamnfaku1LiRPh8
         iWyVmJ6+6IgFiVkuGUW9opeO49Fd8zt+lH/PrmgYDzflPy3JCaXnRt+0aUWfmwnQV0yO
         hqHG96AxXgFcKXIVNuUyYO5q3x5j7gF13SCMf+QIewodnXqcPRV8yxRjS72a4wNk0LTn
         aeTtg0nxCbrFvDYRBkoawUU+gbtm1DkOTxo5zGzc8INEo5nDZ2hWxOZ/LTBVglaKaAeZ
         iuEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770160935; x=1770765735;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zHQSzgLVAjnFP4dBv05KnkyuxPSQFJ3wmRvAOwsqKgI=;
        b=mfmGaXzKQUD3DanfAURMQdhDjV1rYqzgqCRCANeSPC1eXYdJhYdUa1uiXAKdzNOZrD
         efztg59cE1zNVZEk53fKRsMwq1Px9M9Ddm3efZKJWqe0ovFGV7K9q9LikmyITpKgsBFH
         raKK/JXmgPcDkAuWl/+t2tgchzgyB0R0nHnt76O9Yb8SbI0Siu9TaRutiC424Prhb0aK
         1UfI+DBRM50zv1X+d0GKbIULRp2sfVO7jidXUNKvdfhW//2PEps4IDJSrPo5sjYSbdN/
         9STXEvskMK0DTDVQhoLtYXpmO9zs4jXtA5IISrIkIE3DmnBNBCoO+deM6zcuhJvfZQMf
         jh/Q==
X-Forwarded-Encrypted: i=1; AJvYcCXuT49Zb3QIDTf4UT9Yp3ihZ1K2WrViwLD811SNJEJim0Wb4n+ZZ9RI1I2NdB+nXbLG7IphgP2VskEr@vger.kernel.org
X-Gm-Message-State: AOJu0YwSRddLF1V00NoL+J9hxHUKAJQdoY+15WakcxfE7bji//PCpFKk
	D/u+01UUHWQ/qJH+oV93V8Iq4aTTfLyuNrrVDrY//TCrgHzTifAY3y63gRVPBSV90kc=
X-Gm-Gg: AZuq6aIAka9+tsM4fvynvVumqm1S/1dZQ1J78XzcVBAP3pSZEKVyULeew385pt1vbwH
	FJ1Pza/oBUSBbWLj9i/WwE6X6YDBPi6qgWeXw5p8qexDt8zf0jOY0JzDzKcns0eDmgmbgv1qRyo
	WaNgAC1/CppEQNlSFrWijAq4jpUpDF/nppLDfs7Pey/PfCm7QKyqajII8kcvsEgkPXsaVIB3whA
	ok2lNUgz3V2khC6T6J6BjUp49vX4qJ4tttzJlpgUaD0BfVb/RNeAgmC7Y6vHFKTwzj43EuxOIiL
	RR6I2GTVIHLqU5k6T0GQFuyLTfQKj/mBlkIb3vJH936ATkxCCFbK0OFYBPIsmSdQuJ55a/y6jl/
	7IhbPc9PxxIUPMqEV7wn76FVrYJWm2zinHJo1iViibv2JveBlaao8ei/qVQgJAXHNrdV+ajZSCG
	6IlCrn198x2iRsWq0yk/guAcr3C+nb9w3khRzBBfuKnqY1PZeGFANzEPrUbZXOmC0=
X-Received: by 2002:a05:6000:603:b0:436:143c:c000 with SMTP id ffacd0b85a97d-436180593b3mr1240527f8f.45.1770160935331;
        Tue, 03 Feb 2026 15:22:15 -0800 (PST)
Received: from [192.168.0.40] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43618057f7csm2010133f8f.23.2026.02.03.15.22.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Feb 2026 15:22:14 -0800 (PST)
Message-ID: <e29f4014-a8f5-479c-8043-e0d9f3de06d7@linaro.org>
Date: Tue, 3 Feb 2026 23:22:12 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/8] media: dt-bindings: qcom,sm8250-venus: sort out
 power domains
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
 Jonathan Marek <jonathan@marek.ca>, Ulf Hansson <ulf.hansson@linaro.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
 Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Stanimir Varbanov <stanimir.varbanov@linaro.org>,
 Abhinav Kumar <abhinav.kumar@linux.dev>, Hans Verkuil <hverkuil@kernel.org>,
 Stefan Schmidt <stefan.schmidt@linaro.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Dikshita Agarwal <dikshita@qti.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-media@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
References: <20260201-iris-venus-fix-sm8250-v2-0-6f40d2605c89@oss.qualcomm.com>
 <26272oeYIcfP__dNdKT_lizJQ9hvr9jKE2zsy_3aiWVlymjbtHB5vToDV_2DL3N8gIxnqB_YminHDztbUanmwg==@protonmail.internalid>
 <20260201-iris-venus-fix-sm8250-v2-3-6f40d2605c89@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20260201-iris-venus-fix-sm8250-v2-3-6f40d2605c89@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[28];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262430-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,huawei];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,linaro.org:email,linaro.org:dkim,linaro.org:mid]
X-Rspamd-Queue-Id: 97238DFB74
X-Rspamd-Action: no action

On 01/02/2026 10:49, Dmitry Baryshkov wrote:
> First of all, on SM8250 Iris (ex-Venus) core needs to scale clocks which
> are powered by the MMCX domain. Add MMCX domain to the list of the power
> domain to be used on this platform.
> 
> While we are at it, drop minItems from both power-domains and
> power-domains-names, it doesn't make sense from the hardware point of
> view. There are always 2 GDSCs and two power rails wired to the video
> clock controller and Venus. Disallow passing just two.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>   Documentation/devicetree/bindings/media/qcom,sm8250-venus.yaml | 10 +++++-----
>   1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/qcom,sm8250-venus.yaml b/Documentation/devicetree/bindings/media/qcom,sm8250-venus.yaml
> index da54493220c9..04cbacc251d7 100644
> --- a/Documentation/devicetree/bindings/media/qcom,sm8250-venus.yaml
> +++ b/Documentation/devicetree/bindings/media/qcom,sm8250-venus.yaml
> @@ -21,15 +21,14 @@ properties:
>       const: qcom,sm8250-venus
> 
>     power-domains:
> -    minItems: 2
> -    maxItems: 3
> +    maxItems: 4
> 
>     power-domain-names:
> -    minItems: 2
>       items:
>         - const: venus
>         - const: vcodec0
>         - const: mx
> +      - const: mmcx
> 
>     clocks:
>       maxItems: 3
> @@ -114,8 +113,9 @@ examples:
>           interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
>           power-domains = <&videocc MVS0C_GDSC>,
>                           <&videocc MVS0_GDSC>,
> -                        <&rpmhpd RPMHPD_MX>;
> -        power-domain-names = "venus", "vcodec0", "mx";
> +                        <&rpmhpd RPMHPD_MX>,
> +                        <&rpmhpd RPMHPD_MMCX>;
> +        power-domain-names = "venus", "vcodec0", "mx", "mmcx";
> 
>           clocks = <&gcc GCC_VIDEO_AXI0_CLK>,
>                    <&videocc VIDEO_CC_MVS0C_CLK>,
> 
> --
> 2.47.3
> 
> 
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

