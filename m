Return-Path: <devicetree+bounces-75279-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 146A8906571
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 09:43:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AD94B1F24137
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 07:43:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA6BD13C91F;
	Thu, 13 Jun 2024 07:43:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="O6GWlopt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2780A13C902
	for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 07:43:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718264587; cv=none; b=hhUKIWlaJQOMuzxC3QWOwz54eb9AK4OhfpnMLq6MrbRjHvHxOccYTeWmiq4DyqWLexMoT4kcBkhLSSgWrOOamfY8R/OSjOX+P7C8e7OGOcYgoKKP/SMPFO2W3HenI4S+rhatxXWo9sbG+UVHYJsoyhISrVuXObloqo/FIFZTMxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718264587; c=relaxed/simple;
	bh=Oh2VIm7LM70YX19wn1LBpKXluX+l95XGAHjH23O4UWA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uNYqviPtnBPFbCAVu9TzeEY4z7E6Sol6yX3tCYLPiDxlHPNVbkCgTNiaoK8nck/wwu52TJRjMIBF/TZihN0/bYojHK6bkdxLpqiiaRznnzAddhShhm6NKn+/J7ipy6Wxp5fJzFXD8HMf4Cq7TEqfaS05xwYW4t2ih+dnZtYybJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=O6GWlopt; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-52bc035a7ccso830179e87.2
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 00:43:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718264584; x=1718869384; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wZOybXwAmI6sCFAiKuwFaCnejrVzOy82tLHhHkRl/yc=;
        b=O6GWloptzZVIlynNBd9b1HYPFeqt0Y/O+DMoS9thPxUFjzdPOUOghummvAFI+Vu70C
         w7LVh/Gjnbf2b7alzSCo09ExJwbuRmMHjcq9zHRhc7E5KKeRa/uuycxqSzjLi47b41RS
         N3p0TTeC0UFJ64bbTwuSruSuUz4cyZsXekUY7PJMbxAisLXeenuP/xBfcPdFwyMWtKiT
         1q4+1TEMCdjfqiRspbiDX5ihBOlD5fqJs8EXzTQTUF834OGqLLVB6+o1XxpYi0HMB6Cd
         XrSsBnzA60Yok6B0geWeD2hevMQnVMpzx8MiLYce5VF3i9ng00fVWBINwRVbudezgUsV
         1UoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718264584; x=1718869384;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wZOybXwAmI6sCFAiKuwFaCnejrVzOy82tLHhHkRl/yc=;
        b=Mf6OPsGacwC2oc39FKv1VKnwTvRL0lQWEyL9NsfUTmOp48S4qAm1rywHKBvxUX7lHY
         wE6vKEfsU3ZhMV+mL3WCZIhA99RWad4MIF3KPpFqm4aAPcjWQQ0PNUZgRVBcioIKRgrN
         HnuVxSzvYZ63PpQUw5wOr48F2adr005Q9XK5Ji9UvyZuD/xiBSrOIFxkecpOOONTGcc+
         omb4ZFuJDN0p4WxLsfMMqhL9uFpdD88TOZm7ZvFRR3TLZ/X+sk8F/gKOe0bW9p14Zn3C
         DSvagl/MwPBlqRdAdd7jLJUkBAFXie4q8nIf/sVxEm2JWWvePXMpbAwYiA5fJfAYIe33
         qkaA==
X-Forwarded-Encrypted: i=1; AJvYcCXuNVK/TwnVh35WaeplUcO2Vi1PNH7B8ioPdWDRD0mtlBsMsGk7J+CdR3szrh1HhpQCBNO28vnfNVy61DW1mhMefFaI51rstlFGaw==
X-Gm-Message-State: AOJu0YzkZFaIQdKFRxX1mgIZh7GSjpedYxIy7DBqQNONQDmqA9Is0mN/
	bG6ZNZwh6pdglLHWIsh1m4ldIxdOXQJtc/HbmEPEroyqmjlLDsepfLLjOM3K4lo=
X-Google-Smtp-Source: AGHT+IFe/gSwHRfx1q7ZYMPUTWA0VfmkZpZ1Y1lZIoSjnPH4fuB+TI++MzvmI2FSLoRbqfPZzNXVvQ==
X-Received: by 2002:a19:7513:0:b0:52b:c14d:733c with SMTP id 2adb3069b0e04-52c9a406a18mr1685954e87.68.1718264584176;
        Thu, 13 Jun 2024 00:43:04 -0700 (PDT)
Received: from ?IPV6:2a00:f41:900a:a4b1:c71b:4253:8a9f:c478? ([2a00:f41:900a:a4b1:c71b:4253:8a9f:c478])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ca28723a4sm113108e87.145.2024.06.13.00.43.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Jun 2024 00:43:03 -0700 (PDT)
Message-ID: <10fd543e-7b3b-48ef-9a09-acf8d17662a1@linaro.org>
Date: Thu, 13 Jun 2024 09:43:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: x1e80100-crd: fix WCD audio codec
 TX port mapping
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: stable@vger.kernel.org
References: <20240611142555.994675-1-krzysztof.kozlowski@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240611142555.994675-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 6/11/24 16:25, Krzysztof Kozlowski wrote:
> Starting with the LPASS v11 (SM8550 also X1E80100), there is an
> additional output port on SWR2 Soundwire instance, thus WCD9385 audio
> codec TX port mapping should be shifted by one.  This is a necessary fix
> for proper audio recording via analogue microphones connected to WCD9385
> codec (e.g. headset AMIC2).
> 
> Fixes: 229c9ce0fd11 ("arm64: dts: qcom: x1e80100-crd: add WCD9385 Audio Codec")
> Cc: <stable@vger.kernel.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

