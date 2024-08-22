Return-Path: <devicetree+bounces-95918-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EEA4895BDB5
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 19:48:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 39870B24DF6
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 17:48:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 608A11CF28E;
	Thu, 22 Aug 2024 17:48:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="QXo0LcLW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2FA91C9DFF
	for <devicetree@vger.kernel.org>; Thu, 22 Aug 2024 17:48:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724348890; cv=none; b=N5l44oYdRf1auEoCT10pqjea0gzHlkPeyVEnyipW2UQPOitNL/xA1SKObakkHaJUl63yVXkUy+p9KLxF/LnLUb7ICGWFaUx1Lsc3mOJO+9ITComoqyl1I4i4GCP//pE82vCIvxXjaaF1zsLPCpOgheo/h0nLJGNZP5SUuzDhyNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724348890; c=relaxed/simple;
	bh=oomnAfwkIIwMwMnJdWOjdg3zgHFTrar5w2PFkUayNGw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CDauPLQHr9l+/uCKGtoB8oBgv8COoWFk38HcH8u/XrDaFqSaWZjb2Wm+iXSl2ksFe9pUMuKSkZsAed+/fI/0a93kRHwunISH/g6brKSx620M05ZNDPWLKb1IuyL5+pzRQ6mJUxczgbN4I5IC00I8eLJ8+w7A6Keb1bZGyi45jRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=QXo0LcLW; arc=none smtp.client-ip=209.85.222.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-7a1dac7f0b7so66465785a.0
        for <devicetree@vger.kernel.org>; Thu, 22 Aug 2024 10:48:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1724348888; x=1724953688; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C6QLFS/223EGiUxs5tjmNPrl8Nvfi/fSGuus5YjHYKc=;
        b=QXo0LcLW09iymWoMYYPldWh6ZLq2evuhgdOGaPrjW813kMnXkwOwY60v5wHSpFm4am
         DHGE0acCYcXVjcOPxP3g/KrXuWZM923AfNX0SfkX66u3N8TRGw3hWHzKWowySvWw/3jY
         gixthQI+7bZFryyk1g3nhs9+yDtxuCAHs5G2ZQD7B/mNK7eRU3FFdLmzKGCRGSN/jmH3
         gDvCN5tCbGw+SoBA3nfwli6qccpvQa0XluEFUKycudH3evTc/ReiUoX7BvhmCiJNuX3R
         otb2BInmaZmysJQ/Lt0gnxKpQroVtdj6nNTJb5KrH0aw82oSOThbNNvP2UbXYC8GPPDT
         UFmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724348888; x=1724953688;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C6QLFS/223EGiUxs5tjmNPrl8Nvfi/fSGuus5YjHYKc=;
        b=WzaLO4+0EhOIkFiau4LuuqNGh36Dse81lryW9jJQ2tD/ZcEsZvEiKRxW8KlR8Tvmkl
         TPcC+350YrYNZ6HfCCSSYi029JcNrZ7EO1WpKaK5ujrh6H0vg2UXzvTE1Rmg0r2mqjM7
         gn3ip3jSIfJwBQwpjK1AtA3I7cycqYBA8Kl21JSIlmNT1wGSHCXWqZ9d+RBU6shWBws7
         Y+ltPUeZ2C4ujfMOHpuJFl11M5+mlF22Kkv2NmmPhUZfzajUELeWp6rVNji9RxMkEAGj
         KgdIfCFvd/ryIjO7kH8fxx5kYWn5X9tK8Usg6CRD0P4HhzLRc3Onu9U72lOxLjYfRa4L
         s5eg==
X-Forwarded-Encrypted: i=1; AJvYcCVttOVXjC2LtctbYgOHgH3J9KsaOcb2HBRbib9e6Bh+8WgXP/ia5SXjjCtn3BpcDeMkSZ0FkZtKw6P3@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+PCPKhJzWIVTvqJLh6iqUB6MePcZnh2KWBkNuwwWQ7i384ayy
	SbLxhmQuF7+v3TJMHdwV0AuuIqWHIWrJq+Du5ws/qwaidNP7zkGb6feD8lzl7W8uTXFt+IwGIB9
	WYwKdAGi5svsiAVY7/6iZXfHLSKGPWodZEI2O
X-Google-Smtp-Source: AGHT+IFGwUrobsK5fHxOpalWNdc1NoJwlmN9E5WaHLuT0VfpNOVU/eY0hrZCRXlucXyDgVbOqJoLAPunNzn8LMHOYzE=
X-Received: by 2002:a05:6214:5c02:b0:6b7:abe7:5665 with SMTP id
 6a1803df08f44-6c1567d96c5mr64521926d6.22.1724348887318; Thu, 22 Aug 2024
 10:48:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240722073136.8123-1-lvzhaoxiong@huaqin.corp-partner.google.com>
In-Reply-To: <20240722073136.8123-1-lvzhaoxiong@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@google.com>
Date: Thu, 22 Aug 2024 10:47:53 -0700
Message-ID: <CAD=FV=V8ivgWn5krEYzt5C4aiHMMK07mtMVwJaCeSQHG6ZscSg@mail.gmail.com>
Subject: Re: [PATCH v4 0/2] Add Add elan-ekth6a12nay on the basis of elan-ekth6915
To: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>, jikos@kernel.org, 
	bentiss@kernel.org
Cc: dmitry.torokhov@gmail.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, linus.walleij@linaro.org, hsinyi@google.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Jiri / Ben,

On Mon, Jul 22, 2024 at 12:31=E2=80=AFAM Zhaoxiong Lv
<lvzhaoxiong@huaqin.corp-partner.google.com> wrote:
>
> Elan-ekth6a12nay requires reset to pull down time greater than 10ms,
> so the configuration post_power_delay_ms is 10, and the chipset
> initial time is required to be greater than 300ms, so the
> post_gpio_reset_on_delay_ms is set to 300.
>
> The Elan-ekth6a12nay touch screen chip same as Elan-eKTH6915 controller
> has a reset gpio. The difference is that they have different
> post_power_delay_ms.
>
> Changes between V4 and V3:
> - PATCH 1/2: Combine the 2 const into an enum.
> - PATCH 2/2: No changes.
> - Link to v3: https://lore.kernel.org/all/20240716082851.18173-1-lvzhaoxi=
ong@huaqin.corp-partner.google.com/
>
> Changes between V3 and V2:
> - PATCH 1/2: "ekth6915" isn't a fallback, modify it.
> - PATCH 2/2: No changes.
> - Link to v2: https://lore.kernel.org/all/20240715073159.25064-1-lvzhaoxi=
ong@huaqin.corp-partner.google.com/
>
> Changes between V2 and V1:
> - PATCH 1/2: Respin the series on top of v6.10.
> - PATCH 2/2: No changes.
> - Link to v1: https://lore.kernel.org/all/20240704085555.11204-1-lvzhaoxi=
ong@huaqin.corp-partner.google.com/
>
> Zhaoxiong Lv (2):
>   dt-bindings: HID: i2c-hid: elan: Introduce Elan ekth6a12nay
>   HID: i2c-hid: elan: Add elan-ekth6a12nay timing
>
>  .../devicetree/bindings/input/elan,ekth6915.yaml          | 4 +++-
>  drivers/hid/i2c-hid/i2c-hid-of-elan.c                     | 8 ++++++++
>  2 files changed, 11 insertions(+), 1 deletion(-)

I think this series is ready for you to merge at your leisure. If
there's anything blocking it then please yell. Thanks! :-)

-Doug

