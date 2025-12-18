Return-Path: <devicetree+bounces-247670-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DB85BCCA3C6
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 05:06:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 79D283009FC6
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 04:06:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5ED0223EA94;
	Thu, 18 Dec 2025 04:06:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="dUEoKAcI"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BED511624C5;
	Thu, 18 Dec 2025 04:06:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.154.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766030781; cv=none; b=JORWSkXzvwV12fU1UilV1Xb3tvHHcJV3B9PQ/vtjrOX4E1s5ZHiPijJqxmrVGofSM392HEyRJMX29drtqh2zr3Lgfn6uWCBbp4Hn8CEB45hCF8HvZuTOxtB0wi3QZuH0KpRXo8/Y52+b/rR0DfG2NUOmjzQU7Eq3UNzwoTYxBGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766030781; c=relaxed/simple;
	bh=OF2PUxH2qRVusojO/w+86bR0YYO5hGWehmU/Y3eJPmE=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=Uizbeitu7x++vxbNFNO2gU6Cc98VXoBUEadKma0ek6EF+cKK0BU4DabXHFMmpU+CNnqeys6fWM3WL7ZmZaGVWb+bfmmV/eMDNrU3HUrmHWz9Da/w729fMOYGLK+Q0qWcOcksmSHJd2eFTSjSAgaYS/x4d5vW524HkoeFWglv7AE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=dUEoKAcI; arc=none smtp.client-ip=68.232.154.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1766030779; x=1797566779;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=OF2PUxH2qRVusojO/w+86bR0YYO5hGWehmU/Y3eJPmE=;
  b=dUEoKAcILjSmiDOrWTHBADnpleiDdu/soD9cAh0H07+A36x2ANcN4xUN
   b76to+IbvyYPMn/cbhPYbe5/X++7puHSrG13bHXZYd/6ZQH0JaVi/oL4W
   x9X+zHU/pAXqftggimXPGWKDK+pLQNIkPcJ55tOOkbU9CdoEY/5eYBlE2
   8ERuDdOepY6zytnj3iKuW8qqQW61ZiqWsWBLPYr7/NWbk4I/z/VZkLMVm
   qIp/N7TYvaCLtYbjOUqNSdPqwZv+NDLUbX7b6EMtTpOq6HyUQRZW9fHeO
   4UBAwoBkPJN2S6gzF5ghqGSbGoSVSlrIlAJ+IOg/He27ves4wsROEtXgN
   Q==;
X-CSE-ConnectionGUID: ERyhO/A+SXOvLHDrUOSkIQ==
X-CSE-MsgGUID: H5O1PS6JT4aSd/uQWyIgLA==
X-IronPort-AV: E=Sophos;i="6.21,156,1763449200"; 
   d="scan'208";a="218033974"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa6.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Dec 2025 21:06:12 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.87.71) by
 chn-vm-ex2.mchp-main.com (10.10.87.31) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.29; Wed, 17 Dec 2025 21:05:32 -0700
Received: from che-lt-i67131.microchip.com (10.10.85.11) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Wed, 17 Dec 2025 21:05:26 -0700
From: Manikandan Muralidharan <manikandan.m@microchip.com>
To: <lee@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <nicolas.ferre@microchip.com>,
	<alexandre.belloni@bootlin.com>, <claudiu.beznea@tuxon.dev>,
	<manikandan.m@microchip.com>, <dharma.b@microchip.com>,
	<maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
	<tzimmermann@suse.de>, <airlied@gmail.com>, <simona@ffwll.ch>,
	<devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <dri-devel@lists.freedesktop.org>
CC: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v2 1/3] dt-bindings: mfd: atmel,hlcdc: Add sama7d65 compatible string
Date: Thu, 18 Dec 2025 09:35:19 +0530
Message-ID: <20251218040521.463937-1-manikandan.m@microchip.com>
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
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
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

base-commit: e8c28e16c3ebd142938aee296032c6b802a5a1d4
-- 
2.25.1


