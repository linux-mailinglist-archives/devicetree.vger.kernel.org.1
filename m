Return-Path: <devicetree+bounces-234804-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BE75C30F96
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 13:25:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 501091895C5C
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 12:24:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A12682E889C;
	Tue,  4 Nov 2025 12:24:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KQutNc31"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com [209.85.218.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD5052D3221
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 12:24:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762259055; cv=none; b=kYht4G1VM8bVP4gGU/YUK5BZ0ge/UlQ4Kra8qzgUZHsbIu2x3ysC5ofD0YhHp4ritynZ04WZOjTnAktb/guddU+/8ZVBfUB4vqEYgtDq2F/SRJwVrpidCoERwUrvh5REZ5mRs6cDhvo9acT70FGJP6EGoaes9JHXMYa/T6e0NcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762259055; c=relaxed/simple;
	bh=4G4WmsNqNizyWK3nhkV2waDHR6+qEIhH3Gbq1UFjq7k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EAl5mjF/ejADF/Gjt9N4crWEBmNhWH0jZ79UN9Mw24n5DSUx8MJUCNIIKgcnxqVRihpH5wXCo2mtvCCBVpBpJQQl9gB4z2/mO0XWE1r0wXpCEn9FRXYfksRIyieYu8+lI+6Gm7df/QhkUXc3pDm0uq4b8OGjxs64UC/Nmx9LSXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KQutNc31; arc=none smtp.client-ip=209.85.218.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f65.google.com with SMTP id a640c23a62f3a-b5a8184144dso760610666b.1
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 04:24:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762259052; x=1762863852; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8w9oB3T8XUJgBGc+hBaim4B4JguaWQfKbWBDqClypRw=;
        b=KQutNc31ZFNIt7trjML1B6+ICKFTlx6hKjVrRTkwjs10Wu/IMqdhP5kmYHeDnt2A4W
         uCaDl7Ge7UL9TMX9HZZKPbsrhPm1UygeaYjGKwiy0N0AoJ/mHD7aczntUFpL6+0wby1z
         LaiBurl2htcuaQ+v8tNWqhHfJTxsz4Swbmtjdg0sIMkhgDzxjuV7tAtzhPpUVo5ewwRt
         UniK7m+/o1kvYur85i9ySkYViaeh70z9TgleXn+XAu1+LioF+ENSgcWpobLKacdVpfY/
         27yK8APNxomBtU9rlWhg9oardPjl+thVom/SPDOX7kbypCQrjpFoKFIxrrbTXWpuvyck
         RHKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762259052; x=1762863852;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8w9oB3T8XUJgBGc+hBaim4B4JguaWQfKbWBDqClypRw=;
        b=Po41YtrBTeRpjC7X1p6wnmHqwlMKVoWZVUZgoymylH+OOdwq0Lm5ESAOvlNy7Rir4N
         e7uS+NIeTNqm5z9dbbQNk9ko2Z0XK1uZeZSDJRETm7M043vrzMPmlaQU2+N8wSBbIFQm
         lsq5V1R6/YpMyrLVPkJzrkn0EFfusm3Wxih7wtc20++O4F01inplbvA+NWYJTSTVDTHl
         gk/u3zrK4HMkaorHtZqE7j1TNk9qpZOVwifqyrp+88nZkvyb8fc7YLwHN9Ckf9XkwuAV
         wjQZhhqkrrEh0xUEAYkizH0kzs6HHEqoVyZo7k3liRrafG8DoFqy2GCKTSOZjOCrmBr+
         72FQ==
X-Forwarded-Encrypted: i=1; AJvYcCX9KMz6zoct6X/Pn7+C5lPo/8+P0KJgy2jmooV2LjsWpdXXlqkHXQl7dnW19bL8EaBmQ62RfG3WqrFX@vger.kernel.org
X-Gm-Message-State: AOJu0YwrxHFxGvnwcQRw4PwVc4yiEJzdEZ6Yi6D5/Yyar4cDk3u983Qa
	2UxiW7jPDRiFso6I61z7nGwzHOKynOpGmeE5h1RkX4O4WMFbq37ix9wBh0loThfg+Dmt2zz6O0Y
	tE3f5GD/IceFee9+bPNVUsrRJtcMVFhI=
X-Gm-Gg: ASbGncs6T/TXgkLhSwPN6WfF3p7gmVPUdAKf+De51k2uwj4wtvP9J1KG8QCT7LN8d0p
	J/RUCwdQW7DltuSUIm2VAT0Mhi5UpWcgCIIvn7umnLNcBAHBFEkFFy9iEnbPV3uwhkql2ei/+q+
	NExl29/jzLkWND8zHQ6ovWCJCuAFjLQaiOramu6puO2lhvKHY4NCvVnpLqG+opRqqbx6kevYLpA
	xt2w5PkGr+Kk3lijRsn3Jb9QtEgZARW/dKIslr0/IcfSfwZrlxu1z5KEZDW
X-Google-Smtp-Source: AGHT+IG6ud+xpKAMBlMA5WdjCGVGxS6YVcNlLSwDSmnLLrN6CJtwEsTAMY7TqC8k7Rf1nkyRUDIwFwQ7kTSNndxnDeE=
X-Received: by 2002:a17:907:97c5:b0:b71:5079:9702 with SMTP id
 a640c23a62f3a-b715079aed8mr550597766b.21.1762259051951; Tue, 04 Nov 2025
 04:24:11 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251103110648.878325-1-caojunjie650@gmail.com>
 <20251103110648.878325-3-caojunjie650@gmail.com> <20251104-attractive-dragonfly-of-perspective-0d52d6@kuoka>
In-Reply-To: <20251104-attractive-dragonfly-of-perspective-0d52d6@kuoka>
From: Junjie Cao <caojunjie650@gmail.com>
Date: Tue, 4 Nov 2025 20:22:32 +0800
X-Gm-Features: AWmQ_blg6GhTdK5EC6AuU-36Dga5TQMKLH2FNjAQ7Rr6vjrvigIa3A71HhVneEs
Message-ID: <CAK6c68j2j536UEgq36RAuAv7HGW9VTUS-s32+1YDshqK+gTfzw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] backlight: aw99706: Add support for Awinic AW99706 backlight
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Lee Jones <lee@kernel.org>, Daniel Thompson <danielt@kernel.org>, 
	Jingoo Han <jingoohan1@gmail.com>, Pavel Machek <pavel@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Helge Deller <deller@gmx.de>, 
	dri-devel@lists.freedesktop.org, linux-leds@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-fbdev@vger.kernel.org, Pengyu Luo <mitltlatltl@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 4, 2025 at 3:36=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.org=
> wrote:
>
> On Mon, Nov 03, 2025 at 07:06:48PM +0800, Junjie Cao wrote:
> > +struct reg_init_data;
> > +
> > +struct aw99706_device {
> > +     struct i2c_client *client;
> > +     struct device *dev;
> > +     struct regmap *regmap;
> > +     struct backlight_device *bl_dev;
> > +     struct gpio_desc *hwen_gpio;
> > +     struct reg_init_data *init_tbl;
> > +     int init_tbl_size;
> > +     bool bl_enable;
> > +};
> > +
> > +enum reg_access {
> > +     REG_NONE_ACCESS =3D 0,
> > +     REG_RD_ACCESS   =3D 1,
> > +     REG_WR_ACCESS   =3D 2,
> > +};
> > +
> > +const u8 aw99706_regs[AW99706_REG_MAX + 1] =3D {
>
> Why isn't this static?
>

That was an oversight on my part. It will be static.

> > +     [AW99706_CFG0_REG]              =3D REG_RD_ACCESS | REG_WR_ACCESS=
,
> > +     [AW99706_CFG1_REG]              =3D REG_RD_ACCESS | REG_WR_ACCESS=
,
> > +     [AW99706_CFG2_REG]              =3D REG_RD_ACCESS | REG_WR_ACCESS=
,
> > +     [AW99706_CFG3_REG]              =3D REG_RD_ACCESS | REG_WR_ACCESS=
,
> > +     [AW99706_CFG4_REG]              =3D REG_RD_ACCESS | REG_WR_ACCESS=
,
> > +     [AW99706_CFG5_REG]              =3D REG_RD_ACCESS | REG_WR_ACCESS=
,
> > +     [AW99706_CFG6_REG]              =3D REG_RD_ACCESS | REG_WR_ACCESS=
,
> > +     [AW99706_CFG7_REG]              =3D REG_RD_ACCESS | REG_WR_ACCESS=
,
> > +     [AW99706_CFG8_REG]              =3D REG_RD_ACCESS | REG_WR_ACCESS=
,
> > +     [AW99706_CFG9_REG]              =3D REG_RD_ACCESS | REG_WR_ACCESS=
,
> > +     [AW99706_CFGA_REG]              =3D REG_RD_ACCESS | REG_WR_ACCESS=
,
> > +     [AW99706_CFGB_REG]              =3D REG_RD_ACCESS | REG_WR_ACCESS=
,
> > +     [AW99706_CFGC_REG]              =3D REG_RD_ACCESS | REG_WR_ACCESS=
,
> > +     [AW99706_CFGD_REG]              =3D REG_RD_ACCESS | REG_WR_ACCESS=
,
> > +     [AW99706_FLAG_REG]              =3D REG_RD_ACCESS,
> > +     [AW99706_CHIPID_REG]            =3D REG_RD_ACCESS,
> > +     [AW99706_LED_OPEN_FLAG_REG]     =3D REG_RD_ACCESS,
> > +     [AW99706_LED_SHORT_FLAG_REG]    =3D REG_RD_ACCESS,
> > +
> > +     /*
> > +      * Write bit is dropped here, writing BIT(0) to MTPLDOSEL will un=
lock
> > +      * Multi-time Programmable (MTP).
> > +      */
> > +     [AW99706_MTPLDOSEL_REG]         =3D REG_RD_ACCESS,
> > +     [AW99706_MTPRUN_REG]            =3D REG_NONE_ACCESS,
> > +};
> > +
>
> ...
>
> > +     aw =3D devm_kzalloc(dev, sizeof(*aw), GFP_KERNEL);
> > +     if (!aw)
> > +             return -ENOMEM;
> > +
> > +     aw->client =3D client;
> > +     aw->dev =3D dev;
> > +     i2c_set_clientdata(client, aw);
> > +
> > +     aw->regmap =3D devm_regmap_init_i2c(client, &aw99706_regmap_confi=
g);
> > +     if (IS_ERR(aw->regmap))
> > +             return dev_err_probe(dev, PTR_ERR(aw->regmap),
> > +                                  "Failed to init regmap\n");
> > +
> > +     ret =3D aw99706_chip_id_read(aw);
> > +     if (ret !=3D AW99706_ID)
> > +             return dev_err_probe(dev, ret,
> > +                                  "Failed to validate chip id\n")
>
> Why are you exiting the probe with a positive value like 4 or 8? This
> makes no sense. Registers do not coontain Linux return codes.
>

Thanks for pointing this out. Using -ENODEV makes more sense. I will do
it in the next version.

Regards,
Junjie

