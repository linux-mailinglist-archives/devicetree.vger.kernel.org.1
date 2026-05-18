Return-Path: <devicetree+bounces-299283-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kLfGNzDqCmql9QQAu9opvQ
	(envelope-from <devicetree+bounces-299283-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 12:30:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4626556ABD2
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 12:30:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9C2623045453
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 10:27:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F80F3E8329;
	Mon, 18 May 2026 10:27:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="c5cdq4sy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EC243E7BB7
	for <devicetree@vger.kernel.org>; Mon, 18 May 2026 10:27:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779100042; cv=none; b=bfrB2gGjMREbmnPS9WCgBo1TAv2I2gXfYKhqa1DTCbFw1vyiPar0ZVxCPy/hWXuoIw6uMFg1WTMDvTeV6ZkGuEY6CuycWNGOtTb8j5AQUgM51I8BpLX04rSzraid9lQX+At/wZzHKLkqRzrBxIQUfdOeXQpW+udBbDfTIJrKZdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779100042; c=relaxed/simple;
	bh=iV0yJhfhI1iDqjYTPkc7D13ggZb4VKds5NvfVEmjYBg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QQx1+kgct4RYqcH7RjW9aqsawpkQXsRihSpAdF53W7EkSeRa7vRaZp9REZrWYxTGK6QOMNzBZ7f6KYXBw5fD5QVnHec3St4oM/I7d9VC6neDiE7cBOZSKIGtfL2xaZz1SvDFDExPo0s1xYjnpyIWSwYxgwmAarW3DyNimEPvqKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=c5cdq4sy; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-488e1a8ac40so21141215e9.2
        for <devicetree@vger.kernel.org>; Mon, 18 May 2026 03:27:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1779100035; x=1779704835; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oofnoEjFC3k8jMJB3VTduoNGQlCA1NG6eHrRA2nUPzQ=;
        b=c5cdq4sy9zlUVFRdrSi5HsNiGaANx8yG68tDRfyOAOBiVKlX7hHzmI2bKQYJJKQ1vb
         QkP223cR3cw2En/kYzpcZ12PDe5lixCL5MqUOoytp75hje/6IG/+miZgfXHzM//gfWNZ
         nBEbPHkhPlY4lw0G/BXTBuVh8r8syPni7isFNrdyTppyfvreGEyzdLOWo4oj8QS+BoH1
         CNfyn94nVyl7AHkupwwaUHJZbGEKNCUQxo/m1Q7vZ8uLT09Uf5X7XSmHNCD4UDDiktTb
         3ml3lgsqfWfbCtb+PwaAzVgvSYMX6TAFMdHM/asDkOetMSoPhJhRc+LKX5GeTwPlMP3Q
         d3QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779100035; x=1779704835;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oofnoEjFC3k8jMJB3VTduoNGQlCA1NG6eHrRA2nUPzQ=;
        b=kaRTiqEbHAzzOQvVEFilS9jRZ0A/DrTe0Ys4CWZsi7oI+0eikphpKl1ySzyYMUAzMi
         WU3JoZSkSLljqkk/exXYUtpMxku1n90gIwYTVTO8ixROPQbvW8yKnq98GPmTz+v0Jbkv
         sfF+8JgZVVT4dodECUWP0j3SBw/wG9KyED0UIiHEbk1ja8tXuww9lKAWAuS769F0j/ef
         uapezsPOM72r1/mec3x+utaFiLqFb6uVQBwLB4ydjWn5F/YB5BGMmhUiD6iEMbxClGo3
         30s1DX2aC4mQmDFIVvQgx6hme/zCfwC7qjxMZxdYd3ssEiIcrF7XsMYcAMRICsvihGyv
         i7kA==
X-Forwarded-Encrypted: i=1; AFNElJ/aPqQ15FqzWcQfvwoT7k68A57+bE8IJaxJkuBIh57kJKFq9c6NsAagc9Bgj9bhPyPcQXWz5pr9wZn9@vger.kernel.org
X-Gm-Message-State: AOJu0YyuiFpaF3BiW4KiAL9rdwuCaYa334qLsjwludL8uFgHACQvfx/x
	Gdf15JfdWPH9nCBrmE2uBKRJZ8/MOCJ+xqKeNwfXHzb6uC2QB60IdvfLwGLrkAJxsG0=
X-Gm-Gg: Acq92OFRAlY0z5A6xvpRAO/35YULzin35M1lCJMvg0ynYGsyv5DH9yzQJcfMrkHuufi
	YLBpdmT0yCKy+CFBI15w7NMzxus4+ku7tOiQBzKhqFzZ07mOc5TdRZMtWkxOSUqnLmSvoJc1iE0
	UsaXOjbgJ4ybG6u3ooVyTWOrjRDxg1Z4NlP6QhIMhTvx/ZSXdSaCy0fXCRFiVFvblz+QbSyhj1q
	wM1OvWmWdLVrMLtEdtRLuWFeiWSBumBxVxh+xv4tp2hlUJAXwvDK+6S8E6y8mryBnJuXFVSQ4v9
	KAAMzEQokAw35KQnbSgTKXd+WBwYJlIwXtZ1e3HrmOAiI4C2b/SxsKnPddee0nvwJs+1l6QwCfo
	3qx/tXdMYl3YdYTypkBhqaUnqCSLLi8RFe2m53KIAWqQWTBUFKVyJ8XxShk/tDvVFnCLCMrYlIE
	mmMlASVlxWBHPTR/Khqp9d8t14xKroIrLSOuvtbD6Quw==
X-Received: by 2002:a05:600c:3b07:b0:489:1a3a:9e45 with SMTP id 5b1f17b1804b1-48fe651e127mr216677595e9.26.1779100035288;
        Mon, 18 May 2026 03:27:15 -0700 (PDT)
Received: from [10.11.12.109] ([82.76.215.73])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45da0a1aeafsm37898451f8f.23.2026.05.18.03.27.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 May 2026 03:27:15 -0700 (PDT)
Message-ID: <6802a856-76dc-4bd0-a026-59b0249646af@linaro.org>
Date: Mon, 18 May 2026 13:27:12 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] firmware: samsung: acpm: add Exynos850 support
To: Alexey Klimov <alexey.klimov@linaro.org>,
 Sam Protsenko <semen.protsenko@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>,
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260513-exynos850-acpm-firmware-support-v1-0-3858d097e433@linaro.org>
 <20260513-exynos850-acpm-firmware-support-v1-2-3858d097e433@linaro.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20260513-exynos850-acpm-firmware-support-v1-2-3858d097e433@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 4626556ABD2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-299283-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tudor.ambarus@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:email,linaro.org:mid,linaro.org:dkim]
X-Rspamd-Action: no action



On 5/13/26 2:12 AM, Alexey Klimov wrote:
> The Exynos850 SoC contains an APM co-processor. Communication
> with this hardware block is established using the ACPM protocol,
> which handles IPC messages for clocks, power, thermal management,
> and PMIC control.
> 
> Add the "samsung,exynos850-acpm-ipc" compatible string along with
> its associated match data. This includes the specific initialisation

s/initialisation/initialization 

> data base offset (which differs from the GS101 offset) and the
> "exynos850-acpm-clk" device name required to properly instantiate
> the clock provider.

The patch looks alright. With what client did you test it, cpufreq?

Reviewed-by: Tudor Ambarus <tudor.ambarus@linaro.org> 



