Return-Path: <devicetree+bounces-311228-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ErSgKKf/LGoXYwQAu9opvQ
	(envelope-from <devicetree+bounces-311228-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 08:58:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4754B67DE13
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 08:58:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=UDsF+ycT;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311228-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311228-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B4BE4300B5A4
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 06:58:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D07B397694;
	Sat, 13 Jun 2026 06:58:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4971388891
	for <devicetree@vger.kernel.org>; Sat, 13 Jun 2026 06:58:40 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781333924; cv=none; b=IRBgnoOG9MZNJsf8IxuG32TkFXFCGB+7uSvxwAUUaAcQu/gI3YLVfAn9KUgfJd4Z22LN/4VtfV4MG8UFkfZSR/21Cl3hjrJi/MXHdDMm2epxts1rfrNkNi0N27yWuA1flzhkO57kXj3Kziz5uTTlwi/sp7WpxUAg6wO1gGUuqio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781333924; c=relaxed/simple;
	bh=7jgzTiHZ5krI2MA++B97YNG6+febRofoGXHNduodpd4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=OuxIvSc+CiqeccEWbPgToffoXVYR+mfUy3f+S5KoJNTIpNYURQQ86vnDTXpctuPH1yEK7Ef/Ah0DjvOwdWYYHd1e6HYpSYRMES2JQVFTEPgoKxr9zwh0MMxyZdRsZhxynh3kLmeYHkejwWTiTaPZcadbBkhLjnrPtTu7nEvKCmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UDsF+ycT; arc=none smtp.client-ip=209.85.128.41
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-490b3637b90so12560645e9.3
        for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 23:58:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781333919; x=1781938719; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jZ66LcteqJ4QI9hjgF9HToSLQnhyQKu6uHIFWcsfYcU=;
        b=UDsF+ycT240Ov/gPPEjnTFfSGBpor6IzTBZaKaNAB2fNy9hfkRTZ/AcCHMr6C5xu4i
         hMa+sV7sTtrSEVOYTNKhIElqFsHJVOLud3oPg4z9wIIXLcvi3NqUtqwbT0ElyySlAIm3
         amV59YRMaL+NXl2Yzl+wAioIMA4BhEhfluMABczTsh2ZT9u12vU5AObNcNeV8VNlbcOr
         YaQdPIzL03EWkeT9t6jr8qgCy2W1Ux+FxEwzsj28O0O4QUbiYrgzafO1bVPsq0uOVpuT
         6T0rKu6hXWjw+RZjGhOz9O5FCTIK8+LEp6ZENN5m7odPMhPl0dGlEl6aYS3+NdGqolHP
         McYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781333919; x=1781938719;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jZ66LcteqJ4QI9hjgF9HToSLQnhyQKu6uHIFWcsfYcU=;
        b=Gja8togpEE/yRGAcihxxCoyoz/yiP8eK/jh+unBfjZDDzjThodVla0rL6xPHDd2/my
         M+1c9PeMisEuYh2xgdTZZZUxGcy7RdW5mPmj2UAmZHmcpdjL4Ri5NXWfrVtj8/6OL5MF
         s268LJWblKX8P+pyHNkDGfZEpCI5nJ+SMVSyTRqGfe/kG5wKU+HRlrzC3bZtfhO0aGiA
         PXtayLbhjl6EPTcQh8WSrOKW3GS73Q5v/Yg2WDnFI5Z9d3L40zu8uwgUIahCF3rXHmXs
         7xqrOpSYYwH73a+xA0rbKc/9gf6kidPxzw+XKhVoLApHroxDxUckt/Zii5LnezGbJhZJ
         Qm3g==
X-Forwarded-Encrypted: i=1; AFNElJ/MAXSNhpWHgsm1uzmKRcuEkeTpI+Y+G4FG7Dc/8pT0gaTNVLjqyxPY6e1WRlGGvld8/AQ8XuB8rBSa@vger.kernel.org
X-Gm-Message-State: AOJu0YzpTJnG339Xd7dMhRlfM5lDfukILSQWEzr9hYNiYbT1NLk2PjrS
	ew+Ub5vgHD4ZacIQqawlVq7RPnOabZxD2NjKApAiDHdAOI4UBwtMcpnC
X-Gm-Gg: Acq92OGbkp2rwbTkkbJz7KCEuq7pOPsuDN9lCEJDSPvfWR7HTF2Fj77uibmtSfRi8RW
	Ne8z+d4xJ1pdr2CJDdBlywB+2H0EdLwFZcjK/v9ELbKE3Kx6O9zLNlVwtYrwcFquBqcROUSD3Rx
	E9NPWizPFewQgi9b8aMIJdtK5SV97vCHBduBjYohwXt8NqkYQRdhfYswskQPVHTZBGaL555rinv
	aOeQl0orCNE16fZev4yuRr5izbKijBEO7755Yo/wX2/VjQpJ+GevqW1TdyqP4obFTMYfLoZFAjR
	pnzKRFS4Ud3h6mO4F9kKzJ+wUDv1ZR+vrPajREvcwpuBp3VKLJBXlmtkjCmmyHdIKTWiW0HfZwD
	1RzKyxmVWiOPJgKvPCL0ulYVl83kNQz4LY43nZhDWeSp9MJ7s0IprLifAdxe4BLpy+NeE5A+t1m
	DfSML1qb9MRV0g1yXWnbEx3XxPAptpwd15S9UK+qFP+w==
X-Received: by 2002:a05:600c:4ed0:b0:490:5e2a:f924 with SMTP id 5b1f17b1804b1-4922008485fmr28715325e9.7.1781333919182;
        Fri, 12 Jun 2026 23:58:39 -0700 (PDT)
Received: from debian.tailb81abf.ts.net ([2a01:e0a:104a:4d80:14c0:9448:1c38:77df])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-492202e5cbasm42917705e9.2.2026.06.12.23.58.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 23:58:38 -0700 (PDT)
From: MidG971 <midgy971@gmail.com>
To: tomeu@tomeuvizoso.net,
	ogabbay@kernel.org,
	heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	ulf.hansson@linaro.org
Cc: dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-pm@vger.kernel.org,
	iommu@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	xxm@rock-chips.com,
	chaoyi.chen@rock-chips.com,
	finley.xiao@rock-chips.com,
	diederik@cknow-tech.com,
	jonas@kwiboo.se,
	Midgy BALON <midgy971@gmail.com>
Subject: [RFC PATCH v4 6/9] dt-bindings: npu: rockchip,rk3588-rknn-core: Add RK3568
Date: Sat, 13 Jun 2026 09:01:13 +0200
Message-Id: <20260613070116.438906-7-midgy971@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20260613070116.438906-1-midgy971@gmail.com>
References: <20260613070116.438906-1-midgy971@gmail.com>
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
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-311228-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[midgy971@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,lists.infradead.org,vger.kernel.org,lists.linux.dev,rock-chips.com,cknow-tech.com,kwiboo.se,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:tomeu@tomeuvizoso.net,m:ogabbay@kernel.org,m:heiko@sntech.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:ulf.hansson@linaro.org,m:dri-devel@lists.freedesktop.org,m:linux-rockchip@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-pm@vger.kernel.org,m:iommu@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:xxm@rock-chips.com,m:chaoyi.chen@rock-chips.com,m:finley.xiao@rock-chips.com,m:diederik@cknow-tech.com,m:jonas@kwiboo.se,m:midgy971@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[midgy971@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4754B67DE13

From: Midgy BALON <midgy971@gmail.com>

The RK3568 carries a single core of the same NVDLA-derived NPU IP as the
RK3588.  Add its compatible.

On RK3568 the NPU NoC bus-idle and power gating are controlled through the
system PMU rather than a dedicated register block, so add a rockchip,pmu
phandle to that syscon.  The RK3568 NPU has no dedicated SRAM rail, so
sram-supply is required only on RK3588.

Signed-off-by: Midgy BALON <midgy971@gmail.com>
---
 .../npu/rockchip,rk3588-rknn-core.yaml        | 27 ++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/npu/rockchip,rk3588-rknn-core.yaml b/Documentation/devicetree/bindings/npu/rockchip,rk3588-rknn-core.yaml
index caca2a4903cd1..e0b948ac47d45 100644
--- a/Documentation/devicetree/bindings/npu/rockchip,rk3588-rknn-core.yaml
+++ b/Documentation/devicetree/bindings/npu/rockchip,rk3588-rknn-core.yaml
@@ -21,6 +21,7 @@ properties:
 
   compatible:
     enum:
+      - rockchip,rk3568-rknn-core
       - rockchip,rk3588-rknn-core
 
   reg:
@@ -50,6 +51,13 @@ properties:
 
   npu-supply: true
 
+  rockchip,pmu:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to the PMU syscon.  On RK3568 the NPU's NoC bus-idle and
+      power gating are controlled through the PMU; this points to that
+      syscon so those registers can be reached.
+
   power-domains:
     maxItems: 1
 
@@ -75,7 +83,24 @@ required:
   - resets
   - reset-names
   - npu-supply
-  - sram-supply
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3588-rknn-core
+    then:
+      required:
+        - sram-supply
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3568-rknn-core
+    then:
+      required:
+        - rockchip,pmu
 
 additionalProperties: false
 
-- 
2.39.5


