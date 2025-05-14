Return-Path: <devicetree+bounces-177303-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1522AAB6F68
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 17:16:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 23BE318925F1
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 15:16:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CC4027FD62;
	Wed, 14 May 2025 15:14:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yCj48nye"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B749F274659
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 15:14:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747235666; cv=none; b=abx08BHcw0eFQMGL7DvuXu5VYHzVH38z9Zcgrl9yLyJLsMziPKe1EXXT37a0by8qtW9OrKKnu53Fd7PMWZNfotKKrWVZB+Ft+iY8eIpYFXDSGNAaPE8G2pDp1BksM2BnhzQv6hdbxqj5evqifY0+vXeLoLCiMxADDzgQ8JaWVpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747235666; c=relaxed/simple;
	bh=elkfuVVvmzBU0/m/g9siAuhtrtmuWD37C1fHEj2Tf9w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EnBvVl9v2B5g7ykBLYEoILnM3CjbB7P7hCyyF8haEXALPrvoHz6PJZTx8A/WxkTk8mhdop2zkbT9nhpa8Z5HoKTrMqcvMcGQgOAq4gQj0fHiCYBFSsdj4CT/yVPUmdnWLsllf5zqinVbAMwxy8DiRDiNYQx/PW9RBIOvF/JCERQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yCj48nye; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43cec5cd73bso46698565e9.3
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 08:14:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747235663; x=1747840463; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=a7rIwpEJJDGc7CtGo6cVG0GXhb+M6Aw53qeNCXPJhoY=;
        b=yCj48nyef1QVM7kvzkYsxQGV3AUVu+y6IS5dP1mPRhSr5gfSpsoGUvttco3yWoClkQ
         290W2qEk3iqs54QOJzKB/JcutQ3gvJS81RAUPGKNXycdLE+3BrihiBfbKwYjxL//3rg6
         dZ8mnv8EIaBo3iiSGTUCC3D+yZ/tUUvPqAg5zS0PmFyH9KfMe7Ic3zPqIn4bl5QH34WO
         PSubfYFYcbhNOIoZIfCpq9LxzU1OpuF2/hLCX02WKC743S5REYhP1vC0DUm7NERU88BE
         gyd6jMGvizPDunTAIzD2grY8l8uWNDF+B+YWtYRrnxSw9r2tRaP6nzbY3IJB1TQVbHr4
         VRPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747235663; x=1747840463;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=a7rIwpEJJDGc7CtGo6cVG0GXhb+M6Aw53qeNCXPJhoY=;
        b=Yp4MIWKzDuWDv+whNuT3ZPpJaveo8PW3RA0ApJHorShZ5WTY0C1YSI1jhtdEYQG18g
         jloFKM+4/4g/YljReJWwsg8Nkq9hR2s7Ba7T5Kw6cXlZmXgZUcunlUzDcbCAsJpDMFaD
         MgVTab+AhwHUeWGYfxkzO3zVAWO1tHm3JuoOqyD4VtIcz4BOfXqTNjcVfnudTlWAr1kI
         5Ou1FiTj4sWVdvjnDb6i24v3xNKk+mh/eeH15rlBgIYHYSGF6ZbTC2mezKR/Oq1g/Pem
         vv2R9OCon7BYlBYIWRsKKsCRuEmjQHIDtaodMJh5sijSTBxmNwXU8SbjZhtAUXhfh92/
         L84Q==
X-Forwarded-Encrypted: i=1; AJvYcCWEfDPjput5MLoSSnSi/R153baZy+jbxSGFmSYkQKIYoOK1ZOpFTAQq5s0btsFbqD2bK72MRZY2v599@vger.kernel.org
X-Gm-Message-State: AOJu0YwHNlwuy9bssGhZ94mO9Eb0ddB3hRtX1yGNIGEVppQC/CPn0HBq
	KZTymzlHEu9kI9gJpID6kAXebi3sITTPGm9IlLeuPK96s8L/w1mQW+zruEtO4Fc=
X-Gm-Gg: ASbGncs5f5Pfp9iSZ4SJCG82dg41422qEZkRHxjXDj/o22mgLgh1WZ4LniOZNzJOnNi
	/PiWlDUWjWYqYeQeedNI0nMyUHFm4guLPyxKLUKpmgr9x5FqV5BSQ8eNTpW5lObWJu6LoPLVq4d
	yhoPp1I35IbvCrcI5DDVVWqelVfgY6VF2WfE/I2yoAMLHFFWgXSDt3Qcei5VxLx9CQsuThdXGAl
	wsVHbpIuLMOVkqAlkucugAcYzRWc9RLCYdCcNwwQNbt5gOYysGG5rP9GJB7cXz41OBVR4aHBYyG
	BLSsaQqd889tdddIKqELZPCbM127tDAgxKXwLD284hhuNJmdeGYbHoRD9ZK/ecYnqo/qQZr+WP+
	3pK9qD6PYzBdP
X-Google-Smtp-Source: AGHT+IHUCNtRDjNcYlz0tMRh8QL47NI6YxPvlFXOO6n9TgRhi0jcJ/DCL8LLyZKt4qQ5vfFPhvAP+g==
X-Received: by 2002:a05:6000:2283:b0:3a1:f67f:1bc with SMTP id ffacd0b85a97d-3a3493da42fmr3668225f8f.0.1747235662925;
        Wed, 14 May 2025 08:14:22 -0700 (PDT)
Received: from [192.168.2.1] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3a1f5a4bbf0sm19697335f8f.82.2025.05.14.08.14.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 May 2025 08:14:21 -0700 (PDT)
Message-ID: <6c08ff11-cf82-4f8f-8e51-3a3a23399010@linaro.org>
Date: Wed, 14 May 2025 17:14:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] dt-bindings: timer: via,vt8500-timer: Convert to YAML
To: Alexey Charkov <alchark@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20250506-via_vt8500_timer_binding-v3-1-88450907503f@gmail.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20250506-via_vt8500_timer_binding-v3-1-88450907503f@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 5/6/25 14:16, Alexey Charkov wrote:
> Rewrite the textual description for the VIA/WonderMedia timer
> as YAML schema.
> 
> The IP can generate up to four interrupts from four respective match
> registers, so reflect that in the schema.
> 
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Alexey Charkov <alchark@gmail.com>
> ---

I assume this patch will be part of the "timer-vt8500: clean up and add 
watchdog function" series

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

