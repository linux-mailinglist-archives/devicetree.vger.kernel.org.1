Return-Path: <devicetree+bounces-319946-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TJ0HApZ6R2ohZAAAu9opvQ
	(envelope-from <devicetree+bounces-319946-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 11:02:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 243B470066B
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 11:02:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=YCto8EmN;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319946-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319946-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3B5FC30393C2
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 09:00:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5397389E02;
	Fri,  3 Jul 2026 09:00:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE5A038888E;
	Fri,  3 Jul 2026 09:00:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783069252; cv=none; b=OYUBiKB+XC51PnbHKw05TQ/x1Rbto9Xq4j7fyGqgGpvURM0HnPB9ArFVxliFA32qBCsCAD9J1pWDfqUhPETE8URrIwdtLjYSuPnvXLvVi7JLk+g6fxOvOBVJLN+XXWVcxHBYGpOYJtVple52K9lveRMZKvfVndU86TrbNV26LGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783069252; c=relaxed/simple;
	bh=tdOlXp1vDONftqxfu295xMIvJ+7AhFdAxUSnxAEthPE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=oOkgNYUP8quGJ5bJP6mBHhtbiVL+fikZI8WXGk4vOFALtqPyS+y6/GC5WYaBT5N1u5kVLV3Mh2oKioAb/iWSUlG6YeuQT2ZM6Pt+KRm+phgrfWiYgMeJ7S5lQZ7Sd7JVNKC9kk5DgZVrsh+gj/Bk2nfHwta7kHD8XmB4hSDVbKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YCto8EmN; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1E0A1F00A3A;
	Fri,  3 Jul 2026 09:00:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783069251;
	bh=tdOlXp1vDONftqxfu295xMIvJ+7AhFdAxUSnxAEthPE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=YCto8EmNz41upJ5qOzhHUGrD5Iu3qnytr8KsbKECkZjCVsWvyvtkfIGyipo1jdhw7
	 ebgP7rtAQT4nlaWJlYEKX2aKf4J1EQ6GS1mJ2GfcvQGgTZ8X883WSa28+r0ioIfli+
	 6rkjZ6LQNw4AGA+glmNNCSSAJRcbZsWWXlWIdaWsul1Y3aQoh9P8HBX7YSyqT7FioS
	 gXU54TfxuCxe53uTCVUczQeR+a9Dypb5mFg7kGEIeQJLMAi1k6kiwmVXpHPM6nxwNu
	 xMjXHKgDPb05UP+AguXLFRywsWOIoLhygb9pYpN0EFpaeAJWqeOVCionz2r3hN7YgT
	 xGjk0hL/ZeGxA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v1 10/15] arm64: dts: imx8mn-var-som-symphony: Add TPM2
 support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Stefano Radaelli" <stefano.radaelli21@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev, robh@kernel.org, Frank.Li@kernel.org
In-Reply-To: <fb9bfa8584a608e9ba8179b2749593bc23c040ea.1783067947.git.stefano.r@variscite.com>
References: <cover.1783067947.git.stefano.r@variscite.com>
 <fb9bfa8584a608e9ba8179b2749593bc23c040ea.1783067947.git.stefano.r@variscite.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 03 Jul 2026 09:00:50 +0000
Message-Id: <20260703090050.F1E0A1F00A3A@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-319946-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:stefano.radaelli21@gmail.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:robh@kernel.org,m:Frank.Li@kernel.org,m:stefanoradaelli21@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,lists.linux.dev:replyto,variscite.com:email,sashiko.dev:url,smtp.kernel.org:mid];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 243B470066B

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Incomplete hardware initialization for the TPM device due to mis=
sing `reset-gpios` driver handling.
--

Note: The format of this review is altered and does not include direct quot=
es=20
of the patch code due to recitation restrictions. I am providing a free-for=
m=20
summary of the review findings instead.

commit 752fc746ff7ba94f6473f1446bfe64ae3aa4003c
Author: Stefano Radaelli <stefano.r@variscite.com>
Subject: arm64: dts: imx8mn-var-som-symphony: Add TPM2 support

This commit adds support for the ST33K TPM2 device on the VAR-SOM Symphony=
=20
carrier board. It introduces device tree nodes for the ST33K TPM2 connected=
=20
over I2C and a PCA6408 GPIO expander intended to control the TPM reset sign=
al.

[Severity: Medium]
In the newly added st33ktpm2xi2c node, there is a reset-gpios property
referencing pin 4 of the pca6408 GPIO expander. Will this actually bring
the TPM out of reset during boot?

Looking at the tpm_tis_i2c driver, it does not appear to contain code to
request and drive the reset-gpios property.

Furthermore, the pca6408 node does not declare a gpio-hog to statically
configure the pin state. This implies the GPIO expander pin will default to=
 a
high-impedance input when the kernel boots.

Unless the board has a hardware pull-up resistor or the bootloader
specifically configures this pin as an active output before handing off to
Linux, won't the TPM remain held in reset and fail to probe?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1783067947.gi=
t.stefano.r@variscite.com?part=3D10

