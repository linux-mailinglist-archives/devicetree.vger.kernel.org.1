Return-Path: <devicetree+bounces-96723-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BFBF95F3E1
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2024 16:29:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A7DBB1C21AF2
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2024 14:29:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30D2E1917DB;
	Mon, 26 Aug 2024 14:29:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b="gzoPPy/s"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-226.siemens.flowmailer.net (mta-64-226.siemens.flowmailer.net [185.136.64.226])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DE5518BBA3
	for <devicetree@vger.kernel.org>; Mon, 26 Aug 2024 14:29:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.64.226
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724682553; cv=none; b=o6XnGn3weqQhhhPFSdC+gndHpAoBUYAq2prH0NdKSIuHsFrx2mMnN7h06xvdt2V94tA5UxAKdnG8hBp71wGfbQRmKY8txw6g5ld5FX6RiD3GH65PsSOAWfo4zKI4iOZvGfiB/J8TdZV86QnO5KSKl41h9JB9yg0fmyAITJ+iYIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724682553; c=relaxed/simple;
	bh=5/X9NuHLDKjzqfIadX8X72Geg7Um5NYptrZjQPrFTa8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=XgY4aywrY6URRypUV3wNX9JV7ia8NQb1jmGpB8+B0OQVaQQm5d713BUYJhlVNO4uh7zyLlT9vQsVm8Fq+/czNDWKrP5RGbzDYdMlMxrQTd1JZceRu9x5b+JFfq17+/s0Qm3MJM0S7jbQcGq3E5v+X/TrbBgg8Cf+UFOqZEalq4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b=gzoPPy/s; arc=none smtp.client-ip=185.136.64.226
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-226.siemens.flowmailer.net with ESMTPSA id 2024082614290184694159b493dca944
        for <devicetree@vger.kernel.org>;
        Mon, 26 Aug 2024 16:29:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=jan.kiszka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=pu5+lmk2w/MjDyzllxTFAT0dhfjf9jzaQq4l1txj8Z0=;
 b=gzoPPy/sr6aQAStbWm1oKH4NvauW8TOUDABXPsjZwUfwW+v0VJbl9EFaBhB+Ya6gmX6oYn
 eiwuKG+CXl2n5zn61sbHNHJZBPCV/EVf626iRwLIMhmhjVDtfV0KUhBe1nZjkpV3TAQLE+PI
 cz3F7Py+CXXcSIm85KvFb4b1q+IBVeaRF/Dp8OqfsO4OcFM5tM9xhllj8f/diAbSirFRxMS2
 fKLIauL3BjLEbqpmmOp8AvjaHXrSIXsv+YLnqy0O3DEZR93MggTNUVbr3O5BzIo2V2GtGci0
 Q1lSoG8hrwdl2XKN49OkErSeNDTZZctV5WFPX35myaKhx69WKBIjKUig==;
From: Jan Kiszka <jan.kiszka@siemens.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Bao Cheng Su <baocheng.su@siemens.com>,
	Hua Qian Li <huaqian.li@siemens.com>
Subject: [PATCH 0/2] arm64: dts: iot2050: Fix R5 lock-step settings, add overlays
Date: Mon, 26 Aug 2024 16:28:57 +0200
Message-ID: <cover.1724682539.git.jan.kiszka@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-294854:519-21489:flowmailer

Trying to get our backlog closer to zero. See patches for details.

Jan

Jan Kiszka (1):
  arm64: dts: ti: iot2050: Add overlays for M.2 used by firmware

Li Hua Qian (1):
  arm64: dts: ti: iot2050: Disable lock-step for all iot2050 boards

 arch/arm64/boot/dts/ti/Makefile               |  2 +
 .../dts/ti/k3-am65-iot2050-common-pg2.dtsi    |  5 --
 .../boot/dts/ti/k3-am65-iot2050-common.dtsi   |  5 ++
 .../boot/dts/ti/k3-am6528-iot2050-basic.dts   |  5 --
 ...48-iot2050-advanced-m2-bkey-ekey-pcie.dtso | 27 +++++++++++
 ...-am6548-iot2050-advanced-m2-bkey-usb3.dtso | 47 +++++++++++++++++++
 6 files changed, 81 insertions(+), 10 deletions(-)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-m2-bkey-ekey-pcie.dtso
 create mode 100644 arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-m2-bkey-usb3.dtso

-- 
2.43.0


