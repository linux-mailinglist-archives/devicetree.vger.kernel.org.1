Return-Path: <devicetree+bounces-12470-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C8C17D9A0B
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 15:36:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3A7951F2328D
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 13:36:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45EC51F171;
	Fri, 27 Oct 2023 13:35:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b="PrUtF3O3"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4126618031
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 13:35:55 +0000 (UTC)
X-Greylist: delayed 62 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 27 Oct 2023 06:35:44 PDT
Received: from mta-65-225.siemens.flowmailer.net (mta-65-225.siemens.flowmailer.net [185.136.65.225])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3D7B10F3
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 06:35:44 -0700 (PDT)
Received: by mta-65-225.siemens.flowmailer.net with ESMTPSA id 20231027133439c1eefdc3360630374a
        for <devicetree@vger.kernel.org>;
        Fri, 27 Oct 2023 15:34:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=jan.kiszka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=YkPFdNGNdT5cVutTk9C1dmnrIFJ2F0FJa9j2a+FDVEk=;
 b=PrUtF3O3pZebpkjzl+XyyjbTcEHL8Qo8ETtlcSJ5I4VboRekrm1B6cWzm+/BhRO5Cq31c+
 MQOsEEvzod1Co0bbnb/fByFl7dmKCdmhGSZaMM1b440qTDxmqErqUX2mY+Ry85qwpfZHYDbX
 5ICrzlQ+8Twh8iY6Bag02l8cmqpC8=;
From: Jan Kiszka <jan.kiszka@siemens.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Bao Cheng Su <baocheng.su@siemens.com>,
	Benedikt Niedermayr <benedikt.niedermayr@siemens.com>
Subject: [PATCH 0/7] arm64: dts: iot2050: DT fixes, cleanups and enhancements
Date: Fri, 27 Oct 2023 15:34:31 +0200
Message-Id: <cover.1698413678.git.jan.kiszka@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-294854:519-21489:flowmailer

This fixes the lost aliases for the IOT2050 series, fixes mini PCIe card
hangs,, drops an unused device node, brings runtime pinmuxing for the
Arduino connector via debugfs as well as spidev. Finally, it enables
PRU-based Ethernet on PG2/M.2 device variants (depends on [1]). PG1
devices still need changes to the TI driver to enable them as well.

Jan

[1] https://lore.kernel.org/lkml/35a3c4c9-5c1b-4891-9ea2-e3f648a9afe0@ti.com/

Benedikt Niedermayr (1):
  arm64: dts: ti: iot2050: Definitions for runtime pinmuxing

Jan Kiszka (5):
  arm64: dts: ti: iot2050: Re-add aliases
  arm64: dts: ti: iot2050: Drop unused ecap0 PWM
  dt-bindings: trivial-devices: Add IOT2050 Arduino SPI connector
  arm64: dts: ti: iot2050: Add node for SPI devices on Arduino connector
  arm64: dts: ti: iot2050: Add icssg-prueth nodes for PG2 devices

Su Bao Cheng (1):
  arm64: dts: ti: iot2050: Refactor the m.2 and minipcie power pin

 .../devicetree/bindings/trivial-devices.yaml  |   2 +
 .../dts/ti/k3-am65-iot2050-common-pg1.dtsi    |  10 +-
 .../dts/ti/k3-am65-iot2050-common-pg2.dtsi    |   4 +-
 .../boot/dts/ti/k3-am65-iot2050-common.dtsi   | 834 +++++++++++++++++-
 .../dts/ti/k3-am6548-iot2050-advanced-m2.dts  |  12 +-
 5 files changed, 802 insertions(+), 60 deletions(-)

-- 
2.35.3


