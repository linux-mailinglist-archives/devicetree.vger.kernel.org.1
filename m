Return-Path: <devicetree+bounces-25351-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C1E581300A
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 13:28:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6E84E1C216E2
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 12:28:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 228204AF62;
	Thu, 14 Dec 2023 12:28:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mfRO33HW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D1CE120
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 04:28:28 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-50be9e6427dso8598701e87.1
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 04:28:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702556907; x=1703161707; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/SrKS8sNndZYrnlsn4fMxH+Flx5ifwJNGo41U7qtLxA=;
        b=mfRO33HWZcrgi0JPXd5VtF7Fm5RVVIEGrgB/9UAs7w9BPZkEBZlVkiaqK+biWuVfBI
         4lB/HqbydvA+Pnorrzbreu5xPwY45YSjx5nDjd8Hl4RkDqOha7q/GqjIYhkTEIp+XOtq
         IvFuo86n0bM5Ibqa/sq7O/eRSm39ENaAAXuBWKENX9sQnkj0DSrEX4lEKvn55ENCx5dz
         QlZfAzK0LR+3vuRTV1lzEecvIfdTjAfmNxTiH9qjUtZVZo108LJglUKemSnAqkeMJVFU
         Yq9Aq8lY25HCrEHbIkMQx0N7HCmlzvr1FmzEZhNqySaL58jJHgypANCW6VZyH5IJby0+
         uKng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702556907; x=1703161707;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/SrKS8sNndZYrnlsn4fMxH+Flx5ifwJNGo41U7qtLxA=;
        b=qR//zsDdswtQvXzpsTNyfysHuUYBdjpofc/H+Cz83izOEaFtjGpQ1uj0yL9ghXIftn
         wDbyHEhBsTd2As/d3ERemwNo+lS8UE54jkPnY7/2q8kiCI1jVhVaeGHs9o2oYqJZ1FOZ
         mDCsp562u9sq5o3J3LvXqSs9SRZWii/A4OW+lTctZ1YYLdmcuq1LwGHkDyqLTHV9CWts
         fpLsS0VeNRTMQzoLiT/J/VmF3Lo5mYXaJG0Fma8vFUXg2bU0fWIIS+/fgFeh2nd6LfhB
         jEGMZLnS3s9GMlmRpj0d5RMFFBj+pZWo6CZmAyGeKSa00h/EQ5UvkBf/w/ufeLjv32xn
         HL6A==
X-Gm-Message-State: AOJu0YxfrMElrgGTxJfOrqJccQRdBD2YYF6felZMIEwaD0R8EvQpU00N
	/9A0ElTjeClhnHOb5E74tKd4RdOiDaKiPLrB5amGrlHo
X-Google-Smtp-Source: AGHT+IEc2xeJ2bxmQEsNmBXPvCBklzXK0KxVyhLrYpwUDVNLVkrMerE/xbpMua2vjlu7W84TBH1H1Q==
X-Received: by 2002:ac2:5b50:0:b0:50b:eca9:fa18 with SMTP id i16-20020ac25b50000000b0050beca9fa18mr4267592lfp.118.1702556906677;
        Thu, 14 Dec 2023 04:28:26 -0800 (PST)
Received: from [172.30.204.158] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id k4-20020a05651210c400b0050bef21a012sm1871880lfg.191.2023.12.14.04.28.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Dec 2023 04:28:26 -0800 (PST)
Message-ID: <b505443a-f51c-4557-b874-97b992d2ace6@linaro.org>
Date: Thu, 14 Dec 2023 13:28:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: qcom: sdm670: fix USB SS wakeup
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Richard Acayan <mailingradian@gmail.com>
References: <20231214074319.11023-1-johan+linaro@kernel.org>
 <20231214074319.11023-3-johan+linaro@kernel.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231214074319.11023-3-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Level: *



On 12/14/23 08:43, Johan Hovold wrote:
> The USB SS PHY interrupt needs to be provided by the PDC interrupt
> controller in order to be able to wake the system up from low-power
> states.
> 
> Fixes: 07c8ded6e373 ("arm64: dts: qcom: add sdm670 and pixel 3a device trees")
> Cc: stable@vger.kernel.org      # 6.2
> Cc: Richard Acayan <mailingradian@gmail.com>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

