Return-Path: <devicetree+bounces-25856-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 45114814D5A
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 17:41:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 77C0B1C232D8
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 16:41:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7BC13EA98;
	Fri, 15 Dec 2023 16:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RBVPggKi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 734C63EA8D
	for <devicetree@vger.kernel.org>; Fri, 15 Dec 2023 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-28b406a0fbfso212178a91.0
        for <devicetree@vger.kernel.org>; Fri, 15 Dec 2023 08:40:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702658434; x=1703263234; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P25CbsehI2ZDoWt8jYG9StimuRm4R3IkYru7E52Ud9o=;
        b=RBVPggKi2BeU2nVWgeO+pAeUzkdffD5tOc+gUqzim2Z4ZTVrOJ5yFfOUjUDL49U+LT
         gqfI/yJt6yzZDmfi6KfwL75VUzW9kCXN3G6YEoq8YPnlCm66WTrta/9TGDj/zHtJm7Vi
         tyqhoWTG/eyawWvWmbd/gaT2lanuBzXQ/phkCgS3+troHBXu4gFj0qXtois/hr5XvNAf
         3mIXnWydtwJYBRoou/KUF94P5jcfyxTPTYjGPdF2RGCnmUhrOifYCAqElsaBTiH1HSiO
         ZyeY7ZH2jOS0cu2SYHfQVF/CFe48IMczv+itacU3xXe7mfuJLMFmsK5pq4hUNBMtyo7e
         dN/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702658434; x=1703263234;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P25CbsehI2ZDoWt8jYG9StimuRm4R3IkYru7E52Ud9o=;
        b=vEggX/4frjp3DNCzboFkYI64njA+tsqwuLkjtkKkOF+1y4Hvm69Lvx1DmmCNts+HAz
         jOiaWKz4rQG7T4bWkqujNrtmhjI9XDKLupZ/RRVk3JjdAqUC4XZD8GeMWPjesp6eHLqk
         XIPUPgZGXL/6M5j+m8MVf9szauj6T76PIkt3wdhYN6DFHjKXeOUCXGM4IdLbbPRJzuXq
         0nl3UiRCEXr33myA5cUM2AKIeIHEWnsSe+8dz+6bDNZbuh/OjCMV+8QMe6zbeVUHicqa
         E5hhijig7MnBgBv7xNcUegyQXS9tgrZhVwQctAQSLx1seXt7QPTfX8Yr0Mqhp4Ack0Oz
         8BIg==
X-Gm-Message-State: AOJu0Yw4FYpZVdLDfT6SDZqg7Px37YfU4Kc2fGoNfe4/PqksuAo5qIiC
	5VtRPU/6M6YZRcT/+T2jWOtdrztE4x7zgDIzxTc=
X-Google-Smtp-Source: AGHT+IFuSK9mMYf2tzt4qdasmJNq1qeadzqiV6T7OQnjj9RaK23eMPy4F59kvNXJlhXKl73Qd4YLnG1VowwzUkWhndA=
X-Received: by 2002:a17:90a:578c:b0:285:cc9c:7406 with SMTP id
 g12-20020a17090a578c00b00285cc9c7406mr9402919pji.15.1702658433586; Fri, 15
 Dec 2023 08:40:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230920171009.3193296-1-l.stach@pengutronix.de>
 <20230920171009.3193296-2-l.stach@pengutronix.de> <20230920205736.GB7723@pendragon.ideasonboard.com>
 <CAHCN7xJz=rEH_8wHaBCVOUzP0kO6cM_c=zLf6ocjW8bt1FaCBw@mail.gmail.com>
 <CAOMZO5C7_Rj-Ja0BO0D0Po+gy+XbvyMdQf-wH5YNyhAdMof2vg@mail.gmail.com> <20231215142308.GL21146@pendragon.ideasonboard.com>
In-Reply-To: <20231215142308.GL21146@pendragon.ideasonboard.com>
From: Adam Ford <aford173@gmail.com>
Date: Fri, 15 Dec 2023 10:40:22 -0600
Message-ID: <CAHCN7xJPg_Nk=o9fKwkZfVTNSB-YL0m7vY6p1O7+i=PHShp7hg@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] drm/bridge: imx: add driver for HDMI TX Parallel
 Video Interface
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Fabio Estevam <festevam@gmail.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Jonas Karlman <jonas@kwiboo.se>, Liu Ying <victor.liu@nxp.com>, Sandor Yu <sandor.yu@nxp.com>, 
	dri-devel@lists.freedesktop.org, NXP Linux Team <linux-imx@nxp.com>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, patchwork-lst@pengutronix.de, 
	devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, 
	Frieder Schrempf <frieder.schrempf@kontron.de>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Richard Leitner <richard.leitner@skidata.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 15, 2023 at 8:23=E2=80=AFAM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> On Fri, Dec 15, 2023 at 10:31:27AM -0300, Fabio Estevam wrote:
> > On Sun, Dec 10, 2023 at 2:35=E2=80=AFPM Adam Ford wrote:
> >
> > > Lucas,
> > >
> > > It's been a few months since there has been any action.  If you want,
> > > I can help apply the suggestions that Laurent has and re-submit with
> > > both of our names if you want.  It would be nice to get this
> > > integrated.
> >
> > It would be nice if you could re-submit the series.
>
> Yes, that would be nice. It shouldn't cause any issue, the patches will
> retain Lucas' authorship.

I started looking into this today, but there appears to be some
dependencies missing because the PVI is just one small portion of
this. The PVI needs to interact with the hdmi_blk_ctrl and the hdmi
transmitter itself.

It looks like there was at least one attempt to push the hdmi driver,
but we're also missing some hdmi power domain information, and the dri
patchwork lists a bunch of proposed patches for the lcdif driver.  I
haven't looked through them all, so I don't know if they are
necessary.  I found a git repo with Lucas' stuff, but it's based on
the 6.0 kernel, so it's fairly old.  Either way it seems like there is
more to the HDMI than just his one series.

adam
>
> --
> Regards,
>
> Laurent Pinchart

