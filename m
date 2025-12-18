Return-Path: <devicetree+bounces-247671-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A00CCA3CC
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 05:06:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0D5C03007FF7
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 04:06:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 571A127B34C;
	Thu, 18 Dec 2025 04:06:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="xrWXZKVE"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC824221F06;
	Thu, 18 Dec 2025 04:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766030795; cv=none; b=TCA1oZkAdBYi1dlYM5aVWK/AaBACZ8nk85bkt6WcBwRnmtFUrqQBxivhuwp7yeOH/vBYGLvf8b02QsWyta6pWVNZlEvRkxCaBVPZVwaB3gDZcCkca9/qJcYR72mr6kwd6YTk88la5LU9rk9hUU5A86FkuRcrjjwSR32SavCNU2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766030795; c=relaxed/simple;
	bh=nRePnQVf3FH7P7GpbLTar6MURmKFpPUdjJe2cr+xuSQ=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=UIxvaxos2X4pXwhuxGFrUzQ0B3T9Gjwwt3rm/WUT/V77FB8E/jY/NEWYyFSVk7aXyLmzET/snIS7vDln7p7R7ogtXarDTFyMpe9NamMDiebW8RFAQrNnYJfMYkEcKTFaIsX+EBjHO0h7JX+ZZ9ckqb7Xlnf4jbNTvT9fk/hJvtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=xrWXZKVE; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1766030794; x=1797566794;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=nRePnQVf3FH7P7GpbLTar6MURmKFpPUdjJe2cr+xuSQ=;
  b=xrWXZKVE6Uqhxl5Na50mALGJq6Ff5i8fEUHTFsJqSAwic3cQ3uuGeh5r
   57dHckyKH5YgHp7sSCyuWI26Il5PsgNXFvgRPGVe9/r5hz4ZKl0pJO6fE
   SiMcQo6BmfUoM0JyShikq490w9h244nJN4N6gypekTzbYkCj/jrZ+si3g
   AY01MSmBHy59ZQ6QrWl8LWzaGvIQCv4Wxj2xPgJIRX3LByOwECXRZpQmH
   m7Knt8snfxSduFQ9zD4VZFi444XqAD8FoZR4zRAAqXb74gD4/7Vs/F8ZF
   hBkwGIogYNa+l1qRWpBgQNozksRHAcbttqjP768Jr6z7Gk3VOC5KCMdx0
   g==;
X-CSE-ConnectionGUID: 8d83aKyqR/m/457MXLOS1w==
X-CSE-MsgGUID: jnoObdg+SLKDcH+b/+aY7g==
X-IronPort-AV: E=Sophos;i="6.21,156,1763449200"; 
   d="scan'208";a="282081579"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 17 Dec 2025 21:06:28 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.58; Wed, 17 Dec 2025 21:05:43 -0700
Received: from che-lt-i67131.microchip.com (10.10.85.11) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Wed, 17 Dec 2025 21:05:36 -0700
From: Manikandan Muralidharan <manikandan.m@microchip.com>
To: <lee@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <nicolas.ferre@microchip.com>,
	<alexandre.belloni@bootlin.com>, <claudiu.beznea@tuxon.dev>,
	<manikandan.m@microchip.com>, <dharma.b@microchip.com>,
	<maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
	<tzimmermann@suse.de>, <airlied@gmail.com>, <simona@ffwll.ch>,
	<devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <dri-devel@lists.freedesktop.org>
CC: Ryan Wanner <Ryan.Wanner@microchip.com>
Subject: [PATCH v2 2/3] mfd: atmel-hlcdc: Add compatible for sama7d65 XLCD controller
Date: Thu, 18 Dec 2025 09:35:20 +0530
Message-ID: <20251218040521.463937-2-manikandan.m@microchip.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251218040521.463937-1-manikandan.m@microchip.com>
References: <20251218040521.463937-1-manikandan.m@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

From: Ryan Wanner <Ryan.Wanner@microchip.com>

Add compatible for sama7d65 XLCD controller.

Signed-off-by: Ryan Wanner <Ryan.Wanner@microchip.com>
Signed-off-by: Manikandan Muralidharan <manikandan.m@microchip.com>
---
changes in v2:
- isolate this change into a dedicated patch
---
 drivers/mfd/atmel-hlcdc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mfd/atmel-hlcdc.c b/drivers/mfd/atmel-hlcdc.c
index 4c4e35d404f3..c3f3d39bf584 100644
--- a/drivers/mfd/atmel-hlcdc.c
+++ b/drivers/mfd/atmel-hlcdc.c
@@ -140,6 +140,7 @@ static const struct of_device_id atmel_hlcdc_match[] = {
 	{ .compatible = "atmel,sama5d4-hlcdc" },
 	{ .compatible = "microchip,sam9x60-hlcdc" },
 	{ .compatible = "microchip,sam9x75-xlcdc" },
+	{ .compatible = "microchip,sama7d65-xlcdc" },
 	{ /* sentinel */ },
 };
 MODULE_DEVICE_TABLE(of, atmel_hlcdc_match);
-- 
2.25.1


