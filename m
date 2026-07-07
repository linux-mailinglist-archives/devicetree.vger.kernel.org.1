Return-Path: <devicetree+bounces-322230-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vRqkE7QnTWq2vwEAu9opvQ
	(envelope-from <devicetree+bounces-322230-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 18:22:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 871DD71DCD5
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 18:22:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=IMlb++6G;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322230-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-322230-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3A6D0303714D
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 16:17:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FC393002B3;
	Tue,  7 Jul 2026 16:17:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53DFD3E5A01
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 16:17:45 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783441066; cv=none; b=s9yMc24sm5iWMnnhjmhtBF2eu1tFvaKt8Pt01bgli+0BRhdWXp07AtYpP5gMsZdpXt5Ur+zjI7RWoWPKEWrHlGULEVL6i02+9SG4MglRYbYY3Lah3c+V6/2EzsuffIpnPb/NKirzW3DtSU2yVTyZ0+sBxs2FI2yqHUaoCh12XMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783441066; c=relaxed/simple;
	bh=hArr/PSt1vtN/x7OS7H8FAjSt8jJwbzMeoHDddix3qs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=J2xV7fbhynCwhWHlQuS61rNvlVb1zqHUhA1KhYeE7t5yAHO9oF58ExaKqAtGZaY4aWGB06MDUsU7P6U/Wtf0z7RKdHygsMy6IPjr63QpDH/WjCZsTfqTTwBOykmzOZ5s6/Qj+yV3gfZJzdOEvMXad1EXtDbKb0LxhUL9LsnxKkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IMlb++6G; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0286B1F000E9;
	Tue,  7 Jul 2026 16:17:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783441065;
	bh=fTWNHNWIWtsQEt+NQhvnyHYw91RCga+lUYtBcuk1QZc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=IMlb++6GvGJ9yTQUAawAgQki09rK7W+aW7sUxFDJOVA1hI8OFyJc/kY9PFvT3dckk
	 0gffoot4/5njUrJsuRYIXQkeYKpBTR7s8PvvcrlSrUNINqnc16gP4pNszVGjS3CVOo
	 gUUZonJ72sR4Fj+cFtk8x5USXCxoKNEQGecElJTQzcCASZl8QL2Bo+JW7NlxYb8QL+
	 /aV3eMcSpDHxeai8YyJ0zZr2HQqoO4sZ/eT0BlfH3HpookHzYymmRASnEDX7Amvpct
	 mjc5eoPrchlR783q02rlrMx4pj1kZiPkSmHf2a62QVZkgV1hWgK8wU/Q2Wz1HUMz7q
	 oxQk3AQ+kMvqA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 17/17] docs: iio: add documentation for ad9910 driver
Reply-To: sashiko-reviews@lists.linux.dev
To: "Rodrigo Alencar" <rodrigo.alencar@analog.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260707-ad9910-iio-driver-v7-17-a4ec30f63700@analog.com>
References: <20260707-ad9910-iio-driver-v7-0-a4ec30f63700@analog.com>
 <20260707-ad9910-iio-driver-v7-17-a4ec30f63700@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 16:17:44 +0000
Message-Id: <20260707161745.0286B1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-322230-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:rodrigo.alencar@analog.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
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
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sashiko.dev:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid,analog.com:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 871DD71DCD5

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Missing newline at the end of the newly added documentation file.
--

--- Patch [17]: [PATCH v7 17/17] docs: iio: add documentation for ad9910 dr=
iver ---
commit 96ab956a41cf5e3619f02b259c8c1dedbd083c07
Author: Rodrigo Alencar <rodrigo.alencar@analog.com>

docs: iio: add documentation for ad9910 driver

This commit adds documentation for the AD9910 DDS IIO driver. It describes
the channel hierarchy, operating modes, attributes, and provides sysfs ABI
usage examples.

> diff --git a/Documentation/iio/ad9910.rst b/Documentation/iio/ad9910.rst
> new file mode 100644
> index 0000000000000..ab5223c70c01a
> --- /dev/null
> +++ b/Documentation/iio/ad9910.rst

[ ... ]

> +Power down the device:
> +
> +.. code-block:: bash
> +
> +  echo 1 > /sys/bus/iio/devices/iio\:device0/out_altcurrent100_powerdown
> \ No newline at end of file

[Severity: Low]
This isn't a bug, but could we add a terminating newline to the end of this
new documentation file? Missing EOF newlines typically trigger checkpatch
warnings and violate standard file formatting conventions.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260707-ad9910-iio=
-driver-v7-0-a4ec30f63700@analog.com?part=3D17

