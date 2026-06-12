Return-Path: <devicetree+bounces-310703-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id cT66GeGpK2pnBgQAu9opvQ
	(envelope-from <devicetree+bounces-310703-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 08:40:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 08A82676FAE
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 08:40:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=cCbdOPBU;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310703-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-310703-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 776F5302970F
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 06:40:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7A3F3D7D60;
	Fri, 12 Jun 2026 06:40:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B26933AE1AD
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 06:40:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781246429; cv=none; b=mIYdEwyYNgbw5NnDsGIAfyxKtnHPRPqZkag8J4MESAAwWTZmJ4Q4IikUPPD2UJdP4Wd9qZ57zDSxqEs/zdhPWG0vWWjL+RXrMopBMYSqSAWxU6bFivHQJR9pbsJkgbRbwRTl8WrOueAHcMeC6EEsoRN0HgOcBBJg4jScGuTPNdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781246429; c=relaxed/simple;
	bh=ruLWCkbIR+LqIDBHBjtF64X+HPGQNJOniZJn8Frxm3E=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=sZ6qB6nhU+lQJtUfvlg9tYGw4Ad+6ojFu7Y1toy1Oi4e9z++rnxUQTncJgtbpBuT7t1ROJ9Mm4I7v/T4r9sl5tbQ+Ti9Tz4BXQf/GS2mSV7mYt/+vnRNGdxxx02ySCvVIsNuiMUnWi4ZU/od3bkdFIixI0FhLWdKRnjqQ2Sof38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cCbdOPBU; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 259641F000E9;
	Fri, 12 Jun 2026 06:40:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781246428;
	bh=XD7b9Th2UJPvek+B1CJj8UmhHyz3svKMZw1swiQxspY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=cCbdOPBUqdmycrZoZpJq+IJCDSZV9F0mNAEvnWx46TPOqT/iraKeSMBnatnjzcVLb
	 hGnOg17Ri/pXyiNJjP/9tEmM8LaxJjcXFME8VnfZ7HsqriIFITQj6M7R/nt+PvnMH/
	 /HYqlBnQy1D3wwwHbuOd46yCRoF3RuJSj1HouX/MGgi1nyOFtpJdQuI6iMa0djPlsS
	 O6nDLKFU/g7P/TMV6lI4DCqeyjzaEuznHJlFTmAcoLo9H7hNVdBE+oU3WNhTDBso6y
	 KwYGEe+l1E9RIpic7igNZjBYJmdE6/UsZ4XqkcCGxCtjIYagSnUeq94KONujY/Ol69
	 bMAz3CSqtr91w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/7] dt-bindings: display: tegra: Changes to support
 Tegra264
Reply-To: sashiko-reviews@lists.linux.dev
To: "Mikko Perttunen" <mperttunen@nvidia.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, dri-devel@lists.freedesktop.org, conor+dt@kernel.org
In-Reply-To: <20260612-t264-host1x-v1-1-8d934987de67@nvidia.com>
References: <20260612-t264-host1x-v1-1-8d934987de67@nvidia.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 Jun 2026 06:40:27 +0000
Message-Id: <20260612064028.259641F000E9@smtp.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-310703-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,vger.kernel.org:from_smtp,sashiko.dev:url,smtp.kernel.org:mid,nvidia.com:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mperttunen@nvidia.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:dri-devel@lists.freedesktop.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 08A82676FAE

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Globally relaxing the `ranges` property weakens validation for a=
ll prior generations and fails to enforce the new requirement for Tegra264.
--

commit 318044f1bf4d519c5f4796553c5fa864bbc6d439
Author: Mikko Perttunen <mperttunen@nvidia.com>

dt-bindings: display: tegra: Changes to support Tegra264

This commit adds the nvidia,tegra264-host1x compatible string to the Tegra
host1x bindings. It updates the global ranges property to allow up to two
items, as the Tegra264 engine register range is no longer continuous.

> diff --git a/Documentation/devicetree/bindings/display/tegra/nvidia,tegra=
20-host1x.yaml b/Documentation/devicetree/bindings/display/tegra/nvidia,teg=
ra20-host1x.yaml
> index 3563378a01af4..5b0e3158aa5be 100644
> --- a/Documentation/devicetree/bindings/display/tegra/nvidia,tegra20-host=
1x.yaml
> +++ b/Documentation/devicetree/bindings/display/tegra/nvidia,tegra20-host=
1x.yaml

[ ... ]

> @@ -57,7 +58,8 @@ properties:
>      enum: [1, 2]
> =20
>    ranges:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 2

[Severity: Medium]
Does globally relaxing the ranges constraint weaken validation for all prior
generations? It seems this allows older hardware to incorrectly specify two
ranges and silently pass validation.

[ ... ]

> @@ -192,6 +194,7 @@ allOf:
>            contains:
>              enum:
>                - nvidia,tegra234-host1x
> +              - nvidia,tegra264-host1x
>      then:
>        properties:
>          reg-names:

[Severity: Medium]
Since the commit message notes Tegra264 requires two range entries, should
Tegra264 have a specific conditional block to enforce exactly two ranges
(minItems: 2, maxItems: 2)? Grouping it here without a specific constraints
block might allow a configuration with only one range entry to silently pass
validation despite the hardware requirement.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260612-t264-host1=
x-v1-0-8d934987de67@nvidia.com?part=3D1

