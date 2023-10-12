Return-Path: <devicetree+bounces-8145-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C3E7C6D9E
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 14:09:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BF2352828B4
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 12:09:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F168225114;
	Thu, 12 Oct 2023 12:09:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="Fn8yx5GG"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FB2A24A0B
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 12:09:22 +0000 (UTC)
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7DFEB8
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 05:09:20 -0700 (PDT)
Received: by mail-pf1-x42a.google.com with SMTP id d2e1a72fcca58-692c70bc440so717377b3a.3
        for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 05:09:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1697112560; x=1697717360; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mGVuIDhtnkx9I0P2cABYe4E02j31AzUEOF4KcnzwtNo=;
        b=Fn8yx5GGh7aL9kkK6kToM7fnRCr80ONPBUJITgEnhcYx8ZAUa/SOfxJPtMkJV71QlG
         yZKWcfzVBZGZIdHniRwfQcWNCE8FASXBCRi1yWtCSwY+N5BgHN13UcAt+Q6DMbaQWUK3
         6zKjJljdLXvh0j+M1LWVITX0j4nvhRfzuboishjLsR/6eFp35sfy1V2W368GKS2Rc6qp
         MFFuw48J9Ib6sWuabFesXWz8cnt+2u9SdM51v0d0JcDtCGx/hSdcuh35ny+Iq0qCBlfb
         s95+6VnOcrDxHSlX7Rcop73ar0rE6LfgoDY96MaKAtI+4+by9cBuBikpilVUtv81zm9i
         EUGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697112560; x=1697717360;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mGVuIDhtnkx9I0P2cABYe4E02j31AzUEOF4KcnzwtNo=;
        b=AFnx5bhTDHwVvXtxKejsXXSPah+1Cv+lA9ltVbgvKlnpqyt1f/gDJy231/VQbr/HHk
         9JSDP17t+bPyC/oKU8luJjta58zpjaHfnC16a9+UWVBmEC6XbKpkldbVbM4QWzxmMu1y
         q/w0o88olggmRK1K/yH7H6FTYF8S/NuZhSQ5BBAKr2WUUrj7/6aYS3G+XJqQDanTSTCj
         wMwlew7CPmNIfZKxHPBf/SoFtmmUqfFTSPh0waUYVpO+RO0Tjp6p7RaQ0v9ATpufNj1+
         XmzCSknrwHf/tPPU3A2IrErTDnYqFglzXrCN7ntAL1uZCqsb0g8BKQDd1cNZEwSY8bsA
         26HQ==
X-Gm-Message-State: AOJu0YzMgtFHpLUX4BaaBT6uvvra0I+UDSiOLuFC91NRCDE5kzmtz8aB
	Ts64G35D5pFZzYv4zefsNBTqNVsmEw73w/3lwDe6pT8xc+5z/rv3SXMtLw==
X-Google-Smtp-Source: AGHT+IG+qwM2ufmCDLktuyF3J53mc39RePPOt1YUFtmHX/i9Y46+A0GhC2zS9COvexYKnJPUEsdEadKXO7rk+zSOK+c=
X-Received: by 2002:a05:6a21:81a9:b0:171:c88a:8927 with SMTP id
 pd41-20020a056a2181a900b00171c88a8927mr6796724pzb.29.1697112560241; Thu, 12
 Oct 2023 05:09:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231007060639.725350-1-yangcong5@huaqin.corp-partner.google.com>
 <20231007060639.725350-3-yangcong5@huaqin.corp-partner.google.com>
 <CAD=FV=W3ef3vWrWRDPKgeUjcapEticj4=EWdC-bOb=ph0DShsA@mail.gmail.com>
 <CAHwB_N+=h8-5H6SM8REAge19SgLvrZD=drAP83QnSuuqB5gN8A@mail.gmail.com> <CAD=FV=XtqPJ77dx8uRb0=tMvC3CvgH5X+7mUJeXgcG228kZfUg@mail.gmail.com>
In-Reply-To: <CAD=FV=XtqPJ77dx8uRb0=tMvC3CvgH5X+7mUJeXgcG228kZfUg@mail.gmail.com>
From: cong yang <yangcong5@huaqin.corp-partner.google.com>
Date: Thu, 12 Oct 2023 20:09:09 +0800
Message-ID: <CAHwB_NLtnW4N-ZrW8riNBRZNEB0WiSwZWncHr0EACHN5JVx8Jw@mail.gmail.com>
Subject: Re: [v1 2/2] drm/panel: ili9882t: Avoid blurred screen from fast sleep
To: Doug Anderson <dianders@google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	hsinyi@google.com, linus.walleij@linaro.org, swboyd@chromium.org, 
	airlied@gmail.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi,

On Wed, Oct 11, 2023 at 3:11=E2=80=AFAM Doug Anderson <dianders@google.com>=
 wrote:
>
> Hi,
>
> On Tue, Oct 10, 2023 at 4:36=E2=80=AFAM cong yang
> <yangcong5@huaqin.corp-partner.google.com> wrote:
> >
> > Hi,
> >
> > On Tue, Oct 10, 2023 at 4:44=E2=80=AFAM Doug Anderson <dianders@google.=
com> wrote:
> > >
> > > Hi,
> > >
> > > On Fri, Oct 6, 2023 at 11:07=E2=80=AFPM Cong Yang
> > > <yangcong5@huaqin.corp-partner.google.com> wrote:
> > > >
> > > > At present, we have found that there may be a problem of blurred
> > > > screen during fast sleep/resume. The direct cause of the blurred
> > > > screen is that the IC does not receive 0x28/0x10. Because of the
> > > > particularity of the IC, before the panel enters sleep hid must
> > > > stop scanning, i2c_hid_core_suspend before ili9882t_disable.
> > > > This doesn't look very spec-compliant.
> > >
> > > Presumably you could be more spec compliant if we used
> > > "panel_follower" in this case? Would that be a better solution?
> >
> > In the "panel_follower" solution, the phenomenon is the same.
> > The current order is
> > ili9882t_disable=3D>i2c_hid_core_suspend=3D>elan_i2c_hid_power_down=3D>=
ili9882t_unprepare,
> > ili9882t need touchpanel stop scanning,i2c_hid_core_suspend before
> > ili9882t_disable.
>
> Ugh, that's unfortunate. Though is there a reason why you couldn't
> just move the `ili9882t_enter_sleep_mode()` to `ili9882t_unprepare()`?
> That seems like it should be OK and even perhaps makes it more
> symmetric with thue enable?

It looks like the test will still fail, because the touchpanel reset was
already pulled low before the panel enter sleep, which did not seem
to meet the timing requirements. I will explain this in the V3  cover lette=
r.
Thanks.

>
>
> > > > @@ -507,7 +526,7 @@ static int ili9882t_prepare(struct drm_panel *p=
anel)
> > > >         gpiod_set_value(ili->enable_gpio, 1);
> > > >         usleep_range(1000, 2000);
> > > >         gpiod_set_value(ili->enable_gpio, 0);
> > > > -       usleep_range(1000, 2000);
> > > > +       usleep_range(40000, 50000);
> > >
> > > nit: use 40000, 41000 instead of 40000, 50000. Linux almost always
> > > uses the longer delay, so that'll save ~9 ms. The only reason for the
> > > range is to optimize kernel wakeups which is really not a concern
> > > here.
> >
> > We need 50ms delay to meet the requirement.
>
> I'll respond to your v2, but if you need 50 ms then your current delay is=
 wrong.
>
>
> -Doug

