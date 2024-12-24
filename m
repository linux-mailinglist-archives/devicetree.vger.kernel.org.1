Return-Path: <devicetree+bounces-133740-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B50BC9FBAE1
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 10:03:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4B276165E19
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 09:02:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CF031AD3E5;
	Tue, 24 Dec 2024 09:02:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KYnEAfAZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56A6718BBAC
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 09:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735030945; cv=none; b=MCqEU0jkVZC/qL4/HanWatIAchAE8ds8H0bwc1eojUgw5jYYtDd8QirQADw9B1/gFQAz94QNCk2BMHURQnVBrE1QAKa6GN5+KgdHwqCV+fvJdDmvgNMl+/ElH/kFhyIOC0jTy+zCui7sseoqsp6D61uqINV42+eZMcVdJcasmz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735030945; c=relaxed/simple;
	bh=gSoT9CVaoJwBZDjeIeye2Xw8oj02DWXFADqKpE40gdo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LnhYA3LPk4YaTscRqjjWmaneceIu/k6N0WLRgbhWe5kUxR4plOuqPZdPNY0JOYPXe1HA+JpQO0KpdqWtS6yx8Y/CMeK6ZgagUnUXF4jY5tVsPiSx37yML2KmC9nc48gYPaIu/Hd2nkd39cr1XSqlq/+B5kkoVvWNA4UHYi0NzUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KYnEAfAZ; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-aa67bc91f87so83212066b.1
        for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 01:02:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735030942; x=1735635742; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=rqjl308OuNRMbWugA4jzjOfqs1qN28qDlrGRi1lmlOA=;
        b=KYnEAfAZeE6vOaSAR4hONbF9DgolWRVjaAY44iz0+jIXaWHear7Udb5jrD5sLcDAAR
         9JsocFJr8zJgbGlrHajUkp1fpktwMN8WiPamNiS8+SiQouJKV1TR2Pq0LTSN0SeLnTde
         4z8LbNLkS9+X9L50+mXsZsypuWQkaKRwrWnGap4NSZAtcsalkJln764zcA3u/bu1mbmN
         V8LAXZD/FSyN3GVgO6Qzu7K3ftPtT9NICjpa014DgdPLysoOeEMTi2iuZRRPas+Wxh14
         3m3PoZpdMqzqTcuosA7kAZLfOBaF6aER3WNjn5nkZ9dD4+CAZoRcBQYp2xVybCHNyZ3P
         /4Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735030942; x=1735635742;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rqjl308OuNRMbWugA4jzjOfqs1qN28qDlrGRi1lmlOA=;
        b=YRugcDrT9Ri3v7z9Oh6Byv/BiEo+KWvyMDAzqABxFhJipoQiN4hMOwW4ZyH3FmVlkF
         /aZt3y89kZkh7ZvvNRSdpRIcWbz5r12/d+UhLVr3bN4Ni49GF4/Kr/2U/vMqtlJXj3kN
         HUgr6z20iyPW0jxmLwP8YHatOjodpd6uGax/37Ns/B30CPEuJa1z3iK08O2JGqYzG9Xs
         e+bXUv4+aCK1IPJBUeF8t7kigdbld1IoRrnlcipdvd3KOfKgmp+RqIIsbHdzLjdkkkOv
         Jn4yuqOFjku8/cyp22rJTYa5bEz7OphnzWtSkBPrgxQO3VOELvuPtKM2vd4jty/2WqWO
         3DWw==
X-Forwarded-Encrypted: i=1; AJvYcCWV1ZcqgCCuydcVN5o85CVkNgbxuTnO3gM6YGUc2ZP/PpMa/hOYgyRpXsUEhifU94dNAfsKneFcpyVo@vger.kernel.org
X-Gm-Message-State: AOJu0Yyq3NKyArQoF6sG47iYBa0FPo2bugdRycrID7KQBHQMpptPT4VC
	XOkwsD5v6KLZHNkFNB681MxXZirOGB+7OwjxnCrRsVbmF7gc2ct+bwH3aEEgN+g=
X-Gm-Gg: ASbGnctNMCgHLVfx6It8aj15NxjIBTpg+E71myzGEH2Zwx4zDpFFW5g8IbGZ3P79/ch
	LzE6VA9sAFhUUqf8rHlz+kDuCs7IONdTxjosvlCcrTi0rPFY2SBcOo8lKGiAi/wzcQ421ZJoIQ6
	4SUhW78WQinvKUpTy2ZIGsdOHIQ491HYzKm87Z9me4Cv+Jt8TZC1XHsL5hgLGkDWDVwDIFp3JEu
	NqT5CooZqvaLO1wp0OeQm9ta81vblop6jHhVBwK/8/ffpcq9u4CficjsOrOiEvVR1FsiSxxpwGt
	kbs7st7MnMRyCKpXV9KDpH1i/ReEZooqCVw=
X-Google-Smtp-Source: AGHT+IGykTi7JHcE7u3RIbhw9nHMoGJBAN6VL/xBiSZ3UlC0+Pn4XzS4kF3dFtZfJ0nP0IfLmC2iOA==
X-Received: by 2002:a17:907:2683:b0:a9a:8216:2f4d with SMTP id a640c23a62f3a-aac2714a5ecmr510447666b.3.1735030941539;
        Tue, 24 Dec 2024 01:02:21 -0800 (PST)
Received: from [192.168.0.18] (78-11-220-99.static.ip.netia.com.pl. [78.11.220.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0efe4b6bsm630137966b.93.2024.12.24.01.02.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Dec 2024 01:02:19 -0800 (PST)
Message-ID: <7813f2b0-e76a-463c-91f9-c0bd50da1f0a@linaro.org>
Date: Tue, 24 Dec 2024 10:02:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: net: qcom,ethqos: Drop fallback
 compatible for qcom,qcs615-ethqos
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
 <20241224-schema-v2-1-000ea9044c49@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20241224-schema-v2-1-000ea9044c49@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 24/12/2024 04:07, Yijie Yang wrote:
> The core version of EMAC on qcs615 has minor differences compared to that
> on sm8150. During the bring-up routine, the loopback bit needs to be set,
> and the Power-On Reset (POR) status of the registers isn't entirely
> consistent with sm8150 either.
> Therefore, it should be treated as a separate entity rather than a
> fallback option.

... and explanation of ABI impact? You were asked about this last time,
so this is supposed to end up here.

> 
> Fixes: 32535b9410b8 ("dt-bindings: net: qcom,ethqos: add description for qcs615")
> Signed-off-by: Yijie Yang <quic_yijiyang@quicinc.com>
> ---
>  Documentation/devicetree/bindings/net/qcom,ethqos.yaml | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
Best regards,
Krzysztof

