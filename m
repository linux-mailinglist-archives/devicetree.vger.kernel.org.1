Return-Path: <devicetree+bounces-158939-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E1CA68A90
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 12:05:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6A7C83BFBA2
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 11:03:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F9D9253F31;
	Wed, 19 Mar 2025 11:03:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="OS5/6vfs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B95C2116F4
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 11:03:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742382198; cv=none; b=BMqGpq7+8/NOfHWm1vi4p5v+NopQfvy61T1Z9RfQcGlDN2f1K634+uuIYABWDdT024qdFLsVvEiIp5JL9KIWKuXCWggbD2JSkn9u45nFlSV4XxnAZly+HI/0CV2cGTiK4WZtpcMp7Alab6rQXMLnj42xxFRAJUwV+ZvRKKiBHdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742382198; c=relaxed/simple;
	bh=xubUQCNPz5q+g+3mebQWXa30tiqFiIsAzICoA++Kvxk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qsxnBaNMcZa2chSA4UshCiBi8xvjBuKdI8P4A5JIv3pGQ3Qq5bMXHzYn8LY3hTj7048XCvauTaJ6+oji4LKITjNKlbpnyCMwpfwb7IOTL41XAADbSxkZWA0ybadhAVcsy65/vMDRvvaaGw9/sOIJXm3irP+UC3kaQ4kh0gHdJmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=OS5/6vfs; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=WPTrYpPtD4zuV6le0MidS8i3ANwcaQIiuvmGYmNNG+M=; b=OS5/6v
	fsAqVuV+1hOeZ/aVXvEu3spA4j0JxT0ny3Ql7Zbksz8bQR7lndfY1/JJlZnJ7l/g
	kjHnSuSEMHCoSMP8Yy1nyv6u3lvSopK2/589HDmReKoq+g/pgRDAi9B5YoxmAQoP
	S3O2LKe/gluiyezklC7uPkwDtYw2lvQ78KUYhpjjM93NnQZZhjeRx/cPeOnxW63z
	XSVgv1H/v3cr7Gu3EaPq2wxuYJjZfEMN1hqQQwc1ZkBvPT8cnr5iKDv7ZOXJDaSf
	MqPxbNbt7X7I11uBSV5AfMSZkFY8nS1ArLLYo+ikjgvJA2ji7Nixal5DH0340bGG
	fVsB+pyYtvqMneuA==
Received: (qmail 81798 invoked from network); 19 Mar 2025 12:03:12 +0100
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 19 Mar 2025 12:03:12 +0100
X-UD-Smtp-Session: l3s3148p1@UMme968w8LwgAwDPXyTHAJp038nK7dx+
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	linux-rtc@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: rtc: rzn1: add optional second clock
Date: Wed, 19 Mar 2025 12:03:02 +0100
Message-ID: <20250319110305.19687-2-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250319110305.19687-1-wsa+renesas@sang-engineering.com>
References: <20250319110305.19687-1-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The external crystal can be a second clock input. It is needed for the
SCMP counting method which allows using crystals different than 32768Hz.
It is also needed for an upcoming SoC which only supports the SCMP
method.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/rtc/renesas,rzn1-rtc.yaml         | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/rtc/renesas,rzn1-rtc.yaml b/Documentation/devicetree/bindings/rtc/renesas,rzn1-rtc.yaml
index f6e0c613af67..f6fdcc7090b6 100644
--- a/Documentation/devicetree/bindings/rtc/renesas,rzn1-rtc.yaml
+++ b/Documentation/devicetree/bindings/rtc/renesas,rzn1-rtc.yaml
@@ -33,10 +33,14 @@ properties:
       - const: pps
 
   clocks:
-    maxItems: 1
+    minItems: 1
+    maxItems: 2
 
   clock-names:
-    const: hclk
+    minItems: 1
+    items:
+      - const: hclk
+      - const: xtal
 
   power-domains:
     maxItems: 1
-- 
2.47.2


