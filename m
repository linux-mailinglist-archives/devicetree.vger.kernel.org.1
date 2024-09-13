Return-Path: <devicetree+bounces-102884-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BBCEE978BEF
	for <lists+devicetree@lfdr.de>; Sat, 14 Sep 2024 01:43:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 38BB7B26180
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 23:43:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8729E191F83;
	Fri, 13 Sep 2024 23:43:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Eom+H5DD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA0A8192586
	for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 23:43:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726271014; cv=none; b=Pj/aR8q/CmocBfhZN0CargwsnHnFJuZ2sN53FtcA4hEsJHiKW5Te3gdE8bXzC1T8LVL1XUhsZ1m2M+7iL7k+om/AbgChwxQrVV5D4cXlvKBdhMgOFMK6bgxAcSf3fH6WrmA7s4DXSIXl82mr5ZExsPUMfNEsYv6QIDI91rdf9hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726271014; c=relaxed/simple;
	bh=0ahzFG2oNxj4NQXzKVIJir1WD7KoViMiBM80pX771gU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bBxSEE4MeoeLyOltvDRQ0z+vN9IB1lo2j76aT5ibZKOcEx9cBBypUfnyF4dJXSTZFnFrt9OJ4TUIn+DGn2GSNs0SQ5K3oD4ARNeKRZNadgeeJ3lZijPhs6SpLiReZjuh8Uunee/K9zlFnjCtChg+K1iVYDliqSA89vK7FjXo3/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Eom+H5DD; arc=none smtp.client-ip=209.85.222.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-7a99e8c32c0so258338385a.3
        for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 16:43:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1726271009; x=1726875809; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EGpao8Kwq4txpjKiG0IecbBKjp+Vjjk+9Rmjd0MdGw0=;
        b=Eom+H5DDedNLLsBi2ToGc1HAYZM74KPsCaMu01N8H7W8m3ccSZMIunW0MHGUxo7Bqk
         kHOCTAqhRdD8V/2dZDawIMMywnpsdUVVRwnrLGpT3w74yD22eFVaD+P/QreE6gTw04Op
         9wDeQhVcOTIiHTtOaotQU2MTmXJOojaxzzuVE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726271009; x=1726875809;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EGpao8Kwq4txpjKiG0IecbBKjp+Vjjk+9Rmjd0MdGw0=;
        b=S1UPqtI2KBI2xAY2ecNyrQsAvW9y9jCq9bbF9rEWNAwkdCRW0FEciPRsQUfk2xb0cW
         rG6GyEbhpnlgZm73+mwACblP8wIfITn8coxyU4GOEqfYBw+38f4dqtbYvEp0a3r4je4C
         +vj5m585VxdyFMtZlh/LwR5Iz/PHK9gUhN7DZ4YrVNyzYF3mDMH5mAhJAOlirVKwpMQf
         OhMfr8yteT61VSqsaPgMFSGS8wvy2Lmo7QEsc2J/zcfePk0EutyRHLCcn8gsb9hob/n6
         t1FfA9TGIg3SCYAl1LsPxpVjIXSnSUOD9NFmm+eol8Ww8CB9NUlmboUPnhg6geB1GPv/
         FOrA==
X-Forwarded-Encrypted: i=1; AJvYcCWyzlKx8+2guKpDCYg6qOsAyPll9eQrhoAaibA/Ji3VYfoVKpROgJ2xpM5AVbaFJOUzoHFN+L6IDnO0@vger.kernel.org
X-Gm-Message-State: AOJu0YzjtIXaIcLdUkMdc+oVtcAiFaYozyRa/8muneb7Hlr9dQjvW4H5
	yXHpAE4xVNXNppQwDeafXkVJjQ5MgsawALTXm+/YGcNXMlI2qStJv8P2OfafKkimNrO6cAUwo8M
	=
X-Google-Smtp-Source: AGHT+IE+uR+GCHjQVYhuQdxeYsys6kK2oY8K2iWO7DjnkU3Olxt1r8yCBnaBOj+1tEZs7ijoXBB/yw==
X-Received: by 2002:ac8:7f88:0:b0:458:2756:fdb with SMTP id d75a77b69052e-45860329264mr131050981cf.29.1726271009170;
        Fri, 13 Sep 2024 16:43:29 -0700 (PDT)
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com. [209.85.219.42])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-459aad24eebsm1315051cf.82.2024.09.13.16.43.23
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Sep 2024 16:43:24 -0700 (PDT)
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-6c3567a143eso22255636d6.2
        for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 16:43:23 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVQz655gx6OURevierakFsBe2LcGNqNelktad2E5nQ42ftYjkQAQNyQdtcHZ3tZJitLevJQ6VUfjtiC@vger.kernel.org
X-Received: by 2002:a05:6214:390a:b0:6bf:7d3c:a64d with SMTP id
 6a1803df08f44-6c573570b31mr113649466d6.32.1726271002581; Fri, 13 Sep 2024
 16:43:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240911072751.365361-1-wenst@chromium.org> <20240911072751.365361-8-wenst@chromium.org>
In-Reply-To: <20240911072751.365361-8-wenst@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 13 Sep 2024 16:43:10 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VL3nA8hwC8Ejy9T0ZWdYKxMjts8fgF7Y3CO507njOKkg@mail.gmail.com>
Message-ID: <CAD=FV=VL3nA8hwC8Ejy9T0ZWdYKxMjts8fgF7Y3CO507njOKkg@mail.gmail.com>
Subject: Re: [PATCH v7 07/10] i2c: of-prober: Add simple helpers for regulator support
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

On Wed, Sep 11, 2024 at 12:28=E2=80=AFAM Chen-Yu Tsai <wenst@chromium.org> =
wrote:
>
> +static int i2c_of_probe_simple_enable_regulator(struct device *dev, stru=
ct i2c_of_probe_simple_ctx *ctx)
> +{
> +       int ret;
> +
> +       if (!ctx->supply)
> +               return 0;
> +
> +       dev_dbg(dev, "Enabling regulator supply \"%s\"\n", ctx->opts->sup=
ply_name);
> +
> +       ret =3D regulator_enable(ctx->supply);
> +       if (ret)
> +               return ret;
> +
> +       msleep(ctx->opts->post_power_on_delay_ms);

Presumably you want an "if (ctx->opts->post_power_on_delay_ms)" before
the call to msleep() since it doesn't check that for you.


> +/**
> + * i2c_of_probe_simple_enable - Enable resources for I2C OF prober simpl=
e helpers
> + * @dev: Pointer to the &struct device of the caller, only used for dev_=
printk() messages
> + * @data: Pointer to &struct i2c_of_probe_simple_ctx helper context.
> + *
> + * If a regulator supply was found, enable that regulator.
> + *
> + * Return: %0 on success or no-op, or a negative error number on failure=
.
> + */
> +int i2c_of_probe_simple_enable(struct device *dev, void *data)
> +{
> +       struct i2c_of_probe_simple_ctx *ctx =3D data;
> +       int ret;
> +
> +       ret =3D i2c_of_probe_simple_enable_regulator(dev, ctx);
> +       if (ret)
> +               return ret;
> +
> +       return 0;

Instead of the above, just:

return i2c_of_probe_simple_enable_regulator(dev, ctx);

I guess maybe you'd have to undo it in the next patch, but it does
make this patch stand by itself better..

Although I'd also say that if it were me I might just get rid of the
helpers and inline the stuff. The helpers don't _really_ add too much.
3 of the 4 callers are just simple wrappers of the helper and I don't
think it would be terrible to inline the last one. I guess with the
next patch when you add GPIOs it maybe makes more sense, but even then
it feels like a stretch to me. Anyway, feel free to ignore if you
want.

> +/**
> + * DOC: I2C OF component prober simple helpers
> + *
> + * Components such as trackpads are commonly connected to a devices base=
board
> + * with a 6-pin ribbon cable. That gives at most one voltage supply and =
one
> + * GPIO besides the I2C bus, interrupt pin, and common ground. Touchscre=
ens,

Maybe speculate here that the GPIO is often an enable or reset line?
Otherwise you leave the reader wondering what this mysterious GPIO is
for.

