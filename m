Return-Path: <devicetree+bounces-236187-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C9EDC40FBC
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 18:10:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 7EB9134EEEE
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 17:10:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D435330B35;
	Fri,  7 Nov 2025 17:10:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Pw4wvoVX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4963346A4
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 17:10:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762535429; cv=none; b=j2Z3/6QwfS1gEBZUsIPJ0YyhrDwygc876+RnvMQ90yI1KWhMLyhCzBDyQMx9j25Q/W6WelwWiHoWKMToIDhhrgwbJGEk62eGoFWAULtkjsOeosdz+Y9+Ry4kpJTiVlCIcXC1wCFYI7UOSPHsz8AEP5fOPSV9mw8riHCAUBPh7Zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762535429; c=relaxed/simple;
	bh=nggFRaJMT4kxsmaafT52w1PekfmTIpa2WR3h4U3kdgY=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=Me9buow50muPJgr4musjOkSEj5MXtH662vcOwGNyz+OOT3o5rCO8F1JpxVDIgMSxmNn9KtQwq01nPboI2X9sIWgtZY4Ocz9Nlc/+7WX3F/ewDHFzm7uLCoyCpg66+k7KAOWigRHvvfnvFnDuDjSwJituFCIVuqu6RAh6ljdoq9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Pw4wvoVX; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-47112edf9f7so5585115e9.0
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 09:10:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1762535425; x=1763140225; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:user-agent
         :references:in-reply-to:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d75/m8OyEpl0fwQUB+HUMKmdvA/o/D0pvjuoB/XRU0Q=;
        b=Pw4wvoVXLuz2O8jQRjxFUXTcxjqD9gzMsc54sLTyThaZ6J6eC7yZ9kC1QS/3INiTAW
         ukyp6z01KL4oSimCBERxmCnfDpyGi8Spbb8Ugd12bUFPxxw7xMAfV/TTQOg223YknPec
         bLeF7lxVfgs1DM0j2AP3DxzS1NqdumVGlweNdv6jiKfaZywKRwPjAgsiu65RGY6ZewwN
         Ybdr2tNarqI5r6ASsWV3JcM7WpsQ3zoByGd5NrPcXgcCTrV1TiPN2oY4QFSlgDJXhlUU
         GQgL3alUZ1EcwV8dPaum8jexFXojDCCBZpYJna2hknydNxyxbT7GEKh+Fnph4o/J6Pg2
         tqVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762535425; x=1763140225;
        h=content-transfer-encoding:mime-version:message-id:date:user-agent
         :references:in-reply-to:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=d75/m8OyEpl0fwQUB+HUMKmdvA/o/D0pvjuoB/XRU0Q=;
        b=odOelEWBbLg+XE8Uh+A97uU/fCjJP99X4r8vWxZH7muUbyVq65EkSncXy3SyKnbBp4
         bgHfvx5YFiCa0AHQjjzwAZtuxwxqvoe8Nluj/nO6Z5uT+wdy/bnI1OPLuLyXtUbeNr+Z
         Qp2lAeNhYprq3JP1F2DptRvq3oTg1kSzoHiTEov+1BaWYab8iffVJbmYmEyQCAaESdcK
         PuBbDhonJYqQaSu0AkrV9H44199Z5LrrCGWDn+W9NPxS/jLpQ2j7W8x/KUJuDevSyPCu
         aiFQ4RO4boHFhp4rAhCuaT3+eNEwD6vEw02xdjLty9BgnbFcd+v8CONaID0qrcyHngU2
         fsqA==
X-Forwarded-Encrypted: i=1; AJvYcCWcHs+MToQiMD9EfG+FcsVsLsPB0aq/rh8wBkRJUom1w+oipASUvyyVAac69DsyWQlH95swPAJG/ptV@vger.kernel.org
X-Gm-Message-State: AOJu0YyQSDtPTvmZevOlK1CXO/rixupmbj7Evbw03yoCSq1ETWCmHywD
	dM35auZ/l24mFyCc3aJSdzn7OuYRh22/9d943NPN8HMLOq2yBuxFhpaJVcIlJxWf/PE=
X-Gm-Gg: ASbGnctcqrXBjP4RAp5h6vZYzgkvMpZHcV+FDFIQzBpoxhCcN9dfFvlmfKrz1dp0vwE
	4MogDMoUkhH0wmqlKf2p7KGe6y4oyA585HaoGcF/ciy721sYxO0rxPhQqA8hTZJI61PxwhdvLbW
	jqRCwOqDgDt2MrZz1iCaHjpJVVEU/UcaUKhYcfcFA2yzhWMVKubTXVD2ZQQ5uY9ad955mpkI9qo
	ip4aF/Zxd5OIUnKCMH2r77jMYTsX5DZ1DrOwerHCo+WIXzh7m5kBhUntFks27cZVqcGLDzl9fco
	y/TpIPbKm5T8Vkh7FiYw4r3PLf358mpE8mufRtLDPRw4jHjThwXqC6zzz6/Pg/CgU250ra+cjca
	pvdZc1LAHAOHQLrqsBi+tHtIFt0FCZG9i9L0NbQ8Y05cUkysfbgXcuJveOjbqRy+mCuKw1SyD3K
	jQU229rk3Y
X-Google-Smtp-Source: AGHT+IHs0fGLj1pX9D20cd+qxJYOXVpz1DkRCoiP+yxFDAzBqmLvwRgTWCnCmwGVOrewtrpdAZ4qhA==
X-Received: by 2002:a05:600c:4ed4:b0:471:786:94d3 with SMTP id 5b1f17b1804b1-4776bcd52bamr34376015e9.22.1762535424637;
        Fri, 07 Nov 2025 09:10:24 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:d88d:7650:f1de:19c])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4776bcfd021sm78745585e9.11.2025.11.07.09.10.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Nov 2025 09:10:24 -0800 (PST)
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
Subject: Re: [PATCH v4 5/5] clk: meson: t7: add t7 clock peripherals
 controller driver
In-Reply-To: <236a568d-c809-4dc7-be2f-e813d0d85368@amlogic.com> (Jian Hu's
	message of "Sat, 8 Nov 2025 00:20:33 +0800")
References: <20251030094345.2571222-1-jian.hu@amlogic.com>
	<20251030094345.2571222-6-jian.hu@amlogic.com>
	<1jbjlnxuug.fsf@starbuckisacylon.baylibre.com>
	<3b9a5978-aa02-486b-85f5-6443dc607dd5@amlogic.com>
	<1j1pmew1cu.fsf@starbuckisacylon.baylibre.com>
	<236a568d-c809-4dc7-be2f-e813d0d85368@amlogic.com>
User-Agent: mu4e 1.12.9; emacs 30.1
Date: Fri, 07 Nov 2025 18:10:23 +0100
Message-ID: <1jv7jlvke8.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On Sat 08 Nov 2025 at 00:20, Jian Hu <jian.hu@amlogic.com> wrote:

> On 11/4/2025 6:14 PM, Jerome Brunet wrote:
>> [ EXTERNAL EMAIL ]
>>
>> On Tue 04 Nov 2025 at 17:17, Jian Hu <jian.hu@amlogic.com> wrote:
>>
>>>>> +
>>>>> +static struct clk_regmap t7_dspa =3D {
>>>>> +     .data =3D &(struct clk_regmap_mux_data){
>>>>> +             .offset =3D DSPA_CLK_CTRL0,
>>>>> +             .mask =3D 0x1,
>>>>> +             .shift =3D 15,
>>>>> +     },
>>>>> +     .hw.init =3D &(struct clk_init_data){
>>>>> +             .name =3D "dspa",
>>>>> +             .ops =3D &clk_regmap_mux_ops,
>>>>> +             .parent_hws =3D (const struct clk_hw *[]) {
>>>>> +                     &t7_dspa_a.hw,
>>>>> +                     &t7_dspa_b.hw,
>>>>> +             },
>>>>> +             .num_parents =3D 2,
>>>>> +             .flags =3D CLK_SET_RATE_PARENT,
>>>>> +     },
>>>>> +};
>>>>> +
>>>>> ......
>>>>> +
>>>>> +static struct clk_regmap t7_anakin_0 =3D {
>>>> Nitpick: for the DSP it was a/b, here it is 0/1
>>>> Could you pick one way or the other and stick to it ?
>>>
>>> ok , I will use 0/1 for DSP.
>> I think I prefer a/b if you don't mind. see below for why ...
>
>
> Mali is named as mali_0, mali_1 in this driver.=C2=A0 =C2=A0And G12A/S4/G=
XBB series
> do the same.

... A1 use dspa_a dspa_b (etc ...)=20

>
> If they are named as anakin_a and anakin_b here, there will be two naming
> methods.
>

Already have that unfortunately

> Shall we keep consistent ?
>

Please try yes

>
> If use 0/1 to name them.
>
> dsp clocks are:
>
> =C2=A0 =C2=A0 dspa_0_sel
>
> =C2=A0 =C2=A0 dspa_0_div
>
> =C2=A0 =C2=A0 dspa_0
>
> =C2=A0 =C2=A0 dspa_1_sel
>
> =C2=A0 =C2=A0 dspa_1_div
>
> =C2=A0 =C2=A0 dspa_1
>
> =C2=A0 =C2=A0 dspb_0_sel
>
> =C2=A0 =C2=A0 dspb_0_div
>
> =C2=A0 =C2=A0 dspb_0
>
> =C2=A0 =C2=A0 dspb_1_sel
>
> =C2=A0 =C2=A0 dspb_1_div
>
> =C2=A0 =C2=A0 dspb_1
>
>
> anakin clocks are:
>
> =C2=A0 =C2=A0 anakin_0_sel
>
> =C2=A0 =C2=A0 anakin_0_div
>
> =C2=A0 =C2=A0 anakin_0
>
> =C2=A0 =C2=A0 anakin_1_sel
>
> =C2=A0 =C2=A0 anakin_1_div
>
> =C2=A0 =C2=A0 anakin_1
>
> =C2=A0 =C2=A0 anakin_01_sel
>
> =C2=A0 =C2=A0 anakin
>
>
> If use a/b to name them.
>
> dsp clocks are:
>
> =C2=A0 =C2=A0 dspa_a_sel
>
> =C2=A0 =C2=A0 dspa_a_div
>
> =C2=A0 =C2=A0 dspa_a
>
> =C2=A0 =C2=A0 dspa_b_sel
>
> =C2=A0 =C2=A0 dspa_b_div
>
> =C2=A0 =C2=A0 dspa_b
>
> =C2=A0 =C2=A0 dspb_a_sel
>
> =C2=A0 =C2=A0 dspb_a_div
>
> =C2=A0 =C2=A0 dspb_a
>
> =C2=A0 =C2=A0 dspb_b_sel
>
> =C2=A0 =C2=A0 dspb_b_div
>
> =C2=A0 =C2=A0 dspb_b
>
>
> anakin clocks are:
>
> =C2=A0 =C2=A0 anakin_a_sel
>
> =C2=A0 =C2=A0 anakin_a_div
>
> =C2=A0 =C2=A0 anakin_a
>
> =C2=A0 =C2=A0 anakin_b_sel
>
> =C2=A0 =C2=A0 anakin_b_div
>
> =C2=A0 =C2=A0 anakin_b
>
> =C2=A0 =C2=A0 anakin_ab_sel
>
> =C2=A0 =C2=A0 anakin
>
>
> Which one is better?

a/b or 0/1, we already have both

Pick which ever scheme you prefer, just stick to it from now on.

>
>>>>> +     .data =3D &(struct clk_regmap_gate_data){
>>>>> +             .offset =3D ANAKIN_CLK_CTRL,
>>>>> +             .bit_idx =3D 8,
>>>>> +     },
>>>>> +     .hw.init =3D &(struct clk_init_data) {
>>>>> +             .name =3D "anakin_0",
>>>>> +             .ops =3D &clk_regmap_gate_ops,
>>>>> +             .parent_hws =3D (const struct clk_hw *[]) { &t7_anakin_=
0_div.hw },
>>>>> +             .num_parents =3D 1,
>>>>> +             .flags =3D CLK_SET_RATE_GATE | CLK_SET_RATE_PARENT,
>>>>> +     },
>>>>> +};
>> [...]
>>
>>>>> +
>>>>> +static struct clk_regmap t7_anakin_clk =3D {
>>>>> +     .data =3D &(struct clk_regmap_gate_data){
>>>>> +             .offset =3D ANAKIN_CLK_CTRL,
>>>>> +             .bit_idx =3D 30,
>>>>> +     },
>>>>> +     .hw.init =3D &(struct clk_init_data) {
>>>>> +             .name =3D "anakin_clk",
>>>> Again, not a great name, especially considering the one above.
>>>> Is this really really how the doc refers to these 2 clocks ?
>>>
>>> bit30 gate clock is after bit31 mux clock,  and the gate clock is the f=
inal
>>> output clock, it is used to gate anakin clock.
>>>
>>> I will rename bit31 as anakin_pre, rename bit30 as anakin.
>> Ok for the last element
>>
>> ... but I don't  like "_pre" for a mux selecting one the 2 glitch free
>> path. It does not help understanding the tree.
>>
>> For such mux, when it is not the last element, I would suggest
>> "_ab_sel" ... at least it is clear what it does so, "anakin_ab_sel" ?
>>
>
> ok, anakin_ab_sel and anakin for these two clocks.
>
>
> Maybe anakin_01_sel and anakin for these two clocks, if you agree to 0/1
> naming convention.
>
>>>>> +             .ops =3D &clk_regmap_gate_ops,
>>>>> +             .parent_hws =3D (const struct clk_hw *[]) {
>>>>> +                     &t7_anakin.hw
>>>>> +             },
>>>>> +             .num_parents =3D 1,
>>>>> +             .flags =3D CLK_SET_RATE_PARENT
>>>>> +     },
>>>>> +};
>>>>> +

--=20
Jerome

