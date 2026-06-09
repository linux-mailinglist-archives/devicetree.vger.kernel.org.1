Return-Path: <devicetree+bounces-308776-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id F8zFIwDCJ2ql1gIAu9opvQ
	(envelope-from <devicetree+bounces-308776-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 09:34:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B40665D41C
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 09:34:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=BCSeMwc8;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308776-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308776-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 02BB230C461E
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 07:29:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 370C83DB655;
	Tue,  9 Jun 2026 07:29:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A0B3D8133;
	Tue,  9 Jun 2026 07:29:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780990170; cv=none; b=p+qgCftUKnrmhdBxe5/TFr5S7ONM2vk+TWeb8PTP6N123lxWSH2r27IGqe3X3zIQdBred5A1FJBM/vEFekbGcpL5ghIIg0/PkGGiYsUDPcMoBD8lHpnEVt+il+b2M+UaOXyl8PSrYXCemf9xR4q43+BrmqDPfKeL6uC7xGmlNig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780990170; c=relaxed/simple;
	bh=OfgtpsB02oaBrxeSv9R85Jh/So79y77Koq9Sgp7WRhY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=us+9F7j+ZKRWn7silEFyUD1LAiqKdUs2Vx1ebA4FPpRIEGeRHUoeR1X2zBPIxwG3YknGvnFWCTp1AUIcaawhkrhAVJHGwQQDi+38rS3oz65tGVn3aGIIcqZGHnc5kTGFNfA6ypwosjQn+LsRyobWIPv89ZRnuYINP9KDxRIGYt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BCSeMwc8; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 636751F00893;
	Tue,  9 Jun 2026 07:29:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780990168;
	bh=OfgtpsB02oaBrxeSv9R85Jh/So79y77Koq9Sgp7WRhY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=BCSeMwc8dMWoZyahAGAsF+YB6fw/OSwLHok7ydOYVnCm3DUd0RhNlYB7U273FNihf
	 sIadXVgwdkE0qcZSAWPj4ZZDrJuTYpKSH4wBIBKlGVseOQJr0C6/fMEtGMtYSsnhkN
	 6zvmU97HqFCjHcV+tltefUSMRQKP4CwoKo7Xga3w2fSPm1/D9QCxQo3SVsPAKMZcHk
	 gyjCOtJaGBWwCb0B3h0pH9FMkqteIYlWC4IG79EsMltZazK6iQQ/aVM+c/MNg6Nkxy
	 R8WDA9WYA3Kt47kW9U+GqxZqDnTO9V12xAVYTNqFdm34r8/w1g0SyLm8StMOdhGWuV
	 u8Qc0a5m93h4g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 1/3] dt-bindings: hwmon/pmbus: Add Infineon xdp730
Reply-To: sashiko-reviews@lists.linux.dev
To: "ASHISH YADAV" <ashishyadav78@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, linux-hwmon@vger.kernel.org
In-Reply-To: <20260609072231.15486-2-Ashish.Yadav@infineon.com>
References: <20260609072231.15486-2-Ashish.Yadav@infineon.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 07:29:27 +0000
Message-Id: <20260609072928.636751F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-308776-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:ashishyadav78@gmail.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:linux-hwmon@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1B40665D41C

> From: Ashish Yadav <ashish.yadav@infineon.com>
>=20
> Add documentation for the device tree binding of the XDP730 eFuse.
> Rename node to efuse to accurately reflect its hardware function.
>=20
> Signed-off-by: Ashish Yadav <ashish.yadav@infineon.com>

Sashiko has reviewed this patch and found no issues. It looks great!

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609072231.1548=
6-1-Ashish.Yadav@infineon.com?part=3D1


