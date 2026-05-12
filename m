Return-Path: <devicetree+bounces-296263-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QFetLoEuA2qd1QEAu9opvQ
	(envelope-from <devicetree+bounces-296263-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 15:43:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D2DF5217D6
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 15:43:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4D391318CFAA
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 13:27:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8442E306745;
	Tue, 12 May 2026 13:27:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cKYk/TZy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 604281D63E4;
	Tue, 12 May 2026 13:27:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778592421; cv=none; b=j/3hI3NeMQ0fclXcRx0JbcKBETN4VCWxRpgLfn5S1yD90pkQXVLiyqSoGJrC4PScNgvBIUv1TOlVCm9gEqLKm5saGkZGQ3JVNVpRLPn6p81VCACKearMDDREPRonfVByD2GCivvWJMoXMDYQoHxX6SEoz/urpgTKlsE1IRwPoN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778592421; c=relaxed/simple;
	bh=N1R7TqmycjTX2xwMWBpyDMY64Xdu0Sxh/2pss/RBKaE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=i/PMsuXMKxn91Uh57dyUjznBdZVLPWqAIWA58x6ihhyTsO3Z/9PvlisF7/s3BkFhBSqhpUFy3XnrUNP+/dNV5nW+C2ua+Aq6qFy2K0HdrJX85wl/gurTrWYeGTcV+VvwE8CcBrTaTPJTYssysgo/gf6lC+mbMEJsIEtlTle0uMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cKYk/TZy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 484FBC2BCB0;
	Tue, 12 May 2026 13:26:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778592421;
	bh=N1R7TqmycjTX2xwMWBpyDMY64Xdu0Sxh/2pss/RBKaE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cKYk/TZy3Ie0pFOp7a9/YmoLU7+Wmas6Ib9z0fwDYQcgzHEqK7gvOBcL3Zqq1B8yc
	 ahYsJFyBNCY3nbSltUHnMiLSNcuwC/WeuTvQTUH+xwrd7cDJoV9p7Ej6BnRlO6UxLi
	 QL4yU1XXw/1ycML975bp0e+jYaXs90knhVNeWyTw1352l8LuuMfOi2A8eCv0mPFzrr
	 tiOACA5MdfvtInsdlpyshTsDFR2oAmL9LzPnQZFFRb2AeANRdq4yp7jwp9FW36r9cV
	 jIi+ZDT0OnAbk9b5IxjVqfCdDKNvh+tUsbnikNisjdGKVCi5/qb+9hB+2Tlx75uv8V
	 KrX19J514c9FA==
Date: Tue, 12 May 2026 18:56:51 +0530
From: "mani@kernel.org" <mani@kernel.org>
To: Hongxing Zhu <hongxing.zhu@nxp.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, 
	"robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>, 
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "bhelgaas@google.com" <bhelgaas@google.com>, 
	Frank Li <frank.li@nxp.com>, "l.stach@pengutronix.de" <l.stach@pengutronix.de>, 
	"lpieralisi@kernel.org" <lpieralisi@kernel.org>, "kwilczynski@kernel.org" <kwilczynski@kernel.org>, 
	"s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>, 
	"festevam@gmail.com" <festevam@gmail.com>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"imx@lists.linux.dev" <imx@lists.linux.dev>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 1/3] dt-bindings: PCI: imx6q-pcie: Add intr, aer and
 pme interrupts
Message-ID: <t3d2s6rl25ywobis4xiwwdvjrccua2qrpwfsxqpvp6qw5pzofa@kjm4wzcpjcli>
References: <20260430050954.3467984-1-hongxing.zhu@nxp.com>
 <20260430050954.3467984-2-hongxing.zhu@nxp.com>
 <20260430-proud-ammonite-of-gaiety-abaafc@quoll>
 <AM0PR04MB52202A13D528B3AE16C3616A8C352@AM0PR04MB5220.eurprd04.prod.outlook.com>
 <55258a51-9cdb-451c-be06-74b9b3020cbc@kernel.org>
 <GV2PR04MB12019F5425D6EB9AE52FC32CE8C3C2@GV2PR04MB12019.eurprd04.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <GV2PR04MB12019F5425D6EB9AE52FC32CE8C3C2@GV2PR04MB12019.eurprd04.prod.outlook.com>
X-Rspamd-Queue-Id: 1D2DF5217D6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	FROM_DN_EQ_ADDR(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-296263-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FREEMAIL_CC(0.00)[kernel.org,google.com,nxp.com,pengutronix.de,gmail.com,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mani@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[infradead.org:email,pengutronix.de:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linux.dev:email,nxp.com:email]
X-Rspamd-Action: no action

On Thu, May 07, 2026 at 08:04:22AM +0000, Hongxing Zhu wrote:
> > -----Original Message-----
> > From: Krzysztof Kozlowski <krzk@kernel.org>
> > Sent: Thursday, April 30, 2026 6:49 PM
> > To: Hongxing Zhu <hongxing.zhu@nxp.com>
> > Cc: robh@kernel.org; krzk+dt@kernel.org; conor+dt@kernel.org;
> > bhelgaas@google.com; Frank Li <frank.li@nxp.com>; l.stach@pengutronix.de;
> > lpieralisi@kernel.org; kwilczynski@kernel.org; mani@kernel.org;
> > s.hauer@pengutronix.de; kernel@pengutronix.de; festevam@gmail.com; linux-
> > pci@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> > devicetree@vger.kernel.org; imx@lists.linux.dev; linux-kernel@vger.kernel.org
> > Subject: Re: [PATCH v3 1/3] dt-bindings: PCI: imx6q-pcie: Add intr, aer and pme
> > interrupts
> > 
> > On 30/04/2026 10:37, Hongxing Zhu wrote:
> > >> -----Original Message-----
> > >> From: Krzysztof Kozlowski <krzk@kernel.org>
> > >> Sent: Thursday, April 30, 2026 4:04 PM
> > >> To: Hongxing Zhu <hongxing.zhu@nxp.com>
> > >> Cc: robh@kernel.org; krzk+dt@kernel.org; conor+dt@kernel.org;
> > >> bhelgaas@google.com; Frank Li <frank.li@nxp.com>;
> > >> l.stach@pengutronix.de; lpieralisi@kernel.org;
> > >> kwilczynski@kernel.org; mani@kernel.org; s.hauer@pengutronix.de;
> > >> kernel@pengutronix.de; festevam@gmail.com; linux-
> > >> pci@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> > >> devicetree@vger.kernel.org; imx@lists.linux.dev;
> > >> linux-kernel@vger.kernel.org
> > >> Subject: Re: [PATCH v3 1/3] dt-bindings: PCI: imx6q-pcie: Add intr,
> > >> aer and pme interrupts
> > >>
> > >> On Thu, Apr 30, 2026 at 01:09:52PM +0800, Richard Zhu wrote:
> > >>> Add 'intr', 'aer', and 'pme' interrupt entries to the i.MX6Q PCIe
> > >>> binding to support PCIe event-based interrupts for general
> > >>> controller events, Advanced Error Reporting, and Power Management Events
> > respectively.
> > >>>
> > >>> These interrupts are optional for existing variants (imx6q, imx6sx,
> > >>> imx6qp, imx7d, imx8mq, imx8mm, imx8mp) to maintain backward
> > >>> compatibility with existing device trees.
> > >>>
> > >>> For fsl,imx95-pcie, all 5 interrupts (msi, dma, intr, aer, pme) are
> > >>> mandatory due to hardware requirements.
> > >>>
> > >>> This introduces an ABI requirement for fsl,imx95-pcie. The i.MX95
> > >>> hardware requires dedicated interrupt lines for AER, PME, and
> > >>> general controller events due to its redesigned interrupt
> > >>> architecture. i.MX95 cannot function correctly without explicit
> > >>> interrupt routing for error handling, power management and link event
> > detection.
> > >>
> > >> fsl,imx95-pcie was added more than two years ago, so how it cannot
> > >> function correctly? Are you saying that for two years you had here
> > >> completely broken code?
> > >>
> > >> If this wasn't tested for two years, how can we believe anything is tested now?
> > > The basic PCIe functionality has been working since the initial
> > > fsl,imx95-pcie support. However, AER (Advanced Error Reporting) and
> > > link up/down detection were not previously enabled. This patch-set
> > > adds and verifies support for these advanced features.
> > >
> > 
> > That is not what you said in the commit msg.
> Hi Krzysztof:
> Sorry for the delayed response due to a holiday.
> After reviewing this patch-set again, I'd like to suggest an alternative
> approach: would it be possible to mark these newly added interrupts as
> optional?

Yes, since even without these interrupts, PCIe functionality still works. Only
issue is that it cannot report error and recover from LDn.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

