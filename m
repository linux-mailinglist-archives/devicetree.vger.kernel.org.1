Return-Path: <devicetree+bounces-67325-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F5268C785A
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 16:18:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E81FB2859E5
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 14:18:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85967149C6F;
	Thu, 16 May 2024 14:18:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="S04oFnri"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com [209.85.166.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF4EE14884E
	for <devicetree@vger.kernel.org>; Thu, 16 May 2024 14:18:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715869090; cv=none; b=EfR14TTNWarH0amg5wTtYaVmw69vNWteL4EtkVpM6jR2hqVuEHyfm+2mYT8Y+o6XOeR0smd+jytI+4lyXF0qm+O+Bcq4+VtrMIdyx1gCmsZCwyN/T3V7cSx8KRt9avrnRUEoFHm5oYJQD7fUktWwGp/gr6YBNCheHtvwn3jcxyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715869090; c=relaxed/simple;
	bh=N2VytWc3Egh8GybUPHjqnBmbFBcIGj8lqmYUdttBX0c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Tns8LK3Wm2Q77FLDcGFSAij0mQ7BxFClEHbY4ugQqQdsN1yLKgEw0iIbMSFu2HxjjWkAQslw2IGXjQmdnWlfdbr5kQFltI8gqoobRfUn0SR5dSXvDeOpQ0BKcxC9lj0hTCH59HfszkOyL3g5HbPXrDCnyH31Br9Hyw8q4dMq7HA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=S04oFnri; arc=none smtp.client-ip=209.85.166.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-io1-f51.google.com with SMTP id ca18e2360f4ac-7e21dfbc310so6891239f.1
        for <devicetree@vger.kernel.org>; Thu, 16 May 2024 07:18:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1715869087; x=1716473887; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2EFjHqt7hZKMcQ8pOSR62lBmFQVRSCJX/1oVvs7X3b4=;
        b=S04oFnrijRjuFvuyTP3gUcjrcUCr+DEYWoTmkT9XRimQJu9aBVfTFfam+YvJ+0uwuy
         bxul3/yd1vaw0y9GfnMgKR4ToDpX21vNODiDjsdlV7uYz8fq6EDzY7V1oOBkPBAEe9Vo
         AokLDbAJlTC3vYv12SuZ1y/jKcGZ9FgZvAXeA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715869087; x=1716473887;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2EFjHqt7hZKMcQ8pOSR62lBmFQVRSCJX/1oVvs7X3b4=;
        b=JkkPxlRmbVB9agnlfDmKeVfdRQmZNUOMOaLEtob9NFN9eURRyholfkOCwW/O+RlVUI
         sB2iJs4iIbKx7L4QyHfWpR1RMd1X/ujaksmmbeOH7JQXYo5hmndP1oUc6Yb6dz1wm6eZ
         1om/2Ui0yvTpW7GHIVdCCm2t4BD+Fpv3uRx5JktziebTR1fUEdqrFsgFlH+fT1t2R/9m
         49BkAGUQT9t0GLt+k6/s7VM2DNrjJVKmTRs8EFaTkZlUidIK2nmssY7p1OIpAz+srW6g
         VrCI6vvGprhzUrBKkWyFYQB3ddqxyT3rQJtxf9Z//3RClVFs6lhGesjnv+nMg8Ue/wNF
         Jrdw==
X-Forwarded-Encrypted: i=1; AJvYcCUh5qiS1jVEmbS96b9jQCoycqY+bxTjbZDY83r7NlO4eI0uAMZ2LQ5ZqNTbGCOXtzCMuEKA70NMPYb2cVTPkL10ONF8cBbxbRgk8g==
X-Gm-Message-State: AOJu0YzYCKF2LpOaKs42LCO5U1EzpSFkBAZqwjeSebFI48bdpQg6/kAZ
	OiIk5/qacU1NlD/4P/Ce0C5bmFpFg+9QZ8fnvXGuwhgQrzzjaJwzEA8E5CszkJd3n0k8zoN2SjU
	=
X-Google-Smtp-Source: AGHT+IHpeOay1fvVVgc67nlyIvbM/FwKfw1f+nxWSbKTikWE/RX/zUkhWZKCJdYsKmdVfE+FApssTw==
X-Received: by 2002:a92:ca46:0:b0:36c:3d57:d680 with SMTP id e9e14a558f8ab-36cc14aa2c9mr241969685ab.15.1715869087552;
        Thu, 16 May 2024 07:18:07 -0700 (PDT)
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com. [209.85.166.171])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-36cb9d3f58csm38374265ab.16.2024.05.16.07.18.07
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 May 2024 07:18:07 -0700 (PDT)
Received: by mail-il1-f171.google.com with SMTP id e9e14a558f8ab-36db330403fso42855ab.0
        for <devicetree@vger.kernel.org>; Thu, 16 May 2024 07:18:07 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCW25klv1KqJMSt4X0W7hxsQ2CVoW/+gjNpjELTmumE8TthThh1Umm0YjuN1GaojYhm0rsMz6xnR+f9If+HcQFLWePCwmVG/6XWOZQ==
X-Received: by 2002:a05:622a:a14:b0:43b:6b6:8cad with SMTP id
 d75a77b69052e-43e094b2023mr16912951cf.10.1715868603433; Thu, 16 May 2024
 07:10:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240515014643.2715010-1-yangcong5@huaqin.corp-partner.google.com>
 <20240515014643.2715010-4-yangcong5@huaqin.corp-partner.google.com>
 <0fcdb0ac-2e4a-44b2-a5d6-a67a1d747df8@linaro.org> <CAD=FV=XkBkQUN-93eQDKZcw_66uSeNBBhbiq2hRLcFN+Ck71RQ@mail.gmail.com>
 <CAHwB_N+foZpCjqUy0dJdS2wBbUjHVRQQP0p7S_eTG1Yrh0bgPw@mail.gmail.com>
 <7b488473-7fd1-4f4f-8c32-72e84420b478@linaro.org> <CAD=FV=W6mkTwAp6qMVYbPFDYBroAW19-qgvct1dw11ksaW3cYw@mail.gmail.com>
In-Reply-To: <CAD=FV=W6mkTwAp6qMVYbPFDYBroAW19-qgvct1dw11ksaW3cYw@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 16 May 2024 07:09:45 -0700
X-Gmail-Original-Message-ID: <CAD=FV=W0Gq8mkdbF_94=H=G9k6UwjUa43eaxCjU-vZwMxSg+8g@mail.gmail.com>
Message-ID: <CAD=FV=W0Gq8mkdbF_94=H=G9k6UwjUa43eaxCjU-vZwMxSg+8g@mail.gmail.com>
Subject: Re: [v7 3/7] arm64: defconfig: Enable HIMAX_HX83102 panel
To: neil.armstrong@linaro.org, Arnd Bergmann <arnd@arndb.de>
Cc: cong yang <yangcong5@huaqin.corp-partner.google.com>, sam@ravnborg.org, 
	daniel@ffwll.ch, linus.walleij@linaro.org, krzysztof.kozlowski+dt@linaro.org, 
	robh+dt@kernel.org, conor+dt@kernel.org, airlied@gmail.com, 
	dmitry.baryshkov@linaro.org, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	xuxinxiong@huaqin.corp-partner.google.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, May 16, 2024 at 6:43=E2=80=AFAM Doug Anderson <dianders@chromium.or=
g> wrote:
>
> Hi,
>
> On Wed, May 15, 2024 at 11:55=E2=80=AFPM <neil.armstrong@linaro.org> wrot=
e:
> >
> > On 16/05/2024 08:43, cong yang wrote:
> > > Hi:
> > >
> > > If it is determined that a separately patch needs to be sent, then I
> > > will remove this patch in V8 series?
> > >
> > > Doug Anderson <dianders@chromium.org> =E4=BA=8E2024=E5=B9=B45=E6=9C=
=8816=E6=97=A5=E5=91=A8=E5=9B=9B 05:28=E5=86=99=E9=81=93=EF=BC=9A
> > >
> > >>
> > >> Hi,
> > >>
> > >> On Wed, May 15, 2024 at 2:16=E2=80=AFPM <neil.armstrong@linaro.org> =
wrote:
> > >>>
> > >>> Hi,
> > >>>
> > >>> On 15/05/2024 03:46, Cong Yang wrote:
> > >>>> DRM_PANEL_HIMAX_HX83102 is being split out from DRM_PANEL_BOE_TV10=
1WUM_NL6.
> > >>>> Since the arm64 defconfig had the BOE panel driver enabled, let's =
also
> > >>>> enable the himax driver.
> > >>>>
> > >>>> Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com=
>
> > >>>> Reviewed-by: Douglas Anderson <dianders@chromium.org>
> > >>>> ---
> > >>>>    arch/arm64/configs/defconfig | 1 +
> > >>>>    1 file changed, 1 insertion(+)
> > >>>>
> > >>>> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/def=
config
> > >>>> index 2c30d617e180..687c86ddaece 100644
> > >>>> --- a/arch/arm64/configs/defconfig
> > >>>> +++ b/arch/arm64/configs/defconfig
> > >>>> @@ -864,6 +864,7 @@ CONFIG_DRM_PANEL_BOE_TV101WUM_NL6=3Dm
> > >>>>    CONFIG_DRM_PANEL_LVDS=3Dm
> > >>>>    CONFIG_DRM_PANEL_SIMPLE=3Dm
> > >>>>    CONFIG_DRM_PANEL_EDP=3Dm
> > >>>> +CONFIG_DRM_PANEL_HIMAX_HX83102=3Dm
> > >>>>    CONFIG_DRM_PANEL_ILITEK_ILI9882T=3Dm
> > >>>>    CONFIG_DRM_PANEL_MANTIX_MLAF057WE51=3Dm
> > >>>>    CONFIG_DRM_PANEL_RAYDIUM_RM67191=3Dm
> > >>>
> > >>> You should probably sent this one separately since only an ARM SoC =
maintainer
> > >>> can apply this, probably via the qcom tree.
> > >>
> > >> Really? I always kinda figured that this was a bit like MAINTAINERS
> > >> where it can come through a bunch of different trees. Certainly I've
> > >> landed changes to it before through the drm-misc tree. If that was
> > >> wrong then I'll certainly stop doing it, of course.
> >
> > Yeah we usually don't mess with arch specific defconfig from drm tree
>
> In general I agree that makes sense. In this case, though, the new
> config symbol was introduced in the previous patch and split off an
> existing symbol. Updating "all" of the configs (AKA just arm64) that
> had the old symbol to also have the new symbol seems like the nice
> thing to do and it feels like it makes sense to land in the same tree
> that did the "split" just to cause the least confusion to anyone
> affected.
>
> In any case, if it's going to land in some other tree then I guess the
> question is whether it needs to wait a few revisions to land there or
> if it should land right away. Nobody would get a compile error if it
> landed in a different tree right away since unknown config symbols are
> silently ignored, but it feels a little weird to me.
>
> ...of course, I'm also OK just dropping the config patch. I personally
> don't use the upstream "defconfig". It just seemed courteous to update
> it for those who do.

Hmmm, probably should have put Arnd on this thread. Added now in case
he has any opinions. I also did manage to find when this last came up
where I was involved. At that time Will Deacon (who get_maintainer.pl
reports is the official maintainer of this file) said [1]:

> But yes, although there are a few things I really care about
> in defconfig (e.g. things like page size!), generally speaking we don't
> need to Ack everything that changes in there.

[1] https://lore.kernel.org/linux-arm-kernel/20201112004130.17290-1-diander=
s@chromium.org/T/

