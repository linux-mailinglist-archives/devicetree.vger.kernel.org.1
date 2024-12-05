Return-Path: <devicetree+bounces-127275-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E8419E50CF
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 10:11:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D428E16B616
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 09:10:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 096A4202C5F;
	Thu,  5 Dec 2024 09:06:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67E171F4276
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 09:06:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733389591; cv=none; b=kd42cDSkI0N9FpllXpqpnPrQrQZ/gWr2i7LmKXXg4RyI7VH0QOcj5K/+hzH5l4NSStDdy5GcVq8zWMd5XyFUX9yjczaJQ2tR2YfIKqUrrIApQzEfaZ2Oy/OnU4xsmdOqRqr79MkPCahpceuGsmg7Yr+PKvolUq4H1ERne99YAHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733389591; c=relaxed/simple;
	bh=oK+x3raXO0ZklCx6Lwdr6h2upXcFX7OssXs9Pph4aKs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GA1G2ecfOECrZwMJsQi7GLGZ8OimZX6byO7TRwLUbq2LYbDH8E772811oXaers8Yysv5HE3uCZumimIFR7bmh0cWVFFK1ZSRQ1Lhi47ZuC2YYgn9E9eKpW1e4C3+Ub6mPrYMTWkQ8EHcG9/SER2VT8zZI5oDQmPmqMWJIEDC52Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1tJ7oS-0004Ks-KQ; Thu, 05 Dec 2024 10:06:20 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 05 Dec 2024 10:06:02 +0100
Subject: [PATCH v3 2/6] dt-bindings: net: dwmac: add compatible for Agilex5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241205-v6-12-topic-socfpga-agilex5-v3-2-2a8cdf73f50a@pengutronix.de>
References: <20241205-v6-12-topic-socfpga-agilex5-v3-0-2a8cdf73f50a@pengutronix.de>
In-Reply-To: <20241205-v6-12-topic-socfpga-agilex5-v3-0-2a8cdf73f50a@pengutronix.de>
To: Dinh Nguyen <dinguyen@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Richard Cochran <richardcochran@gmail.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 netdev@vger.kernel.org, linux-clk@vger.kernel.org, kernel@pengutronix.de, 
 Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.14.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.trumtrar@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

The Agilex5 SoCs have three Synopsys DWXGMAC-compatible ethernet
IP-cores.

Add a SoC-specific front compatible to the binding.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 Documentation/devicetree/bindings/net/socfpga-dwmac.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/socfpga-dwmac.yaml b/Documentation/devicetree/bindings/net/socfpga-dwmac.yaml
index 022d9eb7011d47666b140aaecf54541ca3dec0ec..c578b4280c6c85f08b6e0918352d38ed98998489 100644
--- a/Documentation/devicetree/bindings/net/socfpga-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/socfpga-dwmac.yaml
@@ -21,6 +21,7 @@ select:
         enum:
           - altr,socfpga-stmmac # For Cyclone5/Arria5 SoCs
           - altr,socfpga-stmmac-a10-s10 # For Arria10/Agilex/Stratix10 SoCs
+          - altr,socfpga-stmmac-agilex5 # For Agilex5 SoCs
   required:
     - compatible
 
@@ -44,6 +45,12 @@ properties:
               - altr,socfpga-stmmac-a10-s10
           - const: snps,dwmac-3.74a
           - const: snps,dwmac
+      - items:
+          - enum:
+              - altr,socfpga-stmmac-agilex5
+          - const: altr,socfpga-stmmac-a10-s10
+          - const: snps,dwxgmac-2.10
+          - const: snps,dwxgmac
 
   altr,sysmgr-syscon:
     $ref: /schemas/types.yaml#/definitions/phandle-array

-- 
2.46.0


