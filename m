Return-Path: <devicetree+bounces-173622-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 896DFAA91DA
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 13:18:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E9AE2188C2F4
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 11:17:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE23E205AB8;
	Mon,  5 May 2025 11:17:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NP3CnStn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F19C0204F93
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 11:17:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746443825; cv=none; b=AzkvRruBjvj+zc4HGH6xBRX65/UphtpFdM3T4Ml7N/XHVwmOz3k7IeFkJrQ0eAl57xwkQELdDCqaNefGSo5aUHnPfhF76Yb2cW6E8PJg3rwehh1gIQGo4iCF02vNAR48tEyUWV/HGHjwalEdFscfPBjtGoVzDVo6YIr0UEEmmJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746443825; c=relaxed/simple;
	bh=V8DkUL7VwKllhb1yUSVxhPaI03yBxle7Crwrri6QItc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lvcxvUXNbpnp8fW6ZEqILkHSVbATe74LK40FkPh9RBr0iLAHIwDlQUKDm+JfDD6hZ5I2BvxN3Bz2kp+qpw2/m9y9te2CTPD7vg+g4mq0Rsvh75A6MOEs31/4CAFHkWjMXufuH6Fn0pm8/2409VM3rqKIStk3eM/U7xsTvrYnldU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NP3CnStn; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-43cfecdd8b2so26522045e9.2
        for <devicetree@vger.kernel.org>; Mon, 05 May 2025 04:17:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746443822; x=1747048622; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PR/1TFPITj+MSR2NV1inwmG355HiaGH8G5lNmd8tBP4=;
        b=NP3CnStn9ST1MXoLK7QiNjzjzmJkP85XVE+dHc7mAK8fde4pc2IUf3SKdPgl+fheC7
         /LPbKVqF9GN3f2S0RIUq8f9AXGbVza4ErSOIhVL57ycakTBwv8ExZG2zSXaygUtWDigA
         otEID9tUlcdmlCtvRPXOuW2GssXqzmfBBMGoMQpJqmc8VOgbSj2s6FabMQfG/NfA9n/X
         hNUYlrHriGU05a29UI6IFtBvpAtNJdgr7QWKi0mxv4CmgnFt3hZ7lvzdS4MIDzUqnCKf
         f8VCPG4vusvl2MFRSGlFKBlfJiJjtOCEmUPedYlKxSO0pTGVnH5Nqgf60EeZTJshHev/
         My1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746443822; x=1747048622;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PR/1TFPITj+MSR2NV1inwmG355HiaGH8G5lNmd8tBP4=;
        b=nXaDuiy1RD4foXFeFr3ZPgkcVNJBFEvjVbRhhbJPquf5m/mmMyXrCpxUZfHAe+n/Y/
         urLvUi+Ev77Agno17y08WQrUnu3t1Q+8yOyqSQBJ4VvvxeYU7aqUarhxCuzSZsHW4WYZ
         eG8tVZO1jQleYCqD23prN2cedl0C6Gl+ArxRy/F+yCOt1wvTzCkUHTvl9vDGT4WlMV+S
         XOgDN3CFLa3KdfSJLXniAS2qCBW9L8LTeL7tGd2Z0AYKAVB58ekmJ8i+BboSkFIZ+7a0
         s/iBVYUUqSaSMB/lmPTL/ulBWtsfTouAOOjzDGA5pcwMfpYmZ5fafcVNxjHhBw8wa8A+
         o/rQ==
X-Forwarded-Encrypted: i=1; AJvYcCViOrUJY7Pgmg3RE054dnhu8alWBe20kpOP7vVo7n99cj0s2cYRVkCu5UOG7z4M0Vst5l7GMDTMnZWs@vger.kernel.org
X-Gm-Message-State: AOJu0Yxg8g2/jpXKonOgAuppWqPJADbMrzaqOqMuRGT/FRHxhDa7VgW5
	qqXCXvDBzLvcAmW7xMHRBtFOaQIHDDeqQyI1sQKi2bmK3q3wxmnRNolD7e0Jjtw=
X-Gm-Gg: ASbGncvbP3SMQbjJsZ1WEg4euT3r8/B6TPQruyXbqi8nBpyy/2gTqtInpKwy/drB+Lt
	uXfsZLV7C3EYEglnqTq9PlvGJ5ErY+UpWb4XZ8MSX1qrm3p/uah/UK4JHKqBoRLn+WRYEQkwExe
	60q6k2KpModnYvFzgoXTVo7eZ887mC+o6VV47QX5HJoyCWfChGAUL85kEbi6mEKhTCmwnvxMv7g
	N4nQ1ZQ8HhbXsp23R4N9dkXtyDlkUpzICS7hM8iIehTP1XC0Ge6n+uhqvcVli5P8nOeVov4/OKL
	GkOTFu4lz3aUSjZzxljrCdEhk2f78jqmFktfwIrvipbXp3y+pi8SKp5Bgym/2BwU6ffW9Q9TbjE
	=
X-Google-Smtp-Source: AGHT+IFXGyrq6AF4eSKBqMr0ZHG5ODbF+SMMKNV3Hl/UrsQRAKrSSv09aRoM2DkTJis6kpOovgBnAg==
X-Received: by 2002:a05:600c:83cd:b0:43c:fcb1:528a with SMTP id 5b1f17b1804b1-441c48aa481mr62039405e9.6.1746443821195;
        Mon, 05 May 2025 04:17:01 -0700 (PDT)
Received: from [10.194.152.213] (71.86.95.79.rev.sfr.net. [79.95.86.71])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-441b2b20c3fsm177760595e9.28.2025.05.05.04.16.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 May 2025 04:17:00 -0700 (PDT)
Message-ID: <9b93c67c-b163-4026-be7a-a8761a0f21f0@linaro.org>
Date: Mon, 5 May 2025 13:16:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/7] dt-bindings: vendor-prefixes: Add SmartFiber
To: Caleb James DeLisle <cjd@cjdns.fr>, linux-mips@vger.kernel.org
Cc: tglx@linutronix.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, tsbogend@alpha.franken.de, daniel.lezcano@linaro.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 benjamin.larsson@genexis.eu, linux-mediatek@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20250430133433.22222-1-cjd@cjdns.fr>
 <20250430133433.22222-6-cjd@cjdns.fr>
Content-Language: en-US
From: =?UTF-8?Q?Philippe_Mathieu-Daud=C3=A9?= <philmd@linaro.org>
In-Reply-To: <20250430133433.22222-6-cjd@cjdns.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 30/4/25 15:34, Caleb James DeLisle wrote:
> Add "smartfiber" vendor prefix for manufactorer of EcoNet based boards.
> 
> Signed-off-by: Caleb James DeLisle <cjd@cjdns.fr>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>   Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>   1 file changed, 2 insertions(+)

Reviewed-by: Philippe Mathieu-Daudé <philmd@linaro.org>


