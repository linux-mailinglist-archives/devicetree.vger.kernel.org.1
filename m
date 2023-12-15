Return-Path: <devicetree+bounces-25912-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 76AAB8150E3
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 21:10:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2A5B61F28114
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 20:10:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E15431753;
	Fri, 15 Dec 2023 20:09:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XGLl94Dh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFD1C46528
	for <devicetree@vger.kernel.org>; Fri, 15 Dec 2023 20:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-28b24c3def1so218265a91.1
        for <devicetree@vger.kernel.org>; Fri, 15 Dec 2023 12:09:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702670994; x=1703275794; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C+VJ0FqQo5AdQg2VzGJ+KH4fOPDcPDhTzbSo5s9hBao=;
        b=XGLl94DhUJyNSt6EFDVwnyylGyeuAKpV6gP10p/noAJT4+4gWuR0hiWUEixeHFJmIT
         +y33VC2bRqkPJei9ndzz5qv4Y80+NGn/slsh5q+gC3/nyWb8BE5CBIrlw93O6EKky9fw
         cLeY+74NVpUY3lz7aSv4DWL9YDMQV9Kf9SpIgjk5N6zmVmyqdSJ5bw3HcUHL94ezR/z0
         JOym8kiln9N7R0CO2tbD7tevRm7wdgqRvQovuzRIW7uuuhS4nYh6ytGOzfKXAHkd6Yoo
         4XS5d4nr7F+X0SBA2dYgR+zsdBPgRLPJRXx/Ht2Lx6oJ5leVXej5HCqRAAaca2mldSkV
         WiGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702670994; x=1703275794;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C+VJ0FqQo5AdQg2VzGJ+KH4fOPDcPDhTzbSo5s9hBao=;
        b=MAX8vZKLYJp+X0tDXK5Nn4tcFssrDhNnNtedUA48FK0YwQqSgLsCxqUiNLJta8bs23
         +7LQ/gSr+DH+mlLmrIuiK65CpssSFbkROv/CcObeGwNXXzRefGrAn0jLxQnQ8WVs0t/+
         iZUiZGIRBJGV0HHNuqd8e4O4ekVEmhvVdvGSh2ny7OgiiR8mtWKENSRsnIA4RTYJ7tSG
         TsRzbBzgSTgUlNgwaYS8y5hpetdLIK8CNdp3z5VxTIsJvDxWQEDGx1mMuE8UJ+POqjaB
         kHrPu3nZtz2RrkM8dBjl1Hf11JRP1m1PPddtG+nNgW5E7vKJHSw7bqjx6IJi2VZ7sqOc
         uABg==
X-Gm-Message-State: AOJu0YxwZfHH8QWRe/Ky3eYBenpXzeNJkc+9ZVayyag/iNqolOImUYWu
	zye5MlNLTknJkqNH0p8H+huyIMILgscKwDD9LCo=
X-Google-Smtp-Source: AGHT+IH0DXnC8KtSTlCfY3zBgia7xIKVCPq2dsDSXxN0++zrX2TSX0wTvnY12iw3YyDWDu8qyD912bXhS1F9P8+/IFU=
X-Received: by 2002:a17:90b:3a82:b0:283:5405:9e90 with SMTP id
 om2-20020a17090b3a8200b0028354059e90mr20790095pjb.3.1702670994085; Fri, 15
 Dec 2023 12:09:54 -0800 (PST)
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
 <CAOMZO5AGAkPpds=5H-iQj53djcQtW5GsRQrzdC_JOOrcENhvvw@mail.gmail.com> <CAHCN7xLHMGcS2-QTneqqpHYU66JwuEG4TyR0j0riFGqO6RC8ug@mail.gmail.com>
In-Reply-To: <CAHCN7xLHMGcS2-QTneqqpHYU66JwuEG4TyR0j0riFGqO6RC8ug@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 15 Dec 2023 17:09:41 -0300
Message-ID: <CAOMZO5B2bWVciDEwSh+YQWu6b_Hp5ijk6Jq-bMePPTDRJ-vHFA@mail.gmail.com>
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
	Andrzej Hajda <andrzej.hajda@intel.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 15, 2023 at 4:01=E2=80=AFPM Adam Ford <aford173@gmail.com> wrot=
e:

> Thanks for the list.  I was able to successfully build the stable 6.6
> branch with those patches applied and I have the HDMI working.
> Unfortunately, I get build errors on the linux-next, so it's going to
> take me a little time to sort through all of this.

If you need help to figure this problem out, please let me know.

I haven't tried it against linux-next.

> I am thinking that it would be better to consolidate all these
> together into one series instead of piecemealing it.  However, there
> are some items that can be submitted right away without significantly
> reworking them against linux-next.  Do people have a preference?

I think it makes sense to re-submit the "easy ones" right away.

