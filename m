Return-Path: <devicetree+bounces-177918-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 171B9AB9A0A
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 12:23:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7C14B4A7C28
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 10:23:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7331322E414;
	Fri, 16 May 2025 10:23:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 637D7231C9F
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 10:23:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747391023; cv=none; b=Mg5bWu8WclJsrTpA9ZPveKq0vdsaVR7UaVsB6/Tgx1a9LlLPLKX+z5Bf7qs+g9hPrFX/GGCz84M8cpL57vINou4CeZw9YEpmy4vgeVSik8QLmo+ralJyKHyjZSvCcyEXbegmG9zhR2DJSPuiyqz9Ovu4CIQWAU7UweXw727at0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747391023; c=relaxed/simple;
	bh=O62hwLD99pjENKaFOtAe4SzABf05kZaTfZAi8O/Xa/w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QAJLaHmMNgqFNU1ZyGXe+8RUVzb8WOMydNtLPK+x1BFOll50Q72gCeLWXTLD8FqdR+WF+VkayWPdQUVTeDvIKT5XKmpVZfyOQsK4heiyAEUAO7PvhHFY+JyLU8u+15s1P5X3sxfS2I/zSJOoO0xB5vX6PO4SDh6QsS85mc1W7fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uFsDs-0002TA-Kk; Fri, 16 May 2025 12:23:24 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uFsDr-0031Py-0C;
	Fri, 16 May 2025 12:23:23 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uFsDr-008SsJ-0x;
	Fri, 16 May 2025 12:23:23 +0200
Date: Fri, 16 May 2025 12:23:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Bryan Brattlof <bb@ti.com>
Cc: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Dhruva Gole <d-gole@ti.com>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 2/3] arm64: dts: ti: k3-am62l: add initial
 infrastructure
Message-ID: <aCcSG5ah12N0yOwi@pengutronix.de>
References: <20250507-am62lx-v5-0-4b57ea878e62@ti.com>
 <20250507-am62lx-v5-2-4b57ea878e62@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250507-am62lx-v5-2-4b57ea878e62@ti.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Hi All,

On Wed, May 07, 2025 at 10:09:20PM -0500, Bryan Brattlof wrote:
> +	rti0: watchdog@e000000 {
> +		compatible = "ti,j7-rti-wdt";
> +		reg = <0x00 0x0e000000 0x00 0x100>;
> +		clocks = <&scmi_clk 273>;
> +		power-domains = <&scmi_pds 60>;
> +		assigned-clocks = <&scmi_clk 273>;
> +		assigned-clock-parents = <&scmi_clk 1>;
> +	};
> +
> +	rti1: watchdog@e010000 {
> +		compatible = "ti,j7-rti-wdt";
> +		reg = <0x00 0x0e010000 0x00 0x100>;
> +		clocks = <&scmi_clk 279>;
> +		power-domains = <&scmi_pds 61>;
> +		assigned-clocks = <&scmi_clk 279>;
> +		assigned-clock-parents = <&scmi_clk 1>;
> +	};

In the TI downstream TF-A we have this in the readme:

| AM62L Clock SCMI ID List:
| =========================
| 
| **Note:** For using the clock parents, the scmi clock ID will not be the actual number itself,
| rather will be starting with 0 for respective parents similar to how it's being done in TI SCI
| Documentation: https://software-dl.ti.com/tisci/esd/09_02_07/5_soc_doc/am62ax/clocks.html
| 
| For eg. for AM62LX_DEV_MCASP0_AUX_CLK device, clock ID will be 192, however if we require the parent
| to be AM62LX_DEV_MCASP0_AUX_CLK_PARENT_HSDIV4_16FFT_WKUP_0_HSDIVOUT1_CLK then we would represent in
| the device tree as:
| 
| ```
| assigned-clocks = <&scmi_clk 192>;
| assigned-clock-parents = <&scmi_clk 1>;

This doesn't work. It's not conforming to the SCMI specification and it
also doesn't work with the Linux SCMI clk driver which will hang on a
cat /sys/kernel/debug/clk/clk_summary. This is because all clock
parents will be the SCMI clocks with the lowest ids including the clocks
with the lowest ids which will expose themselves as parents.

It also prevents the userspace from being able to make a tree structure
from the clock tree.

The corresponding TF-A code is requested for upstreaming here [1] where
I also commented on with the same issue.

Please stop spreading this further. The parents must be the actual
clk_id, not numbers from 0..n.

Sascha

[1] https://review.trustedfirmware.org/c/TF-A/trusted-firmware-a/+/34834

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

