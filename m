Return-Path: <devicetree+bounces-241990-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E92EC84E71
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 13:08:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E2FAA4E9B7B
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 12:08:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35DEF31A7E7;
	Tue, 25 Nov 2025 12:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fEGOcggA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BE3B320A09
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 12:06:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764072393; cv=none; b=OlTciOVFYwkHr1FMBG1cvWXyE2SmVr64pI9IRoLTvAYBw7Rf0YPHKREqBD64PC1t5Mfmb8P4zOU4opYXfaMckLQMCjz3l43wl4//LcPbS8IAKq5wTx/caSZx/CELnc2qtDXlvkkUJyvkJskwD1EAhPg9Y7P64JD/PRTSd3jzW0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764072393; c=relaxed/simple;
	bh=oofrnjhZanrLkWatPeyuYrbv1Q6MvPZXu89wFAQHc/8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ktu0ndNDiyPgWl5hWg/qjN2t5fLRlqF6x6IEUT8n1d3T1JSe7gm6u+CUQyc4cA8izzy36tXNio2L2Y7BWlByPb8jIOgOm3O6k0O6bcL3fKT0KlCa7OdYKSutSvhj9PIcviYFT73urNR077sZAOgaUuTEFf+1xweIVT5jO2XHjgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fEGOcggA; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-595819064cdso7586388e87.0
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 04:06:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764072388; x=1764677188; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3mvXM/OjnCbNqb+efTyw9EZlzwSyRJRkUMKBRDIIvhA=;
        b=fEGOcggA9hHFsvswUFl2cnXquHKWMwMuFNguQAhR02WJzVh1NeWXChUvamk+4GLL2M
         kq9+Z6WczAwwPLEt6rVe/KmjT7LouK5gtKb7v0ba9fcH5Y6LXVjIzDGORrb5WQMvkMxa
         1I0KTRy5Hi/CbJomxUbv5zYswF0vhs5N9vgNHb1he74uIVteiNHd6NHGK6OM7nEB6CXe
         bolLffo7lcnrOtf7DujcxQGz4tstlqChrgf9aaWHa4xK85PizpoZPX4Oq4PRNQjI8Mzl
         c8oJCSwZXLEL4QOoStplwr5gMRXfCiZC8c6qtLK4o17ixYqs6scRXHuh6tLzsn+s52Hr
         5sVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764072388; x=1764677188;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3mvXM/OjnCbNqb+efTyw9EZlzwSyRJRkUMKBRDIIvhA=;
        b=E3KPOzb5lQ7251j2HiyJORZZLm7iSceqXP/4AnQVWmtyuavh6UrrAlvAh76BzsRMfq
         /t4OdvQMh5X37R6Siq3KM4H6YvN54FXCeIFl7EFFZZ0GssjwE+6CCZhZdjkq8IL34nZe
         whXWfSlAX/RDQFfBo3jUj8ANYThX/NLw16CYXF3vozbO/PTlcKpsmc/yRDBJ4XtHDpCh
         743tICh+p3evf4p7dSYCU4mCTTpVN9dEhsjUFf5fIYscd0AW/AHFxDLgIcQAlrCqB6bW
         dJhMPtGDbZmpRnaphFgfdKCTllFLMBKn8PlPmUhE1TNfBbfFYMuBUETuTx/NmlDvzmSN
         QXMw==
X-Forwarded-Encrypted: i=1; AJvYcCVPC1TO+OUFsaExqKhO9uJk7EEXie7H58JxnhMgKXZWKpoa0/HxwOm8lrfH0ioG9vXqg9udvF+09tVi@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4Yt3vE3qY04d05uaabv4o9DHcjLrGGdDnhm4Qkvk4vkQKFZCq
	Rcvh3GgXSQP92jpJubnJ+wkyIvu2vK4DbCkzGRtz29QuT55Gh8ltbFIb
X-Gm-Gg: ASbGncsMV5n67TGvfhQFGbLT5yVYRFfuqykHX3D8Dw123BMNjzFHACK1t84elBLLCkP
	PWuETq1tubv9Q4T2MKHJUXEsSZIeaTNtLAr3kg49RwhQaspRfzVIYZ+I43u8KxIMmqeSKWdReJZ
	sFdPaD8Le3PTy6di+pxzV38kYoLDD5A+/v5+D8560JOM4l2fvH6bF7HhPFZ+mkR2ErOqHLSSock
	MzgahCg0cgw9NOQ5Bsrt5sdSvsHldECP5duU71+OlZMhrVn3sgrmmxA7aRmeeZ9+Hny8uN/dCGq
	RjOEQR0syyhEq9a5gXhSWATwgxAHfM3JUV7YLao+WdzRx98nhwUG5I6uCw7ODFpMtxkV36pizXo
	M1jlY2eOUVzO+vp28xeZEHeoZgPXPFhQfMeuJUTReEdkU/lRCX8xPTIhr+6vrOojcdDYw2koRSx
	w=
X-Google-Smtp-Source: AGHT+IGHYbw79llgjzVhdJNpY+OeL/blXkBr7o7aN3N9BTj1dRXSku3hTW54mmH916DBOqG/DxkWuQ==
X-Received: by 2002:a05:6512:1390:b0:595:83e7:c74e with SMTP id 2adb3069b0e04-5969ea192d6mr6467252e87.13.1764072387266;
        Tue, 25 Nov 2025 04:06:27 -0800 (PST)
Received: from xeon ([188.163.112.74])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5969dbbecb9sm5150993e87.58.2025.11.25.04.06.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 04:06:26 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <treding@nvidia.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Prashant Gaikwad <pgaikwad@nvidia.com>,
	Mikko Perttunen <mperttunen@nvidia.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Dmitry Osipenko <digetx@gmail.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-pm@vger.kernel.org
Subject: [PATCH v4 07/12] dt-bindings: memory: Document Tegra114 External Memory Controller
Date: Tue, 25 Nov 2025 14:05:54 +0200
Message-ID: <20251125120559.158860-8-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251125120559.158860-1-clamor95@gmail.com>
References: <20251125120559.158860-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Include Tegra114 support into existing Tegra124 EMC schema with the most
notable difference being the amount of EMC timings and a few SoC unique
entries.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 .../nvidia,tegra124-emc.yaml                  | 174 +++---------------
 1 file changed, 26 insertions(+), 148 deletions(-)

diff --git a/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra124-emc.yaml b/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra124-emc.yaml
index f5f03bf36413..9398aae49093 100644
--- a/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra124-emc.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra124-emc.yaml
@@ -16,7 +16,9 @@ description: |
 
 properties:
   compatible:
-    const: nvidia,tegra124-emc
+    enum:
+      - nvidia,tegra114-emc
+      - nvidia,tegra124-emc
 
   reg:
     maxItems: 1
@@ -29,6 +31,9 @@ properties:
     items:
       - const: emc
 
+  interrupts:
+    maxItems: 1
+
   "#interconnect-cells":
     const: 0
 
@@ -164,153 +169,12 @@ patternProperties:
           nvidia,emc-configuration:
             description:
               EMC timing characterization data. These are the registers (see
-              section "15.6.2 EMC Registers" in the TRM) whose values need to
+              section "20.11.2 EMC Registers" in the Tegra114 TRM or section
+              "15.6.2 EMC Registers" in the Tegra124 TRM) whose values need to
               be specified, according to the board documentation.
             $ref: /schemas/types.yaml#/definitions/uint32-array
-            items:
-              - description: EMC_RC
-              - description: EMC_RFC
-              - description: EMC_RFC_SLR
-              - description: EMC_RAS
-              - description: EMC_RP
-              - description: EMC_R2W
-              - description: EMC_W2R
-              - description: EMC_R2P
-              - description: EMC_W2P
-              - description: EMC_RD_RCD
-              - description: EMC_WR_RCD
-              - description: EMC_RRD
-              - description: EMC_REXT
-              - description: EMC_WEXT
-              - description: EMC_WDV
-              - description: EMC_WDV_MASK
-              - description: EMC_QUSE
-              - description: EMC_QUSE_WIDTH
-              - description: EMC_IBDLY
-              - description: EMC_EINPUT
-              - description: EMC_EINPUT_DURATION
-              - description: EMC_PUTERM_EXTRA
-              - description: EMC_PUTERM_WIDTH
-              - description: EMC_PUTERM_ADJ
-              - description: EMC_CDB_CNTL_1
-              - description: EMC_CDB_CNTL_2
-              - description: EMC_CDB_CNTL_3
-              - description: EMC_QRST
-              - description: EMC_QSAFE
-              - description: EMC_RDV
-              - description: EMC_RDV_MASK
-              - description: EMC_REFRESH
-              - description: EMC_BURST_REFRESH_NUM
-              - description: EMC_PRE_REFRESH_REQ_CNT
-              - description: EMC_PDEX2WR
-              - description: EMC_PDEX2RD
-              - description: EMC_PCHG2PDEN
-              - description: EMC_ACT2PDEN
-              - description: EMC_AR2PDEN
-              - description: EMC_RW2PDEN
-              - description: EMC_TXSR
-              - description: EMC_TXSRDLL
-              - description: EMC_TCKE
-              - description: EMC_TCKESR
-              - description: EMC_TPD
-              - description: EMC_TFAW
-              - description: EMC_TRPAB
-              - description: EMC_TCLKSTABLE
-              - description: EMC_TCLKSTOP
-              - description: EMC_TREFBW
-              - description: EMC_FBIO_CFG6
-              - description: EMC_ODT_WRITE
-              - description: EMC_ODT_READ
-              - description: EMC_FBIO_CFG5
-              - description: EMC_CFG_DIG_DLL
-              - description: EMC_CFG_DIG_DLL_PERIOD
-              - description: EMC_DLL_XFORM_DQS0
-              - description: EMC_DLL_XFORM_DQS1
-              - description: EMC_DLL_XFORM_DQS2
-              - description: EMC_DLL_XFORM_DQS3
-              - description: EMC_DLL_XFORM_DQS4
-              - description: EMC_DLL_XFORM_DQS5
-              - description: EMC_DLL_XFORM_DQS6
-              - description: EMC_DLL_XFORM_DQS7
-              - description: EMC_DLL_XFORM_DQS8
-              - description: EMC_DLL_XFORM_DQS9
-              - description: EMC_DLL_XFORM_DQS10
-              - description: EMC_DLL_XFORM_DQS11
-              - description: EMC_DLL_XFORM_DQS12
-              - description: EMC_DLL_XFORM_DQS13
-              - description: EMC_DLL_XFORM_DQS14
-              - description: EMC_DLL_XFORM_DQS15
-              - description: EMC_DLL_XFORM_QUSE0
-              - description: EMC_DLL_XFORM_QUSE1
-              - description: EMC_DLL_XFORM_QUSE2
-              - description: EMC_DLL_XFORM_QUSE3
-              - description: EMC_DLL_XFORM_QUSE4
-              - description: EMC_DLL_XFORM_QUSE5
-              - description: EMC_DLL_XFORM_QUSE6
-              - description: EMC_DLL_XFORM_QUSE7
-              - description: EMC_DLL_XFORM_ADDR0
-              - description: EMC_DLL_XFORM_ADDR1
-              - description: EMC_DLL_XFORM_ADDR2
-              - description: EMC_DLL_XFORM_ADDR3
-              - description: EMC_DLL_XFORM_ADDR4
-              - description: EMC_DLL_XFORM_ADDR5
-              - description: EMC_DLL_XFORM_QUSE8
-              - description: EMC_DLL_XFORM_QUSE9
-              - description: EMC_DLL_XFORM_QUSE10
-              - description: EMC_DLL_XFORM_QUSE11
-              - description: EMC_DLL_XFORM_QUSE12
-              - description: EMC_DLL_XFORM_QUSE13
-              - description: EMC_DLL_XFORM_QUSE14
-              - description: EMC_DLL_XFORM_QUSE15
-              - description: EMC_DLI_TRIM_TXDQS0
-              - description: EMC_DLI_TRIM_TXDQS1
-              - description: EMC_DLI_TRIM_TXDQS2
-              - description: EMC_DLI_TRIM_TXDQS3
-              - description: EMC_DLI_TRIM_TXDQS4
-              - description: EMC_DLI_TRIM_TXDQS5
-              - description: EMC_DLI_TRIM_TXDQS6
-              - description: EMC_DLI_TRIM_TXDQS7
-              - description: EMC_DLI_TRIM_TXDQS8
-              - description: EMC_DLI_TRIM_TXDQS9
-              - description: EMC_DLI_TRIM_TXDQS10
-              - description: EMC_DLI_TRIM_TXDQS11
-              - description: EMC_DLI_TRIM_TXDQS12
-              - description: EMC_DLI_TRIM_TXDQS13
-              - description: EMC_DLI_TRIM_TXDQS14
-              - description: EMC_DLI_TRIM_TXDQS15
-              - description: EMC_DLL_XFORM_DQ0
-              - description: EMC_DLL_XFORM_DQ1
-              - description: EMC_DLL_XFORM_DQ2
-              - description: EMC_DLL_XFORM_DQ3
-              - description: EMC_DLL_XFORM_DQ4
-              - description: EMC_DLL_XFORM_DQ5
-              - description: EMC_DLL_XFORM_DQ6
-              - description: EMC_DLL_XFORM_DQ7
-              - description: EMC_XM2CMDPADCTRL
-              - description: EMC_XM2CMDPADCTRL4
-              - description: EMC_XM2CMDPADCTRL5
-              - description: EMC_XM2DQPADCTRL2
-              - description: EMC_XM2DQPADCTRL3
-              - description: EMC_XM2CLKPADCTRL
-              - description: EMC_XM2CLKPADCTRL2
-              - description: EMC_XM2COMPPADCTRL
-              - description: EMC_XM2VTTGENPADCTRL
-              - description: EMC_XM2VTTGENPADCTRL2
-              - description: EMC_XM2VTTGENPADCTRL3
-              - description: EMC_XM2DQSPADCTRL3
-              - description: EMC_XM2DQSPADCTRL4
-              - description: EMC_XM2DQSPADCTRL5
-              - description: EMC_XM2DQSPADCTRL6
-              - description: EMC_DSR_VTTGEN_DRV
-              - description: EMC_TXDSRVTTGEN
-              - description: EMC_FBIO_SPARE
-              - description: EMC_ZCAL_WAIT_CNT
-              - description: EMC_MRS_WAIT_CNT2
-              - description: EMC_CTT
-              - description: EMC_CTT_DURATION
-              - description: EMC_CFG_PIPE
-              - description: EMC_DYN_SELF_REF_CONTROL
-              - description: EMC_QPOP
+            minItems: 97
+            maxItems: 143
 
         required:
           - clock-frequency
@@ -318,9 +182,7 @@ patternProperties:
           - nvidia,emc-auto-cal-config2
           - nvidia,emc-auto-cal-config3
           - nvidia,emc-auto-cal-interval
-          - nvidia,emc-bgbias-ctl0
           - nvidia,emc-cfg
-          - nvidia,emc-cfg-2
           - nvidia,emc-ctt-term-ctrl
           - nvidia,emc-mode-1
           - nvidia,emc-mode-2
@@ -344,6 +206,22 @@ required:
   - "#interconnect-cells"
   - operating-points-v2
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - nvidia,tegra124-emc
+    then:
+      patternProperties:
+        "^emc-timings-[0-9]+$":
+          patternProperties:
+            "^timing-[0-9]+$":
+              required:
+                - nvidia,emc-bgbias-ctl0
+                - nvidia,emc-cfg-2
+
 additionalProperties: false
 
 examples:
-- 
2.51.0


