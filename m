Return-Path: <devicetree+bounces-67177-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 932208C6DCF
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 23:29:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C48591C208E3
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 21:28:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27B2915B576;
	Wed, 15 May 2024 21:28:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="RU4YWCc+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A820D15B555
	for <devicetree@vger.kernel.org>; Wed, 15 May 2024 21:28:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715808524; cv=none; b=KFWB1Q45GxmZwvUKWxG7VeaifUpAGDSffdu3nIAtNuGJj+W/LK7p1GFDAqPV1GPZPdb6I4qd6VPJFZR9YZ08zT1NRyIVaFqaiU5m4tur67aZbwY/WY1m4CsfWbv1lt0h0oqzd87WWCO2Sl2yKTqpA2IO/0rsk8wEVnFzznzn3fA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715808524; c=relaxed/simple;
	bh=qnHnvFuVyROhLpvYWHN3fSpsAcLNu13yLY8dAISoFtQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=H/1LKyhZvrfAATx0uoadwDraFgoc8yVvyq1w4SxbNZJFJxpEHXTiE0B4odC1EGa+gCmWOhmX9fRAHBQPizrepYnKG6+6wg/z8ljykpd5fZ15m8K+qAr2Ke2U9r2pNV70E0/TQGDVA0CHqiuzn21DNwaK/JTXJjPx0no3tUceawU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=RU4YWCc+; arc=none smtp.client-ip=209.85.167.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-oi1-f179.google.com with SMTP id 5614622812f47-3c9a604e367so2490594b6e.2
        for <devicetree@vger.kernel.org>; Wed, 15 May 2024 14:28:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1715808519; x=1716413319; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3UmNEhsA1PVQGVB4IPr+WxtggKmtowmQmNLiJoenwI8=;
        b=RU4YWCc+37ymb2AxGxxsIWlwpbxQPrTmCXepztNG5gbeHB8hATS74pbYh6wpgFhZmn
         NjdCwKcsmhp9Ny4RocjbYxD47a/lL2wkjZwy8R6kMds4Qzq8KE9/WzWH+kREJ2nIhCYZ
         rzqT8d1P+O9XZPGQwI61U95ga57gSWJgCD0+Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715808519; x=1716413319;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3UmNEhsA1PVQGVB4IPr+WxtggKmtowmQmNLiJoenwI8=;
        b=lt9G4wgXRI2KaGp8qR732+UCUhiUtbjpO+3wnh6weVSQfMdXMW8BqpgT8JgweLW3UE
         yznT6w57F331ki3/ZHLQrOy+H+Xl8P2aU2PfETm4SuaM4RAAGFnGOTBPAlxRrAu6UhE5
         wQuUaOFb8G4+MJ3P/Tz6vlLLz3SUCN3JlTw/ABQaSzoDO/IhgI9Pi1EDTcso1/rBBXA3
         DshQYNoo+NNsaR8kvplilktHJpNxXcbvteTxZMVtbbUJZ5c4s+ZErNGIzNHFVUiY04Za
         br0EcRgfwcunzVnzgleTxzNWcrxlfFDiFd/5dNvrSN6KeOS7MSPKJ+6gHVjV87P+yw2W
         nKGA==
X-Forwarded-Encrypted: i=1; AJvYcCV01FM0DEeo+6ntxLtRs2WX2i2cYPA7f263akF9qwPkVwNWkmmeNznZiWRt4m1M8Jz6cnJccrhQfyKFMxK+evtUNA8UEKll9uo9gQ==
X-Gm-Message-State: AOJu0YyFiSQnSTCrsMiZ6J85f0fzk6h79GWdyAwJAbIzrvmJa2ThWANq
	h37dsOL+psEvJ+9/lbyOqfSDPhNKL9n1NvJYC3wg6UtPt9FMbJlx3UwCu9Bwll5Fa6HBlgGQGK4
	=
X-Google-Smtp-Source: AGHT+IHRkdt/QEYEsM2nPXkJZjymKaulJ+vMUmOvDSeo5oKeuMGcH8TB+QGAV5oWtDMXcEneWE4tlQ==
X-Received: by 2002:a05:6808:4d7:b0:3c8:6ba5:e5ba with SMTP id 5614622812f47-3c9970bacbcmr17825724b6e.43.1715808518892;
        Wed, 15 May 2024 14:28:38 -0700 (PDT)
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com. [209.85.160.176])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-792bf2fc3dbsm724999585a.96.2024.05.15.14.28.37
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 May 2024 14:28:37 -0700 (PDT)
Received: by mail-qt1-f176.google.com with SMTP id d75a77b69052e-43dfe020675so2312271cf.0
        for <devicetree@vger.kernel.org>; Wed, 15 May 2024 14:28:37 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWP6L8/D7dIoiulS5yqYclrwGiL4LHaWLZV+jan+NG9m7Di/vlrAWj1ydfOdkAF9sitS429Y0b2aiWxxzABQAALoqPGjhMNBpdk3A==
X-Received: by 2002:a05:622a:1928:b0:43e:1124:3c4c with SMTP id
 d75a77b69052e-43e11243d95mr12242171cf.28.1715808517355; Wed, 15 May 2024
 14:28:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240515014643.2715010-1-yangcong5@huaqin.corp-partner.google.com>
 <20240515014643.2715010-4-yangcong5@huaqin.corp-partner.google.com> <0fcdb0ac-2e4a-44b2-a5d6-a67a1d747df8@linaro.org>
In-Reply-To: <0fcdb0ac-2e4a-44b2-a5d6-a67a1d747df8@linaro.org>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 15 May 2024 14:28:25 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XkBkQUN-93eQDKZcw_66uSeNBBhbiq2hRLcFN+Ck71RQ@mail.gmail.com>
Message-ID: <CAD=FV=XkBkQUN-93eQDKZcw_66uSeNBBhbiq2hRLcFN+Ck71RQ@mail.gmail.com>
Subject: Re: [v7 3/7] arm64: defconfig: Enable HIMAX_HX83102 panel
To: neil.armstrong@linaro.org
Cc: Cong Yang <yangcong5@huaqin.corp-partner.google.com>, sam@ravnborg.org, 
	daniel@ffwll.ch, linus.walleij@linaro.org, krzysztof.kozlowski+dt@linaro.org, 
	robh+dt@kernel.org, conor+dt@kernel.org, airlied@gmail.com, 
	dmitry.baryshkov@linaro.org, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	xuxinxiong@huaqin.corp-partner.google.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, May 15, 2024 at 2:16=E2=80=AFPM <neil.armstrong@linaro.org> wrote:
>
> Hi,
>
> On 15/05/2024 03:46, Cong Yang wrote:
> > DRM_PANEL_HIMAX_HX83102 is being split out from DRM_PANEL_BOE_TV101WUM_=
NL6.
> > Since the arm64 defconfig had the BOE panel driver enabled, let's also
> > enable the himax driver.
> >
> > Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
> > Reviewed-by: Douglas Anderson <dianders@chromium.org>
> > ---
> >   arch/arm64/configs/defconfig | 1 +
> >   1 file changed, 1 insertion(+)
> >
> > diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfi=
g
> > index 2c30d617e180..687c86ddaece 100644
> > --- a/arch/arm64/configs/defconfig
> > +++ b/arch/arm64/configs/defconfig
> > @@ -864,6 +864,7 @@ CONFIG_DRM_PANEL_BOE_TV101WUM_NL6=3Dm
> >   CONFIG_DRM_PANEL_LVDS=3Dm
> >   CONFIG_DRM_PANEL_SIMPLE=3Dm
> >   CONFIG_DRM_PANEL_EDP=3Dm
> > +CONFIG_DRM_PANEL_HIMAX_HX83102=3Dm
> >   CONFIG_DRM_PANEL_ILITEK_ILI9882T=3Dm
> >   CONFIG_DRM_PANEL_MANTIX_MLAF057WE51=3Dm
> >   CONFIG_DRM_PANEL_RAYDIUM_RM67191=3Dm
>
> You should probably sent this one separately since only an ARM SoC mainta=
iner
> can apply this, probably via the qcom tree.

Really? I always kinda figured that this was a bit like MAINTAINERS
where it can come through a bunch of different trees. Certainly I've
landed changes to it before through the drm-misc tree. If that was
wrong then I'll certainly stop doing it, of course.

-Doug

