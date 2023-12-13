Return-Path: <devicetree+bounces-24973-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 10909811D3E
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 19:47:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 86C2A1C21224
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 18:47:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D31335FF05;
	Wed, 13 Dec 2023 18:47:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Vebi432v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C15AFEB
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 10:47:03 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-50bce78f145so8455714e87.0
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 10:47:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702493222; x=1703098022; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=D9pRN652Qjyr+bUpPGngJiTKRnZ3pLNOirbLUeYcKaE=;
        b=Vebi432vX0Le/x7Us8oanXhjU9Ua4FaNL0hDw0WBJ/PHuVqOr05mCJRNjQAstuN9k3
         4JuHcHTYkK55eDFYxo4DP2XGohm7BgoS2OJW2Sf5ad/Y+F5f6vFghid7dAzcw3DJDC01
         ww3VI8XIPuR/VEFkeRqh6Pa16dOmmDM/2dMM1+nglvk/13yq/5SLBcftCJlEbjWOnxBe
         3BgWK8XM/EZY9cWCeajfRdFlJruaC1qX+dIpdkTiu9quIdQe22dJ2DEq6qTaXEj3zvBE
         6M1m0eWhh1Pfdyhwqaf0lVQ1LAIFJvnEHLlgZ2j0tJ65kcyAoyHl1jn2Ht06nhixBAWJ
         XTNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702493222; x=1703098022;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=D9pRN652Qjyr+bUpPGngJiTKRnZ3pLNOirbLUeYcKaE=;
        b=rC0pVl8qd2USzsLQ+z3febkrUW9Hs9/+YkdnVYZHQboV9rlwaeT2+Cx4LkPEBlw3xI
         qA/aBw09M/PFQm1be29J/XlzmkNYkREQ3bUWR9VYZl8PCf6GYdpHeDsYSeURkwVsxEF8
         We7AKF1YGxI2UyCGrahWJa2v8iwAKiULiaWeXSdakKpsyIoDjr8sOm+gnRMyxgwpWPEk
         0xwZLmTjBENqZRNNSo7nVjJee3+KrGxKEUQSQQ+7KRM7gSbpnjvJS/g7P287py3FkhhM
         SGcf9Ryh/dm031+lYHPjE4oFXY+PaNj8QPJet4T/XEsl73ktLhdl4iegqruqd8145BHI
         DsbQ==
X-Gm-Message-State: AOJu0YzumJL9ZgJOx7jH98x1NdM34NEUP/W9VvBUtRbQ+e0JjmHNgu0B
	OKKi0JTl/yk+ZMMDYR2KZ4rmRg==
X-Google-Smtp-Source: AGHT+IGdLUVASkIbLTRMFB5Hpp0dA3qXNw+0b/Naa+lZJ8p5ZeeCweWZkm2OE49WwXdI3JyMdWp0rQ==
X-Received: by 2002:ac2:4a6e:0:b0:50b:f06b:7aff with SMTP id q14-20020ac24a6e000000b0050bf06b7affmr1685913lfp.233.1702493222048;
        Wed, 13 Dec 2023 10:47:02 -0800 (PST)
Received: from [172.30.204.126] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id f12-20020a19ae0c000000b0050bdf00f688sm1653687lfc.299.2023.12.13.10.47.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Dec 2023 10:47:01 -0800 (PST)
Message-ID: <b319bae5-1253-471f-a022-4d1d2425e213@linaro.org>
Date: Wed, 13 Dec 2023 19:47:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] ARM: dts: qcom: sdx55: fix USB SS wakeup
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Manivannan Sadhasivam <mani@kernel.org>
References: <20231213173131.29436-1-johan+linaro@kernel.org>
 <20231213173131.29436-4-johan+linaro@kernel.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231213173131.29436-4-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 12/13/23 18:31, Johan Hovold wrote:
> The USB SS PHY interrupt needs to be provided by the PDC interrupt
> controller in order to be able to wake the system up from low-power
> states.
> 
> Fixes: fea4b41022f3 ("ARM: dts: qcom: sdx55: Add USB3 and PHY support")
> Cc: stable@vger.kernel.org	# 5.12
> Cc: Manivannan Sadhasivam <mani@kernel.org>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
Matches the downstream kernel too (as it should!)

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

