Return-Path: <devicetree+bounces-253126-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 789CED07BF1
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 09:15:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B6AC83013D46
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 08:15:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 930D21EDA0F;
	Fri,  9 Jan 2026 08:15:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TPxDL8Fm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D288319E7F7
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 08:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767946535; cv=none; b=fmUpDFQkKiJ1wkWtsFVSiVMaD6kADWMa9eGQcKhWgIRzyrWA0hn54iiDqzweDrq6/BMGSLnHDAWiPTageuvQaTeCN5RVvJOceMY7tDLFJulIN03ty7795c1/uQg8su+zVlSvzhrMP2xc7Bjv6lXwWfuxW6l9DHej2IdS7lXe+qQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767946535; c=relaxed/simple;
	bh=TegNChNmHEzD8+9WeNnVdBonXBPxxrbHlIIxhxeFES4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RQvnHUME1uqMKFTM7LbTqghMFS0vc3+4Jn4prnV5ZEWpdr96SPbcNwuj0K4uPiwgtnLf562rWXeWvWwN2XWTZvZdxbQ+k1bQBVrucWopu7tYqVzJ04Rl7ecJo0D65XiQZ1xS+8iSY+TP6gKFJzDQYHH0/+06s9BtSqggD9r8QDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TPxDL8Fm; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b79e7112398so656240266b.3
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 00:15:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767946532; x=1768551332; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VpBRuHMiMCleFgRr0io9MPn59FZX7HGviJTaLToKJC0=;
        b=TPxDL8FmyFjKs8FRUjRnney8lcrygvk5AzcfbivK3GHzEyxLBDauoL9etHmAu0a4BG
         z+Tgx8JGpq0ceJOEh0SNqGLjqUoB2lAoIJ8iJuQh7X0LnSnPlnAUlCTiEoMlw072M2uc
         U/W/xQYcDzaHVp0q1nWbKNODWqPO2wI91jYr8NtTL7ekegk0bTHd2k+k/NgzQGDAu4/m
         XETHqIKutmV9OSoeYTg+s3wAp+O9Zn8G+rQfl94MWQ4Es4f7Ow3URpqpvybJuFqXxzfe
         aGO2iCVcdm/9ILvG3fpec2w78MCFl2q1835lI333wdPH+Tpvo36Pl62AvYJuokiZaB/8
         U12A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767946532; x=1768551332;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VpBRuHMiMCleFgRr0io9MPn59FZX7HGviJTaLToKJC0=;
        b=IKwyfbtO21RBUvUOUZt83s8ll9tNtM890EAMbcOPf5ciz2VFiTPURaRt5a+Fv9GB/x
         Z3xJzZI2AsppU2OE+WqUMLeXhvww4lbR8HDV/UxqI1WdiPYCzJ5zE61Kiul6xu4pOwyO
         Lal/NUSCBtifwywclKZSJgpuIHsWpqEi2Q+aYp06k+M19Jxz/7et9kylrmjSvmycCtL6
         XrN42aG9Vn+9wRzT/+AuijMvjJ953dgoe2H67ajmZdgxauD+O2jURak/uavvyxkRDYEI
         OqUkFGOOtTWlhPP49KL+uDn9tMJBgnmvUMAXArZxDUAmVr4f62vGJd0Zc62Yynkja38F
         NOZQ==
X-Forwarded-Encrypted: i=1; AJvYcCXFS8Dvb0pTYvgnVj4UP62QyMbfSIS3IbzLpWED+Rri4IWgL/iojgwjy3bO4/OrcCW4axZ/rRw6HJa0@vger.kernel.org
X-Gm-Message-State: AOJu0YynPuFNV7pGr8E8qUQxWSyX5gEddjzk0j10k1ewZF8Sva4etzlZ
	62EMoRMbU1MMMKcIZ6Ji28BUZb3ozH3NhCEMl0blg35YynzY90nYCfCoE5wkXxqKozQ=
X-Gm-Gg: AY/fxX7O5h7cvyT7N+08E3NpBFNlY9fAS6R38NzEpPXHN1ZjcSKjDqL7MgO7coP94RJ
	cnX1ZzGjEIFmYeM+9rZ2xI4PMfszA5PDSxfZ/1UIchxz1R7OO0MTcb3pJ1AOXo/+EEHbkl9NNJH
	51tZF75xbFIqkoqw3Lvt7KxylGhxj1awcaTfE1XfHM1bFI97ySjN5GAmEC2wVGGZ7dxGgmr14kr
	51tAS0AeuhtwbBuGBQN2kjU1yLLx2m/Ak4X3zG4DhlbZREjKzm63XR+s87MMz90inW/wQzmH342
	OOGk0cp74HjU3C48IEbEhv84mZAEV0zOGrTRnIOPU5StiJvAUDz+IuM4KMogh4NQStJB/OaSewm
	0h3dCBVjkynJjZ85Wl1DX/ILFigaefCyQzoLf4wEkUHblDpvZCIC7v0hsXxsnN+U/10/dT9cC8u
	8XPp20lyhHl0FUw+Ja56ZO83BfEPvMkd1xpOEx+RTTyWV+prayVkE0cTd5nR3QHERUrgkx
X-Google-Smtp-Source: AGHT+IEbfnpAwTBpMLXsSD7GLLq4RdVLr81UJhXWfoMR4g3wMxGRElDJAG31EIjk//ER3TZlJZdKiQ==
X-Received: by 2002:a2e:b8d0:0:b0:382:ff8c:c9c3 with SMTP id 38308e7fff4ca-382ff8ccac1mr27076741fa.3.1767940183581;
        Thu, 08 Jan 2026 22:29:43 -0800 (PST)
Received: from ?IPV6:2a10:a5c0:800d:dd00:8fdf:935a:2c85:d703? ([2a10:a5c0:800d:dd00:8fdf:935a:2c85:d703])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-382eb7cc214sm21543771fa.22.2026.01.08.22.29.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 22:29:42 -0800 (PST)
Message-ID: <63bc889a-b97e-43c3-9f46-9ca444873b70@gmail.com>
Date: Fri, 9 Jan 2026 08:29:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND v6 00/17] Support ROHM BD72720 PMIC
To: Lee Jones <lee@kernel.org>
Cc: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
 Pavel Machek <pavel@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Sebastian Reichel <sre@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Linus Walleij <linusw@kernel.org>,
 Bartosz Golaszewski <brgl@kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-rtc@vger.kernel.org, Andreas Kemnade <andreas@kemnade.info>
References: <cover.1765804226.git.mazziesaccount@gmail.com>
 <20260108172735.GK302752@google.com>
Content-Language: en-US, en-AU, en-GB, en-BW
From: Matti Vaittinen <mazziesaccount@gmail.com>
In-Reply-To: <20260108172735.GK302752@google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 08/01/2026 19:27, Lee Jones wrote:
> On Mon, 15 Dec 2025, Matti Vaittinen wrote:
> 
>> Resending the v6
>>
>> Series is same as v6 _except_ being rebased on v6.19-rc1 - and adding rb
>> tags which were replied to v6.
>>
>> The ROHM BD72720 is a new power management IC for portable, battery
>> powered devices. It integrates 10 BUCKs and 11 LDOs, RTC, charger, LEDs,
>> GPIOs and a clock gate. To me the BD72720 seems like a successor to the
>> BD71828 and BD71815 PMICs.
>>
>> This series depends on
>> 5bff79dad20a ("power: supply: Add bd718(15/28/78) charger driver")
>> which is in power-supply tree, for-next. Thus, the series is based on
>> it.
>>
>> The testing since v4 has suffered some hardware-issues after I
>> accidentally enabled charging while the PMIC's battery pin was connected
>> to the I/O domain. Some heat was generated, not terribly lot smoke
>> though...
>>
>> After the incident I've had occasional I2C failures. I, however, suspect
>> the root cause is HW damage in I/O lines.
>>
>> Revision history:
>>    v6 resend:
>>    - Rebased on v6.19-rc1 and collected rb-tags from v6.
>>
>>    v5 => v6:
>>    - MFD fixes as suggested by Lee
>>      - Styling mostly
>>      - New patch to Fix comment style for MFD driver
>>    More accurate changelog in individual patches
>>
>>    v4 => v5:
>>    - dt-binding fixes as discussed in v4 reviews.
>>      - Drop rohm,vdr-battery.yaml and add vdr properties to battery.yaml
>>      - Drop 'rohm,' -vendor-prefix from vdr properties
>>    - Link to v4:
>>      https://lore.kernel.org/all/cover.1763022807.git.mazziesaccount@gmail.com/
>>    More accurate changelog in individual patches
>>
>>    v3 => v4:
>>    - dt-binding fixes to the BD72720 MFD example and regulator bindings
>>    More accurate changelog in individual patches
>>
>>    v2 => v3:
>>    - rebased to power-supply/for-next as dependencies are merged to there
>>    - plenty of dt-binding changes as suggested by reviewers
>>    - add new patch to better document existing 'trickle-charging' property
>>    More accurate changelog in individual patches
>>
>>    RFCv1 => v2:
>>    - Drop RFC status
>>    - Use stacked regmaps to hide secondary map from the sub-drivers
>>    - Quite a few styling fixes and improvements as suggested by
>>      reviewers. More accurate changelog in individual patches.
>>    - Link to v1:
>>      https://lore.kernel.org/all/cover.1759824376.git.mazziesaccount@gmail.com/
>>
>> ---
>>
>> Matti Vaittinen (17):
>>    dt-bindings: regulator: ROHM BD72720
>>    dt-bindings: battery: Clarify trickle-charge
>>    dt-bindings: battery: Add trickle-charge upper limit
>>    dt-bindings: battery: Voltage drop properties
>>    dt-bindings: mfd: ROHM BD72720
>>    dt-bindings: leds: bd72720: Add BD72720
>>    mfd: rohm-bd71828: Use regmap_reg_range()
>>    mfd: rohm-bd71828: Use standard file header format
>>    mfd: rohm-bd71828: Support ROHM BD72720
>>    regulator: bd71828: rename IC specific entities
>>    regulator: bd71828: Support ROHM BD72720
>>    gpio: Support ROHM BD72720 gpios
>>    clk: clk-bd718x7: Support BD72720 clk gate
>>    rtc: bd70528: Support BD72720 rtc
>>    power: supply: bd71828: Support wider register addresses
>>    power: supply: bd71828-power: Support ROHM BD72720
>>    MAINTAINERS: Add ROHM BD72720 PMIC
>>
>>   .../bindings/leds/rohm,bd71828-leds.yaml      |    7 +-
>>   .../bindings/mfd/rohm,bd72720-pmic.yaml       |  339 ++++++
>>   .../bindings/power/supply/battery.yaml        |   33 +-
>>   .../regulator/rohm,bd72720-regulator.yaml     |  148 +++
>>   MAINTAINERS                                   |    2 +
>>   drivers/clk/Kconfig                           |    4 +-
>>   drivers/clk/clk-bd718x7.c                     |   10 +-
>>   drivers/gpio/Kconfig                          |    9 +
>>   drivers/gpio/Makefile                         |    1 +
>>   drivers/gpio/gpio-bd72720.c                   |  281 +++++
>>   drivers/mfd/Kconfig                           |   18 +-
>>   drivers/mfd/rohm-bd71828.c                    |  555 ++++++++-
>>   drivers/power/supply/bd71828-power.c          |  160 ++-
>>   drivers/regulator/Kconfig                     |    8 +-
>>   drivers/regulator/bd71828-regulator.c         | 1025 ++++++++++++++++-
>>   drivers/rtc/Kconfig                           |    3 +-
>>   drivers/rtc/rtc-bd70528.c                     |   21 +-
>>   include/linux/mfd/rohm-bd72720.h              |  634 ++++++++++
>>   include/linux/mfd/rohm-generic.h              |    1 +
>>   19 files changed, 3127 insertions(+), 132 deletions(-)
>>   create mode 100644 Documentation/devicetree/bindings/mfd/rohm,bd72720-pmic.yaml
>>   create mode 100644 Documentation/devicetree/bindings/regulator/rohm,bd72720-regulator.yaml
>>   create mode 100644 drivers/gpio/gpio-bd72720.c
>>   create mode 100644 include/linux/mfd/rohm-bd72720.h
> 
> The MFD parts LGTM.

Thanks Lee!

> What Acks are you waiting on?  What's the merge strategy?

I think everything else has been acked by maintainers, except the 
power-supply parts. I think those have only been looked at by Andreas 
and Linus W. Haven't heard anything from Sebastian :(

I would love to see the patches 1 - 14 and 17 to be merged (via MFD?). I 
could then re-spin the 15 and 16 to limited audience as I hope Sebastian 
had time to take a look at them. However, I don't think any of the other 
patches in the series depend on the last .

Yours,
  -- Matti.


---
Matti Vaittinen
Linux kernel developer at ROHM Semiconductors
Oulu Finland

~~ When things go utterly wrong vim users can always type :help! ~~

