Return-Path: <devicetree+bounces-138888-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8E1A12D7B
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 22:16:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 206B41887926
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 21:16:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E761D1DA2FD;
	Wed, 15 Jan 2025 21:15:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xb38a0/9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230F81D8E06
	for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 21:15:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736975759; cv=none; b=koaV2xNByE/zcYz+mdL+CMRKWuR+j5rJ/y8ECiViz9WUHLxyAbltpgT5vusexLHVO0s5+O+gtDaZxownlKTr9Us8W+3qJxZ+BOEg+weSotOYySgWu8VwQ90AZXYY+H0XijhS+DsJNUwGIBsSNUs0ccWeYo7nwCnhMrCIS0q+hsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736975759; c=relaxed/simple;
	bh=c1EHEtIvSKg1nO9ynw1fPAGcrInwQqbzLwczlhOWJ10=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UqT84hgb2A6R68JAYxGPkehxJx5JcMv+tu840P1FW11H2aWcb33bi2B8RWB/o2Cq4SBC3W9Jrm4UghGVNNbpfZLpQxicbeD+8n43G92lluAsVKXPrl8OhQcCQ34IX6PW7Gu2kt/Ta2ahfKHCFmRADGH/hKX1sGnHbEphpAD76og=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xb38a0/9; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-53e384d00f4so28496e87.1
        for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 13:15:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736975756; x=1737580556; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gcgdZ+Z+L9lynDfLj3RvGBYMv/uGR2T2g5tCjxLiaYU=;
        b=xb38a0/9piC/FBpxetKW7F/3ApGVPGAUHLaQojihK7Sv/KC2pSfdj/ew1wRq+Y/mPT
         8AEKXSBtPKQP6jhAmdH3/VaNvm88nEZRKnP/hNl+ZKvw2hE+tYPbIfKi919yvT8mxFmA
         Z1okGdBEPuLgLPcugJivKeQeH4fvMODx8dKNDkm+dFxSfXNhI8DRL4QFEQHWern8+Euw
         9lyucEJGJTgBo0yKfG9BwohJMm0dd/UJvsch8wBLsMlcF1y2bHN14iLgVHvHMDPVGU5R
         jbLgkgVXjpcDkrewOGAEvhFZAaQe7oJmvDvSAjwgqvmj6t/48MJkexyo80QNzS1BTowS
         tbjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736975756; x=1737580556;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gcgdZ+Z+L9lynDfLj3RvGBYMv/uGR2T2g5tCjxLiaYU=;
        b=SuzSwVlokQDb923tUaO1enuT/+jjrHb5UZj6mkaKxZDVDhhMSby9JKps9Dxu0QkMbB
         5sSmex+npuz+L0p9nwfFHwjml++vpwmdrgfXiUGQkk07wtsRJbnMEGbt0BnuQKOgYu+p
         DUaoj379Y+TeCG/KhrveehxJrvMSVv5xS8kYntHtFM8+ZRhpmWZFNEPCDuZPYciivTfx
         Eze5x0zzStffy3NVXODkRWA5fi34Ll5E9DjpBmntWS45h29EENFa+PXfTKTmHZuM42rS
         G3Mx1OAU3lzrH+B9v5Gvu1/ouCQw+Vty5zQijPbknHTCPoqx39ivlmmqdKNNUNFVTwug
         555g==
X-Forwarded-Encrypted: i=1; AJvYcCWZCPZzjcvakHLVaYFLnkP8heqOX4onomo2Zs2ii1cgO9VXGHNpI91/0BqQAH0GdqZDocufLYiM+4Db@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+Xwcaighq2lSKNyN5c7AmqBF/3HQVDPOVGK3NhGDvowBTjTe3
	v6i2fn8/yFB0+RYg7NVCbcpquwWyvrDsUukY6EJ8+X3OBNBm4sFEPC2guzl5Wwk=
X-Gm-Gg: ASbGnctpTKt7XaNOl4J4jSARkEBcxA/dWdewAyDPjpvRVdiswuolwQg/o2yQL5r9CWD
	8/qTzDgxPlFY82pOn+GsBsrptfc2MCIwihL2sozLNjaZtdlPNKJkQpym+/nN74mL5FJBbyHTZ/f
	Pk9NHZsX29EP+UKTNom45zM/2LXInlb5hXOOz2Oy5tzss7s71PPqrJsnn9Y6q80ahovRs2byOvt
	tfc5+cfYVwBBlWtzJ4KO9KrHI4BYxmX0gd9XWCA8GlTIjs5B8OcZGBHHRWjq+lv+fS43EZ59keI
	vk8Z5zRA62ZGQRPWGVBA0hyDxkCBh3lcZ9o=
X-Google-Smtp-Source: AGHT+IGVizluabYaRtLiT2Wa+Zt6KCM3prN4UlCD3gfiXYvm8B9MdIQlKG9KCsexDXKhXSGVXnZ0VQ==
X-Received: by 2002:a05:651c:b29:b0:302:2bd8:2685 with SMTP id 38308e7fff4ca-305f45cb6c2mr35751601fa.8.1736975756277;
        Wed, 15 Jan 2025 13:15:56 -0800 (PST)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-305ff0ad0dcsm23041711fa.3.2025.01.15.13.15.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jan 2025 13:15:54 -0800 (PST)
Message-ID: <f268a604-09ed-4150-9401-de82cc206ce7@linaro.org>
Date: Wed, 15 Jan 2025 23:15:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 05/16] media: qcom: camss: csiphy-3ph: Move CSIPHY
 variables to data field inside csiphy struct
Content-Language: ru-RU
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Laurentiu Tudor <tudor.laurentiu.oss@gmail.com>,
 Depeng Shao <quic_depengs@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, mchehab@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, hverkuil@xs4all.nl
Cc: quic_eberman@quicinc.com, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com
References: <20250108143733.2761200-1-quic_depengs@quicinc.com>
 <20250108143733.2761200-6-quic_depengs@quicinc.com>
 <79b3e4d6-becf-4bcd-91fa-768b4098d01d@gmail.com>
 <238411cd-1bcc-496a-9077-07bb6c4892ec@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <238411cd-1bcc-496a-9077-07bb6c4892ec@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 1/15/25 23:01, Bryan O'Donoghue wrote:
> On 15/01/2025 18:01, Laurentiu Tudor wrote:
>>> Reviewed-by: default avatarVladimir Zapolskiy
>>> <vladimir.zapolskiy@linaro.org>
>>
>> Nit: Something's not right with this tag.

Thank you for reporting. The original uncorrupted tag comes from this message:

https://lore.kernel.org/all/4fdf4f1c-fac0-4c85-8154-45f797c6acfd@linaro.org/

>> ---
>> Best Regards, Laurentiu
> 
> Doh.
> 
> @Hans could you possibly drop the "default avatar" when applying ?
> 

FWIW this particular problem has been fixed in v9, while the v9 series
itself should gain some time to be reviewed/tested.

--
Best wishes,
Vladimir

