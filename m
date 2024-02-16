Return-Path: <devicetree+bounces-42510-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7931F857A45
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 11:28:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 32CC8287C62
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 10:28:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9804A2C19A;
	Fri, 16 Feb 2024 10:28:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1535824A03
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 10:28:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708079314; cv=none; b=uB8iE81ipCsqAhT0V3AMiKY8jfRyslgOHN4OHsLNThhKwrVNooAvwbPZSEv0wVWliI4GVbYcq/F0JzR4t4XVw8yV5hwUaio8tq5gK2ACvxud04hkfk5fF1sRJUZhrF7sfjtdyO9SXIg4vhvn/1kX9kXY9rigeKs97BGJSAp4Xv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708079314; c=relaxed/simple;
	bh=qKpijvoPFZ5Podu7ukUIp3Fhx6uwAlh95tWbcp2qTvc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=K+t4rpSz/XbjDCiyGu0YpI3rF3QWc134Gh2nSlIyozGx+xFS9CKcuj1tyEKd6W7BoW+J0EFmJaYkW65DjjEwYk1QmAOMxwQKn4si8XEx04DMFuTJmz8/jhhI7h9fXGVy8dnrsMcszcKZ6bUl1W2WKbsuwo0qruhBNvpComRQapw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1ravS9-0006gI-H0; Fri, 16 Feb 2024 11:28:21 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: puranjay12@gmail.com,
	jic23@kernel.org,
	lars@metafoo.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	kernel@pengutronix.de,
	thomas.haemmerle@leica-geosystems.com
Subject: [RESEND PATCH 1/2] dt-bindings: iio: ti,tmp117: add vcc supply binding
Date: Fri, 16 Feb 2024 11:28:19 +0100
Message-Id: <20240216102820.1395815-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::28
X-SA-Exim-Mail-From: m.felsch@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

From: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>

Add the binding to specify the vcc supply. We can't make it required
since this would break the backward compatibility.

Signed-off-by: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Resend since I forgot to add the DT maintainers

 .../devicetree/bindings/iio/temperature/ti,tmp117.yaml        | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/temperature/ti,tmp117.yaml b/Documentation/devicetree/bindings/iio/temperature/ti,tmp117.yaml
index 8c6d7735e875..cf7799c9734f 100644
--- a/Documentation/devicetree/bindings/iio/temperature/ti,tmp117.yaml
+++ b/Documentation/devicetree/bindings/iio/temperature/ti,tmp117.yaml
@@ -24,6 +24,9 @@ properties:
   reg:
     maxItems: 1
 
+  vcc-supply:
+    description: provide VCC power to the sensor.
+
 required:
   - compatible
   - reg
@@ -39,5 +42,6 @@ examples:
         tmp117@48 {
              compatible = "ti,tmp117";
              reg = <0x48>;
+             vcc-supply = <&pmic_reg_3v3>;
         };
     };
-- 
2.39.2


