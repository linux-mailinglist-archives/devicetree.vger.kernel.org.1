Return-Path: <devicetree+bounces-222823-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B12CBAD6AD
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 17:00:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1AC2B189AF67
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 14:59:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1E7E30594A;
	Tue, 30 Sep 2025 14:59:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Xb8qLYe8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0782FFDE6
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 14:59:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759244372; cv=none; b=G9mJloOmtM9sFaG1FSrDrZ4HtSmVFIcWnpQbslG4nGQAUjLxb7NqHrgD6v0eFdShBF4cnsLzRTMEK5rfT+AlQHGA/Xr9Npnc5qFDSAj52HZWxasrUyBVT/1pRd+LMpxe/vX/K5Z56G3DI7BJenT/sWhQ/LDIrOLyobd/JSAG+ZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759244372; c=relaxed/simple;
	bh=ChfNU9FvF2cIQ/RryZeB9UnFuqodq6HvJ8lwY8BZ/AU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TXLuobVAfV7+gqfq130VPor2U0i2NRDa0x44X6Vj2FBVLX2vTXom9RKvuRvTzMRGzdFcx1Fy7boCMJxexGnjmJciRgT2twXMznndVrt++VKgYal4riQGSc0fTx+DnfhY4DitZuinBs7Lun+UWJMsoIV5o3wvhRKMtsymuzB3HwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Xb8qLYe8; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-78125ed4052so4349402b3a.0
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 07:59:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1759244370; x=1759849170; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YSc3erqR+m9Cq3XMrwel4zg9jxga5W34DHU66LfGEqk=;
        b=Xb8qLYe8wYtxFrftdOHR/XFIEwC5WxuBjytEk8hHg2H4n6TmqsCelaDV/0TV/+YCXt
         LPF+29l+5bcdsf/jEknZiX/Rw+WMEk7PwedUgHDI8X4MC+TDJe0v/OMFWEEwaT3/hW8N
         jZ2IyyVlRDMVsV8i8+WYg6OBAkWrzH7eXYNdo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759244370; x=1759849170;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YSc3erqR+m9Cq3XMrwel4zg9jxga5W34DHU66LfGEqk=;
        b=LGYB+Z5Jof1JKTiuuQ2adDwrKkEK3spbrHixvqU36GrmlPjnzdtLJd/Zmt98Lc12B9
         5CSXpR99vVkXzkyc12XFvZ2qseUvmC0tJLtz9I8NmtOMMCt+IBMM5N6SPj3rz1b14Ojm
         ZFfOghZpt3qixnDjRzdbeqKLZ2gOg8geC8YJGqkDd+8yiBrlGLk+o+ZseD9X/2QRkJ9+
         P+uxk3OlwnjJzJMmSUc5Xr7kQQ6SQehBH2xH9rydbJtzpZwdeJl3nxSdsVym1nifEzRP
         m5CWr+qnSc/baZJmg/dH1hCObByuy8Rd5IYT9R+IVOBhIaP78Us+ARZTkD3GFs/hbBmb
         wh/w==
X-Forwarded-Encrypted: i=1; AJvYcCVE5v+rN0CwZ4HKSkD52RVTaByL5A65Jsc939VflXlVV/5135BbE09UK5n10+486AaNkyF/j7dWWv6Z@vger.kernel.org
X-Gm-Message-State: AOJu0YyN+RcJfgkNJ9PRdncjsbzF8fmr842kqa45JDEbmo+mrx3wIBIz
	vXSy9Yzb1F9QTFunPwRL5yND1onkPbuw9LAM2Ce0ihtkTzgOQd2sxa1xXKA9QhfHYzFKIN6NRiQ
	IA00=
X-Gm-Gg: ASbGnctPHEUqCoLJtYJQEk6oHW2+4Bql3K6J6EnFgknh7IrRXt4VRgd+KSKnhsFxK72
	oltOdTnfUurWwKO4VFmPtjFfHSwGMYSxUUpBAVGNSFx8hUO0R5GzWrcgkc5Tihflpla1Kj9vP6X
	kyCsUnlCKCa4gMyvR4hi2l3pgwLfz0DcqCD+MijnmyM+vs7aZSS95ApNTO1qU7nfxi52fQGwu++
	G+3V/354sgArLufqBaRyo3O+f1AlUpkKX74tGp3KxXwI7m5DwUqgYtlSGnudU0EthnAzWBDHeGL
	8+2vCMPKBOtSU0pM0gvcfdxlkJZxxxTSoLXji2uEMASYNrul5eatdA86LT4D8VUDgU97vK5mBML
	mu8wp4BukfHTVGzBAR4j8/UeXpo+ZlcdOvkKTRfhSAoshb2vXKhlSRJPKzlFzK1EfmNRti3wwUo
	afu2yzG//0+bLNlw==
X-Google-Smtp-Source: AGHT+IEh4z0uK5at5730AR6c/5O0JDwy/02Uy7iyZDIa5DWpfXHZyfGeKRuZz5auXJ3YKRakTeF47w==
X-Received: by 2002:a17:903:1a0d:b0:28e:7ea4:2023 with SMTP id d9443c01a7336-28e7f441e8cmr221475ad.46.1759244370604;
        Tue, 30 Sep 2025 07:59:30 -0700 (PDT)
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com. [209.85.214.182])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27eec33b73dsm132791605ad.48.2025.09.30.07.59.30
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Sep 2025 07:59:30 -0700 (PDT)
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-27d4d6b7ab5so90870135ad.2
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 07:59:30 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXRgcP0rL6+Y7DTI5wK3n4APVxs/nhq9f4OfY/mH3tj3UKaYfY7tDDPwnoest1RpM1ebtTW8D5a4nwO@vger.kernel.org
X-Received: by 2002:a17:902:fc8f:b0:267:9e3d:9b6e with SMTP id
 d9443c01a7336-28e7f442a78mr193225ad.51.1759244369479; Tue, 30 Sep 2025
 07:59:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250929142455.24883-1-clamor95@gmail.com> <20250929142455.24883-3-clamor95@gmail.com>
 <CAD=FV=WH5rsQR0vnsdZqfA-K-4AWSyOOfbe3g1H7pYCG0AigZw@mail.gmail.com>
 <CAPVz0n2Prw0ZoQhrodobmSpAu7XV6aX=NV=2ee0RwL3H5hWARg@mail.gmail.com>
 <CAD=FV=XD=L=otnj+YsQ1qEtrO_+wBD-ZYpDNmickcD1tb+6OoA@mail.gmail.com> <CAPVz0n1y86mKKvViG9dVN4gkqkbsjcZrFraTtKQ+Tvf4DBJCVw@mail.gmail.com>
In-Reply-To: <CAPVz0n1y86mKKvViG9dVN4gkqkbsjcZrFraTtKQ+Tvf4DBJCVw@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 30 Sep 2025 07:59:17 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UzVGE88k6kmN+BxO_SV4H9JDM=96E1Mco3K2mofRbnGA@mail.gmail.com>
X-Gm-Features: AS18NWAy2O8-X47mCuul_Hv6w1Ke6zCRmOjrUq428DdWDjkLHW5ffnJ8B6LXgeQ
Message-ID: <CAD=FV=UzVGE88k6kmN+BxO_SV4H9JDM=96E1Mco3K2mofRbnGA@mail.gmail.com>
Subject: Re: [PATCH v1 2/8] gpu/drm: panel: add support for LG LD070WX3-SL01
 MIPI DSI panel
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Sam Ravnborg <sam@ravnborg.org>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-tegra@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Sep 30, 2025 at 7:48=E2=80=AFAM Svyatoslav Ryhel <clamor95@gmail.co=
m> wrote:
>
> =D0=B2=D1=82, 30 =D0=B2=D0=B5=D1=80. 2025=E2=80=AF=D1=80. =D0=BE 17:34 Do=
ug Anderson <dianders@chromium.org> =D0=BF=D0=B8=D1=88=D0=B5:
> >
> > Hi,
> >
> > On Mon, Sep 29, 2025 at 10:13=E2=80=AFPM Svyatoslav Ryhel <clamor95@gma=
il.com> wrote:
> > >
> > > > > +static int lg_ld070wx3_unprepare(struct drm_panel *panel)
> > > > > +{
> > > > > +       struct lg_ld070wx3 *priv =3D to_lg_ld070wx3(panel);
> > > > > +       struct mipi_dsi_multi_context ctx =3D { .dsi =3D priv->ds=
i };
> > > > > +
> > > > > +       mipi_dsi_dcs_enter_sleep_mode_multi(&ctx);
> > > > > +
> > > >
> > > > Maybe add some comment about ignoring the accumulated error in the
> > > > context and still doing the sleeps?
> > > >
> > >
> > > Isn't that obvious? Regardless of what command returns power supply
> > > should be turned off, preferably with a set amount of delays (delays
> > > are taken from datasheet) to avoid leaving panel in uncertain state
> > > with power on.
> >
> > I won't insist, though IMO any time an error return is purposely
> > ignored a comment about why can be justified.
> >
> >
> > > > > +       msleep(50);
> > > > > +
> > > > > +       regulator_bulk_disable(ARRAY_SIZE(priv->supplies), priv->=
supplies);
> > > > > +
> > > > > +       /* power supply must be off for at least 1s after panel d=
isable */
> > > > > +       msleep(1000);
> > > >
> > > > Presumably it would be better to keep track of the time you turned =
it
> > > > off and then make sure you don't turn it on again before that time?
> > > > Otherwise you've got a pretty wasteful delay here.
> > > >
> > >
> > > And how do you propose to implement that? Should I use mutex?
> > > Datasheet is clear regarding this, after supply is turned off there
> > > MUST be AT LEAST 1 second of delay before supplies can be turned back
> > > on.
> >
> > You don't really need a mutex since the DRM core will make sure that
> > prepare and unprepare can't be called at the same time. panel-edp
> > implements this. See `unprepared_time` I believe.
> >
> > NOTE: if you want to get really deep into this, it's actually a bit of
> > a complicated topic and I would also encourage you to add an
>
> Please spare me of this, I have enough stuff to work with and have no
> capacity to delve into depth of drm any deeper. In case this panel had
> a reset I would not care about regulators too much, but it already
> gave me too much pain and caused partially reversible damage to itself
> that I am not willing to risk.

I won't insist. It's not much code, but it could always be done later.

-Doug

