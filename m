Return-Path: <devicetree+bounces-278004-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SCmDAcNJvGknwgIAu9opvQ
	(envelope-from <devicetree+bounces-278004-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 20:08:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 482482D187B
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 20:08:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5CD5C3014918
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 19:08:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7752639184A;
	Thu, 19 Mar 2026 19:08:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62C0921ABC9
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 19:08:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773947303; cv=none; b=kdaj852Mq0YkpHOWGi7Pf35b68cWTwFaLxSroYQRj45M4dAGg+h40SUM+H3+XC9DQqBjnJsm1X2gfaxQU1ndqGdKDE0qow2IrgFA1lo6LHQMtoXHsJJVHS8iBTUlFxdNJ4TjMxhMmBw2ibGrXPlzF/sy9+o/8TisK886jdEOy/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773947303; c=relaxed/simple;
	bh=4EjM03UFJMwqRWaq7ljPoN1VcURwDrGCpwR4elzGh/8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TJ6nR0p1Fr6R+sGLpCPUvhIx5hDSr6uNwIK66in4LIQ/sj42I3Hm1jLh8JFLd4fUcUjl1d2I5hWYYPitOiutDFAZRK9Erg414X5JFgK2odc88OdR5DWMO0+SZWNcNOJ3X9YPOWqdyrEz2zrZqeCCKly/g/wqK1c2TDAsNvSwXo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2a9296b3926so10243175ad.1
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 12:08:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773947301; x=1774552101;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Po+4YFI6AAfzY+YOM5ZAkfP6UA8LeTc7pa82LaIBMFc=;
        b=ljM9wSk1EWWM5y3SvCubj+vlB3xlBMO+oi+CSCK7hKaLVlClzWEPyr6PUb8v6/xzI4
         h9wsSyAsULLTEbsVs3K86X2vksOhasNFznkZ8hjbajU+AYGLDV3NxavetqpX5UQ5h9AE
         4d/HYsc7Zjbvub8qFbylRZMwvRjhFt/OMvR797K/EzUscr51HmWnH1EDTqUhkEoc2D3Z
         ypTX6FDedgz6OVRVHnfvwsunYYQ43Xd2QF2c1DSR9TNhJZCigCpTwNk8N2TJKRI13kYc
         4PEi1N812/4m4ffwoF4SPPfNTFMwtN2E9kvOdnDP0VMwCdnR5kVhMtmtH3Lgkhigf4wM
         SQaQ==
X-Forwarded-Encrypted: i=1; AJvYcCVdwyLQo1UgyfFtEnKdbqMeVDs8+ARzBe/8jamAzpIQ2pEJ4+8Iuycuaxh67QtziyR3FUUszLHlAm1f@vger.kernel.org
X-Gm-Message-State: AOJu0YxVyWlKzvNXlVRhXW5iR/yEond+nrj1NUO0OP+mGtBRFJ6V8O+H
	DinSdoyMY6hyjNnyLnkjxK4ZZXCOWWXZmehnT625Q+QSmpIyU7L1kfXWrHeOpz0Xo/c=
X-Gm-Gg: ATEYQzxDF6VQig4RFelG96nZPhIdAEti9nvDXhGh6llilMxqX9BpSVg6Pqe328iYwHg
	R8D+mZHkx/JVE1UMbjrDLEm3XpDpMmBQXua9INEnFPniIXOvCzU2FuY9PhTOQJeGCs2M6Q2mnrS
	Djf6HaoL4dJ5TidLe5TY7CwaNzVP4/qdcNMQICCnHMutjinDjKcVkzg9+AaQn0GGG/Q866/5BLw
	18QMavesHi1YzyAgh26OdQ4M54kKhTsSYZkTRHVlDQHpIubkQX+ndrJqvJr+snKVGhWTUEgUK/x
	jfTtGs3/AXAvtF5lFljKFsvz+pc+/SLt+/ZNDp1soJYsV2XGYtIcCjIrlqFXhNa8ArU4cD7e99E
	mTp3YtrOOhNnf9tJ7DcDYId0rQekfYAdXLXjvH13r8MzmHz7AyNWkRvzXbwffz+d4I0NJP2CSPb
	RxsnqJeekku0fYz8pPnsXTQSgmIGS42uB29iLGSyERIZAuvKdZxL7xCipBHuS/RRXZzii7rsR64
	a2PUv3D6ME7PciCXPMjyoDIBA5H
X-Received: by 2002:a17:902:d510:b0:2b0:4eeb:f810 with SMTP id d9443c01a7336-2b082769d79mr3545765ad.31.1773947300517;
        Thu, 19 Mar 2026 12:08:20 -0700 (PDT)
Received: from archlinux.www.tp-link.com ([103.135.252.21])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b06e603b2asm68665345ad.55.2026.03.19.12.08.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 12:08:20 -0700 (PDT)
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
Subject: [PATCH v6 1/2] dt-bindings: iio: proximity: add ST VL53L1X ToF sensor
Date: Fri, 20 Mar 2026 01:07:13 +0600
Message-ID: <20260319190738.151614-2-email@sirat.me>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260319190738.151614-1-email@sirat.me>
References: <20260319190738.151614-1-email@sirat.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [1.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_SPAM(0.00)[0.209];
	TAGGED_FROM(0.00)[bounces-278004-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DMARC_NA(0.00)[sirat.me];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[email@sirat.me,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_NA(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.29:email];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,sirat.me:email,sirat.me:mid,linuxfoundation.org:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 482482D187B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add device tree binding documentation for the STMicroelectronics
VL53L1X Time-of-Flight ranging sensor connected via I2C.

Signed-off-by: Siratul Islam <email@sirat.me>
---
 .../bindings/iio/proximity/st,vl53l0x.yaml      | 17 +++++++++++++----
 MAINTAINERS                                     |  6 ++++++
 2 files changed, 19 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/proximity/st,vl53l0x.yaml b/Documentation/devicetree/bindings/iio/proximity/st,vl53l0x.yaml
index 322befc41de6..de09f709850d 100644
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
@@ -21,12 +24,17 @@ properties:
 
   reset-gpios:
     maxItems: 1
+    description:
+      Phandle to the XSHUT GPIO. Used for hardware reset.
 
-  vdd-supply: true
+  vdd-supply:
+    description:
+      Phandle to the vdd input voltage. This is physically required for operation.
 
 required:
   - compatible
   - reg
+  - vdd-supply
 
 additionalProperties: false
 
@@ -38,8 +46,9 @@ examples:
         #size-cells = <0>;
 
         proximity@29 {
-            compatible = "st,vl53l0x";
+            compatible = "st,vl53l1x";
             reg = <0x29>;
+            vdd-supply = <&reg_3v3>;
             interrupt-parent = <&gpio>;
             interrupts = <23 IRQ_TYPE_EDGE_FALLING>;
         };
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


