Return-Path: <devicetree+bounces-16813-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 633C97EFCE3
	for <lists+devicetree@lfdr.de>; Sat, 18 Nov 2023 02:11:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 06DBA281423
	for <lists+devicetree@lfdr.de>; Sat, 18 Nov 2023 01:11:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E93F10E1;
	Sat, 18 Nov 2023 01:11:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vL3zB8mq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C6EA10EC
	for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 17:11:41 -0800 (PST)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-9db6cf8309cso345844266b.0
        for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 17:11:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700269899; x=1700874699; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BbexD1T/FT/YPW6uGJXfL9w+KF6e3VpkGSJ4SDAyprU=;
        b=vL3zB8mqDD8UoyHQJ+g3coOzfuJlztyjEMYx/YoY6YZxRiNcbAKyN6aDmrEipQ3X90
         cASqkv6R1op5gVqVcs6pWGwvpW03fxJixJuFznlY2Ih4cfAq8mJ7tzxXFSPTr+2unnO5
         KJX/6plaX457rx1JpB8NIgAMtc/JA5c24MkhtkCk0YeuC/jDItS+bGSy7G+1G9KPoaHt
         3Ekzw0Qq/3MBfsgPBgutdV65Zkupd+nwkswuobmKHSSJPsm1oReI2J1XXNQr6m1NT62Y
         xfz5ORvu4PF8cCoxnSO/wqtsAg4OhihqXMeSa0a7yTk9UymFXL+7BDa/HqzBy/ulggli
         NPkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700269899; x=1700874699;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BbexD1T/FT/YPW6uGJXfL9w+KF6e3VpkGSJ4SDAyprU=;
        b=MCNgkw4MlPBpNZV95g6/4nI4TY2Y84uL/GKomLU1ljExcvYFZ0W3BiPJToayYyL2Lh
         gTB0trf5JLnZSdPWnUktIsyIELZqKcswmMjYRczQBs2sHYrBV6ovA5NRhwZJaNSN5mzi
         Ay/W2Tn+07B2tqhi71gOu1XGFe1WygSKjDUhw64eY4kep9ymv3mItZ2UZAgorLipPkyi
         dGdTph8lyaPjV6aDebNmXWAIn1YPL16jueGJ/8JB+kZqC9ox4LngZlmHQ8v6j3FMq7y/
         siYGx8jwFzO56b8BVHupJrLKo0YNX6EAJNWLKuYlExq/UouzGSXHJN1UTj0Ujgld63sX
         CGxA==
X-Gm-Message-State: AOJu0Yw4wnRcQWFuwJrmru3wB72sDK5gNvGz3uaeanLXUGfCYv36443F
	4MoVmNxJyykhYKzpaCt6UbPpnA==
X-Google-Smtp-Source: AGHT+IEbTsd14CCKxvtEvWhgJLrppyyZ5FGn+Yw8aLmlFjkF2jC5FYxA2FEOmLSkZikSFXQFDvU/3w==
X-Received: by 2002:a17:907:3e85:b0:9bf:b022:dc7 with SMTP id hs5-20020a1709073e8500b009bfb0220dc7mr825721ejc.48.1700269899558;
        Fri, 17 Nov 2023 17:11:39 -0800 (PST)
Received: from [192.168.201.100] (178235187040.dynamic-4-waw-k-2-3-0.vectranet.pl. [178.235.187.40])
        by smtp.gmail.com with ESMTPSA id f12-20020a1709062c4c00b009ddcfbac9e7sm1344347ejh.84.2023.11.17.17.11.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Nov 2023 17:11:39 -0800 (PST)
Message-ID: <93c5d2ad-02b2-425b-877b-9576318fe51e@linaro.org>
Date: Sat, 18 Nov 2023 02:11:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/3] arm64: dts: qcom: Add base qcm6490 idp board dts
Content-Language: en-US
To: Komal Bajaj <quic_kbajaj@quicinc.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231117125056.32503-1-quic_kbajaj@quicinc.com>
 <20231117125056.32503-3-quic_kbajaj@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20231117125056.32503-3-quic_kbajaj@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 17.11.2023 13:50, Komal Bajaj wrote:
> Add DTS for Qualcomm IDP platform using QCM6490 SoC.
> This adds debug uart, eMMC and usb support along with
> regulators found on this board.
> 
> Signed-off-by: Komal Bajaj <quic_kbajaj@quicinc.com>
> ---
[...]
 
> +	gpio-reserved-ranges = <32 2>, <48 4>;
Please describe what these pins are for, so e.g.:

gpio-reserved-ranges = <32 2>, /* spaghetti cooker */
		       <48 4>; /* fingerprint scanner */

aside from that, LGTM

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

