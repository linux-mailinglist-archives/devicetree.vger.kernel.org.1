Return-Path: <devicetree+bounces-11697-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE8D7D65C4
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:50:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AC6B41C20C2E
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 08:50:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32E1E1D558;
	Wed, 25 Oct 2023 08:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FKSqpr0t"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED1DD3D72
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 08:50:21 +0000 (UTC)
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF22219F
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 01:50:19 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-507a0907896so8040963e87.2
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 01:50:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698223818; x=1698828618; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=42JgJL4inSij1dDJZcKoLha0/JD4nZAzUlXXA6vbSFk=;
        b=FKSqpr0ta9Vn7tSIRC9rZOG5CwTLG7E7SXNHiL6+KSNJTyvP3kcBoWcAnEuJVrfB0K
         rmNqaRW1H5fp+RsvPONDRDi5noyJN8FSxw/pGSTrx2XphZkhXv5LahTJxQH7piROpvW9
         maY+QocffrmbBPUWG28s/LQQY3+VIk+ZhPv3RhIZINKcE4J2s+IrMzucbYNDoe/xMKVZ
         nfLmJN0I6DWa0NBsJMpOEPR66f2iYPFEOSx0T3vZlLLXGgXMmSI6ncs2M8ViqIjBv8c3
         jjZvaiUsiDGJGT3o6dL2C9VRE7T8tJIqYZPUX/ZRR/3IzjJh2fZWfFKuKuEpQzHz/0a5
         Mu7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698223818; x=1698828618;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=42JgJL4inSij1dDJZcKoLha0/JD4nZAzUlXXA6vbSFk=;
        b=vu+4RmsNZqWqrq2XAcGNrtsRLTTIWAbUYY+/n0RrVrd1+dbSALuiN3N6LnOQBQQLF6
         Nanm9w6BHqlsiUhPhqPpPOcA/yDH9UQtQFSij01WcFYY0yNiw+J+nUw9cpOFuc6FxIm3
         VE/Hbmwuj2iBJNP/ApC1f2ySquHeU37YExrrQ7qXq0yeBz73mu1w6dkiPhsmZTVaj3SR
         rl3ISz2z6lBWcau5TgKGYR+gQyHEx+gw3PKYTecz32gtCTeL7GR6W7kHxH1AxA8v3l9D
         YxmvBFkWn3l3gVmXmRmoaW7WwuftkCpVdOLUqERcNt9+jqipN04hWdd+Suz37790n4R2
         HMug==
X-Gm-Message-State: AOJu0YwGYZ6X8efs5CdCUo36HPme+e2baSEfxAxk/9VhOgHsbFTQGaxg
	KlbWyBY8uBhZmafYgVp9zU38pQ==
X-Google-Smtp-Source: AGHT+IFI/jAT9xMiMciXbNW+3Fnv+Y9Bc7x1R5bYbksqN4voIBEiqokYkWMFtRc95a6GWDmnR3p3+Q==
X-Received: by 2002:a05:6512:6c4:b0:507:a04c:76eb with SMTP id u4-20020a05651206c400b00507a04c76ebmr13233616lff.35.1698223818149;
        Wed, 25 Oct 2023 01:50:18 -0700 (PDT)
Received: from [172.30.204.57] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id y7-20020a196407000000b005041f004d33sm2475831lfb.90.2023.10.25.01.50.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Oct 2023 01:50:17 -0700 (PDT)
Message-ID: <b7e6839d-69c6-4d89-805e-be6bfd384a2b@linaro.org>
Date: Wed, 25 Oct 2023 10:50:16 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] soc: qcom: llcc: Add configuration data for SM8650
Content-Language: en-US
To: Neil Armstrong <neil.armstrong@linaro.org>, Andy Gross
 <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231025-topic-sm8650-upstream-llcc-v1-0-ba4566225424@linaro.org>
 <20231025-topic-sm8650-upstream-llcc-v1-2-ba4566225424@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-llcc-v1-2-ba4566225424@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/25/23 09:31, Neil Armstrong wrote:
> Add Last Level Cache Controller support for the SM8650 platform.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
Did you double-check with the docs for the latest hw
revision?

Konrad

