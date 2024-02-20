Return-Path: <devicetree+bounces-43764-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DB7F185B7FD
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 10:46:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3FEF1B27538
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 09:46:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F25816168D;
	Tue, 20 Feb 2024 09:43:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aK8RE1Am"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3D26168F
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 09:43:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708422212; cv=none; b=i19Qbq4C9gHBpfnr2fyuZvXx0qt0951pfehrSgfQIJj8eX1xE8hdJTtAMSLGNAEaKA0GDCOkybJrHZOmJLkSDsPD/eYzwKXUshSk3B2XLgyBR03/rKCqrMAUZKRZvRdo/AjdA40C/zDAH7eL3PEZFIC+JNaYN9L0HKuKBegtdNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708422212; c=relaxed/simple;
	bh=PJUu+kWfIKUOW86S8DxyICVjYB5q8vTCRbyPWsxdmjw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=E0s82SBf65zpafOlDiRqJe6Um4jewtmfvoEkVcCtfBT8zo/HNnN7vscVzBSkm8rVIIsiOOd9dDWvSOf99vsDoX3ud2pRMOqJcecftJ9/BqrWvCnhjCSZ06EsBTEaMWSc0iD4DmQ3tc3qUXnl8/m4ArQHpRyX3t5tsXEHJwHJ6ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aK8RE1Am; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-41270782a37so1222325e9.3
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 01:43:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708422209; x=1709027009; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=4PauvFB3bUKN5W95pNqPUPqPoLWSdGphWzpxYqhYsSQ=;
        b=aK8RE1AmCuLkEWDvhvdtuEwWFbXZwTk7z880Efx2ze+t7OCIisd6r7iC68CAh3SfuU
         XBa4ee5rZWhnLQqQJdOmUXBlRtBzRTQcRmpjiVCTscPXF0P6Yul/pY8Jc4o26NTCnIbP
         +MZ132yAWQ4/mReEAPOFp6NeuxsoKauaI2EFT7E3gyqudcTY/iHf28xXTWf7+MpdIYx4
         KrFKeBwChAzmcOeYnKAcdsFmFSGlDAokaPq//g0Srz4IbLbJexPQmSSJmUDnYIrMJ5bp
         BQpbDbpTz0pv/3whGvovMo2rgPAq0kJbA6Thw7fE91Xon0F7DBmwUQWIL7Swn+oMXckD
         WdAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708422209; x=1709027009;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4PauvFB3bUKN5W95pNqPUPqPoLWSdGphWzpxYqhYsSQ=;
        b=eC/vb1tYiQ6a4oOwu4X4juyf2xuq7UoJvWfP7Qln4HAVtSTcly40hA/6tSSA8sVowd
         dqGmSEvGq4tB+EmIUs7+oA71hdrlOYvm9uPwFAWmbrK0E/u0OPIskXgkVt2xEVna4ugI
         CsdswOW0hjVdsHZUCaKP1mjAYsuIqQuAtJJiwmm3crIDN2qp4oYDjybIJqzy1ELf5VFW
         SjUYe5grViGx9Yim7Zwwh++1/IgLgRryyUYmTmml4L3c/Oc8PeJdF5ybZVud+wxyrNmM
         ki6mM8SL38O195zmezRshXMw/JBoA4MpIzQqFtC61Ew3ZWHOfj3KilwgA+sQo3NGQNpb
         ROiQ==
X-Forwarded-Encrypted: i=1; AJvYcCXiNdmJ/CZdiTiB8zygQ0pDC1XdZJVT1405rXIxuSFmpAmReQrUXk5Ru9e4B54tyTLSQ6xoBQRaZR+pG+bulQDhOp/anlhSEIlYpQ==
X-Gm-Message-State: AOJu0YxGRkiii4zJjQdZHNE/BVFf02m76eABv7bRguKSYxUZS2Hd6l19
	VDSS5T2XM9BDPXfKsTUciu0zv3R8p6Rzh/xfSiwOGzZZYfa5aLWn/odZpgigUYw=
X-Google-Smtp-Source: AGHT+IEowmJmsiZiarHKK3ngeT5Ip/EGhVx5Ax4qyJx3z1sQ57KxWFSAL3lTopVSd5WPI80+MA9ZVQ==
X-Received: by 2002:a05:600c:511f:b0:410:d6c7:e003 with SMTP id o31-20020a05600c511f00b00410d6c7e003mr10450794wms.32.1708422209447;
        Tue, 20 Feb 2024 01:43:29 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id i13-20020a5d55cd000000b0033b198efbedsm12779204wrw.15.2024.02.20.01.43.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Feb 2024 01:43:29 -0800 (PST)
Message-ID: <56da3332-deb5-4fff-ad58-664bbea0dc73@linaro.org>
Date: Tue, 20 Feb 2024 10:43:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 1/6] dt-bindings: arm: qcom: Document sm8650p soc and
 AIM500 AIoT board
To: Jingyi Wang <quic_jingyw@quicinc.com>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, robh@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: kernel@quicinc.com
References: <20240205115721.1195336-1-quic_jingyw@quicinc.com>
 <20240205115721.1195336-2-quic_jingyw@quicinc.com>
 <2fa4d857-7262-40df-a842-56945ecffb81@linaro.org>
 <441ffff2-81a8-4b53-b15b-5ac6375d65c3@quicinc.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <441ffff2-81a8-4b53-b15b-5ac6375d65c3@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 20/02/2024 09:55, Jingyi Wang wrote:
> 
> Hi Krzysztof,
> 
> On 2/5/2024 8:33 PM, Krzysztof Kozlowski wrote:
>> On 05/02/2024 12:57, Jingyi Wang wrote:
>>> Document Qualcomm SM8650P SoC and AIM500 AIoT board.
>>
>> Please describe shortly what is SM8650P and what are the differences
>> with SM8650.
>>
>>>
>>> Signed-off-by: Jingyi Wang <quic_jingyw@quicinc.com>
>>> ---
>>>  Documentation/devicetree/bindings/arm/qcom.yaml | 9 +++++++++
>>>  1 file changed, 9 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
>>> index 1999a5f2f254..e87ceb42853b 100644
>>> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
>>> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
>>> @@ -88,11 +88,13 @@ description: |
>>>          sm8450
>>>          sm8550
>>>          sm8650
>>> +        sm8650p
>>>          x1e80100
>>>  
>>>    The 'board' element must be one of the following strings:
>>>  
>>>          adp
>>> +        aim500-aiot
>>
>> Drop this line.
>>
> drop this line will cause fail dt binding check failure, any suggestion on that?

Really? How?



Best regards,
Krzysztof


