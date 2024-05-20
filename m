Return-Path: <devicetree+bounces-67872-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A8718C9FCC
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2024 17:38:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5DEDF1C208AF
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2024 15:38:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 865EE137749;
	Mon, 20 May 2024 15:38:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="dwf55qNa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECC94136E0C
	for <devicetree@vger.kernel.org>; Mon, 20 May 2024 15:38:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716219521; cv=none; b=PH7lSx7v3jaV7u5g+jREPwt1RWL6yvbTK+V71WOp5CXrx52SBbV/D9f2KHd1Xd/HRLT7257oy6Cbf33HW85oJXfsKwSXIVn42UCZ1LLinWgGccaCmpBftic1ZiHXkvaefKRVFs1Hzi8XZb66BPEWDg1BCSfdm1Vg2KkpBq0e63g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716219521; c=relaxed/simple;
	bh=xR38KVD3bbKUAoYUfwjtudqWW7AHDRaw+vcgMm2ki0k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=amslOH3EEluNnFQpCoZEnddkm/7S2yKT7iyJK1pCUAfttd1ybx2p9gU21qY7mOY/hNlp53SAV5vKu0P7h7Zc/RkUaL0mSQBZ79j/CxW3iLQDGGSlD95FYJw0OpCjZP8LUlkm3OMIwzMu0jBB16caqh5rRls9aHHU8ONXDaB13s0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=dwf55qNa; arc=none smtp.client-ip=209.85.160.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qt1-f172.google.com with SMTP id d75a77b69052e-43df14d8a27so16618481cf.2
        for <devicetree@vger.kernel.org>; Mon, 20 May 2024 08:38:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1716219518; x=1716824318; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OKPnejpOVVglMsc+d8kH/kXQPdEfmoXhhEf4Gy8y/h4=;
        b=dwf55qNabLsoAjUM5qmkvs+aMYoXbdLFHBPAiDue0XReH+IKsG/PeUBsWBg5evQqpd
         gJfpVe+QirEj1bGeZwM4DxwrLOVItfj1JlcAS2u/QPTfgeVy03k7Ix77LEm+NAV/28Rb
         sBfFR88Stnx82Dw9pQSUJHRODvawVsjjVvyBA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716219518; x=1716824318;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OKPnejpOVVglMsc+d8kH/kXQPdEfmoXhhEf4Gy8y/h4=;
        b=HG8IBMXvonCxJq5Q7n/4OO0p3Ho/F0Cz7xt2HSOFZvi7+4Xo/XYT2hS8CSAyGxiUOh
         +BbtPtQz3hrUYVgzriKDRR4fAA9tdyHieYMmVdo+fiFdh7GxqcKwGTi8r/1j2gf8aadq
         YVmNz3mvsaqPML300TIFIMaJznZCHWsUUZ7y9ShbJp3oCoKsOt5zNHDyd009sy/bkLUI
         Y0UD5UEC/Ay+e1m7746q0435iMlnzFrSSPXLY9SrcDaBpofhrdmYFfmOoLl0c/FF4lpg
         i6+bVnlQSNHb0pr/zq8OfnNN4kH2CYHoRgkBkQB3WH8ichXkHEvDziPIp/bMG+cD3sxt
         DiqA==
X-Forwarded-Encrypted: i=1; AJvYcCWmmON6EaHYpuS1LLWtAD/2MVI7n85nG7efbPRBLaWyoT1cuqKLdOkPwy7rkIutXkzwmpyrkMysz232vKQEg4zxCWXcRgo26Vj7ow==
X-Gm-Message-State: AOJu0YwuQkD8NOFDq7zOEphHqK4RsPu6asjzyo3zE1lgv7a5z8An7ngz
	X6i+JczACD9KbQoUyAgCW5zdlMW6MRPpnDdD59RUusBkLgvo3VuBeVHxE+OAhK+xYl/9B1np7o0
	=
X-Google-Smtp-Source: AGHT+IGPp/CVTkiE5edctkicpykOnqKbR+ZkzW6cB/+QNjonSQ1nyJtPdWEOfO41Guewfjv3cGhsVg==
X-Received: by 2002:a05:622a:1903:b0:43d:e42e:2d3e with SMTP id d75a77b69052e-43dfdb68fcamr295811651cf.52.1716219518365;
        Mon, 20 May 2024 08:38:38 -0700 (PDT)
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com. [209.85.160.182])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-43df8e72a2fsm144698691cf.57.2024.05.20.08.38.37
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 May 2024 08:38:37 -0700 (PDT)
Received: by mail-qt1-f182.google.com with SMTP id d75a77b69052e-43dfa9a98d2so286851cf.1
        for <devicetree@vger.kernel.org>; Mon, 20 May 2024 08:38:37 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCW8vvM4jGjjP97T54s2UlNkiSvy6rlzlAgW7o+Ks7HRklAtr1WsDf7sBAIuRoh9Bvw9qZ7tCxL82U26cAZdDPqXVlHRw30b7hzKvg==
X-Received: by 2002:a05:622a:5917:b0:43e:ec2:4bb8 with SMTP id
 d75a77b69052e-43f797e0ecemr5611191cf.26.1716219516885; Mon, 20 May 2024
 08:38:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240507144821.12275-1-johan+linaro@kernel.org>
 <20240507144821.12275-5-johan+linaro@kernel.org> <CAD=FV=V59t_tZ9Xk=uhbgOdTRYLKu+kZt8cpaksTkJo+D4yt8Q@mail.gmail.com>
 <Zks3hp5iUhTe3rLH@hovoldconsulting.com> <Zks5gJ7H6ZuWr_Xm@hovoldconsulting.com>
In-Reply-To: <Zks5gJ7H6ZuWr_Xm@hovoldconsulting.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 20 May 2024 08:38:20 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UDdc_YgZ=JGamWpdyCgAM_0szk-m_RgUnkDA9m1zbzWw@mail.gmail.com>
Message-ID: <CAD=FV=UDdc_YgZ=JGamWpdyCgAM_0szk-m_RgUnkDA9m1zbzWw@mail.gmail.com>
Subject: Re: [PATCH v2 4/7] HID: i2c-hid: elan: fix reset suspend current leakage
To: Johan Hovold <johan@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Jiri Kosina <jikos@kernel.org>, 
	Benjamin Tissoires <benjamin.tissoires@redhat.com>, Bjorn Andersson <andersson@kernel.org>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Linus Walleij <linus.walleij@linaro.org>, 
	linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	stable@vger.kernel.org, Steev Klimaszewski <steev@kali.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, May 20, 2024 at 4:52=E2=80=AFAM Johan Hovold <johan@kernel.org> wro=
te:
>
> On Mon, May 20, 2024 at 01:44:06PM +0200, Johan Hovold wrote:
> > On Fri, May 10, 2024 at 04:36:08PM -0700, Doug Anderson wrote:
> > > On Tue, May 7, 2024 at 7:48=E2=80=AFAM Johan Hovold <johan+linaro@ker=
nel.org> wrote:
>
> > > > @@ -67,7 +77,14 @@ static void elan_i2c_hid_power_down(struct i2chi=
d_ops *ops)
> > > >         struct i2c_hid_of_elan *ihid_elan =3D
> > > >                 container_of(ops, struct i2c_hid_of_elan, ops);
> > > >
> > > > -       gpiod_set_value_cansleep(ihid_elan->reset_gpio, 1);
> > > > +       /*
> > > > +        * Do not assert reset when the hardware allows for it to r=
emain
> > > > +        * deasserted regardless of the state of the (shared) power=
 supply to
> > > > +        * avoid wasting power when the supply is left on.
> > > > +        */
> > > > +       if (!ihid_elan->no_reset_on_power_off)
> > > > +               gpiod_set_value_cansleep(ihid_elan->reset_gpio, 1);
> > > > +
> > > >         if (ihid_elan->chip_data->post_gpio_reset_off_delay_ms)
> > > >                 msleep(ihid_elan->chip_data->post_gpio_reset_off_de=
lay_ms);
> > >
> > > Shouldn't  the above two lines be inside the "if
> > > (!ihid_elan->no_reset_on_power_off)" test? If you're not setting the
> > > reset GPIO then you don't need to do the delay, right?
> >
> > Yes, I guess you're right. The off-delay is weird and not normally used=
,
> > but apparently it is needed by some panel-follower use case. AFAICT it'=
s
> > not even related to the reset line, just a hack to add a delay before
> > the panel is reset by some other driver (see f2f43bf15d7a ("HID:
> > i2c-hid: elan: Add ili9882t timing")).
> >
> > I think that's why I just looked the other way and left this little
> > oddity here unchanged.
>
> Hit send too soon.
>
> Since this hack does not appear to be related to the reset line, I think
> it's correct to not have it depend on whether the reset line is asserted
> or not (e.g. as there could be 'panel-followers' with
> 'no_reset_on_power_off'):
>
>          The datasheet specifies there should be 60ms between touch SDA
>          sleep and panel RESX. Doug's series[1] allows panels and
>          touchscreens to power on/off together, so we can add the 65 ms
>          delay in i2c_hid_core_suspend before panel_unprepare.
>
> The power-off delay variable should probably be renamed, but that's a
> separate change.
>
> So I think v2 of this series is good to go.

Sure. As I think we've seen in the past, my choice of bikeshed paint
color seems to be quite different than yours, but nothing here seems
like it needs to block landing, so:

Reviewed-by: Douglas Anderson <dianders@chromium.org>

