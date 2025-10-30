Return-Path: <devicetree+bounces-233029-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A483BC1E85B
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 07:13:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 299DB34A87E
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 06:13:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62E15322C88;
	Thu, 30 Oct 2025 06:13:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lROL9xVX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f50.google.com (mail-yx1-f50.google.com [74.125.224.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C44D131A049
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 06:13:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761804815; cv=none; b=ijJTv3W16cQh+I/DMcOtC3KfcNhV56SjpoTl30EpM1tJzZS8WNTG4X9aSzPDXTqA2Vn1SSEHs7I1melD8XzzspJPrhxY2jdbZiAxIKG6v2QVY43pkVLD8gxOVu/abN5Sv3AvTq3ErTOLEE+a9pTSRT3rLjix9siILy7zYj1uuUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761804815; c=relaxed/simple;
	bh=V4iSIcqHCoPaV5CCam1+eu0ZX2jdv7zYWXuwi/jze4o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PRSga8hLGqe7JaaxwjIYz0rJYKnyo0tH5rqi+AjU63Y+YDGaNTDV0wDmQjUZlA/CVolSuPYHy38oquQJ1UKHfrw7yzWXB2N7azE0hmHT6E6qa61CDR5hS0kwYET5dIMhCfuMp3zYhwTL7s3bF47YCoTY1vvd2e66MLUApydujVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lROL9xVX; arc=none smtp.client-ip=74.125.224.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f50.google.com with SMTP id 956f58d0204a3-63d97bcb898so1282165d50.0
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 23:13:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761804813; x=1762409613; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3rF4eMVmZqF08Uiy4ZG4pr/6crlsmzGRDhN+59lsH5Y=;
        b=lROL9xVXUqgSanMc281yfilk8GgVcrY5xOesO5jVGf3r4ubkAPHCXAxWhaoGuccOKV
         wl8dXsXpqraWKIjs1uEzi7lKvtH3XC5QHxXcsTGkN493jtu1wAcyXqbQPL4qSJAGtVV+
         cqMU37szn0hx+K0HXLnKyjbTM4PpmSh5Oc/a9Q5kXk678hLpLO/OBeAEQwWn2PamUeMX
         28UM0w5JW8SftZWbrSHClxiITQ2XZ/R7AKJfgEgCaOvgNQ4opRIz3bA/pXTmjiCL6gzI
         vYGlq+0EapwhEbEdB+t0J85iSu7ntmROf3tdY+/9UhPRVCNjIowuMVdwg1iDQfIbTOHO
         hZag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761804813; x=1762409613;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3rF4eMVmZqF08Uiy4ZG4pr/6crlsmzGRDhN+59lsH5Y=;
        b=FxRwNn+xUpFGQtg1Mz8Anbadg6pNW1j/MNplHBtJnavDgq0oVfXWjDf/B6XeA5J6O/
         iwXm7gwU8w6vHeYs7yHEASH3fLyLd/euDMhaigLl2hkb0oQXPYeYX7uJl+V86J/wB8/x
         AATgXEEXPBoWbtuG+YtQMwqp3HbbBBBhfu4SoY8ehXVejes6azreruRcon9dD66ymaRl
         DXiIGR8RU4FDnAc4ZWwRbsXAQqnqKYT/8mP3wZcHwafU7bDnzCZ1nMPot+2qgz6LuYlG
         IK3BN4f6k+tmaKoZtYedjnmG0G57AcHsS9X2s3sDM7ZUJlBpIFX2DqJGTD9gFsZhvbEI
         qKVA==
X-Forwarded-Encrypted: i=1; AJvYcCXooZ5UiYjvRo3kghnEI8CHV718NMG4WRbvj4EdjGjGdw8UB6osszH0HjJt6Bp3DXXd9KPHZG2coU2E@vger.kernel.org
X-Gm-Message-State: AOJu0YwncmE29xTTWDw7MIeKToGSdHt6yyfSpOSZlTMWyCHsfQ91jlgB
	E29ycQOGL9Gk90td6U6Pqd4jhRPWpuSuwc+OMFmPpm46r7PTc6J9RuFFJEFGcmWnWDXe6iIg4Jn
	Cb4REJz+Tfq2OI7GR6EocCZUahoAQIUs=
X-Gm-Gg: ASbGnctI+0h1hwkLFMuVYOJO7XmX3LRGnuCaaHbMjptVj8q7TsEiuJoZDCtSNZCofNP
	+5tc6tFPVVgVM3Plf6GKYM0/Y4xhSProRN+7bvazobik6kqOVpDyNQCJtGuINGw+rLpXIMegJZL
	xgDXCVugbm4hDGJTKPFAFMz30JYbHP6Md3WAjldJr46wdErromQ83l6TjNM/b+OrC/w5SvpFY0t
	K6b21IUycTOxaPes4k0a7H7hSVvSiF5FlqqdDBHdPbMVBgy/otpswMz/XGKIp2Zse6qoQ==
X-Google-Smtp-Source: AGHT+IGNukfCrjaksH3Umzb+6A3Q6R4gH1hMz3jAmphM+O0AwBZJ/TjCDOWOuiqRoFX9uHUrvtIVlMk1omsejKcgRqU=
X-Received: by 2002:a05:690e:14c6:b0:63e:2b9e:1462 with SMTP id
 956f58d0204a3-63f829a66admr1708439d50.22.1761804812638; Wed, 29 Oct 2025
 23:13:32 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251029071435.88-1-kernel@airkyi.com> <20251029071435.88-11-kernel@airkyi.com>
 <CAL411-o6mF71oBeRsJ-OPZNbLegn4iJ_ELN9xVdppTM3ssUPOw@mail.gmail.com>
 <cc8b583a-77ec-4a7f-97cc-2d148f7fee9f@rock-chips.com> <e0c5bda3-7428-49e0-9955-fa23f1e4f35d@rock-chips.com>
 <CAL411-oXfvp-iqN+uRmFHijdmW=1omKwozKOoZ2shxukMHmwPg@mail.gmail.com>
 <C6253E8254C80B0F+839b71d0-1bd8-40b7-9515-7ce4a1eb8673@airkyi.com>
 <CAL411-pULVu4AYybW9oW7kmr4M_kJhdytgBjLPb4y6w_2dj+0w@mail.gmail.com> <7853bbf0-34e5-4880-a2f4-2d73f25cd5e6@rock-chips.com>
In-Reply-To: <7853bbf0-34e5-4880-a2f4-2d73f25cd5e6@rock-chips.com>
From: Peter Chen <hzpeterchen@gmail.com>
Date: Thu, 30 Oct 2025 14:13:21 +0800
X-Gm-Features: AWmQ_bnKM651Al7hBqe9TPet6QHNgDQAymVR1zTv3jbaP-L2YDnRDbwZ2qTLHzg
Message-ID: <CAL411-rFK0o_cxBO_yJFHWurGFKxZGxw6=kpqxRipMetJskTaQ@mail.gmail.com>
Subject: Re: [PATCH v8 10/10] arm64: dts: rockchip: rk3399-evb-ind: Add
 support for DisplayPort
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: Chaoyi Chen <kernel@airkyi.com>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>, 
	Andy Yan <andy.yan@rock-chips.com>, Yubing Zhang <yubing.zhang@rock-chips.com>, 
	Frank Wang <frank.wang@rock-chips.com>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Amit Sunil Dhamne <amitsd@google.com>, Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>, 
	Diederik de Haas <didi.debian@cknow.org>, Peter Robinson <pbrobinson@gmail.com>, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 30, 2025 at 11:14=E2=80=AFAM Chaoyi Chen <chaoyi.chen@rock-chip=
s.com> wrote:
>
> On 10/30/2025 10:50 AM, Peter Chen wrote:
>
> >>> Okay.  My question is basic: USB2 PHY supplies DP/DM, and the DP/DM i=
s
> >>> short for Type-C connector,
> >>> and no control is needed for Type-C application.
> >>> Why is there a remote-endpoint connection between USB2 PHY and Type-C=
 connector?
> >>   From the perspective of Type-C, this should not be added.  Is the ap=
proach in v2 correct [0] ?
> >>
> > Have you tried debugging based on upstream code?
>
> Yes, I have tried both the v2 and v8 approaches, and both can work.
>
>
> > v2 is correct, but the dts needs to improve.
> > - There is a remote-endpoint connection for USB role switch between
> > Type-C connector
> > device and USB controller device
> > - There is a remote-endpoint connection for orientation and lane config=
uration
> > between Type-C connector device and USB/DP PHY device.
>
> In v8 patch5, we implemented typec_mux and typec_switch in the USB/DP PHY=
.
>
> I think the current remote-endpoint connections are all child node of the=
 USB/DP PHY. That is:
>
>
> &tcphy0_dp {
>      mode-switch;
>      ...
> };
>
>
> &tcphy0_usb3 {
>      orientation-switch;
>      ...
> };
>
>
> Does this still need to be improved? Thank you.
>

Hi Chaoyi,

There are two questions I have still not seen the answer to:
- Why USB2 PHY is related to your Type-C patch?
- How does the USB role switch event notify the USB controller driver, eg d=
wc3?

Peter
>
> >
> > Peter
> >
> >> [0]: https://lore.kernel.org/all/20250715112456.101-6-kernel@airkyi.co=
m/
> >>
> >> Or is the following approach correct?
> >>
> >>
> >> port@0 {
> >>       reg =3D <0>;
> >>
> >>       usbc_hs: endpoint {
> >>           remote-endpoint =3D <&tcphy0>;
> >>       };
> >> };
> >>
> >> port@1 {
> >>       reg =3D <1>;
> >>
> >>       usbc_ss: endpoint {
> >>           remote-endpoint =3D <&tcphy0>;
> >>       };
> >> };
> >>
> >> port@2 {
> >>       reg =3D <2>;
> >>
> >>       usbc_dp: endpoint {
> >>           remote-endpoint =3D <&tcphy0_typec_dp>;
> >>       };
> >> };
> >>
> >>
> >>>>>>> +                               port@1 {
> >>>>>>> +                                       reg =3D <1>;
> >>>>>>> +
> >>>>>>> +                                       usbc_ss: endpoint {
> >>>>>>> + remote-endpoint =3D <&tcphy0_typec_ss>;
> >>>>>>> +                                       };
> >>>>>>> +                               };
> >>>>>>> +
> >>>>>>> +                               port@2 {
> >>>>>>> +                                       reg =3D <2>;
> >>>>>>> +
> >>>>>>> +                                       usbc_dp: endpoint {
> >>>>>>> + remote-endpoint =3D <&tcphy0_typec_dp>;
> >>>>>>> +                                       };
> >>>>>>> +                               };
> >>>>>>> +                       };
> >>>>>>> +               };
> >>>>>>> +       };
> >>>>>>> +};
> >>>>>>> +
> >>>>>> .....
> >>>>>>>     &u2phy0 {
> >>>>>>>            status =3D "okay";
> >>>>>>> +
> >>>>>>> +       port {
> >>>>>>> +               u2phy0_typec_hs: endpoint {
> >>>>>>> +                       remote-endpoint =3D <&usbc_hs>;
> >>>>>>> +               };
> >>>>>>> +       };
> >>>>>>>     };
> >>>>>>>
> >>>>>> There is no switch and mux, how to co-work with Type-C?
> >>>>> I checked the phy-rockchip-inno-usb2.c but did not find any switch =
or mux. Does this mean that we need to implement them? Thank you.
> >>>> Wait a minute, actually we have multiple hardware interfaces, one of=
 which is Type-C, eventually connected to USBDPPHY, and the other is micro-=
usb connected to U2PHY.
> >>> I assume the Micro-USB connector does not use Type-C/PD IC, is it
> >>> right? Does it relate to this patch?
> >>>
> >>> Best regards,
> >>> Peter
> >>>
> >
> --
> Best,
> Chaoyi
>

