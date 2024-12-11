Return-Path: <devicetree+bounces-129750-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 361F49ECB1E
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 12:25:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B31011883F93
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 11:25:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F914238E24;
	Wed, 11 Dec 2024 11:24:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tlanoJJH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 583DF238E1E
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 11:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733916275; cv=none; b=kC+VWotoVhhg3VoZg3j/kO8K1+YtBV9T5tanYaIEQK2JjhcvEFcqZzzpIgAHTguErZLHzBn/a7iZgqHZyZ7u034Z6/Xjq8S+UHKyiB5UXJlUtKExURNs80AnM35I0zwOOmRfXjHrjz5f9L8WFEbS3JYRWrvcQlSJp9jk0MTrVDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733916275; c=relaxed/simple;
	bh=doQ+jxVCijrIMLh7OMLzT8/sHqoOku3Qjpw3S+/LdG8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ONH9LTqZH8GJcRJ5PnuBPDaoFf7V4ls3rFoehFRNLNYb/RBtowma3WCt9c04V6oU2+imYmjLnZv22IyJBUHMsN8N+Bmt1L2MKGGuUpG7tCPszwzrxTA/p8DLrzlvo+PBU5N62zbBUsFQe29hSsfqRh5rD0hojGYdC7AijUoXN98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tlanoJJH; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4361dc6322fso3531545e9.3
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 03:24:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733916272; x=1734521072; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TdVOYxjqZw+NY/Spw9lnEumCFUaVRFED0TdxGULYnmY=;
        b=tlanoJJHrC9aBRFgGGz3kJ5Ht/QNihOU4/AUfoGmb13I6KLYlvl9jjX0eBShlVOX5s
         RH+7tXrrmq99n4kBVzJGjBdW6w95l3u8IvzWDhM55boPsOiB9GUoSboyF5SnGdVQbLqQ
         3F9x/VBiuSCnipGhP0uknYWWhBvSTrIN52Pgvi7ZwyiCqwVtIkytO3IShTRQfBp+LHZC
         gDUvs775OIej8PLMXEnGnYbYnLzJDdujPahpsHt4IUf15V8QwdZ4bNrhVBoss19GBiBz
         77fGDEAwK/m4VRDotTt4idrquDyd1i3op7s4SO3KW3t8df3LtnFxPudvXf18IHGEMB4q
         deHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733916272; x=1734521072;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TdVOYxjqZw+NY/Spw9lnEumCFUaVRFED0TdxGULYnmY=;
        b=s+4hYUYVddt4Qo51lqT+lRS7xSKX4Cqv1RTD075buieRzUGqrup1P8pIjtqhgaB+Y3
         CqgQ4BTHIEa58D1EsGjFccTWvzhv4N3NCYSIa5vMPqk7n231H8D8vFoRW0+2L1v/wFXa
         a0UEfx7Tr1XzfcVQUiKKYyMVCWiS/ZWxIdG8h2I1g6PYF5LDnAYDryGr4SS2/zmoyuTb
         zmcgWyd+bUJsnxVr8C2bB0Uu0d3ZpcrjZJYhYOVGkpduVjH46zrJmi+V7BjMWwcB01bg
         i+8kl/4cLYFkhKhpTiRK5nl7vHcWnkftn7gNwPOQmYcSb1l6/4qR0Vq2EshPg06a/eGx
         sRww==
X-Forwarded-Encrypted: i=1; AJvYcCVVSoIzoFqfZOLDscO3b84mWSv0FmDV3eeefAp5VqjdHDyxGyAoiFI/XMTzs2MCBdijgz5UpjJUTfAC@vger.kernel.org
X-Gm-Message-State: AOJu0YxkCZoIFSDpsgNz/2kzTUz4l4awyt+64QOGkR0bMQyGflKKozym
	V64ddLs/T7z/E0E2B5fg6IbdaqhiHd6IbW2YAUxGBVPkNtEZe+03GvX+W0Kd5Gs=
X-Gm-Gg: ASbGncv4azdorVaKs9Ym4t1bossAHZMmjuuS3P1TE08eZ4naWFePkKD0ZGNs+JGU85d
	zSMArbu+soPi2U6Imp7u5ECavcNGmT5q80GLWxvpxj2wkGztk1qlyJU+Sg6sLQrsV7CLhse85EH
	WrmuhwDrD/BaiYg3L1Vs7Vq7cHtQ8F1SxV7PnHvQSPLmyn0BsIuopp2e1Tl4/N/CUXwP2gL2+w7
	bE7xA6u1BSaLo4Esuha2cM77Emr6N/+NPXhT3e+FCIwcbU0TBy268unWKM+QprcgbM=
X-Google-Smtp-Source: AGHT+IHfpFkIaDWgwQjHg8s+n3l3A0yqYbHH2mwIG4royHXDzI/IOfZn/Y6bGxTfFIWmUzLK2LmN0Q==
X-Received: by 2002:a05:600c:1d1d:b0:434:e9ee:c1e with SMTP id 5b1f17b1804b1-4361c419464mr21115285e9.31.1733916271781;
        Wed, 11 Dec 2024 03:24:31 -0800 (PST)
Received: from [192.168.0.40] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434f981880csm102337305e9.44.2024.12.11.03.24.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Dec 2024 03:24:31 -0800 (PST)
Message-ID: <a499bc08-1505-4f7c-833c-68240fdec275@linaro.org>
Date: Wed, 11 Dec 2024 11:24:30 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 5/5] arm64: dts: qcom: sdm670: add camss and cci
To: Richard Acayan <mailingradian@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-media@vger.kernel.org,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
References: <20241210233534.614520-7-mailingradian@gmail.com>
 <20241210233534.614520-12-mailingradian@gmail.com>
 <fe8dbb4e-9d0e-4ecf-874b-be9225ae1487@linaro.org> <Z1jdNaeoictuCK7N@radian>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <Z1jdNaeoictuCK7N@radian>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/12/2024 00:30, Richard Acayan wrote:
>> I think you sorted the regs, interrupts but forgot the clocks ?
> Do you mean the first three clocks placed first? The order was suggested
> by Vladimir in [1], but I can undo it.
> 
> [1]https://lore.kernel.org/r/40cd7a52-1c60-40dc-aee6-730b5247b216@linaro.org

We've had a long, long discussion on ordering subsequent.

Have a look at the sc7280 and align your ordering with that.

---
bod

