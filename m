Return-Path: <devicetree+bounces-261972-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EJXCKYpAgWl6FAMAu9opvQ
	(envelope-from <devicetree+bounces-261972-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 01:25:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 077ABD2F43
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 01:25:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 98ABB3069D52
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 00:21:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 733402F872;
	Tue,  3 Feb 2026 00:21:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="FJ6tOz39"
X-Original-To: devicetree@vger.kernel.org
Received: from out-188.mta0.migadu.com (out-188.mta0.migadu.com [91.218.175.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92F161A304A
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 00:21:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.188
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770078118; cv=none; b=KPnQGrBbeJqcT39Nd8poXD40LmLjxPYYZI3xldCHh0q+ohYI+rtC3yhP9+fP2sh3GX+oOmt+t143sIoa6xCpoyjzBDvsfYtqUhAW2TF6IQLUASR+JbokwNuA1dh5ePmpFDeNAoz/GyMfqiJn59hYrB4f3UGeOQdanBXEuppD7LM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770078118; c=relaxed/simple;
	bh=yl42pVmd/Pi0ztQ54DneU35smjr2f4vAu8DEetdqRuY=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=bwkOAhfEcD7aI3ZQ/SbVcygnsOOCOTTzCPWUTTJDjaVjf8tbVXSKTP8R1x42PQAtTbu+H8KVEsEHOsGaaTztrh/kZnFgtQbpM03hqpsXSqj1Bp7f9LTpN3q+q93eRd7wz9yp93o54uXThS1ugba5QBxxm0+sBUwqefT63WeBv0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=FJ6tOz39; arc=none smtp.client-ip=91.218.175.188
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1770078104;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=+2XTSPZI0r7r0xxXuEFfDuh4AMy4Nmaw4oOpOLhAvXI=;
	b=FJ6tOz39ef3x9lh948TOCFUoh+KaPWT5sVuHy7f6TNRN961P6OhIhTYx8BzBhwsRkuCnIk
	7ZX4HfvTe1DCCbScLcc5RJgoTVjeyK+cLEbgABoOu2v2hblyR4dfOFPbvuwTb1AuLaSmVc
	G8bsfPUu8zZv8/2dra5Tpp53PzK7PvE=
From: Sean Anderson <sean.anderson@linux.dev>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Vinod Koul <vkoul@kernel.org>,
	linux-phy@lists.infradead.org
Cc: =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Radhey Shyam Pandey <radhey.shyam.pandey@amd.com>,
	linux-kernel@vger.kernel.org,
	Michal Simek <michal.simek@amd.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-pci@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Thippeswamy Havalige <thippeswamy.havalige@amd.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Sean Anderson <sean.anderson@linux.dev>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 0/8] phy: zynqmp: Perform complete initialization, including ILL calibration
Date: Mon,  2 Feb 2026 19:21:20 -0500
Message-Id: <20260203002128.935842-1-sean.anderson@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linux.dev,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[linux.dev:s=key1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261972-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sean.anderson@linux.dev,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linux.dev:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:mid,linux.dev:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 077ABD2F43
X-Rspamd-Action: no action

This series completely initializes the GTRs in Linux, making all
bootloader initialization (as performed by init_serdes() in
psu_init_gpl.c) optional. This gives the following advantages:

- On some boards (mine) the reference clocks may not be configured in
  SPL/FSBL. So ILL calibration will fail (and take a long time to do so)
  unless we defer initialization to U-Boot/Linux where the phy driver
  can request the clocks.
- If PCIe/SATA are not used in U-Boot, ILL calibration can be deferred
  until Linux when it can be done it parallel with other initialization.
- We will have flexibility to switch between different configurations at
  runtime. For example, this could allow supporting both SATA and PCIe M.2
  cards with [1].

I have tested this series with DP, PCIe, SGMII, and SATA. USB3 is broken
on my dev board at the moment (independent of this series; need to
investigate) so I have not tested that. I have an equivalent set of
patches for U-Boot that I will try to post soon.

[1] https://lore.kernel.org/linux-pci/20260107-pci-m2-v5-0-8173d8a72641@oss.qualcomm.com/


Sean Anderson (8):
  dt-bindings: pci: xilinx-nwl: Add resets
  phy: zynqmp: Refactor bus width configuration into helper
  phy: zynqmp: Refactor common phy initialization into a helper
  phy: zynqmp: Calibrate ILL if necessary
  phy: zynqmp: Initialize chicken bits
  PCI: xilinx-nwl: Split phy_init from phy_power_on
  PCI: xilinx-nwl: Reset the core during probe
  arm64: zynqmp: Add PCIe resets

 .../bindings/pci/xlnx,nwl-pcie.yaml           |  17 +
 arch/arm64/boot/dts/xilinx/zynqmp.dtsi        |   4 +
 drivers/pci/controller/pcie-xilinx-nwl.c      | 255 +++++++--
 drivers/phy/xilinx/phy-zynqmp.c               | 487 +++++++++++++++++-
 4 files changed, 713 insertions(+), 50 deletions(-)

-- 
2.35.1.1320.gc452695387.dirty


