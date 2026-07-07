Return-Path: <devicetree+bounces-321856-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5xcRGrDETGqxpQEAu9opvQ
	(envelope-from <devicetree+bounces-321856-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 11:19:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EDE9719A72
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 11:19:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=CgIojPLD;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321856-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321856-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9686A302AA56
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 09:06:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9685139E6C6;
	Tue,  7 Jul 2026 09:05:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56C4F37AA9F;
	Tue,  7 Jul 2026 09:05:27 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783415128; cv=none; b=Qzc4zdN11PZEJ7GO7LMINCEjlfPQFFS1koDRhhXllKFtg719UtJ/4PWCGF53Sa9eMSMWpH7Y5Eb/lWYchXDuPhUj1nSV8ukCT/Qeeo3ufyxJcImkB5OFLFThfMeogGOg/xwxwirXzWSNP2BHyevT0Z2JKX5XYwvNf1Z97y54SEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783415128; c=relaxed/simple;
	bh=426Zwk/YqhM7ttsOUpI9CIja+pyZ3MuqZaVbyCjE8Fo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=XsVdKJ559z4O8d1CUI7nH2oC8sTdTOOSCNU2MNnzEj72W/GsKDTHaxEAPhx+tD8Ip26xsXf8RSB4KlpIxTFSfxw6Pg5d/8QYsz1i1+68PYWV5boDQ/QckhxZn10ofD7Dp+A1doYu4MgjNUxTvbph75RonJ37JWOvj8nVwIgR95w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CgIojPLD; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 978C01F000E9;
	Tue,  7 Jul 2026 09:05:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783415127;
	bh=QZbdlwYEOqt8/DNrm3fDQ5tOSNFY5hC7nF9gDH4EmtU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=CgIojPLDEAZwRV/MbsCB9vQrmkEvmmwKpK7QQzm/mmOY4LWJZxqEW518RDl0JBo5j
	 jt0ZHeCNzcG8i/kwiQjG+HaVfqiER8uaGDkfHRDAdOiJSxsfs2cB7TpObOytdK48kB
	 rv9Vb+EnQtjL+D0dqnGb9VtzmSsykYZ3psaQwUqYL6lWEIrSCQtFpfflnB3gQIZUyW
	 q9urMPislZx14H2d95d9DKDw3FUBwZHZRYBoAafd/qtBzV9xP1VodlHTuPyLiO4XIF
	 Unhrb1JkABARo0P1ySitz6GajZx4eXpKdYN0GQzKL5XGSCcc7AuuaLt2EIuuEkODSj
	 Zlc2jETOy/7Sg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: imx91-tqma9131: move ele-reserved
 memory into 512MB range
Reply-To: sashiko-reviews@lists.linux.dev
To: "Alexander Stein" <alexander.stein@ew.tq-group.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev, Frank.Li@kernel.org
In-Reply-To: <20260707085551.1683462-3-alexander.stein@ew.tq-group.com>
References: <20260707085551.1683462-1-alexander.stein@ew.tq-group.com>
 <20260707085551.1683462-3-alexander.stein@ew.tq-group.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 09:05:24 +0000
Message-Id: <20260707090526.978C01F000E9@smtp.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-321856-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,smtp.kernel.org:mid,lists.linux.dev:replyto,vger.kernel.org:from_smtp,tq-group.com:email,sashiko.dev:url];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:alexander.stein@ew.tq-group.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:Frank.Li@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5EDE9719A72

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Moving the EdgeLock reserved memory region in a shared .dtsi break=
s backward compatibility for 1024MB boards with older firmware.
--

--- Patch [2]: [PATCH 2/2] arm64: dts: imx91-tqma9131: move ele-reserved me=
mory into 512MB range ---
commit 48154931b16a7f9734d0f8037cf111d05d7b8120
Author: Alexander Feilke <Alexander.Feilke@ew.tq-group.com>

arm64: dts: imx91-tqma9131: move ele-reserved memory into 512MB range

TQMa91 has a 512MiB RAM variant for which the edgelock memory location
exceeds the valid memory area.

> diff --git a/arch/arm64/boot/dts/freescale/imx91-tqma9131.dtsi b/arch/arm=
64/boot/dts/freescale/imx91-tqma9131.dtsi
> index c99d7bc168483..a8c79731eace5 100644
> --- a/arch/arm64/boot/dts/freescale/imx91-tqma9131.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx91-tqma9131.dtsi
> @@ -33,9 +33,9 @@ linux,cma {
>  		};
> =20
>  		/* EdgeLock secure enclave  */
> -		ele_reserved: ele-reserved@a4120000 {
> +		ele_reserved: ele-reserved@94120000 {
>  			compatible =3D "shared-dma-pool";
> -			reg =3D <0 0xa4120000 0 0x100000>;
> +			reg =3D <0 0x94120000 0 0x100000>;

[Severity: High]
Does this break backward compatibility for 1024MB boards with older firmwar=
e?

By unconditionally moving the ele-reserved node from 0xa4120000 to 0x941200=
00
in the shared .dtsi, Linux will no longer reserve 0xa4120000.

If an older 1024MB board runs existing firmware that still places the ELE at
0xa4120000, would Linux treat that region as normal RAM and overwrite the l=
ive
secure enclave?

Could the new address be specified in a board-specific .dts for the 512MB
variant, or could the bootloader dynamically patch the node to reflect the
actual allocation instead?

>  			no-map;
>  		};
>  	};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260707085551.1683=
462-1-alexander.stein@ew.tq-group.com?part=3D2

