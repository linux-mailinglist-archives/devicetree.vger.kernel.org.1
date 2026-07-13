Return-Path: <devicetree+bounces-325173-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7oC1L5pRVGp5kgMAu9opvQ
	(envelope-from <devicetree+bounces-325173-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 04:46:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AC98746C6F
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 04:46:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=MhWHgmIk;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325173-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325173-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A7F46300638E
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 02:42:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D67A347BD9;
	Mon, 13 Jul 2026 02:42:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4189231F9B7;
	Mon, 13 Jul 2026 02:42:40 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783910562; cv=none; b=QSeN4yxLHU8ukAS1lzrSBV6NXrLbZVMCyx6snCItCpbhFx2LfBNpFWmG4PZIVDvQuqKqQnN7bDHSzYl5mut6YmUFSTo2rjDCuATqG1vD4pZbFR0ab6aoDGBMdVoswMxErQzOrE+PxQxQFWbm5sCoEg/9rtmGeZHm4U1HdRIyIko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783910562; c=relaxed/simple;
	bh=1atDIKHwMjynoblZHTOW4nNv2oBZmbM8JAEJSelY1Vc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=NgG+PBUjyignLmRNeyC7f4E0ap/H6PIog8f8l3vZF8I6UZQUq6Pe0g2H5kAUyiMLeNEHQnm164KQIo1lzuA8Rvi8yjTIHtjAb9B97Q6sjBJNlWxXTNq+ayFZCazCNztRCym1mdhPP7QarcrtMkiMgMQdqbsHoTqbjoAUhbOk62M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MhWHgmIk; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F1B01F000E9;
	Mon, 13 Jul 2026 02:42:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783910560;
	bh=1atDIKHwMjynoblZHTOW4nNv2oBZmbM8JAEJSelY1Vc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=MhWHgmIkDpqOuLM783VvKM4yKkgaVD8ukvuH6ky2cL61QA2ggM9snxFvb/JDZV6Ay
	 y1ssPfyrzlDBt5CnBjIfXFMEQXYpbDxvz+x/G8Rio/0tZQ/V+zcVZp127jgpzmTUwH
	 KgiZFn7ORfxWgDJ1idXEGyF36GI8q1wK7Bdrq6/h5GKTSzFtbEgkZUNWJZXDGI/Rir
	 KJ0UEvkpgI76DQv/ZPmgeT1FRNXQg/n/RQsH6M1Idqkv7cSID+WXlGmm1iwz5kcHJg
	 qV7ZGAWfyr7mGo3Y5VACx4+/QUin4FcNvU4xFAiwpJlWlWxGqwrfarXj2pnz/5Rx8V
	 MbZsT6FUlZiAA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH V6 4/4] arm64: dts: imx95-19x19-evk: Describe the PCIe
 M.2 Key E connector
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?U2hlcnJ5IFN1biAoT1NTKQ==?= <sherry.sun@oss.nxp.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, linux-pci@vger.kernel.org, Frank.Li@kernel.org, imx@lists.linux.dev, robh@kernel.org
In-Reply-To: <20260713023435.235765-5-sherry.sun@oss.nxp.com>
References: <20260713023435.235765-1-sherry.sun@oss.nxp.com>
 <20260713023435.235765-5-sherry.sun@oss.nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 13 Jul 2026 02:42:39 +0000
Message-Id: <20260713024240.3F1B01F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-325173-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:sherry.sun@oss.nxp.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-pci@vger.kernel.org,m:Frank.Li@kernel.org,m:imx@lists.linux.dev,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4AC98746C6F

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
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260713023435.2357=
65-1-sherry.sun@oss.nxp.com?part=3D4


