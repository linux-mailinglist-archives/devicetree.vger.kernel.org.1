Return-Path: <devicetree+bounces-259635-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QFGLH0/Kd2lylAEAu9opvQ
	(envelope-from <devicetree+bounces-259635-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 21:10:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D0DC8CE95
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 21:10:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 668733008244
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 20:10:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 150062C0266;
	Mon, 26 Jan 2026 20:10:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=puri.sm header.i=@puri.sm header.b="KpLjCTdd"
X-Original-To: devicetree@vger.kernel.org
Received: from ms.puri.sm (ms.puri.sm [135.181.196.210])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD0B426299;
	Mon, 26 Jan 2026 20:10:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=135.181.196.210
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769458251; cv=none; b=UvndSJSz1eik59GyfXM27WJI5fgGb/SY9g0HsrGrT5vA6OxJW5wU2QNM5ToATvzCA0SKBID4sIKD2W35rClMfjX5b+AiKn4lTOcON+0aGwvBUAZOIGRUa1y6xxVkLbjfxeMXa9BqOFwaMpoXksqt68nlxAN9Ye+fl4CtT8Pyhnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769458251; c=relaxed/simple;
	bh=RdybJ+RhItlzNNAOTr267+9hICGF7MXvJl8utG+MmF4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=csb+e0nRKfEJKgHUNrX+xSzIeZofSFcSXnza4I3FwJUfajg4jSbw6+3wg5q6gWjf23/WSEmMFlqvr+6SJ0Z8jTaMdPdaOZQAVurEsLA4/7YAZH0gru+OwDchL/mfSQCQbv0FVs29MH5KuFHqUGHPyo8+4C7GCa0WtioZcV3gjF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=puri.sm; spf=pass smtp.mailfrom=puri.sm; dkim=pass (2048-bit key) header.d=puri.sm header.i=@puri.sm header.b=KpLjCTdd; arc=none smtp.client-ip=135.181.196.210
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=puri.sm
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=puri.sm
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=puri.sm; s=smtp2;
	t=1769458239; bh=RdybJ+RhItlzNNAOTr267+9hICGF7MXvJl8utG+MmF4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=KpLjCTddhsijq2oEtM+wJOTd6g9VSp70CIHBiklKsuY/lV5vPz4nxyzcz1wsI+NoI
	 1dIM+2hyjS2yUM+URsz9rXOwoY+wIQ6VhqezQwh+rN8Vuq1oZhAVEMRLTI9GEC6PZl
	 2QPW8GAyKxLqc44ar3zZW5W0o7xqHS3NOoOKKF5lvyogEi+X+EhKGWqd/DHWyo7Yxt
	 UYxnL1ciWY7KO9X3L4Yofht+AgwEGXzt/XIK+dze8WRUgqT8yH51gwvsFLLxtAmwjj
	 ZfN7hjhSJgfMgfskQT9Nxso/KmkVQQlf9JXmzN9JKtlHr9POMAnIEXISXbTIYmQ5DW
	 XULQEnq2sdcWQ==
Received: from pliszka.localnet (79.184.64.12.ipv4.supernova.orange.pl [79.184.64.12])
	by ms.puri.sm (Postfix) with ESMTPSA id 10A8C1FA2D;
	Mon, 26 Jan 2026 12:10:39 -0800 (PST)
From: Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>
To: Frank Li <Frank.li@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Conor Dooley <conor@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@puri.sm
Subject:
 Re: [PATCH] arm64: dts: imx8mq: Set the correct gpu_ahb clock frequency
Date: Mon, 26 Jan 2026 21:10:37 +0100
Message-ID: <8657865.DvuYhMxLoT@pliszka>
In-Reply-To: <aXevH8e+9qLhWO7D@lizhi-Precision-Tower-5810>
References:
 <20260124-imx8mq-gpu-ahb-clock-v1-1-11c2e7c857b7@puri.sm>
 <aXevH8e+9qLhWO7D@lizhi-Precision-Tower-5810>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[puri.sm,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[puri.sm:s=smtp2];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259635-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,puri.sm];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sebastian.krzyszkowiak@puri.sm,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[puri.sm:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[2.67.213.128:email]
X-Rspamd-Queue-Id: 8D0DC8CE95
X-Rspamd-Action: no action

On poniedzia=C5=82ek, 26 stycznia 2026 19:14:55 czas =C5=9Brodkowoeuropejsk=
i standardowy=20
=46rank Li wrote:
> On Sat, Jan 24, 2026 at 02:55:48PM +0100, Sebastian Krzyszkowiak wrote:
> > According to i.MX 8M Quad Reference Manual, GPU_AHB_CLK_ROOT's maximum
> > frequency is 400MHz.
>=20
> I checked datasheet
>=20
> Nominal mode=E2=80=94the maximum
> GPU frequency supported in
> this mode is 800 MHz.
>=20
> Does difference grade (industry vs consumer) impact max frequency?

No. That sentence relates to GPU_SHADER_CLK_ROOT, which can go up to 1000 M=
Hz,=20
but requires "overdrive mode" (higher voltage) when above 800 MHz. It's set=
 to=20
800 MHz in the device tree at the moment.

This patch changes GPU_AHB_CLK_ROOT, which has absolute maximum of 400 MHz=
=20
(see section 5.1.2 Table 5-1).

> Frank
>=20
> > Signed-off-by: Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>
> > ---
> >=20
> >  arch/arm64/boot/dts/freescale/imx8mq.dtsi | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >=20
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> > b/arch/arm64/boot/dts/freescale/imx8mq.dtsi index
> > 607962f807be..6a25e219832c 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> > @@ -1632,7 +1632,7 @@ gpu: gpu@38000000 {
> >=20
> >  			                         <&clk=20
IMX8MQ_GPU_PLL_OUT>,
> >  			                         <&clk=20
IMX8MQ_GPU_PLL>;
> >  		=09
> >  			assigned-clock-rates =3D <800000000>,=20
<800000000>,
> >=20
> > -			                       <800000000>,=20
<800000000>, <0>;
> > +			                       <800000000>,=20
<400000000>, <0>;
> >=20
> >  			power-domains =3D <&pgc_gpu>;
> >  	=09
> >  		};
> >=20
> > ---
> > base-commit: 24d479d26b25bce5faea3ddd9fa8f3a6c3129ea7
> > change-id: 20260105-imx8mq-gpu-ahb-clock-139ba9ca9a6c
> >=20
> > Best regards,
> > --
> > Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>





