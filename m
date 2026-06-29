Return-Path: <devicetree+bounces-316895-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mTEOBNtAQmoh2wkAu9opvQ
	(envelope-from <devicetree+bounces-316895-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 11:54:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A8326D8802
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 11:54:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="dzNK/nks";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316895-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316895-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 71D4A300F5E5
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 09:54:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0108A3B7742;
	Mon, 29 Jun 2026 09:54:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234A936CDFD
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 09:54:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782726862; cv=none; b=mBoMgyWSNyxDTrWt+GRvxorcSt4ckFpqD4kZgs1LytuK5XK+hXEj3okPgDIINTEdwQ4l4+oRu9AsV8hEfOmxzaRQjRZXqXoADGRMJ1Fnjfz++SYVOTq6nO2uAeqnPCqGsEWWUtNuTJZUlVuM6rVBA3eZO+lZT943klDDJXJevoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782726862; c=relaxed/simple;
	bh=LLq7P7M/O9pT9e3ElASdEhQSJfMMiLkQOSyagcDIIhA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Gul4+4EbtWw1PZDhNJhmbIdzHyzngOyWySH529pV+uhb2ns6prhmRVNjSglMew2olzaYDiICRax0uNlKI5j1wXV6k6SEX6D+tQ/KIrSdYyfaEM/oPTi3lGrCXT6MNRcCkDOYKZes9TZcjhvxepSKBH+6NzApU2/FxDXVS55MoI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dzNK/nks; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C81891F000E9;
	Mon, 29 Jun 2026 09:54:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782726859;
	bh=IWlDJ8djxwOFQT/xcHc+MSXxg/czOv3ASLJ+/jCSA5s=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=dzNK/nksIFRheWu/QTAx+mxSs4WzTopmT+PdqfI2TB5O1mWuD5NxDfos+9g8kKdJL
	 +qmgyUNnmJBo4caDDIar0XAtwDisN1wzcKaBDvuO46lGZ+X4la0UboVxy30fMupDNz
	 uetwQdkS2Rdz/3i9/9oSL/aNlr8uhHH/eMTo2FAPVIZW+r2vnkr5uosQXaYq46FQrd
	 8ERCdpj4qaUPhh/41CojlVcuO3ax+GomUgX0a0GI/XdU4xQaeRu5oSlA8OZ5SJ/XdA
	 YhLPk/rnSE1kpCty0h03EnBPTT8umPtUFYRLLzPgmG/0N+L7IGq099aH2X2/dQkItP
	 fo+GRI9opWDwQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/4] iio: ABI: add DAC 10kohm_to_gnd powerdown mode
Reply-To: sashiko-reviews@lists.linux.dev
To: "Kim Seer Paller" <kimseer.paller@analog.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260629-iio-ad3532r-support-v3-2-f6e4f4abebbe@analog.com>
References: <20260629-iio-ad3532r-support-v3-0-f6e4f4abebbe@analog.com>
 <20260629-iio-ad3532r-support-v3-2-f6e4f4abebbe@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 29 Jun 2026 09:54:18 +0000
Message-Id: <20260629095418.C81891F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-316895-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,vger.kernel.org:from_smtp,lists.linux.dev:replyto,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,smtp.kernel.org:mid,analog.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9A8326D8802

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The patch fails to implement the spi_device_id named initializer=
s change promised in the commit message.
--

commit 54fc2d1026683255f5c87f5095c8f2ddef61fbf3
Author: Kim Seer Paller <kimseer.paller@analog.com>

iio: dac: ad3530r: Refactor setup to table-driven register bank approach

This commit replaces direct register calls in ad3530r_setup() with per-chip
register address arrays and bank helpers. It also converts sw_ldac_trig_reg
to a function pointer for per-bank LDAC trigger register selection, and sta=
tes
that it switches spi_device_id to named initializers.

> Replace direct register calls in ad3530r_setup() with per-chip register
> address arrays and bank helpers (ad3530r_set_reg_bank_bits,
> ad3530r_write_reg_banks). Convert sw_ldac_trig_reg from a static
> register address to a function pointer for per-bank LDAC trigger
> register selection. Switch spi_device_id to named initializers.

[Severity: Medium]
This isn't a bug, but the commit message states it switches spi_device_id to
named initializers, yet this patch doesn't appear to change ad3530r_id[] in
drivers/iio/dac/ad3530r.c. The array still uses positional initializers:

static const struct spi_device_id ad3530r_id[] =3D {
	{ "ad3530", (kernel_ulong_t)&ad3530_chip },
	{ "ad3530r", (kernel_ulong_t)&ad3530r_chip },
	...
};

Was this change accidentally omitted from this patch?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260629-iio-ad3532=
r-support-v3-0-f6e4f4abebbe@analog.com?part=3D2

