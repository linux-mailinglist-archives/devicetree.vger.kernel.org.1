Return-Path: <devicetree+bounces-305689-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id cRJHA0jkHmrKYgAAu9opvQ
	(envelope-from <devicetree+bounces-305689-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 16:10:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E3462F2A6
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 16:10:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=iSDRf6QZ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305689-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-305689-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AA0813009B0C
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 14:00:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 663263BED18;
	Tue,  2 Jun 2026 14:00:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4881D20C00C
	for <devicetree@vger.kernel.org>; Tue,  2 Jun 2026 14:00:05 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780408806; cv=none; b=Wv6R32H2IcXfdxbzr2KSR5/Hx9h16hdpOzhew4kq/i4SjeZaeUkhuS5Qfzc3SKYeZw3ST2n9Ke71HAaRnaV+LNSOqb+Z2umwOeKmUwZxGluKXcBseYFOYpl4MQnsK9JIcneSuKLjD4aG0AMhiCkFd/eimoyejw4z/rjGrWkHpKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780408806; c=relaxed/simple;
	bh=CF9zqps47yhPY/cjbRY+mJ20hcCpypUmgqSU/e+ZgvM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=uZ9gEiINajrSPzA+IGF923yX/deoyC+1jSKqg2VrfRhc8OAQzKxj07mI5zDGqGK/aWu3lWe71Eo4qtBbGw9gg17L9ebIZK8dnbPbphUqPriShqGMPLQRUF09MD8Ciu3N8suH31eQLoAj01iTXHSnOwMeKiQUag1Ktg31oJ5AgcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iSDRf6QZ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B4D01F00893;
	Tue,  2 Jun 2026 14:00:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780408804;
	bh=S1W3NmHGqt/O5ZZLarZbn3e81GnYO5tZLmUEFiUH0YQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=iSDRf6QZsrjUAikCGxMrA58gn75rmw1wDHeBLqw+2SCwjO64m6vd7dzvSvsM6/B70
	 v4ZDnFhxUxd3aAtr/bPlb5tK86pyyP24jcZxF5Mzy5xvYYX5fZ27QkFZYs4YMm45bn
	 4m6P0+KnQTFZgzjca3pi8lnJYBr0Uliq7V/wDOuBJStg8oKBPUcq7vWTOEcgQk4L/h
	 BNK9635rkT6HKVrxsSlkcM93+J/2Xx6V0urVD89OgnIopq4BVGEL8NJtE1vfSkGZNL
	 iPR4S8P7Xy/75OPJxIfITDWxeUx3Ga1MbgVkOwbV4T0ZZvcLQoMbu80OTc1mJKQrZh
	 iZGvG/QJp44vA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 8/9] ARM: dts: aspeed: anacapa: Enable MCTP and FRU
 for NIC
Reply-To: sashiko-reviews@lists.linux.dev
To: "Colin Huang via B4 Relay" <devnull+u8813345.gmail.com@kernel.org>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260602-anacapa-devlop-phase-devicetree-v3-8-7c93c5df8d9b@gmail.com>
References: <20260602-anacapa-devlop-phase-devicetree-v3-8-7c93c5df8d9b@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 02 Jun 2026 14:00:04 +0000
Message-Id: <20260602140004.9B4D01F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-305689-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:devnull+u8813345.gmail.com@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,u8813345.gmail.com,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid,vger.kernel.org:from_smtp,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 56E3462F2A6

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] Incomplete implementation: missing MCTP and FRU enablement for t=
he Right Frontend NIC.
- [Medium] Undocumented removal of the `i2c-mux-idle-disconnect` property.
--

commit e274c5d6bfd9557e3fa26fe21930d08b6e1b3ec0
Author: Andy Chung <Andy.Chung@amd.com>

ARM: dts: aspeed: anacapa: Enable MCTP and FRU for NIC

Add the mctp-controller property to enable frontend NIC management
via PLDM over MCTP. Also add EEPROM device for NIC FRU and reorder
the I2C virtual bus index accroding to the system silkscreen index.

> diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa-evt1.dt=
s b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa-evt1.dts
> index 29df10697613a..5b6ce3c556fe2 100644
> --- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa-evt1.dts
> +++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa-evt1.dts

[ ... ]

>  // R Bridge Board
>  &i2c10 {
>  	status =3D "okay";
> +	multi-master;
> +	mctp@10 {
> +		compatible =3D "mctp-i2c-controller";
> +		reg =3D <(0x10 | I2C_OWN_SLAVE_ADDRESS)>;
> +	};
> =20
>  	i2c-mux@71 {
>  		compatible =3D "nxp,pca9548";
>  		reg =3D <0x71>;
>  		#address-cells =3D <1>;
>  		#size-cells =3D <0>;
> -		i2c-mux-idle-disconnect;

[Severity: Medium]
The commit message doesn't mention removing the i2c-mux-idle-disconnect
property.

While this is likely needed to allow asynchronous multi-master MCTP traffic
from endpoints, could the commit message document this topology change so
future maintainers don't inadvertently revert it?

> =20
>  		i2c10mux0ch0: i2c@0 {
>  			reg =3D <0>;
>  			#address-cells =3D <1>;
>  			#size-cells =3D <0>;
>  		};

[Severity: Medium]
The commit message mentions enabling MCTP and FRU for frontend NICs, and the
symmetrically equivalent left frontend NIC (i2c11mux0ch0) was updated, but
this right frontend NIC node was left unmodified.

Did we miss adding the mctp-controller property and FRU eeprom for this
channel?

[ ... ]

>  // L Bridge Board
>  &i2c11 {
>  	status =3D "okay";
> +	multi-master;
> +	mctp@10 {
> +		compatible =3D "mctp-i2c-controller";
> +		reg =3D <(0x10 | I2C_OWN_SLAVE_ADDRESS)>;
> +	};
> =20
>  	i2c-mux@71 {
>  		compatible =3D "nxp,pca9548";
>  		reg =3D <0x71>;
>  		#address-cells =3D <1>;
>  		#size-cells =3D <0>;
> -		i2c-mux-idle-disconnect;

[Severity: Medium]
Similarly here on the left bridge board, could we mention the removal of
the i2c-mux-idle-disconnect property in the commit message?

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260602-anacapa-de=
vlop-phase-devicetree-v3-0-7c93c5df8d9b@gmail.com?part=3D8

