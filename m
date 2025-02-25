Return-Path: <devicetree+bounces-151214-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C7406A44E37
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 22:02:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B439117AFDD
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 21:02:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DB6E20E6F0;
	Tue, 25 Feb 2025 21:00:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ElTrfANK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FCB820F06E
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 21:00:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740517255; cv=none; b=LSuPr2W0tGrUUdRxGIzdKhZU2O7vWRSPT5fSa6tW1bDpVtD75F2kTCF5kwrWKlRN0SBv8S5ZkmYUzB8MsmGbhNLXix24Gdr2SzG1JuyiaBSjMUqEhKzq/T6x8g/gbbPjnlTktrto1BpeiefifJuo5lUmO5SyX0jMh+TbjrVp7Ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740517255; c=relaxed/simple;
	bh=IdZf9OirHo3w8TLk9FbgVZ1A1snETQ0MVXnUxcN2tAE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kSwbxg32O4FxSDhnvF7lgalmVzp3ir8sVosDC7wHz7OGbFYLvLs+b/w4nkADlV9TtQXr5EAKeb1UqaiGHaRxtieDJEERS5cbgXXLHiTfr2EmiqREK5eiuIrbARik6p4/iV7gewTeN8R0Q+RWSpuXy+5qJSHpxVzoOR88Fnq4ETg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ElTrfANK; arc=none smtp.client-ip=209.85.128.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-6fd2587d059so743917b3.3
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 13:00:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740517252; x=1741122052; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=aTECS3SKQyqLPvpHn3SdLnl7nJuW0BjxdhYYx7X/Yrs=;
        b=ElTrfANKdzwE6kugjqiepiWfx2lxbwzHt836PI0NZF2v9Z5mg6i0bUAP+0qeRggRF1
         S4v1OX2jL9kj8xUjWNtCrrm7zwldMyhIpDNl85EvD+P9gZVVd8FxzdtjMDNuI7m0Nb0c
         qoZk74a96/5aOUzCnyGFqi1Iyveka+L3UxfgswQSUXraHDymdDvM6Qv7ntNqdF3GUhAr
         +1TQqdPEQVn8zDfB/hbyCirS0+RCdj3Atzam1jSGjuS5Vjddstt2izxR1Zyoo2HmjviK
         JC85I7TDbCIdaSbYgP7ZapByyJBR4vYTKniT21hTPYgRM+vBzjK4xR4r/ZugyMnq9KrH
         iwRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740517252; x=1741122052;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aTECS3SKQyqLPvpHn3SdLnl7nJuW0BjxdhYYx7X/Yrs=;
        b=tSvoTH3F3K8rQVFBdTTPOZIRlNQKfVGEhrBXGfeFJb8TsABKgiPg/o9CWPZxflT5Qj
         xQfLDdJqjHn51OgkLEhmpUtQagfGR/J6pnQnejyB9MXwny3GS4gTYurnEeI9dVAXoq7a
         V4bYx87+fVZJUI7nvy3d39uI1xxj0HWerGwnEmw4kOchJTGHaooVC/d6BveM4L0sPgH7
         kFB/mBUnKJ/CVrhMz1WPhrkDE2yFlnk6mC91dzuXX7DJxLo2FBulEtHEDZwLDs4tiZNc
         poD6UjRFqy5UgunWwrf7oOVcPxEY+T2TJohR2sv3eZ6kDMB70YDc7WyMvySAVIKHefLH
         pMMA==
X-Forwarded-Encrypted: i=1; AJvYcCXseFwxj4Y2MtS6dm9gfdoGJAnYl4G0cdb/0eUPkNulKMHS6KPhjg7qASWeQnX0+YUZDQHbNl09+9iZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yxli3HWjnn0fOaF+ZFWvkmgR4N9tJmlwAuHfk3aOtz5OV7Ka9Pk
	Nl6SItftXhf5tUF4H1+8UrBDMkgPeT3DxZ5BcDtvLWguAxBGr81K+8/RNmPXfQQXzbGGbLigJGA
	S1YTbZamWsYsbx3EM07PKElSXVB0XbE6nSvYOjA==
X-Gm-Gg: ASbGncuucy7/mCE3H/V2+lasF42oRIFsp1GmM0+72b7y1wZfJdizeczZyx6/MvynoC1
	/sxVw3Kc5H4DI0cCWleD+6eTfAEMd3bsCG0UhhUuiJPOsSozVkk+3zSc08hJR9uk/Zm3ExnagzC
	rPXIA9LqNIQ5M7EOBA8kWxWRY2/IuNOSt8gMDvNF8=
X-Google-Smtp-Source: AGHT+IHVNAF9M985zwQc8ti2DtEeKOd6IPqcLWmaevOapLPMkqXyG9p9oh+HENqNXQGjtwqlmhkaD1MmqhA217I8byY=
X-Received: by 2002:a05:690c:888:b0:6f7:50b7:8fe0 with SMTP id
 00721157ae682-6fd21dc678cmr11826067b3.1.1740517252440; Tue, 25 Feb 2025
 13:00:52 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250217-adpdrm-v7-0-ca2e44b3c7d8@gmail.com> <174047913824.2131221.6545389561298332217.b4-ty@linaro.org>
 <CAA8EJpqM8ZQ-ScEtEBXaUF2Nargtp_TBAyMYvbJ49PGbwPWjaQ@mail.gmail.com> <2d51cb9e-b8c5-4cf1-bd7a-751fb633275c@linaro.org>
In-Reply-To: <2d51cb9e-b8c5-4cf1-bd7a-751fb633275c@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 25 Feb 2025 23:00:40 +0200
X-Gm-Features: AWEUYZnjLNgOW9D81B_b4Ug4M1LEmwU_chC0K6f10jOh7vvlfER0M0Paj99xQ-A
Message-ID: <CAA8EJpqu269ttsUcEsJpBOexRUS+pKSaMESLosC9iNCoUCtroQ@mail.gmail.com>
Subject: Re: (subset) [PATCH v7 0/5] Driver for pre-DCP apple display controller.
To: neil.armstrong@linaro.org
Cc: Hector Martin <marcan@marcan.st>, Sven Peter <sven@svenpeter.dev>, 
	Alyssa Rosenzweig <alyssa@rosenzweig.io>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, asahi@lists.linux.dev, 
	Janne Grunau <j@jannau.net>, Sasha Finkelstein <fnkl.kernel@gmail.com>, 
	linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Alyssa Ross <hi@alyssa.is>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Neal Gompa <neal@gompa.dev>, Nick Chan <towinchenmi@gmail.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, 25 Feb 2025 at 19:59, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> On 25/02/2025 12:37, Dmitry Baryshkov wrote:
> > On Tue, 25 Feb 2025 at 12:25, Neil Armstrong <neil.armstrong@linaro.org> wrote:
> >>
> >> Hi,
> >>
> >> On Mon, 17 Feb 2025 12:39:30 +0100, Sasha Finkelstein wrote:
> >>> This patch series adds support for a secondary display controller
> >>> present on Apple M1/M2 chips and used to drive the display of the
> >>> "touchbar" touch panel present on those.
> >>>
> >>>
> >>
> >> Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)
> >>
> >> [3/5] drm: panel: Add a panel driver for the Summit display
> >>        https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/40115947b59f2ca361a47615304dff0a2b69a2b4
> >
> > Without the bindings?!
> >
>
> Bindings will be funneled with the rest of the ADP driver, the panel driver can be applied individually.

Okay.....



-- 
With best wishes
Dmitry

