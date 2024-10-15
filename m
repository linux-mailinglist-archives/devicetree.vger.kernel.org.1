Return-Path: <devicetree+bounces-111558-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A22899F495
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 19:59:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2E0431F236E7
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 17:59:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC9761FAF00;
	Tue, 15 Oct 2024 17:59:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="C0m8Ee5m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2778A1FAEE8
	for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 17:59:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729015159; cv=none; b=PMSWXdYfNkB5iSb/o0iyjhQo41E1bR4KxZg2t+rhJ6UmU7kzf0kEJ+slqUkD0NaKO8lgHDyb9LL5/ak76K5bgiEPmEH1nc5TJDwt5Gw1eqru+hmUP5GVMO5MQAoWOmgL+J9brHoWvqVfaCG/1iASWre0cGgWpUbO6HOyTkVkHO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729015159; c=relaxed/simple;
	bh=8xSHcy2PuAPSvZBu9Eml4zzV7wYxfR0IjepjU1wiaRw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=is8eVWhrnQyk6ZCrEc8HIFiin8oJ/1DevIKcQFhWKXO6kCf17WCBqPmvQFJ++KMINs7JJPKlpBfLj+9l1ghHcosz0srz0gmLMX972Qp4HTVjr3PEYsc/Z35Tv+nag5XP8eKKjxDgkuhna4hnI/HmSy5svSuRNnFE8QaqWtkSArk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=C0m8Ee5m; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-5366fd6fdf1so6742196e87.0
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 10:59:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1729015155; x=1729619955; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FQgdud0CKtJUsCxMGehxz9oQ+EPp7xHVsXi0/0jf+Z0=;
        b=C0m8Ee5mcfZsZ3hq3VzcwHvmGnSTCYSOTQ4f5cB3QEWt0rNz/WJg1KZ+RVBg1XNjyt
         27Jya9062EyautbTECD3dmJLbd4q+yRJpvfID+HrsS0iw7UvK1R8axvnahD6WUSyVDgH
         fHUfNgDatTcwECHYYxqr6qVa23oeJ09M6giTo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729015155; x=1729619955;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FQgdud0CKtJUsCxMGehxz9oQ+EPp7xHVsXi0/0jf+Z0=;
        b=Rygdl6r6F3PG4WimL/J2kWb2tyILYrClWaQDX1L1vfyCtBDIr1keZVUTlwt5ISM4au
         FMdIs3P0sKFBDDeDq+ru1wBfmgmtNlTtyXinSK3gFikBmRhGoDxtTpPPpokZlahX+Tvu
         hrzlgyBQ1BIX2Qn+uTkeyoLwSLHqXlTNZrGnIRIO7ZJUqxRSf+o3Jsl5BMpR6YqVrKrp
         /LNsvINI+4HjvWSk8FstqNMLuJ3bfW117kspEFTSzbcsnbE/481E+tejvBJq2HCbLoUf
         y6SETvu3qtHflXmMrGTq+soBrSR0R5QdZfY609Gs5B1io+SgcAG6pd8YmwIbsjiakm73
         66tA==
X-Forwarded-Encrypted: i=1; AJvYcCUGSZ5YaiZdWyx4biKT7Pxj+32CUF0agdDpGujqrCgMhk09vnUEBvzvzMoo21JbSAYXX4AfgUe6BE5g@vger.kernel.org
X-Gm-Message-State: AOJu0YyL1cfHnKLX/MFK7e5lXfmOQLp7qmYE8zBixq8PgX0Cu+1J0Kk4
	PuchFmfT8htcjdnwoS1nNSgNjvGqvQofdadYyS2pp4vSZKrqTnJvW0TDGfVIhsavzzIQlzUzYbQ
	Pld+n
X-Google-Smtp-Source: AGHT+IGDLKLMOGk1Y+QYtL7Z7yO9sXxuq7QAbJYF9O59jlt9ndqRI81LGkxb3XDFu2Iyr1S4PipV8w==
X-Received: by 2002:a05:6512:e85:b0:539:ec29:1cc3 with SMTP id 2adb3069b0e04-53a03f2da18mr918107e87.30.1729015154696;
        Tue, 15 Oct 2024 10:59:14 -0700 (PDT)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com. [209.85.167.52])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539fffb331fsm225576e87.116.2024.10.15.10.59.12
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Oct 2024 10:59:14 -0700 (PDT)
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-539f0f9ee49so3064337e87.1
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 10:59:12 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWAk/qAyuwW0rgGz3GzbFeWwI3aYlqfv5Qzx/p5hyv+DnEEmZWTFcmPT6NMJlGD8e46s3PY1D2oooAN@vger.kernel.org
X-Received: by 2002:a05:6512:1091:b0:539:f13c:e5ce with SMTP id
 2adb3069b0e04-53a03f77ea6mr882102e87.46.1729015152112; Tue, 15 Oct 2024
 10:59:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241008073430.3992087-1-wenst@chromium.org> <20241008073430.3992087-7-wenst@chromium.org>
In-Reply-To: <20241008073430.3992087-7-wenst@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 15 Oct 2024 10:58:55 -0700
X-Gmail-Original-Message-ID: <CAD=FV=X+_iYi0_RSakh6bzVYuNpiqUvjHTrL81n8h4dO+WZf9g@mail.gmail.com>
Message-ID: <CAD=FV=X+_iYi0_RSakh6bzVYuNpiqUvjHTrL81n8h4dO+WZf9g@mail.gmail.com>
Subject: Re: [PATCH v8 6/8] i2c: of-prober: Add GPIO support to simple helpers
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Wolfram Sang <wsa@kernel.org>, 
	Benson Leung <bleung@chromium.org>, Tzung-Bi Shih <tzungbi@kernel.org>, 
	chrome-platform@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Johan Hovold <johan@kernel.org>, 
	Jiri Kosina <jikos@kernel.org>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Oct 8, 2024 at 12:35=E2=80=AFAM Chen-Yu Tsai <wenst@chromium.org> w=
rote:
>
> +static void i2c_of_probe_simple_disable_gpio(struct device *dev, struct =
i2c_of_probe_simple_ctx *ctx)
> +{
> +       if (!ctx->gpiod)
> +               return;
> +
> +       /* Ignore error if GPIO is not in output direction */
> +       gpiod_set_value(ctx->gpiod, !ctx->opts->gpio_assert_to_enable);

I'm not sure I understand the comment. Does disable() ever get called
when set() wasn't called beforehand? How could it not be in output
direction?


>  void i2c_of_probe_simple_cleanup(struct device *dev, void *data)
>  {
>         struct i2c_of_probe_simple_ctx *ctx =3D data;
>
> +       /* GPIO operations here are no-ops if a component was found and e=
nabled. */

Instead of the above, maybe:

GPIO operations here are no-ops if i2c_of_probe_simple_cleanup_early()
was called.


Just commenting nits, so:

Reviewed-by: Douglas Anderson <dianders@chromium.org>

