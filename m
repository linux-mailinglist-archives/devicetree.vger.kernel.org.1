Return-Path: <devicetree+bounces-20561-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 25A278002CF
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 06:10:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CA5ED281380
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 05:10:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C011246A5;
	Fri,  1 Dec 2023 05:10:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="u46Rc+MX"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADC44A8;
	Thu, 30 Nov 2023 21:09:57 -0800 (PST)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3B159dgc046670;
	Thu, 30 Nov 2023 23:09:39 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701407379;
	bh=tfuXokGxdHkp/jVxEO6VgiOvnhCZbWpw1fyKZV7b8og=;
	h=From:To:CC:Subject:Date;
	b=u46Rc+MX5Jn8Hb6U1poSx9IxJv68A4rpmGFJ4vhNz+8ZJM77F1r7VyrjDZIC2Ky/r
	 PM+F1soZoPcIuD7HdLZwx6maEzW0CvX5/JB+ThrsDwLHqQS06jrYQp193A2ICHzwBO
	 IY+csPSqHKhM11QVsTR7u2kmRh545uDoQf3siNaY=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3B159d0C006632
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 30 Nov 2023 23:09:39 -0600
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 30
 Nov 2023 23:09:38 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 30 Nov 2023 23:09:38 -0600
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3B159cFs076088;
	Thu, 30 Nov 2023 23:09:38 -0600
From: Jai Luthra <j-luthra@ti.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
        Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero
 Kristo <kristo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>
CC: Jai Luthra <j-luthra@ti.com>, <linux-arm-kernel@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
        Aradhya Bhatia
	<a-bhatia1@ti.com>, Devarsh Thakkar <devarsht@ti.com>,
        Vaishnav Achath
	<vaishnav.a@ti.com>,
        Julien Massot <julien.massot@collabora.com>,
        Martyn
 Welch <martyn.welch@collabora.com>,
        Matthias Schiffer
	<matthias.schiffer@ew.tq-group.com>
Subject: [PATCH RESEND v3 0/9] arm64: dts: ti: Enable CSI cameras for AM62 family
Date: Fri, 1 Dec 2023 10:39:15 +0530
Message-ID: <20231201-csi_dts-v3-0-9f06f31080fe@ti.com>
X-Mailer: git-send-email 2.42.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.12.4
Content-Transfer-Encoding: quoted-printable
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

This series enables CSI camera support on BeaglePlay, SK-AM62 and=0D
SK-AM62A, now that the dt-bindings and driver support for CSI-RX related=0D
IPs is merged in v6.7-rc1.=0D
=0D
Along with the device tree nodes for CSI-RX, add new DT overlays for=0D
different camera modules like RPiv2 (IMX219) or PCam5C (OV5640).=0D
=0D
Signed-off-by: Jai Luthra <j-luthra@ti.com>=0D
---=0D
Changes in RESEND:=0D
- Add Andrew's missing R-by in [PATCH 4/9]=0D
Changes in v3:=0D
- Enable CSI-RX and DPHY nodes in the overlays instead of base DTBs for=0D
  SK-AM62 and SK-AM62A=0D
- Link to v2: https://lore.kernel.org/r/20231117-csi_dts-v2-0-bf4312194a6b@=
ti.com=0D
=0D
Changes in v2:=0D
- Follow Andrew's comments to avoid creating combined DTBs with overlays=0D
  applied, instead adding them with "dtb- +=3D" to optionally test that=0D
  they apply cleanly with OF_ALL_DTBS=3Dy config.=0D
- [New Patch] Cleanup existing combined DTBs to also do the same as above=0D
- Pick Martyn's Tested-By tag for SK-AM62=0D
- Link to v1: https://lore.kernel.org/r/20231115-csi_dts-v1-0-99fc535b2bde@=
ti.com=0D
=0D
---=0D
Jai Luthra (9):=0D
      arm64: defconfig: Enable AM62 CSI2RX=0D
      arm64: dts: ti: Enable CSI-RX on AM62=0D
      arm64: dts: ti: Enable CSI-RX on AM62A=0D
      arm64: dts: ti: k3-am625-beagleplay: Add overlays for OV5640=0D
      arm64: dts: ti: k3-am62x-sk: Enable camera peripherals=0D
      arm64: dts: ti: k3-am62x: Add overlays for OV5640=0D
      arm64: dts: ti: k3-am62a7-sk: Enable camera peripherals=0D
      arm64: dts: ti: k3-am62x: Add overlay for IMX219=0D
      arm64: dts: ti: Use OF_ALL_DTBS for combined blobs=0D
=0D
 arch/arm64/boot/dts/ti/Makefile                    | 60 ++++++++++---=0D
 arch/arm64/boot/dts/ti/k3-am62-main.dtsi           | 62 ++++++++++++++=0D
 .../dts/ti/k3-am625-beagleplay-csi2-ov5640.dtso    | 77 +++++++++++++++++=
=0D
 .../ti/k3-am625-beagleplay-csi2-tevi-ov5640.dtso   | 77 +++++++++++++++++=
=0D
 arch/arm64/boot/dts/ti/k3-am62a-main.dtsi          | 99 ++++++++++++++++++=
++++=0D
 arch/arm64/boot/dts/ti/k3-am62a7-sk.dts            | 27 ++++++=0D
 arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi     |  7 ++=0D
 .../arm64/boot/dts/ti/k3-am62x-sk-csi2-imx219.dtso | 84 ++++++++++++++++++=
=0D
 .../arm64/boot/dts/ti/k3-am62x-sk-csi2-ov5640.dtso | 82 ++++++++++++++++++=
=0D
 .../boot/dts/ti/k3-am62x-sk-csi2-tevi-ov5640.dtso  | 82 ++++++++++++++++++=
=0D
 arch/arm64/configs/defconfig                       |  3 +=0D
 11 files changed, 648 insertions(+), 12 deletions(-)=0D
---=0D
base-commit: b85ea95d086471afb4ad062012a4d73cd328fa86=0D
change-id: 20231114-csi_dts-5f433aca3665=0D
=0D
Best regards,=0D
-- =0D
Jai Luthra <j-luthra@ti.com>=0D
=0D

