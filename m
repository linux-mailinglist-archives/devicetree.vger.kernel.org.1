Return-Path: <devicetree+bounces-326380-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Z00NJSRyVmrU5gAAu9opvQ
	(envelope-from <devicetree+bounces-326380-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 19:30:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D2075771E
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 19:30:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ClBHOeHx;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326380-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326380-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 04D4F301D694
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 17:28:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 868634DD6D9;
	Tue, 14 Jul 2026 17:28:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446504A33EE;
	Tue, 14 Jul 2026 17:28:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784050102; cv=none; b=kghcBYSkv/RzKCuvYgkJn9PKuC8Sxvt7UfMyyx+pOGhb1hiLFaUH4xJwrnxCdt/RgQncZyDJMb4EFJ/yVx/8mFawudl4cEdtI46Sh+RWotu6SfN8QiCbL5Vb4X+mTTrFHwHqBJCPihZ+WfOKAdGdrCm8G5NuCZa9hEg7nM7QIJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784050102; c=relaxed/simple;
	bh=Djhqcpt51okbCAPmxWZugZlGMkvSkyqWYAWnaFCl57Q=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=dGQNsaXdvchWmmw9kbnx+D1ySPNz672KdxxHK++qTyOg0rmeuA+u/RLeJKkwdo5yuno3/0JAeYBfsyjh1acl3K7vH4l2d7K/lLYycAeYRMEnYv/pz4B1ICYqd4aatHQHfy6SCoceveiAjpzSXC3nW54l9q+MDRtt32cUy/stJD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ClBHOeHx; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 554201F00A3A;
	Tue, 14 Jul 2026 17:28:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784050101;
	bh=eAfMx/0jkQYK4zlf+/Xx26QIug5isCfeOrDB3Tkz3Ws=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ClBHOeHxJ11kaGcXJv7hlTys06lX78imKr9BP0hWiIysC5qEFDNJhOnl3SwCnqYZT
	 RIibv4GYy1YTVRdXcDE7bFsjPdq/OUWWzRpyuGfPy8zHEOibI9JGwT49IF3nz/qMfF
	 ifIifwRfdv6tic6/q+PtoC6gCrZhyBtoBfwVji08mJGa2LYHOAomSdrQg8XzzathlN
	 c2J2J/Kihq21TiHv6YECL3UxpjVwAdwnhSTJVZ+5R+Ev8Axfjt+yY5U6KbYNXpTERm
	 gRuofBaW+++ZVamo+seBjcwQFd4BbruGZ2UX0RGTDqT8VOND9BqvkhdsMZf+aYXz0T
	 byx1KRuEqUDGQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v23 04/13] firmware: psci: Introduce command-based
 resets
Reply-To: sashiko-reviews@lists.linux.dev
To: "Shivendra Pratap" <shivendra.pratap@oss.qualcomm.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, lee@kernel.org, mfd@lists.linux.dev
In-Reply-To: <20260714-arm-psci-system_reset2-vendor-reboots-v23-4-e7453c548c21@oss.qualcomm.com>
References: <20260714-arm-psci-system_reset2-vendor-reboots-v23-0-e7453c548c21@oss.qualcomm.com>
 <20260714-arm-psci-system_reset2-vendor-reboots-v23-4-e7453c548c21@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 17:28:19 +0000
Message-Id: <20260714172820.554201F00A3A@smtp.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-326380-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,lists.linux.dev:replyto,sashiko.dev:url,vger.kernel.org:from_smtp];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:shivendra.pratap@oss.qualcomm.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:lee@kernel.org,m:mfd@lists.linux.dev,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E7D2075771E

> PSCI currently supports only two resets - SYSTEM_RESET and SYSTEM_RESET2
> ARCH WARM reset. The reset patch is selected based on the Linux
> reboot_mode variable. The PSCI specification now includes SYSTEM_RESET2
> for vendor-specific resets but there's no mechanism to issue these
> through psci_sys_reset().
>=20
> Add a command-based reset mechanism that allows external drivers to set
> the PSCI reset command by passing a reset_type and a cookie.
>=20
> Add support for the following reset commands:
>   - SYSTEM_RESET2 vendor-specific resets.
>   - SYSTEM_RESET2 ARCH WARM reset and SYSTEM_RESET (reset_type =3D 0 and
>     cookie maps to psci_standard_resets).
> Unsupported commands fall back to the regular PSCI reset path.
>=20
> Default to the existing reboot_mode-based reset flow unless a reset
> command is configured. If a kernel panic occurs after a reset command is
> set but before the final PSCI reset is issued, ignore the reset command
> and follow the normal reboot_mode-based reset path.
>=20
> Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>

Sashiko has reviewed this patch and found no issues. It looks great!

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260714-arm-psci-s=
ystem_reset2-vendor-reboots-v23-0-e7453c548c21@oss.qualcomm.com?part=3D4


