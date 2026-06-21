Return-Path: <devicetree+bounces-314090-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kf6XB6XoN2oNVgcAu9opvQ
	(envelope-from <devicetree+bounces-314090-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 21 Jun 2026 15:35:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A5DE76AAEEE
	for <lists+devicetree@lfdr.de>; Sun, 21 Jun 2026 15:35:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=DTas8wc6;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314090-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-314090-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A2EDC3010157
	for <lists+devicetree@lfdr.de>; Sun, 21 Jun 2026 13:35:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4099A367B7E;
	Sun, 21 Jun 2026 13:35:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CB6E242910
	for <devicetree@vger.kernel.org>; Sun, 21 Jun 2026 13:35:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782048924; cv=none; b=F+bKJE9GRvXhXWFBjLtSanOuHRYxIo+1YBJLazoQoSdRdjNj+69Tv7rLeeSsLNbtftk+NGD/VCUNUm7x4gwSdBON+dmtp+FLc6++KAXL+1eYYuhrgt7LQpq0EYHhqhX3+0me6c4LP21Y+FYmivVUMYwK7MInEfBPzhCLOag5sb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782048924; c=relaxed/simple;
	bh=7JCnVAFhFlMcb0l+PNAP37agEA9T5pW/doTDbUhu+Mg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=GYiNEHl00Wq0C4IsVZY4F/zhKmfCcN7Qpmx1NMGe7ovHl+eJdIQ+A3iRmCWH2vJ6H1AYAPetF7Mddird8AaDuukfXYncUQmAU5AynSzNGy6YQ5DwdU6ax01yeQuTgMeIIiXK6mUniVKyf8Fq9mO+cv+HsXlwDZA589SPv5pPE8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DTas8wc6; arc=none smtp.client-ip=209.85.210.178
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-84347ad88edso2927035b3a.1
        for <devicetree@vger.kernel.org>; Sun, 21 Jun 2026 06:35:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782048921; x=1782653721; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=B2yda05V6cTcWFnExOApx6SpU7sKiC7KgPbiEUoNzwo=;
        b=DTas8wc6N2RUOUAi3Oyu73qEl+bN0C5ylatO38lZX+fu4bsF83LmGJ5g8czyMfbB/7
         SDWI0KVpgRLRNsTIw52jcglW6aB4y3HeDJbCWV0loJI++OlAESsEDpO033Ywvb96sGF7
         3n0agdyx/E2R7ClqibaJi/F2sIAznlP9okMDlHvUG8xmGSbToX6mgUbYeenqkG30H28i
         Q2LGqtRtODSgsdqCnkm0vkG8ClIIr9+pQaPPHg6Q47ZvMkcPnfQr7wja3OCr+APPbv4D
         Z1bP5odHR+57KSjz7O//U8YA0D6TfZZv3V4RTISRv3PcDPYRhip9OdC1ngjGompVwZSc
         IwaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782048921; x=1782653721;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B2yda05V6cTcWFnExOApx6SpU7sKiC7KgPbiEUoNzwo=;
        b=aJ8b2DNlFsDfToNwL52xt1/NYq0JEcfplhHLJErPoM0XU4L2SrSxGR6rkAGJyZdl0d
         jUv9uR/5ASlEvh45/yFiUiXtfTOIifU89r4OEveyBa4zVmqpsAw8WyLAu6bRnpiH/dei
         thxzsE0fmiRpLJR6b/QFDLULUF8ysZyS89W8Ku4ecJC1gKYO/vzJ8KYS9SXL+vcTAz/O
         ZuDiCm6dDCNr7XU6G8Z4auM4a1CdQxlQqi6ZhAfaAQkOJ4S84fdoyXCLE9ox+kVLSDau
         /K0/fxezaf3eMvEOy2EjeCxDP+GXazAWPg3NPaosSMfDmjULvKB0pf/io/AFmwxsQiFS
         nK2g==
X-Forwarded-Encrypted: i=1; AFNElJ8uu5/RzrlmClfXy/wta8yF0J+wdiYKxR6cX3itp6Wq918BgeDJg5LSj+RTmWSKj/DL/EFB+B4BDtGA@vger.kernel.org
X-Gm-Message-State: AOJu0Yzu8jsA7ei5vS+etqDWh57eK+cclYXSWYIYCI8LBIF9zqQZrx6z
	ncHetiHirLodhqmhUE/CsO5+lVkYeC089Ltpcdn1Bk0EFUJMHt0WYxwPKFNz7DmawWE=
X-Gm-Gg: AfdE7ckFgo6Haf8FQWgoISBaVdcvZEJoZPskIkjJTGLEh5PTLsdPWiHdNUgXGY8rejV
	UeQD3+i+k3XUgvYLdEBVDlal7f/RtVFPFOqRIUe6nw0/AmWeMa/sB4P5+TGzlE++hMydrf5XHYg
	oIO9DaRO0xvDI4wlegMjSb3cDZmUVIdq11QMUrhgAdJc9azbeWmwM2+Mj2evWxOlJ0+OUXIBMDG
	jGZqAFs27GPSxuwqDkf8VGtwc2qs2V/t96D1Vua12dlix/5lxnirqlSwMvvpXMaBAbogajMx7tf
	zmgbBHnbSXKgaL9yeu4IlaEx87m/iDr98LyZ883Pf/Z77XCO1+0qN9jMv+h3zJeHjgWcrBaVhWz
	sR9D79Xzz+hrp34qKkxJsP5u4SXQbXgknmZVYCvWrHvym6+h/ZyKNCakp4+Ga9lVDrPOn2VMJaT
	8KppnX255O09Bi+QgXOB6jWaK1ozKv6ILvlsStt8tG/w==
X-Received: by 2002:a05:6a00:2789:b0:842:6fec:1297 with SMTP id d2e1a72fcca58-8455078a336mr11186859b3a.9.1782048921205;
        Sun, 21 Jun 2026 06:35:21 -0700 (PDT)
Received: from kernel-dev ([49.36.101.14])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84564d6c5dbsm4502601b3a.12.2026.06.21.06.35.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Jun 2026 06:35:20 -0700 (PDT)
From: Aditya Chari <adi25charis@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	gregkh@linuxfoundation.org
Cc: jacobsfeder@gmail.com,
	devicetree@vger.kernel.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Aditya Chari <adi25charis@gmail.com>
Subject: [PATCH] dt-bindings: misc: add binding for Xilinx AXI-Stream FIFO
Date: Sun, 21 Jun 2026 14:22:09 +0530
Message-ID: <20260621085209.52651-1-adi25charis@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,lists.linux.dev];
	TAGGED_FROM(0.00)[bounces-314090-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[adi25charis@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:gregkh@linuxfoundation.org,m:jacobsfeder@gmail.com,m:devicetree@vger.kernel.org,m:linux-staging@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:adi25charis@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[adi25charis@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A5DE76AAEEE

The axis-fifo driver's compatible strings were undocumented, flagged
by checkpatch.pl as UNDOCUMENTED_DT_STRING. Add a devicetree
binding document describing the required properties
for drivers/staging/axis-fifo, derived from the properties
the driver reads via of_property_read_u32()
in axis_fifo_parse_dt().

Signed-off-by: Aditya Chari <adi25charis@gmail.com>
---
 .../bindings/misc/xlnx,axi-fifo-mm-s.yaml     | 95 +++++++++++++++++++
 1 file changed, 95 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/misc/xlnx,axi-fifo-mm-s.yaml

diff --git a/Documentation/devicetree/bindings/misc/xlnx,axi-fifo-mm-s.yaml b/Documentation/devicetree/bindings/misc/xlnx,axi-fifo-mm-s.yaml
new file mode 100644
index 000000000..8ef0adde3
--- /dev/null
+++ b/Documentation/devicetree/bindings/misc/xlnx,axi-fifo-mm-s.yaml
@@ -0,0 +1,95 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/misc/xlnx,axi-fifo-mm-s.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Xilinx AXI-Stream FIFO (axis-fifo)
+
+maintainers:
+  - Jacob Feder <jacobsfeder@gmail.com>
+
+description:
+  The AXI-Stream FIFO (AXIS-FIFO) IP core provides a memory-mapped AXI4-Lite
+  interface for sending and receiving data over an AXI4-Stream interface
+  using FIFO buffers. See Xilinx PG080 for IP details.
+
+properties:
+  compatible:
+    enum:
+      - xlnx,axi-fifo-mm-s-4.1
+      - xlnx,axi-fifo-mm-s-4.2
+      - xlnx,axi-fifo-mm-s-4.3
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  xlnx,axi-str-rxd-tdata-width:
+    description:
+      Width in bits of the AXI4-Stream receive data interface. Only a
+      width of 32 is currently supported by the driver.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    const: 32
+
+  xlnx,axi-str-txd-tdata-width:
+    description:
+      Width in bits of the AXI4-Stream transmit data interface. Only a
+      width of 32 is currently supported by the driver.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    const: 32
+
+  xlnx,rx-fifo-depth:
+    description:
+      Depth in bytes of the receive FIFO, as configured in the IP core.
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+  xlnx,tx-fifo-depth:
+    description:
+      Depth in bytes of the transmit FIFO, as configured in the IP core.
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+  xlnx,use-rx-data:
+    description:
+      Indicates whether the receive data path is present, as configured
+      in the IP core. A value of 1 enables the receive path, 0 disables it.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [ 0, 1 ]
+
+  xlnx,use-tx-data:
+    description:
+      Indicates whether the transmit data path is present, as configured
+      in the IP core. A value of 1 enables the transmit path, 0 disables it.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [ 0, 1 ]
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - xlnx,axi-str-rxd-tdata-width
+  - xlnx,axi-str-txd-tdata-width
+  - xlnx,rx-fifo-depth
+  - xlnx,tx-fifo-depth
+  - xlnx,use-rx-data
+  - xlnx,use-tx-data
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    axi_fifo_mm_s_0: axi-fifo-mm-s@40000000 {
+        compatible = "xlnx,axi-fifo-mm-s-4.1";
+        reg = <0x40000000 0x10000>;
+        interrupts = <0 29 IRQ_TYPE_LEVEL_HIGH>;
+        xlnx,axi-str-rxd-tdata-width = <32>;
+        xlnx,axi-str-txd-tdata-width = <32>;
+        xlnx,rx-fifo-depth = <2048>;
+        xlnx,tx-fifo-depth = <2048>;
+        xlnx,use-rx-data = <1>;
+        xlnx,use-tx-data = <1>;
+    };
-- 
2.53.0


