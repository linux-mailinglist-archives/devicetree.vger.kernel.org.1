Return-Path: <devicetree+bounces-277718-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wFuxKFncu2kkpQIAu9opvQ
	(envelope-from <devicetree+bounces-277718-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:22:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C558E2CA392
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:22:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AF9D7303005B
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 11:20:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AFB73CBE9D;
	Thu, 19 Mar 2026 11:20:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FAV6XE1O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F01CE3CBE81
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 11:20:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773919228; cv=none; b=J+JzRrF6O3512a0iE4oPfZKzN9uLAgRV8LEzwdWbPJB/yOlP9TCaEe3nvlafoMRnPhOfK8vVx2j2CXbknybpmM4vfPj5onR6d/GrbQVm6V84o2AtfsMjyqcHtpmziOdL9Od4LeYNRlfvhEjGEJuXgasU0VOxV/8XyrMSJuHdJik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773919228; c=relaxed/simple;
	bh=ciHLf7bevgqHXVV1Zx/xu9fwtsFudEQfZfvHtZh2a7I=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=d5iXmbYWnLksTkntiQnsYaUxZ7ylvzYCjSQK/214geUlqWdMFVBThFsslecSuyFuc2uF60QYoZl4SJeMtzD+zVO2C4JRc6QeKlLOyvaL0qXmDjzEvbdVMoHdrSuGATKO2f+NeT54VMsCe5D4rWZ5vfVH+TWrWbq1TZswhSRgaN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FAV6XE1O; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-2aae146b604so3754065ad.3
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 04:20:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773919226; x=1774524026; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tFWl6KgxoNw3rtXQXYIsDCxT8H3n54d3r9FBVbrDtcA=;
        b=FAV6XE1OKapXYVfwzSkbH2C8ngN1aKdxNWMwH9QxnKt9RcSDOezWJBGSrqO6yOpiaa
         frBaM814Q6vDzOsllSfdwfD292OFP0PqMEnxdiNitodzCW2tZ85sMQpsiL0oqaLvivx+
         e4Q0UUO23T4ax6w7qQuCZsdgHdThp4hj9R71AXXL4uECenfJidrAuKnzQNhCpwPDzR4i
         m/FLioTd5q5AOPDNYtjZYRIopJYAAr2NLMWc/wtgeQ/6L0TozALcAqeTtnGbyVDVKRDg
         kiHZO+qkzJunNz2pTI7ivKZL0yWr0fEl0pi9YhQjM/zD2VIKTf1wJtsQUOLlqcN9ubZM
         gT2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773919226; x=1774524026;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tFWl6KgxoNw3rtXQXYIsDCxT8H3n54d3r9FBVbrDtcA=;
        b=aWqBVkpwpwfvukTk2JfKStEQAXW2pJcUAFMrs6/xm99yqF0HaMSd78CbglqfngEiB/
         Cid0zowggdPuhI2b/QuhI+KIt9H4+4w4educNxzIHSQcBuDa0GvFiZ4J85MSbxBMegbq
         Rm+AiVDN8wUQCl9rk0JHy7zUvh1So06+ZRi+FKbRMAB0KP/z4NMTnLYQSYpKPSzz6+pK
         Z5RMDi9rRVydoMGseLk0nCIK+umm/m7XYGhnEj0uZW0dZArQhdI5qlTsHNdsAs9D/hVB
         WQx40vS/5kuWcfs/aZslCoJKPSRrmV3bifl8ioKWOW/EAIU+6Wnk0WL26xz5sdf1RCjm
         HuTw==
X-Forwarded-Encrypted: i=1; AJvYcCXm2WEjuB0uA/X/d6qU9yFHMxW8Elw3cGWCRVA1NOD99UwoXCamgEo+wCtgwR1CYHckLsqG+LrVgAH8@vger.kernel.org
X-Gm-Message-State: AOJu0YxNM/9MAu/3s14b7MeD3DvYUWfVhjECQVIZVhbLsmzKxcBpC6L8
	ztQEEm0fyWA49iTQHOn7RFUyC5JZASWocdoJjcr05cQodGkPxrS7LtgK
X-Gm-Gg: ATEYQzwzmbuoyG/ul3YuUpXOSUsKkWNuD/zYxFXVeZncl6SmcEI0xzv0JzVM1MtZlW/
	JS1Y8rvhXHNps7lUb7FkoFo/tLHxYkaCWhOcxJj7tfZ8Z57hZfXY30PWyjMg4hXQlNj6g0C7d58
	bhhszQMdlXNeVyEFUyQkWYhwi030Uzi+WjfZPiX3LtLLSoD+yetDyOGIrV6GFLWghuPR1aqa8gC
	h2sui/yFg6XIiG2+VWOeS3OcKKahq7dKuyr1lVR/ny0rT4FOORUuEQ9GCphvsEmZe5CfZYsHq9/
	vWxdCTZCm0FIyoS8wVkYnliT7Ktmqkqe+7wepg4Vl+xCJfy6H560PKTKYrn5FRPfSWUQ/eZHU8V
	T/x+5GxxIWNTi6S0vrk0M8O1oBr38QBqxLA0QB9X/qZJXk5sV6ma/SA0upuPqjvZnIzfYQr4We2
	6TrM6lRyOlvWRCo3btzYi111I1LrgOx78cXG34pq5Yn/mTXbyh53pw
X-Received: by 2002:a17:903:1aa7:b0:2b0:6d8b:6a07 with SMTP id d9443c01a7336-2b06e3d3706mr77610905ad.25.1773919226322;
        Thu, 19 Mar 2026 04:20:26 -0700 (PDT)
Received: from ubuntu.localdomain ([27.217.83.168])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b06e4199easm76524585ad.5.2026.03.19.04.20.22
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2026 04:20:25 -0700 (PDT)
From: Zaixiang Xu <zaixiang.xu.dev@gmail.com>
To: linux@roeck-us.net
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	zaixiang.xu.dev@gmail.com
Subject: [PATCH 2/3] dt-bindings: hwmon: Add Sensirion SHT3x and GXCAS GXHT30
Date: Thu, 19 Mar 2026 19:19:45 +0800
Message-Id: <1773919186-17515-3-git-send-email-zaixiang.xu.dev@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1773919186-17515-1-git-send-email-zaixiang.xu.dev@gmail.com>
References: <1773919186-17515-1-git-send-email-zaixiang.xu.dev@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zaixiangxudev@gmail.com,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-277718-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.942];
	DBL_PROHIBIT(0.00)[0.0.0.44:email];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_SEVEN(0.00)[8];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C558E2CA392
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add YAML devicetree binding schema for Sensirion SHT3x series and GXCAS GXHT30 humidity and temperature sensors.

Signed-off-by: Zaixiang Xu <zaixiang.xu.dev@gmail.com>
---
 .../bindings/hwmon/sensirion,sht3x.yaml       | 44 +++++++++++++++++++
 1 file changed, 44 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwmon/sensirion,sht3x.yaml

diff --git a/Documentation/devicetree/bindings/hwmon/sensirion,sht3x.yaml b/Documentation/devicetree/bindings/hwmon/sensirion,sht3x.yaml
new file mode 100644
index 000000000000..47dbb743e2ee
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwmon/sensirion,sht3x.yaml
@@ -0,0 +1,44 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/hwmon/sensirion,sht3x.yaml#
+$schema: http://devicetree.org/meta-schema.yaml#
+
+title: Sensirion SHT3x Humidity and Temperature Sensor
+
+maintainers:
+  - Zaixiang Xu <zaixiang.xu.dev@gmail.com>
+
+description: |
+  The SHT3x series is a family of humidity and temperature sensors by Sensirion.
+  It also includes compatible sensors like GXCAS GXHT30.
+
+properties:
+  compatible:
+    enum:
+      - sensirion,sht3x
+      - sensirion,sts3x
+      - sensirion,sht85
+      - gxcas,gxht30
+
+  reg:
+    maxItems: 1
+    description: I2C address (usually 0x44 or 0x45)
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        sensor@44 {
+            compatible = "gxcas,gxht30";
+            reg = <0x44>;
+        };
+    };
\ No newline at end of file
-- 
2.34.1


