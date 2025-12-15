Return-Path: <devicetree+bounces-246483-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D0646CBD242
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 10:19:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DF14430542CA
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 09:16:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FC9C32ED30;
	Mon, 15 Dec 2025 09:07:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="wLyRyctZ"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9721132D0D5;
	Mon, 15 Dec 2025 09:07:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.154.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765789660; cv=none; b=Ox0gWfEHj6Ol+71dzdrxUzfVlEG71FlwyCeTn15Zvu1BM/yUr37JbZf/wBOECxU11LINBEaJPWXz2KCR6p3mXOB3dKgUuLecrT3iWP1+jWkfk9rmAr2WEVHngpMFyk4m+pgIMPJlWjeNzvcVzZJYM5VbwDY6vlI6QjFs3RTTXtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765789660; c=relaxed/simple;
	bh=uJLQFJraqizUE67dqXdm91xUJsTZgel7BQijceu5F8A=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type; b=LmHmb71gmvpGZNYcd6v2qlgvtLak5aCmHyFIfo2WD+WRk6GSA7XHzqCSIEuy+34zdIsNctMtWV1kVsMzb6CWvoGe4cdggOiT4hIrijTxsbxTr4fQpK9jmQf5RsSW3FrUnjQM9euEykWyrrXNZUCHCE6qV/D0rzdOSwrmvFkgEe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=wLyRyctZ; arc=none smtp.client-ip=68.232.154.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1765789658; x=1797325658;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=uJLQFJraqizUE67dqXdm91xUJsTZgel7BQijceu5F8A=;
  b=wLyRyctZ7ueyGfcVth7OC539LTcnFKttqEv+3dvPkPAVwXCtiyJ8MGW9
   BHXKWCzzpEz2uJ/+fsiHtfDE3Uy5SjIgte7UvzG6aJ1A6m9Nd7GR5O/IX
   H9eHodHRtAeJzKerdEOCK2HEaUrn63JMf3NPsLZnHXv0zw3kx0jca5XoS
   7aqcKj4qHkzE/hsXLwEVInNGU5B+XRgC/zQl35csoGw3HUNHZDMq72vs4
   p1AS3KVoTYy/0JQQzzIh1ti09koAkhyx/WVAgbg1nGbxb9PhRNydksC8H
   AOxhL4ZvsP1YYtKI9kLTiqgLUh4bp2XHunBgLj04BSh63qmOnD9sX75Dx
   A==;
X-CSE-ConnectionGUID: PcTJoc4CSZSXBJPpFg6KMg==
X-CSE-MsgGUID: MAb+FIXPRJKeJQCgXrPXHw==
X-IronPort-AV: E=Sophos;i="6.21,150,1763449200"; 
   d="scan'208";a="217865848"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa6.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 15 Dec 2025 02:07:36 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.58; Mon, 15 Dec 2025 02:07:06 -0700
Received: from che-lt-i67131.microchip.com (10.10.85.11) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Mon, 15 Dec 2025 02:06:59 -0700
From: Manikandan Muralidharan <manikandan.m@microchip.com>
To: <lee@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <nicolas.ferre@microchip.com>,
	<alexandre.belloni@bootlin.com>, <claudiu.beznea@tuxon.dev>,
	<manikandan.m@microchip.com>, <dharma.b@microchip.com>,
	<maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
	<tzimmermann@suse.de>, <airlied@gmail.com>, <simona@ffwll.ch>,
	<devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <dri-devel@lists.freedesktop.org>
Subject: [PATCH 1/2] dt-bindings: mfd: atmel,hlcdc: Add sama7d65 compatible string
Date: Mon, 15 Dec 2025 14:36:38 +0530
Message-ID: <20251215090639.346288-1-manikandan.m@microchip.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Add LCD compatible string for sama7d65.

Signed-off-by: Manikandan Muralidharan <manikandan.m@microchip.com>
---
 Documentation/devicetree/bindings/mfd/atmel,hlcdc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/atmel,hlcdc.yaml b/Documentation/devicetree/bindings/mfd/atmel,hlcdc.yaml
index 4aa36903e755..dfee8707bac2 100644
--- a/Documentation/devicetree/bindings/mfd/atmel,hlcdc.yaml
+++ b/Documentation/devicetree/bindings/mfd/atmel,hlcdc.yaml
@@ -25,6 +25,7 @@ properties:
       - atmel,sama5d4-hlcdc
       - microchip,sam9x60-hlcdc
       - microchip,sam9x75-xlcdc
+      - microchip,sama7d65-xlcdc
 
   reg:
     maxItems: 1

base-commit: 7f790dd21a931c61167f7bdc327aecf2cebad327
-- 
2.25.1


