Return-Path: <devicetree+bounces-12467-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BA527D9A04
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 15:35:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BC69B1C21069
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 13:35:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13F1E1F19D;
	Fri, 27 Oct 2023 13:35:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b="VuC0EBY5"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72CF41EB53
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 13:34:47 +0000 (UTC)
Received: from mta-64-227.siemens.flowmailer.net (mta-64-227.siemens.flowmailer.net [185.136.64.227])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA693D56
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 06:34:43 -0700 (PDT)
Received: by mta-64-227.siemens.flowmailer.net with ESMTPSA id 20231027133441408e1b6c1ed55a9be2
        for <devicetree@vger.kernel.org>;
        Fri, 27 Oct 2023 15:34:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=jan.kiszka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=SkXMaUVEsb4kPB44vkGq4pV31saBQG9CgbO7o0C0h+Q=;
 b=VuC0EBY5NqqqEAuLFOqledQOu/5j4czFDeXS7mTxGFAITmqK7vEz2oUXywk7tIAloME8Wa
 pzz3IKsm7VPug5qqslE1448YxV102bPdb1jWKH/IGqUGvp0Zm2P+QJeyidEQASAzErVOpkYO
 6z5j8PTu+cGvVQbG1AViTwLnOoBWU=;
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
Subject: [PATCH 6/7] arm64: dts: ti: iot2050: Add node for SPI devices on Arduino connector
Date: Fri, 27 Oct 2023 15:34:37 +0200
Message-Id: <34ac4d465e1e51723941936c4b04b736fa85dd8b.1698413678.git.jan.kiszka@siemens.com>
In-Reply-To: <cover.1698413678.git.jan.kiszka@siemens.com>
References: <cover.1698413678.git.jan.kiszka@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-294854:519-21489:flowmailer

From: Jan Kiszka <jan.kiszka@siemens.com>

This interface is normally driven by userspace on the IOT2050.

Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
---
 arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi b/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
index 53bd296ba310..bc77ba58d8f9 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
@@ -1180,6 +1180,12 @@ &mcu_spi0 {
 	#address-cells = <1>;
 	#size-cells = <0>;
 	ti,pindir-d0-out-d1-in;
+
+	spidev@0 {
+		compatible = "siemens,iot2050-arduino-spi";
+		spi-max-frequency = <20000000>;
+		reg = <0>;
+	};
 };
 
 &tscadc1 {
-- 
2.35.3


