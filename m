Return-Path: <devicetree+bounces-101910-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 895EF974B90
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 09:37:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5725C28C91E
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 07:37:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D8F8139CEC;
	Wed, 11 Sep 2024 07:37:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="WqUxhFuV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 537188494
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 07:37:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726040270; cv=none; b=jEfilAoa5lOIcpXPYEWMOArMDCqiaABiiPleNVo/RNAuroLFLqXis3tKoyOEcU82HGg7TzyNOf+LUmolZlJ2L8+UjbRG2f5cpKYfAdItlmpoXtJa7Wf78Lr6vpDLpat/0JlGZLWu194e2RyHDOLUyF3gXh9LJT6qoIcF17OP9sQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726040270; c=relaxed/simple;
	bh=OJiD0dE4D2l6iH8UbnBaYGFLq+atL+gXbKu7MBslUAo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WHTG1B6kWwhwCy/LBIMvb8JSqjm+lg+4s4Ci/gZ9jaa07r/KAxBK6ARWRhTLlgmM+rundRErckEKa67jIrGPO5JJA2/XH9k8Xgmsp+H1P/K7mCy2ax7stom2EudgFlgqpEpI6Yum3GDaIsDpj8pnkKUOTDvxS0lx7Mjj/S4MYdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=WqUxhFuV; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-53653682246so2125964e87.1
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 00:37:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1726040266; x=1726645066; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0LtJuWg5rZzkpKKkENXUM608sDYwm9QANqJ5OTuJVDE=;
        b=WqUxhFuVufJcpgwK15dyx02jG6BG70LedEXCT1v8ha0krIhzSxKpPVCNcEum6aO/EF
         V2Txh/7lmD78OmUDCEgEvy/lF7EynwfGEUpQWAJTpNd+0ZxOS+A9N4o3XW2lHfZF9Qvq
         Vx9o01uEBVIB9tisGWwJfvIxMrFqCsIQEeAGE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726040266; x=1726645066;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0LtJuWg5rZzkpKKkENXUM608sDYwm9QANqJ5OTuJVDE=;
        b=R0DNfyEF+HrTrzrryEqHjfgsU4/yUYFVow24ZXAj30QPtaJMAUHBG/q2YCXtRjEo3R
         xSg9C3oh5uk77LlbGlK/L2AFLJRMbb7t9x3Lk+o9dM69u1hutFattbmdF1/V6P1VFCB9
         4RHKVPgoi2fy5v5hWuv9IKYUeuLopfP1AfKNc0cN9sbVAyOH4DrhTeAHos4q48FTki0F
         uwkhSVGEeeCBDM3cIIC42RfANRELxa0ery1A5fZt9Qgrx66nXnI2+huvE4+cuA/8Emj6
         kf2u2fghiRMWAEr6r8Km6lrikus8Y3KjRz/Js4M7TYfSxx6vkd0Hg5kv9jyA16R80Lds
         Ko4A==
X-Forwarded-Encrypted: i=1; AJvYcCW+QE+eB/zXjmGb9hihJJrErpj7zT4iQ/WuoCJAd3BEw1O8iISBN0Jn9lj1NhFldRJ03Rf9cyUjjhVn@vger.kernel.org
X-Gm-Message-State: AOJu0Yyf+2dSX+GLnvC63b/9TS4itJ8C0pB9c0YvTsBg5ylvgNfkQkVx
	cOQZJjkziir6AfkW6OCfWUSGX0q//0JG7uCXyyZWWLFJw4JgzdFGjxvhBBEm5tni6cfZOzeWNta
	RbWe1NVuLB4res6PIfwADBH9t8XVLyYj4jE5F
X-Google-Smtp-Source: AGHT+IEd4894jUMhTj+lpuZUCwhAQoDemTfiQND7C5Rfboo0QkW+QbXwdarpgS+S2rznD6UFho/GB5hhLLZk1Dxbtzw=
X-Received: by 2002:a05:6512:b23:b0:52e:74d5:89ae with SMTP id
 2adb3069b0e04-53673c95c1fmr1178265e87.39.1726040266114; Wed, 11 Sep 2024
 00:37:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240904090016.2841572-1-wenst@chromium.org> <20240904090016.2841572-7-wenst@chromium.org>
 <ZthjSK9N9z11YXi2@smile.fi.intel.com> <CAGXv+5GrW0EZZw6HVY7ALvm0dBj5Wwrvp02vtTPZYwqxxiZQyg@mail.gmail.com>
In-Reply-To: <CAGXv+5GrW0EZZw6HVY7ALvm0dBj5Wwrvp02vtTPZYwqxxiZQyg@mail.gmail.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Wed, 11 Sep 2024 15:37:35 +0800
Message-ID: <CAGXv+5Hrz2rA1_eAY8S96ankeWS4wr9EX-hr1LUY5JGx=FoNPQ@mail.gmail.com>
Subject: Re: [PATCH v6 06/12] gpiolib: Add gpio_get_property_name_length()
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Wolfram Sang <wsa@kernel.org>, 
	Benson Leung <bleung@chromium.org>, Tzung-Bi Shih <tzungbi@kernel.org>, 
	Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	chrome-platform@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>, 
	Johan Hovold <johan@kernel.org>, Jiri Kosina <jikos@kernel.org>, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 9, 2024 at 10:45=E2=80=AFAM Chen-Yu Tsai <wenst@chromium.org> w=
rote:
>
> On Wed, Sep 4, 2024 at 9:40=E2=80=AFPM Andy Shevchenko
> <andriy.shevchenko@linux.intel.com> wrote:
> >
> > On Wed, Sep 04, 2024 at 05:00:08PM +0800, Chen-Yu Tsai wrote:
> > > The I2C device tree component prober needs to get and toggle GPIO lin=
es
> > > for the components it intends to probe. These components may not use =
the
> > > same name for their GPIO lines, so the prober must go through the dev=
ice
> > > tree, check each property to see it is a GPIO property, and get the G=
PIO
> > > line.
> > >
> > > Instead of duplicating the GPIO suffixes, or exporting them to the
> > > prober to do pattern matching, simply add and export a new function t=
hat
> > > does the pattern matching and returns the length of the GPIO name. Th=
e
> > > caller can then use that to copy out the name if it needs to.
> >
> > > Andy suggested a much shorter implementation.
> >
> > No need to have this sentence in the commit message, changelog area is =
fine.
> > But if you wish... :-)
>
> It does seem out of place without any context. I'll move it to the
> changelog area. :D
>
> > > Suggested-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> > > Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> >
> > ...
> >
> > > +/**
> > > + * gpio_get_property_name_length - Returns the GPIO name length from=
 a property name
> > > + * @propname:        name of the property to check
> > > + *
> > > + * This function checks if the given property name matches the GPIO =
property
> > > + * patterns, and returns the length of the name of the GPIO. The pat=
tern is
> > > + * "*-<GPIO suffix>" or just "<GPIO suffix>".
> > > + *
> > > + * Returns:
> > > + * The length of the string before '-<GPIO suffix>' if it matches
> > > + * "*-<GPIO suffix>", or 0 if no name part, just the suffix, or
> > > + * -EINVAL if the string doesn't match the pattern.
> >
> > Should be %-EINVAL as we agreed with Bart when I updated GPIOLIB kernel=
-doc.
>
> Ack.
>
> In the regulator cleanups I did, I used -%EINVAL instead. But then I
> realized that constants aren't really cross-referenced. I probably
> have to go through all of them to fix those up.

FTR this patch ended up getting dropped from the series as it was no
longer needed. However if folks think there is still value in this patch,
I can still send a new version.


ChenYu

