Return-Path: <devicetree+bounces-318185-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mP4pMaK+RGpw0AoAu9opvQ
	(envelope-from <devicetree+bounces-318185-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 09:15:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C9DE6EA8CA
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 09:15:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=gnJ2nZkx;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318185-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318185-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8B7FA30097E6
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 07:15:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD76439478B;
	Wed,  1 Jul 2026 07:15:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D60F3B5E08
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 07:15:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782890140; cv=none; b=ocydsujRixVER1JU6aT3o0TXuYVlGzmaimr1VqptK0/nWdOI7UnS6M8Oca5bM0KiQ85BnUZqAON+FGhUtrgW3CBDi4d9z5kM37jgyKCTONtEvmSKIw9lSw1rZ9lmorPG1/LFPUoc+p9ccBi3QGCRhV1ssHk7NRQHarGhwbk4C40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782890140; c=relaxed/simple;
	bh=+U6PbTf+3BNBguoAZ4xJdJOKeLDyel/w2Y9MPRIeIXU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Es+Axfy+lQ1AlkXtajQfjEcSTYAeffM8j8Ss29SiBlwo4WkjPJy0f0YjmOJj08sTLH5e/DESQMAgDfTZv4rh8IT/uoe/ZtVIvNC/eSuBA3E7IU3KaavhsvmOtmowCHuAvkeSKQ69j1qbDLEKaDLBHYKlzw+tBlpKTPELl4UqTxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gnJ2nZkx; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 456D61F000E9;
	Wed,  1 Jul 2026 07:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782890134;
	bh=OrrAWx0x/kI+12MgUarS2Ebu8HrIAGpq8GN3EHuNY7c=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=gnJ2nZkxnzCcSF1SvG84RH4ZfJlR60kSHAWvx59nOOCOZsqFAzAbbV4AWsBCU9Buw
	 SL5bz7tFl8hNvL+pkBQjC92RdNqDFib0IeTOXlEUaCrKNKtvSe5keLOqyeuV7Ew/5F
	 TnW/+6GoL6DRoZ6EY1EOIzy6UXldWYObxHZ20kVOX8MwnOvfz37+6UUH3hN3A8RBNX
	 1eOxAJe28uqkNqEeaPMSKHzSyaaMoS3mcW7aixNNhFpuALq19uqYQvN0E9MNUkNne1
	 y3ntSG1Z/6OHLzRFr/TBRc6FbtcQuySMYVxNL73+FL4cvICsXNzveEy8JG+0bMUcBS
	 Ihc9b/gPV/TqA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/2] clk: qcom: apss-ipq-pll: Add IPQ5210 support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Varadarajan Narayanan" <varadarajan.narayanan@oss.qualcomm.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260701-apss-clk-v2-2-776d054ab8c3@oss.qualcomm.com>
References: <20260701-apss-clk-v2-0-776d054ab8c3@oss.qualcomm.com>
 <20260701-apss-clk-v2-2-776d054ab8c3@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 07:15:33 +0000
Message-Id: <20260701071534.456D61F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-318185-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:varadarajan.narayanan@oss.qualcomm.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,vger.kernel.org:from_smtp,smtp.kernel.org:mid,qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1C9DE6EA8CA

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Missing 'const' qualifier on 'ipq5210_pll_data' structure.
--

commit 82121884055bac497befa1efc2a14f014cd9e6e1
Author: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>

clk: qcom: apss-ipq-pll: Add IPQ5210 support

The Application Processor Subsystem on the IPQ5210 platform sources
its clock from the Huayra PLL. Add the configuration data necessary
to set it up.

> diff --git a/drivers/clk/qcom/apss-ipq-pll.c b/drivers/clk/qcom/apss-ipq-=
pll.c
> index 3a8987fe7008a..569ac76c75dc3 100644
> --- a/drivers/clk/qcom/apss-ipq-pll.c
> +++ b/drivers/clk/qcom/apss-ipq-pll.c

[ ... ]

> @@ -140,6 +152,12 @@ static const struct apss_pll_data ipq5018_pll_data =
=3D {
>  	.pll_config =3D &ipq5018_pll_config,
>  };
> =20
> +static struct apss_pll_data ipq5210_pll_data =3D {

[Severity: Low]
This isn't a bug, but should this structure be marked as const to match
the other apss_pll_data structs in this file? Without the const qualifier,
the structure gets placed in the mutable data section rather than rodata.

> +	.pll_type =3D CLK_ALPHA_PLL_TYPE_HUAYRA,
> +	.pll =3D &ipq_pll_huayra,
> +	.pll_config =3D &ipq5210_pll_config,
> +};
> +
>  static const struct apss_pll_data ipq5332_pll_data =3D {
>  	.pll_type =3D CLK_ALPHA_PLL_TYPE_STROMER_PLUS,
>  	.pll =3D &ipq_pll_stromer_plus,

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701-apss-clk-v=
2-0-776d054ab8c3@oss.qualcomm.com?part=3D2

