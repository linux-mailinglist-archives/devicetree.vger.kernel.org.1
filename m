Return-Path: <devicetree+bounces-128665-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CBFD99E9385
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 13:13:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6F0C7283FA2
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 12:13:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CE79223717;
	Mon,  9 Dec 2024 12:10:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="k5s08lx+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 012A921D011
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 12:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733746237; cv=none; b=YN8/p/7THFn+Eq1gDfE4mcS4dCowWuVz6gz2PqJ5weAsCSc4/OkzPW4a+y54/fVv0x//JSWMiXocdjbR1iufEBodKPyK25bKNgMQD5HWA1AA7kt+Nk92+tpU5zrPPynjzVTKeeJxBCaroTs2UU5hgKBsTaFKry5sPy822VoPJGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733746237; c=relaxed/simple;
	bh=E8tkYJODIHheFUnS5WXIUldliI7SSiXfmfMfRYvHoDw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NFcMkzZea9glmZp1YUYNXSUfiz+rszSe3ncgEsa6LbnjkG90O3c9sq+NFaPd9S5Pxvq9a1CFSv/QUs153eCW6KS/VjRVzkl/Gj/DHSIpdEmb/nJC44jo/SD3Haym9Fe5u2C6rXsL9YedKO0s0kXHwUGnQQbqSluO2Annjonx/zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=k5s08lx+; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-434f74e59c7so10080625e9.3
        for <devicetree@vger.kernel.org>; Mon, 09 Dec 2024 04:10:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733746234; x=1734351034; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FHX/J4FydKfXDM4LudMI3jraYFA+WTkpN2SeJgrLN0k=;
        b=k5s08lx+uAqx7VYlqsWlNAubDoTdUuywEmNmcE4GOBjtTtsA7WVOfLOnLOzRQSg06Q
         Al6x4B6WMpZWpkEO4wWMqFjs5h5OoYUboU+UQL93zV2MUZPR/xO6jrFYMX/DRUKTP+tz
         hF5v3jZTJWzFwxHR/H7AueSKd9EJpRWuFG6VWOsPwijHWZ0lmfvT7MVLMmieCJ3/E7ak
         NSm8SRms6lcjquMsHK4vjapWbxVkJbFQwadyFKqcg4gif/BFuVPSkVlh0S3NShBTWtA8
         pfQ2swySFBvBKSKkFCBjpizpPgJb9WKwpMBP0uRQj4DmjS0p+WoaIygbWirJeLHIloqF
         1niw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733746234; x=1734351034;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FHX/J4FydKfXDM4LudMI3jraYFA+WTkpN2SeJgrLN0k=;
        b=imG21pyH8/0JropWs4Iw7tb3Mqaee7AN1b67ukKv6jAD44Haf0s95auKitQWlCYokD
         8wG+fTT8z503gIfs6JJAAxLC6bIwR6W+tdxyzA4ZC9kMNa9EZ0aFQQVSyUvsjq5oLulK
         oehByXfFSZ5ckVVpdETwWMeF7Xo29Kqj/hy88+LbNXuSOd6vnON/mXymLWIu2XNlPPaO
         EItPdyErk3AwyBtK4Tyg8U3Yx/zn9WP/8KolUk/gjSBpIh6xWyFSaKLZL8jTNBrEULRc
         OQL6B2/RUx36MEV37TFLZbVWWYNrjC8SznuGSLknCgNcAJDzLq7GCNj+W07E5OBFpIqM
         w4KQ==
X-Forwarded-Encrypted: i=1; AJvYcCUB5pwzyoSclYDTI5QYU3deeZrgzUGqMwgi5o3tm2gB20a/L+UDExOyfIHdGGtFoSsIG7MrL7i8MzNt@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9hC+Idt4e0wJ8JZ7t1VLJiNK42YAziF1GKqGzREj3bu59cnSi
	B/Cfgy9XNtJpX90bILVi2K/uqPaWGwPIeFtGh6F5ks5wqBhPDl4kRhREWfzoLuQ=
X-Gm-Gg: ASbGncuGO12gcV1TV1R2VCszBR1Zgjsi7jwo7kvgBWqGIdaIqUXIz+H0ccKq0DDLypK
	pBo/2taZqNgU+eTRfmvU9gDLfaZiElgcDMIjACpSF7E/Uft71oIJKzJcLVNplDeKgrcwGHOG1kx
	qhx2XTMe91pxc/rVkyRP2T3tt8uMCiED1LFbmHOKPQSsSmow1PhD/heNdEKTw7e1Swi6Wg8ERyi
	r4qQa1BCy7YlnWC8ZaOKzasTwMFDY0Gl6wLkr2KOHmhSuFVxJnQxyfBFJ4=
X-Google-Smtp-Source: AGHT+IGUfN/EA4JH6RTVsbnUKthIOhG2zwFRZUFAX7rqRG2CHXvmm33MqQPTkWqeEZrSe9CBG7Ax8g==
X-Received: by 2002:a05:600c:4e88:b0:434:fddf:5c0c with SMTP id 5b1f17b1804b1-434fff30e74mr2642745e9.4.1733746234205;
        Mon, 09 Dec 2024 04:10:34 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.161])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434e8bb0390sm86199035e9.27.2024.12.09.04.10.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Dec 2024 04:10:33 -0800 (PST)
Message-ID: <240a461f-9c46-4f02-81f9-b2c7453fa1f4@tuxon.dev>
Date: Mon, 9 Dec 2024 14:10:31 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 6/8] arm64: dts: renesas: rzg3s-smarc-switches: Add a
 header to describe different switches
Content-Language: en-US
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: magnus.damm@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
 gregkh@linuxfoundation.org, jirislaby@kernel.org, p.zabel@pengutronix.de,
 lethal@linux-sh.org, g.liakhovetski@gmx.de,
 linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-serial@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20241115134401.3893008-1-claudiu.beznea.uj@bp.renesas.com>
 <20241115134401.3893008-7-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdVgxKHw4PDbgOGAJf7xsRR1Uyzxu-br+=RK_1ouHoj41g@mail.gmail.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <CAMuHMdVgxKHw4PDbgOGAJf7xsRR1Uyzxu-br+=RK_1ouHoj41g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi, Geert,

On 09.12.2024 12:09, Geert Uytterhoeven wrote:
> Hi Claudiu,
> 
> On Fri, Nov 15, 2024 at 2:50 PM Claudiu <claudiu.beznea@tuxon.dev> wrote:
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> There are different switches available on both the RZ/G3S SMARC Module and
>> RZ SMARC Carrier II boards. These switches are used to route different SoC
>> signals to different parts available on board.
>>
>> These switches are described in device trees through macros. These macros
>> are set accordingly such that the resulted compiled dtb to describe the
>> on-board switches states.
>>
>> Based on the SW_CONFIG3 switch state (populated on the module board), the
>> SCIF3 SoC interface is routed or not to an U(S)ART pin header available on
>> the carrier board. As the SCIF3 is accessible through the carrier board,
>> the device tree enables it in the carrier DTS. To be able to cope with
>> these type of configurations, add a header file where all the on-board
>> switches can be described and shared accordingly between module and carrier
>> board.
>>
>> Commit prepares the code to enable SCIF3 on the RZ/G3S carrier device
>> tree.
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> 
> Thanks for your patch!
> 
>> --- a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
>> +++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
>> @@ -9,25 +9,7 @@
>>  #include <dt-bindings/gpio/gpio.h>
>>  #include <dt-bindings/pinctrl/rzg2l-pinctrl.h>
>>
>> -/*
>> - * On-board switches' states:
>> - * @SW_OFF: switch's state is OFF
>> - * @SW_ON:  switch's state is ON
>> - */
>> -#define SW_OFF         0
>> -#define SW_ON          1
>> -
>> -/*
>> - * SW_CONFIG[x] switches' states:
>> - * @SW_CONFIG2:
>> - *     SW_OFF - SD0 is connected to eMMC
>> - *     SW_ON  - SD0 is connected to uSD0 card
>> - * @SW_CONFIG3:
>> - *     SW_OFF - SD2 is connected to SoC
>> - *     SW_ON  - SCIF1, SSI0, IRQ0, IRQ1 connected to SoC
>> - */
>> -#define SW_CONFIG2     SW_OFF
>> -#define SW_CONFIG3     SW_ON
>> +#include "rzg3s-smarc-switches.h"
>>
>>  / {
>>         compatible = "renesas,rzg3s-smarcm", "renesas,r9a08g045s33", "renesas,r9a08g045";
>> diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc-switches.h b/arch/arm64/boot/dts/renesas/rzg3s-smarc-switches.h
>> new file mode 100644
>> index 000000000000..e2d9b953f627
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc-switches.h
>> @@ -0,0 +1,32 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
> 
> I agree with Rob about the license.
> 
>> +/*
>> + * On-board switches for the Renesas RZ/G3S SMARC Module and RZ SMARC Carrier II
>> + * boards.
>> + *
>> + * Copyright (C) 2024 Renesas Electronics Corp.
>> + */
>> +
>> +#ifndef __RZG3S_SMARC_SWITCHES__
>> +#define __RZG3S_SMARC_SWITCHES__
>> +
>> +/*
>> + * On-board switches' states:
>> + * @SW_OFF: switch's state is OFF
>> + * @SW_ON:  switch's state is ON
>> + */
>> +#define SW_OFF         0
>> +#define SW_ON          1
>> +
>> +/*
>> + * SW_CONFIG[x] switches' states:
>> + * @SW_CONFIG2:
>> + *     SW_OFF - SD0 is connected to eMMC
>> + *     SW_ON  - SD0 is connected to uSD0 card
>> + * @SW_CONFIG3:
>> + *     SW_OFF - SD2 is connected to SoC
>> + *     SW_ON  - SCIF3, SSI3, IRQ0, IRQ1 connected to SoC
> 
> Note that the original comment above says "SCIF1, SSI0", and looking
> at the schematics (IC7 and IC8 controlled by SW_SD2_EN#), that is
> actually correct?

You're right, I'm not sure why I've changed it. I'll fix it in the next
version.

Thank  you for your review,
Claudiu

> 
>> + */
>> +#define SW_CONFIG2     SW_OFF
>> +#define SW_CONFIG3     SW_ON
>> +
>> +#endif /* __RZG3S_SMARC_SWITCHES__ */
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 

