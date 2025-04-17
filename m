Return-Path: <devicetree+bounces-168316-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CDFDAA921F8
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 17:49:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3ADD63B9479
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 15:49:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D32A6253F21;
	Thu, 17 Apr 2025 15:49:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ldxvb+5y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8D70253B5F
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 15:49:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744904988; cv=none; b=cx3hJmx+j1U53e+TcvCsX903A4zUKTK0FjF76rcuGbedVswUS1ThUs6LpSXHE6BxkND8NL5wPvVzA+VMA8R3TSgOXnENLBpLYUKx0RNK54TeX/jR4fJu7/OjecGhMOSXu2HzwsYHtYWK/KZU+ijfslV7/aIxvb3vrrwjyGBm0Pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744904988; c=relaxed/simple;
	bh=RQBPpi11Wbl15fTLt1XMrjBtePKSJY4w/7u4fEBGkDA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nwPsjZbdikkWcW2zQ/YBmWHdEegQPSy0H8BUzD5TQ93u9KVaYDn2BicXfw8wj4asowzDgOAzgan8O7ndZn6j1gbyjoY9KvcmiqQlbCyb3YBPVeXD2YJNdjQ5kFUZSUybnDIU84Fv8jKKHzUFNMl/vpw32fd0K1WLk7mPGzbnsTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ldxvb+5y; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-43ce71582e9so8011115e9.1
        for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 08:49:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744904985; x=1745509785; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kgKQVpVbH2AFi2dnIi8Lnictk74KrdT3QvbopRNS7bk=;
        b=ldxvb+5ytRGKodgc5hwt0U50tOLjZgVisMwgwW/qpb+Bss595+yYr/t77YfQHOggEf
         8BEhLDpic6sR8sXex/Mx0mkNiqwy1kCHGWvEzly5xazZW9Suu9SVhSyHUCGsAhizZp1m
         3OVd64VIqVKlS2ctjq/LlyTOmOrmC7z3/LXK7yhcqfEvTpfeHhmAArXaZxxvMACjUGe0
         mQ64tDNXMdjux5bFOam4SBlVT+O08v8rSzaSO/54UxTYFdWLDBdTDeDFEp8e9kis6hbt
         NRvmUteTsunWHcN7wkVSCPlKm3pdQXpzW9iq9fkImF58GBEXkoYwHvvgNLgUZX84eMwk
         ZCYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744904985; x=1745509785;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kgKQVpVbH2AFi2dnIi8Lnictk74KrdT3QvbopRNS7bk=;
        b=SMOC2V0DAw7HcSqoJPoqfrtgbAPkYTZO4QX3WXXd0/AUshr0pMOz9gh75hJANvnlaQ
         fsKa08GQVy8wrAh+lv4jhzT6LbCNNogD+jkwLvt2ZI+zLo1iCz4INHG4n52m+SXK2Cn9
         cw0zjLf86lexthlckXkcud30eCGnYm46ptm5NMVq+VRkArRBerUrtl+qo8pzE2Yo3+FR
         UyXhYKg9biXiV2ygo5i1obodx2Y67dEmoaOvPLFUWUs41GT1k3uC3v/rsiL2oRxbsE80
         9MkkIIS1kq1cv4Epz8Gh2kgJxcHrdtKI/hv1u23nryn7WF1H3/in+jg5hPVFNxU8qUPR
         SlIA==
X-Forwarded-Encrypted: i=1; AJvYcCX8N4zuFJIpXEeTeAyAzsoM7thL5LyiUyCy9q+/4eFAyA/cJdTuEN9yrlJK+nA4H2lH5PJT5jC21HRQ@vger.kernel.org
X-Gm-Message-State: AOJu0YztoLzJ1QbExXUf/hJfO2s4pPJdZeVUp/WJrNqCu4Zz141xWFns
	6nfANAAfh1FTOrvvTWInpTKOmB1MNfNoFwZG+7TEJNGdsnXKvN0aGm1hCi/CS8sOB8iXpwWTNRf
	u2qs=
X-Gm-Gg: ASbGncsFmQbbh9MnPyWWN9TT05Gnbr0fMk95Bapf2xrKBE7daNjEG5ekWpiWv5lDvOT
	YbkZ2L5PkjuaNRgLWEyheR9d3HV2pWkQbhhTKHLpBxrNibTc6kyg77Lb22hcLhAGA6Ftc90Ey1I
	GIAzFYVh+6rUtuwebmUnxAFm/DBZ42S3tuJgjP64mrL7h3zv24Pw6EIBtJX40RjqWIfbVuYxo6M
	i5DuIgTP+UYbhQWdztu/jq0SjM1fwhiyPbf39GkP22b45RZEaCgA3OJvcR4/aL41kUpYkXH7LAb
	P6m2f5JQwSz6lBWQcWD+Vz7JnEaaBglv0J3s+pqfHybbI5YWbsKg/4V8HdFZT8cEu6LYY1TySIq
	ttsgYqQ==
X-Google-Smtp-Source: AGHT+IFn/JdIHUDojYSpMBQMKdOEObdQ/tZ3UW1OgI5Z7tlfhrFycGT1JClvKcKR6auot121Yka3uA==
X-Received: by 2002:a05:600c:1913:b0:43c:fd72:f028 with SMTP id 5b1f17b1804b1-4405d6bf358mr58208195e9.29.1744904985194;
        Thu, 17 Apr 2025 08:49:45 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4405b58d18csm59035655e9.26.2025.04.17.08.49.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Apr 2025 08:49:44 -0700 (PDT)
Message-ID: <82415a35-2410-4c5d-aeac-3b4656804369@linaro.org>
Date: Thu, 17 Apr 2025 16:49:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/6] media: qcom: camss: Add support for TFE (Spectra
 340)
To: Loic Poulain <loic.poulain@oss.qualcomm.com>, rfoss@kernel.org,
 konradybcio@kernel.org, andersson@kernel.org, krzk+dt@kernel.org,
 robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, dmitry.baryshkov@oss.qualcomm.com
References: <20250417145819.626733-1-loic.poulain@oss.qualcomm.com>
 <20250417145819.626733-2-loic.poulain@oss.qualcomm.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250417145819.626733-2-loic.poulain@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 17/04/2025 15:58, Loic Poulain wrote:
> +static void vfe_enable_irq(struct vfe_device *vfe)
> +{
> +	writel_relaxed(TFE_IRQ_MASK_0_RST_DONE | TFE_IRQ_MASK_0_BUS_WR,
> +		       vfe->base + TFE_IRQ_MASK_0);
> +	writel_relaxed(TFE_BUS_IRQ_MASK_RUP_DONE_MASK | TFE_BUS_IRQ_MASK_BUF_DONE_MASK |
> +		       TFE_BUS_IRQ_MASK_0_CONS_VIOL | TFE_BUS_IRQ_MASK_0_VIOL |
> +		       TFE_BUS_IRQ_MASK_0_IMG_VIOL, vfe->base + TFE_BUS_IRQ_MASK_0);
> +}

We could mix and match writel() and writel_relaxed() but you almost 
certainly want your IRQ enable write to be atomic from CPU to AHB/MMIO 
endpoint reg.

Its simpler to drop the _relaxed() everywhere but, if you want to 
include the relaxed() variants I think you still need writel() @ IRQ 
enable as well as WM start and stop.

---
bod

