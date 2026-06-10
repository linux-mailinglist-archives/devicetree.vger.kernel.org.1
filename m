Return-Path: <devicetree+bounces-309783-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id aYLPAqJXKWpKVQMAu9opvQ
	(envelope-from <devicetree+bounces-309783-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 14:25:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 758726693F8
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 14:25:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=dD8p5CJF;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309783-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-309783-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 49DBF305BE90
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 12:23:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8765A406297;
	Wed, 10 Jun 2026 12:23:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 705A6403E90
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 12:23:55 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781094236; cv=none; b=HlsNs/hM0eYL7/iInj9Lg6bmC+AN1XU7MSY0Lou72prra3qoNrlkuyJWBmFI4nBfKhMKmcd4KfqSdpjcIw11zDbqZZw/6ha6Co4mlu0GOT6eO8rRLlwRCEW60Eqt+ULSZ+3W2d8j2/6Sq+BEbbskrWArok5MWrh+aBj32K8k+Uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781094236; c=relaxed/simple;
	bh=V0mbJqzXlSCOuNFxLBw9XYjjN8mbOlxqq5szWq3JHrY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=JMHxWGQZ1VC8ghFrqo5lfO724qHiXKoKT6u/G1nC6IC4zCIjqwNeBXPGb5HlFzUpUqeL1QkfPJWDxOSjivk0Z80dCkpU5MIM8TmtQD47KLBcx+oz2XZpopilcti4eUV6PhgC/3JUS68QYGkdNsvKloOpuuJQQoovP+ABMB6t+/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dD8p5CJF; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B67E1F00899;
	Wed, 10 Jun 2026 12:23:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781094235;
	bh=hBsn+lwd9hXDDcrMYvF9WP67yF3fAau7tWvcylFjtbw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=dD8p5CJFKTeSgbs+3qP/KJuGixAoUgLAqnZz0WMnca44+Fj/YfX0X6OeRQ4J2p4Cr
	 Hyy7WJDfDz/4yUB44mCXPdReuUX+1e1aKvfNLTwurCGMb+Xiezvuh/QSttnZRuh+PQ
	 r3hN2zAkdCZR/gIi9qroYg5rQmNpZaBG8NxEiG4jsN2n9IxFYHiKBY6Rnbfcq6jz8/
	 ZAHuPfDb1k9FPJbLuQjTt+1q3kCjHE5i1YS5sZv7mespLLcW2XQZ8xRchg+hHFTPRL
	 e73bLdHbH8jMwFt3DfTV1tHnmhbfcNT8TRLxQnxXOHI/9USXfDxXY1laEyDEs9MprO
	 NfFWYmQyAMjGQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: eliza: Add PCIe PHY and controller
 nodes
Reply-To: sashiko-reviews@lists.linux.dev
To: "Krishna Chaitanya Chundru" <krishna.chundru@oss.qualcomm.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260610-eliza_dt-v1-1-7bb72b75fc5b@oss.qualcomm.com>
References: <20260610-eliza_dt-v1-1-7bb72b75fc5b@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 10 Jun 2026 12:23:54 +0000
Message-Id: <20260610122355.1B67E1F00899@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-309783-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 758726693F8

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Missing `msi-map` device tree property in PCIe controller nodes.
--

commit 0646a5585317fe9881a2b5cfe976f1ab1485cf3c
Author: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>

arm64: dts: qcom: eliza: Add PCIe PHY and controller nodes

This commit adds the PCIe controller and PHY nodes for the two PCIe instanc=
es
on the Eliza platform, and updates the GCC clock references to use the new
PHY nodes.

> diff --git a/arch/arm64/boot/dts/qcom/eliza.dtsi b/arch/arm64/boot/dts/qc=
om/eliza.dtsi
> index 4a7a0ac40ce62..c4f0923710bbb 100644
> --- a/arch/arm64/boot/dts/qcom/eliza.dtsi
> +++ b/arch/arm64/boot/dts/qcom/eliza.dtsi
[ ... ]
> @@ -716,6 +716,361 @@ mmss_noc: interconnect@1780000 {
>  			#interconnect-cells =3D <2>;
>  		};
> =20
> +		pcie0: pcie@1c00000 {
> +			device_type =3D "pci";
> +			compatible =3D "qcom,eliza-pcie", "qcom,pcie-sm8550";
> +			reg =3D <0 0x01c00000 0 0x3000>,
[ ... ]
> +			operating-points-v2 =3D <&pcie0_opp_table>;
> +
> +			iommu-map =3D <0 &apps_smmu 0x1480 0x1>,
> +				    <0x100 &apps_smmu 0x1481 0x1>;
> +
> +			interrupt-map =3D <0 0 0 1 &intc 0 0 0 564 IRQ_TYPE_LEVEL_HIGH>,
> +					<0 0 0 2 &intc 0 0 0 565 IRQ_TYPE_LEVEL_HIGH>,
> +					<0 0 0 3 &intc 0 0 0 566 IRQ_TYPE_LEVEL_HIGH>,
> +					<0 0 0 4 &intc 0 0 0 567 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-map-mask =3D <0 0 0 0x7>;
> +			#interrupt-cells =3D <1>;
> +
> +			linux,pci-domain =3D <0>;

[Severity: High]
Should this node include the msi-map property?

Without an msi-map property to map PCIe Requester IDs to GIC ITS Device IDs,
the generic PCI device tree parsing code will fail to assign an MSI domain
to the PCIe bus. This prevents MSI and MSI-X operation for all downstream
devices, forcing a fallback to legacy INTx. The property is also required by
the qcom,pcie-common.yaml binding.

[ ... ]
> +		pcie1: pcie@1c08000 {
> +			device_type =3D "pci";
> +			compatible =3D "qcom,eliza-pcie", "qcom,pcie-sm8550";
> +			reg =3D <0 0x01c08000 0 0x3000>,
[ ... ]
> +			operating-points-v2 =3D <&pcie1_opp_table>;
> +
> +			iommu-map =3D <0 &apps_smmu 0x1400 0x1>,
> +				    <0x100 &apps_smmu 0x1401 0x1>;
> +
> +			interrupt-map =3D <0 0 0 1 &intc 0 0 0 149 IRQ_TYPE_LEVEL_HIGH>,
> +					<0 0 0 2 &intc 0 0 0 150 IRQ_TYPE_LEVEL_HIGH>,
> +					<0 0 0 3 &intc 0 0 0 151 IRQ_TYPE_LEVEL_HIGH>,
> +					<0 0 0 4 &intc 0 0 0 152 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-map-mask =3D <0 0 0 0x7>;
> +			#interrupt-cells =3D <1>;
> +
> +			linux,pci-domain =3D <1>;

[Severity: High]
Is the msi-map property also missing for the pcie1 controller node?

As with pcie0 above, omitting the msi-map property prevents MSI/MSI-X
capabilities from being properly established for downstream devices.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260610-eliza_dt-v=
1-1-7bb72b75fc5b@oss.qualcomm.com?part=3D1

