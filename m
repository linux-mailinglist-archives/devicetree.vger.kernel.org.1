Return-Path: <devicetree+bounces-319951-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id plioK3B9R2qgZQAAu9opvQ
	(envelope-from <devicetree+bounces-319951-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 11:14:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 12EA8700839
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 11:14:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=hTcw0FTh;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319951-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-319951-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 585BA302F59E
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 09:06:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD1D1399892;
	Fri,  3 Jul 2026 09:06:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B824F380FE7
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 09:06:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783069573; cv=none; b=rdN/8FvTNWwBsj5JaEhyOqIMX0QZd3qE2i3kkfMG/D7VnH7FNDVE8X9zMWIFOtL+XFbD77k9xxOcNDNFqhAFlhrVKXUUMJEeB24RSBMCfEZnECSyqpOvxMPmO/VW7qqK9NXrx9pPK+DDzyERaslwYgw+D7C2Ov8qW//RV7STiys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783069573; c=relaxed/simple;
	bh=+9nAkIdFvxUf3oepej4qWJWUxWGmKnLBX2wFAeO/IIA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=igdZMQoVvitdfSMtrwAoamJF/pMG0Z/UfTiuoPCDSI3tBsgE2hR0x+rZtMtm/+DvP5wlshjfnj5Tm/x3jVl54CT86DH94heCB+NGVVOtb8A+BMf++KeVp+BqMV78fP6jAKI/nSe3OkoFhfxqxOIJYk1TgkAMZMg9EWqlDnMIkRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hTcw0FTh; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D2341F000E9;
	Fri,  3 Jul 2026 09:06:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783069572;
	bh=94OBMymysXRCtuTm0FEbIfr74GVZUZxKQ/6yLeZfJtc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=hTcw0FThsAYC+40WmAliGdUO6ZAxTelDJlbp/moHKQGFluBU0Prt9Ne9Lm/UHVZeQ
	 G6NR2zTn59DrvoGGFGPhVy8bKpTt37Xg2x6v4BAivVKzDFO5F1sYSHRxRLb6LyDyD5
	 dfbvdBy10pq6ki/ExttzP20fed+lhkdntfH2Ir9FQFKmq+yy9R8E/FXzPFAB++xcNh
	 4qfgWyIdQTBf9XThckLn6/B/Pj1hStzv8RYdv3oZVWYLFQQ0uPlbnk0gDi84szjYyQ
	 +b1bJMSneoTwawCBbtT3hSmeRFcC5d466S5ppcjXeTRp6uvOWPBP6QX5jD+eEVkBgv
	 siTKEsl5hzxnw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4] arm64: dts: qcom: qcom6490-idp: Add IPA nodes
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sarat Addepalli" <sarat.addepalli@oss.qualcomm.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260703085809.2573214-1-sarat.addepalli@oss.qualcomm.com>
References: <20260703085809.2573214-1-sarat.addepalli@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 03 Jul 2026 09:06:11 +0000
Message-Id: <20260703090612.1D2341F000E9@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-319951-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:sarat.addepalli@oss.qualcomm.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,vger.kernel.org:from_smtp,sashiko.dev:url,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 12EA8700839

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Missing required properties 'memory-region' and 'qcom,gsi-loader=
' for the 'ipa' node.
--

commit 3779947d88d9867dec609553d6bb24efded1c1a3
Author: Sarat Addepalli <sarat.addepalli@oss.qualcomm.com>

arm64: dts: qcom: qcom6490-idp: Add IPA nodes

This commit adds IPA nodes for the Qualcomm qcm6490 board. It configures
the firmware-name and sets the status to okay, stating that other required
properties are provided by kodiak.dtsi.

Link: https://lore.kernel.org/all/20260517-ipa-loader-v1-0-3c3764c1b4a3@oss=
.qualcomm.com/

> diff --git a/arch/arm64/boot/dts/qcom/qcm6490-idp.dts b/arch/arm64/boot/d=
ts/qcom/qcm6490-idp.dts
> --- a/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
> +++ b/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
[ ... ]
> @@ -619,6 +619,12 @@ &gpu_zap_shader {
>  	firmware-name =3D "qcom/qcm6490/a660_zap.mbn";
>  };
> =20
> +&ipa {
> +	firmware-name =3D "qcom/qcm6490/ipa_fws.mbn";
> +
> +	status =3D "okay";
> +};

[Severity: Medium]
Will the IPA driver fail to probe here due to missing properties?

The commit message states that the qcom,gsi-loader and memory-region
properties are provided by kodiak.dtsi. However, it appears neither
kodiak.dtsi nor this file actually provides them for the ipa node.

Without qcom,gsi-loader, the driver defaults to self-loading and calls
ipa_firmware_load() during initialization.

Because ipa_firmware_load() requires a memory-region property to map the
firmware memory, lacking it will cause the probe to unconditionally abort.

Should these properties be explicitly added to this node to ensure the
device can successfully initialize?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260703085809.2573=
214-1-sarat.addepalli@oss.qualcomm.com?part=3D1

