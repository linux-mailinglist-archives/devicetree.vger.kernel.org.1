Return-Path: <devicetree+bounces-128316-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F3539E8604
	for <lists+devicetree@lfdr.de>; Sun,  8 Dec 2024 16:49:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5FD89281569
	for <lists+devicetree@lfdr.de>; Sun,  8 Dec 2024 15:49:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B061F158DC5;
	Sun,  8 Dec 2024 15:49:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="hcnwq8px"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC50614D456
	for <devicetree@vger.kernel.org>; Sun,  8 Dec 2024 15:49:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733672984; cv=none; b=CH6u4+FhkBmC16t3ug1i5uPANw91rBpmzLM4RIRHYdpmg+fjIDAq0JaQFfZ2wZQRKcglYZH8do9QtOej8RHGw2r4NXKgo6mM4x54ZyZDZVWQPYyYSdBxIInR4wxZ77QVryphbc/iSr+5cA/X5sGL1jX5gJCx4aB48inGMTD1a7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733672984; c=relaxed/simple;
	bh=FKwkqAFv71qi5Y5KBLNFvGBUWlg4JVujuFsRQTqhs80=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=WF+c5j/cjxFYHPlkvy2lb8bIvXHkzjVy0OdDvSxiEPIh35LxOCPsZRuxFX2Yupr+WKPAlz5ob46AkJF0wzUQVM7cFK/gGo6x4BAmLKzJXlCEWjh+BbozyVbpP04p+LzADnMH0c5M2JS9cyUEysjUw86IOx92abAwgRtdPG6+SWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=hcnwq8px; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-434f80457a4so946735e9.0
        for <devicetree@vger.kernel.org>; Sun, 08 Dec 2024 07:49:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733672980; x=1734277780; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GSND8gKPpnPHIOd0ZAFXzWeCT+o/x2u1iq0um13sDc0=;
        b=hcnwq8pxYK/VGgZzQ7As6MT/j//HWIdISaONnWlLrqsUK33ZeQv1vV3Q48Py/TNa1i
         qw4uWtMNOzLmWLcyfxUvU0m5A4GEnKrNj0LiGK/3Ncc8ElMJMEb3xMWt3aloDsZQ1xzo
         YE86xs45alSS6+51aMOOeZc/rUqcDhLuwKHgEm8kBs8VVW9sE8AzYw+YQbh9xT18nqzF
         TyM38sI0JvyxYXPlAiUQAaDtSiKEmNviCBrmbJdtxpt/YlDUCcAHBeJt/wDJZmza86L2
         CEhMvlYa2FlqPIodn4IL9iGdh8mCPXodaMtfqv/vo1EhjOEhcNKvTBJ4jKpi5o1YZXiF
         d5WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733672980; x=1734277780;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GSND8gKPpnPHIOd0ZAFXzWeCT+o/x2u1iq0um13sDc0=;
        b=cj0HwJLgMROVmqgjqQWh/ZdRE008P36ngWyS62LzQ0i6T/iycfWvLle9nmcabvjWir
         H8KFsrEUDq4LrpBHVG/ff+JJ/iVK1Srxh9gTfY8o+LWRI7g488+0T/NrLU0sOC9g/RwG
         ne+hoBGRtH4GWMF8Wm+nZT0IL4FF9Y7ESZqoeza1KqOYItujMrGBOaW5jqtW9TmClAHP
         qj/cyHgSYQ08bn1E/DO+71+N+iGWks/B17BQwBOb2D0l4HP1x/VUKWY9jLirJLcVTDFB
         erf/xvVSexK8z4FmInStVP52RVSFfg4e9cQtlR+ed7uOAtR0LKrptlRqAYwWdE9vN1G/
         HfAw==
X-Forwarded-Encrypted: i=1; AJvYcCUCg7li0jAzLR22BfajL1yVMQYqDGKEZJ+rzsGOMvenT4LhRwv+zHY4rkudOAWwA+uuP9R49Zu8vdcQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwWT2gMj6i7IsZRDlxOKEx8JOHWpwOiynodVrXwWcGcQiS0Ls8P
	5WrEXyoMorlhvTsQe+gfehGYQKvtZ40obT10OrXex1zwMvCoaVoGequej1dLL9k=
X-Gm-Gg: ASbGncvmVEhA9v8c3/8Ckd/E10STph6Oix7fKFU8SGnpVlUnHzPCsAaqLw2qQYNY6mM
	FOuakLSAfA2ZjjtD4etTeaO4X2qaPYi0got0wYlU6fHjf5zGVVtDSVqzjIwzRjV3uQkwT4qoAyV
	Y/6MYbV/j98Qu/vS4zLR/lUQ59WGizx2sf04j4e48A8m+oYAIi55b0cWyF/l1qL75AnpkoGC/58
	EhPhmfJdnuIszaS0TPVoHsG3FM4XESUa246U4KAE2Oe/MdPXVgK44gMabY=
X-Google-Smtp-Source: AGHT+IGq4cGYPhA6KCSTjdpGb4CgHZ99GQRGPwYyuWrGpVCbMvRBa8NBW7ybgFDZX5516r+i/hv+ZQ==
X-Received: by 2002:a05:600c:4e45:b0:434:f2af:6e74 with SMTP id 5b1f17b1804b1-434f2af711emr18175215e9.15.1733672980031;
        Sun, 08 Dec 2024 07:49:40 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.161])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434eba653a0sm50093225e9.22.2024.12.08.07.49.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Dec 2024 07:49:38 -0800 (PST)
Message-ID: <a93bd8ed-39e2-4f19-99c0-1d9c11c694df@tuxon.dev>
Date: Sun, 8 Dec 2024 17:49:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] Add power monitor support on sam9x75-curiosity board
Content-Language: en-US
To: Mihai Sain <mihai.sain@microchip.com>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20241122080523.3941-1-mihai.sain@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20241122080523.3941-1-mihai.sain@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 22.11.2024 10:05, Mihai Sain wrote:
> Mihai Sain (2):
>   ARM: dts: microchip: sam9x7: Move i2c address/size to dtsi
>   ARM: dts: microchip: sam9x75_curiosity: Add power monitor support

Applied to at91-dt, thanks!

