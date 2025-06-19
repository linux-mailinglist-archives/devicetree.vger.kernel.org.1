Return-Path: <devicetree+bounces-187669-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC66AE0E22
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 21:43:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1717B3B46E6
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 19:43:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F21FC2459C7;
	Thu, 19 Jun 2025 19:43:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EA3XkhQS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14ED4244E8C
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 19:43:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750362231; cv=none; b=RuA8bonL+feuVBs/j0YMjh1HxdBYB9sdhu1hxDqPqiGcSfdLgdPEJ5S3e32jISjgdh0gfi2vTsQR746jqFiIj9ZO7JgiVyPSb+Tyk2zPvstt+SAFZeHAWxY+L1Mpc4+jFLEIwkRGowJMaZpGl1Qdn0pmnjQ+y24wOtiT7XxA5qE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750362231; c=relaxed/simple;
	bh=yDEbu7+KEppseRvMkdEiO0Gls82wPynGcYQ2oizwVTA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SxZbXo0hhbjlK8p4sBiN//gVT+Nfyv8Wv3yVkLdwPSRYyEtYYcUjV+RViBtVKaKyxElwBjnvJ4lAx+ytOrcAEHpIc9X3VrpP/O+la5j+M8G2jO60TVkXBinXximHziB9mlz6XBMJr73K5xsTmBzVEj6UDoe8OETQwFGtEyZSZ9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EA3XkhQS; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-450cfb79177so6185555e9.0
        for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 12:43:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750362228; x=1750967028; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hy+M3MYJ3Ebzf/cWNhjwsSRZ1HHszVPNpmoBuK91md4=;
        b=EA3XkhQShm5QOlJrvcPhaGqYpTte8mVjKWzHtAM7heVMiqLnn1gQEkaAhxGAUg8BKM
         k51TLJGME70IBQqcebcbS8VWFMvQthlQpc6YHxrXeL4zlcsb7U2Y4k1hLG6dF10Y8TAg
         K7IQA18NeUZQ0U8zrIfQ1NgYjctiq/9JMKeASZZOfAB8v2wLfKgPauXq09p6KhfU3UtF
         DJJIcIzsFTnYaN/DVCGTvtAr+xuH22Yu+Bu62s9dDsL0R7kmXuX/ggTnKAVqyq0z7zo7
         VyGt58nPxvXNwt5YHlBpxqQLdnT/iCGm86z3WteZHYhT48PJgoMyrSVqzKPzOb8x4kJw
         mcgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750362228; x=1750967028;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hy+M3MYJ3Ebzf/cWNhjwsSRZ1HHszVPNpmoBuK91md4=;
        b=wB0bYdyyp5UnyMpGUlMmr2NHET3IeNEfw/+9GVWSbQ9m3BzU4FVVR8+vKDprg5Qjnl
         SiqJJLEhoVwxnYk7Ny2nN7M2z1onBMw8abX9itjerxA8Gji+UZ0A+Wf6zqy4qoHNv9DL
         vVEQWr3JDGD4HM7I7THOMoAuAje6l2wvqYdsMVNb/77Z/xLNie6RzB/NN3o8KPo99NAU
         j7v/FoxonfsCrEtTOdvHuQYkZDFMvpZGX90cu4wy6L6/CMF0z6PtpDQLm+SMZwDfNw2o
         y+NGhhbD34FlGwKEPjSYV43Qxs8E1VlTaqSulB4F54Ntvps85ZoSTS/CAe59U45OGLUw
         HBcQ==
X-Forwarded-Encrypted: i=1; AJvYcCXhL/rHMthw0xsOaRVaZOcXbpKRO6yMa5xsNciRJOTB8XkHiRrie8gC1MW6ypfi5rYluxUgQAl1Ew7v@vger.kernel.org
X-Gm-Message-State: AOJu0YyNOEoL2iDDSpOOsLh85bzGu7QEOSZHQL2hQ5vTPtIb7cd4ftwM
	qtjmkSduRmZzlpgO5jJxtRiei+tCy2SmWdDPFYFHB9YH79rklsw1BfUkcnVtHed1/lQ=
X-Gm-Gg: ASbGnct14q6YalNJqy6XP+EekrTR5WaLL2UG+MiWJ2EWSLBE34bIQels2RxOKGEM156
	6e17/PMEsH7+zwipv/mqSlb4DysIiNWT6vOndTWlZOpdLpfb5cQCZN7zLfe3eWVBRDKch9DpRME
	5VGuTW+rlH5ueGy+AkVV9F8ONp/U847HjIPFigcxAMJxBayRZ2LF7tHYwQ4TLUzMBFfJAPi1mVy
	3T5f8wCLnBb0AhIZgpU8RDDzk5YD9MzdEJ5UQRwuhScTntYka9OW60g6hPoGfmedGNY3WVRiDOm
	wEq1jALtBAgb9kFT5OSt/fdtM7svx+7jJgYWivCZlEdy//7xp0ILnbUFVjeg5x8HO+lAG83KCwt
	v75fdxQPpU5+JaxZkQndF2URO5ushU/++/r6Cqw==
X-Google-Smtp-Source: AGHT+IEJqMT3RaOTaO3Ou2VXZG5oilq/ABPQu3IFKnDHY2NkDCpck/QpOvFVGuHA2IM7O/SjWVxtww==
X-Received: by 2002:a05:6000:461e:b0:3a4:c75c:efd5 with SMTP id ffacd0b85a97d-3a6d12e6431mr212173f8f.46.1750362228349;
        Thu, 19 Jun 2025 12:43:48 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a6d0f18152sm214537f8f.27.2025.06.19.12.43.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Jun 2025 12:43:47 -0700 (PDT)
Message-ID: <66edbe65-a137-4661-b0c8-8a6813635c44@linaro.org>
Date: Thu, 19 Jun 2025 20:43:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/7] media: venus: Add QCM2290 support with AR50_LITE
 core
To: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>
Cc: quic_vgarodia@quicinc.com, quic_dikshita@quicinc.com, mchehab@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 andersson@kernel.org, konradybcio@kernel.org, stanimir.k.varbanov@gmail.com,
 linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20250613140402.3619465-1-jorge.ramirez@oss.qualcomm.com>
 <20250619142012.1768981-1-jorge.ramirez@oss.qualcomm.com>
 <672b5db1-e045-4625-bad6-83224c27c07f@linaro.org> <aFQg6x+FxXDY4P5m@trex>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <aFQg6x+FxXDY4P5m@trex>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 19/06/2025 15:38, Jorge Ramirez wrote:
>> WARNING: Argument '_1' is not used in function-like macro
>> #42: FILE: drivers/media/platform/qcom/venus/core.h:546:
>> +#define GET_MACRO(_1, _2, _3, _4, NAME, ...) NAME /* _1-_4 are ignored */
>>
>> WARNING: Argument '_2' is not used in function-like macro
>> #42: FILE: drivers/media/platform/qcom/venus/core.h:546:
>> +#define GET_MACRO(_1, _2, _3, _4, NAME, ...) NAME /* _1-_4 are ignored */
>>
>> WARNING: Argument '_3' is not used in function-like macro
>> #42: FILE: drivers/media/platform/qcom/venus/core.h:546:
>> +#define GET_MACRO(_1, _2, _3, _4, NAME, ...) NAME /* _1-_4 are ignored */
>>
>> WARNING: Argument '_4' is not used in function-like macro
>> #42: FILE: drivers/media/platform/qcom/venus/core.h:546:
>> +#define GET_MACRO(_1, _2, _3, _4, NAME, ...) NAME /* _1-_4 are ignored */
> 
> about the warnings there is nothing that can be done - those parameters
> as per the comments are necessarily ignored - that is the way the macro
> is supposed to work.
> 
> can we not live with them? otherwise I cant do it in a nice way.

For preference I'd like to avoid adding warnings.

Let's just stick with your first version instead.

---
bod

