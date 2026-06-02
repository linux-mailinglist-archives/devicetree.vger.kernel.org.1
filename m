Return-Path: <devicetree+bounces-305760-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NwSROSkKH2qveAAAu9opvQ
	(envelope-from <devicetree+bounces-305760-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 18:51:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AE3963064A
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 18:51:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="Ah/YkoYh";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305760-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-305760-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A2E44303D4D1
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 16:45:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E38537BE64;
	Tue,  2 Jun 2026 16:45:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4356E377ED4
	for <devicetree@vger.kernel.org>; Tue,  2 Jun 2026 16:45:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780418714; cv=none; b=TDS/Rk8Hvud40NsYw+o4jzZjtkzb39p7NwigaUXEAS8EngC72L3GVq2Yb1IPmfVzjHBstqjLMm1754+7eaAukyOEyb19/wXH/zSlb3ONRSXv32SE75a1uHoA8V+/1U79ZOzRtfliplQ/J9XIpAEJhM5ePQxuXZeA3WcXPhLxQnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780418714; c=relaxed/simple;
	bh=Dq06EGJuEok+mHXXy4aRJyKiZNemqdkf65D8227jtzY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=GI+deuW/kECPt+wLRlw+vqGCnm6VYeO8FTcqa1eoPtZ7/eW+4TBANvLwGvZrBp7CP9qEPmZfE6ApWRFm8HXRXN79E9nzYJFbfI4lvQ5SxiJBs++MOdau6+y9IUrnHcas0yB0mTS1aybVVU74L9RBTxg3kWHyul1aO32DI1y9OIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ah/YkoYh; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F1CC1F00893;
	Tue,  2 Jun 2026 16:45:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780418712;
	bh=29+hUkBdjfyXfmv+F+V+7IxN0hp+CuNc+WfW3WXSN6E=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Ah/YkoYh5AYje/ZjXK+loZB8enR9UN850l6MoBw6Js/I2ucAPEsKgDaa+OyEPIpdB
	 rZ6tqfu1TO/ZsZaKYFxOSyZgd5Nu8YfRH9oWjEedYa7gTd/S4j/7Kw9BPbpMYcduRT
	 NuZtSuOM/o3y3Zm/Ttag7CLscZLiO+CICZ603gLETQ4A4tQD3o9AeH8ent6TLJnyza
	 Yw2KC2rb53zaoW/TY87bYVs6Y2BPdrY1MGrmouCvb7kAsvQpCKNSXrIfCG7eXC6rD+
	 Qnm9Y5VGW8IEIY6Z7scKirGGu+lIg2VrkIefqBzcOcpp6wu0pAfCjewLgjQDEOWt8s
	 99ByX3PlikTIw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: qcom: ipq5332: Move PHYs and PERST# to
 Root Port node
Reply-To: sashiko-reviews@lists.linux.dev
To: "Kathiravan Thirumoorthy" <kathiravan.thirumoorthy@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260602-move_perst_to_rp-v1-1-8ee5b80316da@oss.qualcomm.com>
References: <20260602-move_perst_to_rp-v1-1-8ee5b80316da@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 02 Jun 2026 16:45:12 +0000
Message-Id: <20260602164512.9F1CC1F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-305760-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:kathiravan.thirumoorthy@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,sashiko.dev:url,qualcomm.com:email,lists.linux.dev:replyto,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4AE3963064A

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Missing `phy_exit()` on error path in `qcom_pcie_parse_port()` lea=
ks PHY initialization state.
--

commit a3169d2cae3bc2449e374f733bcb358e726cc377
Author: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>

arm64: dts: qcom: ipq5332: Move PHYs and PERST# to Root Port node

This commit updates the device tree bindings for the IPQ5332 PCIe
interfaces. It moves the PHYs and PERST# properties under the
Root Port nodes to follow the new binding style.

> diff --git a/arch/arm64/boot/dts/qcom/ipq5332-rdp441.dts b/arch/arm64/boo=
t/dts/qcom/ipq5332-rdp441.dts
> index 79ec77cfe5527..7fcf632e289f0 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5332-rdp441.dts
> +++ b/arch/arm64/boot/dts/qcom/ipq5332-rdp441.dts

[ ... ]

> @@ -46,13 +43,15 @@ &pcie0_phy {
>  	status =3D "okay";
>  };
> =20
> +&pcie0_port0 {
> +	reset-gpios =3D <&tlmm 38 GPIO_ACTIVE_LOW>;
> +	wake-gpios =3D <&tlmm 39 GPIO_ACTIVE_LOW>;
> +};

[Severity: High]
This is a pre-existing issue, but does moving these properties to the
Root Port node expose a PHY initialization leak on probe deferral?

When the driver processes the port via qcom_pcie_parse_port(), it calls
phy_init() and then immediately calls qcom_pcie_parse_perst(). If parsing
the PERST# GPIO (now added to the port node here) fails with -EPROBE_DEFER,
the function returns early:

drivers/pci/controller/dwc/pcie-qcom.c:qcom_pcie_parse_port() {
    ...
	ret =3D qcom_pcie_parse_perst(pcie, port, node);
	if (ret)
		return ret;
    ...
}

Because the port is not added to the pcie->ports list until later in
the function, the cleanup loop in the caller qcom_pcie_parse_ports() misses
it entirely:

err_port_del:
	list_for_each_entry_safe(port, tmp_port, &pcie->ports, list) {
		list_for_each_entry_safe(perst, tmp_perst, &port->perst, list)
			list_del(&perst->list);
		phy_exit(port->phy);
		list_del(&port->list);
	}

Could this lead to unbalanced clocks and regulator reference counts by
skipping phy_exit() if the GPIO driver is not yet ready?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260602-move_perst=
_to_rp-v1-0-8ee5b80316da@oss.qualcomm.com?part=3D1

