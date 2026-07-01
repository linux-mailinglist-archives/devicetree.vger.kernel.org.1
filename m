Return-Path: <devicetree+bounces-318376-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rVsNBEv0RGrP3woAu9opvQ
	(envelope-from <devicetree+bounces-318376-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 13:04:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 829076EC876
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 13:04:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ZgUneNY3;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318376-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-318376-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8CB10300A3AB
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 11:02:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73BF93FBB66;
	Wed,  1 Jul 2026 11:02:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75C043C9881;
	Wed,  1 Jul 2026 11:02:45 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782903766; cv=none; b=H+FomOyKOrfNTEZgJQq6+68SnEYsdIlMU2/Zxs2vtEjm3KtOfVs/TqxSCXLnWIes4gR1EZnZPC4TyE45JtPuC/4L0m31FEfv7Boblecpew6Fg+Tk+AUQINly+lPtxNBVpm0x6NUq2knnbzM7n6yEIEfB5gze3zZOqchq2CnJIj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782903766; c=relaxed/simple;
	bh=rctbfzYC0wzya3XVZ9f3Spu7RZB9Ckokz8i0U7rIorw=;
	h=From:Subject:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ZQ/LK4lUqSf5J2tJPWLcBWcbw9kuC4apWDJbIfmXHJkuI7aXft4KnAvGPRLuVjn79A+jvssXmF71IvgwpPA9P9FMhuAEPrny4HuvWPp/ydtQIhYytjPFqEjbozwSwFYZurJ0cTlaXaEIi4mgSGL1mSXRY84in8EU8VXJhXVFCQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZgUneNY3; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7F3D1F00A3A;
	Wed,  1 Jul 2026 11:02:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782903765;
	bh=rctbfzYC0wzya3XVZ9f3Spu7RZB9Ckokz8i0U7rIorw=;
	h=From:Subject:Reply-To:Cc:In-Reply-To:References:Date;
	b=ZgUneNY3GnTq+TQVAFsGCANGa1zcV+mTZOFtIA0NkvK8QrXaVTWmV2sHCi1iAq0Rw
	 qh6povmAi76KzjFvcTdCzOcK1e12N2va7daCD0U0tD88DVjqyKa6mn/qcPTEeZXI1B
	 6UT5EmQIPxO21ivbCw4HhyhyG/OVqaAh8z7MckPVCRH4ntqctgdHmqq3JpMcy5mYuw
	 mE1oIYjoZT6oJWVBFB+6Naagv8dbRiCTzIIyxf+BAyv5O9qJd+blWOPilRieo528iJ
	 A6v5oqMMsYGYpv0MhNOAcxTBcdQSIgshVrHInu0w4k9GnJrxgETmjjmxpGfiBeBGQf
	 e3VVbcDqTzbXw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH V5 4/7] arm64: dts: imx8mp-evk: Add power supply
 properties to Root Port node
Reply-To: sashiko-reviews@lists.linux.dev
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, Frank.Li@kernel.org, imx@lists.linux.dev, linux-pci@vger.kernel.org
In-Reply-To: <20260701105234.198987-5-sherry.sun@oss.nxp.com>
References: <20260701105234.198987-1-sherry.sun@oss.nxp.com>
 <20260701105234.198987-5-sherry.sun@oss.nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 11:02:44 +0000
Message-Id: <20260701110244.C7F3D1F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-318376-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,nxp.com:email,sashiko.dev:url,smtp.kernel.org:mid];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:Frank.Li@kernel.org,m:imx@lists.linux.dev,m:linux-pci@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 829076EC876

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
87-1-sherry.sun@oss.nxp.com?part=3D4


