Return-Path: <devicetree+bounces-10230-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C04077D0433
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 23:50:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 40FA51C20EDB
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 21:50:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C4CB3E470;
	Thu, 19 Oct 2023 21:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="C1lIs82p"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 947A93E012
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 21:50:31 +0000 (UTC)
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9AC0212F
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 14:50:29 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-9ada2e6e75fso24813066b.2
        for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 14:50:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1697752225; x=1698357025; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NvYs4y8luRIIMWCMTq8xHgd9BsFfOMy25z0twVyGFoo=;
        b=C1lIs82pdWMWB99RtIOu5mXirjYP/FPF9sHzCqplxai/dP8sOAIgnIk9FFf+vE8IaU
         mGLQJ17jgJFHxpiFZ5a+5uG2r9BVB71TCtrPyL78yl0GWGr+QypVYV9v+tZ0l1rBDD4q
         uFq1aGp5tjKnZz6Y35g+HnfnZy+mTbjH8PSTs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697752225; x=1698357025;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NvYs4y8luRIIMWCMTq8xHgd9BsFfOMy25z0twVyGFoo=;
        b=kix4kI+Soln2gh2JKNhW2dUhUty0lFZThTNV6wpu2xG1JrGJ0Ij7n7pnjeHq3I8/OU
         hr9Ny9b7S33gqxWa8zqGoJ8aGz6XcnAbCdplofMuXXLmpQva9nyVTjn5UHfkxCzKSO9n
         JwLj1qpzQrT1UWQiD2FmkC5D2an2z8/Po2CR0gTdY3qI2vo7YFcy7y/mnPVK6GJ3v42/
         P4oSjeX7qfNlGtZm/r6fPQY2sou7dYFZ/3d1YGRErEubPQor2BuMnXoPUxHF0TW9zSAz
         VeaSyXnyCC1agEfOaV/zFbtDGtPeBJTPezOgwp7LxtuxCrTOWS208mue0t9RaEja5SoY
         nVIA==
X-Gm-Message-State: AOJu0Yy88oGFOoEDgViVTboCOci/Nlo4j5vvc7jlSXvZFA9pkjZTTy3Q
	IdWwWbea/cfrJv2gjSyzVH7WwPZ12LmpgS91FT1WAQ==
X-Google-Smtp-Source: AGHT+IG3ssJDUgtJ7p8dnwQEJ0dYkgei2bwzW1cimawUDmAfevdGGIRyFPTq5eT2oFwMjXVvQlqyCg==
X-Received: by 2002:a17:907:784:b0:9be:23a0:68b7 with SMTP id xd4-20020a170907078400b009be23a068b7mr2338036ejb.73.1697752225704;
        Thu, 19 Oct 2023 14:50:25 -0700 (PDT)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com. [209.85.128.42])
        by smtp.gmail.com with ESMTPSA id n27-20020a170906119b00b009929d998abcsm223866eja.209.2023.10.19.14.50.24
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Oct 2023 14:50:25 -0700 (PDT)
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-40662119cd0so11385e9.1
        for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 14:50:24 -0700 (PDT)
X-Received: by 2002:a05:600c:3b1d:b0:3f7:3e85:36a with SMTP id
 m29-20020a05600c3b1d00b003f73e85036amr31430wms.7.1697752224208; Thu, 19 Oct
 2023 14:50:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231013091844.804310-1-yangcong5@huaqin.corp-partner.google.com>
 <20231013091844.804310-3-yangcong5@huaqin.corp-partner.google.com> <CAD=FV=UVP22ANJD5xEB6MRHCDjXN6SZhQWQshPxwhi51YRkEjQ@mail.gmail.com>
In-Reply-To: <CAD=FV=UVP22ANJD5xEB6MRHCDjXN6SZhQWQshPxwhi51YRkEjQ@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 19 Oct 2023 14:50:12 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UV_yX=wBDMY1LhENfMYSbcZ=8xiCnQ6P3NXWdCHbn+zw@mail.gmail.com>
Message-ID: <CAD=FV=UV_yX=wBDMY1LhENfMYSbcZ=8xiCnQ6P3NXWdCHbn+zw@mail.gmail.com>
Subject: Re: [v4 2/3] drm/panel: ili9882t: Avoid blurred screen from fast sleep
To: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	hsinyi@google.com, linus.walleij@linaro.org, swboyd@chromium.org, 
	airlied@gmail.com, catalin.marinas@arm.com, will@kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Oct 13, 2023 at 2:43=E2=80=AFPM Doug Anderson <dianders@google.com>=
 wrote:
>
> Hi,
>
> On Fri, Oct 13, 2023 at 2:19=E2=80=AFAM Cong Yang
> <yangcong5@huaqin.corp-partner.google.com> wrote:
> >
> > At present, we have found that there may be a problem of blurred
> > screen during fast sleep/resume. The direct cause of the blurred
> > screen is that the IC does not receive 0x28/0x10. Because of the
> > particularity of the IC, before the panel enters sleep hid must
> > stop scanning, as i2c_hid_core_suspend before ili9882t_disable.
> > If move the ili9882t_enter_sleep_mode function to ili9882t_unprepare,
> > touch reset will pull low before panel entersleep, which does not meet
> > the timing requirements.. So in order to solve this problem, the IC
> > can handle it through the exception mechanism when it cannot receive
> > 0x28/0x10 command. Handling exceptions requires a reset 50ms delay.
> > Refer to vendor detailed analysis [1].
> >
> > Ilitek vendor also suggested switching the page before entering sleep t=
o
> > avoid panel IC not receiving 0x28/0x10 command.
> >
> > Note: 0x28 is display off, 0x10 is sleep in.
> >
> > [1]: https://github.com/ILITEK-LoganLin/Document/tree/main/ILITEK_Power=
_Sequence
> >
> > Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
> > ---
> >  drivers/gpu/drm/panel/panel-ilitek-ili9882t.c | 22 ++++++++++++++++++-
> >  1 file changed, 21 insertions(+), 1 deletion(-)
>
> As talked about in response to the previous version [1], we can work
> to see if we can improve the sequencing. However, for now this seems
> fine.
>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
>
> [1] https://lore.kernel.org/r/CAD=3DFV=3DW_LT9mPYKjaKP3OvUDeNpsZxkhVN9NP_=
hQ+Es6Fe3dVw@mail.gmail.com

Pushed to drm-misc-next:

5820a1932ce8 drm/panel: ili9882t: Avoid blurred screen from fast sleep

