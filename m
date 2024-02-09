Return-Path: <devicetree+bounces-40051-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E119384F0D8
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 08:34:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1F63D1C216A3
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 07:34:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B19F657CA;
	Fri,  9 Feb 2024 07:33:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b="OFk6vg/b"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-65-228.siemens.flowmailer.net (mta-65-228.siemens.flowmailer.net [185.136.65.228])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50FA665BBA
	for <devicetree@vger.kernel.org>; Fri,  9 Feb 2024 07:33:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.65.228
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707464022; cv=none; b=TcsSw1MdIbz9X0wxJ3ZNq+QfkkJfuizNttDDly4vFsR8SuaXDYjGMc6r3CdLh37kgWcHb10oViIBmkSHQyg1vObHgRI4RIsFN9a1+Jm+8X0tc++3XG6LZJXLsoGHCooQDuB0lX8RTe+LEWJDCj99EF5EbsXJginiwe4NMho40Io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707464022; c=relaxed/simple;
	bh=LZnhRecmWjEEyuhkw2UEePxVcIJYubz4dwo2XU9EvnQ=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=dLOobSKQFNm9x0smKJ9UBoPcKxj6eyWdJpd714IB+pvPjVsEWgGNPLWH13IYAinxwyMToH6fV5xx/1X8Yye3SbS6qQ8rXEsIg0ptT48T1c28CzHVhMITK7nd+/QdJAT5TkVGUaen0fUB6p/mL0DdLgpRE8Xf5oAbBKVV92BHX3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (1024-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b=OFk6vg/b; arc=none smtp.client-ip=185.136.65.228
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-65-228.siemens.flowmailer.net with ESMTPSA id 2024020907232274d1005c50abfe1a47
        for <devicetree@vger.kernel.org>;
        Fri, 09 Feb 2024 08:23:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=jan.kiszka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=swzmFknxPpbMNSXu2CcioHwcS14EtTfEqDfVF30rdzY=;
 b=OFk6vg/bc9luc1S2UXUwaNO/cADhXKSo5B6lqEzAtLKFtf/jR/FLOKmgrMc+GYxDBgurPu
 TMiIdq2BxZcBgX8pl9bY1MzByySMApC8ZH7IThjmjb5R9nFmP9+9GOZfrbaJ8OoZ2qv73+DJ
 UCBp9hxTDWEzsdnQUIfrvY/Z0UmDk=;
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
	Bao Cheng Su <baocheng.su@siemens.com>
Subject: [PATCH v3 0/7] arm64: dts: iot2050: Add support for new SM variant
Date: Fri,  9 Feb 2024 08:23:14 +0100
Message-Id: <cover.1707463401.git.jan.kiszka@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-294854:519-21489:flowmailer

Changes in v3:
 - rebased

Changes in v2:
 - LED improvements
 - factor out DP and USB3 dtsi files
 - fix subject of last patch

This bring support for yet another IOT2050 device variant, see last
patch for details. The rest is binding and refactoring to make that
happen. Plus, LED nodes are improved by adding function and color
properties.

Jan

Baocheng Su (2):
  arm64: dts: ti: iot2050: Disable R5 lockstep for all PG2 boards
  arm64: dts: ti: iot2050: Support IOT2050-SM variant

Jan Kiszka (4):
  arm64: dts: ti: iot2050: Factor out arduino connector bits
  arm64: dts: ti: iot2050: Factor out enabling of USB3 support
  arm64: dts: ti: iot2050: Factor out DP related bits
  arm64: dts: ti: iot2050: Annotate LED nodes

Su Bao Cheng (1):
  dt-bindings: arm: ti: Add binding for Siemens IOT2050 SM variant

 .../devicetree/bindings/arm/ti/k3.yaml        |   1 +
 arch/arm64/boot/dts/ti/Makefile               |   1 +
 .../ti/k3-am65-iot2050-arduino-connector.dtsi | 768 +++++++++++++++
 .../dts/ti/k3-am65-iot2050-common-pg1.dtsi    |   5 +-
 .../dts/ti/k3-am65-iot2050-common-pg2.dtsi    |  25 +-
 .../boot/dts/ti/k3-am65-iot2050-common.dtsi   | 871 +-----------------
 .../arm64/boot/dts/ti/k3-am65-iot2050-dp.dtsi |  98 ++
 .../boot/dts/ti/k3-am65-iot2050-usb3.dtsi     |  27 +
 .../ti/k3-am6528-iot2050-basic-common.dtsi    |   6 +-
 .../dts/ti/k3-am6528-iot2050-basic-pg2.dts    |   2 +
 .../boot/dts/ti/k3-am6528-iot2050-basic.dts   |   5 +
 .../dts/ti/k3-am6548-iot2050-advanced-m2.dts  |  20 +-
 .../dts/ti/k3-am6548-iot2050-advanced-pg2.dts |  10 +-
 .../dts/ti/k3-am6548-iot2050-advanced-sm.dts  | 189 ++++
 .../dts/ti/k3-am6548-iot2050-advanced.dts     |   1 +
 15 files changed, 1132 insertions(+), 897 deletions(-)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am65-iot2050-arduino-connector.dtsi
 create mode 100644 arch/arm64/boot/dts/ti/k3-am65-iot2050-dp.dtsi
 create mode 100644 arch/arm64/boot/dts/ti/k3-am65-iot2050-usb3.dtsi
 create mode 100644 arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-sm.dts

-- 
2.35.3


