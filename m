Return-Path: <devicetree+bounces-61031-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BF9CB8AB611
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 22:41:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 635071F22B75
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 20:41:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40202134DE;
	Fri, 19 Apr 2024 20:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="lc8pvcRL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C09631119F
	for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 20:41:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713559314; cv=none; b=JvKt6ibhfsAQ8eUUfzIDGnRXwtgy9jgmBYuPX/nPn3uUEsl8bGMa9rfoK7tphBFEz63ksRHVu+w+tvD9QShj7kmiQbPUASN64ZOocgcSi3+rsWHPjSsNYkL4X4MqH9Gds6WqBjCUEEc2iuA5V/Y1yhT9RjJkf0l6IIjqwFP/xlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713559314; c=relaxed/simple;
	bh=RMZAGX6lS8OT/tfzcDXtJwOv1xMnu0fCjRT0ln1nlZ4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=P7S8+yf14LewycVnk1E20Opyg5eVHxWfM1GGswToqR8f6RzfunW8BTUdMBMAnPmJy1HiFPFigtuB2XbKrSb6Kqi6HYt6jH+TvlNhXTxubknMDKwgWlT+ofLYwb6hTRwe8p/uG64I8/60ducqfg6chqLeEgfmyEM9uArQzEofeug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=lc8pvcRL; arc=none smtp.client-ip=209.85.160.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f176.google.com with SMTP id d75a77b69052e-434ffc2b520so88751cf.0
        for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 13:41:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1713559312; x=1714164112; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6K3dsqSlYNszsCn1h++dCBb6+hru/S0oFdAjebQTHM0=;
        b=lc8pvcRL02xTcXJZSFUSu+1To0NyNPVOy0DQ0qhaIuRIe0lLdmTi3fvu/uyRJ7UL/I
         94xjXIFLoz1MRKIvPj5tlG8T1LVjnaR0/DaQWPMdb2VCth5Ug1/9qZJIUE4yFay7CQOD
         Q71oKdNkKMIGsukLJoWiVngk72U4+Q2g4b9vjEhdG1aDbnkiy2e73rq1oLcLzoFP1JLt
         qDs6GcBsuni0yyT+O3mK2QyFhwZG1FMarXzZJXwrEgRmOtPVFldfCxlxqoh4d6nf5Mvj
         8yTDohKwM+zn9PEoLFOkyh7X/KHEz/DdpTQvIRwmT/ATO9O0Z/4fn5TfJpk9t92QJY6s
         Wx2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713559312; x=1714164112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6K3dsqSlYNszsCn1h++dCBb6+hru/S0oFdAjebQTHM0=;
        b=iY8PTS4dbyI0QAWXdhIs8TwOAkrhR1JjxvA4b7H0Cuo249mgP+9QbXU0sqNHobnORT
         sSmlPPKNnod6jiMjEv9OPsdIys+g7SmRACPffF3ywl5c2fa3DgysgLS+52jc4FcQoIFn
         /vM1dJFfRqB9dffN+KU3tv5prbabCBEnxITNThrjvYOIlRR4/SLKP0gG1NfV251njmub
         7oWXQPlpft7bTy3MpueVxuEbXjqm2O+h2UlGDO2tviaURceGcY4ylBZUW2h+YPhGZirW
         F41M4NshzO764xAOm2sJBnR34IULbjhNshv5XZGQGx3TpxiV5vy8dy0FzkF303+r3mFM
         JnKg==
X-Forwarded-Encrypted: i=1; AJvYcCUD6pyptDKqXHtADvNck1CynybwmNUKFk4cgX9/OWJqjS/643GthAjvFxDpvlEprBpKhRXRXFSyq4Mhi8491sM0cp3ZcUG2jRo2Zg==
X-Gm-Message-State: AOJu0YyKCwPkZZeUdBGHrmZ1Jg35dPa74F6PHNdahqoTKjGFX7/acFgt
	gumE83svCDk7WEBwgqBxON/vtANUgORL1s52QoQ013vEdvSHDh0gAYEn4zPHXUlAG835Mz7Ljuo
	lJ7ViMqajDgaSgwJMvnzixH4rJpwvNrVYOjBa
X-Google-Smtp-Source: AGHT+IHZbGtaHsrDZJlMeCvL5n3nHY8v9RvCEAZmDRwJuRM5kQHZzdgDzoyAqJc7HDUdc4L091tykzPFVNpxeTYTWEk=
X-Received: by 2002:ac8:729a:0:b0:437:b99c:dbf7 with SMTP id
 v26-20020ac8729a000000b00437b99cdbf7mr9471qto.11.1713559311445; Fri, 19 Apr
 2024 13:41:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240418124815.31897-1-lvzhaoxiong@huaqin.corp-partner.google.com>
 <20240418124815.31897-3-lvzhaoxiong@huaqin.corp-partner.google.com>
In-Reply-To: <20240418124815.31897-3-lvzhaoxiong@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@google.com>
Date: Fri, 19 Apr 2024 13:41:34 -0700
Message-ID: <CAD=FV=X5tk0tCcDa+vLnu0aoas1TDWuqvkMzM-278dOCX8K1gw@mail.gmail.com>
Subject: Re: [PATCH v1 2/2] HID: i2c-hid: elan: Add ili2900 timing
To: lvzhaoxiong <lvzhaoxiong@huaqin.corp-partner.google.com>
Cc: dmitry.torokhov@gmail.com, robh@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, jikos@kernel.org, 
	benjamin.tissoires@redhat.co, hsinyi@google.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Apr 18, 2024 at 5:48=E2=80=AFAM lvzhaoxiong
<lvzhaoxiong@huaqin.corp-partner.google.com> wrote:
>
> ILI2900 requires reset to pull down time greater than 10ms,
> so the configuration post_power_delay_ms is 10, and the chipset
> initial time is required to be greater than 100ms,
> so the post_gpio_reset_on_delay_ms is set to 100.
>
> Signed-off-by: lvzhaoxiong <lvzhaoxiong@huaqin.corp-partner.google.com>

Please use a proper name instead of "lvzhaoxiong".


> ---
>  drivers/hid/i2c-hid/i2c-hid-of-elan.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/drivers/hid/i2c-hid/i2c-hid-of-elan.c b/drivers/hid/i2c-hid/=
i2c-hid-of-elan.c
> index 5b91fb106cfc..3073620b2dec 100644
> --- a/drivers/hid/i2c-hid/i2c-hid-of-elan.c
> +++ b/drivers/hid/i2c-hid/i2c-hid-of-elan.c
> @@ -137,10 +137,18 @@ static const struct elan_i2c_hid_chip_data ilitek_i=
li2901_chip_data =3D {
>         .main_supply_name =3D "vcc33",
>  };
>
> +static const struct elan_i2c_hid_chip_data ilitek_ili2900_chip_data =3D =
{
> +       .post_power_delay_ms =3D 10,
> +       .post_gpio_reset_on_delay_ms =3D 100,
> +       .hid_descriptor_address =3D 0x0001,
> +       .main_supply_name =3D NULL,

There's really no main power supply for this device? It feels likely
that there is one.

Also: other than the main power supply, there is no difference between
this and the ili2901. If you actually do have a main power supply,
then you probably don't need a new table. You probably don't even need
your own compatible string and in the device tree you could just
specify:

compatible =3D "ilitek,ili2900, "ilitek,ili2901";

...which says "I actually have an ILI 2900, but if you don't have any
special driver for the ILI 2900 it's likely that the driver for the
ILI 2901 will work because the hardware is almost the same."


> +};
> +
>  static const struct of_device_id elan_i2c_hid_of_match[] =3D {
>         { .compatible =3D "elan,ekth6915", .data =3D &elan_ekth6915_chip_=
data },
>         { .compatible =3D "ilitek,ili9882t", .data =3D &ilitek_ili9882t_c=
hip_data },
>         { .compatible =3D "ilitek,ili2901", .data =3D &ilitek_ili2901_chi=
p_data },
> +       { .compatible =3D "ilitek,ili2900", .data =3D &ilitek_ili2900_chi=
p_data },

If you do need this, these should be sorted. 2900 should come before 2901.


-Doug

