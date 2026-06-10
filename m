Return-Path: <devicetree+bounces-309626-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XmZpKjEtKWoFSAMAu9opvQ
	(envelope-from <devicetree+bounces-309626-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 11:24:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 025F7667CBF
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 11:24:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ZPrgSp2A;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309626-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-309626-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 575CD33D355B
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 09:05:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95B493B27CF;
	Wed, 10 Jun 2026 09:05:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EF6C3B3BF5
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 09:05:32 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781082333; cv=none; b=e/VfGvJ8z4P8T8KV9gvVVxS8ER90x+hWtafSlpuLdMLIbt6roGyu7cEZl7qlEa5UZnrZh2lACfwtKncVuJpKE12XcmTqTr7iHWt6JcvY6IHV48hFou4WpLOjszZW1AgWle478VuFijY8HVMzHYAKUeBWafAdJAYW++/R4+QJ+yU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781082333; c=relaxed/simple;
	bh=iKSN6wtrKK1cpabYdgAWe860HbupnqNuo7vZde2kn6A=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=q08KcxrM1GCQdb05Zl65PHvnctKoIX95w7K+1J6i/6lM3ucWFo0LfrTBrvnwBZDqY7Ou62AdtSQQ6Iaq90p42jfn4NBH6dDyoMY3gq22h6Wq05PpYea5MjB6nIsLM12/rJ0XHm2rMjeIKsP4Gdw2YxWPqimzIFWr8NbxkU/sX7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZPrgSp2A; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E99511F00893;
	Wed, 10 Jun 2026 09:05:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781082332;
	bh=FQ+zh/2sOTD+ifv/sBafdttjA6zEHJ2bZXvOmZtKUCc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ZPrgSp2A15XAwK6V8NlaXbxs0IWJLZzwUI1iViXxnxx7nnbskl/hezFfR/eiYjmdd
	 TErOVoHAO8OgrwXavbDRkDiSXs47WrX7S9//jO2pUtj2KqFAQHtehn1x0jVfgVeBrq
	 kt0fUSXCRB7ln34hgG45nxPhK5x6K0TId9Ygb2mrQfv2J0wbqxP3vbuVH/cPmQaWy2
	 aOQboDoK3fyu/+b3ewAQ9hgT1jBb6DpkJVzq335j+iPDIqik1NIC9ttfBsZPJjLkJJ
	 JkTg2SLc+UaQGqAVUE2UoVNNUiOGpVUlCrZu8aRcwoWLHOl7E4byyWL4gVIWTgLjj4
	 MYo9qo1t1PmfA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 4/4] arm64: dts: qcom: Add IMDT QCS8550 SBC
Reply-To: sashiko-reviews@lists.linux.dev
To: "William Bright" <william.bright@imd-tec.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260610-imdt-qcs8550-sbc-rfc-v4-4-358e71d606bc@imd-tec.com>
References: <20260610-imdt-qcs8550-sbc-rfc-v4-4-358e71d606bc@imd-tec.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 10 Jun 2026 09:05:31 +0000
Message-Id: <20260610090531.E99511F00893@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-309626-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:william.bright@imd-tec.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,smtp.kernel.org:mid,imd-tec.com:email,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 025F7667CBF

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] Encoding downstream device resets and straps into the PCIe host =
controller's pinctrl to control boot sequencing.
- [Low] Dangling `enable-active-high` property in `regulator-gpio` without =
`enable-gpios`.
--

commit 69cdd29642da9fee5fcb6d62c3df7354abac11dc
Author: William Bright <william.bright@imd-tec.com>

arm64: dts: qcom: Add IMDT QCS8550 SBC

This commit adds device tree support for the IMDT QCS8550 SBC. It enables
various peripherals including regulators, UART, UFS, PCIe, USB, and Etherne=
t.

> diff --git a/arch/arm64/boot/dts/qcom/qcs8550-imdt-sbc.dts b/arch/arm64/b=
oot/dts/qcom/qcs8550-imdt-sbc.dts
> new file mode 100644
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/qcs8550-imdt-sbc.dts

[ ... ]

> +	sdhci_2_vqmmc: regulator-sdhci-2-vqmmc {
> +		compatible =3D "regulator-gpio";
> +
> +		regulator-name =3D "sdhci_2_vqmmc";
> +		regulator-min-microvolt =3D <1800000>;
> +		regulator-max-microvolt =3D <3300000>;
> +		regulator-type =3D "voltage";
> +
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&sd_vset_default>;
> +
> +		gpios =3D <&tlmm 4 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;

[Severity: Low]
Is this enable-active-high property needed here?

This regulator uses regulator-gpio and defines the gpios array for voltage
state selection, but it does not specify an enable-gpios property. Since the
property is dangling, will this trigger a dtbs_check validation warning?

> +
> +		gpios-states =3D <0>;
> +		states =3D <3300000 0>,
> +			 <1800000 1>;

[ ... ]

> +&pcie0 {
> +	wake-gpios =3D <&tlmm 96 GPIO_ACTIVE_HIGH>;
> +	perst-gpios =3D <&tlmm 94 GPIO_ACTIVE_LOW>;
> +
> +	/*
> +	 * pcie0 hosts the M.2 Key-E slot. Apply the SDIO
> +	 * reset de-assert here so any module's chip enable is settled
> +	 * before pcie0 trains its link.
> +	 */
> +	pinctrl-0 =3D <&pcie0_default_state>, <&m2e_sdio_resetn_default>;

[Severity: Medium]
Is it correct to encode downstream device resets into the PCIe host
controller's pinctrl?

Tying board-level reset pins like the SDIO reset to the PCIe host
controller's pinctrl tightly couples peripheral initialization to the host
driver's state machine.

Should these downstream devices be modeled using PCI child nodes with their
own reset properties or standard power sequencing mechanisms instead, to
avoid unintended GPIO toggling during PCIe suspend and resume?

> +	pinctrl-names =3D "default";
> +
> +	status =3D "okay";
> +};

[ ... ]

> +&pcie1 {
> +	wake-gpios =3D <&tlmm 99 GPIO_ACTIVE_HIGH>;
> +	perst-gpios =3D <&tlmm 97 GPIO_ACTIVE_LOW>;
> +
> +	/*
> +	 * pcie_switch_sel_default and gbe_reset_default are board-init
> +	 * lines that must be stable before pcie1 trains its link: the
> +	 * PCIe switch needs its mode-select strap settled, and the
> +	 * downstream LAN743x must be out of reset to enumerate.
> +	 * Applying them via pcie1's pinctrl-0 fires them during
> +	 * qcom-pcie probe, before bus enumeration.
> +	 */
> +	pinctrl-0 =3D <&pcie1_default_state>,
> +		    <&pcie_switch_sel_default>,
> +		    <&gbe_reset_default>;

[Severity: Medium]
Does assigning the PCIe switch strap and downstream GbE PHY reset to the pc=
ie1
pinctrl violate device tree abstractions?

Similar to pcie0, this couples downstream device initialization directly to
the host controller. Modeling this hardware topology through proper PCI chi=
ld
nodes might be safer than relying on host driver sequencing.

> +	pinctrl-names =3D "default";
> +
> +	status =3D "okay";
> +};
> +

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260610-imdt-qcs85=
50-sbc-rfc-v4-0-358e71d606bc@imd-tec.com?part=3D4

