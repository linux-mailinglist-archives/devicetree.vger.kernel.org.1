Return-Path: <devicetree+bounces-89078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8D693FECE
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 22:09:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 68702283934
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 20:09:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D40DF18787B;
	Mon, 29 Jul 2024 20:09:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="S4WGVnKH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311B584D02
	for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 20:09:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722283777; cv=none; b=lCbXiNkF6eypllpptWaeOUw+InIlTk70uiDBj5C5bnA/NIsoko99V7IGsOJkxyvwsmrco9392K0yaqSyjsMvyTtcw6k/ykHSUfbT+hGyWLS8ZKe4rXuKpnk1rzQ3Vja8cW9L8WRmCEEMOrVQDsv8QsoX/Dv/2E5DLJ6bphyDOWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722283777; c=relaxed/simple;
	bh=Y0bKmENPrkpO62iFnuZrcOnFpoRNmn6cKOZ5PurDAzE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=imAvfq1QXoQsGGj8kO/0JB6cCpZA377am0WrZi1B+qCzupSt60pMl6PVmrnXYYo80fwEsXJOLVMq5snUzQXvfF+ysHrJN+R7QIpsT/uuk4N+BQ+VWmQ5xmX2HjGFCoWPeBfPgLI8c7RFtJ47Mipd1+UeOaf/XYfabuacTuN4JH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=S4WGVnKH; arc=none smtp.client-ip=209.85.128.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-6659e81bc68so26547037b3.0
        for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 13:09:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722283775; x=1722888575; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qO5YO3gTMJxRN4DD9FtUSuJI3FyT9bz9kOdIwn73kJI=;
        b=S4WGVnKH6AyS5gPtspPJzWTkk+ywyjShusJXRGuXl+wrvty76H1OZXBOnZyfiU2UEP
         fBTrRVaFbPOpz1xeSw0g9Eq7kXhjnRwwPYw8qfD5JrNc3QUv7XIU1/qLCCpZFqZDR0c2
         xD+xtjL6k/MlvwePlEeGhNd7PVyXLwo7XBqNPWvSQncEGlFTkFVN8Vkq5JmFusdEHpGc
         gUHG2qbCrbMBYdOpNOYRLA0smKmC185VV08Vk8CBoinzeWYq+DuxNT00Rb0EkB91ba3Q
         NozT/sEs+NP02cO3D6Cs5CAFuLhYkPPp/Gv7HE+5isL7v+xobseF2ZR/8L39Jx1X8Pki
         t0TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722283775; x=1722888575;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qO5YO3gTMJxRN4DD9FtUSuJI3FyT9bz9kOdIwn73kJI=;
        b=m6Fv383isDRFFH/fTw9Wucd8d2bxjThMZcoW1z9TiG5MdKk0uLH2ZiveZt/FNN53ia
         /7Hw34mlazkhBb21PcoYQAErt5WXvm8jRW+Gj3YHGZAVCrGCAUEtH8F9r6H2e+KiI4Kd
         jBdwUTRUcf8X9f5y9pEjdsX1jhWcEScg9xGl2fOASema/P6LoJ0kOTwrNVe7OIEd/W7w
         2/3rB/aln6RpwiCGLHJerxHvkfQp1Ypm9zuvmQsyu0L5N0JuJgNc87zY05iEwSA9QJCo
         8yMUhOEWqjqUxNlGBeDynbGB43Dx+Dcv3hosFy0RKCGe9UxE7e7z10Zyy9JUD2jvQSMx
         ST1g==
X-Forwarded-Encrypted: i=1; AJvYcCWapUQfTa9MfFlwVI9VjVr9F+aCXRcaqKMFvuUd/zyRaCNPUwTjuZHHbcYFAeoH8oIs82oZ3KWY8tiU1pNXrG77Ybh46Y8WtPX99Q==
X-Gm-Message-State: AOJu0Yy4ZHO2tbO6fE1smkqIs0vMYnm658LIdK5J1oBPHro5NVJMTXIx
	+OR7Q1J6g36BYyEsKyF4c6eQrfHzOZgEfj+dGsSAdaMDT6qf7eDYtZIYwMpgeqdESYU51vdTElG
	OZCOfE4xKSfKTuWrvHe76mADME1CZE8/6VZh8qg==
X-Google-Smtp-Source: AGHT+IHNGA9/9hOvLxvdj7+5y602kFWRi0g00FzF83tJv7u7qWJ8+ORj1d+m/utPMN2nC0Pnz2E1p8NJESCd3fTXz34=
X-Received: by 2002:a0d:e746:0:b0:65f:9873:73e9 with SMTP id
 00721157ae682-67a09593ba6mr101492697b3.33.1722283775155; Mon, 29 Jul 2024
 13:09:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240725083245.12253-1-lvzhaoxiong@huaqin.corp-partner.google.com>
 <20240725083245.12253-2-lvzhaoxiong@huaqin.corp-partner.google.com>
 <gq5fcttutomphgfrwrtloqzczia3uc5qpont3lrowocan2xjc5@ubfabhsh3mfl> <CA+6=WdQuFYbADjG0i_zWMGYmw95H1U_McqCw4CLW0+Gate50YA@mail.gmail.com>
In-Reply-To: <CA+6=WdQuFYbADjG0i_zWMGYmw95H1U_McqCw4CLW0+Gate50YA@mail.gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 29 Jul 2024 23:09:24 +0300
Message-ID: <CAA8EJppoj1Y2675UOp=JH=-HLdYuuzfr2Sxy1zzkvLosmrRQNw@mail.gmail.com>
Subject: Re: [PATCH v1 1/2] drm/panel: jd9365da: Move the sending location of
 the 11/29 command
To: zhaoxiong lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Cc: neil.armstrong@linaro.org, quic_jesszhan@quicinc.com, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
	dianders@chromium.org, hsinyi@google.com, airlied@gmail.com, daniel@ffwll.ch, 
	jagan@edgeble.ai, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 29 Jul 2024 at 06:10, zhaoxiong lv
<lvzhaoxiong@huaqin.corp-partner.google.com> wrote:
>
> On Sun, Jul 28, 2024 at 12:59=E2=80=AFAM Dmitry Baryshkov
> <dmitry.baryshkov@linaro.org> wrote:
> >
> > On Thu, Jul 25, 2024 at 04:32:44PM GMT, Zhaoxiong Lv wrote:
> > > Move the 11/29 command from enable() to init() function
> > >
> > > As mentioned in the patch:
> > > https://lore.kernel.org/all/20240624141926.5250-2-lvzhaoxiong@huaqin.=
corp-partner.google.com/
> > >
> > > Our DSI host has different modes in prepare() and enable()
> > > functions. prepare() is in LP mode and enable() is in HS mode.
> > > Since the 11/29 command must also be sent in LP mode,
> > > so we also move 11/29 command to the init() function.
> > >
> > > After moving the 11/29 command to the init() function,
> > > we no longer need additional delay judgment, so we delete
> > > variables "exit_sleep_to_display_on_delay_ms" and
> > > "display_on_delay_ms".
> >
> > Won't this result in a garbage being displayed on the panel during
> > startup?
>
> Hi Dmitry
>
> We just moved "Exit sleep mode" and "set display on" from the enable()
> function to the init() function and did not make any other changes.
> It seems that many drivers also put the "init code" and "Exit sleep
> mode" in one function.

You have moved the functions that actually enable the display out. And
by the definition it's expected that there is no video stream during
pre_enable(), it gets turned on afterwards. That's why I asked if
there is any kind of garbage or not.

> In addition, we briefly tested the kingdisplay_kd101ne3 panel and
> melfas_lmfbx101117480 panel, and it seems that there is no garbage on
> the panel.

Ack.

>
> BR
> >
> > >
> > > Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.c=
om>
> > > ---
> > >  .../gpu/drm/panel/panel-jadard-jd9365da-h3.c  | 59 ++++++++++-------=
--
> > >  1 file changed, 32 insertions(+), 27 deletions(-)
> >



--=20
With best wishes
Dmitry

