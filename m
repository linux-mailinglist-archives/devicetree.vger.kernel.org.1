Return-Path: <devicetree+bounces-274351-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iFeTMt3vsWkgHQAAu9opvQ
	(envelope-from <devicetree+bounces-274351-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 23:42:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF6826AF4A
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 23:42:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C731930579DE
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 22:42:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34C53395253;
	Wed, 11 Mar 2026 22:42:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF2F36A03F
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 22:42:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773268930; cv=none; b=FX29GqqxMyhZCNbnnlu3m1N9SfL82n32uklj28SdG9B9VykY3nSX6V3p/1mbwLBBG4YllgX0S5yPXrJ+J2/zXjoAEuG+iZ3tDtGJGpcWmpbGWARJVkggQSbJuxHLQHCxN+OPIJcup/Q03bXRJskLxETr2AtbKJURGjkbhbTQYaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773268930; c=relaxed/simple;
	bh=uELJpnMSysadI2Kpm5r/ZVI/JZrV+BrD8kTnJQ7zQLc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YUvQzuHDpJeOUppPZoK8B1v5XSn0t6ZOaRAol+vFsk543nvHAVLwMyQtToQYNehOQg9uuSgb7/t2bKWMj3ssJHJLqQ6sjT5DGZxqm7PcuEV7sN2Gq1a1M64vwpbnNHFDRvablftuL8ohqsyC29yFgGGlg943ZyI1sKpfONAdDGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2ae527552acso2014785ad.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 15:42:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773268928; x=1773873728;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yXmdF0x3IxYZ25KG6QGT1Bi2RMkVMfC0MXaDAqIpvF4=;
        b=er0OystLpWs96OmlpR5Qx3kxf2NwUdAgDTiVyFGk50ezQetg8A5wqonks/PHqL/GRv
         yD53qvZt9gT6cvY5gyMgP7Q6g2Jcj1LqIWJ8jH0Gfsi0riM9fxqWFvNABczz5/I9xgXe
         JM2EKAwCD3YoIzt1yswlRHVX4oQoMvLgJMENFONRBBDar0WLQwHOk7UO1Zv8Zy3rVt/N
         eBQtQ4ooQv6iQMLfz4vhGDm33W/YjkGjvefynGghqs+zli7yIWgQ1xYxrj6rBQkFvSiB
         JOkNp/sZBTxfpxhPabCzIvB5SKrbOuviuH0N9fZvlVb1lD9HdqtVCX/w5QS2FjhIm7V5
         HQRg==
X-Forwarded-Encrypted: i=1; AJvYcCUIJgase7r6lxsL2g8V2yA42f6CosVJONlXKWxlO84UJjOQw4HC336gYxSbRZpTwh2w9SYeBX+Gkutz@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3sVIVNwyLXSyLoO30IQqMf/jS0DNz2k7IAN/GqmIlhlgRofBh
	V9r51dcCttqkR5Lv4ZM+S3KFgTN2av+UZ/jpzCxSU7xYavS83vzZ63sFLVsiMLwb3PM=
X-Gm-Gg: ATEYQzxALOWcxIOmQpGwe6y01cspBBAHrMDkZl9MWkNGacI3HlXKRwqw9RCa6cIyISN
	yssVKXLbdpchyFoP9XmKEPpog8wH1nMmi4S3Krhnun/9m5dvh8Ea7ssH2vgbFmOTW8YdnQAkpat
	HhJCYLProY7qrlzXQ2fuVV9sjVHTTuvaJ7s9RSuFSnoYOWA8DRqxgB716kC0RD/1X60FUb02FXc
	5pPFPVeqC8DBUEtgmnWnvGte0/xgZeBjwqaj8WEqm/Y5Ir0RxKQXXZzqLcQteRr0PxP8ucXl4Qb
	3e8yhGqHQSXvsmtgmxYLmXplyw+p+E+awFaUwikmYWVDea1V+UAvH9oUDtqzvJI8H7rlExGV4Mp
	YBSEpthHXokwKcxditj0q+AqB44p9ZVNIzC8XfvcL5z9LkEsaFubBTFCJoc5Yq58zJhHQzJmDgr
	iNQxmvd5GiBwNWawZ+9z37SY3doI5scA5Ov3FdKTk=
X-Received: by 2002:a17:903:2305:b0:2ae:5063:b3e0 with SMTP id d9443c01a7336-2aeae7a2fa8mr41433705ad.9.1773268928078;
        Wed, 11 Mar 2026 15:42:08 -0700 (PDT)
Received: from archlinux.www.tp-link.com ([103.135.252.26])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aeae35ef5asm32854975ad.65.2026.03.11.15.42.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 15:42:07 -0700 (PDT)
From: Siratul Islam <email@sirat.me>
To: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: jic23@kernel.org,
	dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	Siratul Islam <email@sirat.me>
Subject: [PATCH v3 1/2] dt-bindings: iio: proximity: add ST VL53L1X ToF sensor
Date: Thu, 12 Mar 2026 04:40:36 +0600
Message-ID: <20260311224044.21480-2-email@sirat.me>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260311224044.21480-1-email@sirat.me>
References: <20260311224044.21480-1-email@sirat.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [1.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-274351-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[sirat.me];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[email@sirat.me,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.976];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sirat.me:email,sirat.me:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url]
X-Rspamd-Queue-Id: 4FF6826AF4A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add device tree binding documentation for the STMicroelectronics
VL53L1X Time-of-Flight ranging sensor connected via I2C.

Signed-off-by: Siratul Islam <email@sirat.me>
---
 .../devicetree/bindings/iio/proximity/st,vl53l0x.yaml      | 7 +++++--
 MAINTAINERS                                                | 6 ++++++
 2 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/proximity/st,vl53l0x.yaml b/Documentation/devicetree/bindings/iio/proximity/st,vl53l0x.yaml
index 322befc41de6..0852259754f5 100644
--- a/Documentation/devicetree/bindings/iio/proximity/st,vl53l0x.yaml
+++ b/Documentation/devicetree/bindings/iio/proximity/st,vl53l0x.yaml
@@ -4,14 +4,17 @@
 $id: http://devicetree.org/schemas/iio/proximity/st,vl53l0x.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: ST VL53L0X ToF ranging sensor
+title: ST VL53L0X/VL53L1X ToF ranging sensor
 
 maintainers:
   - Song Qiang <songqiang1304521@gmail.com>
+  - Siratul Islam <email@sirat.me>
 
 properties:
   compatible:
-    const: st,vl53l0x
+    enum:
+      - st,vl53l0x
+      - st,vl53l1x
 
   reg:
     maxItems: 1
diff --git a/MAINTAINERS b/MAINTAINERS
index 61bf550fd37c..a142a97be4cb 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -25093,6 +25093,12 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/iio/proximity/st,vl53l0x.yaml
 F:	drivers/iio/proximity/vl53l0x-i2c.c
 
+ST VL53L1X ToF RANGER(I2C) IIO DRIVER
+M:	Siratul Islam <email@sirat.me>
+L:	linux-iio@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/iio/proximity/st,vl53l0x.yaml
+
 STABLE BRANCH
 M:	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
 M:	Sasha Levin <sashal@kernel.org>
-- 
2.53.0


