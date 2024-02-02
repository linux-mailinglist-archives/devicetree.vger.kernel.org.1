Return-Path: <devicetree+bounces-37962-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F78846F95
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 12:56:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AB45DB23620
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 11:56:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33D0613E202;
	Fri,  2 Feb 2024 11:55:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DgA7bZ9+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FB7A13D51E
	for <devicetree@vger.kernel.org>; Fri,  2 Feb 2024 11:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706874956; cv=none; b=TtvZCai9UxV7GQ8y1YnxOkNp4ywa/yyKAZvY4e6nAdwW0wa7UzI0Jh1RnE9/y91nUn64vLZAlFjENCPhfZl75Pg+Dvw8HKkFULlH/zU9Et/TRAXbDbFzu8ZS48SaenxNQixVYd2TuVVfVT44BJGU5qZnpYgnpShzuV3fpteaa/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706874956; c=relaxed/simple;
	bh=g91Q0ZpDjmQ4/6xXzFZi11gjzFbr5zR/z5qLZgpaD6g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Le6QVuACOz39iR5W877awaNbfCu3sjSMNQ7szHSH3D6LOi54fwKfqY9IuQAp8FHuqhq1zWmfBnCXtCcSQE41X6EF5Fpp8ZA1yJsgThgWM7n6Xf5mCQjHmmI1bX7bJSUFQEAD/b/uxbyWE2xasNRQBFSKvrHgW7+MwPTd2tb2A6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DgA7bZ9+; arc=none smtp.client-ip=209.85.128.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-60425a9a3d1so10806277b3.0
        for <devicetree@vger.kernel.org>; Fri, 02 Feb 2024 03:55:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706874953; x=1707479753; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bLJvGiCen2KRi2n5m7Ep7wuSVWa623lasZLXabxFxdA=;
        b=DgA7bZ9+xyW61kBeWa6Nwpx0WwrcLY0tt9doj6GydTZvVPFLZ7ZhxtUAe3FCyI4HuW
         2QGmFJdDZ8owu9KkoIuRQ63bNU4aLIuzQfo6dcnBRJ0xapyt4guRIh/Skve99IRNCAPG
         xohzdeYWNIapan4q7Pu6c3cDAGV6tDxSq0iWHXbGn0U7ci4EWv/d39BWZr39S0VMYZWO
         rnRqGMH40tGH1c2aeYBd/tougpYfIH/DYdvSnbQIEXqZ2vaL5dTSbNsYMf+33OdKwGIK
         yf40pKqKCPmjZe1UwET5MZSFCq8TKdl8H7WuhKwh3OZWmClFVeu+NZ7ob1FCvAdVGUk3
         Z+cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706874953; x=1707479753;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bLJvGiCen2KRi2n5m7Ep7wuSVWa623lasZLXabxFxdA=;
        b=tHhBJE5mTKRVxISaQGWO2zXUi15iGb9HTkO3GRQm70rw/je/Acppbfiba/Spp52FiW
         a/6g0arxUp7EZPSunVrkf3nXZhcW4hqB0UlFvueEEe/ncoBdozBkrBJZce9Vsb8NP79X
         rfpoSad3k3S/i/yBW89/j6Kgjhcm3PyBmMVxSMXgOQ/53VF3XSZ1eUrAtf7FpbCo18tN
         Cxfe/GeR6KBdHzYA1gCyBuJj9BYFCS4q1W8mN4DvCpxw731VORM8WIyHa8HWa/pkQ0Jq
         R8QxqFGHeg2yIaBMWYpqBOO+AubMdprvmGMAVxDmjEA3PH4Csn9JHWGrRMqBz5ZmNBu8
         wl3A==
X-Gm-Message-State: AOJu0Yzkz5vVNBSvwJKsoigyXRhAsb8GnSLv0fXudQJjZQ+gDlvgXTT3
	y7uGmr/tTsjASWlcKGQ8f94hj7ndV0s1thF15K0m2lF892CbQnSG+FkJl7ceaueHJAdJsV5EiI3
	dXdJeJsPkKsBJvTx484YAklZIhdZp+MtwPoO6rg==
X-Google-Smtp-Source: AGHT+IGuG87J1tpRztpBCjH78cb2e+f8F3ZKLbi/Mfd0sjd5znLbq3M8sHVCtkIXi/YM1R2Qz/IsLAZiyThdiNwKfqU=
X-Received: by 2002:a0d:db93:0:b0:5fc:1349:87b8 with SMTP id
 d141-20020a0ddb93000000b005fc134987b8mr8758213ywe.43.1706874953312; Fri, 02
 Feb 2024 03:55:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240106223951.387067-1-aford173@gmail.com> <20240106223951.387067-2-aford173@gmail.com>
 <CAPDyKFpx_Xo6Y5yGfuMiV8w3kR2hL6f8t31pKC=91-wEperqjA@mail.gmail.com> <CAHCN7xLqKTAcVpsBYXmzdvSefOnXdXzzrGie7mxkzeJLFKu+Rw@mail.gmail.com>
In-Reply-To: <CAHCN7xLqKTAcVpsBYXmzdvSefOnXdXzzrGie7mxkzeJLFKu+Rw@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 2 Feb 2024 12:55:17 +0100
Message-ID: <CAPDyKFr9q4mio8cVsZ66PQuvLC_zpxTT_E-QUDRy1Df09DcdtA@mail.gmail.com>
Subject: Re: [PATCH 2/3] pmdomain: imx8mp-blk-ctrl: imx8mp_blk: Add fdcc clock
 to hdmimix domain
To: Adam Ford <aford173@gmail.com>
Cc: linux-pm@vger.kernel.org, Sandor Yu <Sandor.yu@nxp.com>, 
	Jacky Bai <ping.bai@nxp.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	NXP Linux Team <linux-imx@nxp.com>, Lucas Stach <l.stach@pengutronix.de>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2 Feb 2024 at 01:17, Adam Ford <aford173@gmail.com> wrote:
>
> On Thu, Feb 1, 2024 at 4:33=E2=80=AFPM Ulf Hansson <ulf.hansson@linaro.or=
g> wrote:
> >
> > On Sat, 6 Jan 2024 at 23:40, Adam Ford <aford173@gmail.com> wrote:
> > >
> > > According to i.MX8MP RM and HDMI ADD, the fdcc clock is part of
> > > hdmi rx verification IP that should not enable for HDMI TX.
> > > But actually if the clock is disabled before HDMI/LCDIF probe,
> > > LCDIF will not get pixel clock from HDMI PHY and print the error
> > > logs:
> > >
> > > [CRTC:39:crtc-2] vblank wait timed out
> > > WARNING: CPU: 2 PID: 9 at drivers/gpu/drm/drm_atomic_helper.c:1634 dr=
m_atomic_helper_wait_for_vblanks.part.0+0x23c/0x260
> > >
> > > Add fdcc clock to LCDIF and HDMI TX power domains to fix the issue.
> > >
> > > Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> > > Reviewed-by: Jacky Bai <ping.bai@nxp.com>
> > > Signed-off-by: Adam Ford <aford173@gmail.com>
> >
> > Just to let you know, this looks good to me and it seems like the NXP
> > people like this too. What I am waiting for is an ack on the DT patch,
> > then I am ready to queue this up.
>
> What about the bindings?  I'm assuming that Shawn would take the DT
> through his IMX tree, but I am not sure if I need to resubmit the
> bindings with a different commit message.

I am usually trying to help with patch1 and patch2 for pmdomain
related changes - and I am sharing new/updated DT bindings on an
immutable "dt" branch. Then Shawn can pull in that branch and apply
patch3 to his tree.

So, I need an ack on patch1 from some of the DT maintainers to go
ahead. Unless you want to manage this entirely through Shawn's tree,
that works too. Just let me know.

[...]

Kind regards
Uffe

