Return-Path: <devicetree+bounces-243297-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F67C968F0
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 11:06:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E52223A102B
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 10:06:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F4FA2FDC4B;
	Mon,  1 Dec 2025 10:06:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m155101.qiye.163.com (mail-m155101.qiye.163.com [101.71.155.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 950F01DF27F;
	Mon,  1 Dec 2025 10:06:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=101.71.155.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764583580; cv=none; b=O2jiVs3t1wlJmqb+nVbCi1o2B6DYNsomAjaxsA66qvCatbYq4Y8cG3hb5ygQRDt+kKzDc1Fw6dTYsPLReUznQ2XOG0vmPBwemjKQ4aQvGXIoCDiFoM8qejBbkjXhvyH3tXMZYzptlZdT7HQ/VA1hRJe7s3fRcJER+MR36r443xY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764583580; c=relaxed/simple;
	bh=dCHX6QTYjuDWBE4U+oVIeORcaIYWc+5NeJzw+YVw5zo=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=AcJiA2Ytg9xdzb2ZFEI3RpA3OYq0KvFBQ7gg4dztJItzBND9xtSw9Idydrgcj8U+Hk8dCo/dYLkeUjH5H1VY0ABS3T0SnF6BH0T/MhP/Ye0W1n8azGdxw6RuHd2OfGgNtTckJikc45gj2ZzSLHeB6l8aXSiIFpSUSe3GSSdmTXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=101.71.155.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from localhost.localdomain (unknown [119.122.215.79])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2b846f22b;
	Mon, 1 Dec 2025 18:01:05 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 0/4] arm64: dts: rockchip: Add H28K and M28K
Date: Mon,  1 Dec 2025 18:00:04 +0800
Message-Id: <20251201100008.206524-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9ad95bd53203a2kunm919d19c13679d8
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCGhpOVh1DTE5KHRgZTE5JGVYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSkJVSklJVUlKTlVMQllXWRYaDxIVHRRZQVlPS0hVSktISk5MTlVKS0tVSk
	JLS1kG

Both the HINLINK H28K and MangoPi M28K are development boards based
on the Rockchip RK3528 SoC, and their configurations are similar.

The U-Boot patch will be sent after the kernel device tree is merged.

There is a version that SeeedStudio distributes called LinkStar-H28K.
It's no different from the HINLINK H28K. The schematic can be found here:

https://www.hinlink.cn/wp-content/uploads/2024/03/20240428015024130824.pdf
https://files.seeedstudio.com/wiki/H28K/Open_source/H28K-SCH.zip

Information about the MangoPi M28K is here: https://widora.cn/m28k

MangoPi also has a version called "M28K Pro", which replaces the
RTL8111H with the RTL8125B.

Chukun Pan (4):
  dt-bindings: arm: rockchip: Add HINLINK H28K
  arm64: dts: rockchip: Add HINLINK H28K
  dt-bindings: arm: rockchip: Add MangoPi M28K
  arm64: dts: rockchip: Add MangoPi M28K

 .../devicetree/bindings/arm/rockchip.yaml     |  10 +
 arch/arm64/boot/dts/rockchip/Makefile         |   2 +
 .../boot/dts/rockchip/rk3528-hinlink-h28k.dts | 301 ++++++++++++++
 .../boot/dts/rockchip/rk3528-mangopi-m28k.dts | 381 ++++++++++++++++++
 4 files changed, 694 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3528-hinlink-h28k.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3528-mangopi-m28k.dts

-- 
2.25.1


