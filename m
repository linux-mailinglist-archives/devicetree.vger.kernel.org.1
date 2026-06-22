Return-Path: <devicetree+bounces-314190-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bODNH1LGOGqchwcAu9opvQ
	(envelope-from <devicetree+bounces-314190-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 07:21:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C0AA6ACB87
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 07:21:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=WG+g0hWU;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314190-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314190-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8EDE93003BF4
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 05:21:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55F70356A37;
	Mon, 22 Jun 2026 05:21:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499CC3546E0
	for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 05:21:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782105676; cv=none; b=b9AxUvp+L62M+o2yWBRwIdtpi84Huz9I9zBh6BKOGIaY8QH8Du5zfVSyi0XNz2ADOJSaUkXrqucmymRZ72PLJPjLgWE6QRQR0o0eD00G6OstxblJFIGMmWOvsxNjOapS4JTfGr+gxPojgAX2cs7b/xrZWAvob196gGrGEjGn/T0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782105676; c=relaxed/simple;
	bh=rgPEyPmKM0z/hEvfmwpJ3gAbSTIPsW/4MlkUzoJaX/o=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=GtzUDyD5M4mH9IgwqglkBH6Kmygdn/DwZckbWMss64mOHoqdc/mPTBs36pRJo6gmn5O2tP8XxbfawIIEoIJEAGa2oWVqCaGqWtAYDgROQ42tuC7XtQc7CwDP7iJybjvVTS5RaBSixgp4bQkIWW46co3Bxs8oCJHJJycMhigWjyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WG+g0hWU; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 395061F000E9;
	Mon, 22 Jun 2026 05:21:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782105674;
	bh=RRXxwP48CRoRWi4fCERaVTRGuJopJiczsXjrbvUT+kc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=WG+g0hWUSJtg5zz6gTDw0NjIQlm2fL6IjupRSZjnNpDdeueuKvUPSvtxcYL23ZPcO
	 Va/SdP45DK/Z9Sqyq2xFwSB2jlfEBBn7m5cA3h6aUJiqMvuHn+ueWrA3gy+ej2m///
	 6PYnzwjfLhCGZK5asAM7wqXn2MJimCHUamERSzLo77E6qpVm8Swp0Pz7rQ+oUzSsry
	 8FPMVMtxAxvS3JjraCW/G4it2ffp0dE/L+5qNnZv5O/wSPDKknpzVdk1AR/acd07mc
	 u8xyiCeOnkg3bviPtcHqZC9qc8XF+BhpIqtjtWITTGKGDYal62h0GokZzKfJ0VS5T6
	 TX1Fg+A4wS+8A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 5/8] clk: qcom: tcsrcc-glymur: Add Mahua QREF
 regulator support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Qiang Yu" <qiang.yu@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260621-tcsr_qref_0622-v6-5-c939c22ded0c@oss.qualcomm.com>
References: <20260621-tcsr_qref_0622-v6-0-c939c22ded0c@oss.qualcomm.com>
 <20260621-tcsr_qref_0622-v6-5-c939c22ded0c@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 22 Jun 2026 05:21:13 +0000
Message-Id: <20260622052114.395061F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-314190-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:qiang.yu@oss.qualcomm.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,qualcomm.com:email,sashiko.dev:url,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7C0AA6ACB87

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Missing regulator specifications for non-PCIe clocks (EDP, USB) in=
 Mahua TCSR descriptors
--

commit 6c7380c66661cd5b69976b7e56fdb61f281c6291
Author: Qiang Yu <qiang.yu@oss.qualcomm.com>

clk: qcom: tcsrcc-glymur: Add Mahua QREF regulator support

This commit adds Mahua-specific regulator arrays and clock descriptor tables
for PCIe clock references. It uses match_data to select the correct descrip=
tor
table based on the compatible string during probe.

> diff --git a/drivers/clk/qcom/tcsrcc-glymur.c b/drivers/clk/qcom/tcsrcc-g=
lymur.c
> index 2db039342f300..9af520b71f315 100644
> --- a/drivers/clk/qcom/tcsrcc-glymur.c
> +++ b/drivers/clk/qcom/tcsrcc-glymur.c
[ ... ]
> +static const struct qcom_clk_ref_desc tcsr_cc_mahua_clk_descs[] =3D {
> +	[TCSR_EDP_CLKREF_EN] =3D {
> +		.name =3D "tcsr_edp_clkref_en",
> +		.offset =3D 0x60,
> +	},
> +	[TCSR_PCIE_2_CLKREF_EN] =3D {
> +		.name =3D "tcsr_pcie_2_clkref_en",
> +		.offset =3D 0x4c,
> +		.regulator_names =3D mahua_tcsr_tx1_rpt01_rx1_regulators,
> +		.num_regulators =3D ARRAY_SIZE(mahua_tcsr_tx1_rpt01_rx1_regulators),
> +	},
[ ... ]
> +	[TCSR_USB4_1_CLKREF_EN] =3D {
> +		.name =3D "tcsr_usb4_1_clkref_en",
> +		.offset =3D 0x44,
> +	},
> +	[TCSR_USB4_2_CLKREF_EN] =3D {
> +		.name =3D "tcsr_usb4_2_clkref_en",
> +		.offset =3D 0x5c,
> +	},
> +};

[Severity: High]
Do we need regulator specifications for the non-PCIe clocks (EDP, USB2, USB=
3,
USB4) in this descriptor table?

Since this array only populates regulator_names for the PCIe clocks, the
non-PCIe entries are left with 0 regulators.

When the USB or eDP PHY drivers call clk_prepare_enable() on their clkrefs,
will qcom_clk_ref_prepare() just set the hardware register bit and silently
skip voting for the required LDOs?

If so, does this leave the QREF block unpowered for these peripherals and
prevent the PHYs from initializing?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260621-tcsr_qref_=
0622-v6-0-c939c22ded0c@oss.qualcomm.com?part=3D5

