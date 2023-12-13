Return-Path: <devicetree+bounces-24990-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 69DDB811DC6
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 20:00:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 68D47282C1E
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 19:00:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3332F65A75;
	Wed, 13 Dec 2023 18:59:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nh42G/pS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27A42112
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 10:59:48 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-50e04354de0so3611923e87.1
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 10:59:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702493986; x=1703098786; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iNrE6iOMC6ZmXH10NKi8LKgjS0EPT4eglJncC3DzCT0=;
        b=nh42G/pSI3IZihlY3nlnGj1Z3zDQ3wdeQ+AHIVrUeha2IasAhyVaWt5CfF4nPqCZHz
         /5o2DInwrtIiHbOzYqxCO1IfUSdA2NEIodyv4lpbgFZZ3cq3nibK6kqd/MlR7XNHkAjs
         KvMc9u7SOY4Xu/oaSCd5oAfwYWyuEpEs3LbUUV6D8DgK4/9MG3LplRioGnk3h319wH8B
         DcV4XEzOJc9GHnrylDB3PScl5vdxbQl2iBfBnrbvJJKGpZmIi04CacdoyGDuLax3lhBF
         ZPKCGX40cfuScAZWRMxqB5V1MrMH145nZSjO6M2ykhf2xfsZbuvbYoq46C/XZehb6ZKZ
         LQWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702493986; x=1703098786;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iNrE6iOMC6ZmXH10NKi8LKgjS0EPT4eglJncC3DzCT0=;
        b=lScMLsERhiWOVUfiHXjJ43NtPRRkpjUkIX3hg7tU4Ex16JMN24md0f82ZPE7uffDO2
         9fnQ6uOFwyqMmhPUC7eaeaOOUfggKoX9aEnJgD348yL7QSZmdjBwXbdz0zgcd57c7B0z
         o7+1uZxVPFEqdQTScaPn14E7IpfolT+pkg5ejp+cwBgvfWlOKsitOTRWMt3/MiDdEYvS
         zDEPJ0afcRxMPlT71yDXzWRl3O7nauMnGrrOwEZ50BEhQTsujMCbwOhWU+8qY8mBGv49
         BTvLawfbvMr3/RYKkHKXPOPDvBfmT3QNHXglEwwc5PvstpWS7O9zmObVY8Vb1vlOlw9D
         6fEw==
X-Gm-Message-State: AOJu0YxPiSnv/1upw1PVK1yW6+1HgNjwb8ydKwUAs2YRbEx4/WAcH9Uw
	LPHY8o5Jgn3qiAnF7+vyt4YCUw==
X-Google-Smtp-Source: AGHT+IHcw2PlO89hKXFwUl/TAuGJKffMwWbwYyqvDxXvI+D/RA+jlT6rS7rVGkiS+uTeHfXx65ZmBw==
X-Received: by 2002:a05:6512:159f:b0:50b:fe57:c7a2 with SMTP id bp31-20020a056512159f00b0050bfe57c7a2mr5427381lfb.5.1702493986418;
        Wed, 13 Dec 2023 10:59:46 -0800 (PST)
Received: from [172.30.204.126] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id u4-20020a05651206c400b005009c4ba3f0sm1680336lff.72.2023.12.13.10.59.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Dec 2023 10:59:46 -0800 (PST)
Message-ID: <04f0102d-fed9-41ba-a93e-2d0347d555f0@linaro.org>
Date: Wed, 13 Dec 2023 19:59:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] arm64: dts: qcom: sm8150: fix USB DP/DM HS PHY
 interrupts
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Jack Pham <quic_jackp@quicinc.com>, Jonathan Marek <jonathan@marek.ca>
References: <20231213173403.29544-1-johan+linaro@kernel.org>
 <20231213173403.29544-5-johan+linaro@kernel.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231213173403.29544-5-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 12/13/23 18:34, Johan Hovold wrote:
> The USB DP/DM HS PHY interrupts need to be provided by the PDC interrupt
> controller in order to be able to wake the system up from low-power
> states and to be able to detect disconnect events, which requires
> triggering on falling edges.
> 
> A recent commit updated the trigger type but failed to change the
> interrupt provider as required. This leads to the current Linux driver
> failing to probe instead of printing an error during suspend and USB
> wakeup not working as intended.
> 
> Fixes: 54524b6987d1 ("arm64: dts: qcom: sm8150: fix USB wakeup interrupt types")
> Fixes: 0c9dde0d2015 ("arm64: dts: qcom: sm8150: Add secondary USB and PHY nodes")
> Fixes: b33d2868e8d3 ("arm64: dts: qcom: sm8150: Add USB and PHY device nodes")
> Cc: stable@vger.kernel.org      # 5.10
> Cc: Jack Pham <quic_jackp@quicinc.com>
> Cc: Jonathan Marek <jonathan@marek.ca>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
Matches ds

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

