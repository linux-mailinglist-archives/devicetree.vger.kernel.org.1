Return-Path: <devicetree+bounces-246729-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 611D4CBF4B5
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 18:50:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 628A73011B29
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 17:50:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A65A322B8F;
	Mon, 15 Dec 2025 17:50:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hexUCcYB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D979D322B6E
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 17:50:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765821050; cv=none; b=eaZx/nvTsMyQOMOC+DKkX9mp7oBtCCLLTD6BR+ZftIdmGheBCqXmXgdF4CW3/hLiiRUZmI6lGqsr5HxQrY2YLsK/ceZXgMbs3neFBONeBogHdQHQTxbeIawF2xnUwW/eHfxEejKg32gfdzSWH8oEJCU7N9vj9bqTJU058mG0/Vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765821050; c=relaxed/simple;
	bh=wKhD1Qe/u0NUDdPbkZCfx21AlyFOuwnlV2jBRJnXtPU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bBU2HV0rBcfyM48vYP8h94LZ6B4mNOZvvbbp53CUze6Ngflfol1c6cjBRBEXI1kEU2WBy6RwejVdjrifX1zsiX5WhdWxmAMSucSjXXMEk5C/+JoyXHr54uKCVH3Lne1okaPUNLAx3Hws0ONMxBJsPASUhRmgvEmR9f/9lx5zi/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hexUCcYB; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-2a0833b5aeeso37060825ad.1
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 09:50:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765821048; x=1766425848; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SizWLQ4gEz9gKPbNGWru/XLkTBLjWoFV840U2e1HA8M=;
        b=hexUCcYB1TE+HATDnbKeTaDuKuvvBXq/paWnXZrXovf4zuzbsfCfMWxawT82ca7rqL
         KnOwvLIk17liUzLdarKhjl8FKHjk5uW+aL+PMCJnw8bNb61k6Bf4900Q3I5ee0fsQGri
         rNL7CuYy8mDC8RmIeCQ8RqSbz5vNCh+gURzBUZVpNZYqm5Ww57lW6ix2tm87R+EHg6bh
         WM0ULBe0LDVK+207ObCgetTQ/przfnzxYp2kIMUUx9FhZVfM3B0+0NO4XJ/XUJyqwQfM
         XgAI06UFtv8wrkB/4o+d3dgAQuDz9NeOFmdM+9gwS6X0s/9AOXh+cImWQMBQWc3cYaJB
         PB7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765821048; x=1766425848;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SizWLQ4gEz9gKPbNGWru/XLkTBLjWoFV840U2e1HA8M=;
        b=oLXv/zwkEm0VlRPgV93ey77sflBT7gSnRb2rfvf7mk6Y+3l0sn3FJLKeLinIlLxKil
         sDADFbgWjPatYVMXDHN0ZZ1wm5fQApz514MW8pU6RzDttTlZtSdcc/l9BdD88LdTpXCx
         t9Ey5DvlkwcW2meQraxhTHa0t0/dcxoupSrJ9iRm0F4OZDLvu6uCq3nYZ/+F0Dxtpi5x
         E3CT3Yzw3QJGMx+VZ51fr7txP1IaWy9qKP8gMqZ+FxxS5evy/XqVEWu/jy0cG3T6395Q
         Y7gbVs6C6cxTqh/VZmQXEb+Pf468ouhRt89a2Zf9826bqM2H5kH5tWHtOUrbmNHUzTFc
         wwfw==
X-Forwarded-Encrypted: i=1; AJvYcCVU0YVUWmXkdwEn1KMDh8JMe3cz4rrtNWNLc7edKlltRYTxuDMcwPbjMaXmK0RgoNOylSn+LwiXGbTF@vger.kernel.org
X-Gm-Message-State: AOJu0YxqgmVSdyOy0pSv/EEuWefnKw8YTjpYx8TVcM9uUnqgApIRNSPp
	/5lWd3+ht+P3NJuIlVNBRwgxy1o45GqtlSk82LOjF+L975jYg0qgIy+f
X-Gm-Gg: AY/fxX59LhgU7xyVZr9beMD7uafOhvb6EdzoLHHjzFkLypBwISzW/ffb0MF4Iyb42Gy
	zfqOUxf2WE8Q/VnONG0jdh0GA7KIR1Pt0St2NgYb/Ri3+cDdG3d3wGOpTud9fsrmGsnSeO9w+fA
	vFg66R4WtsgL+1OUhFl8cm3BpT48ajKshKJrkNEpHlN3sO2jLKvWNDmLLrwsgGL4iwc9tIPcVAw
	JM6l4NNBXvENiPB9gzrAc66K+YRKGvjoQ2/TewK9ceyYq9kbMJC2O9EbQT/Qpvx870kKNC1AeS2
	FlVaAou97XYueFP0g1gDzPaBp+L0Rh3DLrG2BI0FXUqWCjF79zz3IdwV2JqSnhPvUOZSgoOv8rL
	wYxtrDih/4pkFrDU5zQ6YoSTEoVbycfBPeJhdSuvoGcxk7qmlPyaZXVChymvE/vMdmOvr5WTxn5
	PJR+/i8RhR1q6llfPt7n8mPpcg6/2Lm2KAekHzyUYW7yOOldI7IShSsj/y5IpnKXY=
X-Google-Smtp-Source: AGHT+IEQ+4+TeVYmp/ChyVlFUe2X4ufWClEt78idDjNBALBIwJCrPDr379ZA25vJ6B1jLbIM6oZ2/Q==
X-Received: by 2002:a17:903:fa6:b0:29f:13d2:1c5e with SMTP id d9443c01a7336-29f23e4696fmr129429535ad.21.1765821047933;
        Mon, 15 Dec 2025 09:50:47 -0800 (PST)
Received: from ?IPV6:2402:e280:21d3:2:50bc:8636:2ee8:5158? ([2402:e280:21d3:2:50bc:8636:2ee8:5158])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a0e2318990sm43179675ad.38.2025.12.15.09.50.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Dec 2025 09:50:47 -0800 (PST)
Message-ID: <37d8b0fc-db25-4ce6-89e1-3cd4e447e005@gmail.com>
Date: Mon, 15 Dec 2025 23:20:37 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] iio: adc: Add support for TI ADS1120
To: David Lechner <dlechner@baylibre.com>, jic23@kernel.org
Cc: nuno.sa@analog.com, andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251109141119.561756-1-ajithanandhan0406@gmail.com>
 <20251109141119.561756-3-ajithanandhan0406@gmail.com>
 <5f15284b-159b-4860-b58b-35c624e2539f@baylibre.com>
 <8e2c73ca-3746-4b2a-9d85-c12b51a69059@gmail.com>
 <8ad18de5-53cd-49ba-8e84-1e8c7e5bd627@baylibre.com>
 <15106906-3bcc-4187-87d9-c838fe99b583@gmail.com>
 <5926ca19-c204-4abc-9e59-86a797b63b5c@baylibre.com>
Content-Language: en-US
From: Ajith Anandhan <ajithanandhan0406@gmail.com>
In-Reply-To: <5926ca19-c204-4abc-9e59-86a797b63b5c@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

>>
>>
>> Thanks for the pointer.
>>
>> I did look at reg_shift, but it doesn’t fit this device. With .reg_shift = 2, regmap would send only (reg << 2) (e.g. 0x0c for reg 3).
>>
>> The ADS1120 requires the command byte to be CMD | (reg << 2) (e.g. 0x20 | 0x0c = 0x2c for an RREG of reg 3).
>>
>> Similarly,
>>
>>   .read_flag_mask would produce reg | mask (e.g. 0x03 | 0x20 = 0x23), which is also not the required format.
>>
>> Unless I’m missing a regmap configuration that can generate (reg << 2) | CMD as a single byte,
>>
>> a custom regmap bus seems necessary here. Please let me know if there is a way to express this with standard regmap-spi.
>>
>>
>>
> Sorry, I didn't read carefully enough. Wouldn't this work though?
>
> 	.reg_bits = 2,
> 	.reg_shift = 2,
> 	.read_flag_mask = 0x20,
> 	.write_flag_mask = 0x40,
>
>
> Then a read should be 0x20 | ((reg & 0x3) << 2) and a write should be 0x40 | ((reg & 0x3) << 2).


Yes, that works thanks for spelling it out.
I missed the reg_bits interaction earlier.
I’ll drop the custom regmap bus and switch to standard regmap-spi.



