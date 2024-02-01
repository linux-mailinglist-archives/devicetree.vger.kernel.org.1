Return-Path: <devicetree+bounces-37731-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE728460D3
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 20:19:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D14341F2A5A2
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 19:19:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 624FC85283;
	Thu,  1 Feb 2024 19:19:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="toX7yg+R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433FE84FB1
	for <devicetree@vger.kernel.org>; Thu,  1 Feb 2024 19:19:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706815149; cv=none; b=RLoHATx/K7tM0OtHf7Bx8e1vuFyFKvx3sHBNbdJlZn267j70z4BbrX5Ofyf6NAn7dhMrLwwC38LeC4rS0suJp5OLvnyJa/CvBYx1QZtfbr4OanecJ8NTn5n0YGLjBRBrMubLst5TODXm2ZCgp4DVBgn12QQD7lt/ZAnha48hSaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706815149; c=relaxed/simple;
	bh=cZDkM6O2SI+hnSStzto4oB9M3o4u4PwT/9WjeuL+Ydw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=neSnju+CRek5478lfkqWUC3bi7rg2YtdoeG0aC5mR8zoKC+hLy7AuoXu1odM97J6VISTW1agQ7V42rJOOoJnc6+7lcZBVPmeK7Dse8koVS4O+3NfNSBjvFu9FpdA5tc1ilj7vL3MG7P9k18guoDQXgIe0mc7WDW9YnZ4FUVrYFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=toX7yg+R; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a26f73732c5so200338866b.3
        for <devicetree@vger.kernel.org>; Thu, 01 Feb 2024 11:19:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706815144; x=1707419944; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sIZFeFmBSZP3bP6Acjlp/NzsrobYgOr6c8wSwpwqxl0=;
        b=toX7yg+RoxXzwMPMt/lbtbSiPuQwcY5Z7I+YyHwm3Jd9z8O+ZDW1mvQRDItEIl9O7D
         xEMrNVSCJjeOSgPw6WfWzauAYkMz3arB/OBGxGE15LKpGfyE0LQiJXhxyLVVWCYhn04M
         qF0XMWYzL57ej20g3ORsWHXwfIjBeZrHGIiwle2+wbFGhU8vQXc0DRPIeFwbZdRpTW5G
         4aVvotTo7c6+oHdLMNrMM/uZk/4sPRH2w8+ndgf0XhM2tImLUr5O9bPbEO3P+/+FfqgN
         yoDf+XgXe0yg70M3i3ET2jDDlq8h5RD9kyvMBG/u/IoYG2PNLOntZwoV4JhqFp+NaMMT
         VnIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706815144; x=1707419944;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sIZFeFmBSZP3bP6Acjlp/NzsrobYgOr6c8wSwpwqxl0=;
        b=VHhGofD/GtyxJ75f0ymCIlrrpIAfZyGue/ewxb4iidpsSEE1RjRmN8xUPRExvVKYKb
         AeR8jkXH80I8WVOzqrockVj4XU8ihQ+nhXLiCSzDsVfU0ZChAtTX0+drtH01ogNwHzKQ
         saAOjynDS7s0pHSfJ+ZaNqENmlJqlUq9VFSdOyxAP51xFsBa4HbwHX7dsczXrp2fv47/
         ugojj/tLInLdLX/4SIKOfxfg0wdJQte/qv5X2dFFHaakyrAk/WZ5tH+Bqwe5/5KenUtf
         OlgEyf4MRiqx9+5NDRQtFK9YCpjiQXpNpaR8ZXaTjKxtowPuCMfRbOytjRDvuO2LgUlF
         omlg==
X-Gm-Message-State: AOJu0Yw8IaLxrpoLAGtfapp7DIfLrflD6dDoMeHAzbSaWIyLoLCMcEad
	IvQvgov3XYTPzJjoD3zoY7v9oH08S3aHKXkqeN4ir+xEmdKCkaKfDwHl3R5fsRk=
X-Google-Smtp-Source: AGHT+IFbf8IHYs4RZPGohWaQLYwamt91OAIFaKQTbtj2adYE/dqDC9hZgNL1RyNLegWSiqaGrrEgpg==
X-Received: by 2002:a17:906:d85:b0:a36:5e63:7afa with SMTP id m5-20020a1709060d8500b00a365e637afamr2503202eji.33.1706815144388;
        Thu, 01 Feb 2024 11:19:04 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCV7qndTq57gMOzNZ+w9OO7bD15SXFrtAJOonpepxAOuro861DVtpOMcICVSGUa260An6OXND/PxuaCVR7YWBwZnZauTwYqJjjtUAx0+mkOgl2FD/inFE37D9aJf0e8duLMhZvQHf0UKHto6Tv7LCw+CTPaL9DrhAV7LcJdcOMWkrGTPzYKM2B4XLiRGKAr9rGv2AbLUqeTJCKxHgS0yHIc5kVYjzYZI2Dxk8ByvtWBtSQMj5CdSM8GDsy5kVrAZjwOrrvkw4jI0koplpDEYLlDPiumdh6zfsuuR9RqyRsnAFWqFKZSQdnBHIdptJxKTEUA8l7ZVAcvcIv9BkYufkcazGEZDnxu/EkxzVD+Omeid
Received: from [192.168.159.104] (178235179129.dynamic-4-waw-k-1-3-0.vectranet.pl. [178.235.179.129])
        by smtp.gmail.com with ESMTPSA id vk8-20020a170907cbc800b00a36f8fdeb98sm23088ejc.59.2024.02.01.11.19.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Feb 2024 11:19:04 -0800 (PST)
Message-ID: <12e6dac0-bcbe-4416-9b44-f58392a17835@linaro.org>
Date: Thu, 1 Feb 2024 20:19:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 05/11] arm64: dts: qcom: x1e80100: Add TCSR node
Content-Language: en-US
To: Abel Vesa <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Sibi Sankar <quic_sibis@quicinc.com>,
 Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240129-x1e80100-dts-missing-nodes-v6-0-2c0e691cfa3b@linaro.org>
 <20240129-x1e80100-dts-missing-nodes-v6-5-2c0e691cfa3b@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240129-x1e80100-dts-missing-nodes-v6-5-2c0e691cfa3b@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 29.01.2024 13:45, Abel Vesa wrote:
> Add the TCSR clock controller and register space node.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

