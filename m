Return-Path: <devicetree+bounces-248075-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F4E6CCEA8F
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 07:40:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 43CFA302036F
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 06:40:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68BB12D8795;
	Fri, 19 Dec 2025 06:40:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=richtek.com header.i=@richtek.com header.b="Eb3RmaxH";
	dkim=pass (2048-bit key) header.d=richtek.com header.i=@richtek.com header.b="5bCgV8Sg"
X-Original-To: devicetree@vger.kernel.org
Received: from mg.richtek.com (mg.richtek.com [220.130.44.152])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90BC0219A86;
	Fri, 19 Dec 2025 06:40:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.130.44.152
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766126410; cv=none; b=U6HWt1iv4+0xQAgTb/FHVuQrmGMVOWa7PjlevK5iY1Ir2cdMECe46ctNEYMNGrWhP8gnw4DEO7Ry+SLjlvYyTrTqgU9x1k32NpT6ZwUV5vbY0CZIYf1cbVsXOTB+Z72qmB4fFsGx3mLM5K17IhWAiz6A3CunNcqp1SUPK81lLKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766126410; c=relaxed/simple;
	bh=1wx2gJqC+SBVYT7bzbnx0MXl4kI7SgA47eW8RiEvZno=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Hl5CxS9Uy7iuc6QcCrOcRpWPK8WEsw5vzTHYSijK3FE9mGj/OG64m6qCm286s4d83e6J3yrerBOhlSnJrlVQNFeR5XTkw4YbvUUiJXusGdp9EZ2ojTfUH5lr7qNrLOmwLRwI4e+Z++pxHw7Tnz4aAkJF+8A5kAqTO+jEk9L095A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=richtek.com; spf=pass smtp.mailfrom=richtek.com; dkim=pass (2048-bit key) header.d=richtek.com header.i=@richtek.com header.b=Eb3RmaxH; dkim=pass (2048-bit key) header.d=richtek.com header.i=@richtek.com header.b=5bCgV8Sg; arc=none smtp.client-ip=220.130.44.152
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=richtek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=richtek.com
X-MailGates: (SIP:2,PASS,NONE)(compute_score:DELIVER,40,3)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=richtek.com;
	s=richtek; t=1766126405;
	bh=2SzYWE3T4k80Utboszj2Ocei6ZisLjR74Q2ygnLnRz4=; l=1156;
	h=From:To:Subject:Date:Message-ID:MIME-Version;
	b=Eb3RmaxHqD0E9SPvnuLvfaZalpslcRcxr62qYwsjIAQG4PpAoSKg/oZj4UN88giwp
	 g2UVJu39k7k9Pm10VVTWcEC56RMxBEwDtbPiu4jSGAFisK8sPKTuzZOiCDcx+yjtxp
	 g0dQcIpFoIXpGb0izzPqoyKRa7gVfmS4V7X56dGxrkKmxBVjO6dy3HSu5ETFjkMFXR
	 4UzEI4HlbK100mvSayB+Ls+jRUzHNRozR/J29rNP3EN7eQLFccelbGPnydhezQbeZi
	 TSTMkR4eoV7Wsbw9aX/FLzTgNvsDvpW3SsfrBzCsSVKA9eq1+M2N/H9LpBVlZi6ZMb
	 gLA1TciwAFFbw==
Received: from 192.168.8.21
	by mg.richtek.com with MailGates ESMTP Server V3.0(1128086:0:AUTH_RELAY)
	(envelope-from <prvs=144339BFC1=cy_huang@richtek.com>); Fri, 19 Dec 2025 14:40:03 +0800 (CST)
X-MailGates: (compute_score:DELIVER,40,3)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=richtek.com;
	s=richtek; t=1766126403;
	bh=2SzYWE3T4k80Utboszj2Ocei6ZisLjR74Q2ygnLnRz4=; l=1156;
	h=From:To:Subject:Date:Message-ID:MIME-Version;
	b=5bCgV8SgxMTIdVy3On5b1sOgOCnS6+eRc0zMNBwpurXQpuKm2pUm9mSH2dAz/+kXs
	 PnnoqjpWirxdBESr4AHtfUnp4sHlGJleLAxDFktYojYwy/+PdG13HG0Mq/eM4KRZCz
	 4CEtGjXYp/ruFF0YX7E2AQKHdGv75VGepZ3LKZR2wlTu6+cNhiHXVgNcuKBbZWdXSf
	 kAcwHnMdc+DaqfKdfRhJCgfBa5CschUi4xWGglAbhpNE6pvTrlK+bgqyPMhojvD7tu
	 qJrdlushd9r23M+t6pFK8606GSqaqE4Utm7ftjfxJxwkZiR4A7h2gQcd6rd9CXlbYu
	 o5dnjsN/t/s1A==
Received: from 192.168.10.46
	by mg.richtek.com with MailGates ESMTPS Server V6.0(2572462:0:AUTH_RELAY)
	(envelope-from <cy_huang@richtek.com>)
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256/256); Fri, 19 Dec 2025 14:36:24 +0800 (CST)
Received: from ex3.rt.l (192.168.10.46) by ex3.rt.l (192.168.10.46) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.26; Fri, 19 Dec
 2025 14:36:24 +0800
Received: from git-send.richtek.com (192.168.10.154) by ex3.rt.l
 (192.168.10.45) with Microsoft SMTP Server id 15.2.1748.26 via Frontend
 Transport; Fri, 19 Dec 2025 14:36:24 +0800
From: <cy_huang@richtek.com>
To: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
CC: Liam Girdwood <lgirdwood@gmail.com>, ChiYuan Huang <cy_huang@richtek.com>,
	Alan Lan <alan_lan@richtek.com>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>
Subject: [PATCH 1/2] dt-bindings: regulator: rt5739: Add compatible for rt8092
Date: Fri, 19 Dec 2025 14:36:19 +0800
Message-ID: <9b67b2d2b4268d356f41ae2d0c3202e7813ea6b1.1766125676.git.cy_huang@richtek.com>
X-Mailer: git-send-email 2.43.5
In-Reply-To: <cover.1766125676.git.cy_huang@richtek.com>
References: <cover.1766125676.git.cy_huang@richtek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

From: ChiYuan Huang <cy_huang@richtek.com>

Append rt8092 compatible in rt5739 document.

Compared to rt5739, RT8092 can offer up to 4A output current.

Signed-off-by: ChiYuan Huang <cy_huang@richtek.com>
---
 .../devicetree/bindings/regulator/richtek,rt5739.yaml        | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/regulator/richtek,rt5739.yaml b/Documentation/devicetree/bindings/regulator/richtek,rt5739.yaml
index e95e046e9ed6..983f4c1ce380 100644
--- a/Documentation/devicetree/bindings/regulator/richtek,rt5739.yaml
+++ b/Documentation/devicetree/bindings/regulator/richtek,rt5739.yaml
@@ -15,6 +15,10 @@ description: |
   supply of 2.5V to 5.5V. It can provide up to 3.5A continuous current
   capability at over 80% high efficiency.
 
+  The RT8092 is similar type buck converter. Compared to RT5739, it can offer
+  up to 4A output current and more output voltage range to meet the application
+  on most mobile products.
+
 allOf:
   - $ref: regulator.yaml#
 
@@ -23,6 +27,7 @@ properties:
     enum:
       - richtek,rt5733
       - richtek,rt5739
+      - richtek,rt8092
 
   reg:
     maxItems: 1
-- 
2.34.1


