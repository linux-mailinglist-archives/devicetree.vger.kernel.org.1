Return-Path: <devicetree+bounces-25857-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E3BF814D74
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 17:47:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B7A021F2437C
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 16:47:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CBBB3DB96;
	Fri, 15 Dec 2023 16:47:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="T8U2npXm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96EF33FE34
	for <devicetree@vger.kernel.org>; Fri, 15 Dec 2023 16:47:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-6cea0ea6817so130065b3a.1
        for <devicetree@vger.kernel.org>; Fri, 15 Dec 2023 08:47:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702658842; x=1703263642; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oEPp7VwVape+PRLcyc7DkdEl3azZDbUT/G2Ugu6awLc=;
        b=T8U2npXm3qapirY0ky8a2EUhybku+uPdQ2H7bdD2uz2Bi3NNWjiLe2fXQ9Zz0ZWeLQ
         Nd2yQ6jSKzscKqFV1NdJv7mdq6WNmhWXUmCOlnILytEARoIu+C/U5XvrSF3FxOsF2/T4
         7uXxLnun3pUIYieo0GpHLuS5r4HJyHBS9uUHjR7wYfu2PrC4jul3BaIVBk+M08w0qsGz
         TOCb1yJG7G4ATJnCl+dL+iDTDq8zWGkrDpJmUuCgNHS4fQK1emTyjngSLqF+a1qftHp1
         4Kge2x2zLAL4FoaPRjrPaEU1n8seeLzbLmN6xyX4gfnoHG+CneZUkx/Rc0ALsGxQdHN6
         Z71w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702658842; x=1703263642;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oEPp7VwVape+PRLcyc7DkdEl3azZDbUT/G2Ugu6awLc=;
        b=o40viY6bHoHPvazcZxpjXQ2ScImPS7AQYHXx3rXsW/83+/rr1Ez2CJnvbVgsRDHas0
         MViPWTdzzOY45pR3cmDuSCAisOksxm58JmLzzpI+3ATsdXnrwOtM5emgx+5q8cZXTr/B
         ydtB8TGoWlmyOGWEa6+jS8NAybPHzcud61efL+ECoQtJSmFw1lsK6/gDaPJSDEuD2jVH
         8fgXFuLAsCTpOmXVN7tTuu6OoiPOorKjcIHbEmAh1mAbLTT6AgTIpnNgm2VTXyb69W7o
         jxeFSsYz4CCCxUU1DHSAF8VjY6RrQbi50+hSwMBQRZvUhLzWPiVm4CkgVUlnqBK9T000
         78iQ==
X-Gm-Message-State: AOJu0YzXtUq59H1SklENA+uZv40tMDdqcUEw9+CTB55vEaZPLqFm/iEi
	zwiKfQGsb2zOJZYM2VmVVIyN3O+4Zfb+mnN1BKk=
X-Google-Smtp-Source: AGHT+IG6XM/cpbPyvUmpGmMVAIiaAGFLNuv+q8LFxY1OkI/0FMeQV7pk1x5j1JLtN7eqshBjH/oZ0QYQ3ZPAjrH5iWo=
X-Received: by 2002:a05:6a00:4601:b0:6ce:72d7:1e74 with SMTP id
 ko1-20020a056a00460100b006ce72d71e74mr25061297pfb.2.1702658841835; Fri, 15
 Dec 2023 08:47:21 -0800 (PST)
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
In-Reply-To: <CAHCN7xJPg_Nk=o9fKwkZfVTNSB-YL0m7vY6p1O7+i=PHShp7hg@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 15 Dec 2023 13:47:09 -0300
Message-ID: <CAOMZO5AGAkPpds=5H-iQj53djcQtW5GsRQrzdC_JOOrcENhvvw@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] drm/bridge: imx: add driver for HDMI TX Parallel
 Video Interface
To: Adam Ford <aford173@gmail.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Jonas Karlman <jonas@kwiboo.se>, 
	Liu Ying <victor.liu@nxp.com>, Sandor Yu <sandor.yu@nxp.com>, dri-devel@lists.freedesktop.org, 
	NXP Linux Team <linux-imx@nxp.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	patchwork-lst@pengutronix.de, devicetree@vger.kernel.org, 
	Rob Herring <robh+dt@kernel.org>, Frieder Schrempf <frieder.schrempf@kontron.de>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Richard Leitner <richard.leitner@skidata.com>, 
	Luca Ceresoli <luca.ceresoli@bootlin.com>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Adam,

On Fri, Dec 15, 2023 at 1:40=E2=80=AFPM Adam Ford <aford173@gmail.com> wrot=
e:

> I started looking into this today, but there appears to be some
> dependencies missing because the PVI is just one small portion of
> this. The PVI needs to interact with the hdmi_blk_ctrl and the hdmi
> transmitter itself.
>
> It looks like there was at least one attempt to push the hdmi driver,
> but we're also missing some hdmi power domain information, and the dri
> patchwork lists a bunch of proposed patches for the lcdif driver.  I
> haven't looked through them all, so I don't know if they are
> necessary.  I found a git repo with Lucas' stuff, but it's based on
> the 6.0 kernel, so it's fairly old.  Either way it seems like there is
> more to the HDMI than just his one series.

Here is the whole patchset that I tested against 6.6:

https://patchwork.freedesktop.org/patch/485391/
https://patchwork.freedesktop.org/patch/485392/
https://patchwork.freedesktop.org/patch/485395/
https://patchwork.freedesktop.org/patch/515299/
https://patchwork.freedesktop.org/patch/515300/
https://patchwork.kernel.org/project/linux-arm-kernel/patch/20220406153402.=
1265474-12-l.stach@pengutronix.de/

