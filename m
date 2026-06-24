Return-Path: <devicetree+bounces-315050-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wlO1CDZ6O2r9YQgAu9opvQ
	(envelope-from <devicetree+bounces-315050-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 08:33:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE246BBC91
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 08:33:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=QMZwNOlv;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315050-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-315050-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 706DC3029268
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 06:30:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED77D38736C;
	Wed, 24 Jun 2026 06:30:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D82D120459A
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 06:30:48 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782282649; cv=none; b=chQszkViuRGFkkb6v9wuf14pEmfkKWJSH2TCF+hPc9CKd5VnupwgENGcphmu8K6x5ZvzqzWlhsxLPVI6TNbRtywxqqUsPGnVQ3VFHS1polilm/ZAbNgeH0jlPkEIm9Yn3cA7YkYVqgq3y8vDpxi26ByqydXDo+qLRID8RH6Sv18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782282649; c=relaxed/simple;
	bh=LbsNcuUvLbIZpnpdwZyEsrCV5tkucSczDTX6davkl3c=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=sEUkzHXwVZXXT2+tRSQ7gygqiPbd4ijktb8PbMBH9MxLtGjl+11HpUUazwE0I+u2mwshERQf56rb6MsN6aHFtrjbNU1fRa/8xNRR4brIun6BYZbeHRgznHqVRC4alu0tdBtQwEfBVW/d+ft1wH/OOz628SQIWzX6ZsaBsO/8fho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QMZwNOlv; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3D6021F000E9;
	Wed, 24 Jun 2026 06:30:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782282648;
	bh=Pd1BPhMchqCBbVTpAwga4eYEcHKVih7N9Yz/Mfhj6mw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=QMZwNOlvsGtTU5YcxIESqYdv8r5AksCqQg/5Zqjf2P0x2auJ53I4zbrMY72mRlqVh
	 cPwMEY0LDK04p9GITEkCx13QpCHAUkmQtHrz5uU6PWfzCVHMsvfHr6AoEENjkfR11n
	 eLAwygGWcsdsTbHxXIMO7PGoacfTQ0G3Enm0BSSmwzdgAY4RyoVsWZ9IT429X6a+ZO
	 claE/GOUGeBDf1D9JVXhs6Nro4+RSAV0yqVRcjOVIh/uaAiWKAEXQB39n4MzYAbmO1
	 HtkNSJaAbvNgoq6KfnliJ3YKWDujr5jeraM4TIWVRb68JtvYsA3HCmxKI0AV410FhJ
	 6CSS+pIHN3zeA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 2/2] arm64: dts: socfpga: agilex5: Add dma-coherent
 to XGMAC nodes
Reply-To: sashiko-reviews@lists.linux.dev
To: muhammad.nazim.amirul.nazle.asmade@altera.com
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260624062203.12221-3-muhammad.nazim.amirul.nazle.asmade@altera.com>
References: <20260624062203.12221-1-muhammad.nazim.amirul.nazle.asmade@altera.com>
 <20260624062203.12221-3-muhammad.nazim.amirul.nazle.asmade@altera.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 24 Jun 2026 06:30:47 +0000
Message-Id: <20260624063048.3D6021F000E9@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-315050-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:muhammad.nazim.amirul.nazle.asmade@altera.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[altera.com:email,smtp.kernel.org:mid,lists.linux.dev:replyto,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6EE246BBC91

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Omission of `dma-coherent` property on SMMU-routed DMA master node=
s (`usb0`, `dmac0`, `dmac1`) causes potential data corruption.
--

commit d5421d52fec812147859d426e90e92990eb7c1b8
Author: Nazim Amirul <muhammad.nazim.amirul.nazle.asmade@altera.com>

arm64: dts: socfpga: agilex5: Add dma-coherent to XGMAC nodes

The SMMU is enabled and transactions going through it are cache
coherent. Add the dma-coherent property to the XGMAC nodes to prevent
redundant cache flush/invalidate operations and potential stale data
issues.

> diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi b/arch/arm64/=
boot/dts/intel/socfpga_agilex5.dtsi
> index 654f94ded1e85..3de424ae3b8ba 100644
> --- a/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
> +++ b/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
> @@ -576,6 +576,7 @@ gmac0: ethernet@10810000 {
>  			altr,sysmgr-syscon =3D <&sysmgr 0x44 0>;
>  			snps,clk-csr =3D <0>;
>  			iommus =3D <&smmu 1>;
> +			dma-coherent;
>  			status =3D "disabled";
> =20
>  			stmmac_axi_emac0_setup: stmmac-axi-config {

[Severity: High]
This is a pre-existing issue, but since the commit message establishes that
transactions going through the SMMU are cache coherent, should the
dma-coherent property also be added to other SMMU-routed DMA master nodes?

Looking at arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi, the dmac0, dmac1,
and usb0 nodes also route through the SMMU but lack the dma-coherent proper=
ty:

dmac0: dma-controller@0 {
        ...
        iommus =3D <&smmu 8>;
};

If the kernel incorrectly treats these devices as non-coherent, allocating
a DMA buffer for reading (DMA_FROM_DEVICE) might result in a cache
invalidation (DC IVAC via dmac_inv_range()) discarding dirty cache lines
without writing them back to memory.

This would cause the CPU to subsequently read stale data, permanently losing
the data the device just wrote.

Could this incomplete fix leave usb0, dmac0, and dmac1 vulnerable to data
corruption and loss?

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260624062203.1222=
1-1-muhammad.nazim.amirul.nazle.asmade@altera.com?part=3D2

