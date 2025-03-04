Return-Path: <devicetree+bounces-153874-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F8E1A4E2A9
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 16:15:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0128C88505A
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 14:55:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCDAF250C17;
	Tue,  4 Mar 2025 14:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iQZjmslb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A84E5241124
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 14:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741100034; cv=none; b=MFJLhmqoC8DcDfA1AecauorlQklEe+I9sUfBOT6Yox1dbFN9Yz1w41lkhY4hweTlOi5qwzqLRNa7oGt/i892KaPZTgnqSXwAfO7DoMXF4VCYNkTOm6aEGV51yRvSaWdj8n+ANYy4erSNzMvtXk0Ad8DpITTyAP4+KLdzxYPJibU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741100034; c=relaxed/simple;
	bh=HsTlftYkKCeipenMXUveAq4+33NodqfLnatqWiT1P1s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Oq11Ie/y77TEub70ADYqCDyJ1Hl+ZU+rg3XbAlDKZUbyA8Bw2S0GiXebjlDtHm0uRoDhvsD89m93XnE90+3+xIxuHo5d0BxLsUIzYFwdXgvQc23j4X01u7Q9X0aGCdJLKE+aW0OLswxt75RUFfcgBpNVSXRfQUISPNDcrlJWiLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iQZjmslb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2CD0CC4CEE7
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 14:53:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741100034;
	bh=HsTlftYkKCeipenMXUveAq4+33NodqfLnatqWiT1P1s=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=iQZjmslbg1vFFJ4PTdTy19G+W1Rjw1PtEov7AIip06DVoW1KqELK+wZJrQLg/M20k
	 QWf348+vVS0vUKmR1VKvUVIZlKBhoVhSseO3OzyGyPBwwNx6YEL9AnfZYaesa9qRsG
	 TaDQWT7Ncx/huzWdUrN9/xyPNSZA2b4C3t3X7acNG8XYc6LAbNKEfM1ebyYCxhRRLX
	 +fiDqB43o77Q4FjuXWeJy8FRSm74g8A9TyMOBDDJMYWJVB+MiLNs8rmUAIYZ/EVH0G
	 XoKeHsmTOdTezWjGrvuxMq0QsseuvB2uAbtppJ5wreBzOuzuGtiCqSpU4Z1POrM5Zq
	 3u3E7zD4RIvdw==
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-aaedd529ba1so663378766b.1
        for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 06:53:54 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXuH4yWdM6nPXq7PwdMrWmkvILceMOPey1Iw0oAWBVRPTV6BKL69gnoNBnUXT8ffut047MtUn+Ykeeq@vger.kernel.org
X-Gm-Message-State: AOJu0YwXgH4NpFc6xKGv8c668uEcfpuHOKHHxOuCdrK5cdVU6dqdxVgS
	n4J2QtIdCxe5qxepQKw0Lr5rfLr74zlkrJrUY2jXzAAP+fmRPmE1Cyu5A35kMuthgjnYWS7aeVJ
	bWPU+uNbeTDmTLfb2XkX0Ejf6tQ==
X-Google-Smtp-Source: AGHT+IE5mO4/8XgjI8KQ2e5F+7omKuYNfycraNBEqmz3SlLPHhy1o9Ys5IwlzPRSfa7418Cy7GqCZEdMwYx2hxIjsjs=
X-Received: by 2002:a05:6402:278f:b0:5dc:caab:9447 with SMTP id
 4fb4d7f45d1cf-5e4d6af3a69mr47248954a12.18.1741100032682; Tue, 04 Mar 2025
 06:53:52 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250304093127.1954549-1-ping.bai@nxp.com> <20250304093127.1954549-2-ping.bai@nxp.com>
 <20250304131314.GA2441686-robh@kernel.org> <AS8PR04MB8642D20F0F5A7E8622A7685F87C82@AS8PR04MB8642.eurprd04.prod.outlook.com>
In-Reply-To: <AS8PR04MB8642D20F0F5A7E8622A7685F87C82@AS8PR04MB8642.eurprd04.prod.outlook.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 4 Mar 2025 08:53:41 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJd06AOJKXFiDq=rihFa7qWnLciBeHKCKwkRUfF7AJTMA@mail.gmail.com>
X-Gm-Features: AQ5f1JpxHqjc804-H4q0nUUAZsYT3JdBkeRI39RJP2dCndrM526cVcfcNMXQa1o
Message-ID: <CAL_JsqJd06AOJKXFiDq=rihFa7qWnLciBeHKCKwkRUfF7AJTMA@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: dma: fsl-edma: add
 interrupts-extended property
To: Jacky Bai <ping.bai@nxp.com>
Cc: "krzk+dt@kernel.org" <krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>, 
	"shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, 
	"kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "imx@lists.linux.dev" <imx@lists.linux.dev>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, Aisheng Dong <aisheng.dong@nxp.com>, 
	Peng Fan <peng.fan@nxp.com>, Frank Li <frank.li@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 4, 2025 at 8:40=E2=80=AFAM Jacky Bai <ping.bai@nxp.com> wrote:
>
> Hi Rob,
>
> > Subject: Re: [PATCH v2 1/4] dt-bindings: dma: fsl-edma: add
> > interrupts-extended property
> >
> > On Tue, Mar 04, 2025 at 05:31:24PM +0800, Jacky Bai wrote:
> > > Add interrupts-extended property for edma that has multiple interrupt
> > > controllers used.
> >
> > Did you try using interrupts-extended? No. Because either is supported =
by the
> > tools already.
> >
>
> We need to use interrupts-extended property for i.MX94 because for the ed=
ma's
> interrupts, some are connected to irqsteer interrupt controller and some =
are connected
> to the GIC. make dtbs_check report error, so I add this dt binding change=
s.
>
> Sorry, Which tools are you referring?

dtschema

The schemas specify 'interrupts' only. The dts files can use either
interrupts or interrupts-extended. If that doesn't work for you, it is
a bug in dtschema.

Rob

