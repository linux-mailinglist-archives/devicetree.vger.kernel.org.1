Return-Path: <devicetree+bounces-326382-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1czoOc5yVmoQ5wAAu9opvQ
	(envelope-from <devicetree+bounces-326382-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 19:33:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 653AD75777B
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 19:33:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=NwhyURW3;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326382-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326382-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7586B314DB68
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 17:30:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E5DE375AC6;
	Tue, 14 Jul 2026 17:30:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09C872D0C92;
	Tue, 14 Jul 2026 17:30:04 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784050206; cv=none; b=h1rk6fqUmCzmTbQl1URx+kUcAR3qqOR/bDEEUTP/m+seaVNibcJltZjnI9GDVD0O74hJfVYkrgjSWQ4j+Z9NKvERSDynmkgiyWosFwGclamKmxrhqiPZfAVqgtdrhzkZFwah4SVUCIvWXOzXRYk958xTNgh0vrxkUdDOPyQCQKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784050206; c=relaxed/simple;
	bh=7/tfEkTrQJclg7vYz4oSxN7FVvAS7tG34YCv3gzIbvs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=mjoq0ziw31MadOdlj3Gg1F39g9Pf81ZghyTmjCJrEIOK1O5a3zRVLyqMoiCyzv4goYxTF4BOr5YJxaeezpEv5Yoz0t5ctYPfoOxwk/VUTN0VlVRtkgdWHnTAnwwj4jyfg3evibwH0lKd0fcH73D9H7Oad/5g+lbpqttyWixYa7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NwhyURW3; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 447F91F000E9;
	Tue, 14 Jul 2026 17:30:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784050204;
	bh=8leRGNcUWHNeu8r3GazGhcVUdnGh581ZTc4bNEJEif4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=NwhyURW3PzrXTPUA/pzByE7+foSNhoImBjstWWmetFTg8Y9bpGBYA8wx3e9Uch9rG
	 5nx6FRc5zgni4BAlJjHBeEd84IoOPGiSe2bphq5RyZpf9c6qm83hsuJsmFsJDEBVFs
	 dZcS3LOkZxi8+fczRt989+SKl2bSMCG4sJyKWH2IymAXMCoGaybpnFCmnRIYc+jFpi
	 VeEN8+W2BPeRXww13w24/97KO09Kw7bbbeaVdqUCc5CgVqTS2J13vSDhffBGrlhxvQ
	 2uXa+aalGZeHpuX0zLrbkZszTAZhZDRkeZ5fTyzxlvj7HhbuIixKVOGvspk81fYQQF
	 5QFsrSfNhtGzQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v23 08/13] mfd: core: Add firmware-node support to MFD
 cells
Reply-To: sashiko-reviews@lists.linux.dev
To: "Shivendra Pratap" <shivendra.pratap@oss.qualcomm.com>
Cc: lee@kernel.org, mfd@lists.linux.dev, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260714-arm-psci-system_reset2-vendor-reboots-v23-8-e7453c548c21@oss.qualcomm.com>
References: <20260714-arm-psci-system_reset2-vendor-reboots-v23-0-e7453c548c21@oss.qualcomm.com>
 <20260714-arm-psci-system_reset2-vendor-reboots-v23-8-e7453c548c21@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 17:30:03 +0000
Message-Id: <20260714173004.447F91F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-326382-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid,lists.linux.dev:replyto,vger.kernel.org:from_smtp,sashiko.dev:url];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:shivendra.pratap@oss.qualcomm.com,m:lee@kernel.org,m:mfd@lists.linux.dev,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 653AD75777B

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Strict enforcement of `named_fwnode` aborts the entire MFD probe i=
f the node is missing.
--

--- Patch [8]: [PATCH v23 08/13] mfd: core: Add firmware-node support to MF=
D cells ---
commit c957d9fd3d002c62018221b0f97f57bad5c0b519
Author: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>

mfd: core: Add firmware-node support to MFD cells

This commit extends struct mfd_cell with a named firmware-node field to all=
ow
registering a child device using an explicit firmware node. It uses this as=
 a
fallback when no firmware node is assigned by device tree, ACPI, or software
matching.

> diff --git a/drivers/mfd/mfd-core.c b/drivers/mfd/mfd-core.c
> index 7aa32b90cf1eb..ba9682ead2cad 100644
> --- a/drivers/mfd/mfd-core.c
> +++ b/drivers/mfd/mfd-core.c
[ ... ]
> @@ -224,6 +289,37 @@ static int mfd_add_device(struct device *parent, int=
 id,
> =20
>  	mfd_acpi_add_device(cell, pdev);
> =20
> +	/* named_fwnode is a fallback only when no OF/ACPI match and no swnode =
*/
> +	if (!pdev->dev.fwnode && !cell->swnode && cell->named_fwnode) {
> +		struct device_node *named_np;
> +
> +		fwnode =3D device_get_named_child_node(parent, cell->named_fwnode);
> +		if (!fwnode) {
> +			ret =3D -ENODEV;
> +			goto fail_alias;
> +		}

[Severity: High]
Will this strict enforcement cause the entire MFD parent probe to fail if an
optional child node is missing?

Unlike the permissive of_compatible match that merely warns and bypasses
missing nodes, returning -ENODEV here cascades up to mfd_add_devices(). This
causes a failure that unwinds all active child devices and blocks the parent
driver's probe.

Should a missing named firmware node be treated less strictly so it doesn't
disable unrelated MFD functions?

> +
> +		named_np =3D to_of_node(fwnode);
> +		if (named_np) {

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260714-arm-psci-s=
ystem_reset2-vendor-reboots-v23-0-e7453c548c21@oss.qualcomm.com?part=3D8

