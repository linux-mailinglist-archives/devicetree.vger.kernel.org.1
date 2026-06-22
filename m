Return-Path: <devicetree+bounces-314189-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GBL+GKrFOGp7hwcAu9opvQ
	(envelope-from <devicetree+bounces-314189-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 07:18:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BEB006ACB6D
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 07:18:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="hDv/5pUw";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314189-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314189-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 212663017251
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 05:18:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 734D4230264;
	Mon, 22 Jun 2026 05:18:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B3241096F
	for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 05:18:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782105493; cv=none; b=YYLBBfJrNWmStalvLMhcQ0+2yDuiG8BF2QpUYGRspzLzbg3PKcwBvvV8voCCChIgMu8HBL5Erx7uiAwj48HtHBajVj0ENRM7jtel7fAQvrltVuwRZDtzH5hJgOQB1jfwmqw6yzucElka89T3bOGkWInJv3dxPGMFW9pYxwCpSK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782105493; c=relaxed/simple;
	bh=Lf45AR56uftzfrbYIpOCIamKT4US3vSPGzkQ7HSjFQQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=HHatlLYOGYMtbz+knOpZQ0/Shux2MqCkV7+jqr7CkmE6Mo1cUTV5T/XbIqCl1WnkZZjbxkhlY8T/4E8TWADj8xERWD289TlWYjzUb8pao8VKgpNAqqpjgBDYwpzZMK6t+iDxs25DfiEsuw1OkbAogqJSAJwCsO0cmUvp64KdFCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hDv/5pUw; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D8B041F000E9;
	Mon, 22 Jun 2026 05:18:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782105492;
	bh=SltqxpyAkDKvaQoSenMTMeKUBgLyr0EDUVM+nWznad8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=hDv/5pUwhhuN1UAESrp1lELKpCcypDT3tBY7cSGQgN5gM0jpeQUB5XWs+J+xJnsOZ
	 i3euhTH+WMdtFx4/G5qUFDqyts7/gUVmhK9ycFfEeVyCj74DVtOIh96YQeJ2iac83e
	 Q/I/7vgc9Elz4+3n/gUZWyh2ZTf1P1WDafO1vzU9wZUOADE6TAEw6xqbdwYIeh+5BN
	 QKRt0XNLUYaKZTAGMMl4EeQ3Z5NinLWxwm0mrmx+vPVwe/cyja/oSeCZqTValLtmKT
	 dgtj5R1nmsvrAfdsMTZI8d0z2CAiTAgEHK1Eqec6xOm8WLZXOT5kZcp7QO+ikUXPew
	 i00a2CucDYhew==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 1/8] dt-bindings: clock: qcom: Move glymur TCSR to
 own binding
Reply-To: sashiko-reviews@lists.linux.dev
To: "Qiang Yu" <qiang.yu@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260621-tcsr_qref_0622-v6-1-c939c22ded0c@oss.qualcomm.com>
References: <20260621-tcsr_qref_0622-v6-0-c939c22ded0c@oss.qualcomm.com>
 <20260621-tcsr_qref_0622-v6-1-c939c22ded0c@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 22 Jun 2026 05:18:11 +0000
Message-Id: <20260622051811.D8B041F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-314189-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:qiang.yu@oss.qualcomm.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,smtp.kernel.org:mid,qualcomm.com:email,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BEB006ACB6D

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The commit message claims to 'Mark the relevant supplies as requ=
ired per compatible using allOf/if/then conditionals', but the implementati=
on uses an unconditional global `required` list. The conditionals are actua=
lly introduced in the subsequent patch 'dt-bindings: clock: qcom,glymur-tcs=
r: Add mahua support', making the commit message for this patch inaccurate.
--

commit 76f46a44f2c67eac7f27a435d31cca7e4ee64c0c
Author: Qiang Yu <qiang.yu@oss.qualcomm.com>

dt-bindings: clock: qcom: Move glymur TCSR to own binding

This commit creates a dedicated binding file for the Qualcomm TCSR clock
controller on Glymur, moving it out of the shared sm8550-tcsr binding. It
also documents the supply properties required for the QREF block.

> Mark the relevant supplies as required per compatible using allOf/if/then
> conditionals.

[Severity: Medium]
Is this description accurate for this specific patch?  The commit message
mentions using allOf/if/then conditionals to mark supplies as required per
compatible, but the required list introduced in qcom,glymur-tcsr.yaml is
unconditional and global.

Could this paragraph in the commit message have been intended for a
subsequent patch that introduces the allOf/if/then conditionals?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260621-tcsr_qref_=
0622-v6-0-c939c22ded0c@oss.qualcomm.com?part=3D1

