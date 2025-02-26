Return-Path: <devicetree+bounces-151313-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 477C4A455FC
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 07:49:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4645D7A4D3B
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 06:48:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AC42269B1C;
	Wed, 26 Feb 2025 06:48:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kykV0ZQo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EEC420FA9C
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 06:48:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740552538; cv=none; b=dk35LLn4lpKNp8/yY5M+Lv4JT0N308/1MvJ43q8W6PejkiJ9ycd5Ms5DV9HrjD7ogcdgtoK1rX/bjaHX3pFynDYVsvdGwJ86M1/DWnHkKr4oKcE9xauDIvdaJKmLMEQXsdwAwud4RjboykzIt1JxXVejODK8AVYbPjPWcloEgDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740552538; c=relaxed/simple;
	bh=p0huBVekSVRZKWcmUl7iezMKusooez78/pF2rLdE50g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OubxUqf5Cp4mw7rH5v5qzrX+Iar0I4cl088JjJkfPwHHwXDY/OG0CcNIno7YGOUCopusjwSE15NXC+G8hhN/uWlfNt9G1+3ThXnbhBYzUhsJ0eFzEtsQSBXAsyePxVkufq3Fb05XeAPHzlkLO2Qi+c1wJ5PwJhCLMKWsu+u5q84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kykV0ZQo; arc=none smtp.client-ip=209.85.128.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-6fd2fca1cebso429287b3.0
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 22:48:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740552536; x=1741157336; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5m/fbILzLKGGykUZ6kboto9JC0GWzY5Dl1+z1wn1h9Y=;
        b=kykV0ZQocrpgW8ETShp6KAeFpWvYjdGOdJ0KZ+H2yT3r+AunoYGYRvdXNvHZzqYy5O
         lEQJ0zV0PiTa4WcJ1wTtUAPuK72MHjgEwAmd5M6yx7hDuo1mKK7atVoynbz4yS4gFxdp
         CICfw1RW0bHMDOfnwoILU8Yt6gMn4uz8pU8V0T4B7BkTRLh9JAw17a0mgfjxQIFOsbLR
         tkP+JwNLiZFuA2KLKk1B39me16Y/ymcJKLyKWIk3MjruL4AEFOUjaLKzgAluQNo1z2Gb
         s5IuraDTyyajSXYGSUEFTvHftSU/E3TXL/cK1Ee2vuMvl5sTzszMbuQ4vXPNn/7yz8cn
         o3pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740552536; x=1741157336;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5m/fbILzLKGGykUZ6kboto9JC0GWzY5Dl1+z1wn1h9Y=;
        b=oSXJ4zu9ugLV6sOoZ8ILTet/zfPOoWWrIbtkAxCjhHweWw+gAIPbygWRx2XE64b6q/
         icbau+lfkD2qTrRam4ACWMHUPaxhSesg0/QxGAzyFwipbT9iXemir0L0ICpo510EATe0
         zEmGfrsWaqXDLoE1+B2UWdBAaWYaHXaYYHxqOB/ml8sbQBDCiKMCg0cEejc9RVgARntP
         Ng3kJteybAlNo/H6psuuyBdNIDyDiV7AreiaV5458hh6xTp6HpsTEeKd3nR4ffWjDvYm
         AaTDlXr01rZMioY04Nx6R+9+8I7lbncu6HNqtEnW7Y4xEGa9hpnc/NkMZxg7csvRK9qm
         twNw==
X-Forwarded-Encrypted: i=1; AJvYcCUnXaVkQBvG/wHTg8UcYABLCf6utonrHOOP721vqvrQr5XuzCb/dUeosbOLuQrn9YZhTNV5bIeBqbQC@vger.kernel.org
X-Gm-Message-State: AOJu0YyMa8rXxQ52+62xruxjzZocFEOhRkfiuwZuwZGZZIE/C0m5br49
	OPlsb/R4oMX+okhpehxJj1fRpqJgLemG/HOnmmH1IQkWNEgwRlw1aeCapjCYqEYCl+208yLvxOF
	m/HWDK3107Q6OPdF8hwq0AeSjcSXxpDtfQlCWXQ==
X-Gm-Gg: ASbGncsIc68EXfWHpoqw5nrdV7mnoSNHvpr6d0N1tpY8+UnX9I//+1amgMZrZL3gN0Z
	1Dnfo0I7JfzWixzYK1ncIwgnuWPSTNEw5Ue5islNR+MYR7XWkN14wKhUT4gObRHdKP/wDw+QViA
	HzDRsCri5o
X-Google-Smtp-Source: AGHT+IF78VTStupIwYIS0Xq3cT2iRwmchECX+kjak3P5Tm3vcYMtlr86loyt0dtlQrayF4yn4dAqOJK1+HKDJC1oQk0=
X-Received: by 2002:a05:690c:62c3:b0:6fb:b78a:c0e5 with SMTP id
 00721157ae682-6fd10ae9888mr57823187b3.28.1740552535692; Tue, 25 Feb 2025
 22:48:55 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250225083344.13195-1-clamor95@gmail.com> <20250225083344.13195-4-clamor95@gmail.com>
 <lkfxsq3daspjxdw43dofch3nulprpmg4soxsgflsypu3kem4ok@utt6rfdtbg7j> <CAPVz0n3Jc5GE5szjPGJXJNjKVfynvqmzSuZLba5XbLPtcycjwQ@mail.gmail.com>
In-Reply-To: <CAPVz0n3Jc5GE5szjPGJXJNjKVfynvqmzSuZLba5XbLPtcycjwQ@mail.gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 26 Feb 2025 08:48:44 +0200
X-Gm-Features: AQ5f1Jo0ziMos-3sSTHfrs6FFx8jw2_DfiVlri5rOMnAr3cY5ATon22-G_m3rIA
Message-ID: <CAA8EJprfD8pQVe=KKd1WaTtGf8UPZ2ndep56stZOV7Fx0NwgsA@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] drm/bridge: simple-bridge: Add support for MStar TSUMU88ADT3-LF-1
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maxim Schwalm <maxim.schwalm@gmail.com>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 25 Feb 2025 at 14:02, Svyatoslav Ryhel <clamor95@gmail.com> wrote:
>
> =D0=B2=D1=82, 25 =D0=BB=D1=8E=D1=82. 2025=E2=80=AF=D1=80. =D0=BE 13:57 Dm=
itry Baryshkov <dmitry.baryshkov@linaro.org> =D0=BF=D0=B8=D1=88=D0=B5:
> >
> > On Tue, Feb 25, 2025 at 10:33:44AM +0200, Svyatoslav Ryhel wrote:
> > > From: Maxim Schwalm <maxim.schwalm@gmail.com>
> > >
> > > A simple HDMI bridge used in ASUS Transformer AiO P1801-T.
> > >
> > > Signed-off-by: Maxim Schwalm <maxim.schwalm@gmail.com>
> > > Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> > > Reviewed-by: Robert Foss <rfoss@kernel.org>
> > > ---
> > >  drivers/gpu/drm/bridge/simple-bridge.c | 5 +++++
> > >  1 file changed, 5 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/bridge/simple-bridge.c b/drivers/gpu/drm=
/bridge/simple-bridge.c
> > > index ab0b0e36e97a..c0f1f7baaa37 100644
> > > --- a/drivers/gpu/drm/bridge/simple-bridge.c
> > > +++ b/drivers/gpu/drm/bridge/simple-bridge.c
> > > @@ -277,6 +277,11 @@ static const struct of_device_id simple_bridge_m=
atch[] =3D {
> > >                       .timings =3D &ti_ths8134_bridge_timings,
> > >                       .connector_type =3D DRM_MODE_CONNECTOR_VGA,
> > >               },
> > > +     }, {
> > > +             .compatible =3D "mstar,tsumu88adt3-lf-1",
> > > +             .data =3D &(const struct simple_bridge_info) {
> > > +                     .connector_type =3D DRM_MODE_CONNECTOR_HDMIA,
> > > +             },
> >
> > This entry should also come between adi,adv7123 and ti,opa362.
> >
>
> Original list in the driver is not sorted alphabetically.

I'd say, it is, except for the special dumb-vga-dac entry.


--=20
With best wishes
Dmitry

