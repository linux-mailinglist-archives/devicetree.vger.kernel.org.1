Return-Path: <devicetree+bounces-40486-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 545B985098D
	for <lists+devicetree@lfdr.de>; Sun, 11 Feb 2024 15:02:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CE7BB1F214EB
	for <lists+devicetree@lfdr.de>; Sun, 11 Feb 2024 14:02:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 261325B5CF;
	Sun, 11 Feb 2024 14:02:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xec1oan8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A99125A781
	for <devicetree@vger.kernel.org>; Sun, 11 Feb 2024 14:02:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707660132; cv=none; b=KViUAiecld3aFXq9RzuIp3jDbnHjQlL+ofqxLBeb461kfbqefNbZRWQ3XRSFEcoE/JL8N9mxAI58I20nAlHZiHSjJzaZ5WJprtjSk8lWZV7kPwgoytxSMcV8ncnc5lOqcNcVzsoFj8ZVa9UK7vZoG4h7jOH431mvRyTtor7TfgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707660132; c=relaxed/simple;
	bh=uolM5cNnSQVvJyH665m1YzWBscW8SurboetXEIW+yac=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AYdwlgvP9b/GTHbnFiqGXF4LDJS8hI8cBERMQ/lG/srKgJjtSeGwbzH1e5imvSD6dOwfhpdjB47mEYfaRSHPAfC3Dq34dwLdS2o594r+eC3xEANqt0jueL9uiV7CONncX6f4bpEqIFcYe7GuUa9hepB4PJSXnJcsPsfTNiH8zJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xec1oan8; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-51171c9f4c0so2837868e87.3
        for <devicetree@vger.kernel.org>; Sun, 11 Feb 2024 06:02:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707660128; x=1708264928; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DEpRo3ZggIX9g5kXsq9qVrRRUWMCmjE5JkWjKuuxLn8=;
        b=xec1oan8vaO/YLzwzQxcVuhaL3KOBGVO42qVMBYp6Sj6DG9elxjroK/7RSbbcY7VLX
         Vwzk8aMUB4saLm8krGdwzUpYYYFnU+V5pberzFgK145zMg5bVJn4dTf8PYl9yk2GpB8f
         GuHo1wUNiU/X2llHySfOLGejoJoOkWYoYX/TH1ibMaAzrWPSxpIv1F/l2DVka2OP1MzL
         PiWZo672XXD3xgOJg6K8u5si7PBXxtoRX5JIBOv8dflL4iXesqhALH8xUIJVcgSMNTjU
         M+os7RANbXsCX3s0zGlDa/CIW0nGg6fxDXCPAmxBaur/kunMzNehrjvtgt/AOOyyTwUD
         6/Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707660128; x=1708264928;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DEpRo3ZggIX9g5kXsq9qVrRRUWMCmjE5JkWjKuuxLn8=;
        b=r5nAww/LHnuM+VvZ3zvz5k8DetJSLyISgxUxqscm41v6Dg1aQ+6oQdwEvNKpwPT44K
         2U9/W/E+tEAOrGbc25cKaAYhviuHOfiZdDWakshLVPja+76H95qmz2p4wVPiQmh15jlc
         bFxhLHYk02wJf45yOgzsCMa3I5Oto0Orj6X3XPtUE88FUosdjzWqwjOID0FVNYcpG8yo
         iEBhV/ucLJchl7F/hUzwgemPLTkBwusjr1qSb4S5La5CE7cUieXnLb+rs8N+qf1MUUBr
         zKWo6N8/i99VPBls971yRXnEldjbg8mit1VgM72sgxnR9mi28lBT9B+AZxn+wGzyhrYb
         ajow==
X-Gm-Message-State: AOJu0YwytR5NQWc3Ig3ovNMWMhcQbOePbTn0Anvwt4kWrTz29aHOTdea
	KIQ92UReff7a+WIloKALj4Cq9x4c5SFz/+ArBCPtgmVNBVTgmvwHVKfZwsv3CE0=
X-Google-Smtp-Source: AGHT+IHoWAGqQISq55MozqAxC/fe4t3KNXLkGWg+Rx5PqZ7/N20Xg4Fn21542+o+qEGkHII01JA1pA==
X-Received: by 2002:a05:6512:3b82:b0:511:6764:a8c7 with SMTP id g2-20020a0565123b8200b005116764a8c7mr3263216lfv.10.1707660127654;
        Sun, 11 Feb 2024 06:02:07 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWYQZ6suB7go1tqVx30CofLlR7kXp9G1WhXVT3QtadQpD06aUqZic0s4ngZP3Qz96UvYR1Iml2A98tzZk4f4RlvajkvdBi4AIYzXUlLWzo/5Y47iQaJApNwrMlE0usrTAOxfjO9Tn522Pni/uftpxPrY0lFwyfv20sqze76zNlZk9xrfkM1iQ/L9I+IHE6WAp1JVIJr8afDsmu4M8Bf02UlwmBCDFAXi3WzrLkENvSEOT2QmFK1GIdoLC2xvpMcifAxz9FL3FMorOhAv4PFQx3DgxTxRGNCZ5vL9y6Wgk+eu7hjrMEFEfOYBtuQNVs+mpHs/hA0I420gks/Ld7LOJNZmOw8UjlDPXJgi9L+CnXbw6cYd420Xd4vhguTZvkgR+h0LmKsoBZ/HHNByrmOfLG0znoa9SrvqVty0K+XPWXkzGW7AazXvZbSCTW9RbNJyb4U7+f+BRM4oHGP7IWZjcaVfrfItAu9Id/sFRfvEiKEUvUp/VCU7rLLPsAUMJmlLtKpzoG5zJT2kXhHV3D4JXcMlrOl8luV6QpvMklkbyCnbe90vLkjfPgBmZv3ge30yaJTgmW0hw9nMkJGv2zSmPovhDOSNeo+zdpOY7FXIMH6aWeksU8DYk/QYxxJGeCzzxSovA/CFuLmhEmS
Received: from [192.168.1.20] ([178.197.223.6])
        by smtp.gmail.com with ESMTPSA id o1-20020a05600c4fc100b0040ff583e17csm5961987wmq.9.2024.02.11.06.02.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Feb 2024 06:02:07 -0800 (PST)
Message-ID: <6dd8b54e-8334-4bc7-a6c5-7a81c04ed8bb@linaro.org>
Date: Sun, 11 Feb 2024 15:02:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/8] dt-bindings: ufs: qcom,ufs: add second RX lane on
 MSM8996 platform
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Nitin Rawat <quic_nitirawa@quicinc.com>, Can Guo <quic_cang@quicinc.com>,
 Naveen Kumar Goud Arepalli <quic_narepall@quicinc.com>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Andy Gross <andy.gross@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>, Andy Gross <agross@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20240209-msm8996-fix-ufs-v1-0-107b52e57420@linaro.org>
 <20240209-msm8996-fix-ufs-v1-1-107b52e57420@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240209-msm8996-fix-ufs-v1-1-107b52e57420@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 09/02/2024 22:50, Dmitry Baryshkov wrote:
> Describe the second RX lane used by the UFS controller on MSM8996
> platform.
> 
> Fixes: 462c5c0aa798 ("dt-bindings: ufs: qcom,ufs: convert to dtschema")

Your commit msg does not explain why this is a fix.

> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  Documentation/devicetree/bindings/ufs/qcom,ufs.yaml | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
> index 10c146424baa..f1de3244b473 100644
> --- a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
> +++ b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
> @@ -43,11 +43,11 @@ properties:
>  
>    clocks:
>      minItems: 8
> -    maxItems: 11
> +    maxItems: 12
>  
>    clock-names:
>      minItems: 8
> -    maxItems: 11
> +    maxItems: 12


Best regards,
Krzysztof


