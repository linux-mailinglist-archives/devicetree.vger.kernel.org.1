Return-Path: <devicetree+bounces-66393-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 192048C2DAB
	for <lists+devicetree@lfdr.de>; Sat, 11 May 2024 01:44:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3C3211C2134A
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 23:44:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39478172BDA;
	Fri, 10 May 2024 23:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="D/gx01rR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f172.google.com (mail-il1-f172.google.com [209.85.166.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB5D118EA1
	for <devicetree@vger.kernel.org>; Fri, 10 May 2024 23:44:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715384663; cv=none; b=j2dP2f2ke3jirWtt2M98eB2pCvYNbTT3bYTqTwYmJ8lA0p6orykTBVT7+0+k3fkUmCj2cktEEfuGMqQnr98YkQcl4hEEHeQj9M4W22gbbSHldq7Xj8EmApKN9wcvA/2t1uEL7HuJriPnbJ12HdGTd1KhLYWxA3A0D7ksX14Ulzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715384663; c=relaxed/simple;
	bh=tdd3mEPr8R8mB7AxgVNrZK4bwy+sTsONs5ChPMw/qCk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Emug5CMu2pSnB23oxBRKt0FJf9FnSEqU6/EMy3ablI/kRSgMJxZ6aw45tElfbje0LhLVmrpBrCyj05CHOwtkVZ9klaP/kG48yqyf4xPtVskqBdMW1jrL6iJhuYbCWvAX9saBbBWNQp17rUPPTN0/EltTK/HIeHnKHvFCfW4NH+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=D/gx01rR; arc=none smtp.client-ip=209.85.166.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-il1-f172.google.com with SMTP id e9e14a558f8ab-36c846689d1so11712855ab.0
        for <devicetree@vger.kernel.org>; Fri, 10 May 2024 16:44:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1715384660; x=1715989460; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RUDP9S9qW3rGQGeBPladTmxRNiWuw5gzHHPdJQsB0VM=;
        b=D/gx01rRbOktqyykTivm1zPuxf93raBGXKl/RLT/K8dJCz+XyUGuwLmKqxRWC0ffVC
         CHbQj/FEVtEcJi0Ir/+jYVzLwtOtGC14zd54Y2dOiv+BEIhQzCnMlHSyyVd0ThKrPJjD
         gSmi6RmelX2QS6duIBmr3QXXHUYkWHZj9SDWs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715384660; x=1715989460;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RUDP9S9qW3rGQGeBPladTmxRNiWuw5gzHHPdJQsB0VM=;
        b=hdP4FkF2a5CXb4x4zD4TOVPqcgiZsz1KDFQvuYN2n3311mWMfuLoelqlApOt67MDVC
         wYMN9XGa/gaA1rT+oIhITnqBN2MqiFBEqZKTL8En0Wjad4WI6wehBK2vmEa0ivJl6toF
         H8U/MLwiTAjCBDofEVR9/egF1IgdjvU5g3LF05iSvVl1VVM5EYLaesYqDjteejo+m8FC
         o4Z9pxv3ORC/fYRFcqf9/5UWvuzqCKxM1BtxBuzlevuAF2eVnO4QlrtNVnLyBGEJBFgB
         cmeiscpe+avY/n32pgKif0fEpHE3cOX9dLXYY/OirzEXyyhtQvRei+oMvEA8yzXGFVTU
         T61w==
X-Forwarded-Encrypted: i=1; AJvYcCXE3yUT1O/0LwtIIys3RkcOvqptv6uqPSNkN8M0y5q0zmc/2818DA5+UcV0uz8Y/x03FTnQsuCRuuA6suR/MH6TSb98eqizuprOiw==
X-Gm-Message-State: AOJu0YxkimSn+kNRq11vaj0nRx2j5mNiz6L5LJ8pDYE9tk43IDKOwd2V
	idsZCXy7CD2rRbxCaK3+5pQvFcOzogMwtzezcB85FI/UW6wzLYAQI74oHv9Au/Z8agdTw6nKkME
	=
X-Google-Smtp-Source: AGHT+IEN588llKEoTijmz7peIkJt5KWz8WeGAKlkhh3iSlsSjndIWavuWu+iBRg6fk2A9BCHZblwGA==
X-Received: by 2002:a92:c26b:0:b0:36c:5486:83f8 with SMTP id e9e14a558f8ab-36cc14df709mr50250595ab.22.1715384660038;
        Fri, 10 May 2024 16:44:20 -0700 (PDT)
Received: from mail-il1-f175.google.com (mail-il1-f175.google.com. [209.85.166.175])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-36cb9e222e2sm10330485ab.86.2024.05.10.16.44.19
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 May 2024 16:44:19 -0700 (PDT)
Received: by mail-il1-f175.google.com with SMTP id e9e14a558f8ab-36c6789b520so20525ab.1
        for <devicetree@vger.kernel.org>; Fri, 10 May 2024 16:44:19 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCX72PYdYTLVq5tZNjldpOVbYYQaEylxrghVNJMf7BLhBAd5wMLiItPv38s2Mt+6vt0vZaH5MUGU15iOd5SqejLyl92gt+NIyjRX2g==
X-Received: by 2002:a05:622a:1f13:b0:43d:fce9:684f with SMTP id
 d75a77b69052e-43e094d0423mr1201921cf.10.1715384182762; Fri, 10 May 2024
 16:36:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240507144821.12275-1-johan+linaro@kernel.org> <20240507144821.12275-5-johan+linaro@kernel.org>
In-Reply-To: <20240507144821.12275-5-johan+linaro@kernel.org>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 10 May 2024 16:36:08 -0700
X-Gmail-Original-Message-ID: <CAD=FV=V59t_tZ9Xk=uhbgOdTRYLKu+kZt8cpaksTkJo+D4yt8Q@mail.gmail.com>
Message-ID: <CAD=FV=V59t_tZ9Xk=uhbgOdTRYLKu+kZt8cpaksTkJo+D4yt8Q@mail.gmail.com>
Subject: Re: [PATCH v2 4/7] HID: i2c-hid: elan: fix reset suspend current leakage
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Jiri Kosina <jikos@kernel.org>, Benjamin Tissoires <benjamin.tissoires@redhat.com>, 
	Bjorn Andersson <andersson@kernel.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Linus Walleij <linus.walleij@linaro.org>, 
	linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	stable@vger.kernel.org, Steev Klimaszewski <steev@kali.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, May 7, 2024 at 7:48=E2=80=AFAM Johan Hovold <johan+linaro@kernel.or=
g> wrote:
>
> @@ -40,17 +41,17 @@ static int elan_i2c_hid_power_up(struct i2chid_ops *o=
ps)
>                 container_of(ops, struct i2c_hid_of_elan, ops);
>         int ret;
>
> +       gpiod_set_value_cansleep(ihid_elan->reset_gpio, 1);

Could probably use a comment above it saying that this is important
when we have "no_reset_on_power_off" and doesn't do anything bad when
we don't so we can just do it unconditionally.


> +
>         if (ihid_elan->vcc33) {
>                 ret =3D regulator_enable(ihid_elan->vcc33);
>                 if (ret)
> -                       return ret;
> +                       goto err_deassert_reset;
>         }
>
>         ret =3D regulator_enable(ihid_elan->vccio);
> -       if (ret) {
> -               regulator_disable(ihid_elan->vcc33);
> -               return ret;
> -       }
> +       if (ret)
> +               goto err_disable_vcc33;
>
>         if (ihid_elan->chip_data->post_power_delay_ms)
>                 msleep(ihid_elan->chip_data->post_power_delay_ms);
> @@ -60,6 +61,15 @@ static int elan_i2c_hid_power_up(struct i2chid_ops *op=
s)
>                 msleep(ihid_elan->chip_data->post_gpio_reset_on_delay_ms)=
;
>
>         return 0;
> +
> +err_disable_vcc33:
> +       if (ihid_elan->vcc33)
> +               regulator_disable(ihid_elan->vcc33);
> +err_deassert_reset:
> +       if (ihid_elan->no_reset_on_power_off)
> +               gpiod_set_value_cansleep(ihid_elan->reset_gpio, 0);

Small nit about the error label: it sounds as if when you go here you
_will_ deassert reset when in actuality you might or might not
(depending on no_reset_on_power_off). Personally I prefer to label
error jumps based on things I've done instead of things that the error
jump needs to do, so you could call them "err_enabled_vcc33" and
"err_asserted_reset"...

I don't feel that strongly about it, though, so if you love the label
you have then no need to change it.


> @@ -67,7 +77,14 @@ static void elan_i2c_hid_power_down(struct i2chid_ops =
*ops)
>         struct i2c_hid_of_elan *ihid_elan =3D
>                 container_of(ops, struct i2c_hid_of_elan, ops);
>
> -       gpiod_set_value_cansleep(ihid_elan->reset_gpio, 1);
> +       /*
> +        * Do not assert reset when the hardware allows for it to remain
> +        * deasserted regardless of the state of the (shared) power suppl=
y to
> +        * avoid wasting power when the supply is left on.
> +        */
> +       if (!ihid_elan->no_reset_on_power_off)
> +               gpiod_set_value_cansleep(ihid_elan->reset_gpio, 1);
> +
>         if (ihid_elan->chip_data->post_gpio_reset_off_delay_ms)
>                 msleep(ihid_elan->chip_data->post_gpio_reset_off_delay_ms=
);

Shouldn't  the above two lines be inside the "if
(!ihid_elan->no_reset_on_power_off)" test? If you're not setting the
reset GPIO then you don't need to do the delay, right?


> @@ -79,6 +96,7 @@ static void elan_i2c_hid_power_down(struct i2chid_ops *=
ops)
>  static int i2c_hid_of_elan_probe(struct i2c_client *client)
>  {
>         struct i2c_hid_of_elan *ihid_elan;
> +       int ret;
>
>         ihid_elan =3D devm_kzalloc(&client->dev, sizeof(*ihid_elan), GFP_=
KERNEL);
>         if (!ihid_elan)
> @@ -93,21 +111,38 @@ static int i2c_hid_of_elan_probe(struct i2c_client *=
client)
>         if (IS_ERR(ihid_elan->reset_gpio))
>                 return PTR_ERR(ihid_elan->reset_gpio);
>
> +       ihid_elan->no_reset_on_power_off =3D of_property_read_bool(client=
->dev.of_node,
> +                                               "no-reset-on-power-off");

Personally, I'd rather you query for the property before you request
the GPIO and then request the GPIO in the "powered off" state just to
keep everything in the most consistent state possible.


-Doug

