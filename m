Return-Path: <devicetree+bounces-240450-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 942CDC7133E
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 22:56:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5F2CD4E211A
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 21:56:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94AE63081D4;
	Wed, 19 Nov 2025 21:56:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WxfU5OYO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FAF6372AA5
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 21:56:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763589407; cv=none; b=pXYE8jaIIPPkJrAodOFJnn0yI0whEJzJilyRGdz1qskMgjGog5pDjPzj+HFwIrqLvbTzPzKunECFYJI6Sc0IrrBHqW1eNJo4okmnwxclxLv2/tGYCcPRcz7/ZhdQ8dspHwTYS5SMJPnGgwwht8XPkfJ0IyeCmOpNoKeaYyPtszU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763589407; c=relaxed/simple;
	bh=Iqlxq4GLND3K9ye7P0GyW42Oo76McoBw2YQlNfxTONo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hJVr1hefbVtkID4vBtlNRMFkR0hKRAM41+5oCSztkEHJnb3Cyi5IqLFsAAPHO32ALdb0aYMQjvxPp3f0tNESyNztfnERWOlC/x0PS/BViqfoBrXE3c5ttfbiVp0FyIp4lrGDJUSxKqLn0JXVf9szA8xn5IOy0jVWai2PaDz1Plg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WxfU5OYO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A2D5C19421
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 21:56:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763589407;
	bh=Iqlxq4GLND3K9ye7P0GyW42Oo76McoBw2YQlNfxTONo=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=WxfU5OYO9Q3RBqQ2EXbAaENgvkMfSqe36o5BkLOpNArKq45XVYBYf9iEh5V63r/ba
	 eDmb1jl1BhEsTOr1XFFCls2m0SMMMe9MT55E52NQZA+UBLUtRJnbiSvya6ACJUkR+q
	 OgioWjT87Z76w7RL4v2q440/eHVIc+aVwnxSWP/oSVUQMUAE31bEZ7+4gzpcamBT64
	 qmg19F8udI3IxPz190JvpRllPe/YXRB0XWyhRCcaJgpopXJi9BvnL1rOAyyelCsTJk
	 uiVM5GXXMsiXo+cUAaU4zulMxBAGosQS01R5w4L/fPvOeidVTEyh2Lft48M4Y4o3nO
	 JlYc7LcbOSklA==
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b7633027cb2so50053366b.1
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 13:56:47 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUU3DTalEI8TXCjMmGYU9x6u3aq8zentg+uS8G4L95MWUBO0Z05vx3/UDPHio+giuB3lDMQWJcpA2P3@vger.kernel.org
X-Gm-Message-State: AOJu0YyoO1xVNsFisscE7/FRjO7Jb8k3K6dppK+B+LjwUa0mtFlxGOI7
	v9LmmNXxl9XFSGehPl8Gxqi3PvZhS3mCUicBERcSjxKM2pL2M4DQyfmoO2xQbD+TfXw2yop3Mql
	rQ7U8B5Zkt5g6NeWiZOqtCt0sPpnx6Q==
X-Google-Smtp-Source: AGHT+IG84EJWxanbiYx3xNWly0j0HLza1i6ldgaRhiCAN5QoYsLc3V6uABYjj4th1Y+IGbn1Abrg9uwT+QyU+6qhTsc=
X-Received: by 2002:a17:906:6a0d:b0:b72:d9f1:75e5 with SMTP id
 a640c23a62f3a-b76554b825fmr65344666b.20.1763589405712; Wed, 19 Nov 2025
 13:56:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251117211316.725960-1-robh@kernel.org> <002fad46-adb5-402e-8eb0-e4c71b862674@ti.com>
In-Reply-To: <002fad46-adb5-402e-8eb0-e4c71b862674@ti.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 19 Nov 2025 15:56:33 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJNOeKViuUwpLf-7RzBDB-EMm35MumJsGZ0deX1cLx3CQ@mail.gmail.com>
X-Gm-Features: AWmQ_bkj8Gwj1YjO7fbmvN2gv4HnRREDyfmcz-Q4kQMeMDDh9iPZgJePyXNl4vM
Message-ID: <CAL_JsqJNOeKViuUwpLf-7RzBDB-EMm35MumJsGZ0deX1cLx3CQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: ti: Add missing applied DT overlay targets
To: Vignesh Raghavendra <vigneshr@ti.com>
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wadim Egorov <w.egorov@phytec.de>, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 19, 2025 at 8:47=E2=80=AFAM Vignesh Raghavendra <vigneshr@ti.co=
m> wrote:
>
> + wadim who posted something similar:
>
> Hi Rob,
>
> On 18/11/25 02:43, Rob Herring (Arm) wrote:
> > It's a requirement that DT overlays be applied at build time in order t=
o
> > validate them as overlays are not validated on their own.
> >
> > Add the missing TI overlays. Some of the TI overlays have the first par=
t
> > needed (a "*-dtbs" variable), but not the second part adding the target=
 to
> > dtb-y/dtb- variable.
> >
> > Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
>
> Look like there is more needed change needed.
>
> https://lore.kernel.org/all/20251119123216.1481420-1-w.egorov@phytec.de/
>
> Could one of you post the superset patch?

I'll leave it to Wadim.

>
> I have already sent out the PR for v6.19rc1 for TI tree? Is [1] plan to
> be merged for v6.19 cycle, if so I will plan for a follow up PR with
> newer version of this patch.
>
> > ---
> > This will soon be a warning[1].
> >
> > [1] https://lore.kernel.org/all/20251114222759.4181152-1-robh@kernel.or=
g/
>
> BTW, with above patch, make dtbs seems to fail w/o CONFIG_OF_ALL_DTBS=3Dy=
.
> Is that expected?

Yes. What's in linux-next now is fixed.

Rob

