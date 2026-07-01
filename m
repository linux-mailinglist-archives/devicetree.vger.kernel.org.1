Return-Path: <devicetree+bounces-318356-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DeegILTyRGop3woAu9opvQ
	(envelope-from <devicetree+bounces-318356-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 12:57:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E7026EC703
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 12:57:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Kw03Nnrf;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318356-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-318356-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C8D4730034B8
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 10:57:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73BA9426EB2;
	Wed,  1 Jul 2026 10:57:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B13E3EFD37;
	Wed,  1 Jul 2026 10:57:46 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782903469; cv=none; b=W78Jx9kIHJCxULEE0zIWc+0KHiJ0/H7Ez2urnEOZBbPIm3q7M2gvqREIrXD8lW8A8aIqCaH4fMvNksuB0LS3FxPvdB57+fz//Yhr5mVX++TxI/v9u0MuImm8DjzqisL6KetFNMOQ8WCz+wbcTFEwTYMcAvONgStqo4ooje+xsoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782903469; c=relaxed/simple;
	bh=yWtNQHCZI7apySTTxXuHad5vReJdsRTISEnyKkk2TTw=;
	h=From:Subject:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=WDqopwBL+zcjYm+BtYaiKW7VkRVXZaIPou7tOWNMxEcN6WNHmpdTMUb2YULOrtPNEJZq8XdP2EJrWlUBRziNd301x5qG1Hm+6R3AN92UESjrsEQe6M4kfo0Sp+9ThNwdbV3l54hIBgrtAsxcHnVHU/HbmnsZTZb5xUyOWQrplb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kw03Nnrf; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F10D51F00A3D;
	Wed,  1 Jul 2026 10:57:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782903466;
	bh=yWtNQHCZI7apySTTxXuHad5vReJdsRTISEnyKkk2TTw=;
	h=From:Subject:Reply-To:Cc:In-Reply-To:References:Date;
	b=Kw03NnrfiZ3KDexC83Ui7bPIXMRB2TWSyFMJOsHrP6SwoURM7wFsB/v4WjRuan/dj
	 CkXBOOlPFo16ukMyeKHRmNQZO4wXUxmh7IdrhOHP2ccEjLaF6KpvxQ0kQ4dygmlVyw
	 hM6HQEMUSoygLhDuG8bSoIHB/RWusyiXnC6kvA/eDvoRsO0dstm8XPLwkIIYdF0U6e
	 o2nQw/X/ayqub3yeV0a0YXqKpl4XsZJjpQ/ACvqFEtUYV3Pb7wNVe0+1V8SCt5lJTY
	 nXoapJ6NxitMDnpQC+ZNPQGjzLtDzdJcZN13SJoYx5CLjPXoS6cXxjXuobo7caqXbe
	 yYd51+Wd8q6yw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH V5 6/7] arm64: dts: imx8dxl/qm/qxp: Add power supply
 properties to Root Port node
Reply-To: sashiko-reviews@lists.linux.dev
Cc: linux-pci@vger.kernel.org, Frank.Li@kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260701105234.198987-7-sherry.sun@oss.nxp.com>
References: <20260701105234.198987-1-sherry.sun@oss.nxp.com>
 <20260701105234.198987-7-sherry.sun@oss.nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 10:57:45 +0000
Message-Id: <20260701105745.F10D51F00A3D@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_TO(2.00)[];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-318356-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,sashiko.dev:url,vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,smtp.kernel.org:mid,lists.linux.dev:replyto];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:linux-pci@vger.kernel.org,m:Frank.Li@kernel.org,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1E7026EC703

> From: Sherry Sun <sherry.sun@nxp.com>
>=20
> Add the power supply properties to the Root Port child nodes to support
> the new PCI pwrctrl framework.
>=20
> Legacy power supply properties are retained for backward compatibility
> with existing kernels. New device trees should specify power supplies at
> the Root Port level to utilize the pwrctrl framework.
>=20
> Signed-off-by: Sherry Sun <sherry.sun@nxp.com>

Sashiko has reviewed this patch and found no issues. It looks great!

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701105234.1989=
87-1-sherry.sun@oss.nxp.com?part=3D6


