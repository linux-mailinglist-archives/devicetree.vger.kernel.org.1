Return-Path: <devicetree+bounces-267640-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WJWMCNK1nGkNKAQAu9opvQ
	(envelope-from <devicetree+bounces-267640-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 21:17:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 36CAA17CCC9
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 21:17:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6176530185F1
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 20:17:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBDEA377545;
	Mon, 23 Feb 2026 20:17:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BLHDX3Vt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f182.google.com (mail-dy1-f182.google.com [74.125.82.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C95E376BF7
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 20:17:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.182
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771877838; cv=pass; b=JcJETXhll/PTGv+GABkAepvf+o6c1R65al2nCZmBZAHVfOGXcrDiYE8aXHPmJtCx75a0Bhh2egp9p2Zd8Wm7U3v42UXUj3XLYfzTc+n9e+y46pTibBy/7wxhkaI+9MX48LeJVSdd9GoqZiMSMxcuvnyHX3HVhqInrJamuMiR/SI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771877838; c=relaxed/simple;
	bh=ceb0+/4imQs3+NBjs4WWx4sCzkZG1sxDy5ntGNiBLP4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=d17x6KFH5lMEV0Tj49fc8Yw62No69MJG4yP0Aiv85mvrf1VLO27MuVJdvnqfJhgmjsnL+MLRXjYCi9HlnBLZh4Po3+zjXwkZWx6nHO6062EhnTDQN8aoadpSfz7GtfavyMmfW5Kt0QfLW9i+Oap4edYgaZURfp/Ntyog89TIv90=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BLHDX3Vt; arc=pass smtp.client-ip=74.125.82.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f182.google.com with SMTP id 5a478bee46e88-2b82c605dbdso4488507eec.0
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 12:17:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771877836; cv=none;
        d=google.com; s=arc-20240605;
        b=fx3y926KgLhcg4i2QF6K7VbS0edDr1Dtc6AE+IBwneLJEeiuXGKVycgjzBnrDK6IvY
         Uk6f8Uq6Lx0uChEBb0KVj6P0RUNJWr1f9YsgoUVryUi74lJqPuiGLOoI2c07CwZNg+QP
         X9kaq5JjVeMBusM0Q8NF0nvvybrWHAkBFan3HpRsjIJBwUpw2CuWduYR/7SDf4rl50Rb
         vCtSOJS5DqXaiWyebGu1z+FMCE2DTRpZbH6O5vbzNK8nkjv6q8nFQ1EXtRAiZDhNTJ2H
         B5xCP31FbrBQBfH2XZFb3twDP1pmSpq+3T7+E6JiGAJVdHwzkmB2Q8hbi/wrUhgnyvdy
         z/Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ku3Mg3/oKQLa8vntyumKsTib+5PskclBL/D3UhM5Vrc=;
        fh=DEgGq65dFp6szJOL1EzZq31SRrlASIiTTXWp4Tv/he8=;
        b=O3RjcmpPFyYAXtAhECsf380338cbZ3gvRy+Y628TuAxOnIp2lZ7ETNMRb7A4U3047U
         x2pJbom0sT0FEvHz14A3vprYJ4GloCMJj1q/utvBoj+uI91ZLNe0G+cTIMV8XUqEnAJy
         2NKjTHdVIHCv7rAy3ZseiDMUy34B9rUQB4RcGcnmEtSnSugu7vE3wz6QQxFxIDUzCyb6
         TDrxhyFoQFbgfqtPVPZ6po4ueRjiAapXypoQl9DuImnI/LHpol0ddqhxe6Y0Q9pf03vM
         Q+EYrpgAPeVhVNSDdL9JvyOH7paWs7+JdlGYzsUC8QynTLakknnq0hp0oP2ldOofHkww
         vlOg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771877836; x=1772482636; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ku3Mg3/oKQLa8vntyumKsTib+5PskclBL/D3UhM5Vrc=;
        b=BLHDX3Vt0aP2FlDcX1iZsGZZKp44xCUewXgEqmd2xWCWR9vSvjU37jv9St25f3HdJW
         vB1/QuqLRHJtyGfpz8vfSStIGS8hDEwx6KVF/PV6ekZ2/pu3UQLJu7hdeX2k9ulu+tSR
         SficUg8Il+wcHw5tOP7g6m9kJoZOYDauz/OO79Pl49cz+7WF1fzqXjlHob6dnSU62/AU
         s+M5OvWLtCg71QV3TuG00dnv+7TSWevrkLWGjpIDbfPOv/35TeaEefeGVAhRgtigjkbA
         h/+ODrT3pJGzQXLuumTO++Yk7dGk+PEQVULsGCjlmrs8pVDBHC/MzU5w3fti09vqTgG7
         PRoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771877836; x=1772482636;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ku3Mg3/oKQLa8vntyumKsTib+5PskclBL/D3UhM5Vrc=;
        b=VpW0NZtLBAdqJAish4xKLV2rJbB0ctd1LNlLeGR4WK7/9bOvJz0VInkmxFi+uir/AD
         qYF1hY89UJ+SSiPFpXlk0dfdQ2paOpTxzL5MU6mSr3BmWiY5zct4DQJ2vj9GRBqa8Qgt
         CHpcTITuFThVHwDS11fjwLONIKvb3iSkYqleW+7lgnDw3egUzO5JmJKUpDOgOhxEn1q2
         bz8kJ6GJf3y4KX3bZgfyb36Q2PzhJxXAmMlaRiOzxLEIZDnFAD5+UlPmVO5DSw6hlsxt
         qBn/hZ3RB+Tds7vByoVNLkVc0N6zUbTZk9zkH6bxZCBIy7PIlEP9JWAl5wqw+fbHRK3E
         WLiw==
X-Forwarded-Encrypted: i=1; AJvYcCXQwuok4l2b5UbpeEgK/OkD03QyoAEwknx4sZY1CcHY9q2aBYDCI/eEyqqd7A5sodwa7johsC4F9OzU@vger.kernel.org
X-Gm-Message-State: AOJu0YzHtsqUKm1wHOf4gVtduFefX/Nq/4YwL3rPPDXByxXXqtd2DPWi
	KHhJnOVJ/CUX0UEZkWTRHnHj5PvVRjyBgIZGT1u72vGBZ/pLr50qVtxnSBGvQ1pGiLnycSLJSy+
	RjLufzWiU86VEsxrF+D4qJYUMEKlqXIM=
X-Gm-Gg: ATEYQzyYaQE6VZAmkiotKJ+vtOLtzxMI8idEf9spgQotGubUvCjHrILeSeFO8yjevJF
	P1VNHuAsuj8OQsg9bm5+C8x9MoNvnucdEkAcf+AtBuBnqCZ+buRvArd1qSLzMaDs8BRaFeeaTBf
	0uCElZJYfep8pdc9mYUbKYVatHPZIDPrG6yAqHcCASqje3VhJbWTLd2Z79d1u3Zo6iQaCyzP1rS
	7yqwuz7heayh2pKTH91zw2BquajM4SgoYlwYqldxJQV9Kc7isaW28INoc6xhweqvo+f1UJLutDw
	+KBWEJ8=
X-Received: by 2002:a05:7300:2308:b0:2ba:8e16:260e with SMTP id
 5a478bee46e88-2bd7bae98aemr4722722eec.11.1771877835876; Mon, 23 Feb 2026
 12:17:15 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260223-panel-patches-v1-0-7756209477f9@gmail.com>
 <20260223-panel-patches-v1-2-7756209477f9@gmail.com> <5ibwkfovm2vvpin475c47lueomscnetwv6myglxqtaw7x26l2m@q6p5vye7itnh>
In-Reply-To: <5ibwkfovm2vvpin475c47lueomscnetwv6myglxqtaw7x26l2m@q6p5vye7itnh>
From: Yedaya Katsman <yedaya.ka@gmail.com>
Date: Mon, 23 Feb 2026 22:17:02 +0200
X-Gm-Features: AaiRm50W1tsviNG90UeMm0nn7lr90F7cH3ejpUjkJcKTj0bb54NI64GJklPJBu8
Message-ID: <CAHuF_ZqVUvQSvQNnC55kDGE5KiDPPOphZCxOSmW_uqp5DGeCAA@mail.gmail.com>
Subject: Re: [PATCH 2/3] drivers: gpu: drm: panel: Add Samsung S6E8FCO
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <jesszhan0024@gmail.com>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	=?UTF-8?B?S2FtaWwgR2/FgmRh?= <kamil.golda@protonmail.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	~postmarketos/upstreaming@lists.sr.ht, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267640-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,protonmail.com,lists.sr.ht,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yedayaka@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 36CAA17CCC9
X-Rspamd-Action: no action

On Mon, 23 Feb 2026 at 21:37, Dmitry Baryshkov
<dmitry.baryshkov@oss.qualcomm.com> wrote:
>
> On Mon, Feb 23, 2026 at 04:24:03PM +0200, Yedaya Katsman wrote:
> > Add driver for Samsung S6E8FCO DSI video mode panel, used in
> > Xiaomi Mi A3 mobile phone.
> >
> > Co-developed-by: Kamil Go=C5=82da <kamil.golda@protonmail.com>
> > Signed-off-by: Kamil Go=C5=82da <kamil.golda@protonmail.com>
> > Signed-off-by: Yedaya Katsman <yedaya.ka@gmail.com>
> > ---
> >  MAINTAINERS                                   |   1 +
> >  drivers/gpu/drm/panel/Kconfig                 |  12 ++
> >  drivers/gpu/drm/panel/Makefile                |   1 +
> >  drivers/gpu/drm/panel/panel-samsung-s6e8fco.c | 293 ++++++++++++++++++=
++++++++
> >  4 files changed, 307 insertions(+)
>
> Please change the subject to follow "drm: panel: foo bar baz".
Ok
> With that in place:
>
>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Thanks
>
>
> >
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 545d4cf68b9ac27765c7981e668e32cfecf3366b..238b5332eaf0e0cfb983408=
4e24671ccaee79939 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -8187,6 +8187,7 @@ DRM DRIVER FOR SAMSUNG S6E8FCO PANELS
> >  M:   Yedaya Katsman <yedaya.ka@gmail.com>
> >  S:   Maintained
> >  F:   Documentation/devicetree/bindings/display/panel/samsung,s6e8fco.y=
aml
> > +F:   drivers/gpu/drm/panel/panel-samsung-s6e8fco.c
> >
> >  DRM DRIVER FOR SAMSUNG SOFEF00 DDIC
> >  M:   David Heidelberg <david@ixit.cz>
> > diff --git a/drivers/gpu/drm/panel/Kconfig b/drivers/gpu/drm/panel/Kcon=
fig
> > index 7a83804fedca1b688ce6fbe4295ec9009007e693..734640bb3f73c83e9273573=
aeb720ea1ba20862f 100644
> > --- a/drivers/gpu/drm/panel/Kconfig
> > +++ b/drivers/gpu/drm/panel/Kconfig
> > @@ -893,6 +893,18 @@ config DRM_PANEL_SAMSUNG_S6E8AA5X01_AMS561RA01
> >         ~5.6 inch AMOLED display, and the controller is driven by the M=
IPI
> >         DSI protocol with 4 lanes.
> >
> > +config DRM_PANEL_SAMSUNG_S6E8FCO
> > +     tristate "Samsung S6E8FCO DSI video mode panel"
> > +     depends on OF
> > +     depends on BACKLIGHT_CLASS_DEVICE
> > +     select DRM_MIPI_DSI
> > +     select VIDEOMODE_HELPERS
> > +     help
> > +       Say Y or M here if you want to enable support for the Samsung v=
ideo
> > +       mode panel S6E8FCO. The panel has a 6.09 inch AMOLED display, w=
ith
> > +       a resolution of 720x1560.
> > +       Found in the Xiaomi Mi A3 smartphone (xiaomi-laurel).
> > +
> >  config DRM_PANEL_SAMSUNG_SOFEF00
> >       tristate "Samsung SOFEF00 DSI panel controller"
> >       depends on OF
> > diff --git a/drivers/gpu/drm/panel/Makefile b/drivers/gpu/drm/panel/Mak=
efile
> > index b9562a6fdcb38bfd0dfee9e8c11e16149ada4386..54eca60e5b57328ea94ed78=
80f4dead981f87fc1 100644
> > --- a/drivers/gpu/drm/panel/Makefile
> > +++ b/drivers/gpu/drm/panel/Makefile
> > @@ -91,6 +91,7 @@ obj-$(CONFIG_DRM_PANEL_SAMSUNG_S6E88A0_AMS427AP24) +=
=3D panel-samsung-s6e88a0-ams4
> >  obj-$(CONFIG_DRM_PANEL_SAMSUNG_S6E88A0_AMS452EF01) +=3D panel-samsung-=
s6e88a0-ams452ef01.o
> >  obj-$(CONFIG_DRM_PANEL_SAMSUNG_S6E8AA0) +=3D panel-samsung-s6e8aa0.o
> >  obj-$(CONFIG_DRM_PANEL_SAMSUNG_S6E8AA5X01_AMS561RA01) +=3D panel-samsu=
ng-s6e8aa5x01-ams561ra01.o
> > +obj-$(CONFIG_DRM_PANEL_SAMSUNG_S6E8FCO) +=3D panel-samsung-s6e8fco.o
> >  obj-$(CONFIG_DRM_PANEL_SAMSUNG_SOFEF00) +=3D panel-samsung-sofef00.o
> >  obj-$(CONFIG_DRM_PANEL_SEIKO_43WVF1G) +=3D panel-seiko-43wvf1g.o
> >  obj-$(CONFIG_DRM_PANEL_SHARP_LQ079L1SX01) +=3D panel-sharp-lq079l1sx01=
.o
> > diff --git a/drivers/gpu/drm/panel/panel-samsung-s6e8fco.c b/drivers/gp=
u/drm/panel/panel-samsung-s6e8fco.c
> > new file mode 100644
> > index 0000000000000000000000000000000000000000..0a1a1c680ee143d2429a6e1=
ea59a4fdd16b156b4
> > --- /dev/null
> > +++ b/drivers/gpu/drm/panel/panel-samsung-s6e8fco.c
> > @@ -0,0 +1,293 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +// Copyright (c) 2025 Kamil Go=C5=82da <kamil.golda@protonmail.com>
> > +// Generated with linux-mdss-dsi-panel-driver-generator from vendor de=
vice tree:
> > +// Copyright (c) 2026, The Linux Foundation. All rights reserved.
>
> Hmm, so Kamil worked on it before it was written by LF? Are you sure
> that the year here is correct?

What happened is kamil worked on it, and then I regenerated it again
with the script. Re-considering it, the LF copyright should be from
the start, I shouldn't have modified it, will fix, thanks for pointing
it out!

> > +
>
> > +
> > +static const struct backlight_ops s6e8fco_samsungp_bl_ops =3D {
> > +     .update_status =3D s6e8fco_samsungp_bl_update_status,
> > +     .get_brightness =3D s6e8fco_samsungp_bl_get_brightness,
>
> Does it actually return the written value?
Yes, writing to /sys/class/backlight/5e94000.dsi.0/brightness and
reading from /sys/class/backlight/5e94000.dsi.0/actual_brightness
works correctly.

> > +};
> > +
>
> --
> With best wishes
> Dmitry

Regards, Yedaya

