Return-Path: <devicetree+bounces-323638-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5ywGIu6FT2r5igIAu9opvQ
	(envelope-from <devicetree+bounces-323638-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 13:28:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E31FE730543
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 13:28:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=YxhhCl7z;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323638-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-323638-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F29C7315DA39
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 11:03:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75D003E0241;
	Thu,  9 Jul 2026 11:03:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6598730D3F5;
	Thu,  9 Jul 2026 11:03:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783595009; cv=none; b=XkSplNyPN71Ccf5WfsR+t/KGccL9RllhTELsmjlNUoUw1dLkiqVL/sP+Mp0/HpT1rO3sELEES89b6a1AKy+50I0jPLg1z/DgGtvqs7/5RcDun1Sh6iE7GwPGTJt58nTI+nteVRqXayIWoxlYhjEdS5D/UIYQ12BUWrgyjvnsQNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783595009; c=relaxed/simple;
	bh=oxi1KYj1sDfy+abyp0oyC9W0JahVvUNVqoB+mIUwHd8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=GHcE/tBo81PQR661feDAXGODvYQEcUA68mVsiO4dLbrNgEdnhQY4XGjqmLopYEuycg49SSBUze44CrjBaP0p3vq20ritcZ4bDhCDULDd4d1DpP+IAjQmBMo+CaLJFWs3tlX3dVEnTHh4J4O9PqmeW7Jxa6jCeeDLuzSyIAjxcaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YxhhCl7z; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 890B21F000E9;
	Thu,  9 Jul 2026 11:03:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783595008;
	bh=oxi1KYj1sDfy+abyp0oyC9W0JahVvUNVqoB+mIUwHd8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=YxhhCl7zkONrsZTO0UHKvvA3OrL+DsGYG/ptgIFlcKcWNdwRrW6dcLc+qTb+b5NZ8
	 FWUrXflMKafSoMoWcjpOz44heFFuz1iza9xI0BuTboRWQsX+MQT01M7wZ+/bQX2OQl
	 uvwQkzyRu1hk2dz9qdkfnHjQz2gMjPVz08pwdJ1kw2zx3ApsgzKphSD1j17bGRlZOK
	 MCBOctFfR5LdvxOf7qxdFumV+ME52fM9ZIaRZwWV03CeLJU0sJDS4/taBYKBwAcsUw
	 bOFIAbLZq1Oa0k+wUkyx9vlhtcys3iaSVMUD2CNKVAe6WanQnXCZd6OwA9yXwfUICS
	 7JZs7MixBUNNQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH V5 4/4] arm64: dts: imx95-19x19-evk: Describe the PCIe
 M.2 Key E connector
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?U2hlcnJ5IFN1biAoT1NTKQ==?= <sherry.sun@oss.nxp.com>
Cc: robh@kernel.org, Frank.Li@kernel.org, conor+dt@kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev
In-Reply-To: <20260709101555.3034853-5-sherry.sun@oss.nxp.com>
References: <20260709101555.3034853-1-sherry.sun@oss.nxp.com>
 <20260709101555.3034853-5-sherry.sun@oss.nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 11:03:27 +0000
Message-Id: <20260709110327.890B21F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	TO_EXCESS_BASE64(1.50)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-323638-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:sherry.sun@oss.nxp.com,m:robh@kernel.org,m:Frank.Li@kernel.org,m:conor+dt@kernel.org,m:linux-pci@vger.kernel.org,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url,nxp.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E31FE730543

> From: Sherry Sun <sherry.sun@nxp.com>
>=20
> The i.MX95-19x19-EVK has the PCIe M.2 Mechanical Key E connector to
> connect wireless connectivity cards over PCIe and UART interfaces. Hence,
> describe the connector node and link it with the PCIe 0 Root Port and
> LPUART5 nodes through graph port/endpoint.
>=20
> Signed-off-by: Sherry Sun <sherry.sun@nxp.com>

Sashiko has reviewed this patch and found no issues. It looks great!

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709101555.3034=
853-1-sherry.sun@oss.nxp.com?part=3D4


