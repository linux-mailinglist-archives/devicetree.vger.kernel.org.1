Return-Path: <devicetree+bounces-272858-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0P4+FcCsrmnMHgIAu9opvQ
	(envelope-from <devicetree+bounces-272858-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 12:19:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CE382237C62
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 12:19:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0488A30579D3
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 11:14:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43E2F396D0B;
	Mon,  9 Mar 2026 11:14:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132723988EC
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 11:14:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773054898; cv=none; b=uSOXxhnII81m+FVrpLtt4Fx/GbRbRltAF55jr6ocykYo/qXn4z8WauNPWN7RzU6hb53XV75CrPjbzP0dWHecLvLArbUifb+ZrJ/0WUqRHmMCiFkG+3jjh3Abh6R94Ns36sew339SSkjWMk+WmE6+NeUv0ghxUJZwYQY7OtTCITQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773054898; c=relaxed/simple;
	bh=STQMgFVYRYP12xCb1WeGkN5dlsxB78HEBgUtiTX0kok=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=GAPIrqyNOD1lYHMqIRGwoLxn0U95w0zoabu7EowfYp9tjQCR7I9MQ6hJ9aKmJBQOuzt1cUBnOtGq+Imu18FZA+8TBcJUHABpsw7CQrpOM9WZU/YUrLMP53jxt0JRouOC0wPVPqs8QFcl0BJP2d7Mn3Ne7QSACvzcewp2aZ6sRjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vzYZJ-0002Gl-Um; Mon, 09 Mar 2026 12:14:37 +0100
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vzYZH-004WOQ-0i;
	Mon, 09 Mar 2026 12:14:36 +0100
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vzYZI-000000007rl-1w15;
	Mon, 09 Mar 2026 12:14:36 +0100
Message-ID: <03d1bb1e0f73b4718900902122ef2dc97cb668c8.camel@pengutronix.de>
Subject: Re: [PATCH v4 02/10] reset: eyeq: Add EyeQ7H compatibles
From: Philipp Zabel <p.zabel@pengutronix.de>
To: =?ISO-8859-1?Q?Beno=EEt?= Monin <benoit.monin@bootlin.com>, Vladimir
 Kondratiev <vladimir.kondratiev@mobileye.com>, Gregory CLEMENT
 <gregory.clement@bootlin.com>,  =?ISO-8859-1?Q?Th=E9o?= Lebrun	
 <theo.lebrun@bootlin.com>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Michael Turquette	 <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Paul Walmsley	 <pjw@kernel.org>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou	 <aou@eecs.berkeley.edu>, Alexandre Ghiti
 <alex@ghiti.fr>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Tawfik Bayouk
	 <tawfik.bayouk@mobileye.com>, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-mips@vger.kernel.org, Sari Khoury
	 <sari.khoury@mobileye.com>
Date: Mon, 09 Mar 2026 12:14:36 +0100
In-Reply-To: <20260304-clk-eyeq7-v4-2-9d6bd9d24bec@bootlin.com>
References: <20260304-clk-eyeq7-v4-0-9d6bd9d24bec@bootlin.com>
	 <20260304-clk-eyeq7-v4-2-9d6bd9d24bec@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Rspamd-Queue-Id: CE382237C62
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272858-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[p.zabel@pengutronix.de,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.056];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pengutronix.de:mid,pengutronix.de:email,bootlin.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,mobileye.com:email]
X-Rspamd-Action: no action

On Mi, 2026-03-04 at 16:25 +0100, Beno=C3=AEt Monin wrote:
> Add support for the reset controllers found in the EyeQ7H OLB. For
> this, three new types of reset domain are added to the driver.
>=20
> The EQR_EYEQ7H_ACRP reset domain is similar to the EQR_EYEQ5_ACRP domain,
> sharing the same register address calculation but featuring a different
> register layout. When writing to the register, MBIST bits are set to
> zero to ensure normal device operation.
>=20
> The EQR_EYEQ7H_CFG reset domain is similar to the EQR_EYEQ5_PCIE domain,
> with two bits per device instead of one. These two bits, clock enable and
> nreset, are kept in sync when asserting and deasserting the device reset.
>=20
> The EQR_EYEQ7H_ACC reset domain is similar to the EQR_EYEQ6H_SARCR domain=
,
> with a different registers layout and no busy waiting.
>=20
> Alongside these new reset domains, add EQR_NB_DOM_TYPES at the end of the
> eqr_domain_type enumeration and use it to declare the eqr_timings array.
> This ensures that we have the expected number of entries when using the
> timings in eqr_busy_wait_locked().
>=20
> Add and order the auxiliary_device_id entries in eqr_id_table.
>=20
> Originally-by: Sari Khoury <sari.khoury@mobileye.com>
> Signed-off-by: Beno=C3=AEt Monin <benoit.monin@bootlin.com>

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

and, since this depends on patch 1,

Acked-by: Philipp Zabel <p.zabel@pengutronix.de>

to be merged with the rest of the series.

regards
Philipp

