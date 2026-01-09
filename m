Return-Path: <devicetree+bounces-253102-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B8605D077D9
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 08:02:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6B51E300E472
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 07:02:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAB4E24DD09;
	Fri,  9 Jan 2026 07:02:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="F2ACxS7D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BFDF39FD9
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 07:02:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767942149; cv=none; b=QZHu7sTNf2lFFf+HHS4neA5Y4jO1Qjk00eFriil0X+9EhK062JYWXM+nXrnEiEazihzcLMevFR8zcoz/Ix0mftZHeAffTMJqWUkzt9TJmIu4pBFRXlWaivGbieZ/U3opIklL2vC41LCum6rjDdvyY3SyhWvYdv82Wm29xCk2dMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767942149; c=relaxed/simple;
	bh=paMdNp/r0sCJKucnugNYoo3zpC8KkshoAH5vLpnDr9k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sDNk22P9mG5nVreXAPUb0jixa3483aO55GGQfJVkIabHc8C4Lf1ITqAIVThkA5uEG3i6PBuTlrzJyhuIZ9lJByEaakVQCf8f0KOfdZaauG6sLKZtiRS5EecIWOGGFqwws+I3BISzHJY1gMN76/XznWyAvl9zBx5N2Wr15Xl1V4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=F2ACxS7D; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-47d1d8a49f5so25996385e9.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 23:02:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1767942146; x=1768546946; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Djq69/IfpNbi13Trd00do8aZArSzaG1DXJ4ggAQuZj8=;
        b=F2ACxS7DbR4mVCkUGRpqy2RKOK2hZIsR+NHYcEbbfKDlZlgPEnBHRqXyy0kCFpjRgo
         8krS2naywexoLadoEw3dQ7qNmtRztivWwkeYG8L/XmQXkwm/5Gw2xyNtX3ZLvbnTEs63
         2BGRCO9948QY8h33hTyk7jvp3/fl1AdQIHy4G9ZKy3XNuAy3A/z/raD1lCT8oS84FY50
         lAoiQVfbEHzjZRCB2FpPil7HuPqXYIa5t7EWeTEEMLbv1J9WsAkvoPXlqiF7Tw2XKQ/O
         r+pPTQ59lk2tATppjA5TjnSBGL4lp9LENGcqS55z8sMzA8Rm6yQZk6ptvatG4rbqakhP
         /JZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767942146; x=1768546946;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Djq69/IfpNbi13Trd00do8aZArSzaG1DXJ4ggAQuZj8=;
        b=GK9Kk95bKnAxAsZcwUOvj/kIBOGK6WeUCZpSCSY8ZCLVVIYSrT+qkJleCKI/UBjMOr
         YV5v/srRbjVYh89XsTIXRTObi6NzCitRrHwatHDR4BCWrbFXrHdwtgBfNmWIxiEeJjxE
         hweiQfjPtz28L5E33+BAdVGrxjjUOaRFsYdAdg8vCtDrrxC/kBFSh6dJxxLeWd19T+Y+
         U0GIS3QhGplzCktiXcNnOfbAe0oQfPtqIu5eyZshup75nCAuw16sDVRhLhJQ7Z/EtIhc
         lYKU+n5zfPWW5T4kAKpVj+rTn7R1CTPT73fQ0vkZc2izPxqDQ2NIMcjjICmCptxxJosD
         xtxg==
X-Gm-Message-State: AOJu0Yx1YCxczt1SiM9ZD5c8Ky1Piq/7A9uaVhc3h059/YIVkI6fYwf0
	1HmMqaXkTRqTbVcXf5rDUhtBLtuBNMc8AKEGWmW95F05oDDt8wOINHoDvX6CkzYQcSc=
X-Gm-Gg: AY/fxX51S5W6Eszs+TG1JZNQ+yAouhduzrf9aHuXQV8q+9L82qaBPmWFWIQxmK6XJ+v
	Q1ZSwU6cnfYVvrkt7dTmFaL9gJoz9LU1XDn6tGEI5XpIbj50z2dTISTvUa8QaAWdryWWmQvEPW8
	v/NH6qaGLq9I3lqSKvja7nx7qme1dQ/JtNYSaoaqP7GmO53ZabqX0RO8Z4ad2mt+2xMoIIPohRr
	S5uRzDstPqmLu4DvDYE2xDGQshCI0ZKbMsYqJCF6vI1Ty7BAQfUyuADuk3FK4g1boY56SDsrAMN
	WNoSPa7E6O33TwNe14XSZvrJwmfk66Zhvxjsf5mvqeHBbzZpvRVtmcVkED8HMIPGze/bZ/q3QGV
	W2OQYLpv4JlwkUlBNGC14RLukSpY1uJesNbd3W8pHXqMxTUG6dNp08q2kygMDIq/3bBn5aKngS4
	QSBaRU2majZvqw8pDSnA==
X-Google-Smtp-Source: AGHT+IHqrCO4ACOl8IeS4zYYIPt3TSbstyJpnkZyJxTMBnFPv8IiqMVaH2HLdD1YiIdV/bwDrk6+hw==
X-Received: by 2002:a05:600d:6445:20b0:479:3a86:dc1d with SMTP id 5b1f17b1804b1-47d8e4a3c68mr29109845e9.37.1767942145246;
        Thu, 08 Jan 2026 23:02:25 -0800 (PST)
Received: from [10.31.13.216] ([82.77.28.160])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d7f65d9f0sm199580095e9.12.2026.01.08.23.02.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 23:02:24 -0800 (PST)
Message-ID: <cf06243e-71e6-4157-aa5f-cf3951721c0a@tuxon.dev>
Date: Fri, 9 Jan 2026 09:02:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/2] ARM: add support for pcb8385
To: Horatiu Vultur <horatiu.vultur@microchip.com>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, wsa+renesas@sang-engineering.com,
 romain.sioen@microchip.com
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20251208083545.3642168-1-horatiu.vultur@microchip.com>
Content-Language: en-US
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20251208083545.3642168-1-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 12/8/25 10:35, Horatiu Vultur wrote:
> Horatiu Vultur (2):
>    dt-bindings: arm: at91: add lan966 pcb8385 board
>    ARM: dts: Add support for pcb8385

Applied to at91-dt, thanks!

