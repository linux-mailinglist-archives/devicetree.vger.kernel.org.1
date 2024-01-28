Return-Path: <devicetree+bounces-35948-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B4383F61E
	for <lists+devicetree@lfdr.de>; Sun, 28 Jan 2024 16:29:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A081B1F222E7
	for <lists+devicetree@lfdr.de>; Sun, 28 Jan 2024 15:29:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BA1B23769;
	Sun, 28 Jan 2024 15:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TNkJwo/2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05E3A288DF
	for <devicetree@vger.kernel.org>; Sun, 28 Jan 2024 15:29:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706455763; cv=none; b=DkjNX+BwdO0neZrP6L2mpoEL3/NI/swKFHOowzyBf/HjaHesd4bXB/yegbeAfeaixsbS96XTXdH51V9ho5qV+SRgbSNNHg8DJAiiLMywCK3H83IMemCt9Tj3W+paPSr1OqfjRHM8EJzm1qAhKuAKHxxwIvWlcAn+mmHx0cDNnso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706455763; c=relaxed/simple;
	bh=bnUHsSdbFjOQ/1DZUvKVKw2upQVykwYkfceqJ/PJpBY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=I4CqUDfQlZuT4el0lX+l3xUW1l3rcJ3XSoqwCxLYsO66pZJaLiOpmC98lQM8l8IgCZFQB8ycvfNuA+Yw5WqGF9d2fGaiaHC0dRaQEYWXSwhG7o/umrOiQkNz6987e3I9wNWtfDEPYe34Nl7fixd+usw+eD+nIG9PIMlcKMRc+78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TNkJwo/2; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-6ddce722576so901814b3a.1
        for <devicetree@vger.kernel.org>; Sun, 28 Jan 2024 07:29:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706455761; x=1707060561; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h2V/0dCIefEKKW7/a7gcAuJYCSa50UGFdK2xIPchK28=;
        b=TNkJwo/22p6VEmBMtXp44/OfA2UCeyn54DfSZPPIyR+ovBkK65pKZHRsEd6Zup6dve
         6fbCOZnjM2AQzXaR9yYr/4QXSYsEhtENbe8BJCIlEH3rPX5JqNoPUQhGJ+GxpIzcozgE
         3eqpdYb+runFHc1FvML8LIWQjYyLDO2CyL9OkJ808Kfzd7lHUEBQrwpmFtblNGGJPAFt
         sb0bDkrXcbymyEExIYEXx2wbZUXREhTcV2l/1CD+99jJY6vvFS61ki9iNCkr1QsNjwnx
         wCUCA3hK4Sufr7S2p5btm9Bt+dxfkjnyMDugezVOrtlFXW8o+5KI3pS14g8eVNLLMMEy
         6s8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706455761; x=1707060561;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h2V/0dCIefEKKW7/a7gcAuJYCSa50UGFdK2xIPchK28=;
        b=stqlKMAOJDYLyFflzSIWA/8kcbBx/HGHSG5/GUolOqZYO26BofZQwzXqVN2CuFQTXW
         XsvKemrpUrl1MV9AtWjEVfwhymg/+Pc5zfxzpcCS9uHupaEgOJrDVJdE+g0s0YZap2XZ
         FZis6FvpvpR0Vf/uYlabTNbbKBAvrgGr+dfj/6TtI5k9iDK47ka3EP/RNfAN0yfNuoWB
         gmWVcMyxwwIDv/BNHzxud8+mnlZgvv/VhzWFC+9uAc65baecwfDfuTopQkWZNW2Xo5n1
         AZzQGHYCIUCqbq6SKxzyZp0rfjJguMt57guHpxSz3X3L1NPam7sYFdiNHytaiAFKMygI
         wUNw==
X-Gm-Message-State: AOJu0Yy0BLMrqz1Rlhf/rWdxkt5nhIy19Ebab0EqItt8jk2fT13ISsfc
	ILu2p0LF/bqm9TDe43RPoU0fElwt+mPCVb8fGQ3gfiLWOVZD79bWyiO8+bBVpV2dhZ0EjlvKh0F
	noR5nPduyq5aEEUzw2fvGxq1wVfk=
X-Google-Smtp-Source: AGHT+IE/S8nl/+88TGU/a8mCQbnxjPYbc1DSAzdK3mNWN2QY6ccpsxxXVr5Tq64sC5KdK1t3lKPLmjS3QvxEE8CwNq8=
X-Received: by 2002:a05:6a00:6807:b0:6db:c6b1:aa5c with SMTP id
 hq7-20020a056a00680700b006dbc6b1aa5cmr1021670pfb.34.1706455761111; Sun, 28
 Jan 2024 07:29:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230920171009.3193296-1-l.stach@pengutronix.de>
 <20231218023655.GG5290@pendragon.ideasonboard.com> <20231218094849.4aa15a97@booty>
 <12346986.O9o76ZdvQC@steina-w>
In-Reply-To: <12346986.O9o76ZdvQC@steina-w>
From: Adam Ford <aford173@gmail.com>
Date: Sun, 28 Jan 2024 09:29:09 -0600
Message-ID: <CAHCN7xLwyUtjizGBJ8B790o9eh4537z65KbKgAKpcD95CoAcFg@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] drm/bridge: imx: add driver for HDMI TX Parallel
 Video Interface
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, linux-arm-kernel@lists.infradead.org, 
	Fabio Estevam <festevam@gmail.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Jonas Karlman <jonas@kwiboo.se>, Liu Ying <victor.liu@nxp.com>, Sandor Yu <sandor.yu@nxp.com>, 
	dri-devel@lists.freedesktop.org, NXP Linux Team <linux-imx@nxp.com>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, patchwork-lst@pengutronix.de, 
	devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, 
	Frieder Schrempf <frieder.schrempf@kontron.de>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Luca Ceresoli <luca.ceresoli@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 18, 2023 at 2:59=E2=80=AFAM Alexander Stein
<alexander.stein@ew.tq-group.com> wrote:
>
> Hi everybody,
>
> Am Montag, 18. Dezember 2023, 09:48:49 CET schrieb Luca Ceresoli:
> > Hi,
> >
> > On Mon, 18 Dec 2023 04:36:55 +0200
> >
> > Laurent Pinchart <laurent.pinchart@ideasonboard.com> wrote:
> > > On Fri, Dec 15, 2023 at 05:09:41PM -0300, Fabio Estevam wrote:
> > > > On Fri, Dec 15, 2023 at 4:01=E2=80=AFPM Adam Ford <aford173@gmail.c=
om> wrote:
> > > > > Thanks for the list.  I was able to successfully build the stable=
 6.6
> > > > > branch with those patches applied and I have the HDMI working.
> > > > > Unfortunately, I get build errors on the linux-next, so it's goin=
g to
> > > > > take me a little time to sort through all of this.
> > > >
> > > > If you need help to figure this problem out, please let me know.
> > > >
> > > > I haven't tried it against linux-next.
> > > >
> > > > > I am thinking that it would be better to consolidate all these
> > > > > together into one series instead of piecemealing it.  However, th=
ere
> > > > > are some items that can be submitted right away without significa=
ntly
> > > > > reworking them against linux-next.  Do people have a preference?
> > > >
> > > > I think it makes sense to re-submit the "easy ones" right away.
> > >
> > > Agreed. The more we can merge quickly, the easier it will become to
> > > rebase and upstream the rest.
> >
> > I agree as well, "release early, release often". These patches are
> > around since a long time and lots of people are using them already, and
> > tracking all of them from different threads is time-consuming. I will
> > happily test them early as soon as they are sent.
>
> I lost track of the series well, but I do remember I had to adjust the
> original series to get it running on linux-next.
> Please keep me on CC so I can add my local changes if necessary.

Fabio / Alexander,

I have a pending question to Peng regarding a change I pulled from NXP
[1] which moves the FDCC clock to the power domain and removes it from
the HDMI-TX driver.  I am hoping to get that answered soon.  If not, I
might just push the series again after a few more days.  In the
meantime, I have a git repo [2] if anyone wants to review stuff.
Marek Vasut sent me an offline patch to address some suspend/resume
issues, and I incorporated them into the series.  My suspend-resume
has been broken for a while, so I cannot test that.


> I have a proof of concept for HDMI audio, which is based on the base HDMI
> support. I can continue on that after merge, but I'm lacking an idea how =
to
> add some kind of "bridge" into the audio pipeline.

Maybe the git repo above will help.  It looks like the xcvr and
audio-tx drivers are there, but they appear to be dependent on custom
NXP sound card drivers which would be nice to replace with standard
audio drivers, so let me know if I can assist in any way.

>
> Best regards
> Alexander
> --
> TQ-Systems GmbH | M=C3=BChlstra=C3=9Fe 2, Gut Delling | 82229 Seefeld, Ge=
rmany
> Amtsgericht M=C3=BCnchen, HRB 105018
> Gesch=C3=A4ftsf=C3=BChrer: Detlef Schneider, R=C3=BCdiger Stahl, Stefan S=
chneider
> http://www.tq-group.com/
>

[1] - https://patchwork.kernel.org/project/linux-pm/patch/20240106223951.38=
7067-2-aford173@gmail.com/
[2] - https://github.com/aford173/linux/tree/for-6.9-imx8mp-hdmi

>

