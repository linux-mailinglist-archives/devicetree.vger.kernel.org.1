Return-Path: <devicetree+bounces-258150-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6N9vGO9bcWnLGAAAu9opvQ
	(envelope-from <devicetree+bounces-258150-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 00:06:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D2B8C5F3C4
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 00:06:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6D38974BD9E
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 23:06:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F011449EB4;
	Wed, 21 Jan 2026 23:06:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eZ4AoHFq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0533BC4DE;
	Wed, 21 Jan 2026 23:06:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769036762; cv=none; b=YgYB4wTZBDQZtkMACCXuYQdffvUAvRNQAzl30ZnQplY61j24fgOpBTEFfR1MIl/88MRKDncvZEr3lJ+i7ygOYCBpmclSgnxlgK2MwTMFjd7zlCM98mjA/Yhx18F5mRL4Fh4TiZgI3vuM01Cc63ZPtDgasqBIaMPkhJ8mI16Lne0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769036762; c=relaxed/simple;
	bh=A3y3v8DhBf8ak97cYRv8mfNLKyWb9oqjh8kDSSAyi+M=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=hM4w0BbvGcdpYM4S7fZF2dK9ophKklxvPkEH/WNPWP28Ok8icSxh8TpL/UjnnZJzzGWaF1R8cecR9SZlR3G1SGdVqmJwF0TqfwNu8wIWmbY4lVB4OVkHoQc4SzZWrxjy4NGuG2Qsen7gEvqMGq8wt8E6zc9nZ9rOLh5xmw/Nz60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eZ4AoHFq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 865A7C4CEF1;
	Wed, 21 Jan 2026 23:06:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769036761;
	bh=A3y3v8DhBf8ak97cYRv8mfNLKyWb9oqjh8kDSSAyi+M=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=eZ4AoHFqcJgCaPcUpFywIssmFyLiu3n7l4xZSN+WbDubyVD1PRsJulu1T9Gb3pcB/
	 iHS0db6xUkWF/s8Wx2F0yxIqLcvBCx/sa8lFKQShWqNM07WZQLCGR/t4aCdjGCN+DQ
	 LB12bUXUKoX9l6Cz+RXHft37a/XwydThL/qViFVLvFwgKpsbtxWJMTL4Xmh3C1eVVj
	 r32kU0TJ6XJ/z9MBXjI/LPjYX23CxXEUOE/RkJcB/4Ol8AxUCh6YWZ/ZbyosVmuCkJ
	 PAbWZ9zcZZzjqVKYT8gewvS0yR5k/sXHyDxajxo61KTFgmhoorOxq8MikvFPz/Gop1
	 KMF3LtE4TW0ZQ==
Date: Wed, 21 Jan 2026 17:06:00 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Sherry Sun <sherry.sun@nxp.com>
Cc: hongxing.zhu@nxp.com, l.stach@pengutronix.de, bhelgaas@google.com,
	lpieralisi@kernel.org, kwilczynski@kernel.org, mani@kernel.org,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com,
	frank.li@nxp.com, kernel@pengutronix.de, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 00/10] pci-imx6: Add support for parsing the reset
 property in new Root Port binding
Message-ID: <20260121230600.GA1220566@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260119100235.1173839-1-sherry.sun@nxp.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258150-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_CC(0.00)[nxp.com,pengutronix.de,google.com,kernel.org,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[helgaas@kernel.org,devicetree@vger.kernel.org];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,dfw.mirrors.kernel.org:helo,dfw.mirrors.kernel.org:rdns]
X-Rspamd-Queue-Id: D2B8C5F3C4
X-Rspamd-Action: no action

On Mon, Jan 19, 2026 at 06:02:25PM +0800, Sherry Sun wrote:
> This patch set adds support for parsing the reset property in new Root Port
> binding in pci-imx6 driver, similar to the implementation in the qcom pcie
> driver[1].
> 
> The plan is to add the wake-gpio property to the root port in subsequent
> patches. Also, the vpcie-supply property will be moved to the root port
> node later based on the refactoring patch set for the PCI pwrctrl
> framework[2]. 
> 
> [1] https://lore.kernel.org/linux-pci/20250702-perst-v5-0-920b3d1f6ee1@qti.qualcomm.com/
> [2] https://lore.kernel.org/linux-pci/20260115-pci-pwrctrl-rework-v5-0-9d26da3ce903@oss.qualcomm.com/

Is there value in doing this?  It looks like it might be making work
for no benefit.

Certainly for *new* drivers and DTs, we should put resets in the Root
Port.  But this looks like you're moving them in existing DTs.  In
that case, you still have to support the old DTs where the resets are
in the host bridge.

If you are adding support for hardware that has multiple Root Ports
with separate resets for each Root Port, then of course you would need
to put the reset info in per-Root Port stanzas and make changes to
support that, but this series doesn't mention anything about multiple
Root Ports.

> Signed-off-by: Sherry Sun <sherry.sun@nxp.com>
> ---
> Sherry Sun (10):
>   dt-bindings: PCI: fsl,imx6q-pcie: Add reset GPIO in Root Port node
>   PCI: imx6: Add support for parsing the reset property in new Root Port
>     binding
>   arm: dts: imx6qdl: Add Root Port node and move PERST property to Root
>     Port node
>   arm: dts: imx6sx: Add Root Port node and move PERST property to Root
>     Port node
>   arm: dts: imx7d: Add Root Port node and move PERST property to Root
>     Port node
>   arm64: dts: imx8mm: Add Root Port node and move PERST property to Root
>     Port node
>   arm64: dts: imx8mp: Add Root Port node and move PERST property to Root
>     Port node
>   arm64: dts: imx8mq: Add Root Port nodes and move PERST property to
>     Root Port node
>   arm64: dts: imx8dxl/qm/qxp: Add Root Port nodes and move PERST
>     property to Root Port node
>   arm64: dts: imx95: Add Root Port nodes and move PERST property to Root
>     Port node
> 
>  .../bindings/pci/fsl,imx6q-pcie.yaml          |  29 ++++
>  .../arm/boot/dts/nxp/imx/imx6qdl-sabresd.dtsi |   5 +-
>  arch/arm/boot/dts/nxp/imx/imx6qdl.dtsi        |  11 ++
>  .../arm/boot/dts/nxp/imx/imx6qp-sabreauto.dts |   5 +-
>  arch/arm/boot/dts/nxp/imx/imx6sx-sdb.dtsi     |   5 +-
>  arch/arm/boot/dts/nxp/imx/imx6sx.dtsi         |  11 ++
>  arch/arm/boot/dts/nxp/imx/imx7d-sdb.dts       |   5 +-
>  arch/arm/boot/dts/nxp/imx/imx7d.dtsi          |  11 ++
>  .../boot/dts/freescale/imx8-ss-hsio.dtsi      |  11 ++
>  arch/arm64/boot/dts/freescale/imx8dxl-evk.dts |   5 +-
>  arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi |   5 +-
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi     |  11 ++
>  arch/arm64/boot/dts/freescale/imx8mp-evk.dts  |   5 +-
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi     |  11 ++
>  arch/arm64/boot/dts/freescale/imx8mq-evk.dts  |  10 +-
>  arch/arm64/boot/dts/freescale/imx8mq.dtsi     |  22 +++
>  arch/arm64/boot/dts/freescale/imx8qm-mek.dts  |  10 +-
>  .../boot/dts/freescale/imx8qm-ss-hsio.dtsi    |  22 +++
>  arch/arm64/boot/dts/freescale/imx8qxp-mek.dts |   5 +-
>  .../boot/dts/freescale/imx95-15x15-evk.dts    |   5 +-
>  .../boot/dts/freescale/imx95-19x19-evk.dts    |  10 +-
>  arch/arm64/boot/dts/freescale/imx95.dtsi      |  22 +++
>  drivers/pci/controller/dwc/pci-imx6.c         | 128 ++++++++++++++++--
>  23 files changed, 335 insertions(+), 29 deletions(-)
> 
> -- 
> 2.37.1
> 

