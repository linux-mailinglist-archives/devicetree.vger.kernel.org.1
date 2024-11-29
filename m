Return-Path: <devicetree+bounces-125516-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D7DF9DC2F8
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 12:41:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BD756163792
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 11:41:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5551199FAF;
	Fri, 29 Nov 2024 11:41:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UT0n/lxz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F31F1991D8
	for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 11:41:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732880499; cv=none; b=VgA58hqRuIRjyWvWt+6UII8zY/R4v0Ypkva5ZnAv71RyuqvmiIrEHW/cCWG6kpeei8IZnSAadQ2ng63y9c9MJOxUu0IOzQaRMAH0yqziNITR9WAQC11zwU0nK/mEj+fRVa0Rh1hHzS6hcd8SWOIKhP56tbNHzDTQASdY8qtldBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732880499; c=relaxed/simple;
	bh=QOYcGKD6GkoOWI2THd9QW/QAO9FbQ/mMjfRQ927Bf6Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=k5LAeccjymmTp7N9aTKBdx+Edsn1TAyYwM+cgPfViXibMc/M1/iCi8eqnEB1+SpgzsCY2O9RpjdYbS7yquyDWz3ZQ9Cj5ReytJPCFeVIPFLz6EaSDOGjHWHtG9rIMA1KJ7Yc60FzF+qURpaIn37BYy6L+lWuFKrZy9jixVMBrQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UT0n/lxz; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-434a2033562so16158595e9.1
        for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 03:41:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732880496; x=1733485296; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=z3sMy5emdErSKL+MyeTW7qsU/fxRK/CVygOjCkn7jTE=;
        b=UT0n/lxzLylHtKILENkkGWQQbVbpjsHeDav6FntpOUMYGwhmraqKHosRzXfprevPPU
         HHXLRWChR2zwCwFXZBnNrgSyeIMOA4eAmTPA3iNVThzpHHIqa5nmULD5f68Nwx9eZzgK
         HjKd/WoAELshJB+X3/LMdeNPceq7hoJXRM8uaTZHqBzlth3Tn+/9crdfTQ/Ja1POoapO
         EphCG5CaLoICHzBgjfRhGnuob+WTpJ+69K/N6atuuLvd+aRvZXZsHNjOFyzzOxNzBszj
         Nkkk7RlBk0yepxoG8DfGnGVT/VDn6jkS0lj1G0/3hSyyaKbBQ7hES7WkDZ3KDRTlcX+e
         oN3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732880496; x=1733485296;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=z3sMy5emdErSKL+MyeTW7qsU/fxRK/CVygOjCkn7jTE=;
        b=KS9MN4lE73Hyb7agF2/b+akL/Yu7YbUOQQvJBJ3vPLSF66YD1dhl687Rq3xBJTOqFc
         ELQhulp4xJLZSrj4GFfwlDelaTt5f4blnmCRy91BFgZi4C76rCtNfMCvEg+bnW+LWvEu
         wCOwDZ6kkH/K8yTCyqGG5SFWCn4LexEMkQqE4wAUrsvHSID5fvqBEV3aMGPZdEF047vj
         XW74OZFQTTt2lqHdawnZszQd961pU4h9OTDkoz2zC7Gdr0J+hBGKZyK+AH0gwxY1rpV4
         P4dol9v6VyBfyKzP/QmN+UO3fpuSEjknUEgGCUyLLbMk3IRVWfaH0sXVCYgXjZH0sDpq
         Z+AA==
X-Forwarded-Encrypted: i=1; AJvYcCVJTFz9W1z3oU27a7LkuKVm5AtFrvueODRlsfXJOU/77u5wf49f/iPctnm5Xf9fDoTnQ9hdpIP+QpZj@vger.kernel.org
X-Gm-Message-State: AOJu0YyBfp5nCBrqa17GLOY/EBZBivRedJw0IWf+dGQd0hzK0aScIJA+
	Wn9Clue0JWfi30s314AGwqAucxobd3NAO3/tBzTNNwBYNeJbskOXEbEyy9+UMww=
X-Gm-Gg: ASbGncuGmM9dEpBEIopX7aa1ThocSgofwloF0PbTotcMVFkecpgPvboSigu5RmE7tA9
	hFuhAk6UILJ6w7djVsnnznlEX5FOW/U8QVwOCNk99tpBQH54fQAGmJh/vMWf+GWo9RYlj6PC1xT
	/pFd5ISk/kBcMAfYYgHckchrMZz2601NUQHTgkmnueRsnAilNDkzUt58dFJGu8E3dShX4wzf88G
	tJGEYwuKnFbVimxyd2uxSuVUaxugK3dISxO9l0mC4XzdLdTEezKj15UlSDMi9o=
X-Google-Smtp-Source: AGHT+IEbk/N6DuDN+SePwKbHpNWgQVLPGKHhlT6DQsr1Hm/lrxlr4iXWaEC1n8sXgOSEQjeYKa4T9A==
X-Received: by 2002:a05:600c:314a:b0:434:a902:415b with SMTP id 5b1f17b1804b1-434a9dc3c69mr122172135e9.10.1732880496450;
        Fri, 29 Nov 2024 03:41:36 -0800 (PST)
Received: from [192.168.0.31] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434aa74f05asm81159195e9.1.2024.11.29.03.41.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Nov 2024 03:41:36 -0800 (PST)
Message-ID: <4c5acbd2-efb1-4d7a-b948-91d800c1c113@linaro.org>
Date: Fri, 29 Nov 2024 11:41:34 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] media: venus: Add support for static video
 encoder/decoder declarations
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Stanimir Varbanov <stanimir.k.varbanov@gmail.com>,
 Vikash Garodia <quic_vgarodia@quicinc.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: quic_renjiang@quicinc.com, quic_vnagar@quicinc.com,
 quic_dikshita@quicinc.com, konradybcio@kernel.org,
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Stanimir Varbanov <stanimir.varbanov@linaro.org>, devicetree@vger.kernel.org
References: <20241127-media-staging-24-11-25-rb3-hw-compat-string-v1-0-99c16f266b46@linaro.org>
 <20241127-media-staging-24-11-25-rb3-hw-compat-string-v1-1-99c16f266b46@linaro.org>
 <7d344377-f1cf-400e-a9c4-442123dcf4ab@oss.qualcomm.com>
 <95ec73c9-da38-4888-9e00-4458b5a7661c@linaro.org>
 <f88dbe6d-ceac-4fb3-83ad-f202a4703003@linaro.org>
 <6d3ed1e8-7294-4927-9aac-daffe6ffef37@oss.qualcomm.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <6d3ed1e8-7294-4927-9aac-daffe6ffef37@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 29/11/2024 11:23, Konrad Dybcio wrote:
> We can just keep a small function to grab these and assign as if they
> were specified under the root node (check if video-encoder/video-decoder
> both exist, grab the clocks for respective cores and continue normally).

Can do .. IMO this solution is simpler, less code and less risk of 
introducing upstream bugs.

I'll leave it up to Vikash and Stan what solution they want.

---
bod

