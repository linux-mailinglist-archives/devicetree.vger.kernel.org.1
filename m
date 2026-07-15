Return-Path: <devicetree+bounces-326808-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9sV6JO1QV2qqJAEAu9opvQ
	(envelope-from <devicetree+bounces-326808-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 11:20:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FFA675C679
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 11:20:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=k5wzWDzD;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326808-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-326808-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 299F93007A57
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 09:18:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5501D3E5A0E;
	Wed, 15 Jul 2026 09:18:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AA4C41D65C;
	Wed, 15 Jul 2026 09:18:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784107087; cv=none; b=VBrOAroaE0u13890FKRliZIIm6lNgxzUBABx5VeU+tsvDBGPgGlkkJ64WfZMQjNOmNk6Isb5nEt5uDze5PjVqL4IM1e3gj7IvtgRrMaFz1HIIfZsP1tX5Ndu7T6bDKeQQ+yxWF8tKwiKt38MB6NhSnWE2bQ6gVMFax8ZDM5y9I8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784107087; c=relaxed/simple;
	bh=W8URg+6MQxwIHa3ueS6S2tn+BXkhDmp+il12nhY8l/U=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=u8i9psn9OXt/tEFLYe40giMxH+vELTm6U8VAyiz0eo6NvRpuSJ6dxSG4sgh8dcSAy9wPvGhRZFTvDdKdrUZ3uUSGpBhDt0mJoRjtzOjWPLQS1P8N1YoKRAS9y/aWb25oUM/0W7BQeSxAXfDThI8EzczQTiTPo1mITq5seYWAbEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k5wzWDzD; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 661C21F000E9;
	Wed, 15 Jul 2026 09:18:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784107080;
	bh=W8URg+6MQxwIHa3ueS6S2tn+BXkhDmp+il12nhY8l/U=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=k5wzWDzD32EhqAO61Ip8h4aXV5VFTVCL4rYtC6WmzyqCmlwsUulwMwYBFvPzsm4Ql
	 emxKCgbLMDd5jkV3JY3wLSE6v+B3rnVtWuBhtNK1yeJjcufJBf7j+Dt9yCqh+hBc1/
	 xs9fRl2oCEw4Lx3SQKxR4w3MtKsGhguygkpISL3nXqVZGyaJ0IOdX8LfC8ztOtyDeM
	 UbULtyYcibslLIAMBq8bXlKs7W7sNVa1bY4prviLRcXEUJOfCfQsJaNXMvMmeX8+lU
	 nWzlU4/QrrFOGx9dFDsaNOVumHBw0S/t/kjfVZQM394+g0/sZWm/UNZa65epee7TaC
	 OHit14MrZP6Jw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 05/10] dt-bindings: power: apple,pmgr-pwrstate: Add
 t6030 and t6031 compatibles
Reply-To: sashiko-reviews@lists.linux.dev
To: "Janne Grunau" <j@jannau.net>
Cc: robh@kernel.org, linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260715-apple-t603x-initial-devices-v2-5-df65b2485710@jannau.net>
References: <20260715-apple-t603x-initial-devices-v2-0-df65b2485710@jannau.net>
 <20260715-apple-t603x-initial-devices-v2-5-df65b2485710@jannau.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 15 Jul 2026 09:17:59 +0000
Message-Id: <20260715091800.661C21F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-326808-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sashiko.dev:url,vger.kernel.org:from_smtp,smtp.kernel.org:mid,jannau.net:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:j@jannau.net,m:robh@kernel.org,m:linux-watchdog@vger.kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7FFA675C679

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The commit message incorrectly duplicates 'apple,t6030-pmgr-pwrstat=
e' when explaining the new compatible strings.
--

--- Patch [5]: [PATCH v2 05/10] dt-bindings: power: apple,pmgr-pwrstate: Ad=
d t6030 and t6031 compatibles ---
commit 0f321dd30362858c61b0d6995914cf56752d651f
Author: Janne Grunau <j@jannau.net>

dt-bindings: power: apple,pmgr-pwrstate: Add t6030 and t6031 compatibles

This commit adds "apple,t6030-pmgr-pwrstate" and "apple,t6031-pmgr-pwrstate=
"=20
compatible strings for Apple M3 Pro, Max, and Ultra SoCs.

> The pmgr-powerstate registers on Apple M3 Pro, Max and Ultra SoCs are
> compatible with "apple,t8103-pmgr-pwrstate". Add
> "apple,t6030-pmgr-pwrstate" for M3 Pro and "apple,t6030-pmgr-pwrstate"
> for M3 Max and Ultra as per-SoC compatibles.

[Severity: Low]
This isn't a bug, but there appears to be a typo in the commit message. It=
=20
duplicates "apple,t6030-pmgr-pwrstate" instead of mentioning=20
"apple,t6031-pmgr-pwrstate" for the M3 Max and Ultra.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260715-apple-t603=
x-initial-devices-v2-0-df65b2485710@jannau.net?part=3D5

