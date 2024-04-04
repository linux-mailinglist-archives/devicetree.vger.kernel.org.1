Return-Path: <devicetree+bounces-56309-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CCFA898779
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 14:28:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D1ACD1F26EC1
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 12:28:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2BF0127B7C;
	Thu,  4 Apr 2024 12:26:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Rj3iFcEm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B200127B5D
	for <devicetree@vger.kernel.org>; Thu,  4 Apr 2024 12:26:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712233580; cv=none; b=GKlF6P/nOLXcpBc3Z/T2NSOqKH3+VngbffW24iPCMlgYg7M+yhBULoRRBjLv069DUwRHwuQBIVg4jNGvAVxjhLPvwrlLCAvO7///o2AfHdetVsfQQKgPL9XQUds0vnHS6L6HnV8jkJuuPoogP0RmHt9MARHoNPFo4TUdYOi5Ccc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712233580; c=relaxed/simple;
	bh=2q8gij64Ov8TqGR2w8c78XW7P+5rgnWSMwbThRQDZHU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Z20mSqHIkrCcA230aj0M/h/O29PEUedEBzsU9CZQRWyzg9F/3JgZef4q6oU5uKOAmxrF4Qwg7XzueyuM9mkmVuBW8IPqKulFCurPKoy7NxYe848eGX9QteIA3WXy4vkHC1rtR/Mgb4yPYdaiFCOMo9lX8Gad7O8cmsv1EWsDePk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Rj3iFcEm; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-516c97ddcd1so745236e87.2
        for <devicetree@vger.kernel.org>; Thu, 04 Apr 2024 05:26:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712233577; x=1712838377; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d249q8OLaMbSIVMmFzjKWfEr9wukeZUtFSKBwYI0cD4=;
        b=Rj3iFcEmapu965Ht/c98I+poCEk8ez0iCGNzQrDKCKJLJMfshDIC6WO3JyPaGhogLi
         ctzgdcGa18SRItRnha0dktzITk5C36WDwaysfQnk+pRORCMASbwesUQmAUFEQ5IRzC3g
         exkCOGqUlNPl3U3Zll68SNOpdU2l+KpLN5V4xBseMvXnzH/gevD291sYUm19ijObX7Ff
         pf9Qq1ghXkgZl5Rn/6rM7O6gLqWytcD0B+0XoFw3/1fhFDwrkA1ORSBcWmPyrlnPAoCd
         CyOoOtizxxL3s7mB8eriTmYh1xNVluaUts2CPJxVx+pyBdsjPvCT9kaEeWo8pj1CZNTC
         z5NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712233577; x=1712838377;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d249q8OLaMbSIVMmFzjKWfEr9wukeZUtFSKBwYI0cD4=;
        b=as1yiTMEF6cgGQOYHgBUjoqzKUeI9I/HRbKLAm/iSqOrxsoZhPCzCUsI+24kgGEKEM
         xC2Hl44KTvy6Mtc/vJJnRmyIf8rRob7lDMlF/SkWyTD+W2mOhEee7K0EQJ5dQ3ammprw
         gu333scCrO3q8G8Ccxfz+HGmDxOqZIDD0SArkrSnMa3U/Q5ku8oFxzYj06VWhC6wiGfO
         4VBnnbhtZBtsb6vPFxs80qkqFPvlwoMevhczVcPsfl80pgDcQwdDlLwnSgRU20jmw9/p
         0mwjaQgNzERYFtd5RQtdEatUmHymLiHQ+2A5J26BS8e6++VzXtXGfXi9SBV0r02Egpps
         Lr0A==
X-Forwarded-Encrypted: i=1; AJvYcCVKrkJhm9Fv8+iqwhAcuIKVUIMyUED5cYw+D7ARE06eaRZnw/cZVtgFBR3M6qUR60u1SAAOxqVmUg67bORuO2of00mFhAqNtaPYWw==
X-Gm-Message-State: AOJu0Yxu4ce/RiYfbvsr8KxTr5okIsfeRv5NPH+FUpWc5ernazg4YBBu
	V+DVz9CqtlpXCk0LsscBKG/bFcH5viPZwwWgKoh/+UqxLBAFLpjFur3HFIZhymc=
X-Google-Smtp-Source: AGHT+IHKUb9uxI3dVCBnRZqZdhwAN2Y0OAl2yQXHesVhm5X+TGFWVXPaqh+/KMFU4TwWx7ODQVorYA==
X-Received: by 2002:a05:6512:3a91:b0:515:8564:28c8 with SMTP id q17-20020a0565123a9100b00515856428c8mr1952674lfu.67.1712233577227;
        Thu, 04 Apr 2024 05:26:17 -0700 (PDT)
Received: from gpeter-l.roam.corp.google.com ([148.252.128.204])
        by smtp.gmail.com with ESMTPSA id bu14-20020a056000078e00b003434b41c83fsm12106303wrb.81.2024.04.04.05.26.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Apr 2024 05:26:14 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	alim.akhtar@samsung.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	s.nawrocki@samsung.com,
	cw00.choi@samsung.com,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com,
	chanho61.park@samsung.com,
	ebiggers@kernel.org
Cc: linux-scsi@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH 01/17] dt-bindings: clock: google,gs101-clock:  add HSI2 clock management unit
Date: Thu,  4 Apr 2024 13:25:43 +0100
Message-ID: <20240404122559.898930-2-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.44.0.478.gd926399ef9-goog
In-Reply-To: <20240404122559.898930-1-peter.griffin@linaro.org>
References: <20240404122559.898930-1-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add dt schema documentation and clock IDs for the High Speed Interface
2 (HSI2) clock management unit. This CMU feeds high speed interfaces
such as PCIe and UFS.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 .../bindings/clock/google,gs101-clock.yaml    | 30 +++++++++++++++++--
 1 file changed, 28 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml b/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
index 1d2bcea41c85..a202fd5d1ead 100644
--- a/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
+++ b/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
@@ -32,14 +32,15 @@ properties:
       - google,gs101-cmu-misc
       - google,gs101-cmu-peric0
       - google,gs101-cmu-peric1
+      - google,gs101-cmu-hsi2
 
   clocks:
     minItems: 1
-    maxItems: 3
+    maxItems: 5
 
   clock-names:
     minItems: 1
-    maxItems: 3
+    maxItems: 5
 
   "#clock-cells":
     const: 1
@@ -112,6 +113,31 @@ allOf:
             - const: bus
             - const: ip
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - google,gs101-cmu-hsi2
+
+    then:
+      properties:
+        clocks:
+          items:
+            - description: External reference clock (24.576 MHz)
+            - description: High Speed Interface bus clock (from CMU_TOP)
+            - description: High Speed Interface pcie clock (from CMU_TOP)
+            - description: High Speed Interface ufs clock (from CMU_TOP)
+            - description: High Speed Interface mmc clock (from CMU_TOP)
+
+        clock-names:
+          items:
+            - const: oscclk
+            - const: bus
+            - const: pcie
+            - const: ufs_embd
+            - const: mmc_card
+
 additionalProperties: false
 
 examples:
-- 
2.44.0.478.gd926399ef9-goog


