Return-Path: <devicetree+bounces-313162-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id igxXMLwCM2o68gUAu9opvQ
	(envelope-from <devicetree+bounces-313162-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 22:25:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 53AA969C59D
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 22:25:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ERh2GKso;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313162-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-313162-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A5BCE3046723
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 20:25:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1B01380FC0;
	Wed, 17 Jun 2026 20:25:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0859397E8B;
	Wed, 17 Jun 2026 20:25:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781727927; cv=none; b=a+9qbn/o7OzMm1rFgc5ktPPQmd1Pq7ZTOUU6JITSjC11L71Lx1ae0nqT2PJb4xgRlM9tckENQ2m9YvHCLknc+/QTTIyg/7zQ4WZXHJtboy3ln/6735T2dRJnojzKzsLixvcN9ptNARuS7UjSoBxMxoZhtyChbJchnQhh3RVGwYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781727927; c=relaxed/simple;
	bh=6iej/hQl+0QYeiLQHxqYbBMPbJEyZ5TXZc78+bT7JuQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=oFSQ/ovG0r+w2ACXURO/6dee5Wg2gIbuZ5Bbsu43s8cZiLe68qq6roMFMy3iA2nPTtpwpkczZxPi+Lv3UEkr4Fmc2U17oo+DFf7WeHHye1Qiw5M9vcmBNJ+jnzqOEulCz03XOqwpjbBgvC5n0z/bjqnwEif8TfbKfyvxBcF+IPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ERh2GKso; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7DA651F00A3A;
	Wed, 17 Jun 2026 20:25:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781727926;
	bh=6iej/hQl+0QYeiLQHxqYbBMPbJEyZ5TXZc78+bT7JuQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ERh2GKsouxhE02ePsZAeiQN9yo7F9Lz5z0Qf2+2PY8tip73ti6S5lLws05OynCfJa
	 nFvf7z50qUIg4Ry1luogaFozal9GDL0/v8R+LB3uKkixMemOMAAK52Dzy84A6/Fukx
	 zYq8CyJhQ9w2YYccq4/+QnFBc8DmMyEUGb6OskHA+ku60cXeRSVZOKTmX4POeUZTF9
	 UlBBLd9zwbZh89TM0XmdOrt4YrkBTgeyzzI4dBiesWOKdTsucgbBN3r7mDBY9hrO2i
	 AOwmVoPGGbtQZ++Apse2qS3HyIObWVPK7q5ePNiesBNv2p0JkSq6Wkhbipjv+UlsER
	 O7rVocvYdByow==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 1/4] dt-bindings: pci: Strictly distinguish C0 from
 C1-C5
Reply-To: sashiko-reviews@lists.linux.dev
To: "Thierry Reding" <thierry.reding@kernel.org>
Cc: robh@kernel.org, devicetree@vger.kernel.org, linux-pci@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260617-tegra264-pcie-v7-1-eae7ae964629@nvidia.com>
References: <20260617-tegra264-pcie-v7-0-eae7ae964629@nvidia.com>
 <20260617-tegra264-pcie-v7-1-eae7ae964629@nvidia.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 17 Jun 2026 20:25:26 +0000
Message-Id: <20260617202526.7DA651F00A3A@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-313162-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp,nvidia.com:email];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:thierry.reding@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:linux-pci@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 53AA969C59D

> From: Thierry Reding <treding@nvidia.com>
>=20
> Instead of using the ECAM registers as the first entry, strictly make a
> distinction between C0 and C1-C5. This is needed because otherwise the
> unit address doesn't match the first "reg" entry. We also cannot change
> the ordering of these nodes to follow the ECAM addresses because that
> would put them outside of their "control bus" hierarchy since the ECAM
> address space is a global one outside of any of the control busses.
>=20
> Signed-off-by: Thierry Reding <treding@nvidia.com>

Sashiko has reviewed this patch and found no issues. It looks great!

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260617-tegra264-p=
cie-v7-0-eae7ae964629@nvidia.com?part=3D1


