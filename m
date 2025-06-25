Return-Path: <devicetree+bounces-189305-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C6DB6AE78FE
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 09:46:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6BC1A3A605F
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 07:45:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D4AF1FBEB0;
	Wed, 25 Jun 2025 07:46:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ogRVPUdJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC6371DDC2B
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 07:46:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750837568; cv=none; b=TsqP7QUOyvRW5IXUjIFfXvdrQYLiU0G5PnMh3RndaioMlTsIhKKe+/MgbHO0roXAzwZHjgdf4rjCIrVDADFyeZ40ofIUPHfJv/Rjnv08GbBbGhWMOgG/sfPKSqAaTVD6hYY5gxNoE3TgpvqQ+eqRehF50kQkQzSOV481380LQGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750837568; c=relaxed/simple;
	bh=KCEB9aoNc4NVNtxLTRhRV9jIf4HuQLN9q+IMpZJJFis=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=YAUaBXjnT7BJiGOB9m1nII4Nw63HpEQY0iUIgIl6SUSnbalvSJov1utEV9mfTRICEP+UKBGLk7CYx5fdJhcNCFOj5LO5U4Vda7zLfmnV9TZjgQlkt8IEhnKUZSZSXXVe48+nWV5E9L0Hj4lqqJTaUK+8dBW2XKuYzP+kFtoXukk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ogRVPUdJ; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-442fda876a6so56059815e9.0
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 00:46:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1750837564; x=1751442364; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:user-agent
         :references:in-reply-to:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G38oZPD0ZUO+4eufUOOmiC+1nFVfHKSYBYFSxQkb+SY=;
        b=ogRVPUdJvksivFv80WOZE4LxAOxFTtGFo+iPWTNFvGqlDztvSZO6+dhmTeGRSH2BZu
         HcHjtvQKGR857r7hy9qklUjVjRR4F8GGNpUCQiGPRnDO6d7cKpGH/IZflH2dtLx/Kcmf
         0HjCdGpimKjumHDmDyLuQOHpGegjPIaDjkVuJz5in4u4PI0BYnxbN0tU6UTACbE6v8L9
         LRFEo9HnUlJueY4Yt1NuXM4T1f+IXut8nUXOpi34+XkcZObNFkscT/Jwn3Hrz2bNNtxf
         vbnAUNHT5LxhpO8fioEnz82iznxUFzV3OQfGp2H0O5KjdAP61MlUawTN33nfQHiTtUra
         Hkbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750837564; x=1751442364;
        h=content-transfer-encoding:mime-version:message-id:date:user-agent
         :references:in-reply-to:subject:cc:to:from:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=G38oZPD0ZUO+4eufUOOmiC+1nFVfHKSYBYFSxQkb+SY=;
        b=hhPMihOwQIS28KrUYRnIut6nlJbWvXAW0Rk33Chnb3gWkNw5i1Zb4sO266a8HDopL3
         RF7i/SYsiMMBd1QAgeZPHDS1kC4Hx4WXHIEGQk1VfVuVzgBQA3hXRrlD9aZ82aVGaLoi
         eA9MaW5xmfyvGahdMIr3dXa1dWPVThJtjrfF+LcDu/ZcNDrgNFnh85tbdMtXBlc3uAEF
         HnxX18t0RXeofLNAEfKFrMfQrijSUOlKfrjZ/cnVrM3G9b7w/D+4WMYkUnVedtKAcXg3
         iDzRbBIQ/YzyefX2/xp1O9dubnqeiZSOFXw0LsJQ3/xVNJg70xYsoxb7fGJiYCxvUJB3
         EWgg==
X-Forwarded-Encrypted: i=1; AJvYcCXw1r+M2X0uGpF91iAQJ1eqZMDqWjK0kTXonBTxQ9kwrpwOygfVG9Q0Cy6uYBc0mUcOiVgJRYo9/Rm/@vger.kernel.org
X-Gm-Message-State: AOJu0YykQ8Jxv4X87uLLP8SkbPYoOv+b6Gb3lV7uWAN7qf6qru2DYKu9
	kRtjuQ0T6c7ET5sdVP+gDE53zEjJM5VOOFM2s9F8HibePzLORjZVkYMFyVbgmtBoCV0=
X-Gm-Gg: ASbGncsdQrqGtx1D8WxSaJcrV+4drr6qFUzTPgoc3DuqcMudk8sJQnrvtdMUFsGqiQl
	p1R6/silRNt2km28+Q6WFsqoi40eZASGEwSCi/l+dCP1fyfYwp6tc3G4/nkh2qUuzHBepUvU8Dj
	4rcZZ63A2cxghIY0o6wuEOLkhY5h3iFI0HiizSz2V5gJ8gprH3BlhydyW+/Mbqr8eu5RuxZ6ihw
	FgJIJCXPm5TpsU1quL2x6zybZR6yNXL8LbbqSMfxJh0QYw9BCrd10ogg/Ce4Bk83o0DRvAayK1S
	vQcLCT3Ejp4hABDLN+wfyWWDxoZeUkXXFDQEKiMFhoTvamwrp0KXxYb5fkN+pfB9rmRgskZw
X-Google-Smtp-Source: AGHT+IEFcmap2xUg1PMroE0rTK44KQv6jBprJalyHbE1zkENpItZBZ87xVowh0/gWqyHbHbnprwUrg==
X-Received: by 2002:a05:600c:4684:b0:450:cea0:1781 with SMTP id 5b1f17b1804b1-45381ae456bmr17467905e9.16.1750837563946;
        Wed, 25 Jun 2025 00:46:03 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:87a0:eae0:c854:b578])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-45380fd167bsm14015175e9.0.2025.06.25.00.46.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 00:46:03 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Jian Hu <jian.hu@amlogic.com>
Cc: Xianwei Zhao <xianwei.zhao@amlogic.com>,  Chuan Liu
 <chuan.liu@amlogic.com>,  Neil Armstrong <neil.armstrong@linaro.org>,
  Kevin Hilman <khilman@baylibre.com>,  Stephen Boyd <sboyd@kernel.org>,
  Michael Turquette <mturquette@baylibre.com>,  Dmitry Rokosov
 <ddrokosov@sberdevices.ru>,  robh+dt <robh+dt@kernel.org>,  Rob Herring
 <robh@kernel.org>,  devicetree <devicetree@vger.kernel.org>,  linux-clk
 <linux-clk@vger.kernel.org>,  linux-amlogic
 <linux-amlogic@lists.infradead.org>,  linux-kernel
 <linux-kernel@vger.kernel.org>,  linux-arm-kernel
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v3 4/6] clk: meson: t7: add support for the T7 SoC PLL
 clock
In-Reply-To: <22a24fe6-9e62-4aba-825e-aee214f683ee@amlogic.com> (Jian Hu's
	message of "Wed, 25 Jun 2025 10:52:28 +0800")
References: <20250509074825.1933254-1-jian.hu@amlogic.com>
	<20250509074825.1933254-5-jian.hu@amlogic.com>
	<1jtt5ny6gq.fsf@starbuckisacylon.baylibre.com>
	<4dd25114-212d-44d6-938a-63871750c292@amlogic.com>
	<1jh60fd52u.fsf@starbuckisacylon.baylibre.com>
	<22a24fe6-9e62-4aba-825e-aee214f683ee@amlogic.com>
User-Agent: mu4e 1.12.9; emacs 30.1
Date: Wed, 25 Jun 2025 09:46:02 +0200
Message-ID: <1j7c10jmbp.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On Wed 25 Jun 2025 at 10:52, Jian Hu <jian.hu@amlogic.com> wrote:

> On 2025/6/17 0:27, Jerome Brunet wrote:
>> [ EXTERNAL EMAIL ]
>>
>> On Thu 12 Jun 2025 at 21:02, Jian Hu <jian.hu@amlogic.com> wrote:
>>
>>>>> +
>>>>> +static struct clk_regmap t7_pcie_pll_od =3D {
>>>>> +     .data =3D &(struct clk_regmap_div_data){
>>>>> +             .offset =3D ANACTRL_PCIEPLL_CTRL0,
>>>>> +             .shift =3D 16,
>>>>> +             .width =3D 5,
>>>>> +             .flags =3D CLK_DIVIDER_ONE_BASED |
>>>>> +                      CLK_DIVIDER_ALLOW_ZERO,
>>>> What's the behaviour of the divider on zero then ?
>>>
>>> If there is no CLK_DIVDER_ALLOW_ZERO, there is a warning when registeri=
ng
>>> t7_pcie_pll_od.
>>>
>>> like this:
>>>
>>>    ------------[ cut here ]------------
>>>    WARNING: CPU: 1 PID: 1 at drivers/clk/clk-divider.c:140
>>> divider_recalc_rate+0xfc/0x100
>>>    pcie_pll_od: Zero divisor and CLK_DIVIDER_ALLOW_ZERO not set
>>>    Modules linked in:
>>>   CPU: 1 PID: 1 Comm: swapper/0 Not tainted
>>> 5.4.283-09976-ga803e94eed88-dirty #91
>>>    Hardware name: tm2_t962e2_ab311 (DT)
>>>   Call trace:
>>>    [ffffffc020003750+  64][<ffffffc0100e3e3c>] dump_backtrace+0x0/0x1e4
>>>    [ffffffc020003790+  32][<ffffffc0100e4044>] show_stack+0x24/0x34
>>>    [ffffffc0200037b0+  96][<ffffffc01130a2e8>] dump_stack+0xbc/0x108
>>>   [ffffffc020003810+ 144][<ffffffc01010c484>] __warn+0xf4/0x1b8
>>>    [ffffffc0200038a0+  64][<ffffffc01010c5f4>] warn_slowpath_fmt+0xac/0=
xc8
>>>   [ffffffc0200038e0+  64][<ffffffc01061d364>] divider_recalc_rate+0xfc/=
0x100
>>>   [ffffffc020003920+  80][<ffffffc010624e84>]
>>> clk_regmap_div_recalc_rate+0x74/0x88
>>>    [ffffffc020003970+  96][<ffffffc010616a54>] __clk_register+0x62c/0xb=
78
>>>
>>> so add it to avoid the warning.
>> That does not really answer my question
>
>
> Sorry, I did not get you before.
>
> I have set OD to 0.=C2=A0 And measure pcie frequency,=C2=A0 It is 37.5Mhz.
>
> 4800Mhz/2/32/2=3D37.5Mhz, and the OD equal zero means divided by 32 in fa=
ct.
>

CLK_DIVIDER_MAX_AT_ZERO maybe ?

> Here is the test result:
>
> devm 0xfe008140 32
>
> 0xD40C04C8
>
> cat /sys/kernel/debug/meson-clk-msr/measure_summary | grep pcie
>
> [16] pcie_clk_inp =C2=A0=C2=A0=C2=A0=C2=A0 37500000=C2=A0 +/1 3125HZ
>
>
> the OD divider is N crossover. it is one based.
>
> and It's possible to go from 1 to 31 crossovers.

--=20
Jerome

