Return-Path: <devicetree+bounces-266464-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GN1ODBvvlWlTWwIAu9opvQ
	(envelope-from <devicetree+bounces-266464-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 17:55:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 84666157F03
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 17:55:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 38DCA3007E1E
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 16:55:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C47E34404E;
	Wed, 18 Feb 2026 16:55:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="j3jEk18P"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay47-hz3.antispameurope.com (mx-relay47-hz3.antispameurope.com [94.100.134.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5603230DD36
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 16:55:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.236
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771433752; cv=pass; b=c+GSKcPHjILqXZkR3tFrqzRj2KfwxPID8clgvgrp8imguSFykMrrxQtdeAZm+hU4NsyVahXQRFwp3Tklgna5sOgLHxy72pBwHQof9cwsSylee2sKViXyM0yyFQ7kdrgMYpm+LQUziealMRdpVlhkZcCYmOIUg9JUPulff0xERug=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771433752; c=relaxed/simple;
	bh=LIA1iPf8eu3eUq9e0LC3p3qbdK1v2xt89TX/NApYVd8=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=akzOiCyTt5PDNuIWTuejpbsYyp5Vf/mQ1cbAhOq/SxqMwmugt8uQl5DKZbQZ6MQwtyi+tvHsmN5bNPvNT/+YVXvmoXfALWYJMu6qfrmMiCP78MYYSMxzauEhnz7h7gfHCVlmEP9rJK9/XsLKp3tlwYoajIoPc5ThxSyXasUesEw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=j3jEk18P; arc=pass smtp.client-ip=94.100.134.236
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate47-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out01-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=P50MVxpm4pNCgyiT7F46O0s8JVX58z0BCx7mjjXCMvc=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1771433722;
 b=cY2xTM4UA8uR0tm+97Z3PTPlvkTgH1K2kliJZuWk+DodpBuio5+a6Qiwa72+BrzsQg3pFPRv
 kH9iLLzN4xH7e9GOA+l7BkVCEyWaLPjndkaOulmMmQqh2CP5roXB/IuCVEm42/JhoXDep9Awlpn
 j2Sj3OdC16qv1vk8wXaCncWYyKS63FKiG+RijlNJ/LkyIGI+av0vpoaLZX9zs4UgTu4Lce/asm1
 ZHDOYbHBUUB0WVnFadWw/hyQdIFN4SJNsJS5BGoLZZQKpSYuXXoYqM2g+tNpMV4RAb4ZKna286I
 VlEMlU/pQwkUSFCn0X9w1yewJ05ourUikriCCBsjUDzxw==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1771433722;
 b=GTGtOh0dOnd6UYGyoD28eORb7zMeI+ds0NO8xdJJ4LjdeVCqJWqzxFH/KuNSxWUoZSXy7v9Q
 J4H4PUMYD4ybCgsdnUXayBT50xxDyoyo0cp8o7UzZbkTpuMbAzYBQgtvsGB1LeKO856fuDDfXhB
 reQ3lm4FAhDIggavMg7Wjhg1Ua/B5efEyh9yCJyG60IJsHODQnAmw9LzBsQhoSRsw6T/UgzPyKe
 uDobCNSGVLN92eKfZ7DWwR4nYoKmBj4ypiURIwtNJ9XFOX0CzLpr5vLFBVwPgk1Ue5Oz8GkroHb
 JoVCvfHps1J6UzhS1/OuZ3UndOi1Mocy+VAhfAA2YoMTw==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay47-hz3.antispameurope.com;
 Wed, 18 Feb 2026 17:55:21 +0100
Received: from 10.1.31.92 (unknown [10.1.31.92])
	(Authenticated sender: alexander.feilke@ew.tq-group.com)
	by smtp-out01-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 793C9A403D9;
	Wed, 18 Feb 2026 17:55:14 +0100 (CET)
From: =?utf-8?q?alexander=2Efeilke=40ew=2Etq-group=2Ecom?= <alexander.feilke@ew.tq-group.com>
In-Reply-To: <aZXr_r1VEx5kcl7g@lizhi-Precision-Tower-5810>
Content-Type: text/plain; charset="utf-8"
X-Forward: 127.0.0.1
References: <20260218135415.204974-1-Alexander.Feilke@ew.tq-group.com>
 <20260218135415.204974-4-Alexander.Feilke@ew.tq-group.com> <aZXr_r1VEx5kcl7g@lizhi-Precision-Tower-5810>
Date: Wed, 18 Feb 2026 17:55:14 +0100
Cc: "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Sascha Hauer" <s.hauer@pengutronix.de>, "Pengutronix Kernel Team" <kernel@pengutronix.de>, "Fabio Estevam" <festevam@gmail.com>, linux@ew.tq-group.com, devicetree@vger.kernel.org, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
To: "Frank Li" <Frank.li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <19f328-6995ef00-67-b89a9f0@203920772>
Subject: =?utf-8?q?Re=3A?= [PATCH 3/3] =?utf-8?q?ARM=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_imx7-mba7=3A?= disable =?utf-8?q?boot=5Fcfg?= pins after boot
User-Agent: SOGoMail 5.12.1
Content-Transfer-Encoding: quoted-printable
X-cloud-security-sender:alexander.feilke@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.feilke@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay47-hz3.antispameurope.com with 4fGN0y6h0Cz4MQYG
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:6f2a51003bcaff58264e8b6e95e66ea6
X-cloud-security:scantime:2.494
DKIM-Signature: a=rsa-sha256;
 bh=P50MVxpm4pNCgyiT7F46O0s8JVX58z0BCx7mjjXCMvc=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1771433721; v=1;
 b=j3jEk18PabT/bV5RY/Bp1Ot5WyyoUU3lmWXO+0Iw2SZmEFWHuzFTOtsaVrSG0Cyu27FYcdX9
 XGQs/6ayrpFraVaLJMuq0+CbCAy6GsSPgBL23ywCITRYWvSp914eaK6oNYTUPwEaHSyMqsnTuTh
 X8CX5RwVFYBRyKEmrrRnd3zLKVBdfbA63w+6fkawgvq5U3+J8zOMkeEFWGSKdt+1h+I0/3YKA+b
 Bz5uABxOp6PlhgTU4l/tsnNJX+uBgwq2vSoqkLioWmdoZUkQX0cDVIwEiiCGXyj5i7/8RWSpdr0
 Rk646BBrWUMjUtC0SGv4msi4CYPk+ru3g6wc2p/PQ5DiQ==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.24 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	SUBJ_EXCESS_QP(1.20)[];
	FROM_EXCESS_QP(1.20)[];
	FROM_DN_EQ_ADDR(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266464-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,gmail.com,ew.tq-group.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FROM_NEQ_ENVFROM(0.00)[alexander.feilke@ew.tq-group.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 84666157F03
X-Rspamd-Action: no action

On Wednesday, February 18, 2026 17:42 CET, Frank Li <Frank.li@nxp.com> =
wrote:

> On Wed, Feb 18, 2026 at 02:54:14PM +0100, Alexander Feilke wrote:
> > The BOOT=5FCFG pins are located on the LCD bus on our starterkit.
> > Disable them after boot to separate those signals.
>=20
> Your comments is more clear.  Is below commit massage better?
>=20
> ARM: dts: imx7-mba7: Deassert BOOT=5FEN to separate BOOT=5FCFG circui=
ts after boot
>=20
> Deassert BOOT=5FEN after boot to separate BOOT=5FCFG circuits from LC=
D signals.
>=20
> Frank

Agreed. I can send an updated patch if the rest seems ok


