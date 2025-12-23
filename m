Return-Path: <devicetree+bounces-249056-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ACCA7CD8BEE
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 11:15:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EECB23004B8D
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 10:14:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D84B2E11B8;
	Tue, 23 Dec 2025 10:14:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qERN5aGz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B5F329368
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 10:14:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766484898; cv=none; b=Dm7m2kcu+n665jEbkE0aDh81uPJu+6atZ1P68uhcTWa5BkvQjQd17Lu3AxxzcyWzPAgq5JSy0zsGEr/4wvYxjEF28GTpUMVnKYlwkpKZc1WzeLdkDQhFlmSGLQEwwW8GJJTEtclZyw4k+SgOK8Trd7VNEJzrHtdFTETjtJvdFp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766484898; c=relaxed/simple;
	bh=YvOATeMAwdTgxPzcCpWS9B+0hVDEc47zv3yPoRUKTQo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=u9lDptOZ9MIO6DJKzR/7JCfUfb6Aoer6/VNQaqji8IavhPyleBIhkJpD4tL2Hwvb4bu4Jb79w+fOf+EDnoxj+GApDHLZeJKCtE9ds9YS29tcIiWLmoMJCr4tnLMGOkDyqaLSQkLdx9gsDim+Mt2AHfjiE4plUFMyEdsrUcsh9Co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qERN5aGz; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-47775fb6cb4so30103565e9.0
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 02:14:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766484894; x=1767089694; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CZaR+VLWbkJkXmW2vL4cv5W5+vLpcKE/YHys3L1wv5k=;
        b=qERN5aGz7Z+yEy1jrOiTHiSoHJrCTxBfvXrkzHnW5B3d0y4ZPPXvLDqCWEhsvD+kmv
         2pPUPWpR1AxJCTGjiD2ILwyt7GY27rrQB4wR09McI7BcVF6yfd+IP6osoKW4mw/jOq09
         ZvlFEDVTSD5sKljIf8CfBiHTdWR4jOc6TaPGP+O+TRHE7wFQJFsaOH9p9lQktNGRRrhx
         EPsQSzOgZLCfDr16yZnrRu1gyXvNDsAsEC/K/2AoFpEzvrYOMRaV7N7WE0XeUCgHYKhp
         lfAJEeekD6tfQjzYa2zTP8wxWzneXwoJOA4Qx80EX+OvUhCnkVX2h+X9tixUOZVvP+0H
         l69w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766484894; x=1767089694;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CZaR+VLWbkJkXmW2vL4cv5W5+vLpcKE/YHys3L1wv5k=;
        b=XZz7aUgbojXcVJHNoqLpsSqsp+uREdO4/decsneh803g8TvIyt0vFzLM/itwiZsoSb
         0wh2zZnXLmXd2B3CnELiq6bEuKl4pSF7e3YUcLPOBtS6pMC6+1e3zlCUkJSSCvum3ftS
         SRh7o2dv7Me4foYihWNFZb/PSwEd99/eFf17PGkS8VS0PF01kqs8n0jb0f9LRdwfDSyV
         REO8zWAiP8nCftTBAD9Gl8kTVsHVYWDcujtesRIppKaTM3R0jkJaBfTSYV6QYv2WLZss
         cHDdILiw6TbyqnxVktmBHOw0RvpAn3+O02tb1R/dpGlBPmjrKgAjQikWs6XzEg9ytt6d
         E32A==
X-Forwarded-Encrypted: i=1; AJvYcCX6GPd72T6rWNbXAvbjPMRk+WCKjX3pOtzc/I+CQLpygv0OjrK6EZkhf+zeHGeD1W0jFnJgUX2+sP07@vger.kernel.org
X-Gm-Message-State: AOJu0Yz95DqHHMXqQmTPxKrrjdXB9lXlEsliCdT5ricgNCHWa9L4y9Z6
	cf31vH0EPgmG/VjNb/VfEXkAw9FD4JfvRcq3RbdSd2oZWMjolhZTq3jY4boXw78fk2Q=
X-Gm-Gg: AY/fxX6VeqEsCinDVomzfiNFdouda+Dq5WfXv71shHj/chgRASYBJJZNO7+cTW/JdRl
	NglviRPJONBaDBcdk+xT/dDTSZ41roF86/X5BBPfgaQjr0AZGQZyKVwN6KtZbkP/lk1D/r8TnQe
	gJAhtYWOO6WEXpBVfaDMeO/Fx0PgJcV1uMmbZOIFomeFEK4QFEtsMyFjdmHKC3YjQKe+jVY5g89
	tROi/LsQtBjlHghhJZcjzxwgqpT0BUmjzB0sBTLXBozydE7E2OqCrmm98BxlHsFJc+OaX+XSPfO
	8EDmwgEtf522QVSqIv5TD7ORnBX/uT74OB4qYo23QJut8NVWZTM8MvVJF9gZAgZgRbwa1Kn+i5/
	HCGdIFmLTg4+sMpLpNIHwgkx3hUXdyoxmXv3tqNcTL/YRZdPDidfi8z0D8gWcXXIWzQhvueAbTf
	yd6DDPiWto8sxCt3ORgXHc1iCxEbsKSNw=
X-Google-Smtp-Source: AGHT+IGkYED9TKqYRj98ZVsQIZdbyoBxf1Q0pfuNnIsOb1AlKfTwyNT9W3VSOvf2y07a+vc1dZJIgg==
X-Received: by 2002:a05:600c:4e8f:b0:475:e007:baf1 with SMTP id 5b1f17b1804b1-47d19591166mr131317275e9.34.1766484894279;
        Tue, 23 Dec 2025 02:14:54 -0800 (PST)
Received: from [172.20.10.10] ([46.97.169.214])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47be273f147sm294947695e9.7.2025.12.23.02.14.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Dec 2025 02:14:53 -0800 (PST)
Message-ID: <51565d98-ac0a-44f4-af30-6d42b68661da@linaro.org>
Date: Tue, 23 Dec 2025 12:14:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/5] soc: samsung: exynos-chipid: rename method
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Peter Griffin <peter.griffin@linaro.org>,
 Srinivas Kandagatla <srini@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, semen.protsenko@linaro.org,
 willmcvicker@google.com, kernel-team@android.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251222-gs101-chipid-v4-0-aa8e20ce7bb3@linaro.org>
 <20251222-gs101-chipid-v4-2-aa8e20ce7bb3@linaro.org>
 <bf1bca0af63f161afe351cb0e449896cec11cdcc.camel@linaro.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <bf1bca0af63f161afe351cb0e449896cec11cdcc.camel@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 12/23/25 11:55 AM, André Draszik wrote:
> On Mon, 2025-12-22 at 16:30 +0000, Tudor Ambarus wrote:
>> s/product_id_to_soc_id/exynos_product_id_to_name.
>> Prepend exynos_ to avoid name space pollution. The method translates the
>> product id to a name, rename the method to make that clear. While
>> touching the code where it is called, add a blank line for readability
>> purposes.
>>
>> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
>> ---
>>  drivers/soc/samsung/exynos-chipid.c | 5 +++--
>>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> I'm not sure this change helps with anything, in particular as the
> return value is used to assign to soc_id, but in case it gets applied:

what drove me to do the rename, and prepend exynos_ to the method name,
was that IP specific drivers should not use generic names for methods ->
those shall be left for the core.

Now about the s/soc_id/name, you're right, I could kept soc_id to align
with the soc interface. Happy to resend for this if you think it is worth
it, or drop altogether.
> 
> Reviewed-by: André Draszik <andre.draszik@linaro.org>

Cheers,
ta

