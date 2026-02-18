Return-Path: <devicetree+bounces-266414-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KLE0JHy3lWmNUQIAu9opvQ
	(envelope-from <devicetree+bounces-266414-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 13:58:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D7FEC156774
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 13:58:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BA860301FCB9
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 12:58:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6967631D74C;
	Wed, 18 Feb 2026 12:58:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b="e4PrTHY7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com [209.85.210.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E32E31E0FA
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 12:58:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771419510; cv=none; b=rMRGM9MBw1zzxrci1yaTtVcAfr9SzutvsYZa8EHUY//jx3Auhcoa+p9wev1WPe6mrXOCVqNPQNfGprt9uydLiRVUgtKPHVljf+m76vCRna2Dp2A2SpOwf0IsxCPexwBlsYRrNLoqeThdHuz1mOhVXgd0Q3qhaPDltUeqokups2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771419510; c=relaxed/simple;
	bh=1rCkpkHyHE3IPuAx81k2bwmc4nwhuww71wQ9MS0fnZE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=gipVGa7DHCyuDAgAEp5wgaZxido9PB7vsCSWUaKsoWefXuNNIcvYzpBCmkKxXoRE0QpX4tcnf+bhE0+p1sJ3XGKZDguy4Ginl1T2Dv0FSxO/u9PKG1iXgCadLuIXbsRWAu9ApzKlQVPqzAmCzH5YFUixwRivbBReX/5zWiTArHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com; spf=pass smtp.mailfrom=vayavyalabs.com; dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b=e4PrTHY7; arc=none smtp.client-ip=209.85.210.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vayavyalabs.com
Received: by mail-pf1-f193.google.com with SMTP id d2e1a72fcca58-82418b0178cso2945177b3a.1
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 04:58:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vayavyalabs.com; s=google; t=1771419508; x=1772024308; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3WO3LsK3AW3by8XZxWRGcuY2BsjgbgR+h9RmVDdaQIY=;
        b=e4PrTHY7+cXfMs4xzEPHxhzVh0jgNUPPt5HsrLyYi+lnWMqMoITNizr1yajyZudPzP
         Qkw+UUjpa6285ldFbb8KcctyYrmS86mCGiLsZ1nYvEu8bRLw4O3CCCBicHjLnkbzugD8
         ttHX7Ym50MOGcZU7S7GrV8RpJjsfwXPNueLNI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771419508; x=1772024308;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3WO3LsK3AW3by8XZxWRGcuY2BsjgbgR+h9RmVDdaQIY=;
        b=VQvjMbG1gehYBCZs02ecto9m4BkhB1l9VtUNPg3w3B0y6CXOAWmtkJ/cdhIN3CMFIx
         Cp1McvmRFhpZFfJlCy79NG3kwOn/2FXCnd2ethRbFacRMjWDZEc4i9bzWgt4cDoW+zgD
         KRZwgxGxSvMM4uaHJPfNIlkKFifQkMnKpzgmiYWd9giEPQnpWrwMEFN47SfvuKmxCqwe
         7gNTuqPd3NRnK3/i8ZzlodKxNOgtAOeBDwjxvOPtPPf630B9TktfBedGmW237prR9MEN
         RD+IMj+1o6kfvaxGMW7E0D6QJx6Z0Lr4ia4h7IuWbu9v1tg1jdwJbrZZ5XOtkR+YOywl
         qQFQ==
X-Forwarded-Encrypted: i=1; AJvYcCU+TD6Fe0SKumezjbM2qpiSCNwfuPVeotGFiPWLXAoyew3dUrqLSVNqVlFpPO9HHPWoIWWheAyfMdF4@vger.kernel.org
X-Gm-Message-State: AOJu0YyAC6xwaYcRa028LBmDF5KPRuYzshojBR4DCO0Kce2PUfEscutf
	Ib3w9JHC+VoO4d1FqBaxDtrFmo29PtqZh3d8JJS6CfZShvJqYa/itAGIsAtT7UwxkVo=
X-Gm-Gg: AZuq6aJ8VzsBNjkorhAc3Q1yzvvRgOiNR1EhsD72RDXzh61X1Z7D4sTQwmJxb8/glGr
	Rrt4qzxVnGbNoKDMXfOJWqHvfHGTaBKXMt51QzM96CL8c0pxkwSEG9CpArSTrjMLJc99ZflD/3P
	JgNeXZTaUFaUe3C+ENyEYcQC+oiyP2GwL4/RWV5YzP7klgOCGaubQEka8EMLCrKH1mP6OLke3H8
	3q0ZN5Z+PPgGxuYHhm7/0k7uiKYiZ4LhOVyyNIV/sBsfdJyGv9no49bxubBBdfq1T8lJh0QCBoB
	ZC+DUeFC/IyimLm9iHMt4g/BHaYQlNPHV0mll0gLqvwVNZZyy66xswm0INZTwe3vZcHH/hOAXe+
	sIhonrASdX/hE+vHULM+TugWyoeewUCWXa+J8brTEN8ezBpgTu0nYwHSvUeMcM33/jzARNKxYcw
	zoIdSoUEn8EYsw1oXBpHjpzWXHhuoqHQ/oYshQYLrfamtrXUeSARO4H9yx0todlP7NMfrOMyKTT
	SeF0Z7TUVYLnYsB08G/8yhsmt2jTydDqwUq72mvNAezvj0OXrrzkKQCZzShsHOm9F4=
X-Received: by 2002:a05:6a00:2d84:b0:824:1938:631c with SMTP id d2e1a72fcca58-8252776c442mr1988288b3a.70.1771419508618;
        Wed, 18 Feb 2026 04:58:28 -0800 (PST)
Received: from localhost.localdomain ([103.108.57.9])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-824c6a2afeesm19227464b3a.2.2026.02.18.04.58.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Feb 2026 04:58:28 -0800 (PST)
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
Date: Wed, 18 Feb 2026 18:28:02 +0530
Message-Id: <20260218125805.615525-2-pavitrakumarm@vayavyalabs.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260218125805.615525-1-pavitrakumarm@vayavyalabs.com>
References: <20260218125805.615525-1-pavitrakumarm@vayavyalabs.com>
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
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[vayavyalabs.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[vayavyalabs.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-266414-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pavitrakumarm@vayavyalabs.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[vayavyalabs.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vayavyalabs.com:mid,vayavyalabs.com:dkim,vayavyalabs.com:email,synopsys.com:email,2.98.90.0:email,linaro.org:email]
X-Rspamd-Queue-Id: D7FEC156774
X-Rspamd-Action: no action

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


