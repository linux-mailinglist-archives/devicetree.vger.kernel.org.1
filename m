Return-Path: <devicetree+bounces-296399-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kOPkFV1wA2p15wEAu9opvQ
	(envelope-from <devicetree+bounces-296399-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 20:24:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B1D852784B
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 20:24:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C78F4303B8B8
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 18:20:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 155613815DB;
	Tue, 12 May 2026 18:20:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gN/mtUVm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB0CB3803E3
	for <devicetree@vger.kernel.org>; Tue, 12 May 2026 18:20:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778610045; cv=none; b=qvu27PVuhx2ayrso/sGecRyNqZHVxxLXfpl57QPy1gZT42WQ8w5id6Q+pHBKJXrg2tFJjWcIHry72HX599VU0kfTFhLqRQN061+iHtLQ6VXQbizTUgWRN6gKFfTnNWpC+DfTwQu6JvIeeESJFfaP90LOp8t1gLcWWtdb9JEzdK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778610045; c=relaxed/simple;
	bh=pO8NlAmiTWkHmRBLgfiKkiU0z5nI5RLtmSmBflRQil0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=oF2/VFbtZNqOQFB9fGfJz98EbQJcGfawsvBjsc0LWUqlMgUMN4ptI4GGrllBSz34apA47jPpu5HLzriqXYI6WZnNg1tfCh+/Iyxkucqx7+USdMVdTUg9NApnhxb0NmSw8Vs8QeJzW47MJf3FQmcTYPSvnN2eGuIFp9ub7uqSAcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gN/mtUVm; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-c8026aa4d53so4148529a12.3
        for <devicetree@vger.kernel.org>; Tue, 12 May 2026 11:20:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778610043; x=1779214843; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ofX8j/LRQqY8OmZou1joEHESeXuEQsIjw2iTr6XNHZk=;
        b=gN/mtUVmLIcvbdVIueQNlnvLHZfJVuBCNW1TbwvUhY5xpibncZaL1asYahRe+HZjlD
         iSOvDyl38MzQXDYhhTweT7tdlKd9F+a9GCxvcAu14CEmwMcifSUznO4XLBzHn9W7WoNL
         SMQSrmbzySeVe9mD2nq4U6j2Yb/ZdzR39/wTQDEOcJ9i766e8ypPYgoW20yltGypvP7q
         uwb0dDyOlHsKeYU/VK9sz5yeu5lrvFCPaoLKXWAk3ziGv/v/a3kpmfgEMt1x5izx5uyP
         +B4zYA+rFIzqEOShVL01yEsgh9p9FOiGV+mg+jlEnLtmQkCRqT9Z9gsEB7Rmf8IsHFqd
         57aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778610043; x=1779214843;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ofX8j/LRQqY8OmZou1joEHESeXuEQsIjw2iTr6XNHZk=;
        b=rak8FJqEjBSnO6rU0Oy5b+gk/TDOmMAmRhDbULDm2DjbNanrTXQf18zF2+38a+efdM
         sptS2jBIyqdJWGCL9WB5NuLHzF14fumUSISRKvLri3yB78OOrT+52i8wFMuXuXEl8kzU
         F+7b3Ql0O72Rs3E2TzLf1j4C5Coh0NKu2Q7VppzCjxzxCCRivJRakOp9fBVWvmPxWzo2
         rCB4VQLOsDwx5ylnd44R6+jukHO9w/VukQ4NQ0D6a8/Eb0gZ86YU/SErtkOZcdz1d6yP
         SAvhUqAKAPhQvT5KwgCQ1u2htpJTHEco46/lE4sWqapqEnNOLxMpGEGlq0dQhbGp9Lk5
         NImg==
X-Forwarded-Encrypted: i=1; AFNElJ99mmoMrs7+CqNK96zPxhfXxXySjYQEc/ZJx/qhL4FRNo9R7r9XIKOePIXefvHUZut4tYeKmAOpausX@vger.kernel.org
X-Gm-Message-State: AOJu0YwpdmnxQKVtICoUZoKFDhodJJ2RV6cYyOa0tyQ8kHZ93sot0ETA
	xb0iJFMbrUI8nOol8v0m5gQVMUaWt2lxydleKm2zc6NUFqROG27VKMpZ
X-Gm-Gg: Acq92OHS4YIlCsSpUokODkEj/xy9afL6xWn7dG5vmzblW8H5fHh5tNsq4nCiMmRy9MU
	mWz2OjPhZvASR8bG/QK2TFyEKvu8e+1hDEGw2FxIcSW+Z5P+GsJJiqZMrQhxw588q9Gsm/0bwuC
	u6vcV0jHa58lGh+dX5+EhmYWWYcYDp6/q8ISYlpGjyIVWoUVHgEHoQpd7RMZE0GShtSoSPMh2Gu
	qmLUEQb4XVhGv8zWAq11CfQ7LzWhYk1hpZt5tuATR3IgMWDMi2oP6UsDSTMZ4glSBPo2vqk7nsj
	Fj5JnDLjHWXppjSQczp5sx2FHdnCUgk5R/CHc8sYU3ZqW7JNbb7y+qK9dDuqDshYkMDdUaOsysv
	nBELnpDbHsyQkWt8x/5LVY4p7/eDaVCOHlrFqAzuu/Xb32aKRKO/KirvHXKdsg+pD4o/JULnp5B
	TJofhAuXdr83B/omOxdTSujKQllvPjy/sl5IxfuYr605Uc5B7qU6BEWgC0bcx8nWTmuxCfW/F3Z
	UUP
X-Received: by 2002:a05:6a20:1590:b0:3a2:d79c:416d with SMTP id adf61e73a8af0-3ad99f243dfmr5200035637.43.1778610042797;
        Tue, 12 May 2026 11:20:42 -0700 (PDT)
Received: from Ubuntu.. ([49.37.171.24])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c826767bf53sm12478739a12.6.2026.05.12.11.20.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 May 2026 11:20:42 -0700 (PDT)
From: Manish Baing <manishbaing2789@gmail.com>
To: conor+dt@kernel.org,
	mdf@kernel.org,
	yilun.xu@intel.com,
	robh@kernel.org,
	krzk+dt@kernel.org
Cc: trix@redhat.com,
	s.trumtrar@pengutronix.de,
	linux-fpga@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	manishbaing2789@gmail.com
Subject: [PATCH v2] dt-bindings: fpga: altr,socfpga-fpga-mgr: convert to DT schema
Date: Tue, 12 May 2026 18:20:33 +0000
Message-ID: <20260512182033.66222-1-manishbaing2789@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 5B1D852784B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-296399-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[redhat.com,pengutronix.de,vger.kernel.org,gmail.com];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[manishbaing2789@gmail.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,pengutronix.de:email,devicetree.org:url]
X-Rspamd-Action: no action

Convert the Altera SoCFPGA FPGA Manager bindings from text
format to YAML schema.

Signed-off-by: Manish Baing <manishbaing2789@gmail.com>
---
Changes in v2:
- Removed Rob Herring from the maintainers list as per Conor's feedback.

 .../bindings/fpga/altera-socfpga-fpga-mgr.txt | 17 ---------
 .../bindings/fpga/altr,socfpga-fpga-mgr.yaml  | 38 +++++++++++++++++++
 2 files changed, 38 insertions(+), 17 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/fpga/altera-socfpga-fpga-mgr.txt
 create mode 100644 Documentation/devicetree/bindings/fpga/altr,socfpga-fpga-mgr.yaml

diff --git a/Documentation/devicetree/bindings/fpga/altera-socfpga-fpga-mgr.txt b/Documentation/devicetree/bindings/fpga/altera-socfpga-fpga-mgr.txt
deleted file mode 100644
index d52f3340414d..000000000000
--- a/Documentation/devicetree/bindings/fpga/altera-socfpga-fpga-mgr.txt
+++ /dev/null
@@ -1,17 +0,0 @@
-Altera SOCFPGA FPGA Manager
-
-Required properties:
-- compatible : should contain "altr,socfpga-fpga-mgr"
-- reg        : base address and size for memory mapped io.
-               - The first index is for FPGA manager register access.
-               - The second index is for writing FPGA configuration data.
-- interrupts : interrupt for the FPGA Manager device.
-
-Example:
-
-	hps_0_fpgamgr: fpgamgr@ff706000 {
-		compatible = "altr,socfpga-fpga-mgr";
-		reg = <0xFF706000 0x1000
-		       0xFFB90000 0x1000>;
-		interrupts = <0 175 4>;
-	};
diff --git a/Documentation/devicetree/bindings/fpga/altr,socfpga-fpga-mgr.yaml b/Documentation/devicetree/bindings/fpga/altr,socfpga-fpga-mgr.yaml
new file mode 100644
index 000000000000..9bcc1200d61d
--- /dev/null
+++ b/Documentation/devicetree/bindings/fpga/altr,socfpga-fpga-mgr.yaml
@@ -0,0 +1,38 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/fpga/altr,socfpga-fpga-mgr.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Altera SOCFPGA FPGA Manager
+
+maintainers:
+  - Steffen Trumtrar <s.trumtrar@pengutronix.de>
+
+properties:
+  compatible:
+    const: altr,socfpga-fpga-mgr
+
+  reg:
+    items:
+      - description: FPGA manager register access
+      - description: Writing FPGA configuration data
+
+  interrupts:
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
+    fpgamgr@ff706000 {
+        compatible = "altr,socfpga-fpga-mgr";
+        reg = <0xff706000 0x1000>,
+              <0xffb90000 0x1000>;
+        interrupts = <0 175 4>;
+    };
-- 
2.43.0


