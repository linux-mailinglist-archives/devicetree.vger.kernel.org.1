Return-Path: <devicetree+bounces-276954-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oACOCOlHumkFTwIAu9opvQ
	(envelope-from <devicetree+bounces-276954-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 07:36:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5B12B6791
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 07:36:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 68EEC304F23E
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 06:31:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECDA833E348;
	Wed, 18 Mar 2026 06:31:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b="RsStoXk9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAA5529D287
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 06:31:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773815499; cv=none; b=aAvmG97GNOGtkmqM8nV+P53UuBb4SkCcvGaV34lRGRVEiPE1dCKT5KLc9lz8hageXTziK8amGU+lxDtEfDftbuVXFsB9dQgU0iO78vNyHp7TzPUwmuYEqaLaIrAJiRxzP5NnkzAyXlahoJbVbJ1nRHb2Lv36njwS7AlJ1lGLgmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773815499; c=relaxed/simple;
	bh=1rCkpkHyHE3IPuAx81k2bwmc4nwhuww71wQ9MS0fnZE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=mPRmjfcjjEbPfeHLzNnOGCwk7mqozzWvXdN7owANGsZIoWz2gNO0y8nBPoCeZXZWgstXnqZq4f9j9hUDcEINkLeC6uYnAwo9YNQOSI/oIfQ8QYmB83udDW35fRSzp8ebTZoaFIFojqzSZOQoGvcKzcFrpZWGYyNa0Hp7u0zqM4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com; spf=pass smtp.mailfrom=vayavyalabs.com; dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b=RsStoXk9; arc=none smtp.client-ip=209.85.215.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vayavyalabs.com
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-c73e9e4cdf7so2197174a12.2
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 23:31:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vayavyalabs.com; s=google; t=1773815498; x=1774420298; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3WO3LsK3AW3by8XZxWRGcuY2BsjgbgR+h9RmVDdaQIY=;
        b=RsStoXk9YnpWSFWbW54z9hpv+mYRQIvlnQ0OvKmnED5RINrnIfHDLngLc0uwnLa6OX
         xkfsdNXWeDlZ1fIDcWovwFd8ZOZUEefYmGUlsUPMrX1P7hiWlupZET3ixizrcfjNrbAO
         0rz8qH0UQ+8ll/KI/EpHUrhxjduk/YxYxZVZs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773815498; x=1774420298;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3WO3LsK3AW3by8XZxWRGcuY2BsjgbgR+h9RmVDdaQIY=;
        b=ZPlquL+d751AoY/aeeXp9yq8NGPo9H3lm8WAMLnA3ilbexPQ3OajM9kgt9t/UWz9R2
         og31B6Xx5SeBhrT5Hu2ghWgy6lKBxwTmFEpnTIsQbiHLf70OKfs1nRGvfuS/RjQkucPO
         CIwraYtPSgEDf0GXTXbZDeRiStqrYvYeI7ETutc3mEatDmo2oVtBTJKzT/Vu5Of4LGKs
         Ve8uDkLQBU8O73ZerxnP8G3Xem53lCOgqCc1WffJy7we/LR62NKmmjv1NFJ0WQewPv8Q
         vj9JyzrC8+uMNOBKFotzPqxkFNeA0231XhwfgoQ2gOzPoJzQ0VwLqDfoB3oT/vp/CylQ
         DdsQ==
X-Forwarded-Encrypted: i=1; AJvYcCVWkmWXgCiFmevbxfkWoOKQcpbtsEzo7l/L54MYeDkRyKlAUH2Q+AxPbnXk5atN6M/oKGxscXjL60Dz@vger.kernel.org
X-Gm-Message-State: AOJu0Yymuq4aL/DUipJDUNzdTgl8FobL4Zcvi/DrT0gb3vj3zog6SUn+
	JxikQkq/TJCmkDcCpURgthsv/uRFZJGnOLA++AZJv4NJ2x1cxT6WzW1YVdShwe82CAK5sRjr42K
	vL5tm
X-Gm-Gg: ATEYQzzp/x2BXYAjmIkyC9Ot2bB1lrl7jXhPOzSRei3wIv4cpzGpIDb5zq1BJ3YJaP2
	iXF8agErDYsDywaAk98AbYcx24ZAturEe6ZvJnpx+KewPgk/5boCCH36MlChxGJIYe9T1tZ7KtZ
	CxxD630/0B9hg4GxKXH26I8DQgkhTi8XH4Lrr4Eam+jyDixBdzhhSj1+jk6elf2Zmxewy6bCEyf
	PReUc+8hH1FozJm3uXThlw5SokoYD3/bBV6nXtFGEfBRNrTn6gefilbrRU1Yb2JS5cEzuEkIcE+
	+J3NcBi42Box3oIa6KNsFDAe9I6cVVL7nJSqNQWCIu62dfeFKNWLoFReUZ5UdJrhRFS+Yx2+vwH
	8FJbQNjaHJhiDFigl8N0UrkXQ78dguqYu0G5zb+bfZ06iedH3XeHEYe+Ix4EtupTaQ+ID7r1emz
	Xxp0JZvAmGZXkBidJ/4eCj8dav3tB8zUb5Z+coDwZjWelA1C1fz9O8C1Ns2UmZAfEZyqdS1Y15n
	ouSnnfeZmaB1kHhBKNJjwKlW9nCZrmB8DaYYkl6Ib61numi3xazxCNIKw9c4DhQycA=
X-Received: by 2002:a17:902:ea05:b0:2ae:ab2b:bd75 with SMTP id d9443c01a7336-2b06e2fc015mr22581335ad.3.1773815498174;
        Tue, 17 Mar 2026 23:31:38 -0700 (PDT)
Received: from localhost.localdomain ([103.108.57.9])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b06e5ef3d1sm13620235ad.38.2026.03.17.23.31.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 23:31:37 -0700 (PDT)
From: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
To: linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	herbert@gondor.apana.org.au,
	robh@kernel.org
Cc: krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Ruud.Derwig@synopsys.com,
	manjunath.hadli@vayavyalabs.com,
	adityak@vayavyalabs.com,
	navami.telsang@vayavyalabs.com,
	bhoomikak@vayavyalabs.com,
	Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v9 1/4] dt-bindings: crypto: Document support for SPAcc
Date: Wed, 18 Mar 2026 12:00:09 +0530
Message-Id: <20260318063012.816060-2-pavitrakumarm@vayavyalabs.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260318063012.816060-1-pavitrakumarm@vayavyalabs.com>
References: <20260318063012.816060-1-pavitrakumarm@vayavyalabs.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[vayavyalabs.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[vayavyalabs.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276954-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[vayavyalabs.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pavitrakumarm@vayavyalabs.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vayavyalabs.com:dkim,vayavyalabs.com:email,vayavyalabs.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:email,2.98.90.0:email,devicetree.org:url,synopsys.com:email]
X-Rspamd-Queue-Id: 6F5B12B6791
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add DT bindings related to the SPAcc driver for Documentation.
DWC Synopsys Security Protocol Accelerator(SPAcc) Hardware Crypto
Engine is a crypto IP designed by Synopsys.

Co-developed-by: Bhoomika Kadabi <bhoomikak@vayavyalabs.com>
Signed-off-by: Bhoomika Kadabi <bhoomikak@vayavyalabs.com>
Acked-by: Ruud Derwig <Ruud.Derwig@synopsys.com>
Signed-off-by: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../bindings/crypto/snps,dwc-spacc.yaml       | 50 +++++++++++++++++++
 1 file changed, 50 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml

diff --git a/Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml b/Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml
new file mode 100644
index 0000000000000..857e5c6d97fc9
--- /dev/null
+++ b/Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml
@@ -0,0 +1,50 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/crypto/snps,dwc-spacc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Synopsys DesignWare Security Protocol Accelerator(SPAcc) Crypto Engine
+
+maintainers:
+  - Ruud Derwig <Ruud.Derwig@synopsys.com>
+
+description: |
+  The Synopsys DWC Security Protocol Accelerator (SPAcc), which is a
+  semiconductor IP designed to accelerate cryptographic operations,
+  such as encryption, decryption, and hashing.
+
+  In this configuration, the SPAcc IP is instantiated within the Synopsys
+  NSIMOSCI virtual SoC platform, a SystemC simulation environment used for
+  software development and testing. The device is accessed as a memory-mapped
+  peripheral and generates interrupts to the ARC interrupt controller.
+
+properties:
+  compatible:
+    items:
+      - const: snps,nsimosci-hs-spacc
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    crypto@40000000 {
+        compatible = "snps,nsimosci-hs-spacc";
+        reg = <0x40000000 0x3ffff>;
+        interrupts = <28>;
+        clocks = <&clock>;
+    };
--
2.25.1


