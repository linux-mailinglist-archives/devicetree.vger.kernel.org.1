Return-Path: <devicetree+bounces-92225-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4504794C4D3
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 20:46:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 65AF41C22E48
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 18:46:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4302433AD;
	Thu,  8 Aug 2024 18:45:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="OjLpAq9M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com [209.85.210.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3658C4A1E
	for <devicetree@vger.kernel.org>; Thu,  8 Aug 2024 18:45:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723142727; cv=none; b=hM15sFhOh2ytI5KDfHywN+giYxJRue9G2phkjLg4Fg6hBSPTCzdZtiAkK97dBVkVfGGmMvOy1oK4Be9JI5Ji2fEXoxamHf8TmUEmiyRQAII906+c4849bEE4GZM7fzCW7bUELuMUO/B1bra5MYueJmCzaaLnQJviAPMkWEKJm6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723142727; c=relaxed/simple;
	bh=VNwfPNIDrZEQhR6zUkI5fMJgN7wQ0VNlQDZOxtdoxPE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=O9yLkGiL++3BstKYxBpwk+KS/e938aeqzYb8ymJlDrsfbtEpfvBB4whP0QYkai8ff0LWCpzaJFQrULlmlWA+pIj3pVcMnSmT0yHXZPo7oOoxfQpsoaff9g7qp8658ePX9NIVnxOPOqomZCTAhxccs5hoez74zB54SJisULgfx8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=OjLpAq9M; arc=none smtp.client-ip=209.85.210.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ot1-f66.google.com with SMTP id 46e09a7af769-70940c9657dso598689a34.1
        for <devicetree@vger.kernel.org>; Thu, 08 Aug 2024 11:45:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1723142725; x=1723747525; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qNkhoqvKuiIgMp2Dxoqrfnd9iwX4pwdtbywMo2F68wE=;
        b=OjLpAq9MYHu+h8vaqV+jkdNJVzkPzyJkRrU6zpKRxHeaxpJY2P5KjZ+pbvyNdj0MPj
         bG2UuEtl/zJhOpBgSNi7x4Uayb9pBri0xZgVlrz29aMYNHUhpmI4LRKwFhdin2lGnACL
         /uwSPoYx9eP8E8Lp7BuOg9V9LcuFKqS040qLg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723142725; x=1723747525;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qNkhoqvKuiIgMp2Dxoqrfnd9iwX4pwdtbywMo2F68wE=;
        b=Wfj2TGdt5iSwspHFmFTjyAC0A9bxbDGDvy1eQip6ERMYTz0bJyvDWinz7WRd63ZxT/
         Kii2Oxm9qIJDt1DjTpGMLlhere2p2GoBSouI+kLLFIp0MVBjgyQzhjc7tfSyyBVRUA2A
         CxQbfB60TJk1vz/vNe/pezIVIRD7OQ3wPAeHdvEvEqENLh9XAttMrcF5wT4Jm1lb5Nhq
         eUiWunF9+TsqJiwCeNtFP6ckDZy4v6KMqb9Zto5/LV2c6Upa38fiZZu3xtH6nCVMYvBh
         VMCzrOH3qAsNOCZZhGxnDltLXsjR05Q2Dms6MmsGm2PjhoNCUQjkQmpK+r85p7OFHWht
         bTqw==
X-Forwarded-Encrypted: i=1; AJvYcCX1veMx0sVBFVUG+3JmoPnN3q8iPDzBI7u/apWS2icO9Ha2qRCAqiPD+S48jxYTZpYoyefjmMxzl1cUx5KaZqzBgdw4DXSEWeJKyg==
X-Gm-Message-State: AOJu0YwEvrGt0MeTGYOpB+VtWm9GBrTGYaqSyyS873O4zn/YGAfrenVW
	iHJlR4jbYKNUxI5Z24InSjf08zrgQfTnDuCifVLbiqcP1VS1rGDQSsMy4nknXdWRWYC/p3grya0
	yD2/njUk=
X-Google-Smtp-Source: AGHT+IFIrE5EPCHbCNEuArbPwV1y1fmvHJR9CODOPJf5X3mjTfnuGAI63ZMCQh5MFn8leFYoIf4h6w==
X-Received: by 2002:a05:6830:3983:b0:709:400a:5f88 with SMTP id 46e09a7af769-70b4fc3dae8mr3972320a34.11.1723142725326;
        Thu, 08 Aug 2024 11:45:25 -0700 (PDT)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com. [209.85.160.172])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6bb9c8778e1sm69096176d6.128.2024.08.08.11.45.25
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Aug 2024 11:45:25 -0700 (PDT)
Received: by mail-qt1-f172.google.com with SMTP id d75a77b69052e-44fdc70e695so44731cf.0
        for <devicetree@vger.kernel.org>; Thu, 08 Aug 2024 11:45:25 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVHc8bRGkGRKxWUtfoMS7w7tUDkgMAvDUGKJ5TtO5xi1YosegrlDgke7OX5tsFNemFkbzDHnZS/Yv54FQBswt3GY0E0PkXOPnsyxA==
X-Received: by 2002:a05:622a:241:b0:444:dc22:fb1d with SMTP id
 d75a77b69052e-4530dcd66e9mr383971cf.12.1723142724490; Thu, 08 Aug 2024
 11:45:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240729205726.7923-1-robdclark@gmail.com> <CAD=FV=Wo2nVzn6qvwSAFAnrFX4wtv6_ZCVZaL1K_DBBFg9DJ=w@mail.gmail.com>
 <CAD=FV=XMJ7b=2tt6_2oTGFXuL8XcmBxuDtQBoWdf_65YyS49XA@mail.gmail.com> <CAL_JsqLRTgQRPcfXy4G9hLoHMd-Uax4_C90BV_OZn4mK+-82kw@mail.gmail.com>
In-Reply-To: <CAL_JsqLRTgQRPcfXy4G9hLoHMd-Uax4_C90BV_OZn4mK+-82kw@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 8 Aug 2024 11:45:09 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XWAoQ3Njq14uwSrA2zA=Wx_Jm7F1c7gFyk4Jysut1Thg@mail.gmail.com>
Message-ID: <CAD=FV=XWAoQ3Njq14uwSrA2zA=Wx_Jm7F1c7gFyk4Jysut1Thg@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: display: panel: samsung,atna45dc02:
 Document ATNA45DC02
To: Rob Herring <robh@kernel.org>
Cc: Rob Clark <robdclark@gmail.com>, linux-arm-msm@vger.kernel.org, 
	Stephan Gerhold <stephan.gerhold@linaro.org>, Abel Vesa <abel.vesa@linaro.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Rob Clark <robdclark@chromium.org>, 
	Conor Dooley <conor.dooley@microchip.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Aug 8, 2024 at 11:14=E2=80=AFAM Rob Herring <robh@kernel.org> wrote=
:
>
> > > > From: Rob Clark <robdclark@chromium.org>
> > > >
> > > > The Samsung ATNA45DC02 panel is an AMOLED eDP panel, similar to the
> > > > existing ATNA45AF01 and ATNA33XC20 panel but with a higher resoluti=
on.
> > > >
> > > > Signed-off-by: Rob Clark <robdclark@chromium.org>
> > > > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > > > ---
> > > >  .../bindings/display/panel/samsung,atna33xc20.yaml       | 9 +++++=
+---
> > > >  1 file changed, 6 insertions(+), 3 deletions(-)
> > >
> > > Reviewed-by: Douglas Anderson <dianders@chromium.org>
> > >
> > > I'll plan to land this in drm-misc-fixes next week unless someone
> > > objects. "fixes" instead of "next" for the same reasons discussed
> > > previously [1] that the dts patch should probably be considered a fix
> > > and there's a chance that the dts patch could land in an earlier
> > > version of mainline than the bindings unless we consider the bindings
> > > a fix.
> > >
> > > [1] https://patchwork.freedesktop.org/patch/msgid/20240715-x1e80100-c=
rd-backlight-v2-1-31b7f2f658a3@linaro.org
> >
> > Landed in drm-misc-fixes.
> >
> > [1/2] dt-bindings: display: panel: samsung,atna45dc02: Document ATNA45D=
C02
> >       commit: 1c4a057d01f4432704c4dc8842b6e888a91d95df
>
> And now warning in linux-next:
>
> ./Documentation/devicetree/bindings/display/panel/samsung,atna33xc20.yaml=
:21:9:
> [warning] wrong indentation: expected 10 but found 8 (indentation)
> ./Documentation/devicetree/bindings/display/panel/samsung,atna33xc20.yaml=
:23:11:
> [warning] wrong indentation: expected 12 but found 10 (indentation)
>
> Please send a fix.

Doh! I'm just about to hop out on vacation, but here's a fix. If
someone reviews in the next 30 minutes or so I'll land it. Otherwise
hopefully someone else can land...

https://lore.kernel.org/r/20240808114407.1.I099e8e9e36407a0785d846b953031d4=
0ea71e559@changeid

