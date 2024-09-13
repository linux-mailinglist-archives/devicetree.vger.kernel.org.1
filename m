Return-Path: <devicetree+bounces-102886-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C52B978BFD
	for <lists+devicetree@lfdr.de>; Sat, 14 Sep 2024 01:51:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2E9C3282EB8
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 23:51:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9FBB17CA19;
	Fri, 13 Sep 2024 23:51:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="fN4KTP4e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331F026289
	for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 23:51:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726271466; cv=none; b=HHA7Y+vgsGomazt4qH7DLuNV0Wx8usANpdtk7U/PghtQeHM+g81odc5uV1V1kBYv2KUfdqk2MhY5Of3LzaUDU9lVwB9Uyuv+sDIdRLG8T20YDDAiNQziNSfVktdXJniDAoFXvwa25w2ZqYUKuRlCQsb83CTr3vDAg8+V/kwKhuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726271466; c=relaxed/simple;
	bh=iShfGa2K9v84syG+aLK78YPAr6h3bqgDt5AT1QZtHo4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LjpPTdp5sIcRihWGl6ZLkhhp7RanfRiFKxqp/wn4mBCyWQHS7P3EcF9fKnWWt7pBPIDRYMegt8kN2+8M7EXVDBqnpDpiWB+sLn/MF8MMsU5sLUdu2uxXkZwBpxdyPCfHkJe6KSN+3eEv+nVpKcAJnv6GLPtRleflIeMrHmgV1gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=fN4KTP4e; arc=none smtp.client-ip=209.85.222.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-7a99d23e036so258387085a.1
        for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 16:51:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1726271464; x=1726876264; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TI7TITmGzIQHc7WsNOaVJ244cb5V1Nwa651mKiB3q/E=;
        b=fN4KTP4eA+JC6+QXwIhfihTcOQcOLTBrwXTf7NFmcNFMnVxMQ/oCYLQmymInFM0+il
         ALrBtTKPuAtuq6NfulOnGxE4C5m8BvqjxjA3eFea1TYXD6nvmTbiq3gNnyTMDjEFdey4
         VTT4NVgmPljEoa/ZRJuVpBykLUmqStTISn47s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726271464; x=1726876264;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TI7TITmGzIQHc7WsNOaVJ244cb5V1Nwa651mKiB3q/E=;
        b=PM5lqP6pwYK/aBolOLHh2jlgIzX+LwTMGNuGKxTo0dZ3LClLQ7cnPgOeS23GMnB8UJ
         tw4q4KDGPqRXaWsHxBJbeb/VldcfEWRJ1y5B3lynVuChIE6viSsdgdTyCkkIgtebRi2B
         8w+qsJ9NRq+n9+i+1Wko220hmgJQl7U7njnpT1j/PZTGKmU5jzD1xMp/YnD5LXclTHSH
         a7pb5i/a40ojCx4tLDNs3bh3saZpFavq6MyLhOMq9d8VcoER4nUnoitqHJ3xNdATeydz
         OPkv//UCMyWjYQ0xSpnBVazg1DcMMYObv5oBBiNAj+zb468Rf/T3Flk+jkNDXGPlZoHi
         3LFg==
X-Forwarded-Encrypted: i=1; AJvYcCVVN7pdNJFZhlJitnaFP+b+oymk3nfc3HyEkaSjAifeXvYjFi1xd74z0wOHLscKzY624xKKb73ocz+T@vger.kernel.org
X-Gm-Message-State: AOJu0YzpajIcuFhK2yn3lDwPjPH8E+Hnhq17hrx4QAj/OAYx9TrVMp5I
	O1D1A/bAekydtoYrS1T8cte9st5PMO/dtbUJUnCKHCXq/BCXPVLBDX07vtoQVflbonhCHW5eHkM
	=
X-Google-Smtp-Source: AGHT+IH5pZ8g0n61XUEra1Rfe/xezU+ZHFUNElTHMfUYdUdt0MTOvsi+gskuzwSZgBnGbSJbNHqkZQ==
X-Received: by 2002:a05:620a:460a:b0:7a9:be8f:5c65 with SMTP id af79cd13be357-7a9e5ef6323mr1356533185a.15.1726271463835;
        Fri, 13 Sep 2024 16:51:03 -0700 (PDT)
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com. [209.85.160.179])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7ab3eb72907sm13658085a.125.2024.09.13.16.51.02
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Sep 2024 16:51:02 -0700 (PDT)
Received: by mail-qt1-f179.google.com with SMTP id d75a77b69052e-45830ff5b70so21489891cf.1
        for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 16:51:02 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVW5cr6tBJ1Ik56aH66kGiNjtckHpYBSts4PzY1fp1kbPcsuf/LYeYEioYb0aJa/lf5UJXCLZ2lSibP@vger.kernel.org
X-Received: by 2002:a05:6214:448c:b0:6c3:5599:93a0 with SMTP id
 6a1803df08f44-6c57347d602mr144060086d6.0.1726271006617; Fri, 13 Sep 2024
 16:43:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240911072751.365361-1-wenst@chromium.org> <20240911072751.365361-9-wenst@chromium.org>
In-Reply-To: <20240911072751.365361-9-wenst@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 13 Sep 2024 16:43:15 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XvPA0UC87fQ+RvFzPv9qRSEP6eQhT79JOx9Arj87i9Mg@mail.gmail.com>
Message-ID: <CAD=FV=XvPA0UC87fQ+RvFzPv9qRSEP6eQhT79JOx9Arj87i9Mg@mail.gmail.com>
Subject: Re: [PATCH v7 08/10] i2c: of-prober: Add GPIO support to simple helpers
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Wolfram Sang <wsa@kernel.org>, 
	Benson Leung <bleung@chromium.org>, Tzung-Bi Shih <tzungbi@kernel.org>, 
	Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	chrome-platform@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Johan Hovold <johan@kernel.org>, 
	Jiri Kosina <jikos@kernel.org>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Sep 11, 2024 at 12:29=E2=80=AFAM Chen-Yu Tsai <wenst@chromium.org> =
wrote:
>
> +static int i2c_of_probe_simple_set_gpio(struct device *dev, struct i2c_o=
f_probe_simple_ctx *ctx)
> +{
> +       int ret;
> +
> +       if (!ctx->gpiod)
> +               return 0;
> +
> +       dev_dbg(dev, "Setting GPIO\n");
> +
> +       ret =3D gpiod_direction_output_raw(ctx->gpiod, ctx->opts->gpio_hi=
gh_to_enable ? 1 : 0);
> +       if (ret)
> +               return ret;
> +
> +       msleep(ctx->opts->post_reset_deassert_delay_ms);

Like in the previous patch, you need an "if
(ctx->opts->post_reset_deassert_delay_ms)" before the msleep().


> +static void i2c_of_probe_simple_disable_gpio(struct device *dev, struct =
i2c_of_probe_simple_ctx *ctx)
> +{
> +       if (!ctx->gpiod)
> +               return;
> +
> +       dev_dbg(dev, "Setting GPIO to input\n");
> +
> +       gpiod_direction_input(ctx->gpiod);

This is weird. Why set it to input?


> @@ -347,6 +438,7 @@ int i2c_of_probe_simple_cleanup(struct device *dev, v=
oid *data)
>  {
>         struct i2c_of_probe_simple_ctx *ctx =3D data;
>
> +       i2c_of_probe_simple_disable_gpio(dev, ctx);

Maybe add a comment before the GPIO call that it's a noop if we found
something and i2c_of_probe_simple_free_res_early() was already called?
Otherwise you need to read into the function to understand why this
doesn't crash if the early call was made. To me, that makes the
abstraction add confusion instead of simplifying things.


> @@ -92,24 +93,33 @@ int i2c_of_probe_component(struct device *dev, const =
struct i2c_of_probe_cfg *cf
>   * struct i2c_of_probe_simple_opts - Options for simple I2C component pr=
ober callbacks
>   * @res_node_compatible: Compatible string of device node to retrieve re=
sources from.
>   * @supply_name: Name of regulator supply.
> + * @gpio_name: Name of GPIO.

Talk about the fact that gpio_name can be NULL or an empty string and
that they mean different things.


>   * @post_power_on_delay_ms: Delay in ms after regulators are powered on.=
 Passed to msleep().
> + * @post_reset_deassert_delay_ms: Delay in ms after GPIOs are set. Passe=
d to msleep().
> + * @gpio_high_to_enable: %true if GPIO should be set to electrical high =
to enable component.

Now that you've added the GPIOs and more delays, the description of
this structure needs to list exactly what the power sequence your
simple functions assume.

I would also say: given that you're providing a parameter anyway and
you're giving the GPIO name, can you please move away from the "raw"
values and move to "logical" values?

