Return-Path: <devicetree+bounces-59512-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A0B738A5B63
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 21:49:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 258B5B23FD2
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 19:49:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0746159202;
	Mon, 15 Apr 2024 19:40:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="c4ECtoC7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1C741591E4
	for <devicetree@vger.kernel.org>; Mon, 15 Apr 2024 19:40:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713210004; cv=none; b=d8R/jry5YrlRjFQvRXx0XOjJUqafEWdEo7uiSGLSQ7LULcTSILpU+R9TlU/SDvBlGXXQUzoGC+MLAwp0b3nB+ovg96i3G4YezelnSg7t7AhDnGQRlA2jtY7e1eJVkkjzLaHF8uVjjJgB68fvAnqju4P9J4c3KXXS8Q+fgty8p5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713210004; c=relaxed/simple;
	bh=oLw1Yo8/eaqjN1EPHHKDjW5h66jbiS/C8MlDodlUxck=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XcZyQKk9IYskU3/luwf58mn+NxgWxtqvwoZNDAXLMmnwhCDhBVLAD92I1QgpxjzdVwwTLXYe/CxawITY8cSx+4mYFEPmPWbMJjplegJCR5hjt04SQ5+ABv+TBIusYUqHDlZIgiuvhQ4v00utrZc0syRMJ7odlK0Zdmzv9aL5BMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=c4ECtoC7; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-518a3e0d2ecso3972982e87.3
        for <devicetree@vger.kernel.org>; Mon, 15 Apr 2024 12:40:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713210001; x=1713814801; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=t7tsrnDTZbk4SPKL6+qy7+cpPN7/TAFHKqUJ8Ysh/C4=;
        b=c4ECtoC7zON9uvTdTS7SyksGYu/Uda1RIKjrsT6qdwIef9IWrfcvZ8oUVH5gaWP3mI
         ODKSRbVKn3Hq4Er7u4tUS0ljLA74BvQTy8CWbbMgvsg+u4upXPkVQfAdvNk7fpj3ZNc2
         g+6IrNX8EGIODFPcGlxaVPIw2nLCdW9pFMKoyr5I6IVitcI9p2emwTyiwGOXz4l3Bqbs
         Ojo0Sz79l75ROgrfSDIOlednW/iRF3AL80XFirkZKNg1geEenCjW8H3kdCviu0cV6Jbe
         nLK9R+IxOK9DODl6yHc4j+XuM7xk2kglDNQAIhCMvB1BoUUd3Ku/CMXGiyGwpjsKcALE
         6APA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713210001; x=1713814801;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=t7tsrnDTZbk4SPKL6+qy7+cpPN7/TAFHKqUJ8Ysh/C4=;
        b=e6lbM1h54Gaz/vsuxz0cl+Slnc2fX7Ykd3n39Zq4ul8OWftCNuAfgq/fnsRPhxy5LF
         OOxi/DikB5u0s5INs4h8YLS1UjlunL1Sde4OSjF91dWf+bbbxN586swQf0tbC/n8tA3S
         YB2iWlNOvs2R4GrJ4jjksGIRfn438zVIGnBFYpyjEFNot6L1g9wFtpJ7CUie89cWfHPw
         l/BmYQt+SOH/aHZgye81Lw/CYQm3iFl7KV+EHfbrR47jfwA07yhJIaT9yeWLfu9seQ0a
         /UgxUpE2hJtv4e7cFk9E8CyGtr+GKHjyDzWEbDvqoFW0CyDoABdR67uvwAF6i/pIAJHg
         d7vA==
X-Forwarded-Encrypted: i=1; AJvYcCXffJUW9hVu/ugw3HNbz7msAystgAMv2jsk3CPwZqYrfF08hQLE+xSTNYKvHvYDmoM9Or9SkW7nRtZ4f+1a9mKp4zJ+RwEtxQJiBg==
X-Gm-Message-State: AOJu0YzLp9bwo5m2a3tvdB7ZBtXw56piq5M/djW12qqLaz8N8Vup/Q/o
	qjkPELyynhCRajAWr4SkMIPNKPvNJ1lUcLPOl+XoBhAO09HnLARDMASSr1/MTmg=
X-Google-Smtp-Source: AGHT+IEvWyaU3DDSHRGhHKAWLIUQW7NovoNH7LtXjxt2ZC08B71s/35oMI48FkGtZAuiQS+3TCw9ug==
X-Received: by 2002:a05:6512:2247:b0:515:d176:dfd1 with SMTP id i7-20020a056512224700b00515d176dfd1mr10519441lfu.56.1713210001060;
        Mon, 15 Apr 2024 12:40:01 -0700 (PDT)
Received: from [172.30.205.18] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id v23-20020a05651203b700b00515bad4cd0asm1332203lfp.155.2024.04.15.12.39.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Apr 2024 12:40:00 -0700 (PDT)
Message-ID: <90b9da5e-8a2b-4a0d-bee8-bb21c74cb355@linaro.org>
Date: Mon, 15 Apr 2024 21:39:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] firmware: psci: Read and use vendor reset types
To: Elliot Berman <quic_eberman@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>, Sebastian Reichel <sre@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Andy Yan <andy.yan@rock-chips.com>, Lorenzo Pieralisi
 <lpieralisi@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Cc: Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
 Melody Olvera <quic_molvera@quicinc.com>,
 Shivendra Pratap <quic_spratap@quicinc.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Florian Fainelli <florian.fainelli@broadcom.com>, linux-pm@vger.kernel.org,
 linux-arm-msm@vger.kernel.org
References: <20240414-arm-psci-system_reset2-vendor-reboots-v2-0-da9a055a648f@quicinc.com>
 <20240414-arm-psci-system_reset2-vendor-reboots-v2-3-da9a055a648f@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240414-arm-psci-system_reset2-vendor-reboots-v2-3-da9a055a648f@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 4/14/24 21:30, Elliot Berman wrote:
> SoC vendors have different types of resets and are controlled through
> various registers. For instance, Qualcomm chipsets can reboot to a
> "download mode" that allows a RAM dump to be collected. Another example
> is they also support writing a cookie that can be read by bootloader
> during next boot. PSCI offers a mechanism, SYSTEM_RESET2, for these
> vendor reset types to be implemented without requiring drivers for every
> register/cookie.
> 
> Add support in PSCI to statically map reboot mode commands from
> userspace to a vendor reset and cookie value using the device tree.
> 
> Reboot mode framework is close but doesn't quite fit with the
> design and requirements for PSCI SYSTEM_RESET2. Some of these issues can
> be solved but doesn't seem reasonable in sum:
>   1. reboot mode registers against the reboot_notifier_list, which is too
>      early to call SYSTEM_RESET2. PSCI would need to remember the reset
>      type from the reboot-mode framework callback and use it
>      psci_sys_reset.
>   2. reboot mode assumes only one cookie/parameter is described in the
>      device tree. SYSTEM_RESET2 uses 2: one for the type and one for
>      cookie.
>   3. psci cpuidle driver already registers a driver against the
>      arm,psci-1.0 compatible. Refactoring would be needed to have both a
>      cpuidle and reboot-mode driver.
> 
> Signed-off-by: Elliot Berman <quic_eberman@quicinc.com>
> ---

[...]

> +arch_initcall(psci_init_system_reset2_modes);

Perhaps this could be called from \/

Konrad

> +
>   int __init psci_dt_init(void)
>   {
>   	struct device_node *np;
> 

