Return-Path: <devicetree+bounces-263828-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sDguG9J9iWks+AQAu9opvQ
	(envelope-from <devicetree+bounces-263828-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 07:25:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A90BF10C046
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 07:25:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5631930071E3
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 06:25:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B08CA2EA173;
	Mon,  9 Feb 2026 06:25:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="MXWof2kq"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5292926C39E;
	Mon,  9 Feb 2026 06:25:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770618319; cv=none; b=GjxTmp0yIYpx63NiRk5eSiLwkXLKl+m1J/ankpHbrnl28XyqNiYeGriBedquprytiglHgCE3zuSxrPttzAUAChwPHnZ4riAJqt8kS9nv4Z49UXgpHCVU0QeqA/6J1jeIS2WPlQ8N9WqsL0Hvam9pC4K/s/6veXhDMbOw1iXuYbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770618319; c=relaxed/simple;
	bh=gOq/VRzNpr0oXWe7puPbnNaM4eHNE6VJeQVl/h7eLPo=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=DFPsfIdujQ7idh/eFdO0y1dk6iyGb9fwMxSWcxPVpC1ZR8+R2WuzoaAXqUlCaJtKOLoruzTolxyglCOvs8RcyabCbxT7tljgjzputsvnTaA5CDfyusuLjv4xrhyHxUw6CDM+X3hU6etobgCt8LzCTWVRKZjwrxN4hbZInDH/Mjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=MXWof2kq; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1770618317;
	bh=ar3F1SrcFnyPVG6bOtSIkfRJ2etxte/LoL65GWVjh94=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=MXWof2kqJdIPkCMc8mZqPulb9S9JC1cV/ocb9l1kp9btkGnEmlD+Nz3gC1ndKB2Cq
	 M2+I/vK2aHNX4mob/8BnKf6AC+joemHdoj8HHO5AKLxfK5VLU2EJIG/r3dSABGfz5/
	 LtvmOuHZeyFrRh963yLUjfbQpVqGqRzot0Ef5UsFAH8mPzNjd2HKspBuL0i/G9N8W6
	 jZjdFGwZU+WQUR/TC2+yjOIwAoMkhWOTTuDNr5q6bMMk6EFZyKSiKUTHWvsxnuvmSg
	 QTrCp50w3hLEf2C84BhnAtrbG84RmY0QREFLKW2OHnP85SDSh9aKikYHTKTfrMEZAj
	 qymy2AyvFNOXQ==
Received: from [192.168.68.117] (unknown [180.150.112.60])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id B3A84602DE;
	Mon,  9 Feb 2026 14:25:16 +0800 (AWST)
Message-ID: <963194a5e7e88ae8ae1fe367d34d2fcdc329d814.camel@codeconstruct.com.au>
Subject: Re: [PATCH v4 4/7] ARM: dts: aspeed: yosemite5: Add ipmb node for
 OCP debug card
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Kevin Tung <kevin.tung.openbmc@gmail.com>, Rob Herring
 <robh@kernel.org>,  Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Joel Stanley	 <joel@jms.id.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, Amithash
 Prasasd	 <amithash@meta.com>, Kevin Tung <Kevin.Tung@quantatw.com>, Ken
 Chen	 <Ken.Chen@quantatw.com>, Leo Yang <Leo-Yang@quantatw.com>, Jackson
 Liu	 <Jackson.Liu@quantatw.com>
Date: Mon, 09 Feb 2026 16:55:16 +1030
In-Reply-To: <20260130-yv5_revise_dts-v4-4-4d924455f3a7@gmail.com>
References: <20260130-yv5_revise_dts-v4-0-4d924455f3a7@gmail.com>
	 <20260130-yv5_revise_dts-v4-4-4d924455f3a7@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[codeconstruct.com.au,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[codeconstruct.com.au:s=2022a];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263828-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,jms.id.au];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.3:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@codeconstruct.com.au,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[codeconstruct.com.au:+];
	NEURAL_HAM(-0.00)[-0.988];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[codeconstruct.com.au:mid,codeconstruct.com.au:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.10:email]
X-Rspamd-Queue-Id: A90BF10C046
X-Rspamd-Action: no action

On Fri, 2026-01-30 at 16:20 +0800, Kevin Tung wrote:
> Add the device tree node to enable the IPMB interface used by

Here in the patch description you use (capitalised) "IPMB" but in the
patch subject you've used (uncapitalised) "ipmb". Can you please be
consistent and use capitalisation for acronyms.

I wouldn't normally mind and would just fix it up, but I've other
feedback on this series and have fixed the same problem a few patches
already today, so it's a growing source of irritation :)

Andrew

> the OCP debug card.
>=20
> Signed-off-by: Kevin Tung <kevin.tung.openbmc@gmail.com>
> ---
> =C2=A0arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts | 7 ++++=
+++
> =C2=A01 file changed, 7 insertions(+)
>=20
> diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts b=
/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
> index 983aebc394d9159c7e3db2e7c39e963f7b64c855..84d3731b17f7c7c87338672bb=
cc859de2b89b722 100644
> --- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
> +++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
> @@ -365,7 +365,14 @@ i2c6mux0ch3: i2c@3 {
> =C2=A0
> =C2=A0/* SCM CPLD I2C */
> =C2=A0&i2c7 {
> +	multi-master;
> =C2=A0	status =3D "okay";
> +
> +	ipmb@10 {
> +		compatible =3D "ipmb-dev";
> +		reg =3D <(0x10 | I2C_OWN_SLAVE_ADDRESS)>;
> +		i2c-protocol;
> +	};
> =C2=A0};
> =C2=A0
> =C2=A0&i2c8 {

