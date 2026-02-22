Return-Path: <devicetree+bounces-267179-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oPixHg43m2mVvwMAu9opvQ
	(envelope-from <devicetree+bounces-267179-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 18:04:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 26B0316FD2A
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 18:04:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 63E54302A697
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 17:03:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05AD13590C3;
	Sun, 22 Feb 2026 17:03:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iy44WVq+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com [209.85.215.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD18335B138
	for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 17:03:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771779823; cv=none; b=oue/raiYDZM1ydgU9ll5UV69U+zL5Beo7gcr+LHthHUKgRLCty9XAT3SQFKvw8cMUiPYkaYRl0mdIbglTworPFBu0Wsii2kAOnfQeIE4g9HFlujZN7OcXlaDGa/ibd8cSoeuqvVjdA51KCUF0uh1fXDfHZkTAFuWmZybLVjtobA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771779823; c=relaxed/simple;
	bh=QNQ96HGA1Jlb2HSFik7zjV20cCZdyppLBAw2ZG+2yoM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=SWmRy/z+feO2W2frVX3Tga5f5vjN09vGEh0EcoyNjTyVfTmIy7OVEqOz7hz4cdXVywcPmpBFcJ4Vgok3rHtZzeGkFT+Vj0nfLBOJrArBm+LLXLnCFig7Fcu4JYFD7YeFN3Ji2cjCmKfOTZUNxbE+rmML+7eDjs7PH36S6wfg2+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iy44WVq+; arc=none smtp.client-ip=209.85.215.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f194.google.com with SMTP id 41be03b00d2f7-c6dd5b01e14so1196896a12.0
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 09:03:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771779822; x=1772384622; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=38KBnvM7PCRrBqcA9t57q6k9J3NtXhDDyDB2bhfoX+4=;
        b=iy44WVq+Nw5YGxDZqLLIKzvyGEVCufNHuffrNVxW0pL1N8L6y8BcxwsLR8qd24i29J
         ApYeOJzEjwiMUStRd3vgw+amwwA4Qnz3pVU0ok3XaGJo8XeGZWVeGiQkCFiEpgPKmsfQ
         ibivqSEW75rWLiVfigCvdq99hIn0m+1sTVpZPvy/J3ywDfXJ66EnvlQ3WRKyQ5JnaJtK
         SjBE1FO2b7vf6w6wwsbi0O+6dP8F1YhZVWhjZSWxosXMrYYSwTTUN3YTyu3jZx/LZyKZ
         lGesRxW2tD/TQ//LGzpJuSk4bej4Ds19RrC6objR0Hm/Krwp56R8SNDrdKRHa5OcfcEn
         Kx4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771779822; x=1772384622;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=38KBnvM7PCRrBqcA9t57q6k9J3NtXhDDyDB2bhfoX+4=;
        b=u85BxbpoCTJgMjWPPb7jQY3Mo7xnJnTOkT7XdsyPkefW1AAQiLMV80PZqoGEnD/Lv+
         ry4Ne63KMRekNcCgCFX6OOw0qdRlTgo09QT99leQfAtJQ3KC1ooxNGePnxoCvlPSRgYb
         MXumu3+RMMkfABRMGxkydU/9BpW941ylKdodA/6LStF4fSX14xrJUbVkEEANG/sKmBef
         ePszL9lQ2INqjjDtu7vk1w8wIYXdWHprMHzelth4vlnQ0eXJFWRVZK66kzrJsM4xk27o
         SBxmu1n8xn1vheKLnnuCj09Ybn3ycHpnFMEtDMZ1X2l0/tpM36ytkSehERt2UJWZtonO
         6zGA==
X-Forwarded-Encrypted: i=1; AJvYcCU8fYLxjIW6iV8YK/KGON4aHgEZGu0eVx/h0TQ5aWgIKh3Hl+o+Haik6xFv779k+9AKyE4lLg4zpC69@vger.kernel.org
X-Gm-Message-State: AOJu0YzfYS8ax7I2/QJRPJHTqpxx2CwZzPKp202Gtl5p8TZnwDPDbAPg
	HGMgvbMrQLFy/zTw/iWMYtGWVBX5K0pLmQLkg5kuR1NFS2rolKoIS6zJ
X-Gm-Gg: AZuq6aLSPmcNn1RI+Uu9TBQmwntUtNkYblcdbE9Sam6PpxChiyqzwhICuo5BRSodlSg
	B8pt73Dz47+lz9XOxWR1vddDRpu2sbGe8ejTIU1iw5pR2z68chh/2O97xMn1UIyDxMzSPj/W0Cd
	yjjc1kVgkipvbLtPn5pLJbSFTB56PYHWzzkj90ZPwc4mqhdMPadnQLKt1u22u0oDjdtFTKaysmU
	Zcp0LG8ryfhfK8aEfW40BDw0ST3gu2c0lgBD6/8vts1iUuDjFLorPbdCaxCs9Uw81DRIW27m4e7
	gUlQ9PJgtJWc0r95XY0leshpU4jZkAMK7cKCCaD0/gl8BwEfTVK512P1+1CiPR2au+JTKB4HJNO
	OK3ZrcLvLx/tIDXYTRI9pF4Kko9i5W0YYbeoHp5fPIkj1P8dtv+cHmj1ikSeq6e7cd2HZ/PuhuX
	8u8zGvMcppF68dzSuU
X-Received: by 2002:a17:90b:39cf:b0:341:2150:4856 with SMTP id 98e67ed59e1d1-358ae8a42d3mr6286329a91.17.1771779821916;
        Sun, 22 Feb 2026 09:03:41 -0800 (PST)
Received: from yu.. ([120.242.225.43])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-358bf39ba25sm1555688a91.2.2026.02.22.09.03.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 09:03:41 -0800 (PST)
From: Hao Yu <haoyufine@gmail.com>
To: linux@roeck-us.net,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: jcdra1@gmail.com,
	akhilesh@ee.iitb.ac.in,
	linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Hao Yu <haoyufine@gmail.com>
Subject: [PATCH v2 1/3] dt-bindings: hwmon: add aosong,aht10 family
Date: Mon, 23 Feb 2026 01:03:30 +0800
Message-Id: <20260222170332.1616-2-haoyufine@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260222170332.1616-1-haoyufine@gmail.com>
References: <20260222170332.1616-1-haoyufine@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,ee.iitb.ac.in,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-267179-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[haoyufine@gmail.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.0.0.38:email];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url]
X-Rspamd-Queue-Id: 26B0316FD2A
X-Rspamd-Action: no action

Add device tree bindings for Aosong AHT10, AHT20 and DHT20 sensors.

Signed-off-by: Hao Yu <haoyufine@gmail.com>
---
 .../bindings/hwmon/aosong,aht10.yaml          | 41 +++++++++++++++++++
 1 file changed, 41 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwmon/aosong,aht10.yaml

diff --git a/Documentation/devicetree/bindings/hwmon/aosong,aht10.yaml b/Documentation/devicetree/bindings/hwmon/aosong,aht10.yaml
new file mode 100644
index 000000000000..6eb3944ae3da
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwmon/aosong,aht10.yaml
@@ -0,0 +1,41 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/hwmon/aosong,aht10.yaml#
+$schema: http://devicetree.org/meta-schema.yaml#
+
+title: Aosong AHT10/AHT20/DHT20 Temperature and Humidity Sensor
+
+maintainers:
+  - Hao Yu <haoyufine@gmail.com>
+
+description: |
+  The Aosong AHT10, AHT20, and DHT20 are I2C humidity and temperature sensors.
+
+properties:
+  compatible:
+    enum:
+      - aosong,aht10
+      - aosong,aht20
+      - aosong,dht20
+
+  reg:
+    maxItems: 1
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
+        sensor@38 {
+            compatible = "aosong,aht20";
+            reg = <0x38>;
+        };
+    };
-- 
2.34.1


