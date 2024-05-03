Return-Path: <devicetree+bounces-64757-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 815B28BAC37
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2024 14:20:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 97279B20FD4
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2024 12:20:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE678152DF3;
	Fri,  3 May 2024 12:19:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="IE/IXpmG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A136152519
	for <devicetree@vger.kernel.org>; Fri,  3 May 2024 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714738796; cv=none; b=u1NmYCSmvS7i03S4rJzEV1JslgfJg2YYmj27qWfMJGhsHCqSl42NKYMXFDavyvGMqFUjYOITeVCglHmq1aZxqO0qiQoIRFU3nhfS54mppAQxnSNqJITAI5VnRGN8XsXuFnu6kML1fJLO0TbSKQ5tgNFnQcuVp0EbLqoDTl6aIlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714738796; c=relaxed/simple;
	bh=Z1lP1owSq0mQTKCYuyWX/DwsK15+IKeOuYOib67zKMY=;
	h=References:From:To:Cc:Subject:Date:In-reply-to:Message-ID:
	 MIME-Version:Content-Type; b=FqoI9OMKinDqXGjlR8MnLl4/MKqzIxTxbyrGhoFTQn71fPCopnCEfPSG3XgMEEh/4z1H62gKZHo+iA5z+iehNXw+tgPW04sOyPUVO07ZL62JR0nrOO4Gd9hmfa2i0RnRlAQV88AhEkd/OwIxOqIT4Gw88sGmMH8G8pP1VJOzoCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=IE/IXpmG; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-51f0f6b613dso2483575e87.1
        for <devicetree@vger.kernel.org>; Fri, 03 May 2024 05:19:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1714738792; x=1715343592; darn=vger.kernel.org;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=2eqCGUNVwZTag5I7AILZ3zgJXV85rMS4OnjGvjuWay0=;
        b=IE/IXpmGd8DG29svELVWqkpU3C2VcZnE8u9g2qOVxUib1A0V/lZ+tzaF1e/rXWgehF
         2ugN5fsKr38lNdRxulwDnLUfAxZFA6/sk24nDtsaqsoZGBzjLLTZc7zWFY2H9zJSp13I
         wonrSpG8gX9T7xXuokkZywKxc3vgluatkW7KywEQvrutgiOHBhxP0fl1cIb9ImhEKxTf
         MvLzUpKBrWdUvHSeANKQTpnZPmZyTDiK/tECt40Qpns83cEkp7Po1teaqx0rq7Bj+wLW
         DwIGGtm9wkYrXoWpwDyNoXN9CBiw8W0dphg2WTT8cDrkcAdhNs4Kf1PJTCWjS/HEfOhr
         wUtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714738792; x=1715343592;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2eqCGUNVwZTag5I7AILZ3zgJXV85rMS4OnjGvjuWay0=;
        b=IBswsfEEzyKDFazDwINPMGZH1qvCNsbn7ooz3BX3Ywle7gOhmCgYocPNpvYIYbNfug
         45CZ+a3ntWHXajpZSXfM52aGEWI9OzQnv/KQb5ldqfNwQ+qzyksBPZxhNtjTOCFys/sy
         tbSOCnRr+JHLnzp67LMIh2VwLpd+C1mL7/i3QY4cG0TTgMNziTYb3oYbaFIVMaFG0tlA
         3OcGlu4TgRUDqd4Bl6Cq7aptaU7ffDi0eC8LoEA/eixbjtGQU+M8+1sqN2QDbG/2tQEW
         Vwukzq/kgdokZxPvlNE6Eq8BjRtxEdt3S6shNLnCRCbDF2GQVQZ7RZoX2bK/150e7FJ1
         SbnQ==
X-Forwarded-Encrypted: i=1; AJvYcCWcBID3qx4nvwgnDVKc4Sl96HnozyscDeD17gaj+5ouOO/9XJwqE8GgWHpaNfDlHdK3QXsuaQwM0EpQlGH4y+ASjGFac/8LTUeyFQ==
X-Gm-Message-State: AOJu0YyRHoIiBlcqRd9CGmAvjMdlcxciNKTNDyiWRHgjcWiu8v3FuXfg
	++PWhDuTp2nX/c+RA2Ffxed/kgLdCXmDmudktJtfrwc/nAVr4UXjK9L5v4uAAN4=
X-Google-Smtp-Source: AGHT+IHCsUvbERAVRCqb5stqTzQ2F0+83tkFBnxwOqCKN+ECOXNxNs4F4W5oi11tZ2FknKUU/uEH9Q==
X-Received: by 2002:ac2:47e4:0:b0:51a:c207:12b with SMTP id b4-20020ac247e4000000b0051ac207012bmr1640318lfp.37.1714738792161;
        Fri, 03 May 2024 05:19:52 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:1b85:e590:355b:9957])
        by smtp.gmail.com with ESMTPSA id ay2-20020a05600c1e0200b00418948a5eb0sm9229978wmb.32.2024.05.03.05.19.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 May 2024 05:19:51 -0700 (PDT)
References: <20240424050928.1997820-1-xianwei.zhao@amlogic.com>
 <20240424050928.1997820-6-xianwei.zhao@amlogic.com>
 <20240424200107.GA372179-robh@kernel.org>
 <9a9ab302-5da5-47bb-85f1-d2295fa9f8c9@amlogic.com>
User-agent: mu4e 1.10.8; emacs 29.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Xianwei Zhao <xianwei.zhao@amlogic.com>
Cc: Rob Herring <robh@kernel.org>, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Neil
 Armstrong <neil.armstrong@linaro.org>, Jerome Brunet
 <jbrunet@baylibre.com>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>, Chuan Liu <chuan.liu@amlogic.com>
Subject: Re: [PATCH v7 5/5] clk: meson: c3: add c3 clock peripherals
 controller driver
Date: Fri, 03 May 2024 14:16:17 +0200
In-reply-to: <9a9ab302-5da5-47bb-85f1-d2295fa9f8c9@amlogic.com>
Message-ID: <1jle4r3x5l.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain


On Thu 25 Apr 2024 at 14:28, Xianwei Zhao <xianwei.zhao@amlogic.com> wrote:

> Hi Rob,
>    Thanks for your review.
>
> On 2024/4/25 04:01, Rob Herring wrote:
>> [ EXTERNAL EMAIL ]
>> On Wed, Apr 24, 2024 at 01:09:28PM +0800, Xianwei Zhao wrote:
>>> Add the C3 peripherals clock controller driver in the C3 SoC family.
>>>
>>> Co-developed-by: Chuan Liu <chuan.liu@amlogic.com>
>>> Signed-off-by: Chuan Liu <chuan.liu@amlogic.com>
>>> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
>>> ---
>>>   drivers/clk/meson/Kconfig          |   15 +
>>>   drivers/clk/meson/Makefile         |    1 +
>>>   drivers/clk/meson/c3-peripherals.c | 2366 ++++++++++++++++++++++++++++
>>>   3 files changed, 2382 insertions(+)
>>>   create mode 100644 drivers/clk/meson/c3-peripherals.c
>>>
>>> diff --git a/drivers/clk/meson/Kconfig b/drivers/clk/meson/Kconfig
>>> index 9f975a980581..0b85d584910e 100644
>>> --- a/drivers/clk/meson/Kconfig
>>> +++ b/drivers/clk/meson/Kconfig
>>> @@ -142,6 +142,21 @@ config COMMON_CLK_C3_PLL
>>>          AKA C3. Say Y if you want the board to work, because PLLs are the parent
>>>          of most peripherals.
>>>
>>> +config COMMON_CLK_C3_PERIPHERALS
>>> +     tristate "Amlogic C3 peripherals clock controller"
>>> +     depends on ARM64
>>> +     depends on ARM_SCMI_PROTOCOL
>> I may have missed it, but I don't see the dependency on SCMI in this
>> driver.
>> 
>
> Some clock sources for peripherals controller from SCMI module.
> In previous version, Jerome suggest us the clock  that relevant registers
> can only be accessed securely is implemented through SCMI.
>

There is no dependency but you are guranteed to have have problem if
SCMI is missing because it provides several inputs to this controller.

IMO, this controller should 'imply ARM_SCMI_PROTOCOL'

You have already posted a v8 without it.
I expect a fix up change on top of v8 if there is no other comment on
this v8 version. Part of v9 otherwise.

>>> +     depends on COMMON_CLK_SCMI
>>> +     depends on COMMON_CLK_C3_PLL
>>> +     default y
>>> +     select COMMON_CLK_MESON_REGMAP
>>> +     select COMMON_CLK_MESON_DUALDIV
>>> +     select COMMON_CLK_MESON_CLKC_UTILS
>>> +     help
>>> +       Support for the Peripherals clock controller on Amlogic C302X and
>>> +       C308L devices, AKA C3. Say Y if you want the peripherals clock to
>>> +       work.
>>> +
>>>   config COMMON_CLK_G12A
>>>        tristate "G12 and SM1 SoC clock controllers support"
>>>        depends on ARM64
>>> diff --git a/drivers/clk/meson/Makefile b/drivers/clk/meson/Makefile
>>> index 4420af628b31..20ad9482c892 100644
>>> --- a/drivers/clk/meson/Makefile
>>> +++ b/drivers/clk/meson/Makefile
>>> @@ -20,6 +20,7 @@ obj-$(CONFIG_COMMON_CLK_AXG_AUDIO) += axg-audio.o
>>>   obj-$(CONFIG_COMMON_CLK_A1_PLL) += a1-pll.o
>>>   obj-$(CONFIG_COMMON_CLK_A1_PERIPHERALS) += a1-peripherals.o
>>>   obj-$(CONFIG_COMMON_CLK_C3_PLL) += c3-pll.o
>>> +obj-$(CONFIG_COMMON_CLK_C3_PERIPHERALS) += c3-peripherals.o
>>>   obj-$(CONFIG_COMMON_CLK_GXBB) += gxbb.o gxbb-aoclk.o
>>>   obj-$(CONFIG_COMMON_CLK_G12A) += g12a.o g12a-aoclk.o
>>>   obj-$(CONFIG_COMMON_CLK_MESON8B) += meson8b.o meson8-ddr.o
>>> diff --git a/drivers/clk/meson/c3-peripherals.c b/drivers/clk/meson/c3-peripherals.c
>>> new file mode 100644
>>> index 000000000000..0f834ced0ee9
>>> --- /dev/null
>>> +++ b/drivers/clk/meson/c3-peripherals.c
>>> @@ -0,0 +1,2366 @@
>>> +// SPDX-License-Identifier: GPL-2.0-only
>>> +/*
>>> + * Amlogic C3 Peripherals Clock Controller Driver
>>> + *
>>> + * Copyright (c) 2023 Amlogic, inc.
>>> + * Author: Chuan Liu <chuan.liu@amlogic.com>
>>> + */
>>> +
>>> +#include <linux/clk-provider.h>
>>> +#include <linux/of_device.h>
>> I don't think you need this header.
>> 
>
> Yes, I will fix it with c3-pll.c.
>
>>> +#include <linux/platform_device.h>
>>> +#include "clk-regmap.h"
>>> +#include "clk-dualdiv.h"
>>> +#include "meson-clkc-utils.h"
>>> +#include <dt-bindings/clock/amlogic,c3-peripherals-clkc.h>


-- 
Jerome

