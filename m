Return-Path: <devicetree+bounces-186368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DA50AADB6E0
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 18:30:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 006C3175F00
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 16:29:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7599F2874E7;
	Mon, 16 Jun 2025 16:29:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="jkjYoPFJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61258286D74
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 16:29:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750091342; cv=none; b=lG65tvY7HUuVA8U0GZGI/8RRCLAO47hIxILJiLdjT6bYPox+DRNy4CulFV7GJmeAQNg8cJ3sDaD6nyMs65TN9QqyUunloXSKkcFjf9FYWLeQ0i7YF95c6717cafII79ps3GMtbI8DCGCuHhVYi1XKDMMC6g5Az0qBNhNilm1NkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750091342; c=relaxed/simple;
	bh=oc308cWJY7K5jtB4M8lGQgi0gwj+laPxSvUnNM1ACGw=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=Gx4RyELFZgUw9fC5HovsNolKYgqfT3j31OoOIBzEB/wDvzUQ3fCLTzb3u8C513YJb0Req7c4zVJcmf77qMSMvTQaqGMpqTMZwqitkEUtxaYXCcDfuS5CkElhajFqsDVhsopU/IV1ZN6BFEPdNFQVoBD8eVqBko/9Zr+Xtczsejk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=jkjYoPFJ; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-3a375e72473so2701396f8f.0
        for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 09:29:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1750091339; x=1750696139; darn=vger.kernel.org;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GLMk8sUAbFDL9awvd1JVfmla5ZuGflgSXmH7EtFQNMY=;
        b=jkjYoPFJOKMBzVp4gaYUmYrdwEo44U3Kvrkp8aDRzsY+PznXMsZSXsLph1CCWcjWbP
         fbnSPRsj7mCsxB4q7LNiyZOHBpHA942a0WZsct3ixAxlLPm6RpqgOWEGCj7/XsYE2Qe+
         4PxPT9rmsmY1f/lPwWxDZrBYeh3R9sqD30RQkTn0DH/aASfAtfIbL8yXPk+uwxK58UwX
         j+049SWln+hHrPnzANpUSGQInhu6DVAxNEz5FrZhVsc5SneDM7VivovKK5zwhD3WQ5PO
         8nEcWU2Vs3DqcnQcoUoMD8R5/pUGaVkvuYQwhOo8t/0KWpAJjOSEMfu7KEe+XSDzxrJm
         wwUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750091339; x=1750696139;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GLMk8sUAbFDL9awvd1JVfmla5ZuGflgSXmH7EtFQNMY=;
        b=Ptudz7yitd34OyHMb3nBmNx5SKhZNzASHkSUabvRCxYouXJwp7QyCqY8mpPGzy0ZpY
         +Kd9iQPo3SwDdWGQb6hNSPbec9c719p5881eflGXyOqn9KX3wOUxgbZDij6/aFlNTJNf
         RkZO+6yyOoinCMCD7xvABmTkXAYBFzHlhT9bZ+tkE7E4hxlgyfyeEKJNpm/toX9Wl6kQ
         +HRdmwKLUCfeJuj8MZZGH/sWE9ERdU+JBnTd3k6LMlaNbKF4fycWcBnSh4x//x3tpYD0
         ahAkocsq1vUB0+rW6HHSTdTpE3si0BWI1JufnOjsFVrLbLjNKHWIvJD+KVtbd630d171
         0Bug==
X-Forwarded-Encrypted: i=1; AJvYcCUpTyi9NslKXZwonHaJqUb5RIvmW+t2bar0piB1Di2TyP9lndaQu1R7i1PlQf/0CZl9rJhblu6vmu1/@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+Q2/3qxx3rSvn2YmNbBhmAH0K7QGQI6qeBg7jZ4WNOG0CMl2+
	pG/if23n3/NuXbbk59KB67cfDG4PEtU16CoIYDKuS4HHOo6nfSUjDcnQJ1Py6a/Tnw8=
X-Gm-Gg: ASbGncsdJ69pdAuIuwQ+IgIaKfUltLcvuKRVmGGqWkwRQbJICv/O5owWXhiOBX/zSnX
	IWobKLLNuujwQvi5qGJz2VJ25So5xDaTKItVnp8r2UOyEL+nh4JyxAkibF6lk35RTQpgr8v5x1Y
	ljlTBZfB0+aqLHTrk3+/926uukkaZxbKHwt+ApDDLPe7Q+74aEygFgqveZcljzRnF8frFykfT/p
	oze3Ls1EDrbhWylXZnXzgJLtaE+XuPOTFpZ+2jzQRSY3L14eeLWdFkJUKBMS5bIy2m2eKQKja+S
	S5l2q9k+zE8FTT3V8s9VWVoyBr1v0VLjJ7BpT+lCSQv23GS4Gb9zfig/fRR/7A==
X-Google-Smtp-Source: AGHT+IG+uKVD+2uQ30rqIvYD8novgngIzsToeM/OcxULMAkMYw8cbJlVs0Ezi+EAX8FyDekCYLEjHA==
X-Received: by 2002:a05:6000:1447:b0:3a4:d9fa:f1ed with SMTP id ffacd0b85a97d-3a572371aa7mr7369046f8f.13.1750091338599;
        Mon, 16 Jun 2025 09:28:58 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:1866:9357:88b6:f1b2])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-3a568a5407csm11646209f8f.12.2025.06.16.09.28.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Jun 2025 09:28:58 -0700 (PDT)
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
Subject: Re: [PATCH v3 5/6] clk: meson: add MESON_PCLK_V2 for sys gate clock
In-Reply-To: <ea83e375-7088-4047-92f1-31d0e7c2c331@amlogic.com> (Jian Hu's
	message of "Fri, 13 Jun 2025 13:35:22 +0800")
References: <20250509074825.1933254-1-jian.hu@amlogic.com>
	<20250509074825.1933254-6-jian.hu@amlogic.com>
	<1jzfffy738.fsf@starbuckisacylon.baylibre.com>
	<ea83e375-7088-4047-92f1-31d0e7c2c331@amlogic.com>
User-Agent: mu4e 1.12.9; emacs 30.1
Date: Mon, 16 Jun 2025 18:28:57 +0200
Message-ID: <1j8qlrd512.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On Fri 13 Jun 2025 at 13:35, Jian Hu <jian.hu@amlogic.com> wrote:

> On 2025/5/14 15:39, Jerome Brunet wrote:
>
>  [ EXTERNAL EMAIL ]

Please fix your mailer, can't read that reply

>
> On Fri 09 May 2025 at 07:48, Jian Hu <jian.hu@amlogic.com> wrote:
>
>  A new MESON_PCLK_V2 macro is introduced for the sys gate clock. Its parent
> is an SCMI clock. It belongs to another clock controller, and the parent
> configuration is different from  that of MESON_PCLK. This avoids new macro
> definition in the peripheral clock driver.
>
> Signed-off-by: Jian Hu <jian.hu@amlogic.com>
> ---
>  drivers/clk/meson/clk-regmap.h | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
>
> diff --git a/drivers/clk/meson/clk-regmap.h b/drivers/clk/meson/clk-regmap.h
> index e365312da54e..61b8fc2d875f 100644
> --- a/drivers/clk/meson/clk-regmap.h
> +++ b/drivers/clk/meson/clk-regmap.h
>
>
> This file is not meant for amlogic specific stuff. I know some found
> their way in regardless but that's being fixed
>
> I found macro MESON_PCLK is used in G12A/MESON8B/GXBB/S4.
>
> you mean the macro will be fixed? and use something else instead.
>
>  
>  @@ -134,4 +134,28 @@ struct clk_regmap _name = {                                              \
>
>  #define MESON_PCLK_RO(_name, _reg, _bit, _pname)     \
>       __MESON_PCLK(_name, _reg, _bit, &clk_regmap_gate_ro_ops, _pname)
> +
> +#define __MESON_PCLK_V2(_name, _reg, _bit, _ops, _pname)             \
> +struct clk_regmap _name = {                                          \
> +     .data = &(struct clk_regmap_gate_data){                         \
> +             .offset = (_reg),                                       \
> +             .bit_idx = (_bit),                                      \
> +     },                                                              \
> +     .hw.init = &(struct clk_init_data) {                            \
> +             .name = #_name,                                         \
> +             .ops = _ops,                                            \
> +             .parent_data = &(const struct clk_parent_data) {        \
> +                     .fw_name = #_pname,                             \
> +             },                                                      \
> +             .num_parents = 1,                                       \
> +             .flags = (CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED),     \
> +     },                                                              \
> +}
>
>
> The proliferation of those macros has been going on for far too long,
> add using CLK_IGNORE_UNUSED inside is certainly a mistake I won't
> repeat.
>
> This will be part of more general clean-up that currently depends on a
> this [1] patch to go further. You'll have to be patient.
>
> [1]: https://lore.kernel.org/r/20250417-clk-hw-get-helpers-v1-0-7743e509612a@baylibre.com
>
> OK, CLK_IGNORE_UNUSED is added for all gate clocks. it is better to remove it. and wait for your patch merged.
>
> And  quote your comments in v2.  the T7_CLK_GATE is newly added in T7 Peripheral driver in v2.
>
> If I understand you correctly.  A common macro should be added for it and remove T7_CLK_GATE.
>
> So I add a common macro in clk-regmap.h, and it can be used for different SoCs.
>
> MESON_PCLK and MESON_PCLK_V2 difference is a clocks's parent defination.
>
> the sys gate clock parent is in another clock controller. So parent_data member is need for it.
>
> and parent_hw member is for previous SoCs which clock and parent clock are in one clock controller.
>
> How should we deal with it. 
>
> 1.Add the macro in T7 Perpheral driver.
>
> 2.Or add a common macro for parent_data,   and where the macro should be placed?
>
> ---
>
>> +#define T7_CLK_GATE(_name, _reg, _bit, _fw_name, _flags)		\
>
> See, redefining the peripheral once again ... something all the SoCs
> uses with minor variation.
>
>> +struct clk_regmap _name = {						\
>> +	.data = &(struct clk_regmap_gate_data){				\
>> +		.offset = (_reg),					\
>> +		.bit_idx = (_bit),					\
>> +	},								\
>> +	.hw.init = &(struct clk_init_data) {				\
>> +		.name = #_name,						\
>
> There is an exception in the naming convention for peripheral clocks.
>
> The name is soc id prefixed in most SoC. It is these pointless minor
> diff that makes factorisation difficult.
>
>> +		.ops = &clk_regmap_gate_ops,				\
>> +		.parent_data = &(const struct clk_parent_data) {	\
>> +			.fw_name = #_fw_name,				\
>> +		},							\
>> +		.num_parents = 1,					\
>> +		.flags = (_flags),					\
>> +	},								\
>
> ---
>
>  
>  +
> +#define MESON_PCLK_V2(_name, _reg, _bit, _pname)     \
> +     __MESON_PCLK_V2(_name, _reg, _bit, &clk_regmap_gate_ops, _pname)
> +
> +#define MESON_PCLK_RO_V2(_name, _reg, _bit, _pname)  \
> +     __MESON_PCLK_V2(_name, _reg, _bit, &clk_regmap_gate_ro_ops, _pname)
> +
>  #endif /* __CLK_REGMAP_H */

-- 
Jerome

