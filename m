Return-Path: <devicetree+bounces-187153-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D826EADEE10
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 15:40:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6971C17F4E9
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 13:40:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D33E32E9EB8;
	Wed, 18 Jun 2025 13:40:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="KNXt1BLK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA1ED27E1C3
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 13:40:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750254019; cv=none; b=mD8JJRrAaWI56osr1Ovmsli8ZbhHJE+tydv4DOE0oFLRDEe3Tbf9bZDaMRekQg3y/1jVxp/mgWvGpF6+kB1TryrKT1mkNrrMpGNusAOvcDADLJNI+Gm1b1zSTgc8nlswcYdqenQIqZQhUdKCyR0vXpavZY6tIElry00STZxXeb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750254019; c=relaxed/simple;
	bh=bmDghLFg8ZJsphJJZXo1mQNw9t8W1huDMi5X5ELk+9I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AtnrYCUHYz+4pHl93XAv31kmm3RTZuAB6nz+uRn4aCegWZ8TFyDiEslUc7JRngAgESJ4VBQ4ZDHnNnWEiO4SjOShKyvxbPmRLn2BL5eKRvWAmQOdw/n5w1nLUDtS130sMUKRy6HdJ75l9nz75u98AlYAmxZubBAWO4GJ2/P5nPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=KNXt1BLK; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-553b82f3767so4571032e87.3
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 06:40:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1750254016; x=1750858816; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=crYKm76o7xrNY+G6KV9/tF3PVZHJnWgwFllJxx/P2sc=;
        b=KNXt1BLKLuYXyF2X80TZdh9D9LFFnMLG8jmbvoE/MsLhHTCO8rbHuKBG8PSyNXRsH7
         krTpY4B7v8Z35HdXu6JtDSA5WzZedX1knAl0iuqPd+H3OEjdELGtM81W6P9BDBOgZuhA
         2eod1FoW6oTs9AxNCAal6wq1cJpemY8DUnQpQe7avPzoydQ54uxVzVZzB25VwAKbHrl/
         Y/wNCATLAYxQ4h7AIdlIPU0MSjuWEM3kUa8Ko3BCqB5rOgkgyv3Nh+ins2sK2sUzXMkI
         Qh62xMwuHgbTRU1KpR+98preLpppPbuZ9wlxaS5NQjeOK+jmkLejJN2aiJY8lRicVJyr
         IaIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750254016; x=1750858816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=crYKm76o7xrNY+G6KV9/tF3PVZHJnWgwFllJxx/P2sc=;
        b=lu/TiDddJ2cW/C+Q8vedy0UBfmsvWQssyAm7a4fy9jOuD1Rfy8J2nDFq1PqdoQHz3j
         PYLp2F5XevYVjxERJr979kgFhHB1u6q/fTvcBn73TxxhwBa5iAPyNQduCle/5iDgCl0C
         YbTKSGbaLjIuOzc9/FUhk57tldcK7iLiGHvsAFRtkDLuS+I7b5WknVSOmH9JT/UH9YJT
         +tA2Juug1E31Cj3uLCVCUyy/kuRds4ytqRwR0UxJFVeV/coI1TicBjsv6ynQsl2clZqu
         UO2WvaQtY0iIbrWQukskQdWGIYFwFU5dn1qF3vKh96XeIFMdSKPUJ/eoOylvfwiym8xR
         9ZiA==
X-Forwarded-Encrypted: i=1; AJvYcCVS+CJ8W09/sz+sUWPy9ve6MAmY6sBEEEC1phNNkuy71KUUOtvQZmS6WOcwbKtAo2LbEQbIm5BI69kg@vger.kernel.org
X-Gm-Message-State: AOJu0YybCezvPH+9vDbww9CDGopRkmcAG67aOYkhrbioUT/OcMFncJ80
	UfyCzIuiLoFYpvgEhVN/kgWhKV+9kkKILI/R2r6zmfpUrSabn3CQy5gK45x82rBfLmr7Lhu+b/O
	FZ5oVKT/xhdedQDlbqdC9Tqjl4tFiamBWRZlC/08Q2w==
X-Gm-Gg: ASbGncsyDDSXRpu41U6GNnfesHTSBstHLxyuJSGs0JJiEcdjWHC/CFg7pqB84Og0wb5
	iAZ9xivg2UAAo+5ZpNzGxRVHYn6ehPNls3R6aU/2Vcprk9zCWjpR9IXX3NwQzjHBXd1cGTEjRo/
	ngL0R6IghBFEBHbyXVJQDJtmfRwOQactLGF1v3nb42QLl8bqcDLVbQZZcmKnO0QSCzFjeS+UsKa
	g==
X-Google-Smtp-Source: AGHT+IFad5ToM6J1+d0O4ioF2H0SvuVc8QUlMms8kkOXzKAtFkNQ7udNNIL4/h4trNzifK85LwmlcE1SddV80i2GLLM=
X-Received: by 2002:a05:6512:23a7:b0:540:2fd2:6c87 with SMTP id
 2adb3069b0e04-553b6e74f1bmr5037069e87.16.1750254015903; Wed, 18 Jun 2025
 06:40:15 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CGME20250618102226eucas1p112dacf9670f68b4a8581aa1a8b5ced9d@eucas1p1.samsung.com>
 <20250618-apr_14_for_sending-v5-0-27ed33ea5c6f@samsung.com> <20250618-apr_14_for_sending-v5-1-27ed33ea5c6f@samsung.com>
In-Reply-To: <20250618-apr_14_for_sending-v5-1-27ed33ea5c6f@samsung.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 18 Jun 2025 15:40:04 +0200
X-Gm-Features: AX0GCFtjm4Gei3EGyvZSnf2L-ltMUqIESaL5jfPbh7xGonqWZX6d4yY2Lh7mu5E
Message-ID: <CAMRc=MfQFc=MvGHpu1M4HO1-2RJh34UAXXCvVBZ2jU0rFDANJQ@mail.gmail.com>
Subject: Re: [PATCH v5 1/8] power: sequencing: Add T-HEAD TH1520 GPU power
 sequencer driver
To: Michal Wilczynski <m.wilczynski@samsung.com>
Cc: Drew Fustini <drew@pdp7.com>, Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Frank Binns <frank.binns@imgtec.com>, 
	Matt Coster <matt.coster@imgtec.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Marek Szyprowski <m.szyprowski@samsung.com>, 
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 18, 2025 at 12:22=E2=80=AFPM Michal Wilczynski
<m.wilczynski@samsung.com> wrote:
>
> Introduce the pwrseq-thead-gpu driver, a power sequencer provider for
> the Imagination BXM-4-64 GPU on the T-HEAD TH1520 SoC. This driver
> controls an auxiliary device instantiated by the AON power domain.
>
> The TH1520 GPU requires a specific sequence to correctly initialize and
> power down its resources:
>  - Enable GPU clocks (core and sys).
>  - De-assert the GPU clock generator reset (clkgen_reset).
>  - Introduce a short hardware-required delay.
>  - De-assert the GPU core reset. The power-down sequence performs these
>    steps in reverse.
>
> Implement this sequence via the pwrseq_power_on and pwrseq_power_off
> callbacks.
>
> Crucially, the driver's match function is called when a consumer (the
> Imagination GPU driver) requests the "gpu-power" target. During this
> match, the sequencer uses clk_bulk_get() and
> reset_control_get_exclusive() on the consumer's device to obtain handles
> to the GPU's "core" and "sys" clocks, and the GPU core reset.  These,
> along with clkgen_reset obtained from parent aon node, allow it to
> perform the complete sequence.
>
> Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>
> Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
> ---

Thanks, this looks much better now.

[snip]

> +
> +static int pwrseq_thead_gpu_disable(struct pwrseq_device *pwrseq)
> +{
> +       struct pwrseq_thead_gpu_ctx *ctx =3D pwrseq_device_get_drvdata(pw=
rseq);
> +
> +       if (!ctx->clks || !ctx->gpu_reset)
> +               return -ENODEV;
> +
> +       reset_control_assert(ctx->gpu_reset);
> +       reset_control_assert(ctx->clkgen_reset);

These can still fail, I suggest checking and propagating the return values.

> +       clk_bulk_disable_unprepare(ctx->num_clks, ctx->clks);
> +
> +       return 0;
> +}
> +

[snip]

> +
> +static int pwrseq_thead_gpu_match(struct pwrseq_device *pwrseq,
> +                                 struct device *dev)
> +{
> +       struct pwrseq_thead_gpu_ctx *ctx =3D pwrseq_device_get_drvdata(pw=
rseq);
> +       static const char *const clk_names[] =3D { "core", "sys" };
> +       struct of_phandle_args pwr_spec;
> +       int i, ret;
> +
> +       /* We only match the specific T-HEAD TH1520 GPU compatible */
> +       if (!of_device_is_compatible(dev->of_node, "thead,th1520-gpu"))
> +               return 0;
> +
> +       ret =3D of_parse_phandle_with_args(dev->of_node, "power-domains",
> +                                        "#power-domain-cells", 0, &pwr_s=
pec);
> +       if (ret)
> +               return 0;
> +
> +       /* Additionally verify consumer device has AON as power-domain */
> +       if (pwr_spec.np !=3D ctx->aon_node || pwr_spec.args[0] !=3D TH152=
0_GPU_PD) {
> +               of_node_put(pwr_spec.np);
> +               return 0;
> +       }
> +
> +       of_node_put(pwr_spec.np);
> +
> +       if (ctx->gpu_reset || ctx->clks)
> +               return 1;
> +

One thing that bothers me is that this is still a fragile construct. I
know this cannot happen in this particular design but in theory, this
would not work if there were multiple simultaneous consumers of the
AON power domain. Maybe just to be sure: store the address of the
of_node of the consumer (preferably bumping its reference count) and
check it to make sure that once a consumer associated with this node
is connected, we no longer allow any other nodes? This way you could
also just drop this if replacing it with checking the existence of the
of_node.

[snip]

Bartosz

