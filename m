Return-Path: <devicetree+bounces-50764-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 037F587CFD4
	for <lists+devicetree@lfdr.de>; Fri, 15 Mar 2024 16:08:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B4BC9284969
	for <lists+devicetree@lfdr.de>; Fri, 15 Mar 2024 15:08:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7790E3D38C;
	Fri, 15 Mar 2024 15:08:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Zd0qOD8J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0E7A18EA8
	for <devicetree@vger.kernel.org>; Fri, 15 Mar 2024 15:08:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710515300; cv=none; b=En7+EcLeG9jk7q/rXENRn7cWfNjhF+16IUUTCIgfIBgEihMzgsFep1fhEK0iiUnTxsZE5oaTwanj+bVTgBnks9MZVrf3ELP9Wm1Q/G7HvH+q9C8x48L/++8EieCe8nDOvHNybCh+A8rIG5SHBoieJEtxMW6O7/w979TxWSlJqjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710515300; c=relaxed/simple;
	bh=1p+2qEhn/qrjk/VPCWJTzuUwNlO3E+p95QBrqAO/oNE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=L9b2b68uouyj4t8bcS5YDgPdgEhb4Oqnf65QaMy+F6B0W07T34ZABdLmZGIY7jxKIfp/hNHXqkuhMioKKrHWLjmrnrP2KPd2jbJJJbMUM377jSZytrAgXxGJ12YQxHyXn5Il6unpCK63v7HCdygf3bi+nfi8Sws4P/gJrDdBeX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Zd0qOD8J; arc=none smtp.client-ip=209.85.219.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-690cd5b0f07so13349946d6.3
        for <devicetree@vger.kernel.org>; Fri, 15 Mar 2024 08:08:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1710515294; x=1711120094; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GSZdYN59DhOS8QyekeyWoGZ8e/VbiOIdQPzuTpNSPUk=;
        b=Zd0qOD8J4wpSz9bHCqS+4f5svRDAaWKkvBxOT8InfDa92eoDMLCYQGW78MKyBm3Czp
         pBX6uphgmFEFW7yRj17oQ+wqDqdt65HIfaELTgQMOmXNIfYy72w4v+qsEieDM1uq9yIY
         ztPqDYNb1cBJuMOXc3mFwMnO7DhkWJSfZUF1I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710515294; x=1711120094;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GSZdYN59DhOS8QyekeyWoGZ8e/VbiOIdQPzuTpNSPUk=;
        b=h+AJBthBxnAIrXLLI60GDroJnS/korZu5UyT/zy4O2NtYhFCAI7Ywl8yy6b1HwlIG/
         Xy2KzmMRoYuGDThE4McNCCeiPNIAQ/KB1VnX6cyBfWFK/G9k9lP4DYwKD3/UFtfKWXIt
         mGqkXm/0tZhIYv1TTd7KgPuB4RXHw/Nayx5BrzQKUZ1NDTym+iK1yNBMy6rQNNlikzdz
         cC1fHVIo9S/1f4d6l47pG3N0XQBKmQE16LSCOp0OzACxQfjwc848HIbzTE304KRuPh3b
         9jDzMjpDOpCUFQgNP9gK0j8XRrNMatRLJFdqDfHWXHpm3CQFNGSb6rH7N29cBZJfSGzg
         j0Vw==
X-Forwarded-Encrypted: i=1; AJvYcCUSWAGwTQFAbEx92wcABmPQfW4Ltt4fyxPYHt0DmvtHQQphMPh9ZCPl707g7W92YzBXCZCfD088WOy3i4ntDSRP2Hiv/fqMWen6iw==
X-Gm-Message-State: AOJu0Yw8W+JFWP+wjy2hrxkA0PzrV7XVU9idwFSx+YHCdtG3pm9PrOC3
	vz/8O3sBrZ53/Gh8jPkEN9zEmq597gsB2NV6xloJF4n2zfEJtZbg9BIa0dgSnWe0NCbXVfud2jg
	=
X-Google-Smtp-Source: AGHT+IFseK+SI8qSN+y2YEg0dm0NgrlAtNh6fVKKyDQ7EtFgheR3dIJ5isF3n85nGd0HtBBf1ri5Nw==
X-Received: by 2002:ad4:4bb2:0:b0:690:8b50:2e08 with SMTP id i18-20020ad44bb2000000b006908b502e08mr4802661qvw.56.1710515294199;
        Fri, 15 Mar 2024 08:08:14 -0700 (PDT)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com. [209.85.160.174])
        by smtp.gmail.com with ESMTPSA id pt10-20020a056214048a00b00690494d2766sm2081152qvb.96.2024.03.15.08.08.12
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Mar 2024 08:08:12 -0700 (PDT)
Received: by mail-qt1-f174.google.com with SMTP id d75a77b69052e-42ee0c326e8so328061cf.0
        for <devicetree@vger.kernel.org>; Fri, 15 Mar 2024 08:08:12 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVYxZpXAB4REqkKhTa0oft+0r4VEMUW2/CqByTdK985aZknuZJsZ94uLyLmTSMM/Nunxz5akEYMzehKA2bYFUbh9uQ6/nAuzEuJ6w==
X-Received: by 2002:a05:622a:292:b0:430:b2ee:d6bf with SMTP id
 z18-20020a05622a029200b00430b2eed6bfmr193108qtw.25.1710515292052; Fri, 15 Mar
 2024 08:08:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230703085555.30285-1-quic_mkshah@quicinc.com>
 <20230703085555.30285-4-quic_mkshah@quicinc.com> <CAD=FV=XWH+Eoa9XjDns--NSDTZHeUwTdrX_r_QZhSPpbZNwz+w@mail.gmail.com>
 <f638e848-36c5-4cea-c2c8-841a003b1863@quicinc.com>
In-Reply-To: <f638e848-36c5-4cea-c2c8-841a003b1863@quicinc.com>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 15 Mar 2024 08:07:56 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XgwrFWZ7uQ1fQbykyipFmyZB6nyJnKmS1s=hdAANd-gg@mail.gmail.com>
Message-ID: <CAD=FV=XgwrFWZ7uQ1fQbykyipFmyZB6nyJnKmS1s=hdAANd-gg@mail.gmail.com>
Subject: Re: [RESEND v4 3/3] arm64: dts: qcom: sc7280: Add power-domains for
 cpuidle states
To: Abhinav Kumar <quic_abhinavk@quicinc.com>
Cc: Maulik Shah <quic_mkshah@quicinc.com>, andersson@kernel.org, ulf.hansson@linaro.org, 
	swboyd@chromium.org, wingers@google.com, daniel.lezcano@linaro.org, 
	rafael@kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, sudeep.holla@arm.com, 
	jwerner@chromium.org, quic_lsrao@quicinc.com, quic_rjendra@quicinc.com, 
	devicetree@vger.kernel.org, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Rob Clark <robdclark@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Mar 14, 2024 at 4:39=E2=80=AFPM Abhinav Kumar <quic_abhinavk@quicin=
c.com> wrote:
>
> Hi Doug
>
> On 3/14/2024 4:20 PM, Doug Anderson wrote:
> > Hi,
> >
> > On Mon, Jul 3, 2023 at 1:56=E2=80=AFAM Maulik Shah <quic_mkshah@quicinc=
.com> wrote:
> >>
> >> Add power-domains for cpuidle states to use psci os-initiated idle sta=
tes.
> >>
> >> Cc: devicetree@vger.kernel.org
> >> Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>
> >> Signed-off-by: Maulik Shah <quic_mkshah@quicinc.com>
> >> ---
> >>   arch/arm64/boot/dts/qcom/sc7280.dtsi | 98 +++++++++++++++++++++-----=
--
> >>   1 file changed, 73 insertions(+), 25 deletions(-)
> >
> > FWIW, I dug up an old sc7280-herobrine board to test some other change
> > and found it no longer booted. :( I bisected it and this is the change
> > that breaks it. Specifically, I can make mainline boot with:
> >
> > git revert --no-edit db5d137e81bc # arm64: dts: qcom: sc7280: Update
> > domain-idle-states for cluster sleep
> > git revert --no-edit 7925ca85e956 # arm64: dts: qcom: sc7280: Add
> > power-domains for cpuidle states
> >
>
> We noticed that some variants of sc7280 herobrine boards didnt boot but
> some did atleast till linux 6.8 rc-6. I have not tested linux 6.9 rc-1 ye=
t.

Wow, really? This doesn't seem like it would be related to the
variant. Maybe the firmware version? FWIW, the device I was having
problems with was a "villager-rev2" with FW 15368.0.0.

OK, so I just pulled out a `hoglin-rev5` with 15432.0.0 and v6.8-rc6
boots and WiFi comes up. However, when I move to full mainline
(b0546776ad3f (HEAD, linux/master) Merge tag 'printk-for-6.9' of
git://git.kernel.org/pub/scm/linux/kernel/git/printk/linux) I get the
ath11k crash.

OK, so I updated my villager to 15432.0.0 and things work even without
reverting ${SUBJECT} patch. I guess that's the answer: this patch
broke things with some old firmwares but with the newer firmware it's
fixed. Hopefully that doesn't happen again since I don't think there
will ever be a newer firmware than 15432.0.0.


> > (I get an ath11k crash after that, but that's easy to hack out since I
> > don't need WiFi)
> >
>
> hmm, wifi worked alright on 6.8 rc-6 for us.

I guess I'll leave it to you to track down / report as needed.


> > I suppose the two options here are to either:
> >
> > 1. Track the problem down and figure out why the breaks boot and then
> > fix it. I'm personally not going to track this down, but if someone
> > wants me to test a patch I can do that.
> >
>
> Can Maulik help us do that?

OK, sounds like we don't need to, as long as everyone updates their
firmware. This should be OK.


> > 2. Delete all the herobrine dts files.
> >
> > So far we've been keeping the herobrine dts files alive because I
> > thought some graphics folks (Rob, Abhinav, Jessica, for instance) were
> > still using it. ...but Rob says he hasn't booted his in a while. No
> > idea if Abhinav and Jessica are using theirs. Any opinions? Is
> > herobrine hardware support near and dear to anyone these days?
> >
>
> Yes, so we have been using sc7280 herobrine devices even till the last
> cycle and quite a bit of feature development was actually done on that.
>
> It was the only device having eDP other than sc8280xp till x1e80100
> landed last cycle.

OK, thanks for confirming that they're still useful to you. When I got
the failures I feared that nobody was using them anymore.


> I do want to start using sc8280xp as well because from the experience we
> got, it has more visibility in terms of users. So that will address my
> eDP concern.
>
> But, the nice thing about chromebooks is we really like to use them for
> IGT development / CI debug as CrOS provides a nice environment to
> cros-deploy IGT.
>
> We can continue to use sc7180 for IGT development but if we want to
> debug issues with eDP + IGT, sc7280 is a really useful platform for that.
>
> sc8280xp or x1e80100 is not a CrOS supported device. So we will have to
> develop and test IGT directly on the device (which is a bit of a pain)
> unless someone has a better way of "cross-compilation" for IGT on
> non-CrOS images.

I'd have to let others comment on IGT.

-Doug

