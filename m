Return-Path: <devicetree+bounces-284659-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CLecOgpG0Wn5HAcAu9opvQ
	(envelope-from <devicetree+bounces-284659-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 04 Apr 2026 19:10:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A0F39BE64
	for <lists+devicetree@lfdr.de>; Sat, 04 Apr 2026 19:10:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0EE68300A75F
	for <lists+devicetree@lfdr.de>; Sat,  4 Apr 2026 17:10:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27A52274B58;
	Sat,  4 Apr 2026 17:10:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tk25YExv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0213224293C;
	Sat,  4 Apr 2026 17:10:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775322632; cv=none; b=IS6z6R6ppqRtMKUqHMWZbnR8QXAUq4LJX7LlLjDvrIY1lj8XD/6V3MQn/vJwjUAaYXZU+qLiVMJYEmoK3V67wqEISC9Py1ezZq1cIZbthFLEaZS2+LgCZB/MiFOo4jRelNSWWRRWIcTsWD4/UzGyAnStWxJLjI+9EpPj0ICdD04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775322632; c=relaxed/simple;
	bh=TL1x8uQHfXMCS5DAHiJFSwR5ZSFg/H+USQuXqbWXElU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XLsywL5VyA7KEQCr/ZKyhDxiYsJEfH+Q3GVaMhUzOnSqt77/TDedSiu+DiJvx4SZRD0YwAybv5y78+USrKa1Hc6ElLcZUhqdZj+55pmSTdjKqQyQvO3EIY32XPTveqZ30Uae+e39T2jIrX6dYujVwcRLCK9gVgYisSynFjzIsMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tk25YExv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E377C19421;
	Sat,  4 Apr 2026 17:10:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775322631;
	bh=TL1x8uQHfXMCS5DAHiJFSwR5ZSFg/H+USQuXqbWXElU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tk25YExvw8065Vz9EAfitUx04X7OsINDwnPs6q3WubHt+0ULf8lwIg1JMVEudvdY1
	 BmSqdQ6R2OPSmmg5/w1As6rFSbzwL7616L+hDAAAEBKweXaNot/S+VJPGB6GnorJnD
	 Bd8MpQZG6tAjvQ4z9MYttsJKHtH038/8IvNIpSCyz7WNNyp455IC5gBhppMDjyjjM1
	 qIcyfqahtkzGeFE+g0HzQcvNSuQ9W0KVlHD102us0OpbGi/h76rnXQIueU/wEeADku
	 y90yOdX5yaMPDEshLmomivYRo7OiDXOcEtB21s5xDudi8KygyIC9vDSL8cwXYFTAcG
	 NZpqOPG4QVFUA==
Date: Sat, 4 Apr 2026 22:40:16 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Sherry Sun <sherry.sun@nxp.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	Frank.Li@nxp.com, s.hauer@pengutronix.de, kernel@pengutronix.de, 
	festevam@gmail.com, lpieralisi@kernel.org, kwilczynski@kernel.org, 
	bhelgaas@google.com, hongxing.zhu@nxp.com, l.stach@pengutronix.de, 
	imx@lists.linux.dev, linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH V2 0/8] PCI: imx6: Integrate pwrctrl API and update
 device trees
Message-ID: <omtn42mopdz7igg7jaqwehd67l6xc77zk7zzqwkufgnsycvadg@5kodhpgfesre>
References: <20260402101007.208419-1-sherry.sun@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260402101007.208419-1-sherry.sun@nxp.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-284659-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,google.com,lists.linux.dev,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mani@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 60A0F39BE64
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Apr 02, 2026 at 06:09:59PM +0800, Sherry Sun wrote:
> Note: This patch set depends on my previous patch set [1] which adds
> Root Port device tree nodes and support parsing the reset property in
> new Root Port binding in pci-imx6 driver.
> 
> This series integrates the PCI pwrctrl framework into the pci-imx6
> driver and updates i.MX EVK board device trees to support it.
> 
> Patches 2-8 update device trees for i.MX EVK boards which maintained
> by NXP to move power supply properties from the PCIe controller node
> to the Root Port child node, which is required for pwrctrl framework.
> Affected boards:
> - i.MX6Q/DL SABRESD
> - i.MX6SX SDB
> - i.MX8MM EVK
> - i.MX8MP EVK
> - i.MX8MQ EVK
> - i.MX8DXL/QM/QXP EVK
> - i.MX95 15x15/19x19 EVK
> 
> The driver maintains legacy regulator handling for device trees that
> haven't been updated yet. Both old and new device tree structures are
> supported.
> 

Thanks for the work! Due to some recently merged patches, this series (Patch 1)
doesn't apply on top of pci/controller/dwc-imx6 branch. Please rebase and
resend!

- Mani

> [1] https://lore.kernel.org/all/20260318062916.2747472-1-sherry.sun@nxp.com/
> 
> Signed-off-by: Sherry Sun <sherry.sun@nxp.com>
> ---
> Changes in V2:
> 1. After commit 2d8c5098b847 ("PCI/pwrctrl: Do not power off on pwrctrl
>    device removal"), the pwrctrl drivers no longer power off devices
>    during removal. Update pci-imx6 driver's shutdown callback in patch#1
>    to explicitly call pci_pwrctrl_power_off_devices() before 
>    pci_pwrctrl_destroy_devices() to ensure devices are properly powered
>    off.
> ---
> 
> Sherry Sun (8):
>   PCI: imx6: Integrate new pwrctrl API for pci-imx6
>   arm: dts: imx6qdl-sabresd: Move power supply property to Root Port
>     node
>   arm: dts: imx6sx-sdb: Move power supply property to Root Port node
>   arm64: dts: imx8mm-evk: Move power supply property to Root Port node
>   arm64: dts: imx8mp-evk: Move power supply properties to Root Port node
>   arm64: dts: imx8mq-evk: Move power supply properties to Root Port node
>   arm64: dts: imx8dxl/qm/qxp: Move power supply properties to Root Port
>     node
>   arm64: dts: imx95: Move power supply properties to Root Port node
> 
>  .../arm/boot/dts/nxp/imx/imx6qdl-sabresd.dtsi |  2 +-
>  arch/arm/boot/dts/nxp/imx/imx6sx-sdb.dtsi     |  2 +-
>  arch/arm64/boot/dts/freescale/imx8dxl-evk.dts |  4 ++--
>  arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi |  2 +-
>  arch/arm64/boot/dts/freescale/imx8mp-evk.dts  |  4 ++--
>  arch/arm64/boot/dts/freescale/imx8mq-evk.dts  |  4 ++--
>  arch/arm64/boot/dts/freescale/imx8qm-mek.dts  |  4 ++--
>  arch/arm64/boot/dts/freescale/imx8qxp-mek.dts |  4 ++--
>  .../boot/dts/freescale/imx95-15x15-evk.dts    |  4 ++--
>  .../boot/dts/freescale/imx95-19x19-evk.dts    |  8 +++----
>  drivers/pci/controller/dwc/Kconfig            |  1 +
>  drivers/pci/controller/dwc/pci-imx6.c         | 24 ++++++++++++++++++-
>  12 files changed, 43 insertions(+), 20 deletions(-)
> 
> -- 
> 2.37.1
> 

-- 
மணிவண்ணன் சதாசிவம்

