Return-Path: <devicetree+bounces-324326-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id p2NUBzu9UGqM4QIAu9opvQ
	(envelope-from <devicetree+bounces-324326-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 11:36:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A666773922B
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 11:36:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=FO9TF+w8;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324326-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324326-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1B2A93012B21
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 09:35:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3E243DCD85;
	Fri, 10 Jul 2026 09:35:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97C8C3D1AA0
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 09:35:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783676125; cv=none; b=P1S8ZYxWH7+L2IiAVRZwyCfN4YpSryIeHrkpSoxF2UjYS1eSu4eEX5R0mc8aUtP4GE7iaIxVzpmMe47seBNTqC0dd6OIXGGcHFrUmeoTNB/iePnv87Dq0GHR5Ul2tZhGqtAnKtNPIGcJ4AUckn/wP9KVIjLkiy+Ubx/wpnoQ7v0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783676125; c=relaxed/simple;
	bh=2RDSBNbYh/LHDm6yzRDgbu1brhQt2WRjqswQLhQvrCE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=bHmDnlXqFfGqQ9T+v5qp0OOKwFNvHB4PlF+LSC74rSeK/yvAp4xgHILXFwFCcqaBX21wmdixADSCGZDtXzki8p/nDcgRvMSX6zFa4/ecgaht2PtiJ+Z+io1mGq+/GR63FcRWACmD6XGm3dKnJ8pdTJ0iGkxzjmVH+iGtTg+Qza8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FO9TF+w8; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9D7AD1F000E9;
	Fri, 10 Jul 2026 09:35:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783676123;
	bh=53F+ZQyXoz6Um2mqXo+PzRlaC5XPaxb8nvGCLggiSGg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=FO9TF+w8yfGRZ0I5vAGpRn2UMJw+UZg61/vwsUu/guy9Rr3Y3mbsgAlnKbd+pNTaq
	 I51HcXL+r8SMhfYqiobCpbnZ4r0eEYAveeOKMMQJTjN+HFxQEz8fzkr5vWdXR1yUiJ
	 TcNa2F6sPekueOOTBumdC9bxWcZu7TN9MLrCgB2Ml3MRfPheYMgoab1lRNWUDtV6BB
	 rKWUezHYkAKGPpPJnbv0YigZNYWgDOiHBwx265fXuGmMM8u70oZ7skLJiYcNyEPGqc
	 iuEMdy4EnrqOvroswGQfVhDLgd9QBNPlaozdhVoDlfkqTvH8qysYTD4To124xT9V2m
	 mYHkLJTzP0UBQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 7/7] arm64: dts: qcom: agatti: Add OPE node
Reply-To: sashiko-reviews@lists.linux.dev
To: "Loic Poulain" <loic.poulain@oss.qualcomm.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260710-camss-isp-ope-v4-7-51207a0319d8@oss.qualcomm.com>
References: <20260710-camss-isp-ope-v4-0-51207a0319d8@oss.qualcomm.com>
 <20260710-camss-isp-ope-v4-7-51207a0319d8@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Jul 2026 09:35:23 +0000
Message-Id: <20260710093523.9D7AD1F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-324326-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:loic.poulain@oss.qualcomm.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,vger.kernel.org:from_smtp,sashiko.dev:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:email,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A666773922B

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:

New issues:
- [High] Mismatch in power domain and OPP configurations leading to missing=
 performance state scaling.
- [Medium] The device tree node for `isp_ope` is missing the `status =3D "d=
isabled";` property, causing it to probe unconditionally.

Pre-existing issues:
- [High] Unchecked return value of `devm_pm_domain_attach_list` masking `-E=
PROBE_DEFER`.
--

--- Patch [7]: [PATCH v4 7/7] arm64: dts: qcom: agatti: Add OPE node ---
commit fe76d36b157aaeb53ae7054b89db58abbc4862b7
Author: Loic Poulain <loic.poulain@oss.qualcomm.com>

arm64: dts: qcom: agatti: Add OPE node

This commit adds the Offline Processing Engine (OPE) device tree node for
the Agatti platform (QCM2290). The node describes the register regions,
clocks, interrupts, interconnects, IOMMU mappings, and the OPP table.

> diff --git a/arch/arm64/boot/dts/qcom/agatti.dtsi b/arch/arm64/boot/dts/q=
com/agatti.dtsi
> index 8a7337239b1eb..8c1ebf82509f9 100644
> --- a/arch/arm64/boot/dts/qcom/agatti.dtsi
> +++ b/arch/arm64/boot/dts/qcom/agatti.dtsi
> @@ -1931,6 +1931,80 @@ port@1 {
>  			};
>  		};
> =20
> +		isp_ope: isp@5c42400 {
> +			compatible =3D "qcom,qcm2290-camss-ope";

[Severity: Medium]
Should this node include a status =3D "disabled"; property?

Without it, the device probes unconditionally on all QCM2290 boards, even
those without camera hardware, which might consume interconnect bandwidth,
power domains, and clock resources unnecessarily on boot.

> +
> +			reg =3D <0x0 0x5c42400 0x0 0x200>,

[ ... ]

> +			power-domains =3D <&gcc GCC_CAMSS_TOP_GDSC>,
> +					<&rpmpd QCM2290_VDDCX>;
> +			power-domain-names =3D "camss",
> +					      "cx";
> +
> +			ope_opp_table: opp-table {
> +				compatible =3D "operating-points-v2";
> +
> +				opp-19200000 {
> +					opp-hz =3D /bits/ 64 <19200000>;
> +					required-opps =3D <&rpmpd_opp_min_svs>;

[Severity: High]
Does this correctly map the multiple power domains to the OPP table?

The node specifies two power domains (GCC_CAMSS_TOP_GDSC and QCM2290_VDDCX),
but only provides a single phandle per required-opps rather than an array
matching the multiple domains.

Since the OPP core drops the performance state request when the main
device has no power domain (due to being attached as virtual devices),
could the hardware clock scale up without the required VDDCX voltage and
cause a system hang?

[ ... ]

[Severity: High]
This isn't a bug introduced by this patch, but adding this device tree node
actively triggers a pre-existing issue in the driver's power initialization:

drivers/media/platform/qcom/camss/camss-ope.c:ope_init_power() {
    ...
    devm_pm_domain_attach_list(dev, NULL, &pmdomains);
    ...
}

Is it safe to ignore the return value of devm_pm_domain_attach_list()?

The function can fail, notably with -EPROBE_DEFER if power domains
aren't ready.

Ignoring the return value masks the error and proceeds with probing,
which will lead to the device not powering up correctly at runtime and
bringing the camera subsystem down.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260710-camss-isp-=
ope-v4-0-51207a0319d8@oss.qualcomm.com?part=3D7

