Return-Path: <devicetree+bounces-50800-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3905187D2D3
	for <lists+devicetree@lfdr.de>; Fri, 15 Mar 2024 18:32:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A75041F21B96
	for <lists+devicetree@lfdr.de>; Fri, 15 Mar 2024 17:32:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9A4A48CDC;
	Fri, 15 Mar 2024 17:32:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="f8bSTqO9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D8F482EB
	for <devicetree@vger.kernel.org>; Fri, 15 Mar 2024 17:32:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710523937; cv=none; b=C1/lnmQbbt9q7DXEtNFyXg2PUcQf58XoXgGFEpddiH8gPoU/pIhgq+2ic5u2VVfD34+pgYKiT4JBjDD06YKHQh9HYUGq138Aioi0aHxyebk4GvtgP3TkfEKN4AGwGCPrf6/Rmn/DfAO3qG2fJC2coRYXo139jfOOL4msCW4HoKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710523937; c=relaxed/simple;
	bh=0LTEsN2O/FgSWhZk5KJW+7bWr7jqaVlwguZyG5cUT4s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=E3c2nyA/KPStCS2P5rK7jyniZKoTpQVGIUhHgnWMiKG4BC/2MUu/VuDicGjNx+YybcvFMRrOPVco8AHuGc0UP0v3wgfu2pigAvJNxCbDRcXNYYkc60U2NX0leD9SFDvfpRvSDtZciz/zpnwr8j+ic0Q49Io4heDbuffvJXRE+jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=f8bSTqO9; arc=none smtp.client-ip=209.85.210.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ot1-f42.google.com with SMTP id 46e09a7af769-6e0f43074edso1399944a34.1
        for <devicetree@vger.kernel.org>; Fri, 15 Mar 2024 10:32:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1710523933; x=1711128733; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=35pY7i/gjcm69pUN8AAJZNQoGf0jouiTU8qeW6pOlqY=;
        b=f8bSTqO97dV4NRJXwZOl8YCt1H6UwzdG2nE4ckdX1+3D8he/Z50iGd5+odKUcGv0QN
         wQlU5fCVL2DFGlklRH7dTu8rGNkw01oIdqgOpCWBBPol8FebO0CfWdT/THoa7Np1tKC6
         GesErz+qFnXqYhMXkAz7+5usnRQ7+gtJpuvGc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710523933; x=1711128733;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=35pY7i/gjcm69pUN8AAJZNQoGf0jouiTU8qeW6pOlqY=;
        b=ohQcbv1bGXUTHJRfVU3ER82XgRSYi78dg6ImS1hpFVjW8Qu8rrPRobv6KrHNhvETuB
         0ygscvJ6PoFGNGCZ7nVzR7jHo+a7fhhfMR9hkfsv1fLSPS6qEHI7RtCwSHx35FWmN/0z
         PFXTkcXyiUVhN+jvWMs55Rx+IahDj1bgFCloIISgH1YVtWVCaZ8ObsG9eywP+OUVMqvb
         qG5tCxsaDp6iHmI18RNNrMYPonCZ0guPgRJWaTh0hkJI21R24nL9ylxCOHSQNw0bV22x
         G8tVeDY6vjWu61JsbndXe47TosExdfDEf+KGI56vbRm5IiIRGDwAwTMhdo83juCzQYxA
         SrVQ==
X-Forwarded-Encrypted: i=1; AJvYcCXHz9kYK/jcG2N7RQ/0yXue+sm4b6kVunmNk9PLstavHGS/6uypzVc6bCy0i+lq3sWvAYObc7XWPjPRq8wJ5A3xU04EE/1+0x7Olg==
X-Gm-Message-State: AOJu0YxPqb0BK1bTyDZTnYG97nIZ38/B8p6x5keo18ZJcKLO4HMfb0cq
	SH0ot37rdBqxiJdG4P3M+v8s+SBW1ufwl45LsNK/vF3LEU0SblVvENoKYd9suqYeMEzsfKOZ/aI
	=
X-Google-Smtp-Source: AGHT+IFxYb3annE56PJsClugAqWkHhXLslmAUQ0DAJGf+dKSgor5VbYRiBrC057qDNVvLw8OMKVX8w==
X-Received: by 2002:a05:6830:168e:b0:6e4:448d:42e3 with SMTP id k14-20020a056830168e00b006e4448d42e3mr4527802otr.3.1710523933265;
        Fri, 15 Mar 2024 10:32:13 -0700 (PDT)
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com. [209.85.160.176])
        by smtp.gmail.com with ESMTPSA id t13-20020a9d748d000000b006e67ea9e044sm145109otk.63.2024.03.15.10.32.12
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Mar 2024 10:32:12 -0700 (PDT)
Received: by mail-qt1-f176.google.com with SMTP id d75a77b69052e-43095dcbee6so17861cf.0
        for <devicetree@vger.kernel.org>; Fri, 15 Mar 2024 10:32:12 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXMWwM1YRfrCWQCGY2GRcjMzhb9VhOJcz5IibwWyUI5Wxep5xbMV+5KHFc1KdD275DXmUzA8EkZBZf8+UoypTbNm4l7bKMa05LJ/A==
X-Received: by 2002:ac8:470b:0:b0:42e:e40f:fca4 with SMTP id
 f11-20020ac8470b000000b0042ee40ffca4mr311095qtp.13.1710523931775; Fri, 15 Mar
 2024 10:32:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230703085555.30285-1-quic_mkshah@quicinc.com>
 <20230703085555.30285-4-quic_mkshah@quicinc.com> <CAD=FV=XWH+Eoa9XjDns--NSDTZHeUwTdrX_r_QZhSPpbZNwz+w@mail.gmail.com>
 <20240315152431.sckqhc6ri63blf2g@bogus> <CAD=FV=UD1nuxryvWH=Mi7E+QzMoa7xCHebY0DtZCAVmEW3ZeAg@mail.gmail.com>
 <20240315172632.6zxwj4enq4tddbb3@bogus>
In-Reply-To: <20240315172632.6zxwj4enq4tddbb3@bogus>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 15 Mar 2024 10:31:55 -0700
X-Gmail-Original-Message-ID: <CAD=FV=X+d8E67fxk0FiLqp3bpR4ZCEB1+bN21V3Lw_XA5JNQag@mail.gmail.com>
Message-ID: <CAD=FV=X+d8E67fxk0FiLqp3bpR4ZCEB1+bN21V3Lw_XA5JNQag@mail.gmail.com>
Subject: Re: [RESEND v4 3/3] arm64: dts: qcom: sc7280: Add power-domains for
 cpuidle states
To: Sudeep Holla <sudeep.holla@arm.com>
Cc: Maulik Shah <quic_mkshah@quicinc.com>, andersson@kernel.org, ulf.hansson@linaro.org, 
	swboyd@chromium.org, wingers@google.com, daniel.lezcano@linaro.org, 
	rafael@kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, jwerner@chromium.org, 
	quic_lsrao@quicinc.com, quic_rjendra@quicinc.com, devicetree@vger.kernel.org, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Rob Clark <robdclark@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Mar 15, 2024 at 10:26=E2=80=AFAM Sudeep Holla <sudeep.holla@arm.com=
> wrote:
>
> On Fri, Mar 15, 2024 at 10:12:12AM -0700, Doug Anderson wrote:
> > Hi,
> >
> > On Fri, Mar 15, 2024 at 8:24=E2=80=AFAM Sudeep Holla <sudeep.holla@arm.=
com> wrote:
> > >
> > > On Thu, Mar 14, 2024 at 04:20:59PM -0700, Doug Anderson wrote:
> > > > Hi,
> > > >
> > > > On Mon, Jul 3, 2023 at 1:56=E2=80=AFAM Maulik Shah <quic_mkshah@qui=
cinc.com> wrote:
> > > > >
> > > > > Add power-domains for cpuidle states to use psci os-initiated idl=
e states.
> > > > >
> > > > > Cc: devicetree@vger.kernel.org
> > > > > Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>
> > > > > Signed-off-by: Maulik Shah <quic_mkshah@quicinc.com>
> > > > > ---
> > > > >  arch/arm64/boot/dts/qcom/sc7280.dtsi | 98 +++++++++++++++++++++-=
------
> > > > >  1 file changed, 73 insertions(+), 25 deletions(-)
> > > >
> > > > FWIW, I dug up an old sc7280-herobrine board to test some other cha=
nge
> > > > and found it no longer booted. :( I bisected it and this is the cha=
nge
> > > > that breaks it. Specifically, I can make mainline boot with:
> > > >
> > > > git revert --no-edit db5d137e81bc # arm64: dts: qcom: sc7280: Updat=
e
> > > > domain-idle-states for cluster sleep
> > > > git revert --no-edit 7925ca85e956 # arm64: dts: qcom: sc7280: Add
> > > > power-domains for cpuidle states
> > > >
> > >
> > > IIRC, this could be issue with psci firmware. There were some known
> > > issues which were discussed few years back but I am not aware of the
> > > details and if/how it is applicable here.
> > >
> > > Not sure if you are getting any logs during the boot, if you do have
> > > worth look at logs related to PSCI/OSI/Idle/...
> >
> > Given that the new firmware fixes it I'm going to say it's not worth
> > looking into any longer.
> >
>
> But it would be good to know if that is the exact reason, see if it can
> be upgraded, or else we can disable them by default. The bootloader or
> something else can detect the f/w version and enable them so that the
> board with old f/w(if can't be upgraded) can still be used.
>
> Otherwise it is a regression IMO.

I think it only would really matter if the problematic firmware
actually made it out into the real world. In this case the only people
who run into this are developers at Google and Qualcomm who had early
versions of hardware and had old firmware sitting around on them. I
can count the number of folks affected on one hand, and that's even if
one of my fingers gets cut off. All of those folks can just upgrade
their firmware since there is no downside in doing so.

-Doug

