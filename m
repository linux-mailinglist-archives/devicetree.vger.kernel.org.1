Return-Path: <devicetree+bounces-248348-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F3B80CD1A21
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 20:29:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 22D503008F94
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 19:27:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF1D83246FA;
	Fri, 19 Dec 2025 19:27:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dgqvxHys"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D825233E341
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 19:27:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766172427; cv=none; b=TqI92SmmtSsoQypH+fyTKQDKZMT0vSzs11OyIvrnBpZf7pzQhgqofWlKJfeGjoE7Fuf55woou4Z6z0rkhCAEH9p027uKXX9HR5AHnW5B80nBoLBNOmjLCPDB2GGGcBQ7pmMbYRwRUPwzOhqjjALIhsJAjZpLWcwSnl8awXTAraw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766172427; c=relaxed/simple;
	bh=k8mZy/7yVU2Ufqg1SNQ09M+d2/3IpCiWvdHzzLcqN/s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=A+NxROo+J1EHwt0k/GxNeU4DMbU6Fjj7uj/06pTz4DAz8LhbgBHAAP/Kqw0JEsVc7Adqb1AKkk49aF5ajnsFxTIT1m+Y5OwzAWgrZOL4OkoKmjqj3JbU2DHiBMRg6kkBTzCi11UU7uxHXlbxFvUV9WKqwPtvRiiBxtikO/a8+FA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dgqvxHys; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-477563e28a3so13981215e9.1
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 11:27:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766172424; x=1766777224; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6kxkkJnPi9GBxxRfQSUamkMaS41d/etdoL+kweUhQKE=;
        b=dgqvxHyscE8x5odAA7E78z5K7MNsroQg+/L9I/uZ9yWC24/bjxq70etDClDf4FCLk0
         qqmhy6JyjnLKZIijjALs5CzjUtBa+pLkMJQMsYNfThiW62tD5qNoA5Teikg+IJxRPqbC
         jnrKPFHjSq5LC/ybxe2LpyzD5y0RCfyN4I5OimlmV1CI8SGKDjW9qCf3yMjbngP1mQPV
         DeAt3Lr0DPx0FVjBkFX33r38fLqrVCAqyTzKXp9TN5bs/Pg84iKaqrvJ3yY7oi5vBbZL
         tHX9lXv9XBFe+ycMNpP4oBPbjRB/cW7pqxKnFRyunBYAcGcNZnL5W1FocrqVwvbkdfd7
         uHIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766172424; x=1766777224;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6kxkkJnPi9GBxxRfQSUamkMaS41d/etdoL+kweUhQKE=;
        b=S6qebY253ePKXqLdTsUecif7CIIbSSw9bOUlLHqcDr0GvNPjz1cCxIxjmOFuzOom+u
         aAgJyok5vX7xBpBY9GMYwC4KVUZ7XGkL6cwBcH8TZQTFrVz6/eHeHu6ecQSBKe5aiQHe
         TgqekVENw6Sz/7E2IQA8fVD55arw/Mw/07LV9BCGE2K9dd9FRl13sQ3plR0YnytCZynM
         wg6dDrQkwFd83phwgrISIjQBShxbVavZaycSCEU2tAgOYKHnpl4rEOD7r7IATxtV/wBL
         qB+tua1K2ac3jXUKJjwJdKyD00DfVcDgUi6T2gLii+CjpwWw4iJE7POMbPNhCVxXw0mk
         C36Q==
X-Forwarded-Encrypted: i=1; AJvYcCVz/xwXE2Dw+bJ7CzxmzApN9dZlp+b3m9Ae6kXA1Und53aiy3XmkM3Vp1TDqkPk3oKKgkI1BjsLQTUw@vger.kernel.org
X-Gm-Message-State: AOJu0YzWarf2ZSe/8Gctj+AcVqScILJhWibWcl5tVA7VJlSPkCYrQg2D
	iFNrhEJWrwHC9xsnueAqjkEn3w8ZfFli4BUpgPWNaYZo4I4cPDdVmH10
X-Gm-Gg: AY/fxX6+xTmkmepOcamx3IBMDDJc4wGvpQubhElo1Fe1Dmy0uOo+DBkT4isQVgUWqFe
	NUwbd97FBkFRRgMuYq9Br573qsxsQaLZ9IB/uj4GyirRIRItsgBuyq3dRBk/GFRBAlD56hBt09h
	o2DEvGc1Xu5a5HM5uZooc8Aj+aESicP5jri27hMBrSEfJOmGCzX1BrXh8CqRQo3/L6D7MciTRh3
	f7cktGD547JCLrOI3irM3wy/hYbdR8fEFEDJpAjCVBLG8+5tdTClCfK8Fzz3AeTh3XHKwGwHRrO
	DHBZ6WbRcTf9A8+cXUSKBeix2gFNn0Q2q8F9ZGg2PyY9n3lbwDW2e3MPs2Hg74H07tMJgBF7jeG
	vMQNU8JMni48SYFuBVcIc8EHBYGjqaDnmu2nCXTV8V/cBXN4ia9sCGap/1DnkOiSwu8FMueJVxR
	LJrLIRu5pF/FVJVd3x0yDof/0g3KJRb3VeVaaKGuXQ/mYFPmwbgIKE8gYnWdALTCmI7qjh6W7Po
	jqvn1ag
X-Google-Smtp-Source: AGHT+IHqqrUl2vSl0/wNfOnsIYZIIhJ1dpHJbH2MQVzIZ0EaTbpy5rMArQU7ewGjw++aIHXKYVdtyg==
X-Received: by 2002:a05:600c:4f08:b0:475:d9de:952e with SMTP id 5b1f17b1804b1-47d18b83218mr39401345e9.1.1766172423809;
        Fri, 19 Dec 2025 11:27:03 -0800 (PST)
Received: from [192.168.1.10] (92.40.201.212.threembb.co.uk. [92.40.201.212])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d193e329asm57197755e9.15.2025.12.19.11.27.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Dec 2025 11:27:03 -0800 (PST)
Message-ID: <d4a87f75-92a3-4c09-9f9c-e906f0b7ae70@gmail.com>
Date: Fri, 19 Dec 2025 19:27:01 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/6] arm64: dts: qcom: Add support for Surface Pro 11
To: Krzysztof Kozlowski <krzk@kernel.org>, jerome.debretagne@gmail.com,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Johannes Berg <johannes@sipsolutions.net>,
 Lorenzo Bianconi <lorenzo@kernel.org>,
 Maximilian Luz <luzmaximilian@gmail.com>, Hans de Goede <hansg@kernel.org>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Jeff Johnson <jjohnson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, ath12k@lists.infradead.org,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20251218-surface-sp11-for-next-v4-0-7bcf83c1504a@gmail.com>
 <20251218-surface-sp11-for-next-v4-5-7bcf83c1504a@gmail.com>
 <de00f21e-7fc7-4caa-93ec-afbcc5d9e12d@kernel.org>
Content-Language: en-GB
From: Dale Whinham <daleyo@gmail.com>
In-Reply-To: <de00f21e-7fc7-4caa-93ec-afbcc5d9e12d@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 19/12/2025 17:47, Krzysztof Kozlowski wrote:
>> +// SPDX-License-Identifier: BSD-3-Clause
>> +/*
>> + * Copyright (c) 2024 Qualcomm Innovation Center, Inc. All rights reserved.
> 
> How exactly is this copyrighted by Qualcomm? I don't think Qualcomm ever
> prepared DTS for this, so can you point us to the original work?

As mentioned in the commit message, this device is very similar to 
Microsoft Romulus (Surface Laptop 7).

Its associated device tree (x1e80100-microsoft-romulus.dtsi) was used as 
a starting point for SP11, and so I felt it would be courteous to keep 
the original copyright notice there.

If this isn't appropriate, then that's fair enough and we can remove it.

-- 
Best regards,
Dale

