Return-Path: <devicetree+bounces-156386-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 269AFA5B852
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 06:19:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0FB3A1890D8A
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 05:19:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D8CD1EBA03;
	Tue, 11 Mar 2025 05:19:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="Rp5ZlQZX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 974681E9B1C
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 05:19:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741670376; cv=none; b=BvaTEu/ElRRSq1PWUxU3lQc35OKGd+FcEMM5qz1e/gJoT2y/fD7DFlN1Yqpow8VyhiHEcuqPz/BtG90xFT/YfwBaSqFWXWdP5J7KrP0U1hAOnYggLwSTe+7IDhEYX4WjmDYZE5ovSafOw4LJxQ+2/M6P+7A5TlV+1W86C8xvT90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741670376; c=relaxed/simple;
	bh=Qf1HYt/4XQv3aVYt3Mn1+083Ac+3uBskW9Fb1amUZKM=;
	h=From:To:Cc:Subject:Date:Message-Id; b=mn3YaL8KbqhXkybrNETgNEJA7eBZMyLKZe1Pm8NV0Ms3zpTu3Mze2SzuaNQoR5UCAOHfjSVzu8eHpLcjkebb1DU3HyNX5uf/Sg/wjz6Vlij6eH5Kj/rshjKLMLMulmqEPBcCT4THKkOCu5uzsNMYYH2YK/7sNeBzBdwKqY7v4As=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=Rp5ZlQZX; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-22548a28d0cso1352555ad.3
        for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 22:19:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1741670373; x=1742275173; darn=vger.kernel.org;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+i/dt0ZX89cRHtWHaB/kc777cnfXfjLxAIjIrBqsq1Y=;
        b=Rp5ZlQZXV5A8osFeyA+W0v/Aayaf2FxGNRItJeRTLpOM1WjlwgN/H429+B0mrY/tfv
         oyXk+4IOZ2v1DIV8X86T4qLe5BbAIzWzXLKoYDWF2gb6nrSI6948fJo70Yh7aCiEYyf/
         EkN10HWEatLCH7mxt2LUWSrk3pL4LE+Go7bKS/2DUxYc4L3YX2y4MRDUUtYi3P5qT5li
         0RyHlpiKH081tWcPUmwW0XL1bvDkEQv9jGSnsLHk1b30/VxWeltMaSLKTp59ZnjNEmpB
         Vg4WMZiRX0IYQTzlGREJAP66I8b8dXLYIFCgxnZdn351hUHhd7xC37GxqbYYmHHtN24o
         8QDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741670373; x=1742275173;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+i/dt0ZX89cRHtWHaB/kc777cnfXfjLxAIjIrBqsq1Y=;
        b=UBaEBUwADHOg8MRmMg6QW5/lAJjD1fPGZJwds3mOAWGy/bG+jw3X8fNsdzgWyfjA55
         hPV4sqfINlCT6NJtU7BYKr777lehzSTb/GltZAL6JPcAL73XT1YSJENk3FSt5kj1TZqN
         X8VekUYKheI4vEPRSCQBF/GvM+J9dz8uECNRVpxzd8Z2p/DMMjoSofCp1oOagFVpB9dO
         tfZucTMtqSpM8wd8i244Y8m4RualA43OUYB1xRxXe95zMp89HNub9exntBwdH8ai5tFZ
         fV3kaq+e+pdQ53jtSNTEJ0p4NbwhBC0jL+UDwpPaSx3m3aYNRaDS3dp8wodvfaHb1pOB
         aVRw==
X-Forwarded-Encrypted: i=1; AJvYcCXw12rtDlkVgc7Tk0vj/RNdhRGbLGRby0sGXk852o5PmqvAwQgix664wS+fQnlpU24MGz566+9RYEKb@vger.kernel.org
X-Gm-Message-State: AOJu0YxX2LZJxZR83T3V5P9fG0sOy6upLKN2hpym7cZhc5B2xaNtKdSA
	jDVMIgk2stCR62+eNex3AJIfUJYAiKb2jHyczg8pj1ZKEce+HQDdIxAweAVGzGo=
X-Gm-Gg: ASbGncsuh5ctjN1xCfwenvPgDtZWcJRpDubrgpFiHALznsQJ3D8os7g3c1Gy/mGKtJQ
	jsLNUsDeI30jzD/srlgm9j27HG5xqqYDpdVLdWEk7CKNfrOdfNFLClDXMUIC37drLCY37jWA0qL
	YS3RWU4Q5muP9Fr7KCo8kfJPbgabkQR9Z+IvgR/GCBxknWP9ThbWw2VdpVGkfp2Ag0XaSFh/X0M
	mIu6EdIFwOaF4Vb8fcABvzFxNinuCunzzBrukoX0rqvB+8wuWFnswchVETwpOAEnwjlvhjqHY0E
	TBRK2tydDkxq2aLKLFokXnIzxos7aChP6FJ2UHGzMmWEtmJ4maVDDEYpWhd0KzZwzHM=
X-Google-Smtp-Source: AGHT+IEntr734nFZJCJi9wFIrZS3LNF88PAO3SBZe3Z3mk94wDz9J7xsCrG6KvNbYGMyW21bfvgtPw==
X-Received: by 2002:a17:902:d48f:b0:224:1219:934b with SMTP id d9443c01a7336-22428c099abmr227046695ad.50.1741670372831;
        Mon, 10 Mar 2025 22:19:32 -0700 (PDT)
Received: from hsinchu26.internal.sifive.com ([210.176.154.34])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-224109e9fbfsm88597995ad.92.2025.03.10.22.19.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Mar 2025 22:19:32 -0700 (PDT)
From: Nick Hu <nick.hu@sifive.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Anup Patel <anup@brainfault.org>
Cc: Nick Hu <nick.hu@sifive.com>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH] dt-bindings: timer: Add SiFive CLINT2
Date: Tue, 11 Mar 2025 13:19:03 +0800
Message-Id: <20250311051903.3825-1-nick.hu@sifive.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Add compatible string and property for the SiFive CLINT v2.

Signed-off-by: Nick Hu <nick.hu@sifive.com>
Reviewed-by: Samuel Holland <samuel.holland@sifive.com>
---
 .../bindings/timer/sifive,clint.yaml          | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/devicetree/bindings/timer/sifive,clint.yaml b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
index 76d83aea4e2b..93d74c504b5f 100644
--- a/Documentation/devicetree/bindings/timer/sifive,clint.yaml
+++ b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
@@ -36,6 +36,9 @@ properties:
               - starfive,jh7110-clint   # StarFive JH7110
               - starfive,jh8100-clint   # StarFive JH8100
           - const: sifive,clint0        # SiFive CLINT v0 IP block
+      - items:
+          - const: sifive,clint2        # SiFive CLINT v2 IP block
+        description: SiFive CLINT v2 is the HRT that supports the Zicntr
       - items:
           - enum:
               - allwinner,sun20i-d1-clint
@@ -62,6 +65,22 @@ properties:
     minItems: 1
     maxItems: 4095
 
+  sifive,fine-ctr-bits:
+    description: The width in bits of the fine counter.
+
+if:
+  properties:
+    compatible:
+      contains:
+        const: sifive,clint2
+then:
+  properties:
+    sifive,fine-ctr-bits:
+      maximum: 15
+else:
+  properties:
+    sifive,fine-ctr-bits: false
+
 additionalProperties: false
 
 required:
-- 
2.17.1


