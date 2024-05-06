Return-Path: <devicetree+bounces-65230-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 12C438BD242
	for <lists+devicetree@lfdr.de>; Mon,  6 May 2024 18:15:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9F8421F2386D
	for <lists+devicetree@lfdr.de>; Mon,  6 May 2024 16:15:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FE1C156669;
	Mon,  6 May 2024 16:15:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="Up/vr0Ji"
X-Original-To: devicetree@vger.kernel.org
Received: from out-172.mta0.migadu.com (out-172.mta0.migadu.com [91.218.175.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C02B7156226
	for <devicetree@vger.kernel.org>; Mon,  6 May 2024 16:15:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715012129; cv=none; b=erhaLyRVOODoQOeteeW+PaQqRJay8/leUbE8AcPH2ozJHOxayxZfFw7qwENw1O7CwP6xBqdCqU3MAOe8gekA3uv2/ag0PsF9DPzCjy0IuVNrJC644ApAceGBv75O2hzSuptLSFxhUGChBnJvW1g1LvBhB+TO325ffFhDT6cvUFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715012129; c=relaxed/simple;
	bh=x4StvqT0G3jsb6RA7+Xmo22DkQ5abGAlNLPCmO3T64w=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=Yz5+HrGdJ9N8UUaYIURHXzG2yu6ehrXxupkxhN3ZA5TROYLIixjm4OnJx1dNIDtRBXQgAnsbM68rcgV8zc20LJwdd3i7iDSKKadlRW8u3Vn6v1TZOQCentYB+1Us6UFZ0OKrj0qS7eErxIPhlrQUlS+/0rhcdhSmEOLFIseXaqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=Up/vr0Ji; arc=none smtp.client-ip=91.218.175.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1715012125;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Zk6JjhRnqU1NmKpybqytM3aM2SwJvKpKlin+sUn82HA=;
	b=Up/vr0JixRmFIaovyg3Kko/RsHgpjL0Xkk5vad4WFpKB55SqetiqHyaNfrINBGWK2Z0DYE
	AfFEtTmetJEvY27yDAmEvw+MGyZmg/1uoztvJzFUuYtfBmz7ZvkM/8W6O+AD62h+4BFSqS
	KAgzrJpPyyhhSizzVLpey17ApSvBAeY=
From: Sean Anderson <sean.anderson@linux.dev>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	linux-pci@vger.kernel.org
Cc: Michal Simek <michal.simek@amd.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Thippeswamy Havalige <thippeswamy.havalige@amd.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Sean Anderson <sean.anderson@linux.dev>,
	Bharat Kumar Gogada <bharat.kumar.gogada@xilinx.com>,
	Bharat Kumar Gogada <bharatku@xilinx.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Michal Simek <michal.simek@xilinx.com>,
	devicetree@vger.kernel.org
Subject: [PATCH v2 0/7] PCI: xilinx-nwl: Add phy support
Date: Mon,  6 May 2024 12:15:03 -0400
Message-Id: <20240506161510.2841755-1-sean.anderson@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

Add phy subsystem support for the xilinx-nwl PCIe controller. This
series also includes several small fixes and improvements.

Changes in v2:
- Remove phy-names
- Add an example
- Get phys by index and not by name

Sean Anderson (7):
  dt-bindings: pci: xilinx-nwl: Add phys
  PCI: xilinx-nwl: Fix off-by-one
  PCI: xilinx-nwl: Fix register misspelling
  PCI: xilinx-nwl: Rate-limit misc interrupt messages
  PCI: xilinx-nwl: Clean up clock on probe failure/removal
  PCI: xilinx-nwl: Add phy support
  arm64: zynqmp: Add PCIe phys

 .../bindings/pci/xlnx,nwl-pcie.yaml           |   6 +
 .../boot/dts/xilinx/zynqmp-zcu102-revA.dts    |   1 +
 drivers/pci/controller/pcie-xilinx-nwl.c      | 122 ++++++++++++++----
 3 files changed, 106 insertions(+), 23 deletions(-)

-- 
2.35.1.1320.gc452695387.dirty


