Return-Path: <devicetree+bounces-45915-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2068886748B
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 13:14:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B4D341F26091
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 12:14:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F0C6604CA;
	Mon, 26 Feb 2024 12:13:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53547604BB
	for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 12:13:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708949582; cv=none; b=dJwGUQmpptxqnLBa8QttwsRdTRI/KRzl1W3jmhZeWhBxnj3PaoJWC4Orc3GHkync1L8iMsDW2ujG/sytDKZaDZrY1cwW9RCG7DQBeZwzSkB9CuFfCruui8bSQZ+rGLwslNyC/f8lCIZ1aD6jeypirCMAdfYABL+RDuiQ8fut0cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708949582; c=relaxed/simple;
	bh=Zqo04H2DzDvwYeQ4VzSXFZIweYrrWsFzk6udQWidsg0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=s2ScVgyLgwVshMv3c7zmZSunIcP+s51J7hPb6ndOrO7/ishgqKIpKPl6cTG9VRD2FsbrTqIH6Tf1jhmwktJSlavr4jiGWfX32BlSGmxPavHzVriyVUToYnK+ayWU+CgOuGW5JypPCyGSMBMP7gCHmqiYfFPTQSHSOoXrgT6D23g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1reZqj-0001Kj-8b; Mon, 26 Feb 2024 13:12:49 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: puranjay12@gmail.com,
	jic23@kernel.org,
	lars@metafoo.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: kernel@pengutronix.de,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] dt-bindings: iio: ti,tmp117: add optional label property
Date: Mon, 26 Feb 2024 13:12:33 +0100
Message-Id: <20240226121234.545662-1-m.felsch@pengutronix.de>
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

Add the support to provide an optional label like we do for ADC
channels to identify the device more easily.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Hi,

patchset [1] should be applied first to avoid merge conflicts.
[1] https://lore.kernel.org/all/20240219131114.134607-1-m.felsch@pengutronix.de/#t

Regards,
  Marco

 .../devicetree/bindings/iio/temperature/ti,tmp117.yaml         | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/temperature/ti,tmp117.yaml b/Documentation/devicetree/bindings/iio/temperature/ti,tmp117.yaml
index 33f2e9c5bd81..58aa1542776b 100644
--- a/Documentation/devicetree/bindings/iio/temperature/ti,tmp117.yaml
+++ b/Documentation/devicetree/bindings/iio/temperature/ti,tmp117.yaml
@@ -27,6 +27,9 @@ properties:
   vcc-supply:
     description: provide VCC power to the sensor.
 
+  label:
+    description: Unique name to identify which device this is.
+
 required:
   - compatible
   - reg
-- 
2.39.2


