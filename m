Return-Path: <devicetree+bounces-170164-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DE02A9A16E
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 08:18:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1355F19467DC
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 06:18:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 647511DBB2E;
	Thu, 24 Apr 2025 06:17:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vSvZ1W6W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 755BD149E17
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 06:17:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745475477; cv=none; b=YnwRvxjykaWaw5c+pb4IJc1aDFhrtIiJMXhBHXOrPK85ZYtxpWBmFfG0g9ElA4D2EPNMfZRUf08EdNgZvstnbSD3oknm5wjvme5VS4NrKS5i7j2MtYpYyLi9FDP1lwWELyJqBs5gctpADyf5rmybH0gzF9sYG38LgSVBeNvEyRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745475477; c=relaxed/simple;
	bh=hyHUJE9U+MoYH8hkG0p1Z0k7oFnjPW5T/gGtMe8NGhE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XLdxqkgiHVj/7COlZwxzEBzRgXx6d5BeBhnNpym8NWrAV93pTwJY0X6HfZLUExvncAyUYYWjkftwnICwlPf8NdIv0AI9rEmz2USc57tXhHcMx+U6bJ4ARza2F3h6IOUOsuyCfNeEV5XrKDhKgpKiRsajXI9W/kfEtOlGi3t3oqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vSvZ1W6W; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5f4b7f551a9so120255a12.2
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 23:17:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745475474; x=1746080274; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=rklllEBObx/x+b7n4H4TEO6tJG9bMtiQ3JNDGpRuTl8=;
        b=vSvZ1W6W43F1JDcFeF6Zwvh9USqLzga+6IB4ux7+N+IqBVDzq2on8951lakvyXCFz7
         9UooBCRoj64z3ZO9V1yEkTtyP/ATtkaAnqFYqwzfh27aZchMGPTugxHqUFAmvowIsVhc
         x+C3HKJJXotv54vrF5HKdwxiOi/vRcyYMw3g5/O4QFPuU/BRfYWYT3iWk21P9ToB7LP1
         Bc6Aqzm4rhxnsmgph+EtnAL2OhkDcvrAIAoyjjAEA7lunMv+XGcM49tjIEHo8TyMXBTH
         8Wy1GG04+c1Pyzc3l2sqcJOOMSjI82p55zK5CW5cyw3QtYZqjbAoNwhk7VAaCt6v4d86
         z+pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745475474; x=1746080274;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rklllEBObx/x+b7n4H4TEO6tJG9bMtiQ3JNDGpRuTl8=;
        b=dUNAZrJ1rOWpSw4i9kX8y9GRs7dfpxbUjpsWsdQmepEx9oQO0ouaWdbvPqo9CoNqaJ
         wwfTB48Veisa338KC9NGj5RkozP1n6qCWg7856aiaoCwDu85c2mlaUfr7xcmD8nx/MOT
         +Ss7Xb/5ukytSgr0yCXsNBlDLH/1kONdh1VV2ldapp+BF6eBGt4ywRO60+WMd4WjK9GD
         abgcf+HwX5eIiBjWFxNkULVZV4h/kfzy/uLQ6eKplycTQ7mqf4tIF3ZPITimloeazFXn
         ZNzUo9Hv9QeqfOu4wj65aEv/GfTaEd/MWH8M3diii6+DR+bKcTwZ3+2lAIZtFYcNUOqi
         MYbw==
X-Forwarded-Encrypted: i=1; AJvYcCVhJPPQxmHtRnk9Hp7QYN/YykFhudMQ9GJehMQpjmrcZwGw8tWSZ7tNkwwwIOGJAvhUOw4kz9kBgRBF@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9o5SHcr7q0kp6NefXWQDK1VbpnDbXYYN+RT0rQF0sBKQhaIW/
	HAEQHJMg0MMc8GCuHeA0kURD0S08z5zenRrIk+7JhKNLQ4H93L7zGWkcqtkidw8=
X-Gm-Gg: ASbGncvJgnSH5AkThGbdrkBS25ognQPAgK9+DSR8ja2xkM7IrGX1/fAfb9GhQ4dsJSV
	cEI5K++glXeSiJteTXcajUN25KYmY2qqFH+Uv6JXIco6FbNLUVs8moRkYsZMm+vvYu4TtmvGFPg
	KwQg/ySqUFnOYnC/Hn9Vk8zz+9IFw2nJxAu8oNXnMV2wUCw0GxKPhC4W7h2lXWu7dx+wg/3jOEt
	OU5qMX+TDjxQXqX8SANIOxnygUf4pXsIkk4ra7IJkV63Wgev+HVUXobPV1iNq1+BWDs/RjQmsU3
	i1qrKSvZ0yMe/lccJX3CPnvfpmv/QBx62j4wFQyIGnZnMB+houEnmqHVxkg=
X-Google-Smtp-Source: AGHT+IHkeVDI/7zTPMacv2G7VBrbvfTY2jdH2deHU7UxMb5EBF8jUdCXPWFE+sUo0DSaRIj0YJezBQ==
X-Received: by 2002:a17:907:8687:b0:ac3:f6c9:4856 with SMTP id a640c23a62f3a-ace56e63dc1mr47965166b.0.1745475473766;
        Wed, 23 Apr 2025 23:17:53 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace59bbdbb5sm52554566b.90.2025.04.23.23.17.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Apr 2025 23:17:53 -0700 (PDT)
Message-ID: <121d4e01-00cd-4be5-acbb-b140188048c3@linaro.org>
Date: Thu, 24 Apr 2025 08:17:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] dt-bindings: arm: qcom: add SA8255p Ride board
To: Deepti Jaggi <quic_djaggi@quicinc.com>, andersson@kernel.org,
 konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, quic_ptalari@quicinc.com,
 quic_psodagud@quicinc.com, quic_shazhuss@quicinc.com
References: <20250423003845.3980330-1-quic_djaggi@quicinc.com>
 <1d75a955-409a-409e-8708-754e89d6f046@linaro.org>
 <21a13826-0ee3-486a-956c-153f42477160@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <21a13826-0ee3-486a-956c-153f42477160@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 24/04/2025 01:54, Deepti Jaggi wrote:
> 
> On 4/23/25 05:00, Krzysztof Kozlowski wrote:
>> On 23/04/2025 02:38, Deepti Jaggi wrote:
>>> From: Nikunj Kela <quic_nkela@quicinc.com>
>>>
>>> Document the SA8255p SoC and its reference board: sa8255p-ride.
>>>
>>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>> Signed-off-by: Nikunj Kela <quic_nkela@quicinc.com>
>>> Signed-off-by: Deepti Jaggi <quic_djaggi@quicinc.com>
>>> ---
>>> Changes in v3:
>>> 	Removed the patches from original series[1]
>>
>> Why? This makes no sense on its own. Binding goes with the user. No
>> user? No binding.
> 
> Thanks for taking the time to review the patch.
> All the bindings that were initially included in the original series [1]
> were removed and posted as individual patches.
> devicetree has been posted as a separate patch :
> Link: https://lore.kernel.org/all/20250422231249.871995-1-quic_djaggi@quicinc.com
> If necessary, I can consolidate the bindings and dt into a single series
> for the next version.
I asked why and that's not the answer to why. That's description of what
you did, but we see it here. Anyway, I explained you the process.

Best regards,
Krzysztof

