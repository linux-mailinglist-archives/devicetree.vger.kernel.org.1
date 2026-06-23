Return-Path: <devicetree+bounces-314907-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id c3ufDEuvOmoGDwgAu9opvQ
	(envelope-from <devicetree+bounces-314907-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 18:07:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DFE66B8915
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 18:07:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=l7t7tmCz;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314907-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314907-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BE1BC301C5B6
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 16:02:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1386930B514;
	Tue, 23 Jun 2026 16:02:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1749E30567E
	for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 16:02:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782230546; cv=none; b=g872BnqPN9QhahHsTv3TjPb2fLbQ4gVg9cZxbJUpOryrziTGHGUwX2dln/YGtwK7c/qPJPWVNtKUwSOJOq6/Q152dgdv7u/5P8jCUBbBNsOjmrJPNl8BsyOrxLo0zasPA79U7uSVWHVssfGGHQsa/B+UqDxWY7+3Bzd5FAeds7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782230546; c=relaxed/simple;
	bh=mTQgvnU1+5Ut1L3/wlZiXrv0CKat2sY0VUk04Svmbss=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=FKHc0F3QEClVaY1MCCaMa1bqHq7RlSHdzOQpHRV6jg+9rmUEG1AgbRkoQ3ikLVzqo/ubLDyl5o1pXKlXGnQeSVE00EsiTXwjs0rLf0eh6Dq+o5VAVaXsMeqwX1YDejz46O0j+SEn90/b/mJ7hSLzrLh3Aa+cqklF88C0ByaVM0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l7t7tmCz; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E99D1F000E9;
	Tue, 23 Jun 2026 16:02:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782230544;
	bh=mTQgvnU1+5Ut1L3/wlZiXrv0CKat2sY0VUk04Svmbss=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=l7t7tmCzzMr4oo0DzDKyW+rHU7xQeVvyX/4s+E2FRv+EXKr8995SRgvH4+kolcfMG
	 ioUwIw20GEyuzfD5Ennk+ZcRF3+oLKYGC11CJOMSsEef68rzOWZK3fBCDOkTIGuN8M
	 xZYtisDUbEXpR9n1swa4VPXjKaMgVBoYaFgCGCQ+LkXbku0De0LFC3asgti5SufcWN
	 m4lyVGKfqXhHQHePNO60wtIoMBg9qXvCYvFQWvKE3XsnedWCspTNMs3db1f33VDq3X
	 +88xkNqcuV3urxnHDTMqq3Bp7Jfzr6ZbOaoj0eQN/qhLlx+uSzPvFo3/43Lbu8i5We
	 4Yyea/tGeo1CA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: iio: health: add maxim,max86150
Reply-To: sashiko-reviews@lists.linux.dev
To: "Md Shofiqul Islam" <shofiqtest@gmail.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260623155556.13701-2-shofiqtest@gmail.com>
References: <20260623140113.12574-1-shofiqtest@gmail.com>
 <20260623155556.13701-1-shofiqtest@gmail.com>
 <20260623155556.13701-2-shofiqtest@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 23 Jun 2026 16:02:23 +0000
Message-Id: <20260623160224.4E99D1F000E9@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-314907-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:shofiqtest@gmail.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url,vger.kernel.org:from_smtp,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6DFE66B8915

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The YAML binding schema file is added with executable permissions (=
100755) instead of standard text file permissions (100644).
--

commit c219f77d4696cb841b5ce1448aac625e0d36d4ad
Author: Md Shofiqul Islam <shofiqtest@gmail.com>

dt-bindings: iio: health: add maxim,max86150

This commit adds a new YAML device tree binding schema for the Maxim
MAX86150 ECG and PPG biosensor.

> diff --git a/Documentation/devicetree/bindings/iio/health/maxim,max86150.=
yaml b/Documentation/devicetree/bindings/iio/health/maxim,max86150.yaml
> new file mode 100755

[Severity: Low]
This isn't a bug, but should this YAML binding schema file be added with=20
standard text file permissions (100644) instead of being marked as executab=
le?

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260623155556.1370=
1-1-shofiqtest@gmail.com?part=3D1

