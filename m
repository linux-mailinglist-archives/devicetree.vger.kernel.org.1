Return-Path: <devicetree+bounces-196637-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AEF8B06811
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 22:51:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DEABA7B633B
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 20:49:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1497428727E;
	Tue, 15 Jul 2025 20:49:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9484F2BE65F
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 20:49:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752612559; cv=none; b=EGt8e0imxEQhuTgl6F91r2xe90TBUA1HVnMW0+1PBECHjKtR8PRclOkHntc9GYTY4JlYNZ4Mgzr14SC0mCBqCwcX1bCaQxkRUXw3g2BF8Mw2uFmYFduwf4fgFcYT9PIIsvrBTBEryCfEjhWFC90i+SSqkeGkqFM27Vo4+pbqZwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752612559; c=relaxed/simple;
	bh=szwuk6Vvp2AoqhAb91mYotzkuCuPX6KC/lPfB1lCQgU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=b+Wu7ZyRVnN++2cKc2mPfmRJmVvsQA9YntFWdxNrt0a049pR2G0qM5zJ09wQRR5ao3ufMzethdMTPosRcO/l4FNU7m5U0z+lGZRFu4yqtjTn0A0PN6hc+WdCfXv5XEyztGMnIZ1vcxLe3sqRky7fmNgCf7qJwtpWrVLfk7QVeBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1ubmaI-0008KV-JA; Tue, 15 Jul 2025 22:49:06 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 15 Jul 2025 22:49:02 +0200
Subject: [PATCH 3/4] dt-bindings: Add INA228 to ina2xx devicetree bindings
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250715-ina228-v1-3-3302fae4434b@pengutronix.de>
References: <20250715-ina228-v1-0-3302fae4434b@pengutronix.de>
In-Reply-To: <20250715-ina228-v1-0-3302fae4434b@pengutronix.de>
To: Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-hwmon@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org, 
 kernel@pengutronix.de, Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=951; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=szwuk6Vvp2AoqhAb91mYotzkuCuPX6KC/lPfB1lCQgU=;
 b=owGbwMvMwCF2ZcYT3onnbjcwnlZLYsgo23dgzuHFSZuZ+gytKgrf6q54fdT36qdHbpK3fgYz5
 HNP5V3Y2VHKwiDGwSArpsgSqyanIGTsf92s0i4WZg4rE8gQBi5OAZjI5euMDK3hXO3zJJ5dub5S
 ptC0c/O3aQ9f9pT6uPFw7oyvrJ+pl8jIcGJ+PHtCQtf3thbjFtaM3K3L7unEd4vfrtv0sPbpy1u
 1nAA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::ac
X-SA-Exim-Mail-From: jre@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Add the ina228 to ina2xx bindings.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 Documentation/devicetree/bindings/hwmon/ti,ina2xx.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/hwmon/ti,ina2xx.yaml b/Documentation/devicetree/bindings/hwmon/ti,ina2xx.yaml
index d1fb7b9abda081113ac28ed999d9c28da9d4daf9..fa68b99ef2e292c0b7d618c14819fa2bd64db7b8 100644
--- a/Documentation/devicetree/bindings/hwmon/ti,ina2xx.yaml
+++ b/Documentation/devicetree/bindings/hwmon/ti,ina2xx.yaml
@@ -25,6 +25,7 @@ properties:
       - ti,ina219
       - ti,ina220
       - ti,ina226
+      - ti,ina228
       - ti,ina230
       - ti,ina231
       - ti,ina233
@@ -107,6 +108,7 @@ allOf:
               - ti,ina219
               - ti,ina220
               - ti,ina226
+              - ti,ina228
               - ti,ina230
               - ti,ina231
               - ti,ina237

-- 
2.39.5


