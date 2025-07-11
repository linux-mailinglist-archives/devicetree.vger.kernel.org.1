Return-Path: <devicetree+bounces-195562-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B0A8B020BC
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 17:44:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2EFFD583283
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 15:43:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F8B12EE961;
	Fri, 11 Jul 2025 15:42:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="haj5nf9R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D032D2EE607
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 15:42:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752248567; cv=none; b=W7fXzIaHOYPxwgnOOgYEMK25vhDkAGA5wU1u4nMMBdB3fjGudFkiAJZddVNHdwGB67OqDJGN0guIyybMLCV40ExnusYdkDSga/ttnAKVXbumkVwAe4RAsd/G7X4++8xRy7uQPyOIAP85lNt993qdMXcGjWbvFgI7ESn7yevtZkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752248567; c=relaxed/simple;
	bh=XgmSltbI8bNEECXrld3Mq03ZbDRFnMOxMcuv/b+y/l0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=nOdSnTiHeHhyWrmQFYG6W8yMvcp10pmBQ3OnOtTi7Rhmp8GdfZdVvlvhdhMgs0/q1bLta0P03uMK/d/dd9VnnhCwe9QIzty2GX7T1ZrAQ4wLBabcVLkzlYcQ246SSuwrPMk3bLLaIUaATdteUc3wiW2PalTadUZhRRkWfzOStrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=haj5nf9R; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-742c7a52e97so2085240b3a.3
        for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 08:42:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1752248565; x=1752853365; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JFloaJNjPj6YhrScgdec72uo0x940nsOWxld7fstQWg=;
        b=haj5nf9R0tX0m/iuOaZu067iKeykcYAqmY6vF1o4nFuUMbwyxawG+ulQeCOsY/zipj
         E8f5PG8pb94vmtiO8hYNuRQFIWNEwMLLs0JBPJHovKc4Vbu57KKxuk54Z8li05vBt2Jy
         NW04gAXs8tDGD5rxvI0msUthH2Pf8KLh/Lzw8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752248565; x=1752853365;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JFloaJNjPj6YhrScgdec72uo0x940nsOWxld7fstQWg=;
        b=guy7yO8NU6OqCp8CZmXDaVQ2n6vAg9twQv+ePtalcopXngGSoVMgq+sILm36uDtCsd
         YifvIO0X+CphYYxrj3eELLv/wktpoKRx2XCtTlcgRCl334+r0+njXqTzAm6OwSt057iX
         vRixI25ev48kGk5IjqXTNsezD5N1TYrLN+4TKeZDUt530nnz+m+XhVDcYP6jzGHsWN9A
         b92hWjZpTowIU1Nq9QgsGpVEbgq3IasuC/YmgoAI/uhitZOHSGG1+WR/FhyrWNEzokCG
         mvbQNnL7k5NAxjDMZIa9Sb4iACE4tggtxzBMPJlDf6RILSEcPvEWuAJl4LMERd8snupC
         MXwQ==
X-Forwarded-Encrypted: i=1; AJvYcCUUDv04I3UI8IlXle/0Kd9gz3/iqkBGhXmnoqBk4frg0ej6Z9CQ10E+dkGLspS7wSAXLqIm6oGjQwcX@vger.kernel.org
X-Gm-Message-State: AOJu0YyWk41BohFfLrr6TB4s7YlH2lQTK4AWk9qa+pASNfoOIKa/vZHA
	jgI2+FiVcrBSo4upNAn0ciavWr1K0lEmwgmSblE/sd4WkSK/OL/86NQNrQw5L7PvnQ==
X-Gm-Gg: ASbGncvnS/OzfDtHaJNi6tcxMkmKM3YNp/HxOi6K04YuARGvq69KxRNzt1PseZdH8ha
	an+9vAV8t6fbb9+k0jJ7SIc5d+RTg6yHZhgFl2VzRTGhboW9djcnl5huaTsu29CcpKaWn6jVKxz
	p/z69cdWHXG/eDiotLuvQjZKTxy1xhTql/QVohxvX+OtrOs59aW+OepGKHR2jLf2OKZ2fzn5eZN
	1/jhPa5wNMvNLmHGQV0GjiF69zaOrp9iAYkqnACRpPo//Tiwxbw4YWUkUbO14UrQJb5T2jwk8Mj
	J9Dv+zfT8pIvLIt53tajPZB8U8B0MzPg9Wn+dFtl6EeX83eHYOJa9iCiHIfcPSNWlgfv2c/dSOC
	EjJKl8pC4ineptxoLpjHuoNr4R1Eb4xSzbvB8BX7fsBUtTjYnXBimznQPk1xobJabXnmi
X-Google-Smtp-Source: AGHT+IHvtMPekpyU5nnmLW/gd6y9CDTVw2Qycx1EF3HESUhtgnvWQRje7hCswHHVti/titoD0QxbHQ==
X-Received: by 2002:a05:6a20:6f88:b0:222:c8c4:efae with SMTP id adf61e73a8af0-2311fcfce03mr5992549637.27.1752248565104;
        Fri, 11 Jul 2025 08:42:45 -0700 (PDT)
Received: from mail.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74eb9dd5ccesm5762420b3a.27.2025.07.11.08.42.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jul 2025 08:42:44 -0700 (PDT)
From: Kamal Dasu <kamal.dasu@broadcom.com>
To: andersson@kernel.org,
	baolin.wang@linux.alibaba.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	florian.fainelli@broadcom.com,
	ulf.hansson@linaro.org,
	adrian.hunter@intel.com
Cc: bcm-kernel-feedback-list@broadcom.com,
	kamal.dasu@broadcom.com,
	linux-remoteproc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mmc@vger.kernel.org,
	Kamal Dasu <kdasu@broadcom.com>
Subject: [PATCH 3/4] dt-bindings: mmc: add brcmstb share register and hwlocks reference
Date: Fri, 11 Jul 2025 11:42:20 -0400
Message-Id: <20250711154221.928164-5-kamal.dasu@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250711154221.928164-1-kamal.dasu@broadcom.com>
References: <20250711154221.928164-1-kamal.dasu@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Kamal Dasu <kdasu@broadcom.com>

Adding optional controller share registers and hwspinlock reference fields
to be used by sdhci-brcmstb driver.

Signed-off-by: Kamal Dasu <kamal.dasu@broadcom.com>
---
 .../bindings/mmc/brcm,sdhci-brcmstb.yaml      | 29 +++++++++++++++++--
 1 file changed, 27 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml b/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml
index eee6be7a7867..fe9be7a7eca5 100644
--- a/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml
+++ b/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml
@@ -27,15 +27,20 @@ properties:
           - const: brcm,sdhci-brcmstb
 
   reg:
-    maxItems: 2
+    minItems: 2
+    maxItems: 4
 
   reg-names:
+    minItems: 2
     items:
       - const: host
       - const: cfg
+      - const: share       # Optional reg
+      - const: flshr_ipis0 # Optional reg
 
   interrupts:
-    maxItems: 1
+    minItems: 1
+    maxItems: 2
 
   clocks:
     minItems: 1
@@ -60,6 +65,9 @@ properties:
     type: boolean
     description: Specifies that controller should use auto CMD12
 
+  hwlocks:
+    maxItems: 1
+
 allOf:
   - $ref: mmc-controller.yaml#
   - if:
@@ -115,3 +123,20 @@ examples:
       clocks = <&scmi_clk 245>;
       clock-names = "sw_sdio";
     };
+  - |
+    mmc@84b1000 {
+      mmc-ddr-1_8v;
+      mmc-hs200-1_8v;
+      mmc-hs400-1_8v;
+      no-sd;
+      no-sdio;
+      non-removable;
+      bus-width = <0x8>;
+      compatible = "brcm,bcm74165b0-sdhci", "brcm,sdhci-brcmstb";
+      reg = <0x84b1000 0x260>, <0x84b1300 0x200>,  <0x84b1600 0x10>, <0x84a5404 0x4>;
+      reg-names = "host", "cfg", "share", "flshr_ipis0";
+      hwlocks = <&hw_lock 0x0>;
+      interrupts = <0x1 0x0 0x1f 0x4 0x1b 0x11>;
+      clocks = <&scmi_clk 245>;
+      clock-names = "sw_sdio";
+    };
-- 
2.34.1


