Return-Path: <devicetree+bounces-239631-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA9DC67DE4
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 08:16:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id 7A76429D2C
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 07:16:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0B3D2FBE05;
	Tue, 18 Nov 2025 07:16:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="R4t/2FgM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B204D2D9EDA
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 07:16:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763450210; cv=none; b=JYxB4h06brI/NaSsmHEliA5Oc+okwK4nzU/VEZ7hFHG7unr0cfkN25Xo1DZbCM3x8k6xArn7HIHM8Xnt5jwNT09spDfAaXaDCRvG+cJ3fjn3L3OfUqjVhiBYEOwfIgKA8Ip1UsvyEKdgO0t3cZ6q/BrEUGw2ob9mJ9xrhePdCTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763450210; c=relaxed/simple;
	bh=q0yJJiKn+zBrJd/u9eWfOIOO7+WxsjyO1+iLD/6tDPM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Zud2NiILaiXreRx1HXdnT5e1aobErgINEFW6UoWFizS97Ic0nf/MdgYMySZ/gs96+/TrZ1807HDjNg+M2rYvEjaKcpMWjBSN2Mck0E9rWrnZ8hF+4xfen4cGuxuOYV/dbTy7WxhV7SKOe7jjWi9XrzkLQaMdxPbNUeUh87bf7LM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=R4t/2FgM; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-477619f8ae5so34007215e9.3
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 23:16:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763450207; x=1764055007; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/KTXy4LYc+3eURkyFEtAu5JtRy+tCU0zvqdQk5bTLU0=;
        b=R4t/2FgMTUTR90N9SzH5jIksYlYDJAlh7aH7COqLT8bhG5Goq+TNvCiYHooM/YEXiD
         oUcyIk9e6R7Ux0sIw/xifhYgY5NpDu7Sx+HAz6l+zOqflD+gPhWDJrLvgcLDx8G3e/og
         mcNPzQ6mk0C22bmSFUiPdYXykvhsejic75MeIHWTYc/0A+CN1JeWysaqEDX3JCoLKAV1
         EM/JZAQxaLzbj9w5p9cpCgYmBKwYfF2eVR5B5jF3fZlg/Af+yyZgB/x9abbRt5Xseywy
         9LWnH8FS1vGuTFyUPUrOvBlzMAIX0Zxxhl0eu2zOWHalKOTDAEZkx1gEvLhqJmcXk3OW
         za4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763450207; x=1764055007;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/KTXy4LYc+3eURkyFEtAu5JtRy+tCU0zvqdQk5bTLU0=;
        b=VkwgqGNuIXVYRnXzoTfHYBjOsRciR79Jj+wRv2iciaZ6IrRpbJFUKxAFpcX3XZIu0r
         UsO0ILjawo1VXmS5NMXtfdeFLxNCsE6mfnKjHlnIzpL+tgoqSqx3Ezo2BrKn/bPjNdtb
         epuS2o8Pbl9egErTJzGWQbmnxFgDWO1mhAtoodeZBKox8fg/GENmyhJ6MKJD8C/UKAVH
         GSsuKKEJjvPrk8HofQ0to/5eLH54ArdAaoiGu/uUwhjVKkRYAnWB4PRG1l4KqLQ6fToM
         PYqxw4q3y+OYj7bCnksWcbwT1JVj7SAALH3Ec+K7Orz5dqMHuaXEArZ0mC4gifEU8kst
         2bDg==
X-Forwarded-Encrypted: i=1; AJvYcCVz08Ym6FmZ1zye6tG+tWA+8jw+UOoNDhNlz2a1+9nC1LdRCQdVNC3S0gL9Ohu5dQIK/ELoJD1V16xb@vger.kernel.org
X-Gm-Message-State: AOJu0YzS6vhXoFZre/uC6rJXoogbim/9zsUbDdblYNdnVpVDkgxin83b
	Ts8cYu5DGEkbN2hiRCxvs7RgG8UGar9gFFDjTeGEb623jwnaGf50wL6sfBd7hEFu/g48BDzZBi4
	712Vcczyi7swRmFhMCdGEQe22zyJ6C1I=
X-Gm-Gg: ASbGnctA3GvJpWdbqA52Sj5USDkz3/Kmj/5L3fwgtOITR+6MvYXJjRSTpoSR/6srVzC
	IzToh/q91WPog8DJNeoNUGCgCX3O2KBXM09m00qTfpUtv13SGsSyb7ldju/lepGNuMCU9ctC9rR
	DZrIKhNqtRJYhL+rKe4HvQWgxXgyczcMYTNp8SBh6lVav0pV4vjPAfsyzgAvjErHtkz6wxUbJKA
	Oq1e1eJONdGYsO63gPBVAZcZyc+TPAEUMucGClZu99oxaPpL8vNCh2Geujago5Tna+c8id+L36V
	qR+ZviY=
X-Google-Smtp-Source: AGHT+IE8eWHTzx3ciz5rS3jZUxmLAR3nOWJrIZLlZT32SvvuGpdP8yMosOXzwXWHhwq5spIUyYIVyvJj9viWhF5Bm9Y=
X-Received: by 2002:a05:600c:3587:b0:477:79f8:daa8 with SMTP id
 5b1f17b1804b1-4778fe7e760mr152755075e9.17.1763450206831; Mon, 17 Nov 2025
 23:16:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251022144930.73272-1-clamor95@gmail.com> <20251022144930.73272-3-clamor95@gmail.com>
 <mzapp3ekwj3xdzqjjwkwn2hdfunf75fnd3wwxfsr5nce5guhoa@k2dgiw4sngrd>
In-Reply-To: <mzapp3ekwj3xdzqjjwkwn2hdfunf75fnd3wwxfsr5nce5guhoa@k2dgiw4sngrd>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Tue, 18 Nov 2025 09:16:35 +0200
X-Gm-Features: AWmQ_bkV8027WSudecPgIokkxJAlJtxrZFbDhKQAoi57jFryZZw6HtTknmXqldw
Message-ID: <CAPVz0n0fkMYV-O4xWTBELd6HtKR83wrs+DS1wTVDOXdWuAK2OA@mail.gmail.com>
Subject: Re: [PATCH v5 23/23] staging: media: tegra-video: add CSI support for
 Tegra20 and Tegra30
To: Thierry Reding <thierry.reding@gmail.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Sowjanya Komatineni <skomatineni@nvidia.com>, 
	Luca Ceresoli <luca.ceresoli@bootlin.com>, Prashant Gaikwad <pgaikwad@nvidia.com>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Mikko Perttunen <mperttunen@nvidia.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, =?UTF-8?Q?Jonas_Schw=C3=B6bel?= <jonasschwoebel@yahoo.de>, 
	Dmitry Osipenko <digetx@gmail.com>, Charan Pedumuru <charan.pedumuru@gmail.com>, 
	Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>, Aaron Kling <webgeek1234@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-staging@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=D0=BF=D0=BD, 17 =D0=BB=D0=B8=D1=81=D1=82. 2025=E2=80=AF=D1=80. =D0=BE 13:5=
6 Thierry Reding <thierry.reding@gmail.com> =D0=BF=D0=B8=D1=88=D0=B5:
>
> On Wed, Oct 22, 2025 at 05:49:30PM +0300, Svyatoslav Ryhel wrote:
> > Add support for MIPI CSI device and calibration logic found in Tegra20 =
and
> > Tegra30 SoC.
> >
> > To get CSI operational, an additional syncpoint was allocated to serve =
as
> > the CSI frame counter. Both VIP and CSI use an existing syncpoint for V=
I
> > frame start events. That said, the frame capture function was refactore=
d
> > to reflect the addition of the CSI syncpoint, and the CSI-specific
> > configuration is guarded by the presence of a passed CSI channel struct=
ure
> > pointer.
> >
> > The camera capture setup's configuration was reconsidered: the first tw=
o
> > writes must be done before tegra_channel_set_stream for MIPI calibratio=
n
> > to work properly; the third write was moved to VIP/CSI-specific functio=
ns
> > since it must be source-specific; the function was placed after
> > tegra_channel_set_stream so the initial sequence is preserved and expan=
ded.
> >
> > CSI configuration sequences were added based on downstream 3.1 kernel
> > sources and adjusted to the existing video-tegra framework. Although
> > Tegra20 and Tegra30 have the same set of configurations, they differ by
> > the number of clocks used by CSI.
> >
> > Dropped the software syncpoint counters in favor of reading syncpoints
> > directly and passing the incremented value to the polling function. If =
the
> > syncpoint increase fails, the PP is reset. This change should prevent
> > possible race conditions.
> >
> > MIPI calibration logic was registered in CSI since Tegra20 and Tegra30
> > have no dedicated hardware block for these operations and use CSI. Thes=
e
> > calls are used for both CSI and DSI to work properly, which is why MIPI
> > calibration cannot be contained within CSI. The pads passed to the
> > calibration calls resemble CSI PORT_A (0), CSI PORT_B (1), DSI-A (3) an=
d
> > DSI-B (4).
> >
> > Co-developed-by: Jonas Schw=C3=B6bel <jonasschwoebel@yahoo.de>
> > Signed-off-by: Jonas Schw=C3=B6bel <jonasschwoebel@yahoo.de>
> > Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> > ---
> >  drivers/staging/media/tegra-video/csi.c     |  23 +
> >  drivers/staging/media/tegra-video/csi.h     |   4 +
> >  drivers/staging/media/tegra-video/tegra20.c | 620 ++++++++++++++++++--
> >  drivers/staging/media/tegra-video/vi.h      |   2 -
> >  drivers/staging/media/tegra-video/video.c   |   6 +
> >  5 files changed, 608 insertions(+), 47 deletions(-)
>
> Sorry, didn't realize that this was supposed to be part of the earlier
> series that contains the opsification since it shows up as separate
> patch series. Admittedly the numbering should've given it away... Thanks
> Mikko for pointing that out.
>
> Anyway, most of my objections remain. You can implement this here just
> the same even without most of the extra churn in the prior patch. No
> need for moving things to a different header, just keep adding the new
> ops stuff to the existing one, which all drivers that need the
> calibration functionality already include anyway (including this). Also

So you propose to bloat host1x header with more mipi calibration stuff
just because someone placed those functions in there, instead of
creating a dedicated mipi calibration header. Even though mipi
calibration has NOTING to do with host1x, in case of Tegra114+ it is a
dedicated hw block not connected with host1x at all, and in
Tegra20/Tegra30 it is integrated part of CSI and not a direct hw block
on host1x. Having a dedicated header for mipi calibration seems more
logical then continue bloating host1x with unrelated stuff decreasing
its maintainability.

> no need to split out the SoC specific bits from the mipi.c file since,
> like I said, it's not going to grow anymore and can just remain as it
> is.
>

I proposed in that patch to separate mipi calibration framework which
is used by all Tegra SoC generations from SoC specific parts used by
Tegra114+ if form of dedicated hw block and Tegra20/Tegra30 as a part
of CSI. This enhances maintainability and improves transparency, while
you propose to squash everything into a single file making it a
maintainers hell.

> Thierry

