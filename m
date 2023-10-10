Return-Path: <devicetree+bounces-7387-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E5C37C0432
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 21:11:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 19645281AFD
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 19:11:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93AC73B283;
	Tue, 10 Oct 2023 19:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="maZySBjG"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2548138DDF
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 19:11:53 +0000 (UTC)
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0AA23CC
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 12:11:45 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-534694a9f26so2692a12.1
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 12:11:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1696965103; x=1697569903; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BmjErNj6cLHcO0s7PJGZsoXQtRcGQqMYUEfJq8NBOjo=;
        b=maZySBjGgF20+xAxLcuzu6WFVPXxIrLhGzPtXRx7psguyrbiiEDcqA96W5otl5Wsrk
         H8KmjqJsLs3ZdbJJpELZjIXBpktJhkzaTdjK6OZBCRdFmLtl3b4yJyaaN+NVs+RzFc/y
         BeWP0zc6JdP+Lwn32/OYnzDZXCO30tnXJbG2jC/sv8x65QobIBk2Uc16ad+ajlRoZjCt
         fhBp1ugqlt5MX+7oaBVwaTwOThHPZKF1D7SGtza96XbIrRqzAiff5ZeZ5GVpF5yMVdTS
         EIPOrjXDE+4xj4ZGBByLxxMt2l1iDGqeCyYayua4W4CtkUpmuVSSGvknADS00dZtm6Pa
         VVZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696965103; x=1697569903;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BmjErNj6cLHcO0s7PJGZsoXQtRcGQqMYUEfJq8NBOjo=;
        b=cl61mPRegiwSVTlNr2nrpGYTsBPP0MV2DoM3Z9oro6ttOSb2KwdJrtseae5As4i8dI
         o54M0acHhUNBD2EJJezsc0vygEvWc5oFhgsllzuT6wQvLkpiyMbDGCjZ8gvIq7Rxisky
         jWydSxma3eeB4j/redLBhXxLF3+zQOGxFKTyi4KxImGoSTrsMJpz6suaGUBKBzaOyheG
         dVk7n8jZWvtHvUpBdPuSEvmi7q5n2A64ah6MhKHZNfmjiWpUwq2f6Mjxz05+rKyQxAIz
         6NcgeP+lMEKEyQSJV7MX1FMtDhaMGySaBYjZ9awZIaM22Cj0IBemn/qgmHTu084olRNA
         AACA==
X-Gm-Message-State: AOJu0YwJElekn6i5f/RCZoG9XNS+fk74ZD5xpDEEv9wF7io+g5eixAyB
	j+Wgnh6FHWHBHxBJdeSe9Yx2qukqSPYdL6lN3GV+ne+JNld2EbmufWk=
X-Google-Smtp-Source: AGHT+IF44V9VAvMHDXj78txqmMrBQ5P2zJqqx5htIgx/2JlftTdgM1YVJ7acLqOWZw5OeYg6E3fJaN0KSIczk6RAUH0=
X-Received: by 2002:a50:cc9a:0:b0:53d:a40e:bed1 with SMTP id
 q26-20020a50cc9a000000b0053da40ebed1mr26458edi.3.1696965102691; Tue, 10 Oct
 2023 12:11:42 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231007060639.725350-1-yangcong5@huaqin.corp-partner.google.com>
 <20231007060639.725350-3-yangcong5@huaqin.corp-partner.google.com>
 <CAD=FV=W3ef3vWrWRDPKgeUjcapEticj4=EWdC-bOb=ph0DShsA@mail.gmail.com> <CAHwB_N+=h8-5H6SM8REAge19SgLvrZD=drAP83QnSuuqB5gN8A@mail.gmail.com>
In-Reply-To: <CAHwB_N+=h8-5H6SM8REAge19SgLvrZD=drAP83QnSuuqB5gN8A@mail.gmail.com>
From: Doug Anderson <dianders@google.com>
Date: Tue, 10 Oct 2023 12:11:30 -0700
Message-ID: <CAD=FV=XtqPJ77dx8uRb0=tMvC3CvgH5X+7mUJeXgcG228kZfUg@mail.gmail.com>
Subject: Re: [v1 2/2] drm/panel: ili9882t: Avoid blurred screen from fast sleep
To: cong yang <yangcong5@huaqin.corp-partner.google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	hsinyi@google.com, linus.walleij@linaro.org, swboyd@chromium.org, 
	airlied@gmail.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
	USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi,

On Tue, Oct 10, 2023 at 4:36=E2=80=AFAM cong yang
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> Hi,
>
> On Tue, Oct 10, 2023 at 4:44=E2=80=AFAM Doug Anderson <dianders@google.co=
m> wrote:
> >
> > Hi,
> >
> > On Fri, Oct 6, 2023 at 11:07=E2=80=AFPM Cong Yang
> > <yangcong5@huaqin.corp-partner.google.com> wrote:
> > >
> > > At present, we have found that there may be a problem of blurred
> > > screen during fast sleep/resume. The direct cause of the blurred
> > > screen is that the IC does not receive 0x28/0x10. Because of the
> > > particularity of the IC, before the panel enters sleep hid must
> > > stop scanning, i2c_hid_core_suspend before ili9882t_disable.
> > > This doesn't look very spec-compliant.
> >
> > Presumably you could be more spec compliant if we used
> > "panel_follower" in this case? Would that be a better solution?
>
> In the "panel_follower" solution, the phenomenon is the same.
> The current order is
> ili9882t_disable=3D>i2c_hid_core_suspend=3D>elan_i2c_hid_power_down=3D>il=
i9882t_unprepare,
> ili9882t need touchpanel stop scanning,i2c_hid_core_suspend before
> ili9882t_disable.

Ugh, that's unfortunate. Though is there a reason why you couldn't
just move the `ili9882t_enter_sleep_mode()` to `ili9882t_unprepare()`?
That seems like it should be OK and even perhaps makes it more
symmetric with thue enable?


> > > @@ -507,7 +526,7 @@ static int ili9882t_prepare(struct drm_panel *pan=
el)
> > >         gpiod_set_value(ili->enable_gpio, 1);
> > >         usleep_range(1000, 2000);
> > >         gpiod_set_value(ili->enable_gpio, 0);
> > > -       usleep_range(1000, 2000);
> > > +       usleep_range(40000, 50000);
> >
> > nit: use 40000, 41000 instead of 40000, 50000. Linux almost always
> > uses the longer delay, so that'll save ~9 ms. The only reason for the
> > range is to optimize kernel wakeups which is really not a concern
> > here.
>
> We need 50ms delay to meet the requirement.

I'll respond to your v2, but if you need 50 ms then your current delay is w=
rong.


-Doug

