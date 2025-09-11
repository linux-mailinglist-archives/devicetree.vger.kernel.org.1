Return-Path: <devicetree+bounces-215786-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CED1FB52A51
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 09:43:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 883C2A01528
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 07:43:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5DFA2820CE;
	Thu, 11 Sep 2025 07:43:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ds0vUgSm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3DF427F00F
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 07:43:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757576594; cv=none; b=cPEb3YuaLS2eBk5ut7gCars5BRbM270ltdR/3pg1DCMgzi3T5SyQ/CdgvynZj3ZY1FQtKcWH2DS//zClqF0S3AqbLSCNpiiAd4098QtXl/tGHfjNo+kKNecdT8VZKefqFKFanq5tg2Oi49ODRzkDSqJDObjPQRfYcgKJyh599No=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757576594; c=relaxed/simple;
	bh=A5WSBeY7ArHbEttNrSD9TcclLr6jrbhQ9nT8KwBqsfI=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=DoJzOEocInNRqGuzJKksM9Y532ceFci9hsHtGQw0A5IedETCvpP/oGZhTVNipNbP4L7uHkcb30gWK4vPU1WcZy5nWvzxXLQawoLRoZdEdBld3eDW8LCk+RoMbaNvuitM6MwsR7Q7G1nwATZMiHC9rQOQJcG/kXIO0VoGNHdJyss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ds0vUgSm; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-45cb5492350so2586025e9.1
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 00:43:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1757576590; x=1758181390; darn=vger.kernel.org;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ocLM34GOeUaGdAHS29toK+EluWRUE1MXFa3Amqck7do=;
        b=ds0vUgSmHs537ye7CwEqguVfQ6CpvkOsA58VpwfokPwncHf+bycYd8ZN/IGOoPRsx5
         ityFONvprBv0+FxTP8JOVQNsiQ3z7Nd813Ui6IyYEbxOO5wze+Q+sHZ7B9V7fb47Uy5S
         YAz70UGQY8DI29X7stG0u4IeWy+LZxXGtSpaVoFcVUnJyzQp1lkeT8A5ildhndX92MEO
         JFLeehT5kENyjOY5vLqIVggFhLbImajNOjqYs2e8VSEjLdj+5xt46x5vX4Y/sKy6TWSf
         87yJpaY0iFtGLzbGO4gObPGOLw+vfMjiCprriFB2iIU3byY9RDYIYFUXlcX5fnXjVPOg
         2zag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757576590; x=1758181390;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ocLM34GOeUaGdAHS29toK+EluWRUE1MXFa3Amqck7do=;
        b=mMYkgmAV8y2OT+uDDQ+tPmNVrFW630/4cvq8he1lKR5sZNkwwdbH2GrRrOj3K1wv35
         x0ZBaiwE8HPdiujfink0PbmxHAoiysKOHxIdkU/bNp7HFAGircsglmq20bXVL6ZUEjdH
         d/yFRPcU3/AH5lDW7tMyqK6FEZi7A6pYYLaQhVK+XTS2RVRrleSeCDbKDUMSW502DjiB
         5E9eTc/SYFQjpqgi+ZUqwXeNHqvVO+RKpOs7+N4MXeBB45RhoTPhmnw85Gv9AvJcqBpr
         mp0PAiOdio4+NYGT7ZZ2NEiPD52Ni1v4JSYUGPtBMhXu8vH5iWSXHgMJJtNCeVCPG6pS
         YKwg==
X-Forwarded-Encrypted: i=1; AJvYcCUZApsL4z+jw0hZDa03vTwxFOW24DOMUw0cbdKlMUSks4gkKJjh3yxm9qEk/PEzJcw2qNrpQJ5hcDZG@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8cT5c6WOHTmGh0qgVt5IJXTL49r6L3RM55DArY1L3jziE2KGp
	5QYl7IocxT5j8AHm+GG6Zgke6wXGh9k9RSZosaXioQzmdCxK4icDEteBQZO/ZOEvozQ=
X-Gm-Gg: ASbGnct7oYk+viooMds+sz1GJrqHmb2eKvy6+1UIQkkt5AXWdt1sqs+G2e72/7DyaIY
	kkDEIBxqZjxK8S3WaKLp5g2IdoZ558flhWc0trG8s40yxQRLCpE0hJskP14j/9/+T2Ch3mrJIaw
	JHB/jx3Z4NBQ9wcAVrCfT00tLt6nMpSkO/7hqHHxpW8P8mD0rCiUYxMvZCSqTudMhe98SznQEjw
	7ZcRP+1uoEDPiF4wGzLZjPILSCnTJkPF+jwQQe6eXte2CJi9Pji2rTezOXfHpLZuM0V0cRIcUEy
	aduB3X7RtIfIEr0mhS/EF5hGCpOngd+XIq57VNpcvB5dzaTln1aUQLRKHJP4G3ZSupCl38BKLUK
	7mCpJGD0HOSzDe/+gGuJHv3RD+DA5nDA76UyqCnLuC4w=
X-Google-Smtp-Source: AGHT+IFziZg7v6LlC8m6JnaXV3d4ooVHtsdQLQH89zmhgGaJ+ZtkJo/Vd2456C3nvJ69B6Gcl/m45w==
X-Received: by 2002:a05:600c:1e21:b0:45c:a955:4578 with SMTP id 5b1f17b1804b1-45dde02878emr152916345e9.21.1757576589973;
        Thu, 11 Sep 2025 00:43:09 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:205f:d6d3:fd4a:adb5])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-45e0156d206sm16554135e9.5.2025.09.11.00.43.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 00:43:09 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Chuan Liu <chuan.liu@amlogic.com>
Cc: Chuan Liu via B4 Relay <devnull+chuan.liu.amlogic.com@kernel.org>,
  Michael Turquette <mturquette@baylibre.com>,  Stephen Boyd
 <sboyd@kernel.org>,  Rob Herring <robh@kernel.org>,  Krzysztof Kozlowski
 <krzk+dt@kernel.org>,  Conor Dooley <conor+dt@kernel.org>,  Neil Armstrong
 <neil.armstrong@linaro.org>,  Kevin Hilman <khilman@baylibre.com>,  Martin
 Blumenstingl <martin.blumenstingl@googlemail.com>,
  linux-clk@vger.kernel.org,  devicetree@vger.kernel.org,
  linux-kernel@vger.kernel.org,  linux-amlogic@lists.infradead.org,
  linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 2/2] clk: amlogic: add video-related clocks for S4 SoC
In-Reply-To: <28399ab7-2560-482a-be7b-c83d631ac351@amlogic.com> (Chuan Liu's
	message of "Thu, 11 Sep 2025 10:01:03 +0800")
References: <20250909-add_video_clk-v4-0-5e0c01d47aa8@amlogic.com>
	<20250909-add_video_clk-v4-2-5e0c01d47aa8@amlogic.com>
	<1jv7lqiqzg.fsf@starbuckisacylon.baylibre.com>
	<28399ab7-2560-482a-be7b-c83d631ac351@amlogic.com>
User-Agent: mu4e 1.12.9; emacs 30.1
Date: Thu, 11 Sep 2025 09:43:08 +0200
Message-ID: <1jplbxigdv.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On Thu 11 Sep 2025 at 10:01, Chuan Liu <chuan.liu@amlogic.com> wrote:

> Hi Jerome:
>
>
> On 9/10/2025 5:41 PM, Jerome Brunet wrote:
>> [ EXTERNAL EMAIL ]
>>
>> On Tue 09 Sep 2025 at 15:29, Chuan Liu via B4 Relay <devnull+chuan.liu.amlogic.com@kernel.org> wrote:
>>
>>> From: Chuan Liu <chuan.liu@amlogic.com>
>>>
>>> Add video encoder, demodulator and CVBS clocks.
>>>
>>> Signed-off-by: Chuan Liu <chuan.liu@amlogic.com>
>>> ---
>>>   drivers/clk/meson/s4-peripherals.c | 203 +++++++++++++++++++++++++++++++++++++
>>>   1 file changed, 203 insertions(+)
>>>
>>> diff --git a/drivers/clk/meson/s4-peripherals.c b/drivers/clk/meson/s4-peripherals.c
>>> index 6d69b132d1e1..b855e8f1fc04 100644
>>> --- a/drivers/clk/meson/s4-peripherals.c
>>> +++ b/drivers/clk/meson/s4-peripherals.c
>>> @@ -44,6 +44,7 @@
>>>   #define CLKCTRL_VDIN_MEAS_CLK_CTRL                 0x0f8
>>>   #define CLKCTRL_VAPBCLK_CTRL                       0x0fc
>>>   #define CLKCTRL_HDCP22_CTRL                        0x100
>>> +#define CLKCTRL_CDAC_CLK_CTRL                      0x108
>>>   #define CLKCTRL_VDEC_CLK_CTRL                      0x140
>>>   #define CLKCTRL_VDEC2_CLK_CTRL                     0x144
>>>   #define CLKCTRL_VDEC3_CLK_CTRL                     0x148
>>> @@ -1126,6 +1127,22 @@ static struct clk_regmap s4_cts_encp_sel = {
>>>        },
>>>   };
>>>
>>> +static struct clk_regmap s4_cts_encl_sel = {
>>> +     .data = &(struct clk_regmap_mux_data){
>>> +             .offset = CLKCTRL_VIID_CLK_DIV,
>>> +             .mask = 0xf,
>>> +             .shift = 12,
>>> +             .table = s4_cts_parents_val_table,
>>> +     },
>>> +     .hw.init = &(struct clk_init_data){
>>> +             .name = "cts_encl_sel",
>>> +             .ops = &clk_regmap_mux_ops,
>>> +             .parent_hws = s4_cts_parents,
>>> +             .num_parents = ARRAY_SIZE(s4_cts_parents),
>>> +             .flags = CLK_SET_RATE_PARENT,
>> Do you really expect the rate of the parents to be adjusted when calling
>> set_rate() on this clock ?
>>
>> It all trickle down to vclks which are shared with enci encp and vdac
>> clocks, so maybe not such a good idea, don't you think ?
>
>
> Thanks for pointing this out. You're right, this flag doesn't belong
> here.

Ok, let's be consistent then. Please add another change to drop the flag
from the other video clocks, such as enci, encp, etc . Thx.

>
> I'll drop it in the next revision. If there are no further objections
> on other aspects, I'll prepare a v5 series that also includes Conor's
> Acked-by that I missed...
>
>
>>> +     },
>>> +};
>>> +
>>>   static struct clk_regmap s4_cts_vdac_sel = {
>>>        .data = &(struct clk_regmap_mux_data){
>>>                .offset = CLKCTRL_VIID_CLK_DIV,
>>> @@ -1205,6 +1222,22 @@ static struct clk_regmap s4_cts_encp = {
>>>        },
>>>   };
>>>
>>> +static struct clk_regmap s4_cts_encl = {
>>> +     .data = &(struct clk_regmap_gate_data){
>>> +             .offset = CLKCTRL_VID_CLK_CTRL2,
>>> +             .bit_idx = 3,
>>> +     },
>>> +     .hw.init = &(struct clk_init_data) {
>>> +             .name = "cts_encl",
>>> +             .ops = &clk_regmap_gate_ops,
>>> +             .parent_hws = (const struct clk_hw *[]) {
>>> +                     &s4_cts_encl_sel.hw
>>> +             },
>>> +             .num_parents = 1,
>>> +             .flags = CLK_SET_RATE_PARENT,
>>> +     },
>>> +};
>>> +
>>>   static struct clk_regmap s4_cts_vdac = {
>>>        .data = &(struct clk_regmap_gate_data){
>>>                .offset = CLKCTRL_VID_CLK_CTRL2,
>>> @@ -2735,6 +2768,165 @@ static struct clk_regmap s4_gen_clk = {
>>>        },
>>>   };
>>>
>>> +/* CVBS DAC */
>>> +static struct clk_regmap s4_cdac_sel = {
>>> +     .data = &(struct clk_regmap_mux_data) {
>>> +             .offset = CLKCTRL_CDAC_CLK_CTRL,
>>> +             .mask = 0x3,
>>> +             .shift = 16,
>>> +     },
>>> +     .hw.init = &(struct clk_init_data){
>>> +             .name = "cdac_sel",
>>> +             .ops = &clk_regmap_mux_ops,
>>> +             .parent_data = (const struct clk_parent_data []) {
>>> +                     { .fw_name = "xtal", },
>>> +                     { .fw_name = "fclk_div5" },
>>> +             },
>>> +             .num_parents = 2,
>>> +     },
>>> +};
>>> +
>>> +static struct clk_regmap s4_cdac_div = {
>>> +     .data = &(struct clk_regmap_div_data) {
>>> +             .offset = CLKCTRL_CDAC_CLK_CTRL,
>>> +             .shift = 0,
>>> +             .width = 16,
>>> +     },
>>> +     .hw.init = &(struct clk_init_data){
>>> +             .name = "cdac_div",
>>> +             .ops = &clk_regmap_divider_ops,
>>> +             .parent_hws = (const struct clk_hw *[]) {
>>> +                     &s4_cdac_sel.hw
>>> +             },
>>> +             .num_parents = 1,
>>> +             .flags = CLK_SET_RATE_PARENT,
>>> +     },
>>> +};
>>> +
>>> +static struct clk_regmap s4_cdac = {
>>> +     .data = &(struct clk_regmap_gate_data) {
>>> +             .offset = CLKCTRL_CDAC_CLK_CTRL,
>>> +             .bit_idx = 20,
>>> +     },
>>> +     .hw.init = &(struct clk_init_data){
>>> +             .name = "cdac",
>>> +             .ops = &clk_regmap_gate_ops,
>>> +             .parent_hws = (const struct clk_hw *[]) {
>>> +                     &s4_cdac_div.hw
>>> +             },
>>> +             .num_parents = 1,
>>> +             .flags = CLK_SET_RATE_PARENT,
>>> +     },
>>> +};
>>> +
>>> +static struct clk_regmap s4_demod_core_sel = {
>>> +     .data = &(struct clk_regmap_mux_data) {
>>> +             .offset = CLKCTRL_DEMOD_CLK_CTRL,
>>> +             .mask = 0x3,
>>> +             .shift = 9,
>>> +     },
>>> +     .hw.init = &(struct clk_init_data){
>>> +             .name = "demod_core_sel",
>>> +             .ops = &clk_regmap_mux_ops,
>>> +             .parent_data = (const struct clk_parent_data []) {
>>> +                     { .fw_name = "xtal" },
>>> +                     { .fw_name = "fclk_div7" },
>>> +                     { .fw_name = "fclk_div4" }
>>> +             },
>>> +             .num_parents = 3,
>>> +     },
>>> +};
>>> +
>>> +static struct clk_regmap s4_demod_core_div = {
>>> +     .data = &(struct clk_regmap_div_data) {
>>> +             .offset = CLKCTRL_DEMOD_CLK_CTRL,
>>> +             .shift = 0,
>>> +             .width = 7,
>>> +     },
>>> +     .hw.init = &(struct clk_init_data){
>>> +             .name = "demod_core_div",
>>> +             .ops = &clk_regmap_divider_ops,
>>> +             .parent_hws = (const struct clk_hw *[]) {
>>> +                     &s4_demod_core_sel.hw
>>> +             },
>>> +             .num_parents = 1,
>>> +             .flags = CLK_SET_RATE_PARENT,
>>> +     },
>>> +};
>>> +
>>> +static struct clk_regmap s4_demod_core = {
>>> +     .data = &(struct clk_regmap_gate_data) {
>>> +             .offset = CLKCTRL_DEMOD_CLK_CTRL,
>>> +             .bit_idx = 8
>>> +     },
>>> +     .hw.init = &(struct clk_init_data){
>>> +             .name = "demod_core",
>>> +             .ops = &clk_regmap_gate_ops,
>>> +             .parent_hws = (const struct clk_hw *[]) {
>>> +                     &s4_demod_core_div.hw
>>> +             },
>>> +             .num_parents = 1,
>>> +             .flags = CLK_SET_RATE_PARENT,
>>> +     },
>>> +};
>>> +
>>> +/* CVBS ADC */
>>> +static struct clk_regmap s4_adc_extclk_in_sel = {
>>> +     .data = &(struct clk_regmap_mux_data) {
>>> +             .offset = CLKCTRL_DEMOD_CLK_CTRL,
>>> +             .mask = 0x7,
>>> +             .shift = 25,
>>> +     },
>>> +     .hw.init = &(struct clk_init_data){
>>> +             .name = "adc_extclk_in_sel",
>>> +             .ops = &clk_regmap_mux_ops,
>>> +             .parent_data = (const struct clk_parent_data []) {
>>> +                     { .fw_name = "xtal" },
>>> +                     { .fw_name = "fclk_div4" },
>>> +                     { .fw_name = "fclk_div3" },
>>> +                     { .fw_name = "fclk_div5" },
>>> +                     { .fw_name = "fclk_div7" },
>>> +                     { .fw_name = "mpll2" },
>>> +                     { .fw_name = "gp0_pll" },
>>> +                     { .fw_name = "hifi_pll" }
>>> +             },
>>> +             .num_parents = 8,
>>> +     },
>>> +};
>>> +
>>> +static struct clk_regmap s4_adc_extclk_in_div = {
>>> +     .data = &(struct clk_regmap_div_data) {
>>> +             .offset = CLKCTRL_DEMOD_CLK_CTRL,
>>> +             .shift = 16,
>>> +             .width = 7,
>>> +     },
>>> +     .hw.init = &(struct clk_init_data){
>>> +             .name = "adc_extclk_in_div",
>>> +             .ops = &clk_regmap_divider_ops,
>>> +             .parent_hws = (const struct clk_hw *[]) {
>>> +                     &s4_adc_extclk_in_sel.hw
>>> +             },
>>> +             .num_parents = 1,
>>> +             .flags = CLK_SET_RATE_PARENT,
>>> +     },
>>> +};
>>> +
>>> +static struct clk_regmap s4_adc_extclk_in = {
>>> +     .data = &(struct clk_regmap_gate_data) {
>>> +             .offset = CLKCTRL_DEMOD_CLK_CTRL,
>>> +             .bit_idx = 24
>>> +     },
>>> +     .hw.init = &(struct clk_init_data){
>>> +             .name = "adc_extclk_in",
>>> +             .ops = &clk_regmap_gate_ops,
>>> +             .parent_hws = (const struct clk_hw *[]) {
>>> +                     &s4_adc_extclk_in_div.hw
>>> +             },
>>> +             .num_parents = 1,
>>> +             .flags = CLK_SET_RATE_PARENT,
>>> +     },
>>> +};
>>> +
>>>   static const struct clk_parent_data s4_pclk_parents = { .hw = &s4_sys_clk.hw };
>>>
>>>   #define S4_PCLK(_name, _reg, _bit, _flags) \
>>> @@ -3028,6 +3220,17 @@ static struct clk_hw *s4_peripherals_hw_clks[] = {
>>>        [CLKID_HDCP22_SKPCLK_SEL]       = &s4_hdcp22_skpclk_sel.hw,
>>>        [CLKID_HDCP22_SKPCLK_DIV]       = &s4_hdcp22_skpclk_div.hw,
>>>        [CLKID_HDCP22_SKPCLK]           = &s4_hdcp22_skpclk.hw,
>>> +     [CLKID_CTS_ENCL_SEL]            = &s4_cts_encl_sel.hw,
>>> +     [CLKID_CTS_ENCL]                = &s4_cts_encl.hw,
>>> +     [CLKID_CDAC_SEL]                = &s4_cdac_sel.hw,
>>> +     [CLKID_CDAC_DIV]                = &s4_cdac_div.hw,
>>> +     [CLKID_CDAC]                    = &s4_cdac.hw,
>>> +     [CLKID_DEMOD_CORE_SEL]          = &s4_demod_core_sel.hw,
>>> +     [CLKID_DEMOD_CORE_DIV]          = &s4_demod_core_div.hw,
>>> +     [CLKID_DEMOD_CORE]              = &s4_demod_core.hw,
>>> +     [CLKID_ADC_EXTCLK_IN_SEL]       = &s4_adc_extclk_in_sel.hw,
>>> +     [CLKID_ADC_EXTCLK_IN_DIV]       = &s4_adc_extclk_in_div.hw,
>>> +     [CLKID_ADC_EXTCLK_IN]           = &s4_adc_extclk_in.hw,
>>>   };
>>>
>>>   static const struct meson_clkc_data s4_peripherals_clkc_data = {
>> --
>> Jerome

-- 
Jerome

