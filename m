Return-Path: <devicetree+bounces-95999-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0314895C5CD
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 08:50:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 767E11F234A4
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 06:50:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D7921369B1;
	Fri, 23 Aug 2024 06:50:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Gvv+tMGc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFAAE1311AC
	for <devicetree@vger.kernel.org>; Fri, 23 Aug 2024 06:50:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724395814; cv=none; b=oR8X6raHQUGe82LzjcIoSTvZKD959a7bsVUjNK2Kzs5ofu+nD3O3EMaVYiRcmwNBB08t1EjlWXloVehm7RvlO60Jff0UoBZwFLmldNlknCqT0B/oeLtfdk7QlCnNSTGo0oyzErvqaf3hC1F+fYrZD1XR6E5WBCsZT/p2SObcXOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724395814; c=relaxed/simple;
	bh=TB2ZVz2m724zZx6Ujp8dGDELTqfijkJibPZvF/Zp9rA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UK11+lSD/f8y5k43gE6Y7ZPyNkWEBPzsOqlzunDAmt+6d2Lvn6/gMXNT/lAcDgXBiOfPZyrK309AngkU+zvIv24None+Y4AJYT5gmZNhzcWGvFd/boAh6a7Q75mnHW75LKetvBSgp69HTkeXbGMZGpOXOVNL0ACPbUtIhdyhVbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Gvv+tMGc; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-53436e04447so772591e87.1
        for <devicetree@vger.kernel.org>; Thu, 22 Aug 2024 23:50:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1724395811; x=1725000611; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TB2ZVz2m724zZx6Ujp8dGDELTqfijkJibPZvF/Zp9rA=;
        b=Gvv+tMGcaLCAIo95DPOu4NGSBE+k6B01zkdprZ62Qutz19xQa91MkTYV4l9iQNOALQ
         h1vkNduotd17W0OBWHEA42DcDmWOUCk5RZzEnKarDeYtqmhpxSjQSb3YRPo2RgEXb4aN
         zoJVr8Pj7lPqp1BHY0GAtRGoH6mqIDidRTQos=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724395811; x=1725000611;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TB2ZVz2m724zZx6Ujp8dGDELTqfijkJibPZvF/Zp9rA=;
        b=lgnbMP6dUHhF+KwhLmuIDSEmGCDJZHuAkb/y9EroibKJJqA6k3C0oaGdhGefELjhbI
         5h1syddNvLCM3fzVLNzgICTpZoA6ItWvhFUzqTWKYdAp+hnC9DITI93z2sMVnTWRvcnF
         3bSf2ccyzdt+RC4v6MmwtSg4ZQfOpWbUL6idW/ng3HRZUoSp3X8iv67vB8yXaCnTG1+5
         /4IwX2XCPsYYi/XILWSwxSF7/Piuk0wMMtNtBPfE1LQMtzfD0dhWX0xhyt+H6U1tYniC
         3oU0up1L29TEeDdr5czO810ywIIipt8A0Ic2RRnuvdQ/J8qWOAVfmZU8zC/K2gJ5JRZY
         qaxg==
X-Forwarded-Encrypted: i=1; AJvYcCVkHxn5FYE+mNgteuPM4sYhhF54E7fZY37jUekog2KlaH4oPn4mVQK8hJ+HntkkMzJnix9ty72YEwqy@vger.kernel.org
X-Gm-Message-State: AOJu0YzunHkmlILqKdn5FJrdl6Nkhj/CR9mv4mT+h+U63z1x4G1NnO96
	l3uTdD42gy492fvfjUhxYa54UCmtGVXFjbsySW+FvfgKFyM/Rl8/WSUk8U/zruoS6nZH2wkHDwu
	nUBbRKyVS1yeTP5HKilxeAgIST2HOB7M6BNv8
X-Google-Smtp-Source: AGHT+IGa3g4OYj5kLrZwDfDw6Q/Usbiq0edBIdEx656twbCcRzHHZoU+PFE0vnmEsF1p09zxCx1iToHq1XRcOx6R0cA=
X-Received: by 2002:a05:6512:3052:b0:533:4613:21be with SMTP id
 2adb3069b0e04-5334ca861e8mr1890209e87.18.1724395810568; Thu, 22 Aug 2024
 23:50:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240822092006.3134096-1-wenst@chromium.org> <20240822092006.3134096-3-wenst@chromium.org>
 <ZsdBddTDuvNasHNq@smile.fi.intel.com>
In-Reply-To: <ZsdBddTDuvNasHNq@smile.fi.intel.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Fri, 23 Aug 2024 14:49:59 +0800
Message-ID: <CAGXv+5FjwxGQgV6SdLfTeNRYbpcgwkEnCWvaZiWh4rs3bhs-2A@mail.gmail.com>
Subject: Re: [PATCH v5 02/10] regulator: Move OF-specific regulator lookup
 code to of_regulator.c
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

On Thu, Aug 22, 2024 at 9:47=E2=80=AFPM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Thu, Aug 22, 2024 at 05:19:55PM +0800, Chen-Yu Tsai wrote:
> > There's still a bit of OF-specific code in the regulator device lookup
> > function.
> >
> > Move those bits of code over to of_regulator.c, and create a new
> > function of_regulator_dev_lookup() to encapsulate the code moved out of
> > regulator_dev_lookup().
> >
> > Also mark of_find_regulator_by_node() as static, since there are no
> > other users in other compile units.
> >
> > There are no functional changes.
>
> ...
>
> > +/**
> > + * of_get_child_regulator - get a child regulator device node
> > + * based on supply name
> > + * @parent: Parent device node
> > + * @prop_name: Combination regulator supply name and "-supply"
> > + *
> > + * Traverse all child nodes.
> > + * Extract the child regulator device node corresponding to the supply=
 name.
> > + * returns the device node corresponding to the regulator if found, el=
se
> > + * returns NULL.
>
> At the same time you may fix kernel-doc warnings (no "Return" section) in=
 these
> three (on your wish you may fix others in a separate change, but it's not
> related to this series).

As you said some other functions are missing it as well, so I'll do a
patch separate from this series to fix them all.

> > + */
>
> ...
>
> > +/** of_regulator_dev_lookup - lookup a regulator device with device tr=
ee only
>
> Something went wrong with the indentation.

Will fix, and also add a "Return" section.


Thanks
ChenYu

> > + * @dev: Device pointer for regulator supply lookup.
> > + * @supply: Supply name or regulator ID.
> > + *
> > + * If successful, returns a struct regulator_dev that corresponds to t=
he name
> > + * @supply and with the embedded struct device refcount incremented by=
 one.
> > + * The refcount must be dropped by calling put_device().
> > + * On failure one of the following ERR-PTR-encoded values is returned:
> > + * -ENODEV if lookup fails permanently, -EPROBE_DEFER if lookup could =
succeed
> > + * in the future.
> > + */
>
> --
> With Best Regards,
> Andy Shevchenko
>
>

