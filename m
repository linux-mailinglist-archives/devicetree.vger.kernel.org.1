Return-Path: <devicetree+bounces-241985-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 59DD8C84E1D
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 13:07:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 6C30B34ED22
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 12:07:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0758631BCB8;
	Tue, 25 Nov 2025 12:06:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Z0yzHdOr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3FDF31B102
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 12:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764072385; cv=none; b=Vxt16BU9v8pXhzY8koe5b7sOPBvl7NdTElVgrGf+63LcjymKcZJ9UVYhitbh516fuf8ZekDxW8zrivGM0s/fPm2Wq64RIUXVAb0L5x6du1kiruPzIC9wz5g0P+1upvYGKK4Avg4WxMxVVwnP80pv3qWFc8TktFIuoyanLWLzRr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764072385; c=relaxed/simple;
	bh=VpB5KsxaEQJ/wbpHLSBxS6BFfx/WRP/aHkvP4DgNB28=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=knvMnUCb2p3bhFTSHZErZm26jRjdAnpDOyGQFATq/yGNV+KyQCLz1T4pMQJBjulsqp3hb9nadqJCK0YQVthMO0qmDe+XIZnGCijXSYMcvTBWLI74nyJfH8BXnXyCcZsK/Hgc5lx7jsBipGYZxdDjPi1+gKeeF0njuvnnVMxapAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Z0yzHdOr; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-59445ee9738so4107651e87.3
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 04:06:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764072382; x=1764677182; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lJEMDlRnAtYxOtkizgDV2y1SEbBGqjuPekcDKx32rKI=;
        b=Z0yzHdOrsXoiIYn+GnuS0arkGakh6whVbwXWnyKK0Zy2QkoAQJsNCv9e4U/N6zvSV1
         DmF72Qf9fTd9HWDssf6NurbEXIstWDxZVlvFZWqpKnMzXPdFUjuFURq2AgYTOi5FztN1
         bBN8Rn/+fL9H4RulmSi3IKRQrUqq42HtreAa3nSdC1r4rKLOmj0dFm+24gAVm6H8n6t1
         XEVvw6N+v4kXTEITX6T29oGJH0b1zgOgSFhi+r0y42gmQ24iB8MznCYNzfZ3RM2kvbGQ
         QaYYcH09r6z0TpP19yijq+moB+Ktau4C0Sh0RDVOZdxhgTZEswM5EYLQB0OT66dcnQvV
         PLOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764072382; x=1764677182;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=lJEMDlRnAtYxOtkizgDV2y1SEbBGqjuPekcDKx32rKI=;
        b=dr9mA76hQuU7CNZiWnmKSG5+VFkuxItZvkdjf8N3tJYjhNiv4bXOZycuaCK1gF308n
         A7aKjJRoFa5pasBy7BBI/CHBMvA136yGUQvueVKkuyN1FXLhq0Qcxj3dahs+wHPtuAYo
         JxcueRJnYj/Vh1TQgsYT838b0KnIHmWy4DV1gzChDrdZE5F/j1Gk//GvzwmE7y5oXNOI
         OSw/15z5HjFczVSPRG3jb6MhcnD0HGPTiOLG/4S+b8atJmHe66jKpZnhIUifql8qN63Q
         FI9y6EZm/CKvdbh+EoudN790cTjtHRylGJXFKPb5PlAPpeox6NM5RuMPAHTEgBRj5Hnq
         xCFQ==
X-Forwarded-Encrypted: i=1; AJvYcCV+n/rm7Os7nlWlU8xG8OKNzKT8ze65oEEhNkNJI7zrfsAQ6id3O+qglE/X0GqeZ3pvaTQmsxWiOOum@vger.kernel.org
X-Gm-Message-State: AOJu0YwwmLDgQLKRaCT4JO/FtPkPgZrzAdWOiXpa+Of3X/+yXnEAxk3+
	Pghh+OQ9rcNzU/ql6CzcyEHM/BykperfhJsISCXsQ0Yd0eCvDD1jMaGT
X-Gm-Gg: ASbGncs98AOidlhwmuJMlHOnHAYnOyBXB07kpAT7c7vqMAMltkYdXNPrF/yYw7cqilo
	ixYrDiOGVLX7KbL5se9LytrXChU5lsFzazwV5rpqpS7Lw9b8jSSnPN6JOpUaGdr5V5Id1b+D81L
	jJb6J9SkcrKuxbxKstfrF1qUMqPwK+LASj6YsZ2HfOICnclVlzxUADvYm3fsveIl8y3Sjx8gDcr
	u42o9kmmw80SzUHNZo5K1nNdnJV/IYK75pZdcF55LcDplTP5RYn6ywf1o9h/sugLvlais3rWBwD
	Oohk+gAYSD4AF9Ccp7Shi7j3SyNhpuBQx9qhJEBn1jFPfLfbQiEFSVh+ZwJON0UjXCY13oAdtj6
	mvF1TR8BRzHsaZE+6jqfCXepErDpm06yptfsoJMtX1xAsooXhMyodmomHCNNQDF4JJFsa1SQJI4
	k=
X-Google-Smtp-Source: AGHT+IH36w3TuHWPc1jMA/wg3Tn7wl0i5GUwtK/kPIQJ4Ssaozza3p+500oaEQ3DvmpkAQQGjIDQtQ==
X-Received: by 2002:a05:6512:3185:b0:594:3d20:f03c with SMTP id 2adb3069b0e04-596a3e9fc60mr6084105e87.4.1764072381595;
        Tue, 25 Nov 2025 04:06:21 -0800 (PST)
Received: from xeon ([188.163.112.74])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5969dbbecb9sm5150993e87.58.2025.11.25.04.06.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 04:06:21 -0800 (PST)
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
Subject: [PATCH v4 03/12] dt-bindings: memory: Document Tegra114 Memory Controller
Date: Tue, 25 Nov 2025 14:05:50 +0200
Message-ID: <20251125120559.158860-4-clamor95@gmail.com>
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

Add Tegra114 support into existing Tegra124 MC schema with the most
notable difference in the amount of EMEM timings.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 .../nvidia,tegra124-mc.yaml                   | 31 +++++--------------
 1 file changed, 8 insertions(+), 23 deletions(-)

diff --git a/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra124-mc.yaml b/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra124-mc.yaml
index 7b18b4d11e0a..f8747cebb680 100644
--- a/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra124-mc.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra124-mc.yaml
@@ -19,7 +19,9 @@ description: |
 
 properties:
   compatible:
-    const: nvidia,tegra124-mc
+    enum:
+      - nvidia,tegra114-mc
+      - nvidia,tegra124-mc
 
   reg:
     maxItems: 1
@@ -64,29 +66,12 @@ patternProperties:
 
           nvidia,emem-configuration:
             $ref: /schemas/types.yaml#/definitions/uint32-array
-            description: |
+            description:
               Values to be written to the EMEM register block. See section
-              "15.6.1 MC Registers" in the TRM.
-            items:
-              - description: MC_EMEM_ARB_CFG
-              - description: MC_EMEM_ARB_OUTSTANDING_REQ
-              - description: MC_EMEM_ARB_TIMING_RCD
-              - description: MC_EMEM_ARB_TIMING_RP
-              - description: MC_EMEM_ARB_TIMING_RC
-              - description: MC_EMEM_ARB_TIMING_RAS
-              - description: MC_EMEM_ARB_TIMING_FAW
-              - description: MC_EMEM_ARB_TIMING_RRD
-              - description: MC_EMEM_ARB_TIMING_RAP2PRE
-              - description: MC_EMEM_ARB_TIMING_WAP2PRE
-              - description: MC_EMEM_ARB_TIMING_R2R
-              - description: MC_EMEM_ARB_TIMING_W2W
-              - description: MC_EMEM_ARB_TIMING_R2W
-              - description: MC_EMEM_ARB_TIMING_W2R
-              - description: MC_EMEM_ARB_DA_TURNS
-              - description: MC_EMEM_ARB_DA_COVERS
-              - description: MC_EMEM_ARB_MISC0
-              - description: MC_EMEM_ARB_MISC1
-              - description: MC_EMEM_ARB_RING1_THROTTLE
+              "20.11.1 MC Registers" in the Tegea114 TRM or
+              "15.6.1 MC Registers" in the Tegra124 TRM.
+            minItems: 18
+            maxItems: 19
 
         required:
           - clock-frequency
-- 
2.51.0


