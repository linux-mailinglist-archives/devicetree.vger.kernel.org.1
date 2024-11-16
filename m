Return-Path: <devicetree+bounces-122369-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F3B379D00D1
	for <lists+devicetree@lfdr.de>; Sat, 16 Nov 2024 21:37:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A84F31F230A4
	for <lists+devicetree@lfdr.de>; Sat, 16 Nov 2024 20:37:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16494199FBB;
	Sat, 16 Nov 2024 20:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="D2GommU0"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6D76197521
	for <devicetree@vger.kernel.org>; Sat, 16 Nov 2024 20:37:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731789428; cv=none; b=Zolr/kFhzHMzQZExmrbYMqV8LaUYTvDfg/MaLfkcBUn37v3VJvD6Ewbq3EB6kOixZhTyKIAkrPFCJ/fY3p/Uab9vW79Oy0XQiY1jG59ZNrtKizuYDa5nhIDIiSay/sWjHPR5O8KvGg5W+zAp271OuNYZiVwYYEzB5Z3aPI6nCo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731789428; c=relaxed/simple;
	bh=8Z9adF3i5dFbjVgTDTqQ35n5Zr7fqKmMo1Iu9jx97m0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PXSSUg8kXF8VyYEjh9gPje0UlqyWaTT4o8pDHkVzK+NP79qlOxnfSd4CNawCcMJKie2tWGw4SY6uJtqbR6EvS4vU6E1ZJzAYrpsKrIiYWjh6IiJGagnoaHLGLNC8h0OFw7rMZuEHrZ8/s/5xyUOtde8vTn9+WSg6uRx7hQJDoxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=D2GommU0; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1731789425;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=d3mlHFtAuQ0Swa9hlusVWD5DNnww2YIjIcVgtDs/jxE=;
	b=D2GommU0M3/4O4z+re0X1I6tpiLVrPD3+fe0tUaE4KoNvo+oYdtJ/hNh6sy+iSmDqF8RXK
	JocF8QGHF9ziLV3nvL+TBUIW+xT8wJc8cpl2mCUBptYWFsHoOh6G+16OBEh2iT8ouptHs6
	IoYv6EDQu9LRQ6qOdjmBCmZW2Cz5h2U=
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-107-um7B8WKnPh2NZUsJcvLr4w-1; Sat,
 16 Nov 2024 15:37:01 -0500
X-MC-Unique: um7B8WKnPh2NZUsJcvLr4w-1
X-Mimecast-MFC-AGG-ID: um7B8WKnPh2NZUsJcvLr4w
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 489F71956096;
	Sat, 16 Nov 2024 20:37:00 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.39.192.14])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id F14E51956056;
	Sat, 16 Nov 2024 20:36:57 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Sebastian Reichel <sre@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Hans de Goede <hdegoede@redhat.com>,
	Hermes Zhang <chenhuiz@axis.com>,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 2/3] power: supply: bq24190: Fix BQ24296 Vbus regulator support
Date: Sat, 16 Nov 2024 21:36:47 +0100
Message-ID: <20241116203648.169100-2-hdegoede@redhat.com>
In-Reply-To: <20241116203648.169100-1-hdegoede@redhat.com>
References: <20241116203648.169100-1-hdegoede@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17

There are 2 issues with bq24296_set_otg_vbus():

1. When writing the OTG_CONFIG bit it uses POC_CHG_CONFIG_SHIFT which
   should be POC_OTG_CONFIG_SHIFT.

2. When turning the regulator off it never turns charging back on. Note
   this must be done through bq24190_charger_set_charge_type(), to ensure
   that the charge_type property value of none/trickle/fast is honored.

Resolve both issues to fix BQ24296 Vbus regulator support not working.

Fixes: b150a703b56f ("power: supply: bq24190_charger: Add support for BQ24296")
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/power/supply/bq24190_charger.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/power/supply/bq24190_charger.c b/drivers/power/supply/bq24190_charger.c
index 0101aaca1a97..4881cbd0e672 100644
--- a/drivers/power/supply/bq24190_charger.c
+++ b/drivers/power/supply/bq24190_charger.c
@@ -567,6 +567,7 @@ static int bq24190_set_otg_vbus(struct bq24190_dev_info *bdi, bool enable)
 
 static int bq24296_set_otg_vbus(struct bq24190_dev_info *bdi, bool enable)
 {
+	union power_supply_propval val = { .intval = bdi->charge_type };
 	int ret;
 
 	ret = pm_runtime_resume_and_get(bdi->dev);
@@ -587,13 +588,18 @@ static int bq24296_set_otg_vbus(struct bq24190_dev_info *bdi, bool enable)
 
 		ret = bq24190_write_mask(bdi, BQ24190_REG_POC,
 					 BQ24296_REG_POC_OTG_CONFIG_MASK,
-					 BQ24296_REG_POC_CHG_CONFIG_SHIFT,
+					 BQ24296_REG_POC_OTG_CONFIG_SHIFT,
 					 BQ24296_REG_POC_OTG_CONFIG_OTG);
-	} else
+	} else {
 		ret = bq24190_write_mask(bdi, BQ24190_REG_POC,
 					 BQ24296_REG_POC_OTG_CONFIG_MASK,
-					 BQ24296_REG_POC_CHG_CONFIG_SHIFT,
+					 BQ24296_REG_POC_OTG_CONFIG_SHIFT,
 					 BQ24296_REG_POC_OTG_CONFIG_DISABLE);
+		if (ret < 0)
+			goto out;
+
+		ret = bq24190_charger_set_charge_type(bdi, &val);
+	}
 
 out:
 	pm_runtime_mark_last_busy(bdi->dev);
-- 
2.47.0


