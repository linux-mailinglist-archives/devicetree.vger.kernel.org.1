Return-Path: <devicetree+bounces-128826-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C17D9E9897
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 15:19:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 731241884B93
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 14:19:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AAD51ACEB8;
	Mon,  9 Dec 2024 14:19:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="a/ojBdj1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 707AB1494BF
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 14:19:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733753960; cv=none; b=HCcvd20TdEgD2zjiS/HckIKkM97nPrs6IFz33PlArFGu69clPW1CahTftIn7iVlETjKM3l5H+3ywHAd0E04tYJSgd1bk/bfJ2eIPvzNHeyGRNud2hHrSILefEdv7yX6aNGuZ28fmgwaMWL88ZwaARAKO6WmzJKff+xhjZhiGuU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733753960; c=relaxed/simple;
	bh=oJeg0IDLiudQCx+r40Nks4t9ti82fc4uLX5xh9nxdw4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RLaYoqUPscQo/lxbwrLZ6s+0cQ6BzwDHx/WWAAm1kADk6ret8ZW1xZ76a5t0yG0e1JgkU3ai7PRokijfV5qbp/vKZNvqLIsb30tg9WAMsfTJeJR80lD/oemG3ooRtFOEZ6p+Idqm6Y3P41AZI+OqGBzWkFFNrxhg09FBS2K403o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=a/ojBdj1; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5d3ea065b79so2505496a12.3
        for <devicetree@vger.kernel.org>; Mon, 09 Dec 2024 06:19:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733753957; x=1734358757; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FKGxGVFQL+Og6kSlKUo67HxrazoGKfS5bm5biJspKWs=;
        b=a/ojBdj17hjrP9wFWoyGlap38lL5qiW4MVGskcjs5qhiKA5FHiT/Q7d39MJ6F8DXMT
         HDMrRKWnEWz03ZgyPcHYRrEAu1jcVVGqTcXREKuY7LVl2KtvEd1+7WBGR2KQgNoSc8JP
         XQieSWnit1AL/3t/i+1pWLz9VOJtbh/T/NJFGbeZd2Ovx0bRVPVoswN8RWaxI1d8R9h8
         IZdJFjF7NmvZAYXdnDDbi7tPiNeSmrzKe+npcVAV8ZbB8IRdw96ECWWDJuuAAIqRzzXh
         LFu8AAVD1H36Pv8aWaPnqzXoDwrlFinY4L3m2n9AqzUybNpe603zb27Hqtex6mznfe3N
         Z63Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733753957; x=1734358757;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FKGxGVFQL+Og6kSlKUo67HxrazoGKfS5bm5biJspKWs=;
        b=S1oeE9nQ6OLytprbrZ95Igyfk1uToCw7i6ODAvoEu+TWSeYFWZOBUqnaIR2gX22EGz
         0374ssXp6BYAITa4WvdlMqGeZ4QHjRb4bFFAviD0b9OcWO+7rbQOTGlE+oZAXMejsfnE
         tiixhBmQ8p2DVQ2QdyvOYUsAP63Z87cWLyP8gXsRzMvjyj2W0IdJzvW/02D3+gwUEX1s
         vNAxselHW3zKOSLLIkSH2vC3QtxHSQPRu0EDRQ/Dfo1tY5Z69B+Ww/b3mGcqjINo2CZF
         oa3Uj1qf85IYz1tqYgMmrgMCuulmGYrm7Qwq/VN1Xhvi+t5y8sqz1dcdsNTgTudjVcsB
         9dCg==
X-Forwarded-Encrypted: i=1; AJvYcCW+hz15xGAULd6RQx9Eu8QFsWZS+sK2aB4ZvbfuaY++Y6p8AZ6w31BmU8yKLviSgDaa6YyVsLgBneRa@vger.kernel.org
X-Gm-Message-State: AOJu0Yyx8hBP/4EN3uDnTqI7Oizd6eXLGEB9iOI/vSndDyEoTU9LBdvK
	g1fjhxkXYYMmeDRGFtYvQAZf+a0gcSOM7w+XWGUbHbG2Sj638JXFiaJFECqLcSk=
X-Gm-Gg: ASbGnctybyYnTJRitn/3nQ4zz2xS+/SoSf4UrHBGo8SuuqUx6xnVrCcQw05/3AxbOIU
	V9eoid3NMmaYOZ82UDBv2sWW3f/HiVQLPU+xQ7AJ4Ct2HcPc09yBv4XGHomtHqn9iQT4Z910GTM
	ZCsXzEgtO7SQLC4Aux/Bea5zPjplo7TGyLb9vm+yRn81sPAQI/GsWEO0n6NvPhPfPOpkxcaoRjk
	OVDaY5ERjdgEjXaFl4lXHyT3tdRuyN8cDP1yKiu3iJpmwoXAcO912CDAw==
X-Google-Smtp-Source: AGHT+IGFZ72A7topG3h6HtsrPbQ9uANyoeaAttq9LuCfJvMZl3glvlTz4zo8uXTpVfHH3Pb/FsB6eA==
X-Received: by 2002:a05:6402:50d4:b0:5d0:cca6:233a with SMTP id 4fb4d7f45d1cf-5d4185305aamr1118156a12.10.1733753955375;
        Mon, 09 Dec 2024 06:19:15 -0800 (PST)
Received: from [192.168.0.14] ([79.115.63.27])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d3eb7722acsm2780231a12.3.2024.12.09.06.19.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Dec 2024 06:19:14 -0800 (PST)
Message-ID: <38e6687e-c2ee-414b-bba5-483150ba7baa@linaro.org>
Date: Mon, 9 Dec 2024 14:19:13 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] dt-bindings: mailbox: add bindings for
 samsung,exynos
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: jassisinghbrar@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, alim.akhtar@samsung.com, linux-kernel@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, andre.draszik@linaro.org,
 kernel-team@android.com, willmcvicker@google.com, peter.griffin@linaro.org
References: <20241205174137.190545-1-tudor.ambarus@linaro.org>
 <20241205174137.190545-2-tudor.ambarus@linaro.org>
 <2lkowhldq5i4otniijfw7cb3jm6ttatwji3npw5w7c5fyevnn5@ynojupmdyqy4>
 <9886429b-1bf3-4dc3-b0d4-294a98e44ff2@linaro.org>
 <58d62506-de89-40e4-a3c2-bd27da515a45@kernel.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <58d62506-de89-40e4-a3c2-bd27da515a45@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 12/9/24 8:33 AM, Krzysztof Kozlowski wrote:
>> I'm thinking of using the same driver for both cases, and differentiate
>> between the two by compatible and `of_device_id.data`. Thus I propose to
>> have a "google,gs101-acpm-mbox" compatible for the ACPM SRAM case and in
>> the future we may add a "google,gs101-mbox" compatible for the messages
>> passed via the controller's data register case.
> Good that you pointed it out, I was indeed wondering why this is
> "acpm-mbox", not "mbox in compatible.
> 
> This needs to be fixed - you cannot have two compatibles for the same
> device.

Will fix. I followed arm,mhu, which differentiates the transfer mode,
data or doorbell, via compatible.

For the fix I'll use "#mbox-cells" as <&phandle type channel>, where
type specifies doorbel or data type. Clients will use:
	mboxes = <&ap2apm_mailbox DOORBELL 2>;
or
	mboxes = <&ap2apm_mailbox DATA 3>;

arm,mhu3 and fsl,mu pass the transfer mode in a similar way.


>> Given this, I shall use the more generic name for the bindings, thus
>> maybe "google,gs101-mbox.yaml"? But then exynos850 has the same
>> controller, shouldn't we just use "samsung,exynos.yaml"?
> If exynos850 has the same controller, then add it to the binding. Anyway
> then use samsung,exynos850-mbox, because samsung,exynos is way too generic.

Looks the same, yes, it differs by the number of how many data registers
each has. But I'll stick to "google,gs101-mbox.yaml", as I can't test
exynos850 and I assume we can rename the file when we'll need it.

