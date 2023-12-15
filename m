Return-Path: <devicetree+bounces-25799-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AD3A7814951
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 14:32:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 476BE1F254F5
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 13:32:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FAE02DB7E;
	Fri, 15 Dec 2023 13:31:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FH1Nokja"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 545133034A
	for <devicetree@vger.kernel.org>; Fri, 15 Dec 2023 13:31:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-5c6910e93e3so148227a12.1
        for <devicetree@vger.kernel.org>; Fri, 15 Dec 2023 05:31:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702647100; x=1703251900; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W4Ih0UOvEfVG+nQnrdqB5s4Pz+XjqfiR8vjpvigLk7g=;
        b=FH1NokjaXVkusS2TnJQBhpZTxUuOKWZagi9kwTVlwdnOWljuedvqWE+fAeHf945p7s
         NFqEgTh9QKz2QIS2rydzg1koRiXWw1QV3s4jWVPh6Tx46dT334vWJhwwzlXPT9r1SVAY
         JB/vZIFRWKc+mmpGXkYeEs7IDUldV6Q0Yd32OCdNZD07xh24gS9HGNbyXs13VXdbjWYk
         BdzfqnJo6oo3bH2cDxVo0L01U7qBXQ4hoMyUwOF+vN43/ccRCBmwbxHWkyuD1BHMy0uq
         0UnJ38RqpcjVOWR+v4LjPHcTxgeVXVicU5qi2SGykjjzJzH4fNeWHkEqD7JEAfysNeao
         B8Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702647100; x=1703251900;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=W4Ih0UOvEfVG+nQnrdqB5s4Pz+XjqfiR8vjpvigLk7g=;
        b=C//bkmf30XhpHO6ufQr5UpvDv7C4YxcvQnveS1lE3NHLSI9jaCcro9vRFFOgvUAKI6
         t8RNGSivTZ6OZ/MdcMjwfNwHPk9HGxu6iBbwSDxeay0shFEuUQUtT1dbfaV65WsnZmWf
         veLpqWtUzaXYwIZ1JUrReQot3qVuCgXJX8FlJubMp9JCfq42C6YB/jeFn2JUg07alBZp
         mCKM6+a7rvADv17rOmEXqmIyVJASUep5wBBm9AAWh2CzSYDFLMrxk20IWrEca7vwQMON
         MICcTwjH33XwaPmSlyHH5kZ2cxhbuHaOew7AE+evhjk/xmFRjOOCuHvzpjuS2En7tTpi
         tGPA==
X-Gm-Message-State: AOJu0YzCzw6DW6bEaJRasR/Dq3K7pMqTOfYfOj4remBqYhBgZH0fPeYl
	5Kj9VLzTrxql6I7T5Nm5YxcQvITtq9RjxmNgyeA=
X-Google-Smtp-Source: AGHT+IE1Zbjx1R+YVsNqjRq6pVvRVavL3UDWZKL0eLF1pVVkJ5KeF4jWQ+looR0346nXz6xgnUYtTjqD6aUmJhNhg1k=
X-Received: by 2002:a17:90a:9905:b0:286:7cc2:4c15 with SMTP id
 b5-20020a17090a990500b002867cc24c15mr19727984pjp.0.1702647099690; Fri, 15 Dec
 2023 05:31:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230920171009.3193296-1-l.stach@pengutronix.de>
 <20230920171009.3193296-2-l.stach@pengutronix.de> <20230920205736.GB7723@pendragon.ideasonboard.com>
 <CAHCN7xJz=rEH_8wHaBCVOUzP0kO6cM_c=zLf6ocjW8bt1FaCBw@mail.gmail.com>
In-Reply-To: <CAHCN7xJz=rEH_8wHaBCVOUzP0kO6cM_c=zLf6ocjW8bt1FaCBw@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 15 Dec 2023 10:31:27 -0300
Message-ID: <CAOMZO5C7_Rj-Ja0BO0D0Po+gy+XbvyMdQf-wH5YNyhAdMof2vg@mail.gmail.com>
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

On Sun, Dec 10, 2023 at 2:35=E2=80=AFPM Adam Ford <aford173@gmail.com> wrot=
e:

> Lucas,
>
> It's been a few months since there has been any action.  If you want,
> I can help apply the suggestions that Laurent has and re-submit with
> both of our names if you want.  It would be nice to get this
> integrated.

It would be nice if you could re-submit the series.

Thanks

