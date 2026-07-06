Return-Path: <devicetree+bounces-321588-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XgIkGJglTGqRgwEAu9opvQ
	(envelope-from <devicetree+bounces-321588-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 00:00:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 985CA715DD7
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 00:00:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=AgWxUfwm;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321588-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321588-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 69139302FAB5
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 22:00:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D5BE325706;
	Mon,  6 Jul 2026 22:00:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DF51230BD9;
	Mon,  6 Jul 2026 22:00:52 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783375253; cv=none; b=bohHyhdw9BkU8Qm4ZrnLBpwlInELyMa2tNUY3d/oxrMWL0qCbu5fhDXOan5tHjwJWvVHf+J0smtezQtzmtLvFXO4J2eqp0GCJh767PHM1aEuuZ/aUYHg9BxgaYk7Ylzwv+KO/4jYWyFTqo7UKIXD/uLP1rNbPV32mEI1L59UEdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783375253; c=relaxed/simple;
	bh=TUJNlwnSqsV2xKA/JTrAHKjrb8Yy3B/R99TmxhIHBNs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=WBMsHCiP/w7JLvMhrHGHR0DBLXmXSwJaplW8OS5EFretnJqovbj3fKDw3BA1V7EwQsOkaOw5d24dybi9YD3Bf8jKxyHT1NoVbAWhTNQG/y+cWraVB920ALY8jAQkZSa8cwQIsI3bwIA2+4y5GQuhJmd+mT0bVExjCye45e4CsH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AgWxUfwm; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C19FA1F000E9;
	Mon,  6 Jul 2026 22:00:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783375252;
	bh=viAKgeK7C5nOkcVfjt0bHjgt8VVJdenBAwm4C+17Qbs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=AgWxUfwmCNGfR7jApUJKTH7saoS1c7beOhVAh8+vdVURLvo0I7rY5dITDnEp49WC8
	 XxDe/OYwNMc+8xeDJLdQi04Of7WExJ4vLaIOu/7iLrJTp38mET1FtWTNfqOAi8pwEB
	 ELZMvltz2E13rOVVey6BsiVUAoKGyt416euStvkUcSbuJRXhBXFKmpo1gP/pjiTUt1
	 jiZmUKVcRCnKt9y/QbzHutbCDR7L+L2FWt5lHe9zR2J/EsL1huc+wIXNGOIZStw3o9
	 yJ9c+GeyyxOVa5G8GLneSYXAT/7kAewW1qPrzwGHJlK1ypMc6ylnb/bK1h8V9aA4F6
	 jLZv0AwgExW2g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/4] arm64: dts: imx8qm-ss-dma: add lpuart4 node
Reply-To: sashiko-reviews@lists.linux.dev
To: Frank.Li@oss.nxp.com
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org, Frank.Li@kernel.org, imx@lists.linux.dev
In-Reply-To: <20260706-qm_dts-v1-1-14117a48fbdb@nxp.com>
References: <20260706-qm_dts-v1-0-14117a48fbdb@nxp.com>
 <20260706-qm_dts-v1-1-14117a48fbdb@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 06 Jul 2026 22:00:51 +0000
Message-Id: <20260706220051.C19FA1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-321588-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,nxp.com:email,smtp.kernel.org:mid];
	FORGED_RECIPIENTS(0.00)[m:Frank.Li@oss.nxp.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:Frank.Li@kernel.org,m:imx@lists.linux.dev,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 985CA715DD7

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The newly added `lpuart4` node includes a `power-domain-names` prop=
erty which is undocumented in the `fsl-lpuart.yaml` device tree binding, ca=
using a devicetree schema validation failure.
--

--- Patch [1]: [PATCH 1/4] arm64: dts: imx8qm-ss-dma: add lpuart4 node ---
commit 5d53e06892d921423b269317c3426f0a50c063e7
Author: Frank Li <Frank.Li@nxp.com>

arm64: dts: imx8qm-ss-dma: add lpuart4 node
   =20
This commit adds the lpuart4 node for the imx8qm SoC to the imx8qm-ss-dma.d=
tsi
device tree source.

> diff --git a/arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi b/arch/arm6=
4/boot/dts/freescale/imx8qm-ss-dma.dtsi
> --- a/arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi
> @@ -8,6 +8,22 @@
>  /delete-node/ &adma_pwm_lpcg;
> =20
>  &dma_subsys {
> +	lpuart4: serial@5a0a0000 {
> +		compatible =3D "fsl,imx8qm-lpuart", "fsl,imx8qxp-lpuart";
> +		reg =3D <0x5a0a0000 0x1000>;
[ ... ]
> +		assigned-clocks =3D <&clk IMX_SC_R_UART_4 IMX_SC_PM_CLK_PER>;
> +		assigned-clock-rates =3D <80000000>;
> +		power-domains =3D <&pd IMX_SC_R_UART_4>;
> +		power-domain-names =3D "uart";

[Severity: Low]
Is this power-domain-names property strictly necessary here?=20

This property is undocumented in the fsl-lpuart.yaml device tree binding,
which restricts allowed properties. As a result, including it causes a
devicetree schema validation failure during dtbs_check.=20

Since there is only a single power domain specified for lpuart4, the kernel
PM core handles it automatically without needing it to be explicitly named.

> +		dmas =3D <&edma2 20 0 FSL_EDMA_RX>, <&edma2 21 0 0>;
> +		dma-names =3D "rx","tx";
> +		status =3D "disabled";
> +	};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260706-qm_dts-v1-=
0-14117a48fbdb@nxp.com?part=3D1

