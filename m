Return-Path: <devicetree+bounces-146664-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E9112A35C36
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 12:11:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 45EAA3AE608
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 11:11:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55A3125E456;
	Fri, 14 Feb 2025 11:11:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QeaxT/w6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4256825E443
	for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 11:11:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739531463; cv=none; b=Haw1D9bdBiiko424cijiVIpaEr10kB4TnW79kNFx3uuLjKi9d72KHla8diG5ZYDjEMC8KYngElEnSMA7t3ZcrHPxspwCVDcaLSjayIhCVTnNowHdxGT8Ct58giEaLCLKTBYoJujkMGptocqgeg8wY0fcGGvdhrsWeQyVfvU0GL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739531463; c=relaxed/simple;
	bh=DxZVOhLjEJPHFDpuJdpUVc9PaIyKgLPZGxYXktC7+mI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uFTUSQnfwaPx9mDk9PtV2dAUdflnpjbfxz825d9jHurlkYs432rPK57OrTxM16lrFgG3U8bxTlSD245psyLeijPmEey8PJvPanvyRHag+cjkAqcChzIax2Fx/kxX+4HZC5RhGe0Ow9JuA0sRLKjt4t/03RVbbJqcb6fu+9Bv+CQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QeaxT/w6; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43967004304so4811535e9.2
        for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 03:11:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739531459; x=1740136259; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qeZsog2iIKuGpA11cPJmZ8pu44QO3rd34voFuR0wY1Q=;
        b=QeaxT/w6OprTesd9CwkH8JgU/2xvdKNyWCwHnlsCR7CcbohOJOAjxRKrXQ/nscm3VK
         C/8pukwZz8fUcdXkBIYovXG1Paw2GT3yvL69EzoO6b9uVJGERPdNsjJF8d2KLDkDXW3v
         Js0AiKZVmP3XmGktHFqWk7NM1mqNSi1JhRp0gQg0jcDHbGuem6d0/N3Q8cuVwoupDHEr
         7/ZPqJafoQ1PVq7kn846JwCguplWfKwgU6cx9xbdDQRDjHh7YsDK6qmuO7XhIt33RFfJ
         X23dG7oZPk22I01q5v2q5OrFLGsJIJz3x+uvwmcZ4ZFCjYjmEnf3mK7OQouSioM5VS3Y
         9h6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739531459; x=1740136259;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qeZsog2iIKuGpA11cPJmZ8pu44QO3rd34voFuR0wY1Q=;
        b=jSX2ldCCh3SVcmTirNTVqmb5C0VuEzTFT+P18IX4IScRU1Wwwcer/qRyy/WE2+wY0M
         yPYO8N1iH41Bi7OtPg91EqPrw983WQ6aIUJ8sM1tK+0A93kCe2e34ShajFtjpmuTMW3a
         QaJp+tiz21/LollCyAm9rzOvJNnrsDhJDJ2VD8pF5uTovfeu9x/94UG6AvIJo3z1JWpV
         HEm/H0stWDYVEmloRY7nHC5tZYvE+uSgdB2wasdCoVXFS55q/kfNl0hQc3X5RLJ0vtgt
         26H1Ejen+096IGSjOxDqNbAkKvXIU5XH73WPgUccGgLhSdR0rhKZSBm6kK/DjPUCijXh
         oKjA==
X-Forwarded-Encrypted: i=1; AJvYcCWtG04hMV9DifVeFFLioYAwFMdUtyDe4GsNJGnnlQBqPf/Jcj8vXcS7sBt7Fh1rqQ/kJ51q3Lru7OAV@vger.kernel.org
X-Gm-Message-State: AOJu0YwYXM8GlMNfC+q3uSCBSA70LjoVc53IrFWX0Y5Aco/ZQ+ABRnuG
	e7qJ3qGPgFansrkRRTZTXtPwWO5H8tmBHYtQsn691q9CM6nVRwVpdhojcpoIch8=
X-Gm-Gg: ASbGnctOywuPgtMJMsFK0ACcINTlqpNktwfyvJGaQbkspj/6avufP0ePsbBTNBciVe3
	Cx0pAdgVtyJ0jfmnOubL7nd7GhCOYd5byKm0AMZYTaRb86Aa6A6btUYzJY7WgHB/OlQExlAKqkf
	9aSvOChsVcrSDe8pHd8dfxdv6ECeKNcCFJXfkxOPvBjms5nh/DwoZ57I9lCLRWFfaZl3knLK1Pb
	X41gj0jbsRkKYkGsh09BE9jDpwjJE0WUUj74WzutZLkSKFM9fTB8BLah1WEjoX//GwdECLLBpNG
	pxS/PcseqrLX8Eo6JAaRY6ah2g==
X-Google-Smtp-Source: AGHT+IG0FqoM1XNBiFLdY+14wrQsmMAdQi4bqFYD8ks4h0kO06myymwcWJElrH0RMxv71I5w/kY5xw==
X-Received: by 2002:a5d:6484:0:b0:38d:e48b:1766 with SMTP id ffacd0b85a97d-38f244d5466mr8728379f8f.6.1739531459463;
        Fri, 14 Feb 2025 03:10:59 -0800 (PST)
Received: from [192.168.68.163] ([145.224.90.202])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f259d5e92sm4398625f8f.66.2025.02.14.03.10.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Feb 2025 03:10:59 -0800 (PST)
Message-ID: <44123d40-aae3-4248-95c9-21fb9335020a@linaro.org>
Date: Fri, 14 Feb 2025 11:10:57 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 0/7] Coresight: Add Coresight TMC Control Unit driver
To: Jie Gan <quic_jiegan@quicinc.com>
Cc: Tingwei Zhang <quic_tingweiz@quicinc.com>,
 Jinlong Mao <quic_jinlmao@quicinc.com>, coresight@lists.linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Mike Leach
 <mike.leach@linaro.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
References: <20250214024021.249655-1-quic_jiegan@quicinc.com>
Content-Language: en-US
From: James Clark <james.clark@linaro.org>
In-Reply-To: <20250214024021.249655-1-quic_jiegan@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 14/02/2025 2:40 am, Jie Gan wrote:
> From: Jie Gan <jie.gan@oss.qualcomm.com>
> 
> The Coresight TMC Control Unit(CTCU) device hosts miscellaneous configuration
> registers to control various features related to TMC ETR device.
> 
> The CTCU device works as a helper device physically connected to the TMC ETR device.
> ---------------------------------------------------------
>               |ETR0|             |ETR1|
>                . \                 / .
>                .  \               /  .
>                .   \             /   .
>                .    \           /    .
> ---------------------------------------------------
> ETR0ATID0-ETR0ATID3     CTCU    ETR1ATID0-ETR1ATID3
> ---------------------------------------------------
> Each ETR has four ATID registers with 128 bits long in total.
> e.g. ETR0ATID0-ETR0ATID3 registers are used by ETR0 device.
> 
> Based on the trace id which is programed in CTCU ATID register of
> specific ETR, trace data with that trace id can get into ETR's buffer
> while other trace data gets ignored. The number of CTCU ATID registers
> depends on the number of defined TMC ETR devices. For example, two TMC
> ETR devices need eight ATID registers. ETR0 with ETR0ATID0-ETR0ATID3
> and ETR1 with ETR1ATID0-ETRATID3.
> 
> The significant challenge in enabling the data filter function is how
> to collect the trace ID of the source device. The introduction of
> trace_id callback function addresses this challenge. The callback function
> collects trace ID of the device and return it back. The trace ID will be
> stored in the structure called coresight_path and transmitted to helper
> and sink devices.
> 
> The coresight_path structure is created to address how to transmit
> parameters needs by coresight_enable_path/coresight_disbale_path
> functions.
> 
> Here is the definition of the struct coresight_path:
> /**
>   * struct coresight_path - data needed by enable/disable path
>   * @path:               path from source to sink.
>   * @trace_id:           trace_id of the whole path.
>   */
> struct coresight_path {
>          struct list_head                *path;
>          u8                              trace_id;
> };
> 
> The atid_offset mentioned before is the offset to ATID register in CTCU
> device.
> 
> Enabling the source device will configure one bit in the ATID register based
> on its trace ID.
> Disabling the source devices will reset the bit in the AITD register
> based on its trace ID.
> 
> Useage:
> Enable:
> STM device with trace ID 5 and ETR0 is activated.
> Bitmap before the enablement:
> ETR0ATID0:
> 31..................543210
> ==========================
> 0000000000000000000000...0
> ==========================
> 
> Bitmap after the enablement:
> 31..................543210
> ==========================
> 0000000000000...0000100000
> ==========================
> 
> The bit 5 of the ETR0ATID0 register is configured to 1 when enabling the
> STM device.
> 
> Disable:
> STM device with trace ID 5 and ETR0 is activated.
> Bitmap before the disablement:
> ETR0ATID0:
> 31................6543210
> =========================
> 000000000010111...0100000
> =========================
> 
> Bitmap after the disablement
> ETR0ATID0:
> 31................6543210
> =========================
> 000000000010111...0000000
> =========================
> 
> The bit 5 of the ETR0ATID0 register is reset to 0 when disabling the STM
> device.
> 
> Sincere thanks to James Clark for providing an excellent idea to handle
> the trace_id of the path.
> 

No worries! Thanks for working on Coresight too.


