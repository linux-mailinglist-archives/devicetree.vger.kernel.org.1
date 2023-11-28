Return-Path: <devicetree+bounces-19601-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F7D17FB6C9
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 11:10:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 805321C21361
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 10:10:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CB014D594;
	Tue, 28 Nov 2023 10:10:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="qQVazlqg"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 251CFDC;
	Tue, 28 Nov 2023 02:10:38 -0800 (PST)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3ASAAKD5023048;
	Tue, 28 Nov 2023 04:10:20 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701166220;
	bh=PSaEN37WFFK44HBQ6MZCI5hdRnxjsBvDaNZHNXtRAsA=;
	h=From:Subject:Date:To:CC;
	b=qQVazlqg0za79LH8fWx3sXaTnqPdolTGWDkNmeTY/CFROka82fMvF5YLuX0UztM4M
	 q46oKD9Xrpzh1M8J+cFE11IZMqbojbWg1Utgz9NLxoS3RSfhaC/hbjm8qzWP0l19cR
	 IDH33Rdcew7DNsojHJ5X1lf56BqUboiGtVb/CAYs=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3ASAAKcc017491
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 28 Nov 2023 04:10:20 -0600
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 28
 Nov 2023 04:10:20 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 28 Nov 2023 04:10:20 -0600
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3ASAAIQQ101158;
	Tue, 28 Nov 2023 04:10:19 -0600
From: Jai Luthra <j-luthra@ti.com>
Subject: [PATCH v3 0/9] arm64: dts: ti: Enable CSI cameras for AM62 family
Date: Tue, 28 Nov 2023 15:39:42 +0530
Message-ID: <20231128-csi_dts-v3-0-0bb11cfa9d43@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGa8ZWUC/02NzQ6CMBAGX4Xs2Rq2fwZPvocxpi1F9iCQtmk0h
 He3kIge58vO7AzRB/IRztUMwWeKNA4FxKEC15vh4Rm1hYHXXCCiZC7SvU2RqU4KYZwRWiso11P
 wHb220vVWuKeYxvDewhnX9dtQeyMjq1nTdE4JZblt/SXR0Y1PWAOZ/0unn8SLZMt35NhIo+0uL
 cvyAb6dft3QAAAA
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
        Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero
 Kristo <kristo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, Aradhya Bhatia <a-bhatia1@ti.com>,
        Devarsh
 Thakkar <devarsht@ti.com>,
        Vaishnav Achath <vaishnav.a@ti.com>,
        Julien Massot
	<julien.massot@collabora.com>,
        Martyn Welch <martyn.welch@collabora.com>,
        Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
        Jai Luthra
	<j-luthra@ti.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2497; i=j-luthra@ti.com;
 h=from:subject:message-id; bh=nPD36jMuOL/T6GPQM40W1N6XADR3g6DOTNeynb4QKeQ=;
 b=owEBbQKS/ZANAwAIAUPekfkkmnFFAcsmYgBlZbx9OzSNp+ikzFZHPour69oZrn12Z+K+fV2B7
 j+9REMsM1CJAjMEAAEIAB0WIQRN4NgY5dV16NRar8VD3pH5JJpxRQUCZWW8fQAKCRBD3pH5JJpx
 Rd/jEADHZNFvkxoIZqwE3/JdsUfqJuzgtx4gNgtKhPQql/QhriqOkKsN7U6gNxNJ7F3UuAXknuG
 fRn5eWqj7kYWvOQ+JWvg7xfCrpJKa7twPAJicIm4ogPps/iV+8tFT/skcLXcqdnsFdmxIm/196O
 yDshuEllFXPxE9tAEqZTA28RN7rv1D1qkLJliCtZEm/zQnGGferwrbF5u1uT5iDLeuKdLGnvt5Z
 9/reC4bR4lVRywZh2dLWW5oMfnmFn1d3mDU6X13a79067+8JUPs3B2irhODFXvsLQIpHqapbO/F
 7UAumL4OYoK8sbRMVof4O3RLtESyYfv6rmcJGJzXEB58J/LfGNTviOttScv0GMEc6g2vUTVMjfk
 fh0Fj3QbqIpjAb34rNgl77M8tM8TxBb9jhgG8e+fEKbD2easmb29Iwg1x7An0cMxKGfpmFo1wWW
 ekPKUmRibjXj2DuWaCv14cva48EhmoZivRqfOP/AX7d80bXYSXCtj5EohLRsda7I97ZWolBWcRf
 zmmEVF838nyaUE+TzofmOxH44ptqu3ZU1HuV8RMRMXiNsEze810JfJjG2lShgLtgUNlEAxVYs0q
 NMTVC2icpVOraww5h25LKPGLKSOLpbhH4q93Zzzr9rdOrVCWBKNDCNJ0GXAySgrSViY+HGJykmv
 XRD5dIQn5XqV2Jw==
X-Developer-Key: i=j-luthra@ti.com; a=openpgp;
 fpr=4DE0D818E5D575E8D45AAFC543DE91F9249A7145
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

This series enables CSI camera support on BeaglePlay, SK-AM62 and
SK-AM62A, now that the dt-bindings and driver support for CSI-RX related
IPs is merged in v6.7-rc1.

Along with the device tree nodes for CSI-RX, add new DT overlays for
different camera modules like RPiv2 (IMX219) or PCam5C (OV5640).

Signed-off-by: Jai Luthra <j-luthra@ti.com>
---
Changes in v3:
- Enable CSI-RX and DPHY nodes in the overlays instead of base DTBs for
  SK-AM62 and SK-AM62A
- Link to v2: https://lore.kernel.org/r/20231117-csi_dts-v2-0-bf4312194a6b@ti.com

Changes in v2:
- Follow Andrew's comments to avoid creating combined DTBs with overlays
  applied, instead adding them with "dtb- +=" to optionally test that
  they apply cleanly with OF_ALL_DTBS=y config.
- [New Patch] Cleanup existing combined DTBs to also do the same as above
- Pick Martyn's Tested-By tag for SK-AM62
- Link to v1: https://lore.kernel.org/r/20231115-csi_dts-v1-0-99fc535b2bde@ti.com

---
Jai Luthra (9):
      arm64: defconfig: Enable AM62 CSI2RX
      arm64: dts: ti: Enable CSI-RX on AM62
      arm64: dts: ti: Enable CSI-RX on AM62A
      arm64: dts: ti: k3-am625-beagleplay: Add overlays for OV5640
      arm64: dts: ti: k3-am62x-sk: Enable camera peripherals
      arm64: dts: ti: k3-am62x: Add overlays for OV5640
      arm64: dts: ti: k3-am62a7-sk: Enable camera peripherals
      arm64: dts: ti: k3-am62x: Add overlay for IMX219
      arm64: dts: ti: Use OF_ALL_DTBS for combined blobs

 arch/arm64/boot/dts/ti/Makefile                    | 60 ++++++++++---
 arch/arm64/boot/dts/ti/k3-am62-main.dtsi           | 62 ++++++++++++++
 .../dts/ti/k3-am625-beagleplay-csi2-ov5640.dtso    | 77 +++++++++++++++++
 .../ti/k3-am625-beagleplay-csi2-tevi-ov5640.dtso   | 77 +++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am62a-main.dtsi          | 99 ++++++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am62a7-sk.dts            | 27 ++++++
 arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi     |  7 ++
 .../arm64/boot/dts/ti/k3-am62x-sk-csi2-imx219.dtso | 84 ++++++++++++++++++
 .../arm64/boot/dts/ti/k3-am62x-sk-csi2-ov5640.dtso | 82 ++++++++++++++++++
 .../boot/dts/ti/k3-am62x-sk-csi2-tevi-ov5640.dtso  | 82 ++++++++++++++++++
 arch/arm64/configs/defconfig                       |  3 +
 11 files changed, 648 insertions(+), 12 deletions(-)
---
base-commit: b85ea95d086471afb4ad062012a4d73cd328fa86
change-id: 20231114-csi_dts-5f433aca3665

Best regards,
-- 
Jai Luthra <j-luthra@ti.com>


