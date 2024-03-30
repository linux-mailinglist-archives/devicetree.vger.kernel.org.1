Return-Path: <devicetree+bounces-54756-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 794B48928C4
	for <lists+devicetree@lfdr.de>; Sat, 30 Mar 2024 02:33:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2E0201F226DE
	for <lists+devicetree@lfdr.de>; Sat, 30 Mar 2024 01:33:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C8111860;
	Sat, 30 Mar 2024 01:33:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72BD515C9
	for <devicetree@vger.kernel.org>; Sat, 30 Mar 2024 01:33:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711762383; cv=none; b=nZtcQ317MCb0jMw/5Cnr+syEEFyQzhfLanlaBMHgmbE7eGeV+4qq2zFB1Y/QwaiCetlV6Aqq+V08plf+5dCZGx1R5cDvevcMMUzVjDzGnWeaxYPnEfZW/T5hHYwsjLOKZYdduFJXy2Ndt484Jet++VNey5VsrY27sly9bvpy2yE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711762383; c=relaxed/simple;
	bh=ekNwagqEyCufCNtUolTlbriGRcBAFkOw5ZW+vUHM44s=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Mj+dQNCiP5ezPNkBoFW+DifMnFJ/81nKzQ7DFvktJHECoKxJnNT06tGIC/LPnGFRENOEXYGdqtt7n65bqt3eN16aD0e7or3NCezXeDlQsg6oVsbgeKX0Ly/mKOSZ6+QH987Pca27FAwyyucRYRVzuP/B/YecAXks7hAyWSaVvBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CB135FEC;
	Fri, 29 Mar 2024 18:33:30 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7B5C83F64C;
	Fri, 29 Mar 2024 18:32:56 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Chen-Yu Tsai <wens@csie.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>
Cc: devicetree@vger.kernel.org,
	linux-sunxi@lists.linux.dev
Subject: [PATCH 0/2] arm64: dts: allwinner: Add Tanix TX1 support
Date: Sat, 30 Mar 2024 01:32:41 +0000
Message-Id: <20240330013243.17943-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.35.8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Tanix TX1 is a tiny TV box (60% of a credit card) with an Allwinner
H313 SoC. This seems to be the same as the H616, just the "bad bin"
version, limited to 1.3 GHz.
The box has no Ethernet or SD card slot, which makes booting from it
somewhat interesting: Pressing the hidden FEL button and using a USB-A
to USB-A cable to upload code from a host PC is one way to run mainline.
The box features a minimal set of peripherals: one USB port, 8 or 16GB
of eMMC, an HDMI port and an (unsupported) SCI S9082H WiFi chip.

Patch 1 adds the DT binding for the board compatible, I refrained from
using the H313 name here, since it seems to be functionally identical to
the H616.
Patch 2 adds the devicetree.

There is a blue and a red LED, both connected to the same GPIO pin, but
with different polarities, so it's only either one of them enabled.
I did not find a way to describe this in DT, so I omitted the red LED.

Please have a look!

Cheers,
Andre

Andre Przywara (2):
  dt-bindings: arm: sunxi: document Tanix TX1 name
  arm64: dts: allwinner: Add Tanix TX1 support

 .../devicetree/bindings/arm/sunxi.yaml        |   5 +
 arch/arm64/boot/dts/allwinner/Makefile        |   1 +
 .../dts/allwinner/sun50i-h313-tanix-tx1.dts   | 184 ++++++++++++++++++
 3 files changed, 190 insertions(+)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h313-tanix-tx1.dts

-- 
2.35.8


