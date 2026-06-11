Return-Path: <devicetree+bounces-310125-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QA+eIONFKmoklgMAu9opvQ
	(envelope-from <devicetree+bounces-310125-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 07:21:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 62FA066E7F0
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 07:21:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=NisENx8y;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310125-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-310125-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id EEA8D300938B
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 05:21:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 200F52BD5B4;
	Thu, 11 Jun 2026 05:21:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 940C12F8E94
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 05:21:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781155292; cv=none; b=TIMZP8VLjEf62hJBGvOvmSz4FWlTXje6FXk7mDuO8yiEhjsH/vPOV2zXMLPvQ5pAAqI/tvbIDr9JPqUJpGBuSpHqMqtkgXUAfPdL17ZFNkTxSE11rI4GZSlr7DSvGz7ZvHjub7noWUIoKPw6+XZ+Lt8QVNhmp+2ZfCJH5h4IV6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781155292; c=relaxed/simple;
	bh=GkS/4WCmhORw/U0spwrBIc7Zb4nDbR0+XgOSMPeeE/0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Fs4jB0YxmBy7OZfH63ZbEd+usZlDUJ5J813Ou61pEWzMbC8EaMd8N+M+G4wT9K1FBnd3pNnG/Rh3IZP03UB6QKjmoFuY1XrGrpmh7G9eaX1vSa851r1MInNjLO0K8jezBSCfJAMqpwU1feudBOCocTyyj1pGDP8495tE5sMzFU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NisENx8y; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F41F71F00893;
	Thu, 11 Jun 2026 05:21:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781155290;
	bh=IUa3QFwrP1ZjhnnAcMGFQ7jHJ5bOHQQRVjV3EnP5qkY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=NisENx8ysLiKg49CsjEyEQkNK/LTU471GITnv1SRKwwWOJy/WJvh4dcZl6yTnFkvm
	 C8COnONhcHpGXFs9+qS97ACMobDhimdHHfCTvpw1ogOzcX8t9f9Zx3PJ45qAGVCvHw
	 L4YwVRFeKJSbouZ9iuOu5BqpS8qYd7c7R7x1rIGDKNKX073ZPxGdLy5cPBiclN8cNN
	 U1MInsOO5nSIZtYv7HWQNiXw2HnnHrnMFwvWpu0T1Aep3xJgtwJ0kZyB5D69T99gb9
	 JXIQwhhZqCF99d6MaraItPl0glI0LxImKC6lSzLDfprdWLUiLF52jLPO3V6yPP9Rm6
	 fKHpaEH5Rzxxg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 29/37] arm64: dts: qcom: sm8150: Move PCIe phy and
 GPIOs to root port node
Reply-To: sashiko-reviews@lists.linux.dev
To: "Krishna Chaitanya Chundru" <krishna.chundru@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260611-wake-v2-29-2744251b1181@oss.qualcomm.com>
References: <20260611-wake-v2-29-2744251b1181@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 11 Jun 2026 05:21:29 +0000
Message-Id: <20260611052129.F41F71F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-310125-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:krishna.chundru@oss.qualcomm.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,qualcomm.com:email,vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,smtp.kernel.org:mid,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 62FA066E7F0

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

New issues:
- [Low] The commit message inaccurately describes the changes made to the `=
phy-names` and `wake-gpios` properties.

Pre-existing issues:
- [High] Missing `phy_exit()` in `qcom_pcie_parse_port()` error path leads =
to PHY initialization count leak on probe deferral.
--

commit 3689731d2937c49dccd016d5e1e8e1fca305198c
Author: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>

arm64: dts: qcom: sm8150: Move PCIe phy and GPIOs to root port node

This patch moves the PCIe phys, perst-gpios, and wake-gpios properties from
the PCIe root complex controller node to the root port node (pcie@0) for
pcie0 and pcie1. It also renames perst-gpios to reset-gpios.

> The PCIe phy reference and the perst/wake GPIO properties are
> per root port and belong in the root port node (pcie@0), not in the
> RC controller node. Move phys, phy-names, perst-gpios, and wake-gpios
> from the controller to pcie0_port0 and pcie1_port0, adding labels to

[Severity: Low]
The commit message states phy-names and wake-gpios are moved to both
pcie0_port0 and pcie1_port0.

However, in the diff, phy-names is removed entirely rather than moved, and
wake-gpios is only added to pcie0_port0 since it wasn't originally present =
in
pcie1.

Should the commit message be updated to accurately reflect the changes made?

> these nodes to allow board-level overrides, and renaming perst-gpios
> to reset-gpios to match the binding used in the root port context.
>
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chaitanya.chundru@oss.q=
ualcomm.com>

> diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/q=
com/sm8150.dtsi
> index 8da494de4308a..f13c67e93db30 100644
> --- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi

[ ... ]

> @@ -1920,6 +1914,10 @@ pcie@0 {
>  				#address-cells =3D <3>;
>  				#size-cells =3D <2>;
>  				ranges;
> +
> +				phys =3D <&pcie0_phy>;
> +				reset-gpios =3D <&tlmm 35 GPIO_ACTIVE_HIGH>;
> +				wake-gpios =3D <&tlmm 37 GPIO_ACTIVE_LOW>;
>  			};
>  		};
> =20

[Severity: High]
This is a pre-existing issue, but moving the phys property to the pcie@0 ro=
ot
port node causes the sm8150 device tree to now utilize the
qcom_pcie_parse_port() code path in the pcie-qcom driver.

Does this expose a resource leak on probe deferral?

drivers/pci/controller/dwc/pcie-qcom.c:qcom_pcie_parse_port() {
...
	ret =3D phy_init(phy);
	if (ret)
		return ret;

	INIT_LIST_HEAD(&port->perst);

	ret =3D qcom_pcie_parse_perst(pcie, port, node);
	if (ret)
		return ret;
...
}

If qcom_pcie_parse_perst() returns -EPROBE_DEFER, will this code leak the
PHY initialization count because phy_exit(phy) is not called before
returning?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260611-wake-v2-0-=
2744251b1181@oss.qualcomm.com?part=3D29

