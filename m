Return-Path: <devicetree+bounces-315976-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xj+lIhwwPmp1BAkAu9opvQ
	(envelope-from <devicetree+bounces-315976-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 09:54:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D8FE06CB17D
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 09:54:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="VO9Vr/Sk";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315976-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315976-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EEEB8300EA99
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 07:54:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75F7830C16B;
	Fri, 26 Jun 2026 07:54:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D841E3DDE
	for <devicetree@vger.kernel.org>; Fri, 26 Jun 2026 07:53:59 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782460440; cv=none; b=ACwqEU6KN7DUBG5ZxhPWYieYnBOuZ5TThsG/g55m9s1aCm9cY58kpYwpG6gxZ7OjSJLIsSJdOloU19rpN/QP7feRGYPLrk0zYSvD7GWmhpJAISGqMBxWpWjomU3RyOwD7CgsFnuTnyhflHMM9wkqcrprsCxk3ECmPDB81UImtak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782460440; c=relaxed/simple;
	bh=WigDwDqcemVMDM2D5Qs+YN/uB/ZxsPC/4WwBUxkPL08=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=WsUJBPEiDvFXXAxKFMJBYdWvjhgv4aJf3Rlds4Dkyi0F9xC/UT4/LMzMomZNNALK21NUGTrqZ2foNXFP84QpYVTAllyKDFlvMEMmcuUQa9NSbBm+Tb0pEk29tOZcYfxTjI+TAaTUiUpUIlL4GqGJuQAaeWvfM7ZpLxTCzHZzlik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VO9Vr/Sk; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C19D51F00A3A;
	Fri, 26 Jun 2026 07:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782460439;
	bh=WigDwDqcemVMDM2D5Qs+YN/uB/ZxsPC/4WwBUxkPL08=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=VO9Vr/SkSig3sXjAN5VZWGnA4SGkSp7gpKiu4w7qsnCJfPYzXsvdN+6zApdvvSbGp
	 5gj4vmCO/TUXiMWP35LDX4Cwg5Qov4HZh5QPP65QA+R183mA1YshTbH7jJSV+JMf3K
	 Pct0MFly+HqAQjS38Q8hJ9WitMm0s19vev2MTxjRYY985J1X7SN0C6RgKeYWadmX+Z
	 lSqZkMpyixci14GuukBsatPuPQLHwF7DodA5yzvCvQyJGAb3ESiyGArRF3RJpHDF2f
	 xtmEZcKzR2VFX/YIQXKdqL8SHcSCOJKq91bmP+YHqsu3lqcPV/tsRQwCcEOb9/pWaW
	 yMW8t3or7jdtg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v1 1/2] Documentation: dt: reset: add
 mediatek,syscon-reset binding
Reply-To: sashiko-reviews@lists.linux.dev
To: peter.wang@mediatek.com
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260626074820.2537772-2-peter.wang@mediatek.com>
References: <20260626074820.2537772-1-peter.wang@mediatek.com>
 <20260626074820.2537772-2-peter.wang@mediatek.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 26 Jun 2026 07:53:58 +0000
Message-Id: <20260626075358.C19D51F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-315976-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:peter.wang@mediatek.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,mediatek.com:email,devicetree.org:url,smtp.kernel.org:mid,lists.linux.dev:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D8FE06CB17D

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The YAML binding schema is missing the mandatory `$id` field.
--

commit 010ce9609c338d8282471debb7c3cd606956e201
Author: Peter Wang <peter.wang@mediatek.com>

Documentation: dt: reset: add mediatek,syscon-reset binding

This commit adds Device Tree binding documentation for the MediaTek SYSCON=
=20
reset controller. The binding describes a reset controller that is part of=
=20
a MediaTek SYSCON MFD block and manages multiple reset lines via the=20
mediatek,reset-bits property.

> diff --git a/Documentation/devicetree/bindings/reset/mediatek,syscon-rese=
t.yaml b/Documentation/devicetree/bindings/reset/mediatek,syscon-reset.yaml
> new file mode 100644
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/reset/mediatek,syscon-reset.yaml
> @@ -0,0 +1,93 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$schema: http://devicetree.org/meta-schemas/core.yaml#

[Severity: Medium]
Is the mandatory $id field missing from this schema definition?

Without the $id field, the schema cross-reference system ($ref resolution)
can break, and dt_binding_check might silently skip validation or report
misleading errors. Should it be added to the top-level schema header?

> +
> +title: MediaTek SYSCON Reset Controller

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260626074820.2537=
772-1-peter.wang@mediatek.com?part=3D1

