Return-Path: <devicetree+bounces-133741-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D29C29FBAE5
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 10:04:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 88A691885517
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 09:04:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C6571A8F95;
	Tue, 24 Dec 2024 09:03:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MC/f6Nh/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 049CAEC0
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 09:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735031038; cv=none; b=KOi57pA0N0Ek4F1QneyEQXSi8egCQXmFH8V0JQj8F4fm0vjm2+oY6uMrE2/a+4lIsMQtUmTZ1jeaJmGpCr3CyuZ9wMnnMGkEm2R/0BPOzlQX/A4AJUFpdTRexSk5OD/+ig254tPySz+aEm8xhtsApj3H3K3LaxKhsg/F0MdPLu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735031038; c=relaxed/simple;
	bh=XVANS7F/Xw4Z8WCtDEP8nZReVbCeyFH5yTQDQD0wYzQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AH8ZZCN3yGDgfVBNvgh7DgEXoYs6KF2EKx4usBlA5CgUwQh32H85ff9tHRm3tBQdVVr44Ik/Hs7lff1gVRfFT9zJVcNENv2W0XPemuJ/ZUW7RRbqv1e4K5I9k5DM081pFzHc2TRqzwU1xJqrhE/Jd1fDGW9Spf1/d+iYuZZ8rIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MC/f6Nh/; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-aa6a38e64e4so100472966b.0
        for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 01:03:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735031033; x=1735635833; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=z0IZpYux0PQ21H1xi7uGwUCeGViaLFCCBjvWm749ZIg=;
        b=MC/f6Nh/SjXxk5LpG1tnhFZleCVJCw6UOaliWUoqjdQF23mvjoFoUV50jXV1XRX7F4
         2Itxv8QUykC2IXFFl1zKoe3VYWG0amdsm+v6vgYtV6jMh1xXLXIfTNKUbMBhOkfKlbnM
         y9YBVq0QHPh78AFIW3VPYblFVg6EboXf4kVtpfHcOCvKz34sadbvKhzgtRjyFoDsY+/x
         Zz10YPrtG8NpB41T1pC0267HUxD64TRX0mtIYsBbdtKL07hvGdBFfB9ycbBY6YwWYyt8
         MIzxNViy7MG0WsjxudaO5MWqwzQeh6h8IVeUDAqp1Us5Mth/vH1CZIuSKMuh2qFJlqUQ
         vGCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735031033; x=1735635833;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z0IZpYux0PQ21H1xi7uGwUCeGViaLFCCBjvWm749ZIg=;
        b=kliDtD6205dKrYmpD3DacLo4zyYg53AV+ceNcq9zN5K2KGRjPfYbxk1RQS427oUBFl
         tdi2GEo4rau4/l1AbrivGkVmk3mMqGrlSyEO9VtMdBB7PQS2KLvMNcsh+Y4ouR5J52b4
         sp7ANmyK6TWimm/KYzbtru2AT6S0Ryu2FRI84Q4jJBF6Hj9g6wpdFYoLSnybM+3Jf9J/
         CUN6P5DnwAIclvlz++lOai28YedGPmnEqyLOQUgK7+YZGuC5ZrrRle2WbFcDu9lQurNA
         q92iuZRokHrr2zLV+LmrNwJhFNj+tRKaRjjE8aM2jPlEYD6hqvEBs+nrADlN0wwyocpF
         X0Nw==
X-Forwarded-Encrypted: i=1; AJvYcCWL1J/R+LTgP5fjAf5CXjQgg4Z9Pc6IDfDYGOHpe+eVBtn6ECDOTvmNj1OJ6PSMld4JG+AMsi9cwApb@vger.kernel.org
X-Gm-Message-State: AOJu0Yxcq6QFidI1wLYUjJvSpESGFZHnvb/eNVTutcaUEWSNelWggFMq
	RvYLiG62/qTJhg7ekjDOzSXrETV7eYImg0pOhihyb0qW2ioVdbnR65/kcHW8iM0=
X-Gm-Gg: ASbGncuj/+Oo82tpnOzLOfjqUi9epoa+Dql+6e47nUnOfBvMq5+SRdF67qilK/KP06h
	6P9C2X3BtPfQCdSn92fUcsT90rrsAonTHq/vC9rYo8vWRhoGodTeAr8E+Pl9ULJsNYEkW+WFqcx
	RPAaWkOOWPMLOv+Jt//C4aOaVJ0ABMTwnoYfdbFyxzdpfuWUr3rPw94OQx07pt4FNqHKYIbVmha
	KWAeHqzc3SDKLn/Kup0c8uBil0BnAHSlGrRDpFKLLhh44GPeD/RCufWtFu6t41gxPeEmgX8sFzC
	e3pejN1Kd6dBKoXAncdIzDFw+onZeH3kukc=
X-Google-Smtp-Source: AGHT+IGww99qrBBuovvVWKdRBOFSplKcqorPH8QQi3151rHPzuzT+tIstiqWmsZPCGiK7Ga5fpjAnw==
X-Received: by 2002:a17:907:9621:b0:aa6:a9a4:7bd6 with SMTP id a640c23a62f3a-aac2adb6962mr589868266b.6.1735031033293;
        Tue, 24 Dec 2024 01:03:53 -0800 (PST)
Received: from [192.168.0.18] (78-11-220-99.static.ip.netia.com.pl. [78.11.220.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0efe4c55sm624557866b.130.2024.12.24.01.03.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Dec 2024 01:03:52 -0800 (PST)
Message-ID: <b0e8a58f-530b-485a-81fb-208fa7840980@linaro.org>
Date: Tue, 24 Dec 2024 10:03:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] dt-bindings: net: snps,dwmac: add description for
 qcs615
To: Yijie Yang <quic_yijiyang@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Bhupesh Sharma <bhupesh.sharma@linaro.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: netdev@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
References: <20241224-schema-v2-0-000ea9044c49@quicinc.com>
 <20241224-schema-v2-2-000ea9044c49@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20241224-schema-v2-2-000ea9044c49@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 24/12/2024 04:07, Yijie Yang wrote:
> Add the necessary compatible entries for qcs615 to ensure its validation.
> 
> Signed-off-by: Yijie Yang <quic_yijiyang@quicinc.com>
> ---
>  Documentation/devicetree/bindings/net/snps,dwmac.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
This should be squashed with previous, otherwise patchset is not bisectable.

Best regards,
Krzysztof

