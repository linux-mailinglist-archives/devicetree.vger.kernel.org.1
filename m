Return-Path: <devicetree+bounces-323144-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dvaVBeiuTmplSQIAu9opvQ
	(envelope-from <devicetree+bounces-323144-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 22:11:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE4072A1D9
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 22:11:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="AQp1N/7r";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323144-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323144-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D6851302D95B
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 20:07:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78EBB3E3153;
	Wed,  8 Jul 2026 20:07:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12A9A3E3D92;
	Wed,  8 Jul 2026 20:07:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783541249; cv=none; b=svDb89JBNGtkNjRjKcROOyReBrIgoBCSrup7drm5w6UHPdGF5OoD7+tPdUF53UwDytgoqgcTtDEQaa8MttUwY9P2H5MYyNOUPwYTxvr63NWChr4oApLfWrJtuoWDi2SoI/tLA8E2uh/u/RqkXyl5h/HwFe9YZ4P6X92OIsw7OnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783541249; c=relaxed/simple;
	bh=UtCeGlGEqKLJ2DzRQm25uQLX2To5ls71NuZDcIb7rc8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=fVqqCqiQhI4w/gYYSjTUyXqe5g9qoFmgTuwGAolJZisjyKqPO9fztg8jt7uJ3LyqCKfXQ1HcszwT55HCARCsI+EYnCbg2+3+Y++P417mZN+uLVddnwc6O3Qpx32knWDqlmwOFUfQBV/pYZiVSYdQhP/8ruxC13wRrSW5l8zVS7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AQp1N/7r; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF06B1F000E9;
	Wed,  8 Jul 2026 20:07:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783541246;
	bh=0BSw9/730ukxJg/D1rWjqmXJCEzRjIn/kMEZHd/7FU4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=AQp1N/7r17AU21t6o+Bxyi2m1rc2lUOFhc2f7+OzAUeDmDt+eIzPXEPvGyYwioA+X
	 ZrOIWd4p/eJdxvIjeJRF9vISYimyBi3yIOIem94lox7yL8ddYlX3q01jldciVGnIG+
	 NyorJK7xIOqtUFmcsoiPoVlx+1PvjhW74mYw522hMcluWzW3pfM2l2e6SWCFHJ4OcO
	 lj02rES/uS6zSJ8USNcEXDV+HNH6PuB/3GMkYFJ0x49dURR/0p4rK6DCX+tu5YZlCy
	 Ky/q9vDtdRJ/dO+4opSCffM9Lx5CAYDZTPFCt0reonsiY+mDW+Ftnuk5ulAfoif8Xa
	 ZHpW8wNrN1yiQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/2] ARM: dts: imx53-ard: change node name eim-cs1 to
 eim-cs1-bus
Reply-To: sashiko-reviews@lists.linux.dev
To: Frank.Li@oss.nxp.com
Cc: Frank.Li@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, imx@lists.linux.dev
In-Reply-To: <20260708-imx53-eim-v1-2-913b4559e5b5@nxp.com>
References: <20260708-imx53-eim-v1-0-913b4559e5b5@nxp.com>
 <20260708-imx53-eim-v1-2-913b4559e5b5@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 20:07:24 +0000
Message-Id: <20260708200724.CF06B1F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-323144-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sashiko.dev:url,lists.linux.dev:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid,nxp.com:email];
	FORGED_RECIPIENTS(0.00)[m:Frank.Li@oss.nxp.com,m:Frank.Li@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:imx@lists.linux.dev,m:conor@kernel.org,s:lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5AE4072A1D9

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The commit message and title state that the node is being rename=
d to 'eim-cs1-bus', but the diff actually renames it to 'eim-bus'.
--

--- Patch [2]: [PATCH 2/2] ARM: dts: imx53-ard: change node name eim-cs1 to=
 eim-cs1-bus ---
commit 86f73fc53c0394f0f24861992d60173147e1e27f
Author: Frank Li <Frank.Li@nxp.com>
ARM: dts: imx53-ard: change node name eim-cs1 to eim-cs1-bus

This commit updates the node name for the EIM bus in imx53-ard.dts to fix
CHECK_DTS warnings. The schema validation requires the node name to match
specific patterns from simple-bus.yaml.

> diff --git a/arch/arm/boot/dts/nxp/imx/imx53-ard.dts b/arch/arm/boot/dts/=
nxp/imx/imx53-ard.dts
> --- a/arch/arm/boot/dts/nxp/imx/imx53-ard.dts
> +++ b/arch/arm/boot/dts/nxp/imx/imx53-ard.dts
> @@ -17,7 +17,7 @@ memory@70000000 {
>  		reg =3D <0x70000000 0x40000000>;
>  	};
> =20
> -	eim-cs1@f4000000 {
> +	eim-bus@f4000000 {

[Severity: Medium]
Does this change unintentionally drop the "cs1" identifier?=20

The commit message and subject line state the node is being renamed to
"eim-cs1-bus", but the diff actually renames it to "eim-bus". While this
satisfies the simple-bus regex requirement, it seems to contradict the
stated intent in the commit message.

>  		#address-cells =3D <1>;
>  		#size-cells =3D <1>;
>  		compatible =3D "fsl,eim-bus", "simple-bus";

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708-imx53-eim-=
v1-0-913b4559e5b5@nxp.com?part=3D2

