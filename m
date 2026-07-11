Return-Path: <devicetree+bounces-324756-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id cFXZFn7gUWqbJwMAu9opvQ
	(envelope-from <devicetree+bounces-324756-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 08:19:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A832F740968
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 08:19:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=WbniBfay;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324756-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324756-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 77BB73011F36
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 06:19:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B718532B118;
	Sat, 11 Jul 2026 06:19:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C8B5279DAF;
	Sat, 11 Jul 2026 06:19:38 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783750779; cv=none; b=pLCwonWDYHeQcDooxHpM7QCNZ1JQVsDCvc5cYSeiBNkS6IzrkpftsT2yrzmFUh0DVZZosX93lSAPaWGnXGz+lvZRZHJDDeKjXdBgYIF1rgpMxgDRQKY2uWwwggg2uq+qWu9hLo+aEeH27BsUWg0Lvm7au4T9CCzrw4GuIR7fmOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783750779; c=relaxed/simple;
	bh=l0grfuKIsTMvbS8uTCzoVrty33M9dgrc7k+SKyobfJE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=WDF0B8RvY153k3dZCRRxMMwTofHJO0gB+LMnqpP2RhbT6t5so7gmzLYVi1ItajMwBlJEXgUoPGWDzIPcQNDzryCTbjxFGkcmeyia550G6asMwNDEC2rTrA+eevbn5JKtnUFNwvR4CO/UkxLpbYglbKkFVh6I/JfDqRPtZv91Yio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WbniBfay; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4C091F000E9;
	Sat, 11 Jul 2026 06:19:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783750778;
	bh=l0grfuKIsTMvbS8uTCzoVrty33M9dgrc7k+SKyobfJE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=WbniBfaycZ/AgZ2+lEqbtChQz2/kTlypNABFrAgczNZFc/Tj/926phBLVRhzf6uXy
	 IChZMsZRIBJQN5InQIMjW8Nsg50f2nmOxKNpAE1zS0LeAq+IxRsR7Q9kORNjdHnJWH
	 NZUxBEyw+fgg/ApEimIfbhC3i5c3R6u+l2OHhFtfYHYZIdJtBPSNA4/j9BZYiMB1Wj
	 lhB/LpmJcLw0gFdfApwNUfygooL1HfD3j+lU58ZoR+Zm3FvjoOJRhCr7UOeFPh04Ov
	 LZJkywt2Fd3X9TDi6rmTFsUAPUYDd0+piRoBdFLfqN/1SFDGsUuNIKwR422DBFS+AW
	 kh65xP96ZfnGA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 04/16] arm: dts: omap3pandora: Populate DT data for the
 TWL4030's REGEN regulator
Reply-To: sashiko-reviews@lists.linux.dev
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Cc: lee@kernel.org, conor+dt@kernel.org, dri-devel@lists.freedesktop.org, robh@kernel.org, mfd@lists.linux.dev, devicetree@vger.kernel.org
In-Reply-To: <d0b2a73c7c208f33784eae4219ff3981800ae6f9.1783749722.git.hns@goldelico.com>
References: <cover.1783749722.git.hns@goldelico.com>
 <d0b2a73c7c208f33784eae4219ff3981800ae6f9.1783749722.git.hns@goldelico.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 11 Jul 2026 06:19:37 +0000
Message-Id: <20260711061937.E4C091F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-324756-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:hns@goldelico.com,m:lee@kernel.org,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:robh@kernel.org,m:mfd@lists.linux.dev,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,goldelico.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url,lists.linux.dev:replyto,riseup.net:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A832F740968

> From: Grond <grond66@riseup.net>
>=20
> On the Pandora, REGEN is used to enable TPS61029DRC external regulator
> which runs a 5V power rail. The 5ms startup delay is taken from Pandora's
> 3.2 kernel, where it is labeled as a "guess". So it may be possible to
> activate the regulator faster.
>=20
> On Pandora CC units, this regulator is used as the input to the LCD power
> supply. Therefore, problems are likely to arise if the regulator is ever
> disabled, so we add the regulator-always-on property to compensate.
>=20
> Signed-off-by: Grond <grond66@riseup.net>
> Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>

Sashiko has reviewed this patch and found no issues. It looks great!

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1783749722.gi=
t.hns@goldelico.com?part=3D4


