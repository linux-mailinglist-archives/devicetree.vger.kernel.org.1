Return-Path: <devicetree+bounces-140672-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DB634A1ADEF
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 01:30:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 52CAC7A4769
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 00:30:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A9A7194AFB;
	Fri, 24 Jan 2025 00:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="EFTpVUjt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58EBA18E02D
	for <devicetree@vger.kernel.org>; Fri, 24 Jan 2025 00:30:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737678633; cv=none; b=cq82t4VDtpv3Rim0ECNOcUdHHvVOCMB5UvXj/UuSms+qkmskDnpCuiT1Scmk9RTof++kdXnhnVVf/yl5Y3r6adXLKnMmsw/hLvi/WDeVD/H2nFne4PoHS+XhQxIYc/oG6INQDblJDQcvwlEWM/jscxtBQ9Uxtvy9jaSk4nGIR64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737678633; c=relaxed/simple;
	bh=IIo+eYAoeWuqrLbWBA/rpJFBKHXylVyElTCAQuDfxq8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CkFNKd2BL+Rrjxs0jACkgKO5oDG0saBn928/RF++36YC/Bs4FhkhPMnRWtilNSbfvT7V1q3Q1HS0/zPoyLQxJVHquzefJVzQWXVp16f/1MmEQmm0Apj9tSEWxvUvOVuwnygofTbtSgsTzv2m6x+RuX/JjEPpy8QwaCgPPSn1J1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=EFTpVUjt; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-53e3a37ae07so1745219e87.3
        for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 16:30:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1737678629; x=1738283429; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jwUdhzUcT/+g0Yt1m9YM5C5e54+Sg1OVGx+QoUxel7Y=;
        b=EFTpVUjtpdICG9aYYsaZphrKiCYuVXe6N6tltR/ZdnE0QBo06oqs2Oh98Ng4XaUeAy
         i4eKAhw/ItbBlKLcMMY4Nx8Ou8+h8Jbmc3R41Zkt5bfLkYsRpxQwd7Lo66zp9rDlBxsH
         A3NOpsAePpHrHRFRkFmwz7BQOmHHjYeTykfg8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737678629; x=1738283429;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jwUdhzUcT/+g0Yt1m9YM5C5e54+Sg1OVGx+QoUxel7Y=;
        b=K0daLeXC1wybFda8TEEJ1M/+bCSDECePrPg2lNCgyqJ5a1bUTC5PS7x3S5bREmspaV
         cjrFrz4C9T+5jg+gxTdlh2lHDCoFDGtk6MrjAEhKBVVjlZBJwaceoTF8gn/1G1WooMDr
         QwD8F6Vdv/l96Zn2EpeY3F+jBChwt0SNDfYQIq0AtgEiqNNig+IJtPq2nbWbaIVnjv6Y
         8VVYwUsHbTlMc3o9vLsImLPFiL5d3sPph+67L4NcqaGGqXcYLXo0FYlax5SNOODFUrGF
         YPGBj90taI4nayE+69NnnNtLCuTqLF2al4dEOvMWorb0q8Qy85vDKOfZ5AWxoTtN6i0z
         IjHg==
X-Forwarded-Encrypted: i=1; AJvYcCV02K5gqoctOA4tGHmzXFOzHp0Rx2HGIHMYS9niZQZzISuNUkUT5Mgr9+biMrXXQjrJdlbPtOhvfDXa@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9SGkPJPgWVlxG7VGwTpavzrgyESGR/fBOMrDQFDtlsIMCCl8s
	WQWbdY83cMQJtjLYQcRXC3JGtvoKhBbCkgzuiYjZLA65t9odbp0Eo2ztKH8E2L/Lmb9ccb+M44v
	MfGCh
X-Gm-Gg: ASbGncvrV4w2BLNiyYyrIxlgjdrjzdrEkRyn2+f6xFDxJ0bZY9hBrYxm3Q2Dogx6/L2
	gm34s5vIfH3NCsJRA099tcH2jgWd+faE/TpXWzWxIfcwXiw+N5Zfv8oj6XmotIf7RS31xZC9xRt
	xjXOc0XdzMyUAOUPjymEcIMnab4BcE3cVeGRBFOQsh8E3UcWvALXHbtcbnPD8CWBdGx+XDNTDzH
	X2QVTzdSQivH3zo/4BgHjrnuVJ+nQuPySFhHRosXgqz2Daj2Gl0q4HOFn/C7QMyiQUxldYdMQtM
	ujzdra2t2TpflHDlLi4Jt+kx/LFyE7LbjyrfmPjmOnUOf7bk
X-Google-Smtp-Source: AGHT+IGv634CmaZ/xbMPB9QSFrDbf7+KJtP92rd1UYoXk7xHO6dc8IRU17ghSCbPUPsesGLKMyyLUQ==
X-Received: by 2002:a05:6512:32c7:b0:540:3566:5760 with SMTP id 2adb3069b0e04-5439c265ce7mr9491030e87.35.1737678629383;
        Thu, 23 Jan 2025 16:30:29 -0800 (PST)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com. [209.85.208.169])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-543c836826asm97860e87.156.2025.01.23.16.30.29
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jan 2025 16:30:29 -0800 (PST)
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-305d840926fso12623991fa.2
        for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 16:30:29 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVmw/EyM/IgxOIUff9Zt7AJ6NoXL5zDf9FpCo6CV1ane0hhEKU3KmdvQQT3UM+dKXcTF45uPTVl/+ZQ@vger.kernel.org
X-Received: by 2002:a05:651c:1309:b0:300:3a15:8f0d with SMTP id
 38308e7fff4ca-3072cb284e5mr99531441fa.34.1737678628894; Thu, 23 Jan 2025
 16:30:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250123100747.1841357-1-damon.ding@rock-chips.com>
 <20250123100747.1841357-13-damon.ding@rock-chips.com> <rwn3g7tqgjnc525cjqtivgfgedhooiayn5nujng7bdzazgqhle@wfpuvoyr2tii>
In-Reply-To: <rwn3g7tqgjnc525cjqtivgfgedhooiayn5nujng7bdzazgqhle@wfpuvoyr2tii>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 23 Jan 2025 16:30:17 -0800
X-Gmail-Original-Message-ID: <CAD=FV=WKsA9fcq-LzGcYmgbMuMLUp5SMggpzBzZnvd3sxGf9BQ@mail.gmail.com>
X-Gm-Features: AWEUYZmXU1D9ya-D7zW5B92vNI1k79fpY-WVkms-sf4EzP7id3527uV9rKgvOPs
Message-ID: <CAD=FV=WKsA9fcq-LzGcYmgbMuMLUp5SMggpzBzZnvd3sxGf9BQ@mail.gmail.com>
Subject: Re: [PATCH v6 12/14] drm/edp-panel: Add LG Display panel model LP079QX1-SP0V
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Damon Ding <damon.ding@rock-chips.com>, heiko@sntech.de, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, 
	l.stach@pengutronix.de, andy.yan@rock-chips.com, hjc@rock-chips.com, 
	algea.cao@rock-chips.com, kever.yang@rock-chips.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Jan 23, 2025 at 3:31=E2=80=AFAM Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On Thu, Jan 23, 2025 at 06:07:45PM +0800, Damon Ding wrote:
> > The raw edid for LP079QX1-SP0V panel model is:
> >
> > 00 ff ff ff ff ff ff 00 16 83 00 00 00 00 00 00
> > 04 17 01 00 a5 10 0c 78 06 ef 05 a3 54 4c 99 26
> > 0f 50 54 00 00 00 01 01 01 01 01 01 01 01 01 01
> > 01 01 01 01 01 01 ea 4e 00 4c 60 00 14 80 0c 10
> > 84 00 78 a0 00 00 00 18 00 00 00 10 00 00 00 00
> > 00 00 00 00 00 00 00 00 00 00 00 00 00 fe 00 4c
> > 50 30 37 39 51 58 31 2d 53 50 30 56 00 00 00 fc
> > 00 43 6f 6c 6f 72 20 4c 43 44 0a 20 20 20 00 3f
> >
> > Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> > ---
> >  drivers/gpu/drm/panel/panel-edp.c | 8 ++++++++
> >  1 file changed, 8 insertions(+)
>
> Please use get_maintainers.pl when compiling To/Cc lists. Added Douglas
> to CC manually.
>
> Or, better, split irrelevant patches to separate series.
>
> >
> > diff --git a/drivers/gpu/drm/panel/panel-edp.c b/drivers/gpu/drm/panel/=
panel-edp.c
> > index f8511fe5fb0d..77e3fd3ed160 100644
> > --- a/drivers/gpu/drm/panel/panel-edp.c
> > +++ b/drivers/gpu/drm/panel/panel-edp.c
> > @@ -1808,6 +1808,12 @@ static const struct panel_delay delay_200_150_e5=
0 =3D {
> >       .enable =3D 50,
> >  };
> >
> > +static const struct panel_delay delay_50_500_e200 =3D {
> > +     .hpd_absent =3D 50,
> > +     .unprepare =3D 500,
> > +     .enable =3D 200,
> > +};

Wow, hpd_absent is 50ms. That's excellent!

I was curious if this was really correct since it's the lowest I've
seen, but I searched the internet and found a datasheet that confirms
it. Crazy. Although my datasheet has that whole section grayed out and
says "Measurement not available". How worried should be about that? I
guess if "hpd_absent" of 50 eventually doesn't work it can always be
increased.

Looking at that datasheet (assuming you can find the same one), I
wonder how you handle the T4 120ms requirement. It looks like that's
the time from tcon reset (which is nearly power on) until you're
allowed to put valid data on the panel. I _think_ you could meet the
requirement via setting `powered_on_to_enable` to 320 though, right?
...or maybe 335 to handle the maximum value of "tcon_reset" (no idea
how you control this signal). If I remember correctly (it's been a
while), things will already be clocking but outputting black when the
panel's "enable" function is called. After the function is called then
we'll turn on the backlight (and still outputting black) and
eventually we'll put valid data. So as long as you consider the
continued output of black as "valid data" then the timing diagram is
satisfied.

BTW: don't you also need a 200 ms "disable"?


> >  #define EDP_PANEL_ENTRY(vend_chr_0, vend_chr_1, vend_chr_2, product_id=
, _delay, _name) \
> >  { \
> >       .ident =3D { \
> > @@ -1955,6 +1961,8 @@ static const struct edp_panel_entry edp_panels[] =
=3D {
> >       EDP_PANEL_ENTRY('C', 'S', 'W', 0x1100, &delay_200_500_e80_d50, "M=
NB601LS1-1"),
> >       EDP_PANEL_ENTRY('C', 'S', 'W', 0x1104, &delay_200_500_e50, "MNB60=
1LS1-4"),
> >
> > +     EDP_PANEL_ENTRY('E', 'T', 'C', 0x0000, &delay_50_500_e200, "LP079=
QX1-SP0V"),

I don't love that the ID is 0x0000. That makes me nervous that the
panel vendor isn't setting the ID properly. ...but at least the string
matches in the EDID so hopefully that will be enough to uniquely
identify things.

