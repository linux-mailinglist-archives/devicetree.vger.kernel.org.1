Return-Path: <devicetree+bounces-246407-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E74C6CBC8D6
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 06:18:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AC5463007EFC
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 05:18:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E641432470E;
	Mon, 15 Dec 2025 05:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cwfl1z6v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42CC53242AD
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 05:18:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765775896; cv=none; b=W5bn0I5kj/8HLr4nUL8naeU+PQTIEXei/wpp/xu/HxgLgeb1qFrJCbfkCyievHpmUrqzljqlWU1CMQq++TK8nGKYLEKA6nt08WBxs1pvLxPvuAM+Ayqy524gjOVfCrVDf34MITAKjjpHb2h5ZxSgkD6ZMoeY1ZW8hJ62KJy08y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765775896; c=relaxed/simple;
	bh=EyhhTu6tEajuduNp4/0le6GxWfnSGbcGf0p5nThcZrU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=csO9wjdUMKP0xAVbU5N/n8b+BTcu6UeKgWT3R3iAhESBbg0DZX0eSQoRCM97UfJyPR3ctU6lD7i2GCN2+0XboIP5pRagRaTqEadXnhOr9wwoVW+Eh3bNaWGZY3nFk3qyoCRpD11fPIddcjj8zGysQGiyy7v7zvsulYNu9zAYgWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cwfl1z6v; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-2a0b4320665so14455225ad.1
        for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 21:18:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765775894; x=1766380694; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=bYGV5sGRh2yeK6uvxRn1wHQ6jEWyDVrINv6+U1Id/8A=;
        b=cwfl1z6vO+qUVJ/kEpR+Lr4aURVQNuPWddaQ+x3kC1SqBY8LBgPG4p2wcQC2IYlFgK
         lBqoCFwgRGdrOhhnviFX2J6A3YDDQAfEXr5b6bAekBTp5VzNle6WThA9PCFpEDFPrg0T
         NptK1k4/5IOPxUqF9SgOojtd2CUSc7NbqsJ5Fo/VL0A5pe6u9uaC7OpDoULsTvscXQsw
         7mIRuAGaY7aKV2luDl/9CCLUc57JZL96fvQaivg68pUM2Rpa7cI2MqdfDpwJybGtrLhf
         mG5XNJ7gspEA9ayj33xQre90gP4uppO+8L0JjzhMzcXt0Lelj5SF1drE06fzzq5BQ4oH
         g/Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765775894; x=1766380694;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bYGV5sGRh2yeK6uvxRn1wHQ6jEWyDVrINv6+U1Id/8A=;
        b=dAJ4UEhX32lTkrlcpqUtdm7tRmrl7IImjFoRGvI3N/rj0shEzeBHR5zRzeY03e1EnE
         zvVz/HdxZmOhz70rWgLIQu8A0fv+lInPZdY9JeYcwyWi8oGRyU797tsoss4BAsTmbf/C
         LVjQ5bzZTl6k9gq2s4nhB1BvPiIFKfzI/uM9tOa4azIrsOwdPhhw81tAAcPfztMAGHf9
         jwEB1TKEHIxOr7WqSo3AxWGj/HEgDuvdvvlH6UWP+pCr9vX0z8OFidgy8LWMxya3ZGJd
         Wo29gODHWUwIGE9Fe4kfXls7dzqqO/cLdaFJ4xJGlAd/+2GP+rprlXd65fu2or/kKtrm
         lk/Q==
X-Forwarded-Encrypted: i=1; AJvYcCVTegIfvavdhEOybCYUt0Y727DEvp3v+NMZzKm2NcW++Rm2ZNtLAs4wEk38p/8aM32FNmQ3Y9TEgecp@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/Hnf7pj3EOiyL7/glfK8y8k2x+bfuFEHUAMKcvMc3RUVVxDnZ
	Uq+KVLZhBT6rDvwHzzjJHFPHGGnfY4UKQS5vRivdYd/x0t4oRlsm9SVKtUuSMy4kZeg=
X-Gm-Gg: AY/fxX6OPZ1FCaPoEpPQtAWP0BWZPe67RF/ZfaaEWE1h9U0346gNjVGXpCgbhjTPH9L
	UEVp8twX9mZ3FVVBurVZyN98hoEp9pECN5KSV9kFUa8jcQBhKqfFl+2wsRABpnFpYl8WL+fVthf
	6uxaw4rVc/Z6jA1VmmzCnljIhTgAbNyqVrVccb9nIgkewRIdE4oJI8IIcVNesiKy1ajIfINkqYM
	luTyQCcGNAN1L1o5bjLqE/bltCwuRHcviYI2cxaNUAmImN2hq1yo/6loy/xNKpHVHS498YjAIQO
	ulp2mO3qpbspDo0Kbg4OFiLfQ54pHbjlKt2GPDLm6izmNce5OBtukmlZnqi1PwuZBbi6juEMVtX
	8R4BgsHkLIjjiuSuH2gjhOuUAC2WpKKUBU6RpvS9JZXG6DWrNGRPhOfGOCyfJumjGK7aNPAAg5G
	q1CPvhYsk5AoM=
X-Google-Smtp-Source: AGHT+IH71LGyS6r6X/23fUIRTMHB9hMJFZwpz7dGoHIihSQCvhU76eKfPDxzle5KT+xNtC/kg/DPCg==
X-Received: by 2002:a17:903:1b66:b0:298:2e7a:3c47 with SMTP id d9443c01a7336-29f23caa438mr105521885ad.42.1765775894222;
        Sun, 14 Dec 2025 21:18:14 -0800 (PST)
Received: from localhost ([122.172.80.63])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29eea016ef4sm122285845ad.56.2025.12.14.21.18.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Dec 2025 21:18:13 -0800 (PST)
Date: Mon, 15 Dec 2025 10:48:11 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Herbert Xu <herbert@gondor.apana.org.au>, 
	"David S. Miller" <davem@davemloft.net>, Vinod Koul <vkoul@kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, ~postmarketos/upstreaming@lists.sr.ht, 
	phone-devel@vger.kernel.org, linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org
Subject: Re: [PATCH v4 1/9] dt-bindings: cpufreq: qcom-hw: document Milos
 CPUFREQ Hardware
Message-ID: <qogyami7g3wdvfodttrjqzvmrufw4qaqvzp3jsq6lt6wqshu5y@kofhldddiznw>
References: <20251210-sm7635-fp6-initial-v4-0-b05fddd8b45c@fairphone.com>
 <20251210-sm7635-fp6-initial-v4-1-b05fddd8b45c@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251210-sm7635-fp6-initial-v4-1-b05fddd8b45c@fairphone.com>

On 10-12-25, 10:43, Luca Weiss wrote:
> Document the CPUFREQ Hardware on the Milos SoC.
> 
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> Acked-by: Viresh Kumar <viresh.kumar@linaro.org>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml b/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml
> index 2d42fc3d8ef8..22eeaef14f55 100644
> --- a/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml
> +++ b/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml
> @@ -35,6 +35,7 @@ properties:
>        - description: v2 of CPUFREQ HW (EPSS)
>          items:
>            - enum:
> +              - qcom,milos-cpufreq-epss
>                - qcom,qcs8300-cpufreq-epss
>                - qcom,qdu1000-cpufreq-epss
>                - qcom,sa8255p-cpufreq-epss
> @@ -169,6 +170,7 @@ allOf:
>          compatible:
>            contains:
>              enum:
> +              - qcom,milos-cpufreq-epss
>                - qcom,qcs8300-cpufreq-epss
>                - qcom,sc7280-cpufreq-epss
>                - qcom,sm8250-cpufreq-epss

Applied. Thanks.

-- 
viresh

