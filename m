Return-Path: <devicetree+bounces-306575-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JILuHHnnIGpA9QAAu9opvQ
	(envelope-from <devicetree+bounces-306575-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 04:48:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C40DC63C91D
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 04:48:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Gcpus8yy;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306575-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-306575-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8AC23301E97D
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 02:48:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1FEA31A046;
	Thu,  4 Jun 2026 02:48:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F03F3AB28E;
	Thu,  4 Jun 2026 02:48:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780541302; cv=none; b=lXiaISQPYVxugOZfb5+b2bVmyxChkGD5sAwi3zPWQoT9YuEro/ojVevynGuZpB23scCjm7kmqkredpkPijIdOHo6eDOB5vruidOU5fzCTW65VP5p8vt20JkzvtZl0/rFmr2s0zfB7U3TE+Y/LS4cZ4zY0OXmJICe1wAW0v07ABo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780541302; c=relaxed/simple;
	bh=SnjnLPwoBLnR53axfqtxJlFUv9MniPyL8zcx4XeSepc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=LBCPhfPL8OdBQ7m71CfTFP1b52uSfb7MBzq9X9mdmwz2UVhL3sVGqWZzqF17g3mg0VNSTowt6PaLs6qqDA0116eXYmddx5uMMCLA/AM2UQaYdeofU34aE9Cz6c0TEM0rmL9uS+2PNrNT8cCUs8bqmEOnJmuqngTl7xZ89U6nDLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gcpus8yy; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B43971F00893;
	Thu,  4 Jun 2026 02:48:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780541300;
	bh=Pm4SpAaB64smeRZplMuBBjjMetEC/LLrTe7tZG5esPI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Gcpus8yy+tg6rhod/faA4FHqdJb+dZV8WdcMZGzCbUfZfi5KsJvlRV+aOGEEpbFFl
	 5ifSKsOO8ZEm5BkYflXh0XXZ94ZfqgPIMbtkhvKeRXtgo7wO4IXtfFPu7haJATyt8h
	 sqC5R3DhKR29nwSysQuheaY8yFs0UclpeRpuPo5m5G+sYszIuuE8iq/SaHQqFMONFG
	 huyYk6frBWOpgPTuGaUEzwsQyynGmYOLbodjckgt9pvAcvYqe31gOjIygYjzP9jjFt
	 qFBOvm5nKTXgccTUlHIASyfIYeX97+ukjFGm7m9qVa0yE+xlQBqLg2QWwYRD9l7WwS
	 zK0phs4ktRt2g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v1 1/2] arm64: dts: imx94: Correct PCIe outbound address
 space configuration
Reply-To: sashiko-reviews@lists.linux.dev
To: hongxing.zhu@oss.nxp.com
Cc: imx@lists.linux.dev, conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, Frank.Li@kernel.org
In-Reply-To: <20260604023821.134372-1-hongxing.zhu@oss.nxp.com>
References: <20260604023821.134372-1-hongxing.zhu@oss.nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 04 Jun 2026 02:48:19 +0000
Message-Id: <20260604024819.B43971F00893@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-306575-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:hongxing.zhu@oss.nxp.com,m:imx@lists.linux.dev,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:Frank.Li@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C40DC63C91D

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Incomplete Fix: The commit fails to apply the PCIe outbound memory=
 range and I/O space fixes to the identical `pcie1` controller.
--

commit c0fba22963c11d85152a1282d3153eaca25dcb81
Author: Richard Zhu <hongxing.zhu@nxp.com>

arm64: dts: imx94: Correct PCIe outbound address space configuration

Fix the PCIe outbound memory ranges for both pcie0 controllers on i.MX94.

> diff --git a/arch/arm64/boot/dts/freescale/imx94.dtsi b/arch/arm64/boot/d=
ts/freescale/imx94.dtsi
> index a6cb5a6e848b3..1f9035e6cf159 100644
> --- a/arch/arm64/boot/dts/freescale/imx94.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx94.dtsi
> @@ -1374,8 +1374,9 @@ pcie0: pcie@4c300000 {
>  			      <0 0x4c360000 0 0x10000>,
>  			      <0 0x4c340000 0 0x4000>;
>  			reg-names =3D "dbi", "config", "atu", "app";
> -			ranges =3D <0x81000000 0x0 0x00000000 0x0 0x6ff00000 0 0x00100000>,
> -				 <0x82000000 0x0 0x10000000 0x9 0x10000000 0 0x80000000>;
> +			ranges =3D <0x43000000 0x9 0x00000000 0x9 0x00000000 0x0 0xe0000000>,
> +				 <0x82000000 0x0 0xe0000000 0x9 0xe0000000 0x0 0x10000000>,
> +				 <0x81000000 0x0 0x00000000 0x9 0xf0000000 0x0 0x00100000>;

[Severity: High]
This isn't a bug introduced by this patch, but should the identical fix
be applied to the pcie1 controller as well?

Looking at arch/arm64/boot/dts/freescale/imx943.dtsi, the pcie1 node
retains the old outbound mapping:

	pcie1: pcie@4c380000 {
		...
		ranges =3D <0x81000000 0 0x00000000 0x8 0x8ff00000 0 0x00100000>,
			 <0x82000000 0 0x10000000 0xa 0x10000000 0 0x80000000>;

The 1MB I/O region for pcie1 is mapped at CPU physical address 0x8_8ff00000.
This falls inside the 256MB hardware ECAM decoding boundary (0x8_80000000 to
0x8_90000000), which will likely be routed as configuration space rather th=
an
outbound I/O. This breaks translation for any attached PCIe devices requiri=
ng
I/O space.

Additionally, pcie1's memory window remains artificially restricted to 2GB
instead of the supported 4GB.

Would it make sense to duplicate this ranges fix for pcie1 using its
respective 0xa_00000000 outbound address window to completely resolve the
issue for the SoC?

>  			#address-cells =3D <3>;
>  			#size-cells =3D <2>;
>  			device_type =3D "pci";

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260604023821.1343=
72-1-hongxing.zhu@oss.nxp.com?part=3D1

