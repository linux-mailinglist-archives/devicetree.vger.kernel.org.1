Return-Path: <devicetree+bounces-327000-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5HosJ4iBV2ouTgAAu9opvQ
	(envelope-from <devicetree+bounces-327000-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:48:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A3CB75E52D
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:48:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b="L7v/a6f/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-327000-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-327000-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=bootlin.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8D6B53009892
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 12:48:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DF95450901;
	Wed, 15 Jul 2026 12:48:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3476472768
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 12:48:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784119685; cv=none; b=ZUgk32ylbaorfaXD8lhNr1g8ttfRQZXf1MMRZJ24oYhK6u1S53IVfTN8duBaw6CSIy08fQC/f89wkT1EWySzqrW6dYoTIBH4s9ATbvcm8cE6wGeKPulbPHKzdHoCL8foN/M31BExNbSMG6tnzSiMXFnIVccnnTWWYYN9EgyUPfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784119685; c=relaxed/simple;
	bh=ULNIgkQWYkWrSd5tLTOtNC3fTL33xCOqao0DtR/rkKM=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=mv2U9tPBeVl0AWhV8AYiQxBlz0nyBZDSvKfiUZ7PV/0QT26q1lpEDOYqZBowraoEbjworLRewhTZeALgqD3fKAqkDneESct3vrl0lOIt88LgBzOmlASON+BhZ0gC5keuiATlNC4Qhr9maTg6rYLMDixOJ4NS5W8xKT7LQ4i4hSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=L7v/a6f/; arc=none smtp.client-ip=185.246.84.56
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 71F091A0FED;
	Wed, 15 Jul 2026 12:47:58 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 3D1B06035C;
	Wed, 15 Jul 2026 12:47:58 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 3596A11BD15D9;
	Wed, 15 Jul 2026 14:47:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1784119677; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=ULNIgkQWYkWrSd5tLTOtNC3fTL33xCOqao0DtR/rkKM=;
	b=L7v/a6f/EicKnoQdUCetm7a42/KyIS/LSMccfP/U2ILjcv1J1Kxivabkwjsw5e8zIvyvQ4
	aKzkkcpDFIt1iW+6Aj5sI9kYMzODkHdun9BbvahYOZgI5e4zwY7HqspYNPyj4F6OPjlWhd
	0ovk1zGHsV8hbWzTCxZqfnDJooKseW5GX47FKS3m4GpozFOOMw+CgaFpHl0Q5j6FbWibpm
	how9WwKAy9ytK6FjHc/bHKRkOE8kIF8epfGlxlzs9qrvFd3g6kP+A0qyq4b8vSY1L08U/u
	AoVpQvwuJpu+e6/4EzQPON/RVDSdVua3mHLgTV2l3c3aZWvWVRZJQ5adA6lNqA==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: sashiko-bot@kernel.org
Cc: sashiko-reviews@lists.linux.dev,  conor+dt@kernel.org,
  devicetree@vger.kernel.org,  robh@kernel.org
Subject: Re: [PATCH v2 6/7] clk: Add support for clock nexus dt bindings
In-Reply-To: <20260710183359.61D3A1F000E9@smtp.kernel.org>
	(sashiko-bot@kernel.org's message of "Fri, 10 Jul 2026 18:33:58
	+0000")
References: <20260710-schneider-v7-2-rc1-eip201-upstream-v2-0-b4680787377e@bootlin.com>
	<20260710-schneider-v7-2-rc1-eip201-upstream-v2-6-b4680787377e@bootlin.com>
	<20260710183359.61D3A1F000E9@smtp.kernel.org>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Wed, 15 Jul 2026 14:47:56 +0200
Message-ID: <87o6g8e7wj.fsf@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-327000-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sashiko-bot@kernel.org,m:sashiko-reviews@lists.linux.dev,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,bootlin.com:dkim,bootlin.com:mid,bootlin.com:from_mime,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2A3CB75E52D
X-Rspamd-Action: no action

Hi,

On 10/07/2026 at 18:33:58 GMT, sashiko-bot@kernel.org wrote:

> Thank you for your contribution! Sashiko AI review found 3 potential issu=
e(s) to consider:
>
> Pre-existing issues:
> - [Critical] Stack buffer overflow in `of_parse_phandle_with_args_map`
> when `#<list>-cells` exceeds `MAX_PHANDLE_ARGS`.

Device trees are reputed correct.

> - [High] Infinite loop in `of_parse_phandle_with_args_map` due to lack
> of cycle detection.

Ditto.

> - [High] Unconditional dereference of optional `out_args` pointer in
> `of_parse_phandle_with_args_map`.

Does not happen in real life.


Since these are pre-existing issues and seem relatively impossible to
hit (except during development, but that's mean the DT is incorrect and
*must* be fixed), I do not plan to complicate further this series which
is already 7 patches long for (initially) a single line change.

Thanks,
Miqu=C3=A8l

