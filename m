Return-Path: <devicetree+bounces-276978-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QEF1MfBSumkAUQIAu9opvQ
	(envelope-from <devicetree+bounces-276978-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 08:23:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E35E2B6DD2
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 08:23:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 428BD3069636
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 07:18:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B25EC33D51A;
	Wed, 18 Mar 2026 07:18:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b="IGyPoxBn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8083D23183B
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 07:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773818334; cv=none; b=CTTacN8SctZP7IdzE3ObteIewPdMxfHYbq4lPfGHsH3vXaJ8vp4qCf38GVSDBVifx4tMA6OsW9SNB9gNVPyX6h0X482qRRj3YLYvcKgX/WHboSGzf05g1H5sklbsVPPZ5LSdTpVkJ7kEFEMD/6y7n+HL1NpSamgGa8oWinir93I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773818334; c=relaxed/simple;
	bh=1rCkpkHyHE3IPuAx81k2bwmc4nwhuww71wQ9MS0fnZE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ZJao8fYupmrdPM32CYfxPeapwOKEmipQYhPlMOrZhkUiJSHwzLG4/UgUUWaRbJtlmuSxUJrCrpbfdwICrDsYvU0QxC2o4pcSi1nNx4cE15IYDjd7S7Q6jkMESXo1cJ/ZjcLIYbxE5aAT/wiFTDFn8fln5jf7mNaeBzprCSGZZNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com; spf=pass smtp.mailfrom=vayavyalabs.com; dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b=IGyPoxBn; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vayavyalabs.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-82a124f3a5bso3702119b3a.0
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 00:18:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vayavyalabs.com; s=google; t=1773818333; x=1774423133; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3WO3LsK3AW3by8XZxWRGcuY2BsjgbgR+h9RmVDdaQIY=;
        b=IGyPoxBnx6qqElcHAP6txpKV6wty9ZdWQxtZVztneLX2voo8N0/T8jvP1IWNBnpqSy
         ypawYDNBisgJqou0BgMzrLM+RkcNHK3rZR/bwsE6EjtIp77OU0u+7/VmGXmn3Zp66BrW
         NJsj0I5Ckk7URtPJNk9yqlCRwOfA+rGm7o6nE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773818333; x=1774423133;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3WO3LsK3AW3by8XZxWRGcuY2BsjgbgR+h9RmVDdaQIY=;
        b=oVYPIEePm6ztxAooyU9SEU+jtoMtqb5ZD6PBbksW+hnTeN0yug8CDXQr9eBzpdjYDg
         T/AUpYc/tpB8AO9hdJHXYBRCCktiEFtBZ99VAxX17IAPdsKtsvHsT8wm61e7Qa9CR2SS
         +XW5n+Oo49cAqjf0KELSv8XXFw7NJeDjN4D3gaoj/DK2GV0euiLw2/OuryDusirtApMr
         NIZeeYpaQR/kc4MRy2rT4vT6AsbfV0tsTEDHh8xrLW3YO3viyZU+1CNfQn7LOeXWei7H
         ZYDPRAY5fbG2k6YFCywijzUdB+nfoh7RHQM9Ibs6qadqpQLSpoSxPrhamNNGnHbPeAzF
         d0Cw==
X-Forwarded-Encrypted: i=1; AJvYcCU/kv2uL9xde0+yKfKNfqS38KEgSB/ZtJJHcqdrBm5CKuvLPWuieQQRUTP81i11ioWwowgTWCg5VBl0@vger.kernel.org
X-Gm-Message-State: AOJu0YyZobjwpCN14atWtrBwRmC/Aj2Zn9b+zulLhSSfQOj2ZIgEKgqG
	nbf8+g2QE6gHKFidvjV6kuxCTfX73ROpxoQtsTc5t5ici2r9uT5h9W0Vbt6hCEjVbho=
X-Gm-Gg: ATEYQzzBzJqEzu5741hbroE2LT/JTSlZe4qx27YnbZor9wzRbrw8Ce8HBFjTC7ho9KZ
	1vGgX4Vvv0hnKZaYMo95l6K/ZGSCvkee3Gi/3VwjLsB9LtrmTxEm+F6PsC8xALn2vT96LEwDypP
	No7DkEXwtE9zX7z6n1ngVIWgEPJWedSkRUD3SNdjdFJ2tysDWWQsONcpsn+Sg8acqtGj1J2dwLU
	fW3O/3++B8851eNfTkN8DAjdfEJ47rlcGeBc6rbG4qu42O+17vC/y9Sw8+TUYk+guQXU0sTffqc
	Ya5PINMPUA3t++WoiSWJFaaetLW/wdv8szZA2B3YP3mW6GhJCtoKmjuwo2o88VXiEkyS9Dd6eWR
	7cAHQ8X2Z93HGiZuNbcOlaV+7UtpL42XzeAbrsgyFc4fzcIQk6dis6cjF+/Rn3z3Et1aoI375FG
	sKxJ/n3S/7TjCXTXydCoeMXLXW8uGtVAwAOz6MbpGeuQfl9dGOGal1rzJfr74UXb36xvu16oWcx
	7wnBlvs0ayg0ZA7rQQZWuR71Xn2lqsjmQR1OSrHgFkITsfeNVg5zyCHXMDaCOgTi9A=
X-Received: by 2002:a05:6a00:3995:b0:821:81ef:5de8 with SMTP id d2e1a72fcca58-82a6adc7745mr2249489b3a.12.1773818332847;
        Wed, 18 Mar 2026 00:18:52 -0700 (PDT)
Received: from localhost.localdomain ([103.108.57.9])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82a6bee89d5sm1613669b3a.51.2026.03.18.00.18.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 00:18:52 -0700 (PDT)
From: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
To: linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	herbert@gondor.apana.org.au,
	robh@kernel.org
Cc: conor+dt@kernel.org,
	Ruud.Derwig@synopsys.com,
	manjunath.hadli@vayavyalabs.com,
	adityak@vayavyalabs.com,
	navami.telsang@vayavyalabs.com,
	bhoomikak@vayavyalabs.com,
	Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v11 1/4] dt-bindings: crypto: Document support for SPAcc
Date: Wed, 18 Mar 2026 12:48:05 +0530
Message-Id: <20260318071808.817074-2-pavitrakumarm@vayavyalabs.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260318071808.817074-1-pavitrakumarm@vayavyalabs.com>
References: <20260318071808.817074-1-pavitrakumarm@vayavyalabs.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[vayavyalabs.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276978-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[vayavyalabs.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pavitrakumarm@vayavyalabs.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,vayavyalabs.com:dkim,vayavyalabs.com:email,vayavyalabs.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,synopsys.com:email,linaro.org:email,2.98.90.0:email]
X-Rspamd-Queue-Id: 1E35E2B6DD2
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


