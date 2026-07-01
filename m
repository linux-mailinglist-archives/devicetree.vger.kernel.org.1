Return-Path: <devicetree+bounces-318234-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wxG+JPjRRGqT1QoAu9opvQ
	(envelope-from <devicetree+bounces-318234-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 10:38:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E041A6EB2DE
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 10:38:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Xu8UXhtD;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318234-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318234-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B9D5830C7002
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 08:31:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D9563AE71F;
	Wed,  1 Jul 2026 08:31:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCE23446DE
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 08:31:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782894710; cv=none; b=D/RB9N8DASc4e7hQlsx8u+WoMCx4ji3aEzgg5DF2XgnP7tGbjf4//pN1jYra/jc7Uri4IG2f5JrFPAuPT7CgD/jhtDHNQVCf5fXpbBGCXI1Eft4wdWHu22URcCuRoHG5GSneBo1nPFw9gzO7AoIddxjfHmLCJYag1ajyHYtrsr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782894710; c=relaxed/simple;
	bh=4oqb5tigzr7j4QjLRdaYGwHCBq364XduzEAFDJboV8g=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=VFgMRjNhPm1+rlV1yztEs1lhlvnRIzyO69Pn/Iug4+bZsdHJ14sngDSLNABC1cZT+NqXhxqMl56TNfVONI9ozFBnn91f0fHJw3yNnK4ApJeK2BkMsBqkVhhSMpaWFM8goiGFRlzoOO3c1HKr7WeqV10wpQTHitEWi4HBrBnt4lE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xu8UXhtD; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F8341F00A3A;
	Wed,  1 Jul 2026 08:31:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782894709;
	bh=4oqb5tigzr7j4QjLRdaYGwHCBq364XduzEAFDJboV8g=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Xu8UXhtDkLSr72MUoJXrSYnEakURHb+OXLHGOGOqfopehq0EaSvmltobKb7Bv89D2
	 Nh4C+FsbUVbae+9UZzovJyFOqq+QMv8PClKNp8YgyL++TbpGoXalqOD2buOaZ6AiF2
	 Ba4/Mi5LlUX0xERF/fsf3KiFtAo59KzkHwSDSwzGfMTgFoB1XZdbC1fAuzM0ruC9+b
	 sy8aDVAJk5g6gtLJIUvrmIROZdsk8OCChrHmVynzJd91PZbe7QyU0fHbLu857Vwjj7
	 QKYR3c/CGhIVmEX7Kh5x2d/H+Ofq4lK93Iq6A/Nyz5goC9VPUFBE04LpBcuRWqawkm
	 X1doGA/Qp2wcg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH V3 2/3] arm64: dts: qcom: monaco-evk: Enable SDHCI for
 SD Card via overlay
Reply-To: sashiko-reviews@lists.linux.dev
To: "Monish Chunara" <monish.chunara@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260701081715.2580329-3-monish.chunara@oss.qualcomm.com>
References: <20260701081715.2580329-1-monish.chunara@oss.qualcomm.com>
 <20260701081715.2580329-3-monish.chunara@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 08:31:47 +0000
Message-Id: <20260701083148.0F8341F00A3A@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-318234-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:monish.chunara@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E041A6EB2DE

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] The SD card overlay fails to remove conflicting eMMC properties (`=
no-sd` and `non-removable`) inherited from the base device tree, rendering =
the SD controller non-functional.
- [Medium] The overlay configures 1.8V regulator states and high-speed OPPs=
 for UHS-I, but explicitly disables 1.8V support via `no-1-8-v`, rendering =
the high-speed configurations unreachable.
--

Note: The format of this review is altered to provide a free-form summary
of the findings rather than inline quotes due to recitation restrictions.

commit 8700d2dd7b89a43576ae3f5ad283ea9e832db05a
Author: Monish Chunara <monish.chunara@oss.qualcomm.com>

arm64: dts: qcom: monaco-evk: Enable SDHCI for SD Card via overlay

The monaco EVK board supports either eMMC or SD-card, but only one
can be active at a time. This enables the SDHCI for SD Card support
via a device tree overlay.

[Severity: High]
In arch/arm64/boot/dts/qcom/monaco-evk-sd-card.dtso, the overlay modifies
the &sdhc_1 node by adding no-mmc and cd-gpios, but it doesn't explicitly
delete the conflicting properties inherited from the base device tree.

Since device tree overlays merge nodes and do not implicitly overwrite
boolean properties, does this resulting merged node contain both no-sd
(from the base) and no-mmc (from the overlay)?

If both properties are present, will the MMC subsystem set both
MMC_CAP2_NO_SD and MMC_CAP2_NO_MMC flags and refuse to initialize any
card? Additionally, won't leaving the non-removable property from the
base tree intact cause mmc_of_parse() to bypass requesting the newly
added cd-gpios?

Should this overlay explicitly use /delete-property/ no-sd; and=20
/delete-property/ non-removable; to clear the base configuration?

[Severity: Medium]
Also in arch/arm64/boot/dts/qcom/monaco-evk-sd-card.dtso, the &sdhc_1
node is configured with the no-1-8-v property. However, the overlay
configures vreg_sdc with a 1.8V state (states =3D <1800000 1>) and sets up
sdhc1_opp_table with opp-100000000 and opp-202000000, which correspond
to SDR50 and SDR104 modes requiring 1.8V.

Does setting no-1-8-v force the MMC core to disable UHS capabilities and
artificially restrict the SD card to 50MHz?

If the board genuinely supports 1.8V, should the no-1-8-v property be
removed? Alternatively, if the board cannot support 1.8V, should the
unused 1.8V regulator configurations and high-speed OPP additions be
dropped to avoid contradictory configurations?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701081715.2580=
329-1-monish.chunara@oss.qualcomm.com?part=3D2

