Return-Path: <devicetree+bounces-215367-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C962B51409
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 12:30:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D5A201BC404D
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 10:31:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3A593164B3;
	Wed, 10 Sep 2025 10:29:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ms74izMD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 461F6313E3A
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 10:29:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757500167; cv=none; b=R7UGm5ONqIWssp/QTjifARuwicsthH7xs/msTM6hy/cG/DHjcEYe4BWRVW9ULjKyE7TGol2Rp4g1YqCZyGf6QU7F8pwNZM1OBiha3dU1gzCG2w0ScL9kMEyjA66maxsuEHFlyLhm9gfO85J+TrMRMexMsiRFLQ4n1ssBf5vmw8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757500167; c=relaxed/simple;
	bh=xqqWloOyj1O6e9rQgZLm+mhhJUMO7/mt6SeAPf0p2Go=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ipBeMgZ42lg4vLPF5ikG5nzFTAVu4pQgaPhMWbHM92y+ka2g2pmJEJntBLSIubIlBgktLMm4yML1otE7FA+XO6T1l5tS0YSdXJcQCeqTEQ03XoDYa5xXIhAXx3/jrXIu210/EjbzXX+pVQJa/htjgh4AG39boYdLyh0PljxC8UE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ms74izMD; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-62d1faf1d8bso1606189a12.3
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 03:29:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757500163; x=1758104963; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VFR8ZPpFEPCVYzLk5x4GOe0UcgUOQwtlh+HxpxWLLgo=;
        b=Ms74izMDHjParVNy9syV5X2jWRBs82W8XgkLVthgjC/Y248Sc9mvs/jPpDy3WiXZXR
         CBkcRaDq1W4XlbCf22bUoRep3c4le7Ab8MxnMV4Lh3Lz4S0ewYGqA/Nb4jLIeT1N54dM
         TfK/rz6KMUGG6IfUkPjhdsU1FIJzITVC4JyxFY4lpB10J7bW/8zbESoZ9VBks780F39x
         3tCNf8+U5+gjjdvlV+oElJD6ZqiqSgIH70u/wRxwp996c09egU52L5nvO/9yA99E1vYN
         1dtHpUBNJ79/tRzYGzPql/15Rsth5NM9AJF38AN6tQybCMvLtqUFj8LGJcdb3KmxE98M
         rbRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757500163; x=1758104963;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VFR8ZPpFEPCVYzLk5x4GOe0UcgUOQwtlh+HxpxWLLgo=;
        b=d++o1C51F4/In5iouFoBuceFK82KMPybv0o53WR2NSOt4fo7Pg+TBFDkEDTvpDBmSp
         Kqc0AqIFw0OflAXkT4Ipva5l3GY8waaySzxgKE6J75zaVLB6l7W9CBVY/i3bBV5IfzhT
         ZU8TeihgQ6tjnlkJCR+NA/tJfxrzNyUs7BrihbGVug6k4snZGGua45SqKYPXG/nBJOiA
         pLwzu26GmSKRgGnajvsXaqeSmZVgeJugcFHIgc/iD6s4UMNSZZmVt2A5EiP9/RaveGOB
         0i8mil9OpMiq8NVBTaA4hH21L8tjxj/GYZnsFD/Q7QsYVBzjwZFagfCVMliO2WA2cUdv
         4JVw==
X-Forwarded-Encrypted: i=1; AJvYcCXYWAF/9LB1Yw0uWssSOzZErz3swfVqBLKwzWR0FfqdZxCHmuRAs55tTNAGx3wIuZxVGYc3zCYuKQBg@vger.kernel.org
X-Gm-Message-State: AOJu0Yznj+SCewOYrU4C0FL0kqI6xLdlCXrKdnz8oJInGCN5DnN3QRhV
	0FJkGRrhg/JJpSenqtcZuMFDch/iNsVvv82u9RdAgRZLFHqDThKOtki2dCRMnrnTvZbKTaBnb50
	BUW7M0j71bZ13+jvxVvjoJ3ZN/YwSfEc=
X-Gm-Gg: ASbGncvPRQDMRvw3R5ILDTeKhIVOI8kUCT/smrlQ+/fVPFgxNLL+h54cm/jRxmo43s4
	TgeZ9AHvNPZ6swLl6XF+5SIRZn69smGXDTjVaAWMEpiU/FTnIGfL/G9VtvV9yzlqFHQvaNwDPia
	hQdhqJw1VaRTjmDyh4vqG/cNFRaYA85R50ooEaWby5wcwx+z06THma6+k2xmbzLgL9UultEIJxW
	71KAKw=
X-Google-Smtp-Source: AGHT+IECula9dQIHz1fdQAkXI9rWQDEmBppATKx+V8i0x7QFJ364KiBjVFFTrRLIeHCkEnfADY+kNhoLNela/4vT6zI=
X-Received: by 2002:a05:6402:35c6:b0:62b:63f8:cdbb with SMTP id
 4fb4d7f45d1cf-62b63f8d53fmr6060144a12.25.1757500163205; Wed, 10 Sep 2025
 03:29:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250821073131.2550798-1-shengjiu.wang@nxp.com>
 <20250821073131.2550798-5-shengjiu.wang@nxp.com> <20250901185208.394cd162@booty>
 <CAA+D8AOCTqb5jLeRapYk4wRGZrsrPiuAR=ow3OA1B0+M9X4k7w@mail.gmail.com> <20250909-omniscient-honeybee-of-development-adca8a@houat>
In-Reply-To: <20250909-omniscient-honeybee-of-development-adca8a@houat>
From: Shengjiu Wang <shengjiu.wang@gmail.com>
Date: Wed, 10 Sep 2025 18:29:06 +0800
X-Gm-Features: AS18NWDxCBzuENqe0ZeZa-sBoiFIIvg2ByB3rkyz5E1gppn1Dt3RitckbH6afXg
Message-ID: <CAA+D8AM=aRU-0QcgtxZ+=YBZ2+kMrP2uzSE3e+NJs3Z3zkrSVg@mail.gmail.com>
Subject: Re: [PATCH v5 4/7] drm/bridge: dw-hdmi: Add API dw_hdmi_set_sample_iec958()
 for iec958 format
To: Maxime Ripard <mripard@kernel.org>
Cc: Luca Ceresoli <luca.ceresoli@bootlin.com>, Shengjiu Wang <shengjiu.wang@nxp.com>, 
	andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org, 
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, 
	maarten.lankhorst@linux.intel.com, tzimmermann@suse.de, airlied@gmail.com, 
	simona@ffwll.ch, lumag@kernel.org, dianders@chromium.org, 
	cristian.ciocaltea@collabora.com, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, victor.liu@nxp.com, shawnguo@kernel.org, 
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, p.zabel@pengutronix.de, 
	devicetree@vger.kernel.org, l.stach@pengutronix.de, perex@perex.cz, 
	tiwai@suse.com, linux-sound@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi

On Tue, Sep 9, 2025 at 2:39=E2=80=AFPM Maxime Ripard <mripard@kernel.org> w=
rote:
>
> Hi,
>
> On Wed, Sep 03, 2025 at 06:41:05PM +0800, Shengjiu Wang wrote:
> > On Tue, Sep 2, 2025 at 12:52=E2=80=AFAM Luca Ceresoli <luca.ceresoli@bo=
otlin.com> wrote:
> > >
> > > Hello Shengjiu,
> > >
> > > On Thu, 21 Aug 2025 15:31:28 +0800
> > > Shengjiu Wang <shengjiu.wang@nxp.com> wrote:
> > >
> > > > Add API dw_hdmi_set_sample_iec958() for IEC958 format because audio=
 device
> > > > driver needs IEC958 information to configure this specific setting.
> > > >
> > > > Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
> > > > Acked-by: Liu Ying <victor.liu@nxp.com>
> > >
> > > [...]
> > >
> > > > +void dw_hdmi_set_sample_iec958(struct dw_hdmi *hdmi, unsigned int =
iec958)
> > > > +{
> > > > +     mutex_lock(&hdmi->audio_mutex);
> > > > +     hdmi->sample_iec958 =3D iec958;
> > > > +     mutex_unlock(&hdmi->audio_mutex);
> > > > +}
> > >
> > > Apologies for jumping in the discussion as late as in v5, but I notic=
ed
> > > this patch and I was wondering whether this mutex_lock/unlock() is
> > > really needed, as you're copying an int.
> >
> > Thanks for your comments.
> >
> > Seems it is not necessary to add mutex here. I just follow the code as
> > other similar functions.  I will send a new version to update it.
>
> Let's not be smart about it. Next thing you know, someone will add
> another field in there that would absolutely require a mutex and now
> you're not race free anymore.
>
> Unless there's a real concern, the mutex must stay.
>

Ok, thanks for comments.  Then Patch v6 need to be dropped.

Is there any other comments for this Patch v5?
If no, can this series be accepted?

Best regards
Shengjiu Wang

