Return-Path: <devicetree+bounces-64236-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 557338B88B3
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 12:42:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6D3E7B22299
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 10:42:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10DC454780;
	Wed,  1 May 2024 10:42:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MizIcAJK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6404A53E35
	for <devicetree@vger.kernel.org>; Wed,  1 May 2024 10:42:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714560150; cv=none; b=fRPbSCKxfN43TU/0+PkgP5V3jU3pcLHz+xxgtUYHV8EmWXnkK/fA30MbV42e08PyCyqiGqzuNxqQGHEmvuhqMOhW5Tl3Uu4sTSYXdV7XRtccr4Gd24aO9ncC99YLTPuP25OHQiFSp+3bVxi/wPv4XA2SokluckJzAl8BAzNyRE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714560150; c=relaxed/simple;
	bh=KqP//zXSMMYwMX07TpkYRVKV5evikdqY7eNayjNM3O4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=F63mXWuLIOL8IjkvX1LCMcXwpVIC7NNgcYl/IEC0czlGQVmaMMuko4CNWl5Qp0Q/vZxda82AuV+QU5TyUk31FwbxvtIjdtDP2eKDG7HUH5KMAVTQOwHYmI2EmD1cDEiuvrwQaNh8LE85Ss+sP838A+9uh+5iIYZVwUh6C1F2cRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MizIcAJK; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-34d7d04808bso901138f8f.0
        for <devicetree@vger.kernel.org>; Wed, 01 May 2024 03:42:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714560147; x=1715164947; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UZRLL+HB9HbIggjRHEEHhzaeeMPBAxxAanvwH2etHPw=;
        b=MizIcAJKmaASBueLClj8FAc+gDju1oI7Opx5yOc0rODnVSXv4WEB3M2yqNbvm4hkZQ
         au7z++tMtRDmpLSH9tIXDQCV+Z0L2Iaosr5Oxdqy31ku6z3wPJ3Q4jeG91tV0scTVmph
         udaAq0mHx+/Ee4U6ooczCmQDDfMaGi4TRNZyWw7ynJz8QoXv+aevjiQlKMOiVQo7/LSp
         8YSOLnolzj+6kramRzDaf91olnk5oOmOTTqNOEko3ID220NXiUN9PTd6MfkWYzF65IzO
         MAq9PL49NO8IRz1gbe7D3nzLsumwBhMLkSC27ygR37If2F4im55XGNtFZo7YzQmaCq3e
         zOgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714560147; x=1715164947;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UZRLL+HB9HbIggjRHEEHhzaeeMPBAxxAanvwH2etHPw=;
        b=NaLoiqe631SfF+IP9NFQdMPJXWPUNriC88Vc73l0UVXOJGisKw+uonhLSM4F7in10K
         g33hnUNm8BSLeu5LhWjmDR1+o/WCWEIwmhxYlMV/i0aLiC7asElPm5KIQ3txCidvnrRP
         nAx16LPSx9NNnBYvsNxszVmcPZ+aAxIOpl1MwuJTqnOl0LGSVOGS2PC/xlJMZSEk/5+Z
         p6cJF2V1YDaOhZAkGz3UhKF55Q3T5RNOVXBdA1PKctgpZ16k6wcIzN1vdvTvnXvEG/Bn
         D67oJIUUeSpjWka3YmwnUq7Tf4D/j+3c6YQ4m1Sog0rAS2VCdcf5Ge6K6pbNQw09ClYX
         aJgA==
X-Forwarded-Encrypted: i=1; AJvYcCVjqhDxYWDL6uOQAfAfEWdEK6QkdTH4n0p3S25hPZ7LtiVX04s7xgcbyWhd1B5m0oYYLGZuUhtX+hH17FxsUXD8T7r0ZsIKXj4yNw==
X-Gm-Message-State: AOJu0YwWp5/I0Tna+/rzuLAz9ZxzTmLLAYfTDqNIJGJr7mUtEVcU0Y/5
	9j4ylJBTf6MBxjPYrvecQOhwlws3klCds3J1A+LyCvCtV/6bYRBeqchUIDWitYjoxH3k0qrTqrQ
	MaPlJrg==
X-Google-Smtp-Source: AGHT+IFDZK3tB64O9qe5N4VAS8EvYDgaowjyHbKLOl+cnO1NcGhqlxPVfgFSDsBWmT8uyiiMd8d/JQ==
X-Received: by 2002:a5d:4845:0:b0:34b:b50:3689 with SMTP id n5-20020a5d4845000000b0034b0b503689mr2082402wrs.10.1714560146874;
        Wed, 01 May 2024 03:42:26 -0700 (PDT)
Received: from [192.168.0.102] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id v15-20020a5d43cf000000b0034da966c3d8sm2560538wrr.16.2024.05.01.03.42.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 May 2024 03:42:26 -0700 (PDT)
Message-ID: <d1e755b7-b6f8-4e59-a1af-1a5f692c70a4@linaro.org>
Date: Wed, 1 May 2024 11:42:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 5/8] dt-bindings: clock: qcom: Fix the incorrect order
 of SC8280XP camcc header
To: Jagadeesh Kona <quic_jkona@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio
 <konrad.dybcio@linaro.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Taniya Das <quic_tdas@quicinc.com>,
 Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
 Ajit Pandey <quic_ajipan@quicinc.com>,
 Imran Shaik <quic_imrashai@quicinc.com>
References: <20240430142757.16872-1-quic_jkona@quicinc.com>
 <20240430142757.16872-6-quic_jkona@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20240430142757.16872-6-quic_jkona@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 30/04/2024 15:27, Jagadeesh Kona wrote:
> Fix the incorrect order of SC8280XP camcc header file in SM8450 camcc
> bindings.
> 
> Fixes: 206cd759fbd2 ("dt-bindings: clock: Add SC8280XP CAMCC")
> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
> ---
>   Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml
> index fa0e5b6b02b8..bf23e25d71f5 100644
> --- a/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml
> +++ b/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml
> @@ -14,9 +14,9 @@ description: |
>     domains on SM8450.
>   
>     See also::
> +    include/dt-bindings/clock/qcom,sc8280xp-camcc.h
>       include/dt-bindings/clock/qcom,sm8450-camcc.h
>       include/dt-bindings/clock/qcom,sm8550-camcc.h
> -    include/dt-bindings/clock/qcom,sc8280xp-camcc.h
>       include/dt-bindings/clock/qcom,x1e80100-camcc.h
>   
>   allOf:

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

