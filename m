Return-Path: <devicetree+bounces-41231-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 61DB6852E0D
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 11:37:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 017F31F23F18
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 10:37:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D36724211;
	Tue, 13 Feb 2024 10:37:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5F8E249EA
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 10:37:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707820623; cv=none; b=f5k3+SrAVg/JtLp6XeZBC36FAMCPjXnJ627vglOk8kR4oJ7FYxh0TB0dtumJZ8Wk3Pnp0w72i/9aw3PZ1cqk2SjyoBbvxqvSFsE59uVFfVY4t7jR8jVezOKybQQffoXR/6CvL9yPRmJOBIRqOAOsaLuVSt/tp/awHPOLL+MJMFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707820623; c=relaxed/simple;
	bh=62N3hhraqAUc1fHQPXKCPhxjrxJJjf3CXIYBuCZi/I8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NK52uKkJRdloYlmtIZUkVrc3Arswx/chebQwrGTcLbCCLuIjiauI/RSSl6NwPO/0wc8SK8jCBLFzkI49t1wLk/pJhQmdvtoaWI3AB5mXFB/SxSYYeqBz2ZAsaWE3YFeCdmrS8K77K54L2NJ0v+IE5/RyqcdsuGnam20sJoXTJx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1rZq9s-0003J6-4m
	for devicetree@vger.kernel.org; Tue, 13 Feb 2024 11:37:00 +0100
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1rZq9r-000Spe-Ik
	for devicetree@vger.kernel.org; Tue, 13 Feb 2024 11:36:59 +0100
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id 3B17728D556
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 10:36:59 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id A8A9628D520;
	Tue, 13 Feb 2024 10:36:55 +0000 (UTC)
Received: from [172.20.34.65] (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id 2d5ee7ba;
	Tue, 13 Feb 2024 10:36:54 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 13 Feb 2024 11:36:43 +0100
Subject: [PATCH v8 1/3] dt-bindings: can: xilinx_can: Add 'xlnx,has-ecc'
 optional property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240213-xilinx_ecc-v8-1-8d75f8b80771@pengutronix.de>
References: <20240213-xilinx_ecc-v8-0-8d75f8b80771@pengutronix.de>
In-Reply-To: <20240213-xilinx_ecc-v8-0-8d75f8b80771@pengutronix.de>
To: Appana Durga Kedareswara rao <appana.durga.rao@xilinx.com>, 
 Naga Sureshkumar Relli <naga.sureshkumar.relli@xilinx.com>, 
 Wolfgang Grandegger <wg@grandegger.com>, 
 Marc Kleine-Budde <mkl@pengutronix.de>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Michal Simek <michal.simek@amd.com>
Cc: linux-can@vger.kernel.org, netdev@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Srinivas Goud <srinivas.goud@amd.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.13-dev-f0463
X-Developer-Signature: v=1; a=openpgp-sha256; l=1349; i=mkl@pengutronix.de;
 h=from:subject:message-id; bh=uqD/3nX7Gc5Q4vTRKA4laTqfp7s7VuC5z/kwrN2bMWY=;
 b=owEBbQGS/pANAwAKASg4oj56LbxvAcsmYgBly0Y/BOLEdRZtIEm+EERI1EFQyFPmgKcG9skzd
 QVybQLpe6mJATMEAAEKAB0WIQRQQLqG4LYE3Sm8Pl8oOKI+ei28bwUCZctGPwAKCRAoOKI+ei28
 b7BRB/9MgnMUIuGRaV4u1Tu0F6FYYyXfLjCpZ4OIuNgTZRZGktoKJmk/cj26LSfI+d+6sovipjB
 f36bK63tuMtpA28Of2GCME1KYAfYJlO1aZLbzrIJAGG+1t8O04ifSeK7JY4D6RbY9fx5m2+4Sqz
 9Jxsz0LpBMLOujUCWHUKcXnhwO05M06PRGLJWtX6rFKDodTJfKaVGFj40pzMbhIBrS5InVRHvvO
 FoNdka0r4r5bdPWEkyw8WEja1k/f2D62nAI8z6Ts58NdXLSs1hJmwxMXvv8HeSjySvWnnYoyrLH
 Uc6dLQcE2qr5QZtvCva+rge3nYd/Y55zfSdHhSa2XppDkPSb
X-Developer-Key: i=mkl@pengutronix.de; a=openpgp;
 fpr=C1400BA0B3989E6FBC7D5B5C2B5EE211C58AEA54
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

From: Srinivas Goud <srinivas.goud@amd.com>

ECC feature added to CAN TX_OL, TX_TL and RX FIFOs of Xilinx AXI CAN
Controller.

ECC is an IP configuration option where counter registers are added in
IP for 1bit/2bit ECC errors.

'xlnx,has-ecc' is an optional property and added to Xilinx AXI CAN
Controller node if ECC block enabled in the HW

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Srinivas Goud <srinivas.goud@amd.com>
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 Documentation/devicetree/bindings/net/can/xilinx,can.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/can/xilinx,can.yaml b/Documentation/devicetree/bindings/net/can/xilinx,can.yaml
index 64d57c343e6f..8d4e5af6fd6c 100644
--- a/Documentation/devicetree/bindings/net/can/xilinx,can.yaml
+++ b/Documentation/devicetree/bindings/net/can/xilinx,can.yaml
@@ -49,6 +49,10 @@ properties:
   resets:
     maxItems: 1
 
+  xlnx,has-ecc:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description: CAN TX_OL, TX_TL and RX FIFOs have ECC support(AXI CAN)
+
 required:
   - compatible
   - reg
@@ -137,6 +141,7 @@ examples:
         interrupts = <GIC_SPI 59 IRQ_TYPE_EDGE_RISING>;
         tx-fifo-depth = <0x40>;
         rx-fifo-depth = <0x40>;
+        xlnx,has-ecc;
     };
 
   - |

-- 
2.43.0



