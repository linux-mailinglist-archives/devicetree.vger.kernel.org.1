Return-Path: <devicetree+bounces-83016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A43926E87
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2024 06:42:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 44AA428AA04
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2024 04:42:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A46432C85;
	Thu,  4 Jul 2024 04:36:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="Ik9S7gl4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5F243219F
	for <devicetree@vger.kernel.org>; Thu,  4 Jul 2024 04:36:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720067813; cv=none; b=KNGQ1w8u2Fsy2EfxtbsYDBQ0CUaMcO5jU/VH8jD956kHeqKLK1ypbUShyw65XNvLKQ5ZdCqU2WIqWoMWl0gmJXebTSSSLxek8XeQgP7lAiLK7+IFiCusBVh1s5uwGwt+J8bMvCddWRpxdYgBU/IK3CvRb1/9c7Sf9PAne5LX8fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720067813; c=relaxed/simple;
	bh=9slmyaBlklEvimC+IoLVf5ZWppbjvVs6SBoZDCByeC8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=k7HfvxWKbLicBGKcVtpNz2nXHOaEyXCFC9RA7au50DK6MhsaFLFuoSnHIr6Om7nsJi9CkFnnFgAk3QAC0yn1uE1+OiyRL8wYp5l/Mq2AO7pXQ3GKtDJfyWMJYPYAa1JcfnUWnvQjoAy38YbGSeD3YaZuckxsuReoLGx3kHQaeCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=Ik9S7gl4; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-2c97ff39453so201853a91.0
        for <devicetree@vger.kernel.org>; Wed, 03 Jul 2024 21:36:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1720067811; x=1720672611; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mAbXjXG0fSvMf5pJhFu2VS2Kd5/IOX1LZWjusen/NTs=;
        b=Ik9S7gl4Ioi7+3thnWC7qXyQPBEr5A1fI3Ta+TYgemDdCImd/lja8NPeg4FhBYYi49
         RQfAIKU/CKmAUJGVsozgF7BeGAb97XqyCD4jn++KdJYa1BrJ+Ff0EA/guI/kFdUKScy4
         eZQpocrEB//JayKnhrcU7fPfAAMNFhR+97gED8iFHt3DyRs9TIMm5Gl3I54uHBzmvaMd
         mUFZ8/2/5sTb1/I1dbGT1kud/MluW9pzdzuhIOMDt7Ag7wupVngN/c14e3SGlc9oknQK
         vpGJ43ziVdlJ6puNCTtA57+zUetMWSA7/eUgYkscqI13dYls3hfOhst9pVC1q1TdQpXl
         3Y2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720067811; x=1720672611;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mAbXjXG0fSvMf5pJhFu2VS2Kd5/IOX1LZWjusen/NTs=;
        b=fYwTscJt7Dekpl7xWNpACTb3Hhm/op/PkGWVdZxjXJFdkJ4Wy9f+28GleYXTpgDOGX
         IyYbjRFHjw8VWnTv2/7Ejxcc6zrWSI8xJ40D4hfrV4iMvfxKis4RRKaDoQiUhB4kqEwo
         tEA6hc9fnagKRg8kusIWxptgVOEcXezdA9Qugh35kxpxDvSnkMhfL1P680Rkizg/EOID
         bjPT+tC3SjvIq04DWyUDQVEd7qxa9mzNj+TvN9StVhBnZ9OlbjTsoIfkzj2UaQs/pbPo
         yDiXzkzBOtz54cwoSxM0KsjXEiXTpB+LVyCHrlDZ7PkxM6Eqe/H00g28I4uZZtsHLeNG
         BHxQ==
X-Forwarded-Encrypted: i=1; AJvYcCWIbC/b0JV1Bw39D1tyzH6VKJQgcHqs2uqhJUse0Nj9FifxonVRSM3QIBvMt97RJgC02FLI0pkO79yvJsVKeHgYSzJyJ3UaKYxJEw==
X-Gm-Message-State: AOJu0YwZbxmy8olLOEo7LLou4Da9aae8wRi6d5FwgChPrNKK24y0Kz5V
	etX5SSg9LvqvENrKUfSOZYJ2zaWUXXOR6Gmhe46yvsOdXVcY+R7JVOzAM7A0ebqXvoA4+xJcEis
	BwkMbl97O/qsIhPq6eJQUvXhlBissvyVum9chprwZH0M2SHG7
X-Google-Smtp-Source: AGHT+IFtkJ+EuL8PoDKfInod5fFnpjY15Fd6bShoE64mF1c8evcN7TimB/7UEAKFN0CDsuw+N1TkXgUJNgqJPD6HU2A=
X-Received: by 2002:a17:90a:1fc8:b0:2c2:f6a2:a5f7 with SMTP id
 98e67ed59e1d1-2c99c53b414mr431715a91.13.1720067811171; Wed, 03 Jul 2024
 21:36:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240702130138.2543711-1-yangcong5@huaqin.corp-partner.google.com>
 <20240702130138.2543711-3-yangcong5@huaqin.corp-partner.google.com> <CACRpkdY+nuSWz7rnVVUpF_mZOfDUb_6fgoJpnG2Pt-+AGLqt0g@mail.gmail.com>
In-Reply-To: <CACRpkdY+nuSWz7rnVVUpF_mZOfDUb_6fgoJpnG2Pt-+AGLqt0g@mail.gmail.com>
From: cong yang <yangcong5@huaqin.corp-partner.google.com>
Date: Thu, 4 Jul 2024 12:36:40 +0800
Message-ID: <CAHwB_N+Gr=Kso6=UabHseB0UTb+4wWpHR5MAZ82bHe5At_y-cw@mail.gmail.com>
Subject: Re: [PATCH v1 2/2] drm/panel: jd9365da: Support for Melfas
 lmfbx101117480 MIPI-DSI panel
To: Linus Walleij <linus.walleij@linaro.org>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	dianders@chromium.org, swboyd@chromium.org, airlied@gmail.com, 
	dmitry.baryshkov@linaro.org, krzysztof.kozlowski+dt@linaro.org, 
	robh+dt@kernel.org, conor+dt@kernel.org, 
	lvzhaoxiong@huaqin.corp-partner.google.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Linus Walleij <linus.walleij@linaro.org> =E4=BA=8E2024=E5=B9=B47=E6=9C=883=
=E6=97=A5=E5=91=A8=E4=B8=89 21:10=E5=86=99=E9=81=93=EF=BC=9A
>
> On Tue, Jul 2, 2024 at 3:02=E2=80=AFPM Cong Yang
> <yangcong5@huaqin.corp-partner.google.com> wrote:
>
> > The Melfas lmfbx101117480 is a 10.1" WXGA TFT-LCD panel, use jd9365da
> > controller, which fits in nicely with the existing panel-jadard-jd9365d=
a-h3
> > driver. Hence, we add a new compatible with panel specific config.
> >
> > Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
>
> This is certainly OK
> Acked-by: Linus Walleij <linus.walleij@linaro.org>
>
> > +static int melfas_lmfbx101117480_init_cmds(struct jadard *jadard)
> > +{
> > +       struct mipi_dsi_multi_context dsi_ctx =3D { .dsi =3D jadard->ds=
i };
> > +
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xe0, 0x00);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xe1, 0x93);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xe2, 0x65);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xe3, 0xf8);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x80, 0x03);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xe0, 0x01);
>
> Until this point *all* displays have the same init sequence, what about
> a follow-up patch that start to break things that are always the
> same into helper functions?
>
> These sequences all have a lot of the same magic bytes, so if
> you guys have a datasheet for this display controller then start
> adding gradually some #defines for the e0, e1, e2 etc commands
> please.

Okay, will add a patch in V2 series to fix it. Thanks.

>
> Yours,
> Linus Walleij

