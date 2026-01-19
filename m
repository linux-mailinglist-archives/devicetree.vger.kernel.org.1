Return-Path: <devicetree+bounces-256884-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 608D8D3AA57
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 14:29:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6FE9A30590E7
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 13:27:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB15F36921C;
	Mon, 19 Jan 2026 13:27:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="yvt1z8CN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 863D7368298
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 13:27:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768829235; cv=none; b=GBgzirYerk0tIYQmEA8H23bFhHpWz/sbeeFXZKP9+aaBzHfbrejvil0V7+gZ/Z488ytRkSoVq/+XDtKDbCeaRjH2/93AOOAvaMwQVIzQ6EoEv/0DcJLnTP2LgHokvFcNHP/Dwl4NF6ehfJG77yCknxbDvbEwyt3/L+jftZ4iTpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768829235; c=relaxed/simple;
	bh=y4ke/+OyygqynnXX/H59Fqon7GhU3naLqveuRutNem0=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=Fn+SJ8niUkxKNfyv/K5dGcDSKD7Y/BXnW0Fte3IMHZGQVm7EfeFNgtBuahb4vwpvOPNv1J9dJHH+GsTZGNGPSUFh+iT68NszqM+KtpL1NuDICAY707aysKDMPuVTxFjbV7KfimRMSqmHn5HEb/AOT9weB3Ssk5nN3QrTzL5wf/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=yvt1z8CN; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4801c314c84so25079855e9.0
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 05:27:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1768829232; x=1769434032; darn=vger.kernel.org;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eCbuiYjGuVvlbB4vqWDSqvvIfZr+F+0/4EzDwihuPK4=;
        b=yvt1z8CNR9CgTzNnVsQj4D0zkhW44gI0GFU50nZ0SE5TC5A+slFsEQ+YuCQQRBsWcI
         kDl4DQgJ1hNO8i9C7JoABsh+WIvh5llU/oGHHjVFy+bkpnXB7FP5We6yD/il93u5T0oD
         TWWG8FkK+ECUfprzI618TP6l4QQXv9L50BD1454I2Orn5uxt9HL729rgFqZFvuC1E4MW
         5lKNaGh/T2Se6H+aYP1hhxP0fmr4GH7DFy2xftheZiyk8paq9PSu48B9hKdwxv0DsdVP
         eidoc8Ezrt+L0h6QIEF3VULgDdJF5Kvt5OBbtF6bMa8RXSMx7dyTxABrrR37PBYuadnP
         /jNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768829232; x=1769434032;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=eCbuiYjGuVvlbB4vqWDSqvvIfZr+F+0/4EzDwihuPK4=;
        b=TRwM915CA6bCMpDFtgXBMaqybdgUSSw6TRVXOAK5jLY65WVM9WJJvaPO9RuKEd9yW7
         1VEdBFXHYLm6lif4H9JteRb3Wi3EHJdeK+lIKgbdRCLFmiMXa2/lQIYtvpRPkaqduzi6
         u/CRAlGKuZKQHW5EyXK7CLN/smMyGgq1BipG3/spuJH+21xjO5MMthq+hciDcRThrz+I
         3G6WHaUtavP5UlkBjXUxSuNSxK39UvDrWQGVmeFlOjL+2eAR3Idjyux96MkLc8hgi1iT
         u1kaKPrqTM6fGma4ARva+ibUyT4V8WWUrl+SFlQjsTXvodu0kwvsgARCFtmIBVxtY9CR
         YQgQ==
X-Forwarded-Encrypted: i=1; AJvYcCWM3YErJ5dp8HrwwgjUfILcf85k3VC445YkAkObWkT7kEuLFvN+ABrnZjyHKD9VXOy86wXGV5S/2Qps@vger.kernel.org
X-Gm-Message-State: AOJu0YySxsOfOMPd3f+hIP2olsfLksV3v9hNWOYvkR19i97y953Fsvnu
	5aInG0CzySVQO0SX18iADiX+Q++nSl/wWbeqqvCbG9i1/kbFYt7P/CImnO9TOjQhwB4=
X-Gm-Gg: AY/fxX5aZBNvc0XSTYZUr7G3YYPejJyW8PM3wqg7wfIGYbBwus3DAZAX7lgZQilEwpE
	YUbx5HzjEoiY0HyMKqiQ01ui+URzO8Bix8X8Fe0SetcypnMeA558jvV6JlY+GZ2ufAz7PPgUKil
	Fvq5j4pJ21U1PzRowsA7H0M/s3FcCYfBZ1Nwfoa1lFyZQUrqJ+R8SsIwjJX7AOEAefedG24N1sI
	2JFzYrdXejsbv6dILFYDg+LECCdjPy71KQ4Kgjpl9YUkqX1TjoZdVyyuDe7sZoPdU3T83mKjD4c
	JiKMAELN4z58d4se2m5gyBU5+nfM299jZlDk0BdtPXYSMgyq7hodWsUOjTOtbqlise7cY7TwcBJ
	sVL09ZmfUyi++TlMuJyYht9J/klo9qcmX2PUYC+LyuFrP0wfeNiyAok7E6rArnAq3a1CdWN5KwX
	hTyeOXNXvMyQ==
X-Received: by 2002:a05:600c:8b67:b0:47d:3ffb:16c9 with SMTP id 5b1f17b1804b1-4801e342091mr114088625e9.23.1768829231748;
        Mon, 19 Jan 2026 05:27:11 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:4154:6ad6:c781:df9c])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4801e8c0499sm197706815e9.9.2026.01.19.05.27.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 05:27:11 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Chuan Liu <chuan.liu@amlogic.com>
Cc: Chuan Liu via B4 Relay <devnull+chuan.liu.amlogic.com@kernel.org>,
  Michael Turquette <mturquette@baylibre.com>,  Stephen Boyd
 <sboyd@kernel.org>,  Rob Herring <robh@kernel.org>,  Krzysztof Kozlowski
 <krzk+dt@kernel.org>,  Conor Dooley <conor+dt@kernel.org>,  Neil Armstrong
 <neil.armstrong@linaro.org>,  Xianwei Zhao <xianwei.zhao@amlogic.com>,
  Kevin Hilman <khilman@baylibre.com>,  Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>,  linux-kernel@vger.kernel.org,
  linux-clk@vger.kernel.org,  devicetree@vger.kernel.org,
  linux-amlogic@lists.infradead.org,  linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v5 5/8] clk: amlogic: Add A5 clock peripherals
 controller driver
In-Reply-To: <ea7e209d-cd30-4d93-9deb-104aaf7c92eb@amlogic.com> (Chuan Liu's
	message of "Mon, 19 Jan 2026 20:16:19 +0800")
References: <20260108-a5-clk-v5-0-9a69fc1ef00a@amlogic.com>
	<20260108-a5-clk-v5-5-9a69fc1ef00a@amlogic.com>
	<1jecnsr1eg.fsf@starbuckisacylon.baylibre.com>
	<ea7e209d-cd30-4d93-9deb-104aaf7c92eb@amlogic.com>
User-Agent: mu4e 1.12.9; emacs 30.1
Date: Mon, 19 Jan 2026 14:27:09 +0100
Message-ID: <1jbjipviky.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On lun. 19 janv. 2026 at 20:16, Chuan Liu <chuan.liu@amlogic.com> wrote:

> Hi Jerome,
>
> On 1/14/2026 5:25 PM, Jerome Brunet wrote:
>> [ EXTERNAL EMAIL ]
>> On jeu. 08 janv. 2026 at 14:08, Chuan Liu via B4 Relay
>> <devnull+chuan.liu.amlogic.com@kernel.org> wrote:
>> 
>>> +static struct clk_regmap a5_rtc_clk = {
>>> +     .data = &(struct clk_regmap_mux_data) {
>>> +             .offset = RTC_CTRL,
>>> +             .mask = 0x3,
>>> +             .shift = 0,
>>> +     },
>>> +     .hw.init = &(struct clk_init_data) {
>>> +             .name = "rtc_clk",
>>> +             .ops = &clk_regmap_mux_ops,
>>> +             .parent_data = a5_rtc_clk_parents,
>>> +             .num_parents = ARRAY_SIZE(a5_rtc_clk_parents),
>>> +             .flags = CLK_SET_RATE_NO_REPARENT,
>>> +     },
>>> +};
>>> +
>>> +#define A5_PCLK(_name, _reg, _bit, _pdata, _flags)                   \
>>> +struct clk_regmap a5_##_name = {                                     \
>>> +     .data = &(struct clk_regmap_gate_data) {                        \
>>> +             .offset = (_reg),                                       \
>>> +             .bit_idx = (_bit),                                      \
>>> +     },                                                              \
>>> +     .hw.init = &(struct clk_init_data) {                            \
>>> +             .name = #_name,                                         \
>>> +             .ops = &clk_regmap_gate_ops,                            \
>>> +             .parent_data = (_pdata),                                \
>>> +             .num_parents = 1,                                       \
>>> +             .flags = (_flags),                                      \
>>> +     },                                                              \
>>> +}
>> I wonder why I bothered reviewing v4 ...
>
> Regarding the comment you made on V4, my understanding is that you were
> just teasing ...

You are redefining the PCLK here, the *exact* type of pointless differences
we've worked last year to remove. This is something you can't have
missed since you've complained about it taking too long.

And now, you've thought I was "just teasing" about it ?

I'm bored with your botched submissions Chuan.

> In the next revision, I will change this part to use a
> unified macro.

Yes please.

>
> We may also consider adjusting the "MESON_PCLK" macro later by removing the
> SoC prefix from the clock name,

No

> so that it is consistent with the naming
> style used by "MESON_COMP_SEL" / "MESON_COMP_DIV".
>

Just do the same as c3 and t7.

>> 
>>> +
>>> +static const struct clk_parent_data a5_sys_pclk_parents = { .fw_name = "sysclk" };
>>> +
>>> +#define A5_SYS_PCLK(_name, _reg, _bit, _flags) \
>>> +     A5_PCLK(_name, _reg, _bit, &a5_sys_pclk_parents, _flags)
>>> +
>>> +static A5_SYS_PCLK(sys_reset_ctrl,   SYS_CLK_EN0_REG0, 1, 0);
>>> +static A5_SYS_PCLK(sys_pwr_ctrl,     SYS_CLK_EN0_REG0, 3, 0);
>>> +static A5_SYS_PCLK(sys_pad_ctrl,     SYS_CLK_EN0_REG0, 4, 0);
>>> +static A5_SYS_PCLK(sys_ctrl,         SYS_CLK_EN0_REG0, 5, 0);
>>> +static A5_SYS_PCLK(sys_ts_pll,               SYS_CLK_EN0_REG0, 6, 0);
>>> +
>>>
>> [...]
>> 
>>> +
>>> +static struct clk_regmap a5_gen = {
>>> +     .data = &(struct clk_regmap_gate_data) {
>>> +             .offset = GEN_CLK_CTRL,
>>> +             .bit_idx = 11,
>>> +     },
>>> +     .hw.init = &(struct clk_init_data) {
>>> +             .name = "gen",
>>> +             .ops = &clk_regmap_gate_ops,
>>> +             .parent_hws = (const struct clk_hw *[]) {
>>> +                     &a5_gen_div.hw
>>> +             },
>>> +             .num_parents = 1,
>>> +             .flags = CLK_SET_RATE_PARENT,
>>> +     },
>>> +};
>>> +
>>> +#define A5_COMP_SEL(_name, _reg, _shift, _mask, _pdata, _table) \
>>> +     MESON_COMP_SEL(a5_, _name, _reg, _shift, _mask, _pdata, _table, 0, 0)
>>> +
>>> +#define A5_COMP_DIV(_name, _reg, _shift, _width) \
>>> +     MESON_COMP_DIV(a5_, _name, _reg, _shift, _width, 0, CLK_SET_RATE_PARENT)
>>> +
>>> +#define A5_COMP_GATE(_name, _reg, _bit, _iflags) \
>>> +     MESON_COMP_GATE(a5_, _name, _reg, _bit, CLK_SET_RATE_PARENT | (_iflags))
>>> +
>> At the top. like C3 and T7
>
> Except for A5_COMP_SEL, which differs slightly from T7 due to the
> additional "_table" parameter, the other macros are consistent with T7.
>
> I also asked for your feedback on this in V4 and received your
> confirmation. Is there anything here that still needs to be updated?

Reviewing these long patches takes time. I tend to stop reviewing when I
noticed some feedback was ignored, especially when it is recurrent
problem. I've told you that already. It is up to you to make sure you are
not missing anything before re-submitting if you don't want to waste time.

>
> [...]

-- 
Jerome

