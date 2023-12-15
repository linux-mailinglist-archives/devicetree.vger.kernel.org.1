Return-Path: <devicetree+bounces-25896-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E5AB814FF1
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 20:01:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A1DE31F24767
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 19:01:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78F063010B;
	Fri, 15 Dec 2023 19:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="La0v5f6X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3925941872
	for <devicetree@vger.kernel.org>; Fri, 15 Dec 2023 19:01:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-28aea039fb4so1677211a91.1
        for <devicetree@vger.kernel.org>; Fri, 15 Dec 2023 11:01:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702666910; x=1703271710; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aH4j+eRoTUdpqPc/Lq1UK1wxe+ZW7mKIcZTucQXHv4w=;
        b=La0v5f6XmZnjcSnsR5u4GqvlHzizXFxMYjAMvzOjaxWd6NHRwE3PxKSN4TewYEcD+B
         dDH308T6N+OAlqkm7t/AMgEJ8hBODORcNRwzG1lElRA880mbO60TsIuwUGpMzx/8I5g8
         LJYswO6f/9eqTrFr1iqmgRiVsMuBm93dXMk7L54swOT3AnFzD0/4OvSooLpuITMR644Y
         pqNWsT1vr74sj/2C3ntJ2dVdp7ctNBeP3As0faT/vnnr6E3OBqOwxjV+codbs4DPjUkj
         4La5GZNWDtMTGbRY7+NbAF3uKqS2K8sz4CDLutc5SnJn+PhZRMJyddA5cKfq6L5DM4jF
         iPtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702666910; x=1703271710;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aH4j+eRoTUdpqPc/Lq1UK1wxe+ZW7mKIcZTucQXHv4w=;
        b=TLG5rr5GFbs7FbeYyhHEecAaI2UfyrozXjar6Ax2w/winpn3bhQdkhh8KP/vJWAK1J
         LHvMk5hVz6TAu6lZMoM9pUy609b8g/Kr5mPzlPk6khlsFys9EUXiPTwTfXx7uvSS/T3X
         zMKaDJG8Gs3tnDUHobRlKwpw+dLwTNydf+MGfH0XA9KcqXJVVSIl58Id4Eua3Dce02yZ
         xhEwigy0fuXL4J1DX+bV57KuR96BrWIHAaBsMLVOjqZ7rBqAb/UkMQelzDfHxGhcwS+a
         PXr6OYSqO0nnw13A4oukhx2EMeCDxGP/Lx808De+pUh9wHTTggbwWPYfWGyhJBFdIo8/
         NUCQ==
X-Gm-Message-State: AOJu0YzTyjFgJw9OkP7gzPqWhslDSkIbKKHLqFAbyHThZKcufLQKXDRp
	G0UutqE/yXUrOxWMbQOr+OpLeTgtTxFQowXPxoU=
X-Google-Smtp-Source: AGHT+IF0sVYDEk9PCAH/0R5eAGspSLWkz8Lr473dh7sTZA0lII4c3cNxQ4qTtY4MYl7UOmdWeCMiu4rK3nzmQTNIfCw=
X-Received: by 2002:a17:90b:3b8f:b0:285:b08a:7817 with SMTP id
 pc15-20020a17090b3b8f00b00285b08a7817mr14238547pjb.13.1702666910185; Fri, 15
 Dec 2023 11:01:50 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230920171009.3193296-1-l.stach@pengutronix.de>
 <20230920171009.3193296-2-l.stach@pengutronix.de> <20230920205736.GB7723@pendragon.ideasonboard.com>
 <CAHCN7xJz=rEH_8wHaBCVOUzP0kO6cM_c=zLf6ocjW8bt1FaCBw@mail.gmail.com>
 <CAOMZO5C7_Rj-Ja0BO0D0Po+gy+XbvyMdQf-wH5YNyhAdMof2vg@mail.gmail.com>
 <20231215142308.GL21146@pendragon.ideasonboard.com> <CAHCN7xJPg_Nk=o9fKwkZfVTNSB-YL0m7vY6p1O7+i=PHShp7hg@mail.gmail.com>
 <CAOMZO5AGAkPpds=5H-iQj53djcQtW5GsRQrzdC_JOOrcENhvvw@mail.gmail.com>
In-Reply-To: <CAOMZO5AGAkPpds=5H-iQj53djcQtW5GsRQrzdC_JOOrcENhvvw@mail.gmail.com>
From: Adam Ford <aford173@gmail.com>
Date: Fri, 15 Dec 2023 13:01:39 -0600
Message-ID: <CAHCN7xLHMGcS2-QTneqqpHYU66JwuEG4TyR0j0riFGqO6RC8ug@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] drm/bridge: imx: add driver for HDMI TX Parallel
 Video Interface
To: Fabio Estevam <festevam@gmail.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Jonas Karlman <jonas@kwiboo.se>, 
	Liu Ying <victor.liu@nxp.com>, Sandor Yu <sandor.yu@nxp.com>, dri-devel@lists.freedesktop.org, 
	NXP Linux Team <linux-imx@nxp.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	patchwork-lst@pengutronix.de, devicetree@vger.kernel.org, 
	Rob Herring <robh+dt@kernel.org>, Frieder Schrempf <frieder.schrempf@kontron.de>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 15, 2023 at 10:47=E2=80=AFAM Fabio Estevam <festevam@gmail.com>=
 wrote:
>
> Hi Adam,
>
> On Fri, Dec 15, 2023 at 1:40=E2=80=AFPM Adam Ford <aford173@gmail.com> wr=
ote:
>
> > I started looking into this today, but there appears to be some
> > dependencies missing because the PVI is just one small portion of
> > this. The PVI needs to interact with the hdmi_blk_ctrl and the hdmi
> > transmitter itself.
> >
> > It looks like there was at least one attempt to push the hdmi driver,
> > but we're also missing some hdmi power domain information, and the dri
> > patchwork lists a bunch of proposed patches for the lcdif driver.  I
> > haven't looked through them all, so I don't know if they are
> > necessary.  I found a git repo with Lucas' stuff, but it's based on
> > the 6.0 kernel, so it's fairly old.  Either way it seems like there is
> > more to the HDMI than just his one series.
>
> Here is the whole patchset that I tested against 6.6:
>
> https://patchwork.freedesktop.org/patch/485391/
> https://patchwork.freedesktop.org/patch/485392/
> https://patchwork.freedesktop.org/patch/485395/
> https://patchwork.freedesktop.org/patch/515299/
> https://patchwork.freedesktop.org/patch/515300/
> https://patchwork.kernel.org/project/linux-arm-kernel/patch/2022040615340=
2.1265474-12-l.stach@pengutronix.de/

Thanks for the list.  I was able to successfully build the stable 6.6
branch with those patches applied and I have the HDMI working.
Unfortunately, I get build errors on the linux-next, so it's going to
take me a little time to sort through all of this.

I am thinking that it would be better to consolidate all these
together into one series instead of piecemealing it.  However, there
are some items that can be submitted right away without significantly
reworking them against linux-next.  Do people have a preference?

adam


adam

