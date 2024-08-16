Return-Path: <devicetree+bounces-94287-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1CB954C44
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 16:21:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A85D61F271E4
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 14:21:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D13E1BCA0A;
	Fri, 16 Aug 2024 14:21:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="guwriQEW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F6591BC083
	for <devicetree@vger.kernel.org>; Fri, 16 Aug 2024 14:21:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723818070; cv=none; b=LcHhDpWHxZ/xjq8RJr0ZziYeZuDvkmjIX94h8XTIJHHDyYfBCVDyXWGhBiCS6o56dn3/31nCI6mcN9I2HAGElIn+RIkZ0EKtbrZnZFailkBY5QombiJF7yCicZR9QLmen+oHZaPZJhwPWGysMpEFt2aw40XdCLYzLgO+vO0vSIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723818070; c=relaxed/simple;
	bh=LYIvL2aCKI6DvgZCGVQrwv1dVzMR+ddvSaY8gJtRBqY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ATL+9a+oUJfqpp7iuAHtZgBPy2ZyBSvVvGx0C5HG6JbmJjzpZ5sOL4a4hCjh47xbPZw98WcbLi8Lc2GF65ltMPMrZGwFiLh1ZnpuE0zNeaZOE6t4WVxVLw/RS2Zls28F+6KbvJZEPuHBoo3F+Ia/0IIaXfdsn0IAmRS+hNuJj0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=guwriQEW; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-429e29933aaso14308815e9.0
        for <devicetree@vger.kernel.org>; Fri, 16 Aug 2024 07:21:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723818067; x=1724422867; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pX+qhgpFaUEMlgLNTLJN0UUFwlGpHiwB1h8EJe7S0iI=;
        b=guwriQEWRhP6J/eDfXBpNuhe7zBqa5kMEfJpO8+SxhXPgVVFXTIzH/B23dEONu1hcV
         0iAknge0J68AqqBXUcFEL6LjmeEs0BLdq3sugz4X+kWdd3580HtjgSOV9Uv0MJpB6Xpz
         StWA9SDHKexje9ECvaZ5JCsbgSHYzp98ZWawHTautY+fMtZZs0zeumPkAHwJULJs2txK
         fssszuQoP2KGkVIdbY7HGSIGX3ZmtzI5fTShFwtyP0p6+v9TN2/yPcUdJVLxB+OqcVul
         rTkyMDYCHNOHIag84mn2T8GZxukyssLg0tLwI2XEHKx93SoX1HXAGceTMqfL/emenOov
         iGFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723818067; x=1724422867;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pX+qhgpFaUEMlgLNTLJN0UUFwlGpHiwB1h8EJe7S0iI=;
        b=ZiSLXPpVhkNsM4vOJHZXjCsH70GTyx3Uj9hb6zkbuR3W0ebxhXopsjGbmTC6erE3ho
         GkiuZr5Uul8Z/aYu6Nek2MwbcXzRQAh4ze1M1QH93UCGTdfEWXnZ6YD26h2BR9aqA0ZW
         TkKIarVqhFYtBu+uDjlY6Zm7Rq3iRxWKi0Ehy/EsX78kZboFrdElrQOcXhMlt8lvO5A1
         KIpJYAqIhRkM2HpsXad9Ft0jRFUF1Dq40oyg4xbFTqcWKrXcFOKTQYx0ol/X88G3/iyV
         KQGcPxqkXxBMoW/M1/lXz/JAYv1slrvVlIzUo0VF7H7lOlu/uxrwf8akId7hBbIL/kW9
         Kxuw==
X-Forwarded-Encrypted: i=1; AJvYcCUjdiq34rtOBqwoQ6+IKKnAUaCvdlgMFgJk26RUbRh9kVQPatoYbzgyAp3stoVGtRxADPjL6O0qkt0TLoSRBhxfl+Eo1jELWp474w==
X-Gm-Message-State: AOJu0YwtzmAIC7kWZwf7Gk/a66XsLtWujXXlJujkAGc/XK97G3hFA9Jd
	bJj/MUh/trI2U8HRtScVDbffJtdn8YPQCJYDRazvVNGVAJjJQi9HTZLSkBteSd3R2fD7qMQ7iUQ
	3
X-Google-Smtp-Source: AGHT+IF86Kn2yd17AhLJ6H/eJJ9YsESRDoCf+PYPIgA5eUrMMA9HT+lbZuCMhOOf+lIzMbKsxJjweg==
X-Received: by 2002:adf:f2c5:0:b0:371:7cd1:86e5 with SMTP id ffacd0b85a97d-37194314fa2mr1727789f8f.8.1723818066623;
        Fri, 16 Aug 2024 07:21:06 -0700 (PDT)
Received: from [192.168.0.25] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37189897034sm3756413f8f.67.2024.08.16.07.21.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Aug 2024 07:21:05 -0700 (PDT)
Message-ID: <a1aae525-4d38-4520-a6c0-0905f87922fc@linaro.org>
Date: Fri, 16 Aug 2024 15:21:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 12/13] media: qcom: camss: Add CSID Gen3 support for
 sm8550
To: Depeng Shao <quic_depengs@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, mchehab@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@quicinc.com, Yongsheng Li <quic_yon@quicinc.com>
References: <20240812144131.369378-1-quic_depengs@quicinc.com>
 <20240812144131.369378-13-quic_depengs@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20240812144131.369378-13-quic_depengs@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/08/2024 15:41, Depeng Shao wrote:
> +#define CSID_RDI_CFG1(rdi)		(0x510 + 0x100 * (rdi))
> +#define		RDI_CFG1_DROP_H_EN		5
> +#define		RDI_CFG1_DROP_V_EN		6
> +#define		RDI_CFG1_CROP_H_EN		7
> +#define		RDI_CFG1_CROP_V_EN		8
> +#define		RDI_CFG1_PIX_STORE		10

Hmm - is bit 10 valid ? I'm looking at a register set derived from 8550 
and don't see it

> +#define		RDI_CFG1_PACKING_FORMAT		15

Bit 15 selects either BIT(15) = 0 PACKING_FORMAT_PLAIN or BIT(15) = 1 
PACKING_FORMAT_MIPI

Please give this bit a more descriptive name =>

#define		RDI_CFG1_PACKING_FORMAT_MIPI		15

---
bod

