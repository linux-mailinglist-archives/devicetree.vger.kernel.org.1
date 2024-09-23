Return-Path: <devicetree+bounces-104622-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DB7997F123
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 21:13:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C0F962822B3
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 19:13:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 778D5181BA8;
	Mon, 23 Sep 2024 19:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="kqO1ticR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B67DC17BCC
	for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 19:12:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727118773; cv=none; b=fH/il4uzmVhlHluNKBscxIkSSRXxNlFKRgBevBxRVqSkgcq0+1/ifx2M25zw/GGlZm/6S0q2BncDM/RArDZPkvoX1YGIWJbmPYX6+oDN4VTDPvX9e4aKyU+JGQl4gDuf5ii05wily/BKdVP5oV/IWi9sdrSMUAJbldkwyLHwSxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727118773; c=relaxed/simple;
	bh=xf364lZIbnjp5yXv/kYTrKS69WYtJ5dXPHV7dU2ANQM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Zqj4pzzgyj3QQeJ15KLNX0EWMiBkTHBootyAoVr8i3npP2tYFYb+D075FvN8YkSTG3z8W4ZUzT0ZvevxKjAgqKQrsSdPPjQpqxTpu/Up9A7LlTDZyiDSoquEJ6bNbJPeI+GXySREdOhOK4rc3rEjTIQSdBB5JIrtRje3QbmBJkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=kqO1ticR; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-53659867cbdso6533601e87.3
        for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 12:12:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1727118766; x=1727723566; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FTdpdNtDHKc5MwXK6gfkOgHrOXbWdY15It+qZL/P+lM=;
        b=kqO1ticR8yLNsRHULnVv7lPv3iv0MDCWGNaUvL3a1s/lvyfip8Uhuu2brStjzclc21
         oyFlx0jYduIPuo2KBVreGk99uIvUC1vgjdBjhvjQQLd9+ydb/5ymUJeBReaf02hBj71r
         BgIpEYDEq8W5VydvoFe78hEXsgCg7bS17Fruw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727118766; x=1727723566;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FTdpdNtDHKc5MwXK6gfkOgHrOXbWdY15It+qZL/P+lM=;
        b=Mu32DcFni+gAIrclTGHSvsX/n4Ozjde0hSCmxXmGkyJAmcpGstW767knmitCQTXGET
         VraJO5N8d2I0Hqhe2MrnqoXR3/a9z/M98yWyQeFFYOhGESStKHgICbZIMpOIrT/jv2tw
         h8mQBF1LkLtXpWtzX3MJvOFeKCwXyVuUU9q+M49vKRXxNw9ISti4u4E/XcIDxZeLfEsQ
         YUnmPxccPka2jMcO+G76W1zIiZ8bKelADlsYpJj2Eo5FPtf7VsyQZ7v4CCG80OPzE+DG
         x+9pagqiSLiQ3Ne+ypUkhODNWvPAwTjP0xTSOGPwF3d9pnLa1cTgUJdNFj9nhll2OPEn
         XJUA==
X-Forwarded-Encrypted: i=1; AJvYcCVjNsNGK4q0vMxz5vDM14CHj2W1/KlObg2J8W290kxZjBvb2+wwclPbp5aDy1+BpPT3Xr6nexcMzWZT@vger.kernel.org
X-Gm-Message-State: AOJu0YzK9rD06tYAq9W7rhL3X9NJcllc9rpHUjxHxtEsPONCK+ZbaGpL
	ZjotArjAyZD+wmxghq9tiYJbkMk4ZFgvyMBGPAWPcDSzkiWGrqDjSqzU3h8KnUALpXi4WrDGc2i
	jitwg
X-Google-Smtp-Source: AGHT+IEvag7JrlJ5sQgRX5prygV/ZQBsVQmAW7GpOqDB942uG0WB+AnIPrghVeybNyQAzesXDYG6Cw==
X-Received: by 2002:a05:6512:2313:b0:536:55cc:963e with SMTP id 2adb3069b0e04-536ac32f0b3mr8158254e87.44.1727118766207;
        Mon, 23 Sep 2024 12:12:46 -0700 (PDT)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com. [209.85.167.48])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5368704c3ecsm3383678e87.110.2024.09.23.12.12.44
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Sep 2024 12:12:44 -0700 (PDT)
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-53659867cbdso6533433e87.3
        for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 12:12:44 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCX3DtL4AoE0iG6uRKWeRNb7MAC3bhL3QgTgjkbFplGJ0vGOYImwuhCV2rPndJct29D2FqDda/Zf31WV@vger.kernel.org
X-Received: by 2002:a05:6512:2309:b0:536:5625:511f with SMTP id
 2adb3069b0e04-536ac32f109mr8497177e87.45.1727118764064; Mon, 23 Sep 2024
 12:12:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240911072751.365361-1-wenst@chromium.org> <20240911072751.365361-9-wenst@chromium.org>
 <CAD=FV=XvPA0UC87fQ+RvFzPv9qRSEP6eQhT79JOx9Arj87i9Mg@mail.gmail.com> <CAGXv+5EcxGfdzvarg8hmk1zR9X0s8KUzayQdxfWTrasEGpj=1g@mail.gmail.com>
In-Reply-To: <CAGXv+5EcxGfdzvarg8hmk1zR9X0s8KUzayQdxfWTrasEGpj=1g@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 23 Sep 2024 12:11:49 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Wv1uFmxFsaxT9tY=-fwnPsXDjnabNxQ-cK3hm2a9Wo7A@mail.gmail.com>
Message-ID: <CAD=FV=Wv1uFmxFsaxT9tY=-fwnPsXDjnabNxQ-cK3hm2a9Wo7A@mail.gmail.com>
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

On Tue, Sep 17, 2024 at 5:41=E2=80=AFAM Chen-Yu Tsai <wenst@chromium.org> w=
rote:
>
> > > +static void i2c_of_probe_simple_disable_gpio(struct device *dev, str=
uct i2c_of_probe_simple_ctx *ctx)
> > > +{
> > > +       if (!ctx->gpiod)
> > > +               return;
> > > +
> > > +       dev_dbg(dev, "Setting GPIO to input\n");
> > > +
> > > +       gpiod_direction_input(ctx->gpiod);
> >
> > This is weird. Why set it to input?
>
> It seemed to me this would be more like the initial state, without knowin=
g
> the actual initial state.

In this case, though, you're trying to turn off the resource, not
trying to get back to the initial state. IMO deasserting the GPIO is
the way to do this. If the output needs to make it an input in this
case then it can use some type of open drain mode.


> > I would also say: given that you're providing a parameter anyway and
> > you're giving the GPIO name, can you please move away from the "raw"
> > values and move to "logical" values?
>
> I disagree. When hardware engineers design for swappable components, they
> likely look at the electrical compatibility of them. In this case, an
> active-high "enable" pin is electrically compatible with an active-low
> "reset" pin. If we use the logical value here, then we would need more
> logic to know when the logical polarity has to be reversed.
>
> Note that this doesn't work for components that are electrically
> incompatible. But in that case a lot more board dependent code would be
> needed anyway.

As we talked about in person, that made sense in the previous version
of the patch where you were looking for all GPIOs willy-nilly. Now
you'll be specifically asking for a GPIO by name and we should honor
the "active high" or "active low" nature of it.

-Doug

