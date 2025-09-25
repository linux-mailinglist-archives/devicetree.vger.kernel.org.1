Return-Path: <devicetree+bounces-221268-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6201EB9E2C1
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 11:01:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4B4E01BC2AC3
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 09:02:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A646927A476;
	Thu, 25 Sep 2025 09:01:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KcBMAzOp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C240121A92F
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 09:01:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758790903; cv=none; b=ivSLvffNU7jxLJs/gutgr7IBkwVegpTimZOZt7SQb1THa+/mWdIN5kAUpYyErQQfdUlsk8rC1lDOccq7fWl13Ek5dk4itngtU5aUguZ1vd8kS9sheY+HaPu4E4ZsZVky5r7/8veQjxwf5lm6vJOiYRfj4m6/C4tpdn2hbOJWvP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758790903; c=relaxed/simple;
	bh=yqstp8v0w5ZqvhHqs9nCFyjLloZ4iTt0o1sbH2L91Q0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Dg92Yp05903gC1KtLGISdc60Cm3ys7PWnW9gZQuMR7XbNtKJKQbqt+vRam0A/ltKYYavVoLuVKxsa3GFJtFcvUJBjjkIah5DBW3iGxbcFrh6fSy/nxg0MEZ9PsJ5SJpiWnyoIFx7xAFLggCW2DkpVHi/+jqq+zlFxSWRGHbAP7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KcBMAzOp; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-46e23a6617dso6935145e9.0
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:01:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758790900; x=1759395700; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yqstp8v0w5ZqvhHqs9nCFyjLloZ4iTt0o1sbH2L91Q0=;
        b=KcBMAzOpgBkmgOocch8p8cFOUenehfx6DudKUPvCrNWWDmnJsQL7zcRP0O4lKi1irG
         nkyiXaIwogYr91qhYclzydOPex9sLbNcQOAbB0cEtkxJpRvNeNb+4LtDObOnFyzV6N1F
         GmILdP6DWfMDYHUr+JL/CMmZpCh7/aaXNE2tPaK+qkK5vlQQN72g8TB6nbT8Be9DgqyV
         jVYRVBTFfRjjF3NL+7yAlnZ7bVgS54yZBEZb/0fku7IZyyFuKMT/pwMQGk340yOxPMXU
         pyAOdZAWaAO6GXtHjXMTE4i9f9Cz2Kv/VmAET5PkDMVDRL8GmnxJAMAEG5uVCIcIGS3G
         lFEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758790900; x=1759395700;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yqstp8v0w5ZqvhHqs9nCFyjLloZ4iTt0o1sbH2L91Q0=;
        b=u1jgr9HEGOJiulj2Bb6DmCu20TC44yuXM8QQbt4nBQ1lTV2FmlKI2ZOYCXPM6nvSNk
         RizdTSkgOMX4kqUcOARTQmuYG0gfy79qN2lGW6PTss/+ovKMd/2CgO51KauQJjMw1ol1
         87RzkSL71/yK4sCfMoIgZFW3ocWkU2dJ+Q7voqUcbVn3Kew6rBij/gk0/XDMkATcFPeQ
         CFlUIFcR4iLQxrQmZg/QfkZ1qBmCgWmwiae4SzR9ARIe7airc+4xKK/Onbe2OeIIZ7Of
         XVBhiHxx8EJhH5rFyzdyE66VAHjBO9vBUauTNL3IJ7QK3fYD2YJEElv5hSOXEGe6yjxy
         N0Ww==
X-Forwarded-Encrypted: i=1; AJvYcCXa+WhItmtD6hHtSVaDIq5n+4T8wAy2GoTWWdGCx/EYsYe0Hd4fubz5pPEPMQ74NpKzbW3gYLXsiBny@vger.kernel.org
X-Gm-Message-State: AOJu0YwZ1uy3dfiGgsLjmCKF5EyaktFh+zNaqOWZB0lL2HWxeUtsTsVj
	SYtY7+tuuYQtS47AXmxN94LISS3onEKmr55PFJfEY9Xjcew6fKHphrFVnM1InbV6aaI=
X-Gm-Gg: ASbGncs25yaYRZxPT2EX19VTJ2KzXgSEVQ8m5jXqLcmcofeErHZgKcbnXnVoLEOD7NK
	V8BAMoMEOuFsPrZOQa0C6wsWZFgFXI0m6XK/+Err0qliwaiwWJ26cgvcOGcP0n1XmWrlSNFNFJU
	uQrXOVMAL44PluQgk8oA8eoSiwP+g1k5wZDDXwZ6fOcPCdH4DGiwKOWH/9j8BPtH0tchRcmomNT
	KDuMJOx82oKDE4bsEJZFxo1SBkzv3mEc+aY1OxRRtVVj6IOuVsHUche3HU9S286GhjO2OhLWHmc
	3FOAVQ+SsEfGwNKKoq2Kbwtq83ufudiEZlAJCIr9X6HSvUGdup0ggkzQ0zvvPi5GQBwtELAso+y
	kwX3gIAEw+sy04nM6c9xLDNI5mSnrFSb0Y254W/WGTnRLxIKJ5avXV1NF2ivFSy6I/rxaI2L7x0
	WjbMMF85ni96xumSQ1yw+mfgpWUOEieHk=
X-Google-Smtp-Source: AGHT+IFPH5bNTpMjVvNRN26DifPNLAFoSeAoicHRC1HEEH9oRvExzs+S4YeuHSGoOiaUNTFghFYSSQ==
X-Received: by 2002:a05:600c:358e:b0:468:9798:1b4d with SMTP id 5b1f17b1804b1-46e329d1b47mr30509265e9.7.1758790900027;
        Thu, 25 Sep 2025 02:01:40 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-40fb7203b8asm2128929f8f.9.2025.09.25.02.01.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 02:01:39 -0700 (PDT)
Message-ID: <14df3870-6cb1-4e5d-9c4d-bb8acef8c594@linaro.org>
Date: Thu, 25 Sep 2025 10:01:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/9] dt-bindings: clock: qcom: Add support for CAMCC for
 Kaanapali
To: Taniya Das <quic_tdas@quicinc.com>,
 Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Jagadeesh Kona <quic_jkona@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Taniya Das <taniya.das@oss.qualcomm.com>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, aiqun.yu@oss.qualcomm.com,
 tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
 yijie.yang@oss.qualcomm.com
References: <20250924-knp-mmclk-v1-0-d7ea96b4784a@oss.qualcomm.com>
 <20250924-knp-mmclk-v1-3-d7ea96b4784a@oss.qualcomm.com>
 <4315205b-5320-4a8f-a707-45f5eb35ae51@linaro.org>
 <8c558ac3-541b-47c4-be4b-c9101997de7c@quicinc.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <8c558ac3-541b-47c4-be4b-c9101997de7c@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 25/09/2025 09:46, Taniya Das wrote:
>> BIST == Built In Self Test ?
>>
>> Can this not just be put into one camcc header ?
> These are two different clock controllers CAMCC and CAM_BIST_MCLK they
> should not be in the same header.

BIST means Built In Self Test ?

Is this really something to be upstreamed ?

---
bod

