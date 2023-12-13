Return-Path: <devicetree+bounces-24993-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A28A811DDF
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 20:01:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 39C3B282BC8
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 19:01:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA25867B49;
	Wed, 13 Dec 2023 19:01:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="V6TbtTBY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADFDE99
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 11:01:33 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-50be9e6427dso7781873e87.1
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 11:01:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702494091; x=1703098891; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3zkodmR2UxFPx03GluxRmK5wVljS7D1ydfe2a4+d6LQ=;
        b=V6TbtTBYrv0B8o5sjhuXAjuRYdAS7pXjqvqzChUPwFri4EbyOVe5J/JkPnKqjFxXAv
         g3YcA8W8V4hEDVMHxrsfTkpD/OL/TmG7eiYwBUyN4yd165Vc66QKfuvkuV2Nc658o8Vd
         pz5OL2Nzzc3M7PBx7SFd3MOLS4HD0JHbd7G9Fu0kPJoSAVNj670/oDmDo+5kJlFJ0Pjy
         msTlJm/HmNBMllFUf0ALFNSvq7UH8mP+7S/DnCXqiOlarTrlSsAz407K4gNrE0yKsZ9x
         erZ9QS2n6wagELoij03oHi/dY06ZutcGdZafnay7NKwLc8y/OnuGub6XTKbsNcj0fDO3
         ujiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702494091; x=1703098891;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3zkodmR2UxFPx03GluxRmK5wVljS7D1ydfe2a4+d6LQ=;
        b=G9a918ABTfzAMOCwEpdi4cNbcGens0fi4iZXfyTj5uE2kiSGSTpZ3Y82QusbjW8Nkc
         ZO2mf8tHGQcH2mGxDPYOK04lwHgzqWo+MhbeHysXjcBb07j18gjwkIa35+tnnaQ8tubB
         WSxJZNdWlI6q2e4vaOkazU0ST42aagAzN+A5dYeWwkfIzLqSoAzzvCjBLjMYqpiKNUSQ
         d3vymayJVQ5yY48Uf4KbWUlEjRaVKqtGC59MuD2y+WGNIJPpUCWDhP4aSIYPMpQqZTV7
         DWsg/j54hUlYMEumwLhU2kCfxKrhmyav8QuPPQB0E8If/k82tqQus62PWkQtHn+bqtka
         Qs/w==
X-Gm-Message-State: AOJu0Yxs6o9x6DiL4x+PqvtUKepYtE6UwdAtGbjdqwwDQ8cdVMg0vQMU
	wx6s57m1yJq+kFiG9BBveT3+ug==
X-Google-Smtp-Source: AGHT+IEHI18lmeRYalqAJaY5ttdR3u/fUEx8TECEk1raQLBwDSVAmYcwHwmnBr823IU9BWrLLask6w==
X-Received: by 2002:ac2:4e13:0:b0:50d:faa9:2df1 with SMTP id e19-20020ac24e13000000b0050dfaa92df1mr3211718lfr.82.1702494091617;
        Wed, 13 Dec 2023 11:01:31 -0800 (PST)
Received: from [172.30.204.126] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id u4-20020a05651206c400b005009c4ba3f0sm1680336lff.72.2023.12.13.11.01.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Dec 2023 11:01:31 -0800 (PST)
Message-ID: <e2c5d7ba-15c0-45ea-ae45-2a6deffde04e@linaro.org>
Date: Wed, 13 Dec 2023 20:01:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 7/7] arm64: dts: qcom: aim300: add AIM300 AIoT
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Tengfei Fan <quic_tengfan@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Abel Vesa
 <abel.vesa@linaro.org>, Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com,
 Qiang Yu <quic_qianyu@quicinc.com>, Ziyue Zhang <quic_ziyuzhan@quicinc.com>
References: <20231207092801.7506-1-quic_tengfan@quicinc.com>
 <20231207092801.7506-8-quic_tengfan@quicinc.com>
 <02be9f46-2187-45d0-9929-31f6a2c18b35@linaro.org>
 <11257e57-693f-46db-8f97-09e5d4c20238@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <11257e57-693f-46db-8f97-09e5d4c20238@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 12/13/23 15:04, Krzysztof Kozlowski wrote:
> On 11/12/2023 11:33, Krzysztof Kozlowski wrote:
>>> @@ -0,0 +1,579 @@
>>> +// SPDX-License-Identifier: BSD-3-Clause
>>> +/*
>>> + * Copyright (c) 2023, Qualcomm Innovation Center, Inc. All rights reserved.
>>> + */
>>> +
>>> +/dts-v1/;
>>> +
>>> +#include <dt-bindings/leds/common.h>
>>> +#include "qcs8550-aim300.dtsi"
>>
>> Which includes sm8550.dtsi thus I think this is compatible with sm8550.
>> You even use sm8550 compatibles here, which is one more hint for that
>> compatibility.
>>
>> We followed this convention for RB5, although not for QRU/QDU1000 boards.
>>
>> Anyway, if you add here new SoC compatible, I would expect to see new
>> SoC DTSI.
>>
>> I don't have in my notes any previous consensus or decision in these
>> matters, so let's discuss now.
>> +CC few Linaro folks
> 
> After some talks, the idea is to create qcs8550.dtsi, which will include
> sm8550.dtsi, and add top level compatible for qcs8550 using sm8550 fallback.
To the board device tree? Otherwise it'll get overwritten.

Konrad

