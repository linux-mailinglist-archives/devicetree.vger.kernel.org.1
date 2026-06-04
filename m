Return-Path: <devicetree+bounces-306765-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id l2jjHvxbIWpIFAEAu9opvQ
	(envelope-from <devicetree+bounces-306765-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 13:05:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CC63163F495
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 13:05:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=HYXmcpNE;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306765-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-306765-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2BFB7302800E
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 11:00:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A7691FC7C5;
	Thu,  4 Jun 2026 11:00:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DF6D30276A
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 11:00:09 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780570810; cv=none; b=gnQMFw1twHSaGpGGKbaPW3Yf6aiiI9iW+bZ17wnPp3Tg1+kEV/hNu7x09VassJWZhSIuGawZ+5L1nFhUaNiVNdPD1WpscFV+eKNWtg++jgwUHaY4yNJbySE0zeElWAZkN0yP3FtlQBL1MZy2CJ5arg2TjSg8kvgHfZAfkSQOVO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780570810; c=relaxed/simple;
	bh=hyqQz/WnP9cIZXOoil+nzSyHMAK62OQzzZtuvH/l8T8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=TiLWEnfUDS6nh3Mui29LQgErtyc5OrizK2lwu2KUgWyjS5Xlhwolx0gNn2TQaf/BFpCS3OVB5zEk4v9xuJsZq2xuB64q5tqyg5UzuGpRQzG5GlJfggi//0QAeE11EzMVgnb8OudO/6P6cQFQDJqe+MdhiSEm4b8N3XD6onZpuNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HYXmcpNE; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B87861F00893;
	Thu,  4 Jun 2026 11:00:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780570809;
	bh=L6KhAjtjnaOF3WFrFFjK6gaadvw4ThLvl0FhOEDH0oc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=HYXmcpNEmVl70oBW8HRwfWUeNJtBj67jnSIBOdYHrlqnotFzlpScy3nAZEg+O4Tkl
	 yrMvwLIjqL9EOTEiJyx7QrlMavkek/lKqOgHpDVuOT6AWKGGSDhbjodLpL0TI6RUvv
	 3b9oa4JX4i0JJq0uIC7Vw65BtiyAtU6fumh8Y+sjARQ7RpsvVpqXtx4s94D9CFsD/Z
	 EEsR/ly6eVWrgV+daonVTKPrt/Ccz35L2OiWGxj67QXQgseb23RsYsEzXzWTT56fbJ
	 GH14SyStzCk0KrQ9Ruavf4/ddi9qOvXVxpyaMzUSQZ2ijPK0LqrmjO4v4FtKnU+7Qk
	 lGBXNkivbe3Sw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/2] arm64: dts: socfpga: agilex5: Add dma-coherent
 to XGMAC nodes
Reply-To: sashiko-reviews@lists.linux.dev
To: muhammad.nazim.amirul.nazle.asmade@altera.com
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260604105020.24782-3-muhammad.nazim.amirul.nazle.asmade@altera.com>
References: <20260604105020.24782-3-muhammad.nazim.amirul.nazle.asmade@altera.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 04 Jun 2026 11:00:07 +0000
Message-Id: <20260604110008.B87861F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-306765-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:muhammad.nazim.amirul.nazle.asmade@altera.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CC63163F495

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] The `dma-coherent` property was omitted from several other devices=
 (`usb0`, `dmac0`, `dmac1`, `svc`) that also route transactions through the=
 SMMU, leaving them vulnerable to mismatched cacheability attributes and st=
ale data issues.
--

commit 14396acb9e756559572cafc64cd541f9a342ccfd
Author: Nazim Amirul <muhammad.nazim.amirul.nazle.asmade@altera.com>

arm64: dts: socfpga: agilex5: Add dma-coherent to XGMAC nodes

The commit adds the dma-coherent property to XGMAC nodes because the SMMU is
enabled and transactions going through it are cache coherent. This prevents
redundant cache operations and potential stale data issues.

> diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi b/arch/arm64/=
boot/dts/intel/socfpga_agilex5.dtsi
> index c1a6070871dd6..e819a5149d467 100644
> --- a/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
> +++ b/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
[ ... ]
> @@ -803,6 +805,7 @@ gmac2: ethernet@10830000 {
>  			altr,sysmgr-syscon =3D <&sysmgr 0x4c 0>;
>  			snps,clk-csr =3D <0>;
>  			iommus =3D <&smmu 3>;
> +			dma-coherent;
>  			status =3D "disabled";
> =20
>  			stmmac_axi_emac2_setup: stmmac-axi-config {

[Severity: High]
This isn't a bug introduced by this patch, but if transactions going through
the SMMU are cache coherent, should other devices routing through the SMMU
also have the dma-coherent property?

For example, looking at arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi, the
following nodes specify an SMMU but lack the dma-coherent property:

usb0:
		usb0: usb@10b00000 {
			...
			iommus =3D <&smmu 6>;
		};

dmac0:
			dmac0: dma-controller@0 {
				...
				iommus =3D <&smmu 8>;
			};

dmac1:
			dmac1: dma-controller@10000 {
				...
				iommus =3D <&smmu 9>;
			};

svc:
		svc {
			...
			iommus =3D <&smmu 10>;
		};

Because the dma-coherent property does not automatically propagate from an
IOMMU to its clients in the device tree, will these devices be treated as
non-coherent by the Linux DMA API?

Could mapping hardware-coherent devices as non-coherent result in mismatched
cacheability attributes, leading to stale data being read by the CPU or
device?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260604105020.2478=
2-1-muhammad.nazim.amirul.nazle.asmade@altera.com?part=3D2

