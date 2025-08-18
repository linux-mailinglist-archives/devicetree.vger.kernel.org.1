Return-Path: <devicetree+bounces-205893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF6AB2AD5A
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 17:53:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C70443BC645
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 15:48:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CFC8320CC6;
	Mon, 18 Aug 2025 15:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="H1Y7bYkC"
X-Original-To: devicetree@vger.kernel.org
Received: from lelvem-ot01.ext.ti.com (lelvem-ot01.ext.ti.com [198.47.23.234])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DCDC32038D
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 15:48:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.234
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755532103; cv=none; b=ncKw+34S/s6/mMQyLv+uoV4NpMovCc3jX90UNVIS+fN1QS3rcoPxOnAyAn9CcjFKYc0D1dLKCAZtDxSCHd7w3nF+GRk9upoFvJzg+GAcKjiPTXFYXRYdwiLFDG3mIQJxmFqUDV35qQqLOSHDCgJu84ovfUVvP2cDdhjsk4fXi7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755532103; c=relaxed/simple;
	bh=Fo4WvIGGHk0CbTnTieLnhO0/yLcYqd3L6jXowldS5Aw=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=mZMgsqemx/iyP+H4L2TD2ogQEuvK8lV7zcP+yb8dmXOpcK+KReLpVlfvYdMYgvj8a89VrghMZmJMRT3KZ65vGg3/UflsmIdCMM9LlmBFk/Xtu6HiDoffJLRjcumw/iiM0EzwDIqhzh0Iz44WAL76wngxulzHXlG807PnXy0T6uQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=H1Y7bYkC; arc=none smtp.client-ip=198.47.23.234
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllvem-sh04.itg.ti.com ([10.64.41.54])
	by lelvem-ot01.ext.ti.com (8.15.2/8.15.2) with ESMTP id 57IFlxAV2748841;
	Mon, 18 Aug 2025 10:47:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1755532079;
	bh=9ngAYffa1yoRXkD3A+58buw0rAaHWd53bAkBFdTtZvA=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=H1Y7bYkC2iNKRS9JqNtclq8Hhw6VnZNrWrfJ0WpwaP2319teF4+iq3Z5L/OJeK3xq
	 psyJDLcwDHnWOx1L5RgCcb5DjDL+0OzJQrKK+dOlBElGpnY1YoILvqUcUnxJKhGeL6
	 Vhzm9b3Dqkh60dJRNd14fN8dHehGn1nVAcMxilqg=
Received: from DLEE111.ent.ti.com (dlee111.ent.ti.com [157.170.170.22])
	by fllvem-sh04.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 57IFlxiw619538
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=FAIL);
	Mon, 18 Aug 2025 10:47:59 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55; Mon, 18
 Aug 2025 10:47:59 -0500
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55 via
 Frontend Transport; Mon, 18 Aug 2025 10:47:58 -0500
Received: from hkshenoy.dhcp.ti.com (hkshenoy.dhcp.ti.com [172.24.235.208])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 57IFlk8m1551018;
	Mon, 18 Aug 2025 10:47:53 -0500
From: Harikrishna Shenoy <h-shenoy@ti.com>
To: <neil.armstrong@linaro.org>, <jessica.zhang@oss.qualcomm.com>,
        <airlied@gmail.com>, <simona@ffwll.ch>,
        <maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
        <tzimmermann@suse.de>, <robh@kernel.org>, <krzk+dt@kernel.org>,
        <conor+dt@kernel.org>, <nm@ti.com>, <vigneshr@ti.com>,
        <kristo@kernel.org>, <thierry.reding@gmail.com>, <sam@ravnborg.org>,
        <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
CC: <s-jain1@ti.com>, <devarsht@ti.com>, <u-kumar1@ti.com>
Subject: [RFC PATCH 1/3] devicetree: bindings: dsiplay: panel: panel-simple.yaml: Add Raspberry pi dsi panel compatible
Date: Mon, 18 Aug 2025 21:17:44 +0530
Message-ID: <20250818154746.1373656-2-h-shenoy@ti.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250818154746.1373656-1-h-shenoy@ti.com>
References: <20250818154746.1373656-1-h-shenoy@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

Add RPi DSI panel[0] as a valid compatible for simple-panel.

[0]: https://www.raspberrypi.com/products/raspberry-pi-touch-display/

Signed-off-by: Harikrishna Shenoy <h-shenoy@ti.com>
---
 .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index 1ac1f0219079..65f486f2bc9d 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -268,6 +268,8 @@ properties:
       - rocktech,rk070er9427
         # Rocktech Display Ltd. RK043FN48H 4.3" 480x272 LCD-TFT panel
       - rocktech,rk043fn48h
+        # Raspberry, 7" dsi panel
+      - rpi,7inch-dsi
         # Samsung Electronics 10.1" WXGA (1280x800) TFT LCD panel
       - samsung,ltl101al01
         # Samsung Electronics 10.1" WSVGA TFT LCD panel
-- 
2.34.1


