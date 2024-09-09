Return-Path: <devicetree+bounces-101180-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 06CF5970C40
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 05:24:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8879D282731
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 03:24:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC3B51AC8B0;
	Mon,  9 Sep 2024 03:24:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="MGPupXxa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 044931ACE03
	for <devicetree@vger.kernel.org>; Mon,  9 Sep 2024 03:24:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725852271; cv=none; b=YkyuiD6aKj5dZPXgTqyg/EayL7jX6XY4XAzkxQAGjgHNzjisB/rxwMFC1Z/4gntcKhrO8BCNjvTQw/EdJIlFbnu50CgbA6ZoaUTnX2TDjueGI5Q3YenD5I9NhPOEqNalQ0etO5mDqyUr1hR0wdnExKMSGgoQg6DepVwTJZiGGDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725852271; c=relaxed/simple;
	bh=G7T4bpgolBzILEWM6GVCDO1R1TBWpnOO2nt9s8m4VzE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Content-Type; b=V5VEHva+jYUK6jEV4wUA90FhNo+HfEBTLxNjzqgjczz/pU6t6tdg1UGmZ97c3fNv5xaLMzOqPbOvOXAgQ4sfqA4q+sTyP2XFUmJgelI40pheASaWw234QbE11mZsS6wr5+Qrhb8JFIYlunUQgERQpWDOJhz+kDx+a4CshetKHEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=MGPupXxa; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-53658f30749so2815478e87.3
        for <devicetree@vger.kernel.org>; Sun, 08 Sep 2024 20:24:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1725852268; x=1726457068; darn=vger.kernel.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=frs1KSFCSS0JpElWdth4hB4NSBy03nJOWJU9+47Nzc4=;
        b=MGPupXxaY+GLilry78XDZ1cUQnaGoM+mywUxLa5xnscjCFhZVzak1nvAbvaF7jzP76
         T7IJbFE48BfV4bJr8ztGSaxkja6OY2ifoz5hrPh0PlhJffr+i+iYlPsZzWF5wkAu2vQB
         qnWkNv9wYzvFSfwVHAEOk1oTFErQSLLKZS3Iw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725852268; x=1726457068;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=frs1KSFCSS0JpElWdth4hB4NSBy03nJOWJU9+47Nzc4=;
        b=A+8zakf3Ox0QekUGFIqtaqIMxjoMeaIbb6bD2xv89/zgIB5dUYLj3HL5gIQwmECEFw
         /DKa1ZhXUWdYGYhBVeReHLdKmJ4MeRy8HYxDMtXN0saRMvwK1jWYBBiY1s//ig44NR3q
         IQW9/6DByMz7+2/L6BH+GWTeStMchFOJ0sU4CaWu8m2NQgHctXirRSIp9421n6cPRj9P
         vhr6ACaUfJOwY6Xsol9neI/suuxuEYBeloxnNQ/6Of2JQ/HwCdeOE03XGrLz0KaG3IUN
         VZRWevXvb+c4xMqBA4rDGgKk62/FM9XjmxkG+WaRSdwMbu1K/DiihP5kUt4csmzcd9UK
         jaxg==
X-Forwarded-Encrypted: i=1; AJvYcCXyIgJd64Dd/l92EmZwTteOfhFcFuFwSP7xTQrRe8XZ+xGZjQnp21XCKxxbREqbuYXr1LfATqyPkce+@vger.kernel.org
X-Gm-Message-State: AOJu0YyBWd6mHblBQLSAbb8mnbx5NziialJBA7P0wqME41wWKh1Tew4m
	36sjRrbNLLR3quNW+6QWgRugyCoV5cSpIuK/UIdqlwXrzgiWjxNr4tq8O+7rL2l8bYo7w5QeCw2
	K7B17LDxBueNDp7mnVpOk5Isk42oWBUfOHQLX6BIkDQzhrDnSVg==
X-Google-Smtp-Source: AGHT+IGGXKgPLETTHLUWOOhnE7DlxTOB7pQ5xz6dQdhouSMW1QPkyBdJaUNfm4Ni6IhLXaV+O7X1PD7KISZ/W6Rojug=
X-Received: by 2002:a05:6512:ea6:b0:536:5551:b73f with SMTP id
 2adb3069b0e04-536587b547emr5811005e87.31.1725852268014; Sun, 08 Sep 2024
 20:24:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240904090016.2841572-1-wenst@chromium.org> <ZtyGJhm-0GEEFfYf@shikoro>
In-Reply-To: <ZtyGJhm-0GEEFfYf@shikoro>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 9 Sep 2024 11:24:17 +0800
Message-ID: <CAGXv+5F8rTLdYGjkxyJqUxs=W_L9gGgpHRZZ250swbvDR=zJMQ@mail.gmail.com>
Subject: Re: [PATCH v6 00/12] platform/chrome: Introduce DT hardware prober
To: Wolfram Sang <wsa+renesas@sang-engineering.com>, Chen-Yu Tsai <wenst@chromium.org>, 
	Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Wolfram Sang <wsa@kernel.org>, 
	Benson Leung <bleung@chromium.org>, Tzung-Bi Shih <tzungbi@kernel.org>, 
	Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	chrome-platform@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>, 
	Johan Hovold <johan@kernel.org>, Jiri Kosina <jikos@kernel.org>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Sep 8, 2024 at 12:58=E2=80=AFAM Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
>
> Hi,
>
> this series gets quite some review from people I trust. This is awesome.
> So, I will keep to some high level questions:
>
> > undiscoverable devices" [2] series, but follows the scheme suggested by
> > Rob, marking all second source component device nodes as "fail-needs-pr=
obe",
> > and having a hardware prober driver enable the one of them.
>
> Where is this "fail-needs-probe" documented? I neither see it here nor
> in the dt-schema repo.

You are correct that it has not been documented yet. I will send a patch
to the dt-schema repo.

> > The other case, selecting a display panel to use based on the SKU ID
> > from the firmware, hit a bit of an issue with fixing the OF graph.
> > It has been left out since v3.
>
> Does it make sense then to add touchscreens only? Will the panels be
> worked on once this is upstream? Or what is the way forward?

The devices this patch series targets all use eDP panels, which are
more or less directly probe-able.

The panels mentioned for the second phase are MIPI panels, which require
specific power and command sequences and thus are not probe-able. This
will be worked on once this part is done. For the panels it is entirely
handled in the chrome platform device tree prober. See the following
patch for an earlier version of it:

    https://lore.kernel.org/all/20231109100606.1245545-6-wenst@chromium.org=
/

> > Wolfram, would you be able to handle the late PR? Assuming you get a
> > chance to look at the patches that is.
>
> Yes, I can do this, but...
>
> >  drivers/i2c/Makefile                          |   7 +-
> >  drivers/i2c/i2c-core-of-prober.c              | 437 ++++++++++++++++++
>
> ... this is quite some code. Would you be willing to maintain it (i.e.
> please add a MAINTAINERS entry then). Kudos for not touching other parts
> of the I2C core!

Sure!

> All the best,
>
>    Wolfram

Thanks. There are still some comments to address, in particular making
the prober more of a pluggable framework and exposing more code as
helpers.


ChenYu

