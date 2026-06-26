Return-Path: <devicetree+bounces-316019-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dpwyCtJFPmqxCQkAu9opvQ
	(envelope-from <devicetree+bounces-316019-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 11:26:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF4D6CBAE2
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 11:26:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=OSeVRuco;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316019-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316019-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EEDDB3023A46
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 09:26:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6149E3BB13D;
	Fri, 26 Jun 2026 09:26:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ABF7288B8;
	Fri, 26 Jun 2026 09:26:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782465998; cv=none; b=laKdE/fjKrPyRw7xoHzswo+qDNxc7Sm/c9WqesfvxUa7DYMMD+EW3C8QrzLZx0nTokzttFui7z2vUwpvmTl9TcmKJfInfOKVUCu3mvrnP2xHBt7qLhcmsPQ7YNfDURl3It0Mv7qgSep5d4kf2rkrX7grDA/MorqhjjgopOmGbOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782465998; c=relaxed/simple;
	bh=iluvErhpoIFWDmAtkJJcnEKhv22pbYqY7UXZYN+JITc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=WNBnO6kZhq3gPHZ/ZKcGoOAuGJ/LrytjCyrTMXsUekFvFZZXy0sxv8PrGRWNifk0AT0wSFXtWmTy1qi+73Xw6efjGxzyN1HJ94PTTitdUNz2+Gd8anCE5HmOpLv7ZGsNIpS+Kgb0gM77Q0o6PlE0lDz33wF2ndRFvRVzjSJ2PXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OSeVRuco; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA2471F00A3A;
	Fri, 26 Jun 2026 09:26:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782465997;
	bh=iluvErhpoIFWDmAtkJJcnEKhv22pbYqY7UXZYN+JITc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=OSeVRucoaYbGyouQEmE91f9bj1sgQbVBLcIyfdTp7fVAP3katYubImj4bxOCfoSeP
	 l5Og+dz7Bey5GoYMvS8vgvHqPOsI0K2+C51hVD0jZNURFYV2RG4KntQYBg/4w9ByF3
	 r/PBV3RHeBHU0+kjNn/+2zMLFKxbDqoBtIH8S245qbCOXliToterxIOt3m6eRrU/pg
	 O+QS5Azl00WGkte3qbHzg7YXc0QNC5Y5HKcxHEzuVgZ+vX0aufqMpqDJjaEJvD7SyI
	 /uW/c/owuuQOuRkeBECCIpt35JRJbA4ehUaG3w/fR2cVatRynLtPg4qso7ZgePoA4Y
	 LX4x/6BPejF/A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/4] dt-bindings: clock: airoha: Add additional reset
 for PCIe PERSTOUT
Reply-To: sashiko-reviews@lists.linux.dev
To: "Christian Marangi" <ansuelsmth@gmail.com>
Cc: robh@kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260626092029.3525264-2-ansuelsmth@gmail.com>
References: <20260626092029.3525264-1-ansuelsmth@gmail.com>
 <20260626092029.3525264-2-ansuelsmth@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 26 Jun 2026 09:26:36 +0000
Message-Id: <20260626092636.BA2471F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ansuelsmth@gmail.com,m:robh@kernel.org,m:linux-pci@vger.kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-316019-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,smtp.kernel.org:mid,sashiko.dev:url,vger.kernel.org:from_smtp];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: ACF4D6CBAE2

> Add additional reset to control PCIe PERSTOUT reset line for each of the 3
> PCIe lines.
>=20
> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>

Sashiko has reviewed this patch and found no issues. It looks great!

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260626092029.3525=
264-1-ansuelsmth@gmail.com?part=3D1


