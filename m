Return-Path: <devicetree+bounces-259620-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oBMiFvW7d2lGkgEAu9opvQ
	(envelope-from <devicetree+bounces-259620-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 20:09:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 024C28C5E6
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 20:09:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F123F3055D6E
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 19:08:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A849B280327;
	Mon, 26 Jan 2026 19:08:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AGu57Lxw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com [209.85.128.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 783A82749DF
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 19:08:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769454492; cv=none; b=tBNbqNmBQBSktqMl66LKm7VGcxEfj5va43N/8fzUUcRvQobrP7y/RrRxGsXzTKN6p0ucSgTh/29ekf9zBPEC9xNTI9hMSN8aSxa0huG5L6ToVCviFwpTuRKGX9d4m3Zs2wFGwV159TKkKLSSXCQptWvk23a56fM53bO7FIBjK5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769454492; c=relaxed/simple;
	bh=84Dqsd4+a5f1NKPye0gyTGquAHxSzQnz5E8L5x6vjSk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ItpOFHrSTbhiD8XCaYg5yOxttQ8D4m5DLzzfzgEZiqPcCxOQ2RgAP9WC8q81IOlAnBeadlQ3wxVFZDwlD9pdxePgQ15CCwImIF9R/AjpgP2AZZe6DJoxM+u4i8e7T3LI4lEwSIZlH73ONwDudW8S9yLaaNCJLbqDCRO5eOhFvOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AGu57Lxw; arc=none smtp.client-ip=209.85.128.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f65.google.com with SMTP id 5b1f17b1804b1-4801c1ad878so54260875e9.1
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 11:08:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769454489; x=1770059289; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1CfO1Q8+JOBgDtlGnZkxxf2jPv4aks+RLJbYHeFtCGM=;
        b=AGu57LxwsRe5CiiCUxvF2rB05WInM1h5q98KyWHrH/yG9VLPdhGF1GLiEs9BLFhuo2
         Z4QTtuSFckcoYLr9jjSFiQv0Ycc83+ss3+EKpHEyueeEyI9WadM2vKNr/u+quaTVauLb
         jbqgr+ZHkoEgtlk4uVWtcX6Y2RdrVOj7P3YCGsakm15qNHd0Zq5kERecYsgabjrk30DQ
         vCyHXdFsHyYGKwNnjovumeTWF9E586hnAhQzKLk629gZdYK1X1Ar7AguE2clBWna1yf1
         KFdIDNu8hf4MRDtVvKgXLGZduKBbjP8dJvqqqvErClCkO1BRi+9bo7B1ZbDui2h3FJ6/
         cCKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769454489; x=1770059289;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1CfO1Q8+JOBgDtlGnZkxxf2jPv4aks+RLJbYHeFtCGM=;
        b=fsNGUGMLR8y0eXBrte4rlltboZ3KOD/9RGNfDgcMYpoAH8fIzDR0WOXULqr5H9vmoi
         Y3bTD5585KpZ6gFmb/rukgJ7FNYhqb6lUjebNIYnChpCEP/alBrKrqwLlAEyoXWdQqaA
         5n1Nx/5l8eXOA61u5R0M/Iunn0a7M7Bzq0Zgnh6kMdIrm/VB+uYahi1tFL+9qdLw6gUk
         rs/SK9S+dPGllv60NYHvVaGyiHuQ4F/bkm14N+Q6hGTJxx2uSipbPcncApUqPDmUsLUT
         Cc4tAvordi75n+jsSt53cfaNypU/Oo5vKZzE6likkKDZR13K0CgNz8xWnQ5laVM80tjJ
         x4PQ==
X-Forwarded-Encrypted: i=1; AJvYcCUbkVXAb8XcUDPrZP9p/4G12ZOH6gbow6POJ+KbY54TJ59wSgQhJBQNHlKH0EQviLY/5kvq+npYp+GQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4l/bS7VHKcDWM8yvdVYlPrrksztKmrevuC7b93UmdXETyaZsX
	Sy1Xl7uHm5f+buIjsnUqxo0vj5TABR1hEEcNHCeorQVJrmJyVlmeJoiN
X-Gm-Gg: AZuq6aKxTNYx/AE4gkH6oeh2M9yu0a4+22AF3eYnuDeOyVBHboZViTuQbEJVhsLcJZH
	OovUzJrv1JLgSYZDMrj45+m1SPgbJCh1r6GbcWo6fOzflassi7cFWNkd5yVQvoiB/HiJAN45v5f
	CTc3Z/OfQeMl/0Xp7uuqPCVffo2DzLNCdJEPVG2Pz51bSbzpbkBJeFTdxqc/+QEVDyPLGAtSzSw
	6pibSjCmLWfSslUzz+axon+vogZwHNTNfRhoybKUStht7s9kH2I3feTS+zahXWWxIaBxGh0sUdv
	E9gyC64oMk875DQM8qNAFuAjysmyf/YuHmxxXrGPhDLOjQjQgJ+cLUVUzlYwqViD6sdx3juwN7B
	VrmVOglxo8aL76dQn14dbr9aGD/lznwS0/qs70ocBMqtrxi50sS4c9IVaG2EDmtlTptjMIFLMLe
	9D
X-Received: by 2002:a05:6000:290c:b0:42f:f627:3aa3 with SMTP id ffacd0b85a97d-435ca3a5816mr8945919f8f.56.1769454488774;
        Mon, 26 Jan 2026 11:08:08 -0800 (PST)
Received: from xeon ([188.163.112.49])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435b1c24bf8sm31802030f8f.11.2026.01.26.11.08.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 11:08:08 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Mikko Perttunen <mperttunen@nvidia.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	Sumit Gupta <sumitg@nvidia.com>,
	Dmitry Osipenko <digetx@gmail.com>
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org
Subject: [PATCH v1 4/5] dt-bindings: memory: Document Tegra114 External Memory Controller
Date: Mon, 26 Jan 2026 21:07:54 +0200
Message-ID: <20260126190755.78475-5-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260126190755.78475-1-clamor95@gmail.com>
References: <20260126190755.78475-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-259620-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,nvidia.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 024C28C5E6
X-Rspamd-Action: no action

Include Tegra114 support into existing Tegra124 EMC schema with the most
notable difference being the amount of EMC timings and a few SoC unique
entries.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
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


