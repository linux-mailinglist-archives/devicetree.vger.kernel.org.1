Return-Path: <devicetree+bounces-310134-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LD1MAS9HKmp+lgMAu9opvQ
	(envelope-from <devicetree+bounces-310134-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 07:27:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9080C66E8C9
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 07:27:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=S9KgyaQi;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310134-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310134-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3DA5C301BBB5
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 05:26:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE1FB351C04;
	Thu, 11 Jun 2026 05:26:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1317029A31C
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 05:26:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781155582; cv=none; b=LvpMzpO0M9r8Pv5GB6xn1tTt11yQR5OWIz7DXZ9m7/a2pNuaM7gN7z46wsfFOztuy0w3Ij+ILmQrr/KdYFhak6zPQoyzkzUG3x2voPlTWJ53p2Iq+1ZPXP/BsXawtbASNruDy+ctbjR4RWReRfXiBFTHzIO2iwME7thx+Um5KNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781155582; c=relaxed/simple;
	bh=d4iqofAoF+zlLlLjNPDUGeu7eIMsRZihxHGLQYSOUEw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=p+0oY4WdoDHm84LPdeeeonJEeYVGOZ4HYWcyq9i1vs8PZykA2gdxOguf3Lt4NxZwq81GDs+7EyhTMxixPOVOYnNqPI9KWfO9PYMoOJyl7Gxy4drMxwZqPSV6hFkJeVRrm/p3OWIAQZWwwFO2eZr7TuLHgjjPASFza8VLkDLtN+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S9KgyaQi; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 129E71F00893;
	Thu, 11 Jun 2026 05:26:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781155575;
	bh=4MR5mNkpzLD8nj+p/5T7g+2OGSiJylGx0CMTB1C57Ac=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=S9KgyaQiE90g/bqGgkkbAuO4EVpZ0NyiAxkQcoz+sNqs45M3qHRgrFgHAdLGM2Mnp
	 whti0ID4w3mdUW2D8yk+x4yANyk422nELozNFbJBHaYLWiKpvxaK4deAW6Bxu9m2Iv
	 2kT4B0gw0ygyQiVxzgnu7B5k62xevwUG2YnZE2CsreBKJPLUoPiiFH2S0s0UyCvzME
	 /71JtziFXED3b9X7qzCcKb96lV9Ga842aXaa0WFB+3GbZD/vvKneSFhtFdaB1qyODa
	 Hi+98Lbpg2AlEAkjVYCE1+ZDO+5b23ZUTux0SWRhvu15zeNIePPHfB9urlRyDhfCtl
	 LgvWQdP46caVQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 36/37] arm64: dts: qcom: kodiak: Move PCIe phy and
 GPIOs to root port node
Reply-To: sashiko-reviews@lists.linux.dev
To: "Krishna Chaitanya Chundru" <krishna.chundru@oss.qualcomm.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260611-wake-v2-36-2744251b1181@oss.qualcomm.com>
References: <20260611-wake-v2-36-2744251b1181@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 11 Jun 2026 05:26:14 +0000
Message-Id: <20260611052615.129E71F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-310134-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:krishna.chundru@oss.qualcomm.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sashiko.dev:url,lists.linux.dev:replyto,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,smtp.kernel.org:mid,qualcomm.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9080C66E8C9

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Accidental reversion of PCIe wake GPIO polarity and undocumented=
 property addition during relocation.
--

commit cfdfc7bf6f1000a6c06f30a3d29926ca3f427856
Author: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>

arm64: dts: qcom: kodiak: Move PCIe phy and GPIOs to root port node

This commit moves PCIe phy references and the perst/wake GPIO properties
from the PCIe RC controller nodes to the root port nodes across several
Qualcomm devicetrees, renaming perst-gpios to reset-gpios.

[ ... ]

> diff --git a/arch/arm64/boot/dts/qcom/qcm6490-particle-tachyon.dts b/arch=
/arm64/boot/dts/qcom/qcm6490-particle-tachyon.dts
> index b1ad1d7c346a2..92023aac967d7 100644
> --- a/arch/arm64/boot/dts/qcom/qcm6490-particle-tachyon.dts
> +++ b/arch/arm64/boot/dts/qcom/qcm6490-particle-tachyon.dts

[ ... ]

> @@ -562,8 +564,6 @@ &pcie0_phy {
>  };
> =20
>  &pcie1 {
> -	perst-gpios =3D <&tlmm 2 GPIO_ACTIVE_LOW>;
> -
>  	pinctrl-0 =3D <&pcie1_reset_n>, <&pcie1_wake_n>, <&pcie1_clkreq_n>;
>  	pinctrl-names =3D "default";
> =20
> @@ -572,6 +572,11 @@ &pcie1 {
>  	status =3D "okay";
>  };
> =20
> +&pcie1_port0 {
> +	reset-gpios =3D <&tlmm 2 GPIO_ACTIVE_LOW>;
> +	wake-gpios =3D <&tlmm 3 GPIO_ACTIVE_LOW>;

[Severity: Medium]
Was this new wake-gpios property intended here? The original pcie1 node did
not define wake-gpios before the relocation.

> +};
> +
>  &pcie1_phy {

[ ... ]

> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-radxa-dragon-q6a.dts b/arch=
/arm64/boot/dts/qcom/qcs6490-radxa-dragon-q6a.dts
> index 3a9fbef89aff4..d0639eea398ee 100644
> --- a/arch/arm64/boot/dts/qcom/qcs6490-radxa-dragon-q6a.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs6490-radxa-dragon-q6a.dts
> @@ -522,15 +522,17 @@ &lpass_va_macro {
>  };
> =20
>  &pcie0 {
> -	perst-gpios =3D <&tlmm 87 GPIO_ACTIVE_LOW>;
> -	wake-gpios =3D <&tlmm 89 GPIO_ACTIVE_LOW>;
> -
>  	pinctrl-0 =3D <&pcie0_clkreq_n>, <&pcie0_reset_n>, <&pcie0_wake_n>;
>  	pinctrl-names =3D "default";
> =20
>  	status =3D "okay";
>  };
> =20
> +&pcie0_port {
> +	reset-gpios =3D <&tlmm 87 GPIO_ACTIVE_LOW>;
> +	wake-gpios =3D <&tlmm 89 GPIO_ACTIVE_HIGH>;

[Severity: Medium]
Does this accidentally revert the wake-gpios polarity? The removed property
specified GPIO_ACTIVE_LOW, but this new node specifies GPIO_ACTIVE_HIGH.

> +};
> +
>  &pcie0_phy {

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260611-wake-v2-0-=
2744251b1181@oss.qualcomm.com?part=3D36

