Return-Path: <devicetree+bounces-271696-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0LKHBLjTqWl3FwEAu9opvQ
	(envelope-from <devicetree+bounces-271696-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 20:04:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE93217350
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 20:04:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DCCFE307A0A0
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 19:04:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A66C2F616A;
	Thu,  5 Mar 2026 19:04:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=svanheule.net header.i=@svanheule.net header.b="7xp6uLN/"
X-Original-To: devicetree@vger.kernel.org
Received: from polaris.svanheule.net (polaris.svanheule.net [84.16.241.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D0262C08BB
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 19:04:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=84.16.241.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772737460; cv=none; b=hPB/xeW4Cy8qedIFewdaX1lh3o7UcyQIdQ+o5Wht9ByepUqgqMeiD5C6Mxzr7XaJ33PIQB8HSA/1JBlqFsUujVHbUT2g2AI8dYQIyioHBj7LDi8zi7hu9ME5CUEHEpGkUYrGVsXc5e9nw3dYOmDhC5Ijv98HI+T2ZzFZE1ULEdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772737460; c=relaxed/simple;
	bh=0cMkxm7dpZ1xmN+oxuhZ+J5McF8TzcD3plfxWOZH13E=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=co6hPNzVqkm/E12uwB4l8mOREc7PPA5VSYZVTBUKbGx0sJ9BZObLF0dG7DsOmdt+wg2jzRF97+bSsLYnapdfZU7WKgKoEr7JyDHl56D4BdrbVFIrz5lPooIP1if7R9kLs2qngzwf4xK2DaJwMGmmPXu8XVY4GFEzEwPA4R8AtHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=svanheule.net; spf=pass smtp.mailfrom=svanheule.net; dkim=pass (2048-bit key) header.d=svanheule.net header.i=@svanheule.net header.b=7xp6uLN/; arc=none smtp.client-ip=84.16.241.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=svanheule.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=svanheule.net
Received: from [IPv6:2a02:1812:162c:8f00:19d9:5e35:1cd7:5d5d] (2a02-1812-162c-8f00-19d9-5e35-1cd7-5d5d.ip6.access.telenet.be [IPv6:2a02:1812:162c:8f00:19d9:5e35:1cd7:5d5d])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	(Authenticated sender: sander@svanheule.net)
	by polaris.svanheule.net (Postfix) with ESMTPSA id 2DCB96F2F33;
	Thu,  5 Mar 2026 20:04:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=svanheule.net;
	s=mail1707; t=1772737455;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=t3JlO9jkrcoFYhcSoRZPlkrxeap+txhaWKtFXzrqp/A=;
	b=7xp6uLN/2jgIUVF5DrHjwCUicbxEi0UEnH2lixV/dH25/QbVJvZXlfZbsp+3N+53JExDmR
	A20VQypE3lHos49PcaVXLjGIIQDc+IvX0z5VQifjp86+pX2IPZfziBeaRh4Ec6n5CJuzDr
	HKvy9VVdLHvjG7X4ZTEEaOCDfEuhPXSyQmLfSR/TFpVLcvcCcQZHiXUcFpOgdJrfIwtUUw
	UcgGHC4FEUxgiZwZ3fXnaV5b68Mn0te3A49nsXV8ASBINHWt2PiXqdMSuS8aPL5JahbAff
	vT22eHH2UZQcIHcrKvamcGAY3HaDJFlFVNzpC5gPmhsrfE4gxyi65jGqS7l9jA==
Message-ID: <f92a2a8558ebff7a145ece97c2bc44f1f7aafd26.camel@svanheule.net>
Subject: Re: [PATCH 2/2] gpio: realtek-otto: add rtl9607 support
From: Sander Vanheule <sander@svanheule.net>
To: Rustam Adilov <adilov@disroot.org>, Linus Walleij <linusw@kernel.org>, 
 Bartosz Golaszewski
	 <brgl@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Bert Vermeulen
	 <bert@biot.com>, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Date: Thu, 05 Mar 2026 20:04:14 +0100
In-Reply-To: <20260305161106.15999-3-adilov@disroot.org>
References: <20260305161106.15999-1-adilov@disroot.org>
	 <20260305161106.15999-3-adilov@disroot.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.3 (3.58.3-1.fc43) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 3EE93217350
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[svanheule.net,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[svanheule.net:s=mail1707];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271696-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[svanheule.net:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sander@svanheule.net,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,disroot.org:email,svanheule.net:dkim,svanheule.net:mid]
X-Rspamd-Action: no action

Hi,

On Thu, 2026-03-05 at 21:11 +0500, Rustam Adilov wrote:
> The RTL9607C SoC has support for 3 GPIO banks with 32 GPIOs each and
> the port order is reversed just like in RTL930x.
>=20
> Signed-off-by: Rustam Adilov <adilov@disroot.org>
> ---
> =C2=A0drivers/gpio/gpio-realtek-otto.c | 4 ++++
> =C2=A01 file changed, 4 insertions(+)
>=20
> diff --git a/drivers/gpio/gpio-realtek-otto.c b/drivers/gpio/gpio-realtek=
-
> otto.c
> index 4cf91528f547..5e3152c2e51a 100644
> --- a/drivers/gpio/gpio-realtek-otto.c
> +++ b/drivers/gpio/gpio-realtek-otto.c
> @@ -351,6 +351,10 @@ static const struct of_device_id realtek_gpio_of_mat=
ch[]
> =3D {
> =C2=A0	{
> =C2=A0		.compatible =3D "realtek,rtl9310-gpio",
> =C2=A0	},
> +	{
> +		.compatible =3D "realtek,rtl9607-gpio",
> +		.data =3D (void *)GPIO_PORTS_REVERSED,
> +	},
> =C2=A0	{}
> =C2=A0};
> =C2=A0MODULE_DEVICE_TABLE(of, realtek_gpio_of_match);

If I'm not mistaken, this SoC has a MIPS InterAptiv CPU like the RTL931x So=
C
series. Were you able to validate that the interrupts are functioning as
expected?

Best,
Sander

