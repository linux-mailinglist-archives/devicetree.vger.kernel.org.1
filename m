Return-Path: <devicetree+bounces-304569-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id dL0cM0R0Gmr84QgAu9opvQ
	(envelope-from <devicetree+bounces-304569-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 07:23:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB1160B4F5
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 07:23:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E75E0304B933
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 05:23:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6EB741A8F;
	Sat, 30 May 2026 05:23:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FKuhlEzb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDBCE2E7394;
	Sat, 30 May 2026 05:23:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780118592; cv=none; b=AK59TkS3LiXx9xSzxz0ThYvMDBWE4qdvd8bAYObmyRcJ00fFpFjeCBJOL5j5H6IpPCeVNiuX0cHNnHkzRevE9mcaxpsZOGNaQlYHlta6EOFSj/lD0m2aVPkl5u2Mz68rDGmr+EXIozmQLL9s/pFfHJHj5dnMhbiykoVGs7c0q1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780118592; c=relaxed/simple;
	bh=WfBNNESDWd38kwPxdmNA9G7DtcDh+kARY2pSLaaPLYE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=eSqHmWukAhrx2kLg46G1Weo7o8F5WhKDAsOILt7BaGAaRwuF+BcLj/PZznDrCy5yfTK9n6gqtrVldFiJI/lh7u3EljdjCYhpe2HTurMZ9PARzlhyZ1dEHwGaxFkSkkEu0r9wqNIhJOaU3Txab8mG7tMZSafebOfcARRpQDnBEaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FKuhlEzb; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 271791F00893;
	Sat, 30 May 2026 05:23:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780118591;
	bh=WfBNNESDWd38kwPxdmNA9G7DtcDh+kARY2pSLaaPLYE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=FKuhlEzb9QvW8rsO7EXFggY+AmCcQwQ3g3oWkYaNi5eDIXi1rkSxeDOJvdHou5d2H
	 W4CFuHP7F1g3gkBnOND4gMu1wXC9tWWRv5MUgzIibUuDMjmPQtgwglBIGUjaqxVfwK
	 L066FgE3J2rEQgSdROUvdszl+7CAY/++ZDS0HiDzrFZZ7WF5zkYCSQawhAcR8cX56e
	 8nC1VG4ELt/pQNg0oVwUsG+5Pz3IbGo/ZbYhfe1JjPPKC+5Qb8I5QKDtJxXvU8XPHX
	 xLG29zXmCsakiBfsUMqi2rNa7HRJgKgmAaJjAFjDau4GYP2rdY822kuFOoDFaqPn39
	 B1kzHq3uz85Fw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 4/4] dt-bindings: input: remove obsolete
 matrix-keymap.txt
Reply-To: sashiko-reviews@lists.linux.dev
To: "Akash Sukhavasi" <akash.sukhavasi@gmail.com>
Cc: dmitry.torokhov@gmail.com, robh@kernel.org, linux-input@vger.kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260529052246.4934-5-akash.sukhavasi@gmail.com>
References: <20260529052246.4934-5-akash.sukhavasi@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 30 May 2026 05:23:10 +0000
Message-Id: <20260530052311.271791F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-304569-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: 3BB1160B4F5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The commit message inaccurately claims that 'Eight files still refe=
rence matrix-keymap.txt', when only 6 files actually do.
--

commit eb5de2cbf16470ef87ea36fcd4695758a1c30a9f
Author: Akash Sukhavasi <akash.sukhavasi@gmail.com>

dt-bindings: input: remove obsolete matrix-keymap.txt

This commit removes the obsolete matrix-keymap.txt stub and updates all
remaining references across the input and mfd binding documentation to
point directly to the matrix-keymap.yaml schema.

> Eight files still reference matrix-keymap.txt, forcing readers
> through an extra hop to reach the .yaml. The stub has not been
> touched since June 2020. Update all references across input and mfd
> binding documentation to point directly to matrix-keymap.yaml and
> remove the stub.

[Severity: Low]
This isn't a bug, but the commit message states that eight files still
reference the text file. Looking at the patch, there are eight total
references updated, but they are spread across only six files since
tc3589x.txt contains three of those references.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260529052246.4934=
-1-akash.sukhavasi@gmail.com?part=3D4

