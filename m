Return-Path: <devicetree+bounces-277328-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +HFbHHbGumlobwIAu9opvQ
	(envelope-from <devicetree+bounces-277328-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 16:36:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B0FE62BE58C
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 16:36:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E19CC31E6F20
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:16:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06AAF3EBF3B;
	Wed, 18 Mar 2026 15:14:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="gQyBQvUF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAD483921D5
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 15:14:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773846863; cv=none; b=tLrTWfTh/phw8bV/gm/MdB6NjkaXo1xVkn+1x7cwAWFBaOUuUvLA5ekl0V8cS4a0x7xCsEZBzzw5VNatr58QX9qKxSMZK5HBvVp5I8c7FowNL0+QBKTLo5G2S1c24wvpGfNkScmtN/0irMJ5wefLnQ4hV+SmTuX76c8yhqmI8Ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773846863; c=relaxed/simple;
	bh=YlLGNqmO0oy++jL1h69SEkdAlw0brbHAP6D6yct/xFM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZQptZTatp5MK5QLURXgDJzzsoNjAy7806XETVA7wJhcWmlfadI4mYbrLM4kiw0zMwjJlGY/GAEaiy9tIT84Xt66Mz0nzZgA45S5EoDwDi6jMyLEz+/mYY2aHvwr9FFbAaL/6JfOTT8zce1RaIxyK/p4u7/xbL9DkMK7LvmQ4HqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=gQyBQvUF; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4853e1ce427so78465525e9.3
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 08:14:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773846856; x=1774451656; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HqLAHEEwXnFAkIE7EWJpBFXwpqyj0nN0CIFlRmE/xG4=;
        b=gQyBQvUFRCRS0L9gMQSGoNsY1jjSojvmXJNQASNhFS/Y4HyiPsDHNsMew5DGq2yLMW
         sJOK29Yba+Hwub0ze23+Tmy3VWsaNV2RSXsZf2BiiSCOJClEFXUHZmwCg1fdT8J8LQO+
         8yYu6O7OTqSF39wyE7KhA2HamISLq4atjFa6Rn2s5XtM8lTlxLjtEGdJD9MnY6cXFdR5
         a8UfuyaEy4rY6Fs+IvYp6OARipfdKOmbOXF1x5g5PW6DZpD/8wIbLcY/+9JbVnkpnyXR
         4ZnCaqQEXYp2wnd+kCqQ1hM4ooaTq2QX2FaNuqJZ9B/Y3P7Y6X6a9wKbJCLZv0CupyNn
         N0kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773846856; x=1774451656;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HqLAHEEwXnFAkIE7EWJpBFXwpqyj0nN0CIFlRmE/xG4=;
        b=XPda+7X5xLpxB8w0ZyMhXe478hnTOoL3qQ683AJh2pgDjStTggDp2Ug6TzZPiwYObD
         wRXgyFsW2Ht0m1XYWdtYEQvNrxfmg4WNXmpZ++2IHv0vYCa9zOzxlnffdvGLt2Ydc0+2
         j6sFhQqcykuEz6vMNiGN87T8LjYYIUCOkrkrIqsPSXwTC9DQQ2XQkAoEYro64PbxlrVb
         eSSLjbLBgl111Rv8dC5Gp5eqNnLgLLeFRdhx38qGs8dLVDVQKoqH2ctVTpgCBGTeJPAE
         381yp1dthBMZ60cYDDfR3ydqV8Mk6r8UiYL4Jh23PxTf7iTw2VYyXuVw5DmZsuJk4G74
         ta+g==
X-Forwarded-Encrypted: i=1; AJvYcCUCGp07bR3JYnPi/sP006TjdZcFUGyXPFuaP4wS5VaepSItnURagvszH8Fxayuvdqtdmk3o921ZbxRt@vger.kernel.org
X-Gm-Message-State: AOJu0YwW3hJ/RtcgsmBYQu5tz6rFfd2rcDkOPlwwW7TQsFBx4k2JZWbi
	MggKSHRmMZ0RWsfUjxKDVJZx3IEAERdBWS9fctM/jWM8JOM8ZJ9T4NTN9DoSADoDVOE=
X-Gm-Gg: ATEYQzyIhiHSoLoxtk6+ttkis3s10398uTDiESed+nq5xypsAkGjYNER8Z5CMElUKU1
	gTDDK3DJpVbdaVClt+VfBo3dLcwuDOq5k0f8vtgq5XjkTHyU7i8qSriwU2OYxgcSRs+LrMZ75hF
	SZiLf3CGzP5N4Kusk4zAwTld8livjWXlrbMJ6Sy4nNVBpWQ3tZOLtWQFvR31enGm9ELZ0Fiw2vl
	Z+dNo5u2vJwWcS7XtXRrJVqfUaRuQVtK9tGjBT/cnoUiuWnGrM1VjIIOYBGRFFk9Btvvdb2QdSQ
	WPn7S6Nmjl6miUm0AUHq/Y9TMqSMV/FaNhxclxTN1FTAl0ej6lj94KSw+h+he5Wmemq9GNobnLt
	EKqVtxRDy2Dlr+WIBNBNW5bSANgx3MHHdVRXtiadEatrZF608BLn09LHg1WksxzKQUl1o9Yz3cp
	m/XV0vIoVUSKO+scCqOShn
X-Received: by 2002:a05:600c:3d97:b0:485:54cc:2e7c with SMTP id 5b1f17b1804b1-486f8900bddmr2822665e9.24.1773846855746;
        Wed, 18 Mar 2026 08:14:15 -0700 (PDT)
Received: from localhost ([2001:4090:a244:8139:5278:cf5a:3494:5e80])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4856ea9dc46sm165840765e9.8.2026.03.18.08.14.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 08:14:15 -0700 (PDT)
From: "Markus Schneider-Pargmann (TI)" <msp@baylibre.com>
Date: Wed, 18 Mar 2026 16:13:08 +0100
Subject: [PATCH v3 2/7] dt-bindings: remoteproc: k3-r5f: Add
 memory-region-names
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260318-topic-am62a-ioddr-dt-v6-19-v3-2-c41473cb23c3@baylibre.com>
References: <20260318-topic-am62a-ioddr-dt-v6-19-v3-0-c41473cb23c3@baylibre.com>
In-Reply-To: <20260318-topic-am62a-ioddr-dt-v6-19-v3-0-c41473cb23c3@baylibre.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Suman Anna <s-anna@ti.com>, 
 Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>
Cc: Vishal Mahaveer <vishalm@ti.com>, Kevin Hilman <khilman@baylibre.com>, 
 Dhruva Gole <d-gole@ti.com>, Sebin Francis <sebin.francis@ti.com>, 
 Kendall Willis <k-willis@ti.com>, Akashdeep Kaur <a-kaur@ti.com>, 
 linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 "Markus Schneider-Pargmann (TI)" <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2416; i=msp@baylibre.com;
 h=from:subject:message-id; bh=YlLGNqmO0oy++jL1h69SEkdAlw0brbHAP6D6yct/xFM=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhsxdByXWWjuf+V8vf6tlTqZPprexjqxXeLtvy9JNrzPm+
 xQJTGPtKGVhEONikBVTZOlMDE37L7/zWPKiZZth5rAygQxh4OIUgInEWjIyvFfafo29p8d96Z8n
 wqeFS6W3cGfODNuW1mU+9UHlzOTpBgz/VB7vnefQpHLr3fG5eyyYThY2PXK/8b7vaKbt0suvlVa
 9ZgMA
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277328-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[msp@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,baylibre.com:email,baylibre.com:mid]
X-Rspamd-Queue-Id: B0FE62BE58C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add names to the memory-region-names for easier identification of memory
regions. As the meaning of the second memory region can be different
also require the use of memory-region-names if memory-region is in use.

Signed-off-by: Markus Schneider-Pargmann (TI) <msp@baylibre.com>
---
 .../bindings/remoteproc/ti,k3-r5f-rproc.yaml       | 26 ++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yaml b/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yaml
index 15e0286e4926865d88b693998e5aa64543ae125d..775e9b3a193878349590c5036aa884617ebbcc9f 100644
--- a/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yaml
@@ -175,6 +175,24 @@ patternProperties:
               - description: LPM FS context data and reserved sections
               - description: DM RM/PM trace and firmware code/data
 
+      memory-region-names:
+        description: |
+          Names for the memory regions specified in the memory-region property.
+          The names must correspond with the entries in memory-region.
+        oneOf:
+          - description: Basic layout
+            items:
+              - const: dma
+              - const: firmware
+          - description: Detailed layout
+            items:
+              - const: dma
+              - const: ipc
+              - const: lpm-stub
+              - const: lpm-metadata
+              - const: lpm-context
+              - const: dm-firmware
+
 # Optional properties:
 # --------------------
 # The following properties are optional properties for each of the R5F cores:
@@ -227,6 +245,13 @@ patternProperties:
       - resets
       - firmware-name
 
+    if:
+      required:
+        - memory-region
+    then:
+      required:
+        - memory-region-names
+
     unevaluatedProperties: false
 
 allOf:
@@ -330,6 +355,7 @@ examples:
                         mboxes = <&mailbox0 &mbox_mcu_r5fss0_core0>;
                         memory-region = <&mcu_r5fss0_core0_dma_memory_region>,
                                         <&mcu_r5fss0_core0_memory_region>;
+                        memory-region-names = "dma", "firmware";
                         sram = <&mcu_r5fss0_core0_sram>;
                     };
 

-- 
2.53.0


