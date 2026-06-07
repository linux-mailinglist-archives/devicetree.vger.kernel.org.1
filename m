Return-Path: <devicetree+bounces-307818-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id AXXfKtFqJWo7IAIAu9opvQ
	(envelope-from <devicetree+bounces-307818-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 07 Jun 2026 14:57:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EAD8E650946
	for <lists+devicetree@lfdr.de>; Sun, 07 Jun 2026 14:57:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=E81UaIgg;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307818-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307818-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A09F2300E73F
	for <lists+devicetree@lfdr.de>; Sun,  7 Jun 2026 12:57:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDB1F3A3E87;
	Sun,  7 Jun 2026 12:57:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1F6ACA6F;
	Sun,  7 Jun 2026 12:57:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780837065; cv=none; b=jUeSAGpE4Xg193Vhr+y7+j/XYi1tOrJnjoQLaSzjVDn4DX1ul1Pfta05cox71nUgsFRMX7HfvWr7tx4sB7RSXyZvugqHIo1STJKG4o9L6Tk6HNh6y/e8RbcBId/5NK4vZ5Pwv57cy0nnbFo0X9Qa93lDg3AA1qeysJ5moRdQDf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780837065; c=relaxed/simple;
	bh=UEslFreGYuprYNJFZfXeX5XScu9uWRsWTBdUl9mXiT8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=eQtM47T0H7A4VGBz0BcERGDtjGzvK41qM/+7G0HUTz4nVcSxn2erExAOwfOoUfR3gTWFVR1KYvmjD3t8LMnxgWwNMTH/74p2bKKiUlH49FIo3kGIcNsvGjsRwDkuv+9PjbOeMtMCQZ5r9Pm2yA2WCIJo+ALbkHy9THdxPB8DM9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E81UaIgg; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 307351F00893;
	Sun,  7 Jun 2026 12:57:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780837064;
	bh=UEslFreGYuprYNJFZfXeX5XScu9uWRsWTBdUl9mXiT8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=E81UaIggJYdMLzzfYOwtytcl0XzPLVhvho1QI0tTVECRVCG/x2yoEO0lu7OfOb+9w
	 itWVaOrOpUwz2beeDnD00F+J3xpOwsgzjGIdSf5mwCilRoIiL9Ob39n5Rsk48l5G86
	 sF+GCv8r+YImk0t5nUiFO4d9aDHIIXYM6cmiRbpOfGcZ5EEI88ByL6bWaqUPyVDP9k
	 BZhA7R5EJXZ8agoXhQQRSheh6nRrd+HK1o7PB3A1F2PjmXvwjKwg8hNJH8lQaTydN7
	 iDMnk721Ka4qittJgxzs8AXFCaE93F3YUmftretrmE+r7QWx1Mu804bP6u+oIx6AUA
	 nDwb5FHB0EzAg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/3] dt-bindings: perf: marvell: Extend CN10K TAD PMU
 binding for CN20K
Reply-To: sashiko-reviews@lists.linux.dev
To: "Geetha sowjanya" <gakula@marvell.com>
Cc: conor+dt@kernel.org, linux-perf-users@vger.kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260607125101.17778-4-gakula@marvell.com>
References: <20260607125101.17778-4-gakula@marvell.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 07 Jun 2026 12:57:43 +0000
Message-Id: <20260607125744.307351F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[marvell.com:email,sashiko.dev:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,lists.linux.dev:replyto];
	TAGGED_FROM(0.00)[bounces-307818-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:gakula@marvell.com,m:conor+dt@kernel.org,m:linux-perf-users@vger.kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EAD8E650946

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The commit message claims to add a CN20K example node, but the p=
atch does not include it.
--

commit d21c87a34e4ef8a32cf63c6310a789363873d765
Author: Geetha sowjanya <gakula@marvell.com>

dt-bindings: perf: marvell: Extend CN10K TAD PMU binding for CN20K

This commit extends the Marvell CN10K TAD PMU device tree binding to support
the CN20K SoC. It updates the title, description, maintainers, and compatib=
le
strings.

> dt-bindings: perf: marvell: Extend CN10K TAD PMU binding for CN20K
>=20
> Allow marvell,cn20k-tad-pmu alongside marvell,cn10k-tad-pmu, document
> CN20K in the title and description, add a maintainer, and include a
> CN20K example node with the same required properties as CN10K.

[Severity: Medium]
The commit message mentions including a CN20K example node, but the patch
does not contain any changes to the examples section in the YAML schema.
Was the CN20K example node accidentally omitted from the patch?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260607125101.1777=
8-1-gakula@marvell.com?part=3D3

