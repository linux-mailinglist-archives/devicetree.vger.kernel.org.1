Return-Path: <devicetree+bounces-47101-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 273BF86C395
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 09:35:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AFFE21F25A0A
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 08:35:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F7271E86C;
	Thu, 29 Feb 2024 08:34:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UO5ggms5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A1FC51C5F
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 08:34:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709195691; cv=none; b=cm7ByE4WYOVFekbuuhVl6R76pIr60HG96wGgZdkqIU6rHwtO7FNMXkrLM99JBErR/ovUcm6VqbXwKyiZY6fUnOIDsPTkfR+bvPkh+Rsl47qeAh1pRD0Ab6gtbSP34zVaYeIbSov40MNfeH37gSS6EI79waCc6U/+kFxScXuMuMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709195691; c=relaxed/simple;
	bh=27tsc+IahnpQW1FGmuHdzy2ycsaxqqtG5KdREhGupI0=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=dyTwu78YqZe2AFOtPfvj+GmJsO4h7CxqrPYUNnU+vxHelXzqBg9FIx1LRrD/MbLKy9wul1NmvTdZKNmYHoE286x/ocuXFaeZFHVEcSechxS0g0K0/72O5wsDCkxWZNWk/gtaH3YZKOmUnKELLlqT3UXAGCcl1ESzh0EjK6cEZvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UO5ggms5; arc=none smtp.client-ip=209.85.128.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-608959cfcbfso7690847b3.3
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 00:34:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709195687; x=1709800487; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eB0x5VRF9tjnIsLUSMuXmq239hv9+JKbZXpkjJRXP1w=;
        b=UO5ggms5UzJnEjQpx5SDU8G7s5tm9i8iLeRempp77hKM79/CmpfGt6Q0uCs3I2EFvE
         ZTNrxW44YOEN4CIiz+/PpVHKTVxWx2+lkJbPmnFobn4ETUFkBR6KCBURv4+KET76xFok
         U34yYVGZSRW9Gy1fDpK1WHlr0DHkrxB7ORbu7g7SpP9JgajU+etKicaJr+JMdq8SLOgt
         Mymeujhz5xqJcJQJle9nmwjTJH+OodH/GnZiOo7ZxJCj7JAk4Fjo3DbQ1GKTWvCn/J70
         pKYqYhpB4rCYx1ZaGEXCWzmNYfSQNHd4+nbciJTixenCwCAECihF+9Jm85tvtcVwedDg
         CWuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709195687; x=1709800487;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eB0x5VRF9tjnIsLUSMuXmq239hv9+JKbZXpkjJRXP1w=;
        b=qVibjBDgDxT8N42rmNvkKuxeI4hZVmhPzWN1cHyY9orL+/LEocM+w26AhEgdbsSLtn
         lOpHr/srWGL56vt0qf9HrJMdpFU1dD/sw70nQFH+LIT/cVJqmHccOdFIfBOwkP5uui9l
         DtVXdF8UI6Hc+BMEhDQWP65jE2MebQs4Ix3bu7S3AMutCEsmcxH5Yoi70M9M2FpIk1h6
         pXq0n0i86c2pby/kqgLp7nttEdzLo53lMPhmJe/C3dx4lCeDSRMHvvV5H/CxWWurp30r
         FQ+weX4elBQKN8OCquJ4M2sRCldlpORv1s272k6bscAgAQYuKVXRGGIjJsq9+X88npIi
         tyYA==
X-Forwarded-Encrypted: i=1; AJvYcCVM4U4X77jx38ubjERvR35hbq4N2hJcUg3gD0quSBa29vy2mM+hKnBnyuPgo7aJdnX7dqzJpaLAtuFYNC0qaABdsPu/X8bo5cIU9Q==
X-Gm-Message-State: AOJu0Yxdn6qtZQp5NBa+X0sQ1zeVVRRtO+AwxNvPIglgJCENT2+QBat5
	0fI7XgORIEoGk+aKbJ7FJc7ewlo80Ad/jtgGzS88FY2x0/cN+ebhmFytGV/T2Dw=
X-Google-Smtp-Source: AGHT+IHm7OX1j42KevfyS8kwG3GSROX8iiMT2RDfmCF+Q55fZ5JFIEMPbZ34azb0hI09hoq7O+iCbA==
X-Received: by 2002:a0d:c087:0:b0:608:8a6b:b213 with SMTP id b129-20020a0dc087000000b006088a6bb213mr1577776ywd.33.1709195687452;
        Thu, 29 Feb 2024 00:34:47 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id i68-20020a0ddf47000000b0060969b6e74asm248178ywe.123.2024.02.29.00.34.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Feb 2024 00:34:46 -0800 (PST)
Message-ID: <55c41e5a-f6b9-418c-85d6-1b11a6b335ea@linaro.org>
Date: Thu, 29 Feb 2024 09:34:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] dt-bindings: dma: fsl-edma: allow 'power-domains'
 property
Content-Language: en-US
To: Frank Li <Frank.Li@nxp.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Peng Fan <peng.fan@nxp.com>,
 "open list:FREESCALE eDMA DRIVER" <imx@lists.linux.dev>,
 "open list:FREESCALE eDMA DRIVER" <dmaengine@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
References: <20240228212627.629608-1-Frank.Li@nxp.com>
 <20240228212627.629608-2-Frank.Li@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240228212627.629608-2-Frank.Li@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 28/02/2024 22:26, Frank Li wrote:
> Allow 'power-domains' property because i.MX8DXL i.MX8QM and i.MX8QXP need
> it.
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
>  Documentation/devicetree/bindings/dma/fsl,edma.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/dma/fsl,edma.yaml b/Documentation/devicetree/bindings/dma/fsl,edma.yaml
> index cf0aa8e6b9ec3..5368f8a99a21f 100644
> --- a/Documentation/devicetree/bindings/dma/fsl,edma.yaml
> +++ b/Documentation/devicetree/bindings/dma/fsl,edma.yaml
> @@ -59,6 +59,8 @@ properties:
>      minItems: 1
>      maxItems: 2
>  
> +  power-domains: true

maxItems

Best regards,
Krzysztof


