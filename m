Return-Path: <devicetree+bounces-318909-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id q4odIfGARWo3BQsAu9opvQ
	(envelope-from <devicetree+bounces-318909-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 23:04:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D326F6F1BB1
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 23:04:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="CTb/xXVr";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318909-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318909-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 14532301F331
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 20:59:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D9C239A070;
	Wed,  1 Jul 2026 20:59:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92D1238D
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 20:59:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782939598; cv=none; b=VCKNkUavxPYWMP2eMlJ1+nTHQQobSS8GcnvbrSF/sTOS2btOxWG5X3mStDk+gtq0DAq7sGskA2GQefOCBQ+6WBGngexjxpw4B+fY9FV75yImFsCe/yCFT4BVthYu8CNisVmNMB04V1IBsQwAgI/sss55DAetfRjTDyVl8/n3bPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782939598; c=relaxed/simple;
	bh=FHHiQssL3tQC722lOqnrqxOi/4/l2ElscF07dCkNt1I=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=QlPqjROsrglmbJDIBcpDhDiWYw+wD5VOEKdzDtvhyF80VamHVLFu5ePWpyBm6UIiFIjT8ryrQwDHyRSOwk06Ap6cjCcoBk+BvwQTB7sB0Ddh++2NVTptVYzL/tgzK3cERf51umpo+whPK+vj+fdk5cU19T4j05NvwsLniu2FUkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CTb/xXVr; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDE121F000E9;
	Wed,  1 Jul 2026 20:59:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782939597;
	bh=bkKUvCtM0kKvV4ZEaYFCMgMq8+ov6kQny5Xhp2bmuC4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=CTb/xXVrHaxJO+tBr/YcMgPIObq4u5EZh+r9kFGOEmW1AcbEha9y1lYW/Nl0zP0s2
	 Z8BTJ9YkVUN0ubxWlDPNzXc+WEhr8fn5/gMT0LnB0N8VG7tSk7gU4tZvT1SlIF2SMM
	 zubCxJgyZ5TI7uFdJFGAUexyHRPMaoPduH3QYRiNnUc1EZA4l6fHcOLmU40YGM2HD1
	 Jf6fqJyFeBXkZ9YXumoStedrgLHw0b5m6Pw1QfiSE+wqpt/fiG7SdsuSsHVZv3hNRq
	 lt9bHBlqX0m/V3dtodSa37EDz+9UoZqHGOIylwuMPGGgpRHAnU78rpxYA0xxAF7im8
	 qeC8ZPwpP5/qg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 1/4] arm64: dts: qcom: msm8953-flipkart-rimob: Enable
 display and GPU
Reply-To: sashiko-reviews@lists.linux.dev
To: "Cristian Cozzolino" <cristian_ci@protonmail.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org, dri-devel@lists.freedesktop.org
In-Reply-To: <20260701-rimob-new-features-v6-1-be7d5d1e007f@protonmail.com>
References: <20260701-rimob-new-features-v6-0-be7d5d1e007f@protonmail.com>
 <20260701-rimob-new-features-v6-1-be7d5d1e007f@protonmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 20:59:56 +0000
Message-Id: <20260701205956.EDE121F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-318909-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:cristian_ci@protonmail.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:dri-devel@lists.freedesktop.org,m:conor@kernel.org,s:lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[protonmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,protonmail.com:email];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D326F6F1BB1

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The panel's compatible property is missing the mandatory generic fa=
llback string.
--

commit 14ab3e4951175e1cf33309cf294f421f36606cd0
Author: Cristian Cozzolino <cristian_ci@protonmail.com>

arm64: dts: qcom: msm8953-flipkart-rimob: Enable display and GPU
   =20
This commit adds the description for the display panel found on the phone.
It also enables the GPU and sets the zap shader firmware path.

> diff --git a/arch/arm64/boot/dts/qcom/msm8953-flipkart-rimob.dts b/arch/a=
rm64/boot/dts/qcom/msm8953-flipkart-rimob.dts
> index ef4faf7631327..5a9d71d1e4664 100644
> --- a/arch/arm64/boot/dts/qcom/msm8953-flipkart-rimob.dts
> +++ b/arch/arm64/boot/dts/qcom/msm8953-flipkart-rimob.dts
[ ... ]
> @@ -87,11 +94,70 @@ &hsusb_phy {
>  	status =3D "okay";
>  };
> =20
[ ... ]
> +&mdss_dsi0 {
> +	vdda-supply =3D <&pm8953_s3>;
> +	vddio-supply =3D <&pm8953_l6>;
> +
> +	status =3D "okay";
> +
> +	panel: panel@0 {
> +		compatible =3D "flipkart,rimob-panel-nt35532-cs";

[Severity: Low]
Is the generic fallback string missing from this compatible property?

The DT schema for this panel (novatek,nt35532.yaml) strictly requires two i=
tems
for the compatible property: the device-specific string and the generic fal=
lback
"novatek,nt35532". Providing only the device-specific string violates the
binding and will trigger a dtbs_check warning.

> +		reg =3D <0>;
> +
> +		backlight =3D <&pmi8950_wled>;
> +		reset-gpios =3D <&tlmm 61 GPIO_ACTIVE_LOW>;
> +		avdd-supply =3D <&lab>;
> +		avee-supply =3D <&ibb>;
> +		vci-supply =3D <&pm8953_l17>;
> +		vddi-supply =3D <&pm8953_l6>;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701-rimob-new-=
features-v6-0-be7d5d1e007f@protonmail.com?part=3D1

