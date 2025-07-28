Return-Path: <devicetree+bounces-200043-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D2489B133F7
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 07:07:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3CD5F3B683E
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 05:07:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C69B2185B1;
	Mon, 28 Jul 2025 05:07:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XWpPfTLJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B716D217716
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 05:07:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753679260; cv=none; b=N+i3jJ5l+Bi5mgQYudZT73IubbjnQzs59WaECiOdnoeLxsM4MfbIJErasx3wzB1HiZYiQY52Pwzusb+CljY1iqjPU8EUYpbb/ke87q8GQJaOpWwcnuZSYo4yIrCB24FPblc+ZR/QIetfztryXNbiRgwBl6Vv9YzYPIyq47zImU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753679260; c=relaxed/simple;
	bh=mH/cGBiY0dlSDL59H4mB5AvIyTXZ/VwivsRhbGPaEl4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=urv62ugUPruq4tIji06S2Vo0gLD8w04J18NDc6QIotnn0JAhXulPJ+DlnosbbNLOb5lxYg3QVCv0jqcxUM5cRVit+RcBcjRPgR0Wb0CqEKASaM4VhzebD0QTkUdFTTCPk4g7eI/FI6P2H4MVIwOoDKCiW4tzbVpe4xsf/l8khio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XWpPfTLJ; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-456077f0e6eso3226875e9.1
        for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 22:07:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753679256; x=1754284056; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=L3eSrG1vqRe3J8vkPZXbMpRX/xHdKrmfIqvsgLhc6Z0=;
        b=XWpPfTLJGTQLp7qkZk6x03biKkNRebPANXKj0ptaDE2V8ln0GMXupo5gWpkma5X8UR
         PNTq65aat4R57Z7gaJHhry5L+w0YT6PiQPNCzT9RLf7te3GUEFnA+JZRojZANiqKaY2l
         c3Qkr37m8aHT1mF6Gy/PG104tIR3mjxEEYzXvigaSMOX3QCp0N1oAo/lc+vFcuwOMNEA
         /W8MKTtMnEMkAiQb4NtOXMiLyc1PFhOPdfUaxEXbVl/B/AVpkWXTgVfxOwXXfE/Kl3G0
         L3NE3V8D10VNptzXtrjvlVvvsTE1i0H1imfVV87Spa4RkZ8ZzSIh0dYvGqbBwlL95D3s
         bPnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753679256; x=1754284056;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L3eSrG1vqRe3J8vkPZXbMpRX/xHdKrmfIqvsgLhc6Z0=;
        b=cC6H/ReTwK2569oFoTNHvlk1T8DL0uyCeP2a4RE39XiLWii46snbQ3bkCyhU7KxUvY
         nmRCuzNY8u8Zf2cYQy0aGSxjQveDaBVoKb1DeRgsxoCaf/5qhlCiZhMkKWFYElI0DDwd
         sY3SnQo+VKErMyq5+CfuE9PSaWj6TZd4lssKhwozoq8zTlsH6+2OPdKGVJpYrALaecoe
         mmlWc8r4DRjTVQQHUGaYdUUZtotG4xJvdkvTNp5gU+oWqWKFIf04KM435PRNGMVx8ibM
         fIGIQ7mYcnC+2S/9vXudCkp4ZlOLZScYChs1grLckCM875yt/AgRVGF/kqaGyTtfuHvV
         La0A==
X-Gm-Message-State: AOJu0Yy7m5WTszylw76h10aEJOocxcuQUcVDjR2vFQcCC/TAK6TEcMR8
	VsaXGKeWy8sEQbuvfa6jgnPrezMSlDilOwiWyPJbJb6EhGDIkWgJX9T74H+4ExFmQc8=
X-Gm-Gg: ASbGnctL/+LyM4WXqOvPxnsy2tFl2aFbRdB1MPrVgjjFSEkmDFcR6po5LlqRWBmjdU2
	ej0n6VvAkjjq1PxLj4MksTuQCGVZ+ALZb6TbEdv1EVuaiQiTcgrrV+SJYigYjYY7PS3P+ruStDO
	b29O51mNAv+GEj2LYBJmWYIAWp2JRWwNhpZrqpsKH8qjVa+i2mM9rvpSOYbNTWCCjcujGuhJBVr
	k8TR+H4NBeR8e6SMXh9+EdJ4V0ECiqGr6qHFQEWHtup4pldMiT48lfv8h4Vel79S1YU2M5PMY3w
	lkJnm7jULFlbCP9fONLgPFlC/W+6bhKC+Ijzr2sq6MVvgFr96plvs0AlROgodHBMKGC1cDlwy4M
	wGx3RBaoJVv8YRryyBfvPAjivvYUaSxxZs6pT9Ve+/w==
X-Google-Smtp-Source: AGHT+IFTiLLa4VIdaNVlbk8aHV5CofUdpZeQ+TwRocmmdvBMGt2mf4/1U63x+Qn0o0ivABMfNj6mgg==
X-Received: by 2002:a05:600c:a06:b0:456:1a00:c745 with SMTP id 5b1f17b1804b1-4588459a0dfmr11175385e9.3.1753679255762;
        Sun, 27 Jul 2025 22:07:35 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.203.90])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-458704aaf20sm144977785e9.0.2025.07.27.22.07.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Jul 2025 22:07:35 -0700 (PDT)
Message-ID: <9ebd9797-8d92-4799-bb8d-59a796e6043c@linaro.org>
Date: Mon, 28 Jul 2025 07:07:32 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: arm: rockchip: add
 LinkStar-H68k-1432v1
To: Erik Beck <xunil@tahomasoft.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250727-linkstarpatch_v4_6-16-rc1-v4-0-0dfa7aa06ec9@tahomasoft.com>
 <20250727-linkstarpatch_v4_6-16-rc1-v4-1-0dfa7aa06ec9@tahomasoft.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <20250727-linkstarpatch_v4_6-16-rc1-v4-1-0dfa7aa06ec9@tahomasoft.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 28/07/2025 02:03, Erik Beck wrote:
> Add device tree bindings.
> 
> This device:
>   - Has not been supported previously in the mainline Linux kernel;

Irrelevant, drop.

>   - Is a single board travel router made by Seeed, using an rk3568;
>   - Has four ethernet ports;
>   - Has four USB ports;
>   - Has WiFi (MediaTek MT7921e);
>   - Has a real-time clock (rk809)
> 
> Base commit:
>   - commit 19272b37aa4f83ca52bdf9c16d5d81bdd1354494 ("tag: v6.16-rc1");

Irrelevant, drop. This should NEVER be part of commit msg, because it
makes no sense once applied. It is not even true in that moment.

> 


Best regards,
Krzysztof

