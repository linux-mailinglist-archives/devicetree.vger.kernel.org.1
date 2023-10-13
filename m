Return-Path: <devicetree+bounces-8562-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E25657C8BEF
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 19:05:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 30AF1280E3E
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 17:05:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2E30219EA;
	Fri, 13 Oct 2023 17:05:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="gSRSQ3GZ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C30D520B0B
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 17:05:47 +0000 (UTC)
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9E1095
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 10:05:45 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-40662119cd0so2145e9.1
        for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 10:05:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1697216744; x=1697821544; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZLTeYfvHIZsFgYvDpFN8FRDYDSigvoHHk+XCSGMyIpE=;
        b=gSRSQ3GZr8uCUuUq4nsACILU3wVQcSTssA8ZI/5isVyen/zr5O81YFa1WHI59ywN2z
         6NWgFdWR2vrhcaCpl5ADCKvOnz8E8Xj7gs9F+BSVrWTtyAYoMP0PC9iDQCqgKkAip8S6
         cn/b9P8rbpshssoqapiQU/LVN7z5yELRkHi0kpgtrW2fIPqLF/AmQvwZhyco3jNTAfbY
         4EVfBXz27fxOX6f4sTmEASvZydI7wzOMGKYnFmLxYzQgz2FRVJ/QXD7pEBgpyQBf8N78
         EjH4U6fXpI9vo557MnOVLQ8OJtiH/YY3R9Nd2EHrqweV9NtASC7qohycKiPygHwnADg4
         2iMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697216744; x=1697821544;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZLTeYfvHIZsFgYvDpFN8FRDYDSigvoHHk+XCSGMyIpE=;
        b=ZEXadIqECENhCkBqol2hddAXH97zm5jPHf6YIq1HhtaHYVtI0smJNK+QAyWNv4t736
         WEzYocTYq0Oz4NQAF0qe/ro6QtzR32mqCSchG9UVAdeX/xJol636fpADqst/wc46+z+x
         ixhVRG+xbpmInvCOu3JVDPwvv6X9XqofFINmh4B0W8b7PpFlh8pL2sgc/uM1ChX8x8U0
         sKPyLEQXst0WYWnZdefFp7m8GdecmvKWPKI9YcfEgRafz+e41zUZZfIgEC3HZvfpA9dy
         0JgsY6fedpHwNPxCA11ePfcHs5LerX3WxnXJS8D9yCXDoLfPcQs16kVtmfAG1FKQ9rwv
         jzGQ==
X-Gm-Message-State: AOJu0YxMb5RiVkUgpjjg6vnl4XqGCs0noJ+S1Pkht7jp7mOv33avDFrf
	/IGZSbCmBlQlidUnslzVD7ZjPu+AjPf7wFETCfWKwIK/W4FEg7tu8FwiAQ==
X-Google-Smtp-Source: AGHT+IE3xqiYKg1JuezqI9ENft5U9ZYxAhPiMMAiZnHB4jypHpaoUmpHYk/8BpvcZlxtKWlHRSF8Bms476/kWK77Xbo=
X-Received: by 2002:a05:600c:3b06:b0:3fe:e9ea:9653 with SMTP id
 m6-20020a05600c3b0600b003fee9ea9653mr153181wms.4.1697216743940; Fri, 13 Oct
 2023 10:05:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231012121004.2127918-1-yangcong5@huaqin.corp-partner.google.com>
 <20231012121004.2127918-3-yangcong5@huaqin.corp-partner.google.com>
 <CAD=FV=VwUHctAQXGr_6FZfTS3r0-MZaSiB8+YkfJJzrJsnZDLw@mail.gmail.com>
 <CAHwB_NKSL8vHdN8TnQY2Z04E4rDRLK5BHoryZCi2kNAwQEjisQ@mail.gmail.com>
 <CAD=FV=VmiS6G25JyAj4UGjU5Q9f80GcjLq1xwU4gdVyzDdk8LQ@mail.gmail.com> <CAHwB_NL_RfLBmAOWqj-9iaUZEg-C2JUUveP1cn4dnR98az0BXQ@mail.gmail.com>
In-Reply-To: <CAHwB_NL_RfLBmAOWqj-9iaUZEg-C2JUUveP1cn4dnR98az0BXQ@mail.gmail.com>
From: Doug Anderson <dianders@google.com>
Date: Fri, 13 Oct 2023 10:05:27 -0700
Message-ID: <CAD=FV=W_LT9mPYKjaKP3OvUDeNpsZxkhVN9NP_hQ+Es6Fe3dVw@mail.gmail.com>
Subject: Re: [v3 2/3] drm/panel: ili9882t: Avoid blurred screen from fast sleep
To: cong yang <yangcong5@huaqin.corp-partner.google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	hsinyi@google.com, linus.walleij@linaro.org, swboyd@chromium.org, 
	airlied@gmail.com, catalin.marinas@arm.com, will@kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
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

On Thu, Oct 12, 2023 at 8:56=E2=80=AFPM cong yang
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> Hi,
>
> On Fri, Oct 13, 2023 at 10:28=E2=80=AFAM Doug Anderson <dianders@google.c=
om> wrote:
> >
> > Hi,
> >
> > On Thu, Oct 12, 2023 at 6:12=E2=80=AFPM cong yang
> > <yangcong5@huaqin.corp-partner.google.com> wrote:
> > >
> > > Hi,
> > >
> > > On Thu, Oct 12, 2023 at 11:15=E2=80=AFPM Doug Anderson <dianders@goog=
le.com> wrote:
> > > >
> > > > Hi,
> > > >
> > > > On Thu, Oct 12, 2023 at 5:10=E2=80=AFAM Cong Yang
> > > > <yangcong5@huaqin.corp-partner.google.com> wrote:
> > > > >
> > > > > At present, we have found that there may be a problem of blurred
> > > > > screen during fast sleep/resume. The direct cause of the blurred
> > > > > screen is that the IC does not receive 0x28/0x10. Because of the
> > > > > particularity of the IC, before the panel enters sleep hid must
> > > > > stop scanning, as i2c_hid_core_suspend before ili9882t_disable.
> > > > > If move the ili9882t_enter_sleep_mode function to ili9882t_unprep=
are,
> > > > > touch reset will pull low before panel entersleep, which does not=
 meet
> > > > > the timing requirements..
> > > >
> > > > The above makes me believe that the reset GPIO should be moved out =
of
> > > > the input driver and into the panel driver. I could just imagine th=
at
> > > > the kernel might have some reason it wants to suspend the i2c hid
> > > > device. If that causes the panel to suddenly start failing then tha=
t
> > > > would be bad... I think we should fix this.
> > >
> > > Thanks, I will confirm with ilitek in further analysis and use "move
> > > the ili9882t_enter_sleep_mode
> > > function to ili9882t_unprepare".  Is the test failure really because
> > > the touch reset timing
> > > does not match? There is also a separate reset GPIO on the panel.
> > > Shouldn't touch reset not
> > > affect the panel?
> > >
> > > If we find a better solution I will continue upstream,=E3=80=82 So is=
 it
> > > possible to apply this plan now?
> >
> > I wouldn't be too upset at applying the current code as long as you're
> > going to continue to investigate. We can always continue to iterate on
> > it and having something working reasonably well is better than nothing
> > at all. However, I probably would wait at least 1 week before applying
> > any patch from you just simply out of courtesy to give others on the
> > mailing list time to express their comments. ...presumably we could
> > get to the bottom of the problem in that 1 week time anyway...
> >
> > I'm not trying to be an obstinate pain here--I'm merely trying to make
> > sure that whatever we land will continue to work across kernel uprevs,
> > even if driver probe order / timing changes in the kernel. If the
> > panel is really so tied to the touchscreen device's reset GPIO timing
> > then it worries me. What happens, for instance, if you disable the
> > touchscreen CONFIG in the kernel? Does the panel still work, or is
> > that extra reset GPIO totally critical to the functioning of the
> > panel. If it's totally critical then it probably makes sense to move
> > to the panel driver given that the touchscreen is a panel follower
> > anyway...
>
> Thanks. It looks like the panel works fine after I disable the touch scre=
en
> device. So the panel may not depend on touch screen reset.
> Need to continue investigating the root cause for current status.

Ah, OK. So I guess the issue is that the ideal case involves more
interleaving of things? Right now, I think this is what happens is at
power off:

1. We call the "disable" of the panel code which enters sleep mode.

2. As panel follower, the touchscreen gets called to power off
_before_ the panel's unprepare stage. This is when we assert the
touchscreen reset GPIO.

3. We call the "unprepare" of the panel code which deasserts the
"enable" pin of the panel and then disables regulators.


The proper sequence is:

1. Stop i2c hid scanning

2. Panel enter sleep

3. Assert touchscreen reset

4. Deassert the "enable" pin of the panel and disable regulators.


Ick. I guess the only way we'd be able to really make this work would
be to extend panel follower to notify followers before _both_ the
disable and the unprepare. I guess I can put that on my todo list and
we can see what folks think. Looking closely at it, I agree that I
don't think we want to move the "touchscreen reset" functionality into
the panel even if it would probably work. That feels ugly.

-Doug

