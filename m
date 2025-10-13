Return-Path: <devicetree+bounces-225988-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D72B9BD2B8E
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 13:07:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1E8644F0A41
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 11:07:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12E17267386;
	Mon, 13 Oct 2025 11:06:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GipQZPs+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com [209.85.208.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 191DC255F28
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 11:06:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760353575; cv=none; b=sn0rxj0k6hPaVvKWBgs1+tlsoJmaOhiAwHoumR9WfgCTfJj5Mnk4AGJn3OJN4l8CvpMaL7alYD5BpDliGoLBHvawVK8RGKeIO38SLG96Yp2H1eF7mCFRPKEbd3H5rokya56mHGAES1BbKJ3638DDa4hvTWGigj6fogpAa9KAyw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760353575; c=relaxed/simple;
	bh=nsyszXpKt948oOKahE3XIckpOp3K0wFz9VjnpoVgmwQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=u/Af263FpQoGGlcgRev2iW/3PJB+G4SMSeNK7g4+frgIciZWsCHHuYDQz0NZ4qaXw5tnE5yF9Fp43fiSFNWRQgwxZpSsA3CrIcY+1MqvhrgiCMe5oZjQruv2RkRLmhIkzXebM+ltsRel+uj46aL2vG13mLy1IxCsFyPW9STlowU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GipQZPs+; arc=none smtp.client-ip=209.85.208.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f68.google.com with SMTP id 4fb4d7f45d1cf-62fc89cd68bso4063757a12.0
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 04:06:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760353570; x=1760958370; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+aUxvhazo+fI5qnE1t9OWiNPdeUT1J2KZzqa5v9i4n4=;
        b=GipQZPs+ZW1F1dXJO+PoBGjZiGv8mQ22pTroKDqs1RnYg+w4CFCVJwSRuqsGcDNBGm
         itUmci8zVerEXiew+GQf4rFdKXpXayAquJZ7XoxHNR1QY0PlBpFkNuBfN4+dCCYzgOkL
         PCsueQlJwCTRUTltYTTn9yQ00eQ5HBccsOYp8DjLDVvTmkyZs8PkoOqcSh4UWmGLbpYk
         EYOyo7WJPl3SKvZa5Y7j0hQLYkdJnm4teB5FA5q24PnplY/maPL0ZhtGBIO/ek0D/a52
         k7ZtSRXAPnlP35+t9SM9u7l3PNV+HfCrpkxrIiPwKVWpc0MGQclC5ytULvC1OPeNMJi3
         W+iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760353570; x=1760958370;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+aUxvhazo+fI5qnE1t9OWiNPdeUT1J2KZzqa5v9i4n4=;
        b=SXmK/dN5EYVn7a9371qtG1Y9tnuDW7Yyj9ijeFrzJKeBLJ0osyv+Q3F4mNu6UdQlgU
         iuvZdBEx+KLXPLpBeomMxTSbbDfSet3PJUBEFT0Ek8lTzrQlScAu/MvmrAewaVeUIIcW
         K8ECrvfu2YVJifyeF1m4Kn/ybXVsx4NTVSo/G6+hKqr06+6RUmAb2uge4xbPSiZG4vzC
         AkEg/S1rm6o/BD5ndHgymBg5NvOGAY5IwEr/g2nhzBCQwe/f1lICcP4kacT3WFXROe+P
         sonHH5xoibKk5FWX/LnHiWs9mHhAKPi+/0AWo7OKNgDplrDpQ3aLq8XjNelqVo8s9vCi
         81uw==
X-Forwarded-Encrypted: i=1; AJvYcCXQX7IKo/MVUpzAVELQXnX9jQ6Mq2Ifq+RSbK+uLhc2aZPF4dLllqwlO6/VI52rYQhUM9Gm+J1Z6HG5@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4QYhVQbZYc8nH5+nD8bX4e82stU+QEZ+kLDxXFow4XlxFrijt
	V7rJ83Bwd3k50hp5ayxg65/Me4jM4l+caOoMBR0JsCTFqXKfhenyGDhrWn8BZVhuOnoOPreYqSI
	wiGGeXlG+TBm8bhfmKjoWQjIKpfwSfWE=
X-Gm-Gg: ASbGnctsuiP4PDqJPQq+DzL4OcNqD8nZk8KIS7d82nXfrMDs7rNCt0U4lynAruTaBjm
	da6wb6xP44yHyJXjjZ0nnkxxiilj1rBay80+8IogY+JO1uaalVZPRNogLj36VGqe7yjOTUsIjQr
	XO5MDpZxUQU0X8n27esvBNEjR74UqizI/qXsN35TYXm2EFt++oQ7eQXwrYr7/Gfb1/DoBNbMxSO
	RIo0PCYQ5TOnThNizUtwkqk6Q==
X-Google-Smtp-Source: AGHT+IGKDAXHZdvVmAlgzfekl2q5ywgCmcwxWyGOCrVIW3K2IvCUoc7P8HxcJHgwR9akx4wiqqa3iRMeNlO7r8vGrAA=
X-Received: by 2002:a05:6402:144e:b0:63a:294:b02a with SMTP id
 4fb4d7f45d1cf-63a0294b35fmr13389237a12.13.1760353570084; Mon, 13 Oct 2025
 04:06:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251001135914.13754-1-caojunjie650@gmail.com>
 <20251001135914.13754-3-caojunjie650@gmail.com> <cwgn24f6tnmytd4omr2tul4e5jjin3ijji3ff3qkumqm2xe3t3@ntayu3m5kai3>
 <CAK6c68jBwykcWZm3ckm3nwab-X9Are4rD-eauE4rXA2+XvuX1w@mail.gmail.com> <9cafccd5-35d4-46c5-aa57-1b0b8ec116e8@oss.qualcomm.com>
In-Reply-To: <9cafccd5-35d4-46c5-aa57-1b0b8ec116e8@oss.qualcomm.com>
From: Junjie Cao <caojunjie650@gmail.com>
Date: Mon, 13 Oct 2025 19:04:43 +0800
X-Gm-Features: AS18NWAHjO2WhOdNhja1yiGzTv7NF2-hQQdiny2sVnNEXy9aQKZ9xWdUII5sYvA
Message-ID: <CAK6c68iV=n3BvMMa30FuehbMs7-U01s0saZnsYwPVoiyw0VTrg@mail.gmail.com>
Subject: Re: [PATCH 2/3] drm/msm/dsi: support DSC configurations with
 slice_per_pkt > 1
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <jessica.zhang@oss.qualcomm.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Rob Clark <robin.clark@oss.qualcomm.com>, Dmitry Baryshkov <lumag@kernel.org>, 
	Abhinav Kumar <abhinav.kumar@linux.dev>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, Antonino Maniscalco <antomani103@gmail.com>, 
	Jonathan Marek <jonathan@marek.ca>, Eugene Lepshy <fekz115@gmail.com>, Jun Nie <jun.nie@linaro.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	freedreno@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> =E4=BA=8E2025=E5=B9=B4=
10=E6=9C=8813=E6=97=A5=E5=91=A8=E4=B8=80 17:39=E5=86=99=E9=81=93=EF=BC=9A
> On 13/10/2025 04:52, =E6=9B=B9=E4=BF=8A=E6=9D=B0 wrote:
> >  >Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com
> > <mailto:dmitry.baryshkov@oss.qualcomm.com>> =E4=BA=8E2025=E5=B9=B410=E6=
=9C=882=E6=97=A5=E5=91=A8=E5=9B=9B 10:04=E5=86=99=E9=81=93=EF=BC=9A
> >  >On Wed, Oct 01, 2025 at 09:59:13PM +0800, Junjie Cao wrote:
> >  >> From: Jun Nie <jun.nie@linaro.org <mailto:jun.nie@linaro.org>>
> >  >>
> >  >> Some panels support multiple slice to be sent in a single DSC
> > packet. And
> >  >> this feature is a must for specific panels, such as JDI LPM026M648C=
.
> > Add a
> >  >> dsc_slice_per_pkt member into struct mipi_dsi_device and support th=
e
> >  >> feature in msm mdss driver.
> >  >>
> >  >> Co-developed-by: Jonathan Marek <jonathan@marek.ca
> > <mailto:jonathan@marek.ca>>
> >  >> Signed-off-by: Jonathan Marek <jonathan@marek.ca
> > <mailto:jonathan@marek.ca>>
> >  >> Signed-off-by: Jun Nie <jun.nie@linaro.org <mailto:jun.nie@linaro.o=
rg>>
> >  >> Signed-off-by: Junjie Cao <caojunjie650@gmail.com
> > <mailto:caojunjie650@gmail.com>>
> >  >> ---
> >  >>  drivers/gpu/drm/msm/dsi/dsi_host.c | 25 ++++++++++---------------
> >  >>  include/drm/drm_mipi_dsi.h         |  2 ++
> >  >>  2 files changed, 12 insertions(+), 15 deletions(-)
> >  >
> >  >Please extract the generic part, so that it can be merged through a
> >  >generic tree.
> >  >
> >
> > Sorry, I don't get it.  The generic part, generic tree? Do you mean
> > the drm tree? `slice_per_pkt >=3D 2` is seen on the panels of these
> > tablets that are equipped with qcom chips. I don't know if these
> > panels are used on other platforms, and if it is necessary to do it
> > in drm.
>
> There are two changes here:
> - MIPI DSI header change
> - msm DSI driver
>
> I've asked to split it to those two commits so that he change for
> drm_mipi_dsi.h is more obvious for reviewers and so that it can be
> merged through a drm-misc tree (or through drm-msm tree provided it gets
> a necessary ack).
>

Thanks for your clear explanation.

I don't mind to add the field separately. But should I submit it
with the panel driver together? Otherwise, this field is unused
for a while.

However, as you mentioned, this is not a part of standard, neither
mipi dsi nor VESA DSC. Recently, only Qualcomm devices require it
to calculate parameters, then we use them to program registers. Why
don't we parse the field from devicetree?

>
> --
> With best wishes
> Dmitry

Regards,
Junjie

