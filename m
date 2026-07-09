Return-Path: <devicetree+bounces-324125-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zf/vHvMHUGqgsAIAu9opvQ
	(envelope-from <devicetree+bounces-324125-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 22:43:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DD9AE73581D
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 22:43:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=MMWEp8qK;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324125-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324125-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7DBB830881BA
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 20:41:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FA6B3CFF5A;
	Thu,  9 Jul 2026 20:41:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA5F3CE0A2;
	Thu,  9 Jul 2026 20:41:06 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783629667; cv=none; b=b3kKRyE78x4fFNZVAipUvFLqb1uYw6Xb02HkHKMWUha/0JpZ+BCuiypPEWqYn8S4rw60I0vcXccq+HmaAdo1Q8Ft/V6DWSjVCpNAAH0soUYwhl42CaQQyPprnylJKYUzxZ4gkP+jYJ6FeDfCYNlKdvFYGW/YT0FlNjLFLTf3r8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783629667; c=relaxed/simple;
	bh=4d7otLeT4trqK+whMKGW89DW1ZaMR6SJ8SHO/hVgR5c=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=dAmcDn3JTfPGYhSHe3kNPjnQJPpKTmRrwhwhtDvQ6Pg3NfqaGahRRuiTq07lptlRCBfdXLPs8AGxVbO5siXpcVfNBAEDQMBusCprx0oNqiPtQ3Up5AHV/cyW27f8i2ime1k9sNfBfVEH7QCM8L+rBDJOW0MNNCKEZdmTJmsMXn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MMWEp8qK; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 850C91F000E9;
	Thu,  9 Jul 2026 20:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783629665;
	bh=ZVunD36xZfq4YoQRUwHRVj0b5VUqxm/Ceh/1v0YljTo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=MMWEp8qKYqCtseR5EeUv+6zD44Gf1eDDIvwyGgffoXMIVTFokodMGJw7KRliB1igx
	 8QOXIr4RoIh0EaJ+prx95i8HZn17wUHomL5mBICDnnBZ7e8F4BsGsink1BFjWxlCOu
	 pgRLWH/vAJ/dYNmhbGjDFXTFAXHofS3D4sfR3phfFB7OsXTZbP6c/pcOGSPGTR2qTn
	 5c/NrOxaEMSEIpkYHlff7xtoes95UC6SgwOM4fe3uPUjYqTa2nx7dBO9Ygs4IVjvcd
	 1SxVoL9uwXxaIQdFqO2vlaCaF4kH4bjwJN6h5N6ZwUaz6slvdMEN1zpcw+rl1DmanJ
	 b4lFfCasKR8zw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/4] arm64: dts: imx8qm-ss-audio: add spdif1 node
Reply-To: sashiko-reviews@lists.linux.dev
To: Frank.Li@oss.nxp.com
Cc: conor+dt@kernel.org, Frank.Li@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev
In-Reply-To: <20260709-qm_dts-v2-2-3ebcce82bb79@nxp.com>
References: <20260709-qm_dts-v2-0-3ebcce82bb79@nxp.com>
 <20260709-qm_dts-v2-2-3ebcce82bb79@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 20:41:05 +0000
Message-Id: <20260709204105.850C91F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-324125-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,smtp.kernel.org:mid,vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sashiko.dev:url,lists.linux.dev:replyto];
	FORGED_RECIPIENTS(0.00)[m:Frank.Li@oss.nxp.com,m:conor+dt@kernel.org,m:Frank.Li@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:conor@kernel.org,s:lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DD9AE73581D

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The new clock controller node `spdif1_lpcg` is incorrectly marke=
d with `status =3D "disabled";`. In i.MX8 device trees, LPCG (Local Periphe=
ral Clock Gate) nodes provide clocks to hardware blocks and are intended to=
 be enabled by default at the SoC level, as the clock framework automatical=
ly manages them. Setting `status =3D "disabled";` means the device node wil=
l not be instantiated by the OF core, and its platform driver (`imx8qxp-lpc=
g-clk`) will not probe. Consequently, when a board file enables `spdif1` (u=
sing `&spdif1 { status =3D "okay"; };`), the `spdif1` driver will fail to p=
robe with a persistent `-EPROBE_DEFER` error because its required clock pro=
vider (`spdif1_lpcg`) is unavailable.
--

--- Patch [2]: [PATCH v2 2/4] arm64: dts: imx8qm-ss-audio: add spdif1 node =
---
commit 5e80d17ca35f0e8c498b103cd29fc869f77a9125
Author: Frank Li <Frank.Li@nxp.com>
arm64: dts: imx8qm-ss-audio: add spdif1 node

This commit adds the spdif1 audio node and its corresponding local peripher=
al
clock gate (LPCG) node to the imx8qm-ss-audio device tree.

> diff --git a/arch/arm64/boot/dts/freescale/imx8qm-ss-audio.dtsi b/arch/ar=
m64/boot/dts/freescale/imx8qm-ss-audio.dtsi
> --- a/arch/arm64/boot/dts/freescale/imx8qm-ss-audio.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8qm-ss-audio.dtsi
[ ... ]
> @@ -109,6 +134,19 @@ sai5: sai@59090000 {
>  		status =3D "disabled";
>  	};
> =20
> +	spdif1_lpcg: clock-controller@59430000 {
> +		compatible =3D "fsl,imx8qxp-lpcg";
> +		reg =3D <0x59430000 0x10000>;
> +		#clock-cells =3D <1>;
> +		clocks =3D <&acm IMX_ADMA_ACM_SPDIF1_TX_CLK_SEL>,
> +			 <&audio_ipg_clk>;
> +		clock-indices =3D <IMX_LPCG_CLK_5>, <IMX_LPCG_CLK_4>;
> +		clock-output-names =3D "spdif1_lpcg_tx_clk",
> +				     "spdif1_lpcg_gclkw";
> +		power-domains =3D <&pd IMX_SC_R_SPDIF_1>;
> +		status =3D "disabled";

[Severity: Medium]
Will this cause a persistent probe deferral for spdif1?

Since LPCG nodes provide clocks to hardware blocks, they are typically enab=
led
by default at the SoC level so the clock framework can manage them. Setting
the status to disabled here means the clock provider won't probe unless a
board file explicitly enables it.

If a board file only enables spdif1, won't it fail to probe with -EPROBE_DE=
FER
because its required clock provider is unavailable?

> +	};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709-qm_dts-v2-=
0-3ebcce82bb79@nxp.com?part=3D2

