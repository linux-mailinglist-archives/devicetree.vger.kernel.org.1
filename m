Return-Path: <devicetree+bounces-139277-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D2318A14F07
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 13:09:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EE2317A0887
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 12:09:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78D7B1FE45E;
	Fri, 17 Jan 2025 12:09:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="JmC0bgxz"
X-Original-To: devicetree@vger.kernel.org
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B581FC7F4;
	Fri, 17 Jan 2025 12:09:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.199
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737115781; cv=none; b=cw8nL2Bi/tfJvu9ymYQnEt4PBm4/7HhhQk1XJ+idvRUtu2eTZfIjMYDwZ07DkBQjX4rj5EnCrthSpSdnZQlfgs0KTdnQbhyfwOn7c6h3izgNmX3m/vknREXvrQpqtQiVLis5wBWfJZfJnRKWSEYmBgIznJeyEligPEjvHVDIDW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737115781; c=relaxed/simple;
	bh=Vnca4a+Ak7OzZ5U8yGynniRcqoiGICGBJW1igzmpixw=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=mExuDCnJI9LulkeE1u0gSe2Pv5XiN+ARayOc5dD5YbZa8BNPDIp+d/u6GJ7NnUJ96heqXUyIRSCmH2TD3PFpPXIqpxchmotl5eDYk13l78Zn3Kator6cg/ubiwoFKhq9vTgo1xobDBvuyYXZwGEv8buKtbK7adDM6DK9uNhAsSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=JmC0bgxz; arc=none smtp.client-ip=217.70.183.199
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 456F6FF804;
	Fri, 17 Jan 2025 12:09:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1737115777;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Vnca4a+Ak7OzZ5U8yGynniRcqoiGICGBJW1igzmpixw=;
	b=JmC0bgxzTN5QJZugt4B1LV4szxHahNfrlt7T4F6XDz9JtSh225EYn6sb0zlz8JZffHMWnu
	TYpBeQci5OHQt/H7yILVgdv93AiRGfioFPClZVh9/pz357ZIO0YxvnowGfFLq1aBtmJLo6
	MDROJ2vKLjWKr6tncamGe+lw1ETV28cBNr2U/VqxDXtV6mhCSs7QFsi3wwJ7R3ZamQBep0
	0BRNdZ9j30/vMtZlil9ASvwOZP5XcyMRhtJ3UL1ZOhsWDegjZfjGtGNZnKxLBseNL+hV1Q
	nJepLfsMc4Heer/BKUVEd44gLBfuhbEF7F5j/GaoI1J+c3uMU/x6Rq7I7cRFOg==
Date: Fri, 17 Jan 2025 13:09:36 +0100
From: Kory Maincent <kory.maincent@bootlin.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, Oleksij Rempel
 <o.rempel@pengutronix.de>, kernel@pengutronix.de
Subject: Re: [PATCH v2 0/2] Add support for power budget
Message-ID: <20250117130936.5a6b3d3e@kmaincent-XPS-13-7390>
In-Reply-To: <20250115-feature_regulator_pw_budget-v2-0-0a44b949e6bc@bootlin.com>
References: <20250115-feature_regulator_pw_budget-v2-0-0a44b949e6bc@bootlin.com>
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

On Wed, 15 Jan 2025 15:41:56 +0100
Kory Maincent <kory.maincent@bootlin.com> wrote:

> In preparation for future support of PSE budget evaluation strategy and
> power management, we need the power budget value of the power supply.
>=20
> This addition allows the regulator to track the available power
> budget, which will be essential for prioritizing ports when
> making power allocation decisions.
>=20
> The related budget evaluation strategy patch series sent:
> https://lore.kernel.org/netdev/20250104161622.7b82dfdf@kmaincent-XPS-13-7=
390/T/#t

Hello,

Is there hope this will be merged before the merge window?

Regards,
--=20
K=C3=B6ry Maincent, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

