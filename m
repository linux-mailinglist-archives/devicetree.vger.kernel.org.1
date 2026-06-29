Return-Path: <devicetree+bounces-316873-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Cd+OMSQ+QmpK2gkAu9opvQ
	(envelope-from <devicetree+bounces-316873-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 11:43:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F4B6D85EF
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 11:43:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="P/5OnZnr";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316873-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-316873-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id F223E300C03A
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 09:42:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50EEE3F1654;
	Mon, 29 Jun 2026 09:42:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432103783CC
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 09:42:56 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782726177; cv=none; b=jhmbyozK/10qh+EwHTormnKBFu44/sgX/WrW1KcDzm/FAcrAo53deDvl/pOUX8luUz3TcyrmvSQDNCWR8H1otQQhv/78Fbvz9OF7MUqhsaVf/8oMNpSfgjqcLDHGwVH1WimrlroCJrL36fM0RmoX7uju03HJkWTY1A3GyNwQbDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782726177; c=relaxed/simple;
	bh=YLwUN3fCCeJRadl1pBVF6TXgm8FtV80yb9GgyLTkP6Q=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=aBI90Lk/kNmCm3TvSfR5bJHxzr6r1Uizc9ngXd/TKUpSpDGeFtdbCvYlllEZCpj+80trz/v54tmkRUYl8bIzeca7X+NThZyTNOBJhll+0lpjycgNt9GvtCA2uerOuLXIvja2AVdJNLynjxCrjPOYLqmkPqJgk+x5IZqhKTTCpX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P/5OnZnr; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB7281F000E9;
	Mon, 29 Jun 2026 09:42:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782726175;
	bh=mBL1BF6BT/SWDEsEKWduChFBHkkQwms1iuOyJGiwgXY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=P/5OnZnrCEmy84HzuvKEQRDFRVeRGRUqg4IXc2KfeB4qYeUIAaljRYVlp2QE0/E7R
	 N3vq75ifVKXgl4cMj0pX6qub5a0dPXHoLeTIESpLUk7VNeMHgeJGqBwxxMLcrRsIv1
	 zRWhC34P/ARH49KBb9WzD49z58Sy9f0NsfOB65Yn2Gpv8Hlq0Fe5zlT5qkoHOh2qZE
	 EexSUldlnm3dB5gxPquJ3WwVKL5S05smuSRahQNyEXKptPd9IResept1CwW4a9FhRG
	 FqoABGRdnvC5VAViLNpfBDhrOdarnLlXv2uCYK+uopcH+7BlRnSdLD07Xg0Og63+s7
	 ZIT8t7yhsrt9Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 1/4] iio: dac: ad3530r: Refactor setup to
 table-driven register bank approach
Reply-To: sashiko-reviews@lists.linux.dev
To: "Kim Seer Paller" <kimseer.paller@analog.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260629-iio-ad3532r-support-v3-1-f6e4f4abebbe@analog.com>
References: <20260629-iio-ad3532r-support-v3-0-f6e4f4abebbe@analog.com>
 <20260629-iio-ad3532r-support-v3-1-f6e4f4abebbe@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 29 Jun 2026 09:42:55 +0000
Message-Id: <20260629094255.AB7281F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-316873-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:kimseer.paller@analog.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,smtp.kernel.org:mid,sashiko.dev:url,analog.com:email,lists.linux.dev:replyto,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 58F4B6D85EF

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The commit message claims to switch `spi_device_id` to named ini=
tializers, but this change is missing from the patch.
--

commit 54fc2d1026683255f5c87f5095c8f2ddef61fbf3
Author: Kim Seer Paller <kimseer.paller@analog.com>

iio: dac: ad3530r: Refactor setup to table-driven register bank approach

This commit replaces direct register calls in ad3530r_setup() with
per-chip register address arrays and bank helpers. It also converts
sw_ldac_trig_reg to a function pointer for per-bank LDAC trigger
register selection.

> Replace direct register calls in ad3530r_setup() with per-chip register
> address arrays and bank helpers (ad3530r_set_reg_bank_bits,
> ad3530r_write_reg_banks). Convert sw_ldac_trig_reg from a static
> register address to a function pointer for per-bank LDAC trigger
> register selection. Switch spi_device_id to named initializers.

[Severity: Medium]
Is this description accurate?

The commit message claims to switch spi_device_id to named initializers,
but this change is missing from the patch. Looking at ad3530r_id in
drivers/iio/dac/ad3530r.c, it still uses positional initializers:

static const struct spi_device_id ad3530r_id[] =3D {
	{ "ad3530", (kernel_ulong_t)&ad3530_chip },
	{ "ad3530r", (kernel_ulong_t)&ad3530r_chip },
	{ "ad3531", (kernel_ulong_t)&ad3531_chip },
	{ "ad3531r", (kernel_ulong_t)&ad3531r_chip },
	{ }
};

Was this change accidentally omitted from the patch, or should the commit
message be updated?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260629-iio-ad3532=
r-support-v3-0-f6e4f4abebbe@analog.com?part=3D1

