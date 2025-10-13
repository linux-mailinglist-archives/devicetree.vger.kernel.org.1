Return-Path: <devicetree+bounces-226043-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC5FBD32A0
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 15:18:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 75C0A4F145E
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 13:18:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB8F6257AD3;
	Mon, 13 Oct 2025 13:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jjkak5kN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com [209.85.208.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1F297262D
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 13:18:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760361514; cv=none; b=CRpw2DgYW+IMHouLZQSvziUaGz8t+XsG9en3uskxFk3la7Gq1Z+FdvZzXL3K84pqqmQrHRSHdzQ6YSiVDDAtneQewR6f4I7KWhUumElFwZN04I6SngyJQ2Znh5hpyjaZOgu0sOWpCIgfuvGQnnpIJj3XDjzbMZpKDfO931EUrLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760361514; c=relaxed/simple;
	bh=XATrkBbENj2WWue2qtMkrJM0HdkQdLuq3HBs+91K598=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=s2yieDLtxd1VIY+hoSu/2+wgRmF1HsEopCZ1XLZEtIkIEqAPoU3tBmO6JQ+9CTuO8BpsutpnphFypF65W1vJXM7Huivx2GPChfumN7ZAvofn3rxI425PjO2tQZ5bxtiIyGviZMYQJfOT4B29ObstI2RxehPBJwA9ZQexs1USX+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jjkak5kN; arc=none smtp.client-ip=209.85.208.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f65.google.com with SMTP id 4fb4d7f45d1cf-6318855a83fso9519153a12.2
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 06:18:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760361511; x=1760966311; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W9AiQH+p3Zc9JwwBJl7QXYeZboD0M4kQBWEkieM2TAA=;
        b=jjkak5kNId9EdTiHW57STf68uKURxy1S3HdTL+pBU9sZeqH8FbaQcjklRF0Umbhhht
         U2MUVJOyQ3N1LzPCz2ceLD7SiULWm63vaZ3pCIkmF8ZZlTmaf0aMIjcMCaCxcqdBTSaL
         gHcHZPCo8WuHj4AirbFEcHlwWkFZubl4dJ/UajiBzZGrxaWowmCj8JTCPj/xJtk9e6+w
         vsrX4Zhi7ty+4YczQiFWa00E7hbYf5KKqkuYx/OiwmSdiWrcAZ8EepG/4db+w5y40Tzc
         9rmE1rbkYnNMYJ2N8t/yQ+BzDm2uEPpC/CjsQO+FOGKUUsPvyZPhBL0Lcz6HqvRMICvN
         w8HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760361511; x=1760966311;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=W9AiQH+p3Zc9JwwBJl7QXYeZboD0M4kQBWEkieM2TAA=;
        b=ZJbKW+wXzhWWLUnTmJVN6XzIWQvBv8zLWEzRGMxY+drN3NAq9bNoKrfb4htYZ4TUFQ
         yGooJHVTD3grAgjoSvK6VWychL50DgZ/CKW1jX+TFT2p5j7ztjNCxA6UjJo5XqZMptmK
         RTXpSP10U5HHlFWLcx89irO7wymmuNkAMbHgdplxiB7G0nAInJPRxhWOhNI1mza/VmhN
         ok3oiyUwlHAoISgHvL/fuyXFcTsHzyXEX/L+oOneQWBmS0zV8UzJJf1nOcGeK2sWUugY
         zg/iDXumi0QCV3bFBeQxgbozodjsGOgIk2IFIvl29OEO9b5XkCPuGINYwo0AsOHy9t0Y
         tjiQ==
X-Forwarded-Encrypted: i=1; AJvYcCWS71wzjIr+j6QbAXBULD3rniFut3LtNj4Q1LPH7EydyvXm9xwvc64so4Iq9kOdb9iUEQyl40IGMRLq@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/fPhUBTnLzVY7oGyJyPjDN2n1lCarYs+pCJECMhPHhoBci7IA
	PD6kFshcmbgLGYQT7xcNfXZuFef7KtJxlUvZouuIfxhHBYKwsjKgEWi6CS8Af2EJLyQozPc6ima
	WkBjSIbSPY3N8Y/FRDXJ5xFZDQ6PwC18=
X-Gm-Gg: ASbGncsAjegGFIZuvVjnCGvnLuNkRP7IQgJL4KK3EPSX2veGo5bzukmMY5w6VsQeTiK
	bbszsqsPvBdZie8UkVO7PDkj3gh/gYjvGjvQ4h0pvNB0SyTAlOfjSNlGhhIZMeSzI6dz3MBb3EI
	ry+IzSOleUr09HQGvdwLJz1Q/aWweOklu8H9gw67Y9YfQiZX5wR8/fDzb3B6XdHiwZ+mqCs+cFN
	uemRIGGFVlA7l8di/xfSKEuPTgTPZf6aKbj
X-Google-Smtp-Source: AGHT+IHv7bID+xbm7RowzwKtepEJM2QOtT7nCXsATO274uCHhG9AaqRttSiuceRtheBHXIXQGcJxOUqKR8B8nZHeuYE=
X-Received: by 2002:a05:6402:3554:b0:639:fb11:9935 with SMTP id
 4fb4d7f45d1cf-639fb119b08mr13930852a12.4.1760361510947; Mon, 13 Oct 2025
 06:18:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251001135914.13754-1-caojunjie650@gmail.com>
 <20251001135914.13754-3-caojunjie650@gmail.com> <cwgn24f6tnmytd4omr2tul4e5jjin3ijji3ff3qkumqm2xe3t3@ntayu3m5kai3>
 <CAK6c68jBwykcWZm3ckm3nwab-X9Are4rD-eauE4rXA2+XvuX1w@mail.gmail.com>
 <9cafccd5-35d4-46c5-aa57-1b0b8ec116e8@oss.qualcomm.com> <CAK6c68iV=n3BvMMa30FuehbMs7-U01s0saZnsYwPVoiyw0VTrg@mail.gmail.com>
 <icj24ghckurcunjormsfhhscng4wfcxiyadl2z5xduitxxqqmp@iws3pssew5dx>
In-Reply-To: <icj24ghckurcunjormsfhhscng4wfcxiyadl2z5xduitxxqqmp@iws3pssew5dx>
From: Junjie Cao <caojunjie650@gmail.com>
Date: Mon, 13 Oct 2025 21:17:04 +0800
X-Gm-Features: AS18NWACwn3Ejqy7Cy6CMtpi1wwkfKvIy2-Q1E725iHTCiZTeN8KHYUSRZ_-JDg
Message-ID: <CAK6c68hZq2o9YXxzd2dv5AXw5-UfKv_58MoUrQfGyfPiONArEg@mail.gmail.com>
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
10=E6=9C=8813=E6=97=A5=E5=91=A8=E4=B8=80 20:31=E5=86=99=E9=81=93=EF=BC=9A
> On Mon, Oct 13, 2025 at 07:04:43PM +0800, Junjie Cao wrote:
> > Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> =E4=BA=8E2025=E5=
=B9=B410=E6=9C=8813=E6=97=A5=E5=91=A8=E4=B8=80 17:39=E5=86=99=E9=81=93=EF=
=BC=9A
> > > On 13/10/2025 04:52, =E6=9B=B9=E4=BF=8A=E6=9D=B0 wrote:
> > > >  >Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com
> > > > <mailto:dmitry.baryshkov@oss.qualcomm.com>> =E4=BA=8E2025=E5=B9=B41=
0=E6=9C=882=E6=97=A5=E5=91=A8=E5=9B=9B 10:04=E5=86=99=E9=81=93=EF=BC=9A
> > > >  >On Wed, Oct 01, 2025 at 09:59:13PM +0800, Junjie Cao wrote:
> > > >  >> From: Jun Nie <jun.nie@linaro.org <mailto:jun.nie@linaro.org>>
> > > >  >>
> > > >  >> Some panels support multiple slice to be sent in a single DSC
> > > > packet. And
> > > >  >> this feature is a must for specific panels, such as JDI LPM026M=
648C.
> > > > Add a
> > > >  >> dsc_slice_per_pkt member into struct mipi_dsi_device and suppor=
t the
> > > >  >> feature in msm mdss driver.
> > > >  >>
> > > >  >> Co-developed-by: Jonathan Marek <jonathan@marek.ca
> > > > <mailto:jonathan@marek.ca>>
> > > >  >> Signed-off-by: Jonathan Marek <jonathan@marek.ca
> > > > <mailto:jonathan@marek.ca>>
> > > >  >> Signed-off-by: Jun Nie <jun.nie@linaro.org <mailto:jun.nie@lina=
ro.org>>
> > > >  >> Signed-off-by: Junjie Cao <caojunjie650@gmail.com
> > > > <mailto:caojunjie650@gmail.com>>
> > > >  >> ---
> > > >  >>  drivers/gpu/drm/msm/dsi/dsi_host.c | 25 ++++++++++------------=
---
> > > >  >>  include/drm/drm_mipi_dsi.h         |  2 ++
> > > >  >>  2 files changed, 12 insertions(+), 15 deletions(-)
> > > >  >
> > > >  >Please extract the generic part, so that it can be merged through=
 a
> > > >  >generic tree.
> > > >  >
> > > >
> > > > Sorry, I don't get it.  The generic part, generic tree? Do you mean
> > > > the drm tree? `slice_per_pkt >=3D 2` is seen on the panels of these
> > > > tablets that are equipped with qcom chips. I don't know if these
> > > > panels are used on other platforms, and if it is necessary to do it
> > > > in drm.
> > >
> > > There are two changes here:
> > > - MIPI DSI header change
> > > - msm DSI driver
> > >
> > > I've asked to split it to those two commits so that he change for
> > > drm_mipi_dsi.h is more obvious for reviewers and so that it can be
> > > merged through a drm-misc tree (or through drm-msm tree provided it g=
ets
> > > a necessary ack).
> > >
> >
> > Thanks for your clear explanation.
> >
> > I don't mind to add the field separately. But should I submit it
> > with the panel driver together? Otherwise, this field is unused
> > for a while.
> >
> > However, as you mentioned, this is not a part of standard, neither
> > mipi dsi nor VESA DSC. Recently, only Qualcomm devices require it
> > to calculate parameters, then we use them to program registers. Why
> > don't we parse the field from devicetree?
>
> Because the value is uniquelly identified by the panel's compat string.
>

Yes, it is panel specified.
But can we set it for every panel like

&mdss_dsi0 {
    qcom,mdss-dsc-slice-per-pkt =3D <2>;

    status =3D "okay";

    panel: panel@0 {
        compatible =3D "foo,bar";
        reg =3D <0>;
    };
};

or moving the property to panel node? We access it from child node.

> --
> With best wishes
> Dmitry

