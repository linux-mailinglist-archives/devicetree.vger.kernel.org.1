Return-Path: <devicetree+bounces-104652-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CE755983B19
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 04:14:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F3B691C21AF8
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 02:14:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9513D9479;
	Tue, 24 Sep 2024 02:14:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="gjPr3NTd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B07B2184E
	for <devicetree@vger.kernel.org>; Tue, 24 Sep 2024 02:14:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727144050; cv=none; b=OFUBUxIiPMAYyfUsT5+Sv7KQZbYKI3jxdt3l0rQ7TZKkFhby1ZNDoPa7mJN+Cl9K30+LqRGQ8qGrwUZ0/DEbXNMp1/N3jw/ovgVrY+/PnBicaxThAV8UTeISqEWxEacENRg9sfiBlbcYaDmvS0TLod/wMZouVNg1w2bQQO3WFhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727144050; c=relaxed/simple;
	bh=lDQ+QymmcraQuDj9gUFDtUMDYkVJsWiHDq9yw+UPQPI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dHqk9pEkGuiKli1rfbCf/lVKDKRoHOgLfo92l8pcMAvnvAl1laIgxo68O2K22SrRUQZ0BVQdAqHcmFLcOrVm7Q/s65PV8nJ1QdZBFUI9RMawDKk2XpbyWlC8ZuI6Tm4qtv/UZBgGc6nJbN2kJY3ucEQWqxZATSfMERIJeqPaD3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=gjPr3NTd; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5c42bad4eb9so814069a12.2
        for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 19:14:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1727144047; x=1727748847; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eHGa8y2VhRd72zW7L36g52sjrLqwpkTp1KwyDot54wI=;
        b=gjPr3NTd6HitxKDRvwTNl5qPTG6LjWjgIQioP42sP6IyfyZX0jao/sm0ilVcJHqADc
         GtNMbDdcT8iRFvs2WBFfsdxXWxSqx3KCSS7asu9tYuVU4qkPnBqvvDiqEMWiackFvye7
         NRgPx20SAhviujqX7L3eFwl46Sq2bSNDcqZb0hMebK/EiKWoWGf+Pg4aMX9toYDtskpk
         ux9C9urTgfSC84jVT/4Ocw/BhM27azvWHX5U9s0X7lgIuBbXSBIRd3kPDIX2GYmIGP9L
         jriFyFx1SAAkTMTvqlRHzQhEH+CrIR+mr0/fBRR2DpztA+iUipVlGqCZ6ePcXmw3SRPG
         UdLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727144047; x=1727748847;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eHGa8y2VhRd72zW7L36g52sjrLqwpkTp1KwyDot54wI=;
        b=a3aqiBwGu1tDL7ALUajxl8xCja5CyqkpDFa59Ay/7rQPzqienUg/3jh5CayP3bc94j
         6Q8Dwkt18dwdqkySFB6DENJl1y5fNtwS1H/vdFsbM2LJqQMS4Nn6dF7FF5/8OhJ1+eaP
         H1lW99wO0d3FFAjWn5NubgwMY2snhsmGBhvepXXfRKdy8FQdPqje5XTBSdc3zEsKji0g
         DiSec/p8Wn/H8cKYeuWmvQFkthgR4T9dVNRgpcmwQJYhOwOzCO3XSgZOQfN/gUxOkzNc
         a46CXJ9TibYhrREM9wbUf8aP8hHmIYtqxcuo+N6G7n4URyydDnze+Z9LusfR6bJBqsFb
         QJqg==
X-Forwarded-Encrypted: i=1; AJvYcCVImXRokBpwkARO1Xl2FIYdlNejRTui0VFF6aysVt/lNeuiXUxiZnw7RaycEqvCroQSMGfVYG3nv9nt@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/URKmWqbvelcH5DUmsdf5esWh51OX+hVvOMH9eLMoZoCbhoSh
	NHpcN2o1ESYJBap5ZFFaKcoqBSu41TAHMgSpJpYddzLi31MhX9sDouR6CWEnz1u/EdDDsRAwBIf
	a/YZTjOMLdBUeBI/f8/IP3htUFqgf8MToKFV13g==
X-Google-Smtp-Source: AGHT+IEWexrAWcLd5Kk6Du4k9VuNbICCIYtYv65qqeyQO5VSQJMXHQt4/FdwVNhoCm8tqnTs34sksg+7Maa4PDHuXuU=
X-Received: by 2002:a05:6402:520a:b0:5c4:2ad3:b8c2 with SMTP id
 4fb4d7f45d1cf-5c5cec2ab48mr304952a12.3.1727144046959; Mon, 23 Sep 2024
 19:14:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240923134227.11383-1-lvzhaoxiong@huaqin.corp-partner.google.com>
 <20240923134227.11383-2-lvzhaoxiong@huaqin.corp-partner.google.com> <42f0b4b1-87c7-4ebe-94a1-e2ad1a759dd7@quicinc.com>
In-Reply-To: <42f0b4b1-87c7-4ebe-94a1-e2ad1a759dd7@quicinc.com>
From: zhaoxiong lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Date: Tue, 24 Sep 2024 10:13:55 +0800
Message-ID: <CA+6=WdTTwXSyqGFGM6mqG3djDBH28mAzBUxUEUdr6z7W2g-A7A@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] drm/panel: jd9365da: Modify Kingdisplay and Melfas
 panel timing
To: Jessica Zhang <quic_jesszhan@quicinc.com>
Cc: neil.armstrong@linaro.org, sam@ravnborg.org, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
	airlied@gmail.com, simona@ffwll.ch, dianders@chromium.org, hsinyi@google.com, 
	awarnecke002@hotmail.com, dmitry.baryshkov@linaro.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 24, 2024 at 5:14=E2=80=AFAM Jessica Zhang <quic_jesszhan@quicin=
c.com> wrote:
>
>
>
> On 9/23/2024 6:42 AM, Zhaoxiong Lv wrote:
> > In MTK chips, if the system starts suspending before the DRM runtime
> > resume has not completed, there is a possibility of a black screen
> > after waking the machine. Reduce the disable delay resolves this issue,
>
> Hi Zhaoxiong,
>
> Do you mean "if the system starts suspending before the DRM runtime
> resume *has* completed" here?

Hi Jessica

Sorry, my description may not be clear enough. It should be when the
DRM runtime resume has not yet completed and the system enters sleep
mode at the same time.


>
> >
> > The "backlight_off_to_display_off_delay_ms" was added between
> > "backlight off" and "display off"  to prevent "display off" from being
> > executed when the backlight is not fully powered off, which may cause
> > a white screen. However, we removed this
> > "backlight_off_to_display_off_delay_ms" and found that this situation
> > did not occur. Therefore, in order to solve the problem mentioned
> > above, we We reduced it from 100ms to 3ms (tCMD_OFF >=3D 1ms).
>
> So from my understanding of this paragraph,
> `backlight_off_to_display_off_delay_ms` was added to prevent the display
> powering off before backlight is fully powered off. You recently tested
> dropping this completely and saw no issue with this.
>
> If that's the case, why not drop this delay completely?
>
> Thanks,
>
> Jessica Zhang

Yes, there are currently no other issue after removing this delay.
The reason why I didn't completely remove this delay is because the
panel spec states that a delay of more than 1ms  (tCMD_OFF >=3D 1ms) is
required when entering diaplay_off (0x28H), so I reserved 3ms.

>
> >
> > This is the timing specification for the two panels:
> > 1. Kingdisplay panel timing spec:
> > https://github.com/KD54183/-JD9365DA_Power-On-Off-Sequence_V0120240923
> > 2. LMFBX101117480 timing spec: https://github.com/chiohsin-lo/TDY-JD_LI=
B
> >
> >
> > Fixes: 2b976ad760dc ("drm/panel: jd9365da: Support for kd101ne3-40ti MI=
PI-DSI panel")
> > Fixes: c4ce398cf18a ("drm/panel: jd9365da: Support for Melfas lmfbx1011=
17480 MIPI-DSI panel")
> >
> > Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com=
>
> > ---
> > Changes between V2 and V1:
> > -  1. Modify the commit message
> > -  2. Modify the value of backlight_off_to_display_off_delay_ms.
> > v1: https://lore.kernel.org/all/20240915080830.11318-2-lvzhaoxiong@huaq=
in.corp-partner.google.com/
> > ---
> >   drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c | 4 ++--
> >   1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c b/drivers=
/gpu/drm/panel/panel-jadard-jd9365da-h3.c
> > index 44897e5218a6..486aa20e5518 100644
> > --- a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
> > +++ b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
> > @@ -858,7 +858,7 @@ static const struct jadard_panel_desc kingdisplay_k=
d101ne3_40ti_desc =3D {
> >       .reset_before_power_off_vcioo =3D true,
> >       .vcioo_to_lp11_delay_ms =3D 5,
> >       .lp11_to_reset_delay_ms =3D 10,
> > -     .backlight_off_to_display_off_delay_ms =3D 100,
> > +     .backlight_off_to_display_off_delay_ms =3D 3,
> >       .display_off_to_enter_sleep_delay_ms =3D 50,
> >       .enter_sleep_to_reset_down_delay_ms =3D 100,
> >   };
> > @@ -1109,7 +1109,7 @@ static const struct jadard_panel_desc melfas_lmfb=
x101117480_desc =3D {
> >       .reset_before_power_off_vcioo =3D true,
> >       .vcioo_to_lp11_delay_ms =3D 5,
> >       .lp11_to_reset_delay_ms =3D 10,
> > -     .backlight_off_to_display_off_delay_ms =3D 100,
> > +     .backlight_off_to_display_off_delay_ms =3D 3,
> >       .display_off_to_enter_sleep_delay_ms =3D 50,
> >       .enter_sleep_to_reset_down_delay_ms =3D 100,
> >   };
> > --
> > 2.17.1
> >
>

