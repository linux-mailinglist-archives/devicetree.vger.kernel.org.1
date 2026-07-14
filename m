Return-Path: <devicetree+bounces-326378-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id aIj6OL1xVmqr5gAAu9opvQ
	(envelope-from <devicetree+bounces-326378-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 19:28:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C9667576B1
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 19:28:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=e8i8xv08;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326378-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-326378-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 44BF630937B0
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 17:27:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 838114C9575;
	Tue, 14 Jul 2026 17:27:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CD7B4A2E3B;
	Tue, 14 Jul 2026 17:27:10 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784050031; cv=none; b=ERssZWlvQjqXlEC62A36PbScYabxnkSrsHyL3oMmfZru3uQUUmX+SMyIBpuOAygvwIuQQf93t8zrm256bg5GzfiFfL7NjNKr7VjEikD/qFMLVTqRTzHTL9Z4wfQD473eRiTMIhX08b9w50gXw57YRZkomNwPVmcsotqC3Aqvhrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784050031; c=relaxed/simple;
	bh=vLrKLFgWOR2nhi+pNt3Qqmm05dv7ohTvBlbH/HOGr8M=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=AmJYvg84Psj/ueosWevbdb4sJDq71xEe02pV5MoUd7T3Fngvrc1xlDvZskOsa/J1rzFAyPyq6o+mquh5FLiPaLk6wgE1H/GSz+vU5wwrlwLTxOQHAY4bgLGmuNkIjK5btPkPsrWW/W5mvb/UtdSa1tw86HcbYfsRQWM836jF2OY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e8i8xv08; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA13F1F00A3A;
	Tue, 14 Jul 2026 17:27:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784050030;
	bh=6iFwPCibT3T/zOL3HNSzTgzR/764uCGkY26oA9n01K4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=e8i8xv08IeCHutGTYjF9LqhL51/36iJSVGj+jCudb347AIeG+h4yzrZcvAgioWU9/
	 PJFqiaqLOAYo7WQw/AP8fiF8V3phm14Gx4pQIEdwPZiCDRjh9T6Slb3jdHc/TGqDJb
	 +447SBNcFUcsHrFqtlSYSjpROrBOGhxxXDtq/eZRk4XKRWRj00fmEL+Xf2OfJDecyo
	 Ehi3dWGp6tWQmP+EF7Chja3h2Gzx0l8iAr4toJsOWnUuw2h7ThmPxl+WaXet4OFnE8
	 AzxkPCE9mAz9bNQfw7eiKtd6kPs7/Cb3Ce28hi1dLWUbq/M5lAVlyb0CrjXYAriiCu
	 QuRQoXBpmEx4w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v23 05/13] mfd: psci-mfd: Add PSCI MFD driver for
 cpuidle-psci-domain cell
Reply-To: sashiko-reviews@lists.linux.dev
To: "Shivendra Pratap" <shivendra.pratap@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org, mfd@lists.linux.dev, lee@kernel.org
In-Reply-To: <20260714-arm-psci-system_reset2-vendor-reboots-v23-5-e7453c548c21@oss.qualcomm.com>
References: <20260714-arm-psci-system_reset2-vendor-reboots-v23-0-e7453c548c21@oss.qualcomm.com>
 <20260714-arm-psci-system_reset2-vendor-reboots-v23-5-e7453c548c21@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 17:27:09 +0000
Message-Id: <20260714172709.EA13F1F00A3A@smtp.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-326378-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,lists.linux.dev:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,vger.kernel.org:from_smtp,sashiko.dev:url];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:shivendra.pratap@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:mfd@lists.linux.dev,m:lee@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2C9667576B1

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] MFD Naming Convention Violation: Driver and file names hard-code th=
e implementation detail 'mfd'.
--

--- Patch [5]: [PATCH v23 05/13] mfd: psci-mfd: Add PSCI MFD driver for cpu=
idle-psci-domain cell ---
commit de3054149d7eea49e51e1d55bb38215b4d3e238f
Author: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>

mfd: psci-mfd: Add PSCI MFD driver for cpuidle-psci-domain cell

This commit introduces a PSCI MFD driver that binds to the "arm,psci-1.0"
node and registers PSCI child cells. It migrates cpuidle-psci-domain to
probe as an MFD child rather than binding directly to the parent PSCI node.

> diff --git a/drivers/mfd/psci-mfd.c b/drivers/mfd/psci-mfd.c
> new file mode 100644
> index 0000000000000..7affd6bb09dd8
> --- /dev/null
> +++ b/drivers/mfd/psci-mfd.c
[ ... ]
> +static struct platform_driver psci_mfd_driver =3D {
> +	.probe =3D psci_mfd_probe,
> +	.driver =3D {
> +		.name =3D "psci-mfd",

[Severity: Low]
This isn't a bug, but does this name violate the MFD subsystem naming
conventions?

The subsystem guidelines recommend avoiding the string "mfd" in driver,
struct, or device names to prevent embedding implementation details into
the driver structure.

Could a more descriptive name be used here that omits the "mfd" string?

> +		.of_match_table =3D psci_mfd_of_match,
> +	},
> +};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260714-arm-psci-s=
ystem_reset2-vendor-reboots-v23-0-e7453c548c21@oss.qualcomm.com?part=3D5

