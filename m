Return-Path: <devicetree+bounces-4304-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE827B1FD5
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 16:37:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 6CA2B282B65
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 14:37:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F4B13F4BC;
	Thu, 28 Sep 2023 14:37:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5D248BF3
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 14:37:43 +0000 (UTC)
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27F1B136;
	Thu, 28 Sep 2023 07:37:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1695911860; x=1727447860;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=VX9nwVrqBkZ7pbyV1snJDbtj8uP2ZRcb8DPHidThz1s=;
  b=sazsowTwNhvyoYy5NL/VSbFdomLdEM5yzLki8QVuvGUf8HCyIdHCxSOL
   3MrUlu7ZLECvXxSbbekadsYrA5JpknOttmFhVRYl2ItN6jyNQiBst6A5O
   oJeyZvr2tVio0jh4sldsjA+VczMt6MKcxblUXsGwZGURTZEn8cyujImiV
   lXkoCSorXF3Dv4kIRZMgzixbxv/00pKxtGhS2BB3b8Kr2o/xnvMckqD5e
   12CsxmMpJH+fTkxaPWk+P83AkTiKDC+3N18VEB/TzwrFhzbZ0sdXJTJVX
   2nLqqw8tCRHLohTqIad3P8KArCLK5/FXefgwl60aaDr0EyBEuGo1w1iKQ
   A==;
X-CSE-ConnectionGUID: Xa7eooHcQCaStKetqeRDsQ==
X-CSE-MsgGUID: yGN/veqWQmCaCtwapdt2aQ==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; 
   d="scan'208";a="7359184"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 28 Sep 2023 07:37:40 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 28 Sep 2023 07:37:10 -0700
Received: from ROU-LL-M43238.home (10.10.85.11) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Thu, 28 Sep 2023 07:37:08 -0700
From: <nicolas.ferre@microchip.com>
To: Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	<linux-arm-kernel@lists.infradead.org>
CC: Alexandre Belloni <alexandre.belloni@bootlin.com>,
	<linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>, Tudor Ambarus
	<tudor.ambarus@linaro.org>
Subject: [PATCH] ARM: dts: at91: sam9x60_curiosity: Add mandatory dt property for RTT
Date: Thu, 28 Sep 2023 16:36:44 +0200
Message-ID: <20230928143644.208515-1-nicolas.ferre@microchip.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Tudor Ambarus <tudor.ambarus@linaro.org>

atmel,rtt-rtc-time-reg is a mandatory property and encodes the GPBR
register used to store the time base when the RTT is used as an RTC.
Align the RTT with what's currently done for sam9x60ek and sama7g5ek,
and enable it by default even if RTC is also enabled.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
[nicolas.ferre@microchip.com: adapt to newer kernel]
Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>
---
 arch/arm/boot/dts/microchip/at91-sam9x60_curiosity.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/microchip/at91-sam9x60_curiosity.dts b/arch/arm/boot/dts/microchip/at91-sam9x60_curiosity.dts
index cb86a3a170ce..83372c1f291b 100644
--- a/arch/arm/boot/dts/microchip/at91-sam9x60_curiosity.dts
+++ b/arch/arm/boot/dts/microchip/at91-sam9x60_curiosity.dts
@@ -439,6 +439,10 @@ &pwm0 {
 	status = "okay";
 };
 
+&rtt {
+	atmel,rtt-rtc-time-reg = <&gpbr 0x0>;
+};
+
 &sdmmc0 {
 	bus-width = <4>;
 	pinctrl-names = "default";
-- 
2.39.2


