Return-Path: <devicetree+bounces-142077-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AEA63A24067
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2025 17:28:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 245B716465D
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2025 16:28:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A02B61E571B;
	Fri, 31 Jan 2025 16:28:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="gOWhJbf6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B163670807
	for <devicetree@vger.kernel.org>; Fri, 31 Jan 2025 16:28:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738340888; cv=none; b=Kz3gts/JOLNkoGTyu04KiFi/txs1JJLzbdhN7rGAntJdZLGQ+LbuJKFWAIRX06JQpq8T8nfu0ZiL81kGEklWEQebfsLKN64r8v3GxVszPJN09AI1p5SIuCy+RsOTGIV4ckVY+u3RddvkBf9FeAnKa3Cmjxbx57wH230yBt5CqOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738340888; c=relaxed/simple;
	bh=wOzEW166VT9C4uprg+QgMCLXlB+SpSBksRt/c0VucHU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=LKTVhxHTYno7Q31k1hUUzYmjh+jI6ygv5ZWVcPEBnRtwkxN8Xxn6E3wl2nJn1Wv/Fv7p4HtoUpyNfZX6HUEeeHVCk1wIFaU/0fNg8Gxxv2MV2tkrIBt2bY4b9b5i90UTKDoofVXZYmpjqZewU+WjBmKnAhr5s7IvaDXaNZBqCrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=gOWhJbf6; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:mime-version:content-transfer-encoding; s=k1; bh=PqVjnpCOd6tw5e
	lOnzKgHyJPJMgjBBKXmBN1/Gz996A=; b=gOWhJbf6VGoygz6RTsmwr2f4aMW834
	+fqARDsL8hXB33eGg+QHH2GODZ2DtIZGupFmUfyhp1qtwYYFQfbaDtZNhltuoM2V
	puRwjZBIDKMoVsn8oGywSrOjjininDc9nnmSl6OumBCv19Flk4DP1Td9OBNFmf33
	4I1B9ulCqzZ3NjGQT41bPiHm66svJt6Rfy93GKxTIXaBtPz8rJtpIBcjeM7tQEnM
	9N8Fux6H8ASN8ho7LWd2s1LrwcJJwhZCh/7iOZu+tnJ+At4YACEefh1ygjPfwv+5
	+95kn+fIH5SJrvDiKOZV6osMaitwWNstTTpSafpdM2Lm4drVZSdoRrWg==
Received: (qmail 1739453 invoked from network); 31 Jan 2025 17:28:03 +0100
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 31 Jan 2025 17:28:03 +0100
X-UD-Smtp-Session: l3s3148p1@K6/WBgMtrIzUph5e
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: ARM: at91: add Calao USB boards
Date: Fri, 31 Jan 2025 17:27:13 +0100
Message-ID: <20250131162713.33524-2-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

They have not been added so far. dtbs_check complains loudly.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 Documentation/devicetree/bindings/arm/atmel-at91.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/atmel-at91.yaml b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
index 0ec29366e6c2..42469a054a60 100644
--- a/Documentation/devicetree/bindings/arm/atmel-at91.yaml
+++ b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
@@ -23,6 +23,9 @@ properties:
           - const: atmel,at91rm9200
       - items:
           - enum:
+              - calao,usb-a9260
+              - calao,usb-a9263
+              - calao,usb-a9g20
               - olimex,sam9-l9260
           - enum:
               - atmel,at91sam9260
@@ -35,6 +38,11 @@ properties:
               - atmel,at91sam9xe
               - atmel,at91sam9x60
           - const: atmel,at91sam9
+      - items:
+          - const: calao,usb-a9g20-lpw
+          - const: calao,usb-a9g20
+          - const: atmel,at91sam9g20
+          - const: atmel,at91sam9
 
       - items:
           - enum:
-- 
2.45.2


