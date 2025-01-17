Return-Path: <devicetree+bounces-139315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB16A15111
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 14:57:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EFFAE3AA119
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 13:57:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E1A91FF7B8;
	Fri, 17 Jan 2025 13:57:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="ost0p2Tm"
X-Original-To: devicetree@vger.kernel.org
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F0D51F957;
	Fri, 17 Jan 2025 13:57:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737122242; cv=none; b=uIE56gZDB7CyMrvUpnSJ+SIMAjAc7uG+jdO8kNCDrCkWZ9C4IDm6oT/x2rRdZeLlH0wE+2jOwefEtd2IH8xdHo1xr8H86roHpFxQK07T4hjXnd7Sr/Hg9nW9jO9jsTdIjXWEHdNUmCQCFd8sDQqRZsfe8dB6HFxtzff51PyLV8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737122242; c=relaxed/simple;
	bh=HTuMbGwg5wC8oNQaRRtDPoFw2V5z8LkSUFoFIx3MHzU=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=EQwI4AHxyly0WnyiGixr0hkd1WxCndS1Onje6DFQDqHoSMqJazZ41sGf3pTzoeR0TjCA6M6F89Xk3DXtqaHbTWBx96A3klYUsyup14yIBvFyyGD6iztNA/m/Zy0rMinOj0ce6RxxDXSKitulFy49iAi5DVM7hlBOFh8nNIsH93U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=ost0p2Tm; arc=none smtp.client-ip=217.70.183.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 95DB31BF206;
	Fri, 17 Jan 2025 13:57:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1737122232;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=DxYNvk4ej7DFKEzKAcMzFEWOleVMn09tO5mognpjT94=;
	b=ost0p2TmRA+MF0h4pujT7AecLP8WcpeODe0nd5iBmUFGgkXNRzuVjrBtdrA5m9bkQb5LFr
	z0E+KwGs/YfIJvx3CGidXc/lRGQZpwB9P08l16WCx1fI5mGP7nmHrSgYMrz7lop5uKfOPH
	1HBXuUZdASWIXsb03wbJxh/RkchEhY/E6t+8Iac0Zw5pxWql7vJSJrqY/ph3hWZvFfCoQ0
	3IImaxmVXrdxK63VvzxJvEOA00i57j/vttuNLvA/bFov0vIo2i4HfbA2C+Y9cEsShO5WJB
	BnORS0glED5Y5ie0kQ05tX1YX+xTzJihufLJW5nB4ZAbboEeUnIPBbOKNUavdg==
Date: Fri, 17 Jan 2025 14:57:10 +0100
From: Kory Maincent <kory.maincent@bootlin.com>
To: Mark Brown <broonie@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, Oleksij Rempel
 <o.rempel@pengutronix.de>, kernel@pengutronix.de
Subject: Re: [PATCH v2 0/2] Add support for power budget
Message-ID: <20250117145710.36ab4cc9@kmaincent-XPS-13-7390>
In-Reply-To: <b1ab3115-e84f-4b17-bda2-c76666ba6ac3@sirena.org.uk>
References: <20250115-feature_regulator_pw_budget-v2-0-0a44b949e6bc@bootlin.com>
	<20250117130936.5a6b3d3e@kmaincent-XPS-13-7390>
	<b1ab3115-e84f-4b17-bda2-c76666ba6ac3@sirena.org.uk>
Organization: bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-GND-Sasl: kory.maincent@bootlin.com

On Fri, 17 Jan 2025 13:48:54 +0000
Mark Brown <broonie@kernel.org> wrote:

> On Fri, Jan 17, 2025 at 01:09:36PM +0100, Kory Maincent wrote:
> > On Wed, 15 Jan 2025 15:41:56 +0100 =20
>=20
> > > In preparation for future support of PSE budget evaluation strategy a=
nd
> > > power management, we need the power budget value of the power supply.=
 =20
>=20
> > Is there hope this will be merged before the merge window? =20
>=20
> Please don't send content free pings and please allow a reasonable time
> for review.  People get busy, go on holiday, attend conferences and so=20
> on so unless there is some reason for urgency (like critical bug fixes)
> please allow at least a couple of weeks for review.  If there have been
> review comments then people may be waiting for those to be addressed.
>=20
> Sending content free pings adds to the mail volume (if they are seen at
> all) which is often the problem and since they can't be reviewed
> directly if something has gone wrong you'll have to resend the patches
> anyway, so sending again is generally a better approach though there are
> some other maintainers who like them - if in doubt look at how patches
> for the subsystem are normally handled.

Ok, dully noted! Sorry for the noise!

Regards,
--=20
K=C3=B6ry Maincent, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

