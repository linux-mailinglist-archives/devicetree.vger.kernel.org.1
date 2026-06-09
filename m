Return-Path: <devicetree+bounces-308948-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8gnEJ5HwJ2rs5wIAu9opvQ
	(envelope-from <devicetree+bounces-308948-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 12:53:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E8465F26F
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 12:53:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=GKp4sSvR;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308948-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-308948-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id F280730257AE
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 10:40:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8189E385D84;
	Tue,  9 Jun 2026 10:40:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70DFA199D8
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 10:40:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781001601; cv=none; b=hjkMTnafxiNj6U5htKvBc7GyhjHXKq88jIK7YMHx3xf8nkGi8bCLpmZXsHULKHcLytJapOHzC7VuWuVCTL5ebDDF11EajLMpRyLT5lbmFtLah3kpBoRx/nr3VqZSuQUhFmtGBfJnaQY0EaCReKI0t8/cVQQay8wJWpmsIcNtDXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781001601; c=relaxed/simple;
	bh=diDi6IZJUy0+hR19lTe4+oJ4YbjR0WU6+y95SJkrPBs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=NtaWDpLPvKYE8Pp34jESkANJVT3Rx2s/FOlHLhyA6YhiH3gvVc6pDsHF6RUR1zCojvdX8EvzZh/z5acc6JOsye1wNXI/+q0DUZB7T8A3PdbmwEDaiaoPE+j47mMnSreXNTC5kVmWf0HGSnqZsieDJcQb0jbjcDY5DHXZygMH4as=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GKp4sSvR; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 41C011F00893;
	Tue,  9 Jun 2026 10:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781001600;
	bh=6Qg096uoagWjihw8GPZ6YDBz5A6PsFwAQcwgiLUgr8M=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=GKp4sSvRDgzay76eIGUAG4GslAMOWbmE+XFPWQtJqjOZVQSlCNiL/JVK5neHqBvvn
	 Tlrffmo7SqfJvyhPKoq6FDPoWr7Mem/QWmQnQyGZ3MWF/00L1nHIr13knnBlUMn94h
	 q0k8clJwIJlbMSkVk7GVNuNt1ig08n7nZEMksYTPLwhFh6MVxAVNhcJ4rbZQ58BsSF
	 6bOtucWPwzIBDWhGqiEbKpTmo5/RSR5IyhpzJx57z2mWA2vnlnwsrJYoH+H1O0SLwH
	 t/zWyuoxPBzMhUYF8js/wiJz//PItDKq0LnKqVy+ub2FBe6grTBx1M8fi4J0X9tcG1
	 MSzjcJCXHV3iQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 3/6] ARM: dts: qcom: apq8064: Fix USB controller
 clocks
Reply-To: sashiko-reviews@lists.linux.dev
To: "Alexandre MINETTE via B4 Relay" <devnull+contact.alex-min.fr@kernel.org>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260609-mainline-send-v1-sending-v4-3-83768fbf404d@alex-min.fr>
References: <20260609-mainline-send-v1-sending-v4-3-83768fbf404d@alex-min.fr>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 10:39:58 +0000
Message-Id: <20260609103959.41C011F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-308948-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:devnull+contact.alex-min.fr@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,contact.alex-min.fr,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sashiko.dev:url,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,lists.linux.dev:replyto,smtp.kernel.org:mid,alex-min.fr:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 91E8465F26F

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] The essential 60MHz transceiver clock is mapped to the 'fs' clock,=
 which is explicitly disabled by the driver during normal operation, breaki=
ng USB functionality.
- [Low] Adding a third clock to the `qcom,ci-hdrc` nodes violates the `maxI=
tems: 2` constraint in the existing binding schema.
--

commit 453c68cf87c5de356d651306bdd24fea9db45f5a
Author: Alexandre MINETTE <contact@alex-min.fr>

ARM: dts: qcom: apq8064: Fix USB controller clocks

This commit updates the clock properties for the APQ8064 HS USB controllers.
It maps the RPM Daytona fabric clock to "core", the AHB clock to "iface",
and the transceiver clock to "fs" to ensure the fabric clock is enabled.

Link: https://lore.kernel.org/all/20260516-qcom-ci-hdrc-clock-fix-v2-1-aaec=
8d33d0aa@smankusors.com/

> diff --git a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi b/arch/arm/boot/dts=
/qcom/qcom-apq8064.dtsi
> index 09062b2ad8ba5..d64a162abdad4 100644
> --- a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
> +++ b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
> @@ -813,8 +813,10 @@ usb1: usb@12500000 {
>  			reg =3D <0x12500000 0x200>,
>  			      <0x12500200 0x200>;
>  			interrupts =3D <GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>;
> -			clocks =3D <&gcc USB_HS1_XCVR_CLK>, <&gcc USB_HS1_H_CLK>;
> -			clock-names =3D "core", "iface";
> +			clocks =3D <&gcc USB_HS1_H_CLK>,
> +				 <&rpmcc RPM_DAYTONA_FABRIC_CLK>,
> +				 <&gcc USB_HS1_XCVR_CLK>;
> +			clock-names =3D "iface", "core", "fs";

[Severity: Low]
Does adding a third clock here violate the binding schema?

Looking at Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml, both the
clocks and clock-names properties are restricted to a maximum of 2 items:

Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml:
  clocks:
    minItems: 1
    maxItems: 2

  clock-names:
    minItems: 1
    maxItems: 2

Will this cause make dtbs_check to fail during validation?

[Severity: High]
Will mapping the transceiver clock to "fs" cause it to be permanently
disabled after probe?

Looking at ci_hdrc_msm_probe() in the MSM ChipIdea driver, the fs clock is
explicitly disabled immediately after the controller reset sequence:

drivers/usb/chipidea/ci_hdrc_msm.c:ci_hdrc_msm_probe() {
    ...
    clk_disable_unprepare(ci->fs_clk);
    ...
}

Since the 60MHz transceiver clock (USB_HS1_XCVR_CLK) is required for the
PHY and MAC to operate, won't turning it off break USB functionality on
this platform entirely?

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609-mainline-s=
end-v1-sending-v4-0-83768fbf404d@alex-min.fr?part=3D3

