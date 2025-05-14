Return-Path: <devicetree+bounces-177024-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F746AB64A6
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 09:39:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4C0B01B62B10
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 07:39:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BB6720FAB9;
	Wed, 14 May 2025 07:39:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="zwexy0jw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 803F520F09A
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 07:39:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747208354; cv=none; b=IMI17/xTKyvJDe9Xco+Oqxuzqv5wuUjChmzhNHeYsQr8AJfqBe2+kTDHPB1eP915T5dFccqhplY/KF8p5VCBnNoUoA57Eqajglax9zpZ2/6ac9LmZizidh4QjYk4pfGDI2Q8xtyAbkvnRV8ldOqAIXn3AH7wK6WDxAOI69drLvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747208354; c=relaxed/simple;
	bh=kVQoQu1xI3xg82klmMxIsn7w8l/v5NLalZuo0VZW3bg=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=LslsEYLmE4JgWm5HudUHd6GkQY4fX11diaWIIJaH8q9PXV0qZBnhLO+uJxJ1K/dQHllUKRu/ED83GUcpTjpV4nq3V9t1rjOAQ1cAGY5Ky15tmK/Czu7jEOi0rlZgY6GLXI9nUQ1vORwClZ6GuDuK5VgceZ/+BTxauwMusmln3Bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=zwexy0jw; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3a108684f90so3941357f8f.1
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 00:39:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1747208349; x=1747813149; darn=vger.kernel.org;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZVmGNhpPip+++PUOZC2sGERkflrjQCplFYAdCCvMfb8=;
        b=zwexy0jwybQ7JQtRI/froMEnI8PPBN8BOtZZTsW4OuKLyk8l4G+HfdeYjzNId5Ke9k
         SZ+6FVlrCtmqN9T7qNjvjKnHfhjywZloU6xvOXf2/SyGeYlhmmxkov3GQoLPplBShth/
         ub4aMmJR/7TmQhp5pWB63s5fFZx5D6qS/T5tRqo4XcRb1tENcmnwzGnLeK4TFOj12MpT
         qXAXDT1kfMj9gbiS9AF9a45byMNnTstIPX48WFFYjL+1dfRBh5PJH0K5T1qgVaRedR7r
         vE/lLrvSoAiuJDKT0bScNYEOErxbUnKNkIahywvkN5FYdulanYbQVBF3YuDJvstW9r4n
         fYKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747208349; x=1747813149;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZVmGNhpPip+++PUOZC2sGERkflrjQCplFYAdCCvMfb8=;
        b=S5CQrTGOTZNi1n4CUfbmeytdmbe9k3L4boR4Ezj/b8zwSEh1l1xCfcIZyFPRNIYCZw
         omxTWqOKfcXCfgI4oLhy55VkGYMZM1MRmQzOTLj028JBXCeg7uxes6xGfBsDK7v3WiNe
         28DNzntnapcrLKl+Zzi5iW9Tx0jn+NMdVQ9FYNrKdPbW+5MHFC5V9UvPBwcSMkfERGDp
         wSWg7rWJg1PQv8wuQWVvTl6pzkC8xyzGKbj7KKZLVNKs9ZGwcwEGiUXWA8ukpVnrpuFN
         nYQD5ACiQrjxPxMOAnuqeEkPLXqPmiKN0w1Sd+SW8rMycScvd2AvKRtaeIgCSxaJpkTe
         LGVw==
X-Forwarded-Encrypted: i=1; AJvYcCUbozgM3GrU5BG0+qaz8vrc31S6PtZB71Surgan5PGhHpaGU55hSID12S6BcNOhgBM30CbOLyOj0mc9@vger.kernel.org
X-Gm-Message-State: AOJu0YwQnvZPmPCDuuXa5jfUi//ZhhnNmCSsUuMclhbY/8/BCk0DwzbG
	iektjWe4Ijs8xgY3lEemMmtY1HY7nZxyG/ViTeO9sfivSaPGoDzIV3lyszvEfaM=
X-Gm-Gg: ASbGncvLs9EzHLqBVXHTBDjrVq0B2pZQCkST1FkZertCvkXQOMug/PAK2QyLTuB4maH
	22muOFOMfsskPec2oxrMVIk+KSz+vAeEka5IG8+m5boHGMLX5I9jduth7CJhay0T0ha7ncDcn3O
	owW2oXugAp+Tta3GpN6IKVs1LHHPoPFcEfRZiU7y+be6TfE+65NoXv2IfOJ6jfLBLBQnLoLIW2O
	a0Mqc6fwg1Gq+3JzWssV8dX0vCHXRzqQaYX5xnNnvnQUHxMmOUQvn+mVBvYggE74zPolVlxEtTQ
	nSfNhvcZiVuUiVn9nAyYD09xrgBg29kMskRkaWgLZyhRQu/Ieis=
X-Google-Smtp-Source: AGHT+IG7CrNBn/EFtls8jFCa6+Od8EZnVpuoJGdjw4zpKMEd5j+UzCgUpQFM4d3fwpyVX79bArzG+Q==
X-Received: by 2002:a05:6000:4201:b0:3a0:ac96:bd41 with SMTP id ffacd0b85a97d-3a3496c4024mr1989692f8f.27.1747208348669;
        Wed, 14 May 2025 00:39:08 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:3b94:a3ea:946a:aa90])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-3a1f5a2cf2bsm18503449f8f.80.2025.05.14.00.39.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 00:39:08 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Jian Hu <jian.hu@amlogic.com>
Cc: Xianwei Zhao <xianwei.zhao@amlogic.com>,  Chuan Liu
 <chuan.liu@amlogic.com>,  Neil Armstrong <neil.armstrong@linaro.org>,
  Kevin Hilman <khilman@baylibre.com>,  "Stephen Boyd" <sboyd@kernel.org>,
  Michael Turquette <mturquette@baylibre.com>,  "Dmitry Rokosov"
 <ddrokosov@sberdevices.ru>,  robh+dt <robh+dt@kernel.org>,  Rob Herring
 <robh@kernel.org>,  devicetree <devicetree@vger.kernel.org>,  linux-clk
 <linux-clk@vger.kernel.org>,  linux-amlogic
 <linux-amlogic@lists.infradead.org>,  linux-kernel
 <linux-kernel@vger.kernel.org>,  linux-arm-kernel
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v3 5/6] clk: meson: add MESON_PCLK_V2 for sys gate clock
In-Reply-To: <20250509074825.1933254-6-jian.hu@amlogic.com> (Jian Hu's message
	of "Fri, 9 May 2025 07:48:23 +0000")
References: <20250509074825.1933254-1-jian.hu@amlogic.com>
	<20250509074825.1933254-6-jian.hu@amlogic.com>
User-Agent: mu4e 1.12.9; emacs 30.1
Date: Wed, 14 May 2025 09:39:07 +0200
Message-ID: <1jzfffy738.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On Fri 09 May 2025 at 07:48, Jian Hu <jian.hu@amlogic.com> wrote:

> A new MESON_PCLK_V2 macro is introduced for the sys gate clock. Its parent
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

This file is not meant for amlogic specific stuff. I know some found
their way in regardless but that's being fixed

> @@ -134,4 +134,28 @@ struct clk_regmap _name = {						\
>  
>  #define MESON_PCLK_RO(_name, _reg, _bit, _pname)	\
>  	__MESON_PCLK(_name, _reg, _bit, &clk_regmap_gate_ro_ops, _pname)
> +
> +#define __MESON_PCLK_V2(_name, _reg, _bit, _ops, _pname)		\
> +struct clk_regmap _name = {						\
> +	.data = &(struct clk_regmap_gate_data){				\
> +		.offset = (_reg),					\
> +		.bit_idx = (_bit),					\
> +	},								\
> +	.hw.init = &(struct clk_init_data) {				\
> +		.name = #_name,						\
> +		.ops = _ops,						\
> +		.parent_data = &(const struct clk_parent_data) {	\
> +			.fw_name = #_pname,				\
> +		},							\
> +		.num_parents = 1,					\
> +		.flags = (CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED),	\
> +	},								\
> +}

The proliferation of those macros has been going on for far too long,
add using CLK_IGNORE_UNUSED inside is certainly a mistake I won't
repeat.

This will be part of more general clean-up that currently depends on a
this [1] patch to go further. You'll have to be patient.

[1]: https://lore.kernel.org/r/20250417-clk-hw-get-helpers-v1-0-7743e509612a@baylibre.com

> +
> +#define MESON_PCLK_V2(_name, _reg, _bit, _pname)	\
> +	__MESON_PCLK_V2(_name, _reg, _bit, &clk_regmap_gate_ops, _pname)
> +
> +#define MESON_PCLK_RO_V2(_name, _reg, _bit, _pname)	\
> +	__MESON_PCLK_V2(_name, _reg, _bit, &clk_regmap_gate_ro_ops, _pname)
> +
>  #endif /* __CLK_REGMAP_H */

-- 
Jerome

