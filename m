Return-Path: <devicetree+bounces-17925-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E2B0A7F4738
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 13:57:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9DE8B2810C1
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 12:57:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C1E84C626;
	Wed, 22 Nov 2023 12:57:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lexina.in header.i=@lexina.in header.b="fetTjSdd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx.msync.work (mx.msync.work [62.182.159.68])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36DFAD4F;
	Wed, 22 Nov 2023 04:56:56 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 99D4153ED3;
	Wed, 22 Nov 2023 12:56:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lexina.in; s=dkim;
	t=1700657813; h=from:subject:date:message-id:to:mime-version:
	 content-transfer-encoding; bh=NJqnHAtPlKbGsmXwWt6Mzhb01vRIrHrGSJJ9KKN9CCc=;
	b=fetTjSddAWPcFfjStVgAKIIqceJ4c6B6mXFlCugrJlyGmrjsGOelHSc2y2oEnfWrgWJKz3
	NLFhStEMpLN0We0NMEWCrw2XkTJuyLOrmS8/0tUUCuFcqrKBwcWwKv9POQb+TmpuVCWymO
	SWf4kPm41WaAKEoDHAdZk1ZV4xhIfhrSCru/2U0sUM7ya8y7GaGelOt6CeaM41USx/TqMa
	jv6fXyLf+ndyTD24zb6E1F84eJshhYiX1TdTE2ujLP+2ONiFTrsLx4gkzqF9SlO66JPc9D
	8PuRzxhSfBE2p/T+7++iiRHrV6u2FnK7wTJbhD6/y6F0BMn87uy0Ze5DmqQDDA==
From: Viacheslav Bocharov <adeep@lexina.in>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Kevin Hilman <khilman@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	linux-amlogic@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 0/5] soc: amlogic: add new meson-gx-socinfo-sm driver
Date: Wed, 22 Nov 2023 15:56:38 +0300
Message-Id: <20231122125643.1717160-1-adeep@lexina.in>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1267; h=from:subject; bh=DcgIzLHIf256LOHM599wpJilJoTBV1o/3eeRP7SNgIc=; b=owGbwMvMwCHmnhFhrJcZuJTxtFoSQ2rstyOOs3z8P159rJUk2rqkoqfX9FXs5NANbz6c3bD/8vfk R2/fdZSyMIhxMMiKKbKEdQRN3eex+uLEBUYHYOawMoEMYeDiFICJPM1n+KfjHLLE+OoKdqc4v9s8T4 zMIlxC8/07525l3F9pqiR4/CnD/zAjyWnzdLtDZbPTbiWKOO3Y1bQsvmmpcnZK0TN7uTnr2AE=
X-Developer-Key: i=adeep@lexina.in; a=openpgp; fpr=E2FA1A767ACB0716E02E3E7AEE36B110025A8DFA
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

The Amlogic Meson SoC Secure Monitor implements a call to retrieve an
unique SoC ID starting from the GX Family and all new families.
But GX-family chips (e.g. GXB, GXL and newer) supports also 128-bit
chip ID. 128-bit chip ID consists 32-bit SoC version and 96-bit OTP data.

This is the second attempt to publish data from the Amlogic secure monitor
chipid call. After discussions with Neil Armstrong, it was decided to
publish the chipid call results through the soc driver. Since
soc_device_match cannot wait for the soc driver to load, and the secure
monitor calls in turn depend on the sm driver, it was necessary to create
a new driver rather than expand an existing one.

In the patches, in addition to writing the driver:
- convert commonly used structures and functions of the meson-gx-socinfo
driver to a header file.
- transfer the chipid sm call constants to a header file (perhaps they
need renaming?).
- add secure-monitor references for amlogic,meson-gx-ao-secure sections
in dts files of the a1, axg, g12, gx families.

Viacheslav Bocharov (5):
  soc: amlogic: meson-gx-socinfo: move common code to header file
  soc: amlogic: meson-gx-socinfo: move common code to exported function
  firmware: meson_sm: move common definitions to header file
  soc: amlogic: Add Amlogic secure-monitor SoC Information driver
  arm64: dts: meson: add dts links to secure-monitor for soc driver in
    a1, axg, gx, g12

 arch/arm64/boot/dts/amlogic/meson-a1.dtsi     |   1 +
 arch/arm64/boot/dts/amlogic/meson-axg.dtsi    |   1 +
 .../boot/dts/amlogic/meson-g12-common.dtsi    |   1 +
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi     |   1 +
 drivers/firmware/meson/meson_sm.c             |   4 -
 drivers/soc/amlogic/Kconfig                   |  10 +
 drivers/soc/amlogic/Makefile                  |   1 +
 .../soc/amlogic/meson-gx-socinfo-internal.h   | 102 ++++++++++
 drivers/soc/amlogic/meson-gx-socinfo-sm.c     | 178 ++++++++++++++++++
 drivers/soc/amlogic/meson-gx-socinfo.c        | 106 ++---------
 include/linux/firmware/meson/meson_sm.h       |   4 +
 11 files changed, 317 insertions(+), 92 deletions(-)
 create mode 100644 drivers/soc/amlogic/meson-gx-socinfo-internal.h
 create mode 100644 drivers/soc/amlogic/meson-gx-socinfo-sm.c

-- 
2.34.1


