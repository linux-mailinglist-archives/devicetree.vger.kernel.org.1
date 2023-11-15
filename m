Return-Path: <devicetree+bounces-15830-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 416F07EBFC5
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 10:52:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 669F01C20A97
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 09:52:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC0BEBA55;
	Wed, 15 Nov 2023 09:52:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="KUL4GugZ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3799F9463
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 09:52:34 +0000 (UTC)
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EDC61A1;
	Wed, 15 Nov 2023 01:52:33 -0800 (PST)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3AF9q8AX104932;
	Wed, 15 Nov 2023 03:52:08 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1700041928;
	bh=DTO2VcAYBTZGDZyK1TFutHTGx51Y+8sEDKEX22JGwt4=;
	h=From:Subject:Date:To:CC;
	b=KUL4GugZ50Q8AyeyobQzp0syi6WK/WnqU4UXMe8OZ0ppSmoCMyQTqMAf0dGGuHenw
	 aa3zjd2ueSU0U0ajPH9R38PIJZ6eRxdv2PKsJe5rIvahzJEH51GC8eEHsMcfIaYHSV
	 jVREOx+mz/w/G1WwcKtmklapuw5qeTYZVphvMGy0=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3AF9q7Uc052390
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 15 Nov 2023 03:52:07 -0600
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 15
 Nov 2023 03:52:07 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 15 Nov 2023 03:52:07 -0600
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3AF9q6Ui055665;
	Wed, 15 Nov 2023 03:52:07 -0600
From: Jai Luthra <j-luthra@ti.com>
Subject: [PATCH 0/8] arm64: dts: ti: Enable CSI cameras for AM62 family
Date: Wed, 15 Nov 2023 15:21:08 +0530
Message-ID: <20231115-csi_dts-v1-0-99fc535b2bde@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIyUVGUC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI2NDQ0MT3eTizPiUkmJd0zQTY+PE5ERjMzNTJaDqgqLUtMwKsEnRsbW1ALH
 0L+ZZAAAA
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
        Jai
 Luthra <j-luthra@ti.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1796; i=j-luthra@ti.com;
 h=from:subject:message-id; bh=dg6sHPSWNtPN4jFznAP/fVvtCvyn6SXoLjdJe3VO05Q=;
 b=owEBbQKS/ZANAwAIAUPekfkkmnFFAcsmYgBlVJStGMfKoNIqyttgsWPI6QvTaZ3vDTsYPD0Qs
 0VFoMvUuwKJAjMEAAEIAB0WIQRN4NgY5dV16NRar8VD3pH5JJpxRQUCZVSUrQAKCRBD3pH5JJpx
 RSv7D/9bP1yxmYci+CKaauDrGsTN/T8hWK0IaCehtnzlTUcbSSdVfLRdhUkVWn9k0fGHSI0zltB
 tXGGSOvgrmN4O/wOL26JP56Edv+WtbKbgvdiN57NpOm3EZkP+PIawYVRPBkJOmZEm0OtCDjj1n0
 Wl9b4pdKVoWQWIaJ5iZVYX5hijXdwud/YLn9Qzzocz43c6aIDYHmX9dH3lkbI3+m0458zGuuz2Q
 zBQg0x7rWAInzHDsrQvgkIw0HhUYfzo0STLcq5F00Hjul8sLHfffZCm8JXcMesPgYcKwk5j43VW
 stDxnV8LYb84UUTdPLEPamgsIXOi6eb4RZHA2PWM3ouvb62+n7GFAyFrG495m/p4FIf1McPAJ+5
 JM6zOPlKkrANpTZro0TpunAQVBVqV7pOAe79D7lv3qdXCr4E/FdALqN1wccOvOaUS9sxwbbxCQ9
 G9OOZNTYa1pcxyTeMiMM2EWzq5NFF/QZtzVub8dhQDodCNmrcZB2vLadZ3xmWZ7W1wUqY8vjNqa
 TX3kgTsbNHj7QMYkZLHCyTjH9eO4bBR1M5wnr3B0N3+oxGnfy9eJwH0V5ZbshcjSegUnlGeagyG
 OpB3oo43V1IWh7QHo0MJPFbcrwkRAYtCsYwwTuAkWWM0idNf1m/AjpY1Y/RmORbasT3+Qu0ZfuG
 9Pcm+Zcx02N0srQ==
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
Jai Luthra (8):
      arm64: defconfig: Enable AM62 CSI2RX
      arm64: dts: ti: Enable CSI-RX on AM62
      arm64: dts: ti: Enable CSI-RX on AM62A
      arm64: dts: ti: k3-am625-beagleplay: Add overlays for OV5640
      arm64: dts: ti: k3-am62x-sk: Enable camera peripherals
      arm64: dts: ti: k3-am62x: Add overlays for OV5640
      arm64: dts: ti: k3-am62a7-sk: Enable camera peripherals
      arm64: dts: ti: k3-am62x: Add overlay for IMX219

 arch/arm64/boot/dts/ti/Makefile                    | 17 ++++
 arch/arm64/boot/dts/ti/k3-am62-main.dtsi           | 62 ++++++++++++++
 .../dts/ti/k3-am625-beagleplay-csi2-ov5640.dtso    | 77 +++++++++++++++++
 .../ti/k3-am625-beagleplay-csi2-tevi-ov5640.dtso   | 77 +++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am62a-main.dtsi          | 99 ++++++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am62a7-sk.dts            | 35 ++++++++
 arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi     | 15 ++++
 .../arm64/boot/dts/ti/k3-am62x-sk-csi2-imx219.dtso | 76 +++++++++++++++++
 .../arm64/boot/dts/ti/k3-am62x-sk-csi2-ov5640.dtso | 74 ++++++++++++++++
 .../boot/dts/ti/k3-am62x-sk-csi2-tevi-ov5640.dtso  | 74 ++++++++++++++++
 arch/arm64/configs/defconfig                       |  3 +
 11 files changed, 609 insertions(+)
---
base-commit: a93441cc391f1923d031dcd463e3444c7c21bffe
change-id: 20231114-csi_dts-5f433aca3665

Best regards,
-- 
Jai Luthra <j-luthra@ti.com>


