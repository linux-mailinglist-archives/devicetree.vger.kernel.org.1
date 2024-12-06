Return-Path: <devicetree+bounces-128168-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C83F19E7AE0
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 22:26:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8302728777F
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 21:26:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EC3422C6FE;
	Fri,  6 Dec 2024 21:26:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="R0Xsj1vj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B63722C6F6
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 21:25:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733520361; cv=none; b=D7jo+fp3Llvt7eb9TrFLCRfE0GrLjMjd1vOg7afVPsxq3kYvlah1wyCgjOJWEmmNAoI6R/gF/1WLINJiKwaRpdEDQKcyWtmzUvBm5MTi0dUR547NKvEW0MfOwOO+TIg5SEfHjs8bGvLiVUoKPP9cGAbaWv9nO7YixOpqKgTpmi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733520361; c=relaxed/simple;
	bh=XozRvPqqiHeG9PpK+KAt8BvlC4+3PPnRXff6x442qkA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fYj6Wuqi8CosAaUBA9J0JOsokAew3OHvvZzwh9AUQo7xGWcA5gUMqX1h2GHPY3aS0tJOAwxH9yqJnQZ6bFMHl4KzaWAWfkU+j7lMn5T1daIA1uJt8QYDJJITgzjpbJ4guZBB1R1CVZrUTJAk7vLUr0njmuLY8U/ZY4EIGqHK3nA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=R0Xsj1vj; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-434e669342eso1713685e9.1
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 13:25:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733520358; x=1734125158; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fY5PGKfinw0bTTrofkyjWmSLNTzsh9f6hZ66ZvW8/Rw=;
        b=R0Xsj1vjQDh/J7ZFE9ReRAD6mPkf/aMC5AhbaxH1E1V7cKw+9guxvFdTcUhuqFUsvY
         vJZ3J14zYxJtnyizJQ8ce0rXJM3CBE5UlIMFFtKfKgc4jCIhufYWO/UiifsvyG0OQUBb
         21VkqvkrPKzttYEqZyUdwShnPyxHuPh6SPZz32k3pA0A+A0n5ZYZ1ETbwgz8NxqiGcHF
         8QAeTlILznQyBTAkN/5ToizB4q4eIDE+t9q0bxcsBo/Z43ypeF1mqc8zI5xTcskZ8h4L
         Cn/7G+Ee6z6F4mDkzcVtQPpq03wxaTOKh81Wrhnh0LnCHHny7GrsJmPrCz/pZvOKk4Qu
         NpoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733520358; x=1734125158;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fY5PGKfinw0bTTrofkyjWmSLNTzsh9f6hZ66ZvW8/Rw=;
        b=e5+gcQDfFHidOu/OAstW/VH7NP5ghoMfOziT34StgMdVGIhmr0bRHpSvcoCjn/UnCy
         3aZk9kmYxWogmLh9+dtco6rXGOky2vMq8IN9VfZljM9iInPTrJekSuwb22TctlkIM6Hg
         JoW0kpMsoFcOg37mEEv+2Hsw1nYYdL2oNAajJkq8vxNJsVmNe6xvubbn0SgEdeFURTiy
         wv1JJmefIxEIcwyVCluof3u+j6jxmzYahRBFNFVKUGq9RuhiZvPLvTDi8xK4b8VSOnwr
         ROodQ4PketB9dBRWXoDoHnDnkNVgLHPI4jhtih84GWNyJ4zV/bx0pUnbThUk4p/XwkLf
         bWcA==
X-Forwarded-Encrypted: i=1; AJvYcCX7wS9Id1PmUzofYIJdmwbQOyzKZhUai1RBBVRlynA12hr7p9mUlLe0mAAUJzs/tNpXLHcEuXD/xbGK@vger.kernel.org
X-Gm-Message-State: AOJu0Yxfuk4a8YLytqCKq9dpJRxQ1Xfhbc5nHcSyV5pp2upOTm7SDBTM
	1FniporEuODux9JGwOSAhZHYSo4JllsZBQsHf/rnr+hFnob6u7K5V9+SWCgPm+8=
X-Gm-Gg: ASbGncsGbJRJvnPVbzmQ+1hb5ZexmzlYjCwLH3TnfwMcm4v2fZf0jwjMoMdfy4gouhB
	DQ5mHEqK2UbqgDmypas/yIfxCuyfmhsqzPGkDldT8lDR+8XXV1AFYCADGx5lywIHwNbNN+OAqXs
	ZDJ6Ue+ArqsR7UwMDNxPEd/iBR+oCTsLE9oDmhjaVZGRhgFdYLCc9G85wfX2fnrav0zcWNd8efk
	ry8bkKF7wIySNmfRjascVH/C+AsKx5HvBy4XTNkrduFXoIvcwyZPtoKNhoFCg4=
X-Google-Smtp-Source: AGHT+IFCuNytTJqW2Q/06hLBEwztlzuz4/nMye2kjnSGSBSbzlnpZShoPe5MRNOfbMcnO8GBE+1lBA==
X-Received: by 2002:a05:6000:1ac8:b0:385:fc32:1ec3 with SMTP id ffacd0b85a97d-3862b36b015mr3629269f8f.20.1733520358248;
        Fri, 06 Dec 2024 13:25:58 -0800 (PST)
Received: from [192.168.0.40] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3861fc51451sm5521521f8f.47.2024.12.06.13.25.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Dec 2024 13:25:57 -0800 (PST)
Message-ID: <e9812ebc-c96b-44ba-8fad-e64eab19ccb6@linaro.org>
Date: Fri, 6 Dec 2024 21:25:56 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/3] media: dt-bindings: qcom-venus: Deprecate
 video-decoder and video-encoder where applicable
To: Dikshita Agarwal <quic_dikshita@quicinc.com>,
 Stanimir Varbanov <stanimir.k.varbanov@gmail.com>,
 Vikash Garodia <quic_vgarodia@quicinc.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: quic_renjiang@quicinc.com, quic_vnagar@quicinc.com,
 konradybcio@kernel.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20241128-media-staging-24-11-25-rb3-hw-compat-string-v4-0-fd062b399374@linaro.org>
 <20241128-media-staging-24-11-25-rb3-hw-compat-string-v4-3-fd062b399374@linaro.org>
 <a2285d28-0f57-d165-a22e-2aa57b3cff65@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <a2285d28-0f57-d165-a22e-2aa57b3cff65@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 06/12/2024 10:03, Dikshita Agarwal wrote:
> On 11/28/2024 9:51 PM, Bryan O'Donoghue wrote:
>> For the list of yaml files here the video-decoder and video-encoder nodes
>> provide nothing more than configuration input for the driver. These entries
>> do not in fact impart hardware specific data and should be deprecated.
>>
>> Reviewed-by: Krzysztof Kozlowski<krzysztof.kozlowski@linaro.org>
>> Signed-off-by: Bryan O'Donoghue<bryan.odonoghue@linaro.org>
>> ---
>>   .../devicetree/bindings/media/qcom,msm8916-venus.yaml        | 12 ++----------
>>   .../devicetree/bindings/media/qcom,sc7180-venus.yaml         | 12 ++----------
>>   .../devicetree/bindings/media/qcom,sc7280-venus.yaml         | 12 ++----------
>>   .../devicetree/bindings/media/qcom,sdm845-venus-v2.yaml      | 12 ++----------
>>   .../devicetree/bindings/media/qcom,sm8250-venus.yaml         | 12 ++----------
>>   5 files changed, 10 insertions(+), 50 deletions(-)
>>
> A general query, this change is not done for 8996-venus, sdm660-venus and
> sdm845-venus, was that intentional? may be because these are not active
> SOCs in upstream?

No per the cover letter, those SoCs have power-domains and clocks inside 
of them, so the dtsi entries actually does relate to a hardware 
description in that case.

---
bod



