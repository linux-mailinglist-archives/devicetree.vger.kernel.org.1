Return-Path: <devicetree+bounces-324740-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FvN1Kn7dUWoGJwMAu9opvQ
	(envelope-from <devicetree+bounces-324740-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 08:06:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E460740851
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 08:06:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=JcbUf8BK;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324740-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-324740-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 44AD6301FFD5
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 06:06:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 946E73264F6;
	Sat, 11 Jul 2026 06:06:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E95C3264D0;
	Sat, 11 Jul 2026 06:06:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783750005; cv=none; b=dBC0NgHD8/KDyCyZx0W04u/SLjxh8WFPFjtbMqt4KyYQBNcujxpwwI9n9kiPXRCmCNRxW3C6r5PPrpX0nIUPCwosbX2F01WxL9P4UhNl7DtpIj/fi1Z4/sGV2s9w6Nv1d4ZdxAlumJsn1RaYgw/u8AUZpi9y6G0jD0uatEA1dHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783750005; c=relaxed/simple;
	bh=AScS5Hu9MhskSZVYZ+wkLIepGShss4ol+Q0/xHE6sXw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=hjlf2a+/5VZBkFYIf8/JSo6CLvEinXZLLHCsp6zG6nc5YNB6poYlNuie8saspdAmyaGy73DWwbsEwJqRHp3sGESRV3dod4yG4EMnVqjYPdMcK1fQ8ogpcBEEkgTy1yjeHkym+Kg10o8iIw4UR0SR030uUsWbUuusilduPxjZ5/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JcbUf8BK; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0CC41F000E9;
	Sat, 11 Jul 2026 06:06:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783750004;
	bh=AScS5Hu9MhskSZVYZ+wkLIepGShss4ol+Q0/xHE6sXw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=JcbUf8BKqR6V04qGks4ExkRAp7s/TnN02xCc6a/G3D2joCiHHbE3vvaRdAqBX486G
	 ZLbednDl50kSPsdrYn0J9LdNWBMlKS3OruJb9MNfxx1xqMGxB7YdxIqbdsGRI7rqin
	 xZLI3oHGnkLNTOgDgrFo0aJgv4JCpYO5WhuJ7yL7qtW7c6Jh2f1+tdHgl4A69Cki+1
	 qI5Ki+YZcx76evokg0TcYxtEpNotxYXpe5ex5IxQor3Phokx+vF9QQxFygViRVjcT4
	 E5hWx+WO7Qjepes3jc2bZwA4mjIJvzk1sT7ISGQXFKzi4aqITml7DGjbl21saLQ5Gy
	 Xb37DGfFDiTWA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 05/16] arm: dts: omap3pandora: Don't use DMA channels
 for unused SPI masters
Reply-To: sashiko-reviews@lists.linux.dev
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, mfd@lists.linux.dev, dri-devel@lists.freedesktop.org, robh@kernel.org, lee@kernel.org
In-Reply-To: <129b1ff8e73235c74ac66dab9041672190065785.1783749722.git.hns@goldelico.com>
References: <cover.1783749722.git.hns@goldelico.com>
 <129b1ff8e73235c74ac66dab9041672190065785.1783749722.git.hns@goldelico.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 11 Jul 2026 06:06:42 +0000
Message-Id: <20260711060643.C0CC41F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-324740-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:hns@goldelico.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:mfd@lists.linux.dev,m:dri-devel@lists.freedesktop.org,m:robh@kernel.org,m:lee@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sashiko.dev:url,riseup.net:email,goldelico.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3E460740851

> From: Grond <grond66@riseup.net>
>=20
> On the pandora, only McSPI1 (spi0) is actually used. Because the device
> tree defaults in arch/arm/boot/dts/omap3.dtsi leave all of the mcspi
> interfaces enabled, the DMA channels which the device tree assigns to them
> cannot be used for anything else. This is a problem because OMAP3's sDMA
> controller can only have 32 DMA channels configured at any one time.
>=20
> So when we try to use (for example) the McBSP subsystem (which is required
> for sound) it doesn't work because we've already exhausted our available
> DMA channels.
>=20
> Fix this by disabling mcspi[2-4] on the pandora device tree.
>=20
> Signed-off-by: Grond <grond66@riseup.net>
> Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>

Sashiko has reviewed this patch and found no issues. It looks great!

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1783749722.gi=
t.hns@goldelico.com?part=3D5


