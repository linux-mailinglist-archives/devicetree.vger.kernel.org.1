Return-Path: <devicetree+bounces-139152-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F93A144E3
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 23:56:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 30CD4169305
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 22:56:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53B34242273;
	Thu, 16 Jan 2025 22:55:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="XIkYNUOn"
X-Original-To: devicetree@vger.kernel.org
Received: from out-188.mta0.migadu.com (out-188.mta0.migadu.com [91.218.175.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 780E7241A1D
	for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 22:55:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.188
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737068146; cv=none; b=h2/J3nlqrbZlXeV9N+k0JsNvfwEoVNVYMbFTMdsgB8sP9lbYgDcj9t+HecQLI5PRnAX/UVal6VqQ+atDQFiKXc5anzqiqpke+aY0B30Zh2Vojd2KshED988oa1CuxGnhIAoU671ATvJKUaJ9bbGLFUKttfOQ0GsJsabTSCpU3FE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737068146; c=relaxed/simple;
	bh=3SrMr/Jpx8XG9K5YUVmcBrgmtmKZBWkBlblLo/AdIhc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=PnDjAcHGDfqT5UVz7STLA0pSA58S2P4CYp6EQAD8F6/rxfFtPKgLV8BZv27/g4ucp7fq8q8/jp6GmYffVIYzLeW98DIjnOLRHQV+pCmSifTSHLwbyE4LVZJ1Nwwm8W6M3S3FXd54HfMKDCAzm2B3I35M3NgfdhBcTyMnJeSE1n8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=XIkYNUOn; arc=none smtp.client-ip=91.218.175.188
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1737068127;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=HpB5lB6azzxlrJkYukifNhmmPqI9KsgkZ1X5toy37xk=;
	b=XIkYNUOnuOMNraYswo1GWPm8iADUy2F3zZ3ceaUdiQFQiTUudbzNs78J2Qnx3AbJneWydC
	wQcHTwdtvO36b+cXEwGNCXu3UMTtvD6SSrqkCEAnYQjzvGrmh2Hbfs8SpFeExTraRmlaXX
	I99lNcLrzt3vJjIDZbK6EdCv9Ze8kSg=
From: Sean Anderson <sean.anderson@linux.dev>
To: Mark Brown <broonie@kernel.org>,
	Michal Simek <michal.simek@amd.com>,
	linux-spi@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	Jinjie Ruan <ruanjinjie@huawei.com>,
	linux-arm-kernel@lists.infradead.org,
	Amit Kumar Mahapatra <amit.kumar-mahapatra@amd.com>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Sean Anderson <sean.anderson@linux.dev>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 0/5] spi: zynqmp-gqspi: Improve error recovery by resetting
Date: Thu, 16 Jan 2025 17:55:16 -0500
Message-Id: <20250116225521.2688224-1-sean.anderson@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

This series adds support for resetting the QSPI controller if we have a
timeout. I find this greatly improves the stability of the device, which
would tend to break after any timeout.


Sean Anderson (5):
  dt-bindings: spi: zynqmp-qspi: Add reset
  spi: zynqmp-gqspi: Reset device in probe
  spi: zynqmp-gqspi: Abort operations on timeout
  spi: zynqmp-gqspi: Allow interrupting operations
  ARM64: xilinx: zynqmp: Add QSPI reset

 .../bindings/spi/spi-zynqmp-qspi.yaml         |  6 ++
 arch/arm64/boot/dts/xilinx/zynqmp.dtsi        |  1 +
 drivers/spi/spi-zynqmp-gqspi.c                | 64 +++++++++++++++----
 3 files changed, 59 insertions(+), 12 deletions(-)

-- 
2.35.1.1320.gc452695387.dirty


