Return-Path: <devicetree+bounces-306872-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3pO8CkqFIWrpHwEAu9opvQ
	(envelope-from <devicetree+bounces-306872-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 16:01:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D5DE640A10
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 16:01:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b="n3XmmfO/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306872-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306872-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 63D10300C91F
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 13:54:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAB2348094F;
	Thu,  4 Jun 2026 13:53:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D6B3481236
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 13:53:04 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780581186; cv=none; b=gafhA66+sXyfu3y7G0rU+EE2iBWMr3dgpq6UCxTAcUl60myDDtfuHNNtgjyiemCpLVs7nah69COYSGRKi4wUJWonTA+1cZkao+uiknRVXiGMf1q10r+IG8UYx1nVbk1cdNUOnoG6oOZCR3tNK6yOt/KQuEemiE8wAz0TvT0AOuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780581186; c=relaxed/simple;
	bh=O8Ms3qpIJaPqvvfdUy5Pzd6rw9MEf+RBk9h7q8KnQiI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=khTflFDQ9HSamprjlS//2DUDQDgUIdNmf63eZDZ0fP/GC2aSTBibk+tiWyGdcsf8BSYw7nHg+DcTauY9tDB5xCzpHJwnBbq4oOcbFUA0b3yDIePcNTSzSZ5TicvFXhquh8Y246Ux9Lmd8Arergfmp5Y0oyEMDXEQ8XkBehk15Io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=n3XmmfO/; arc=none smtp.client-ip=209.85.221.42
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-46019edc13dso379206f8f.1
        for <devicetree@vger.kernel.org>; Thu, 04 Jun 2026 06:53:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780581183; x=1781185983; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WLUAaZps1w8Jl8h4U5vkB2L5GVDJaAP0Yeaa4HLYIr8=;
        b=n3XmmfO/I6y8n+Dn4vlAnQ/jyKf+3MpwYHXAEhWZpYYiD4zNaN4AZIqmkLFKgzK3kJ
         Cy9EMImaXNtaZeRlsGi69IHJOa4isKVksRneDKpo2tfs3cCIMhPNoQQfEUVTH24iezbF
         7oUklZXo7SGuL3AE4SRDETsOmMPTraMmNexnUiqX/lItDRGNOrKptf10twQoypQc15Xx
         8vd1EpKOavGAC8yUhiXmeszwvHObRPJcjbv3tNbzIhAhL39L05rgJ234JJvlQKQ8CXXW
         vvvDm1xmFYhuWqX+uUkV6C2XqVjZ8TO9vjOZ3q/2tHi+J/zPPwuOcJr5pOHLb/DyqcPj
         RXnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780581183; x=1781185983;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WLUAaZps1w8Jl8h4U5vkB2L5GVDJaAP0Yeaa4HLYIr8=;
        b=rK+X9w8c7GCrhXJ72wuafNwxe1lzrXLvzSexJ0M4g26Ux2xKFjuPkhKs7D1pruEf/4
         XtyesM+DiYpYjrVP6U4u1HbYPBhtA1jNALlqb1Fw/xu67D1kXQhHLlpMpzfXeUSSI3ik
         t6ZTB1oPB8YmD7Qc2OMF6nmGHPZkhTEnAVFmcTmTpmI4dqhT+7NGfnFeFdxj/lFjqnKB
         /hT6yQRQNlOgh83TvFNi70geHG8M120YckEvg0R5zrAWUwUwGJVEhVbvdgzcaRS6tBcW
         EXiW6u/WNzJVuQ+lnJ4ZMvPrEcQjfDN2fN7rzejDL5qjVCY72WSF+av9R5pfbIDSG/2I
         vkJA==
X-Forwarded-Encrypted: i=1; AFNElJ/qPfRAlwUGlowHyAbdC6zNcLVenhxWxtv7JA76mwDEo1OpFPEhB8pAxdsmfEDkWa92vMCpdL9X6pm0@vger.kernel.org
X-Gm-Message-State: AOJu0YwliebSK4xook72MCW7PEKcuj4zEhiJ5+btVB8xqEL/jk3PpQHT
	y3vrW3Aln6vp6eszDN7sCFtcBWuCZQh+O5bKPQ86+KpBQdneALxXyl4g
X-Gm-Gg: Acq92OEIZkLeWkuLbuI7H0H9JBFo8Y88wM9266xFKv4NpXlLyLY1zaEHlhjcoG7HrWb
	nBBX/TM8POb7EraJmosqVCOd2Te5Q6DubcgDOlXsHG2jLp4BkVFUNZGLbPE+X8lA2XqocvYpswW
	NmUGgzEl+wViDrAxejyMpK8sws03LcuWottH5ehuhPCaFrXB8TpOGz4Qj+jOtEhosmiaXe6I85o
	q5hYVu5SD7s7ferJuMPnVHYv9BGwTTom2BAOr0fIUOmDTD9E+dxZFuIRm4SOEjV8lZiPleoocv7
	PfsbsPK42XhUlhPfkOmif6MbRM0yOzYk8mlrxm3wP84BD4vF6ef9j7W08GpuwB4zpKt4MeRuLba
	3DzqGihiMEyFchJpKcjDbFAktjmUJ5h1k8EWKPxHlSJEVF0j76cM3uylG8g+KpUpxkDfqt1AiaW
	KILo3X7oKMf53X6gEbW3TxyxHM20bDPhSFEAnZSGPaHY0h4h+/F1GAl4hGnu1VrkI=
X-Received: by 2002:a05:6000:982:b0:460:2d57:fcf2 with SMTP id ffacd0b85a97d-4602d58034emr3094425f8f.10.1780581182959;
        Thu, 04 Jun 2026 06:53:02 -0700 (PDT)
Received: from compiler-rock3b.tailb81abf.ts.net ([2a01:e0a:104a:4d80:be24:11ff:fe12:2776])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4601f0a43e9sm16661068f8f.0.2026.06.04.06.53.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 06:53:02 -0700 (PDT)
From: Midgy BALON <midgy971@gmail.com>
To: tomeu@tomeuvizoso.net,
	ogabbay@kernel.org,
	heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	joro@8bytes.org,
	will@kernel.org
Cc: robin.murphy@arm.com,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	iommu@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [RFC PATCH v3 7/9] dt-bindings: npu: rockchip,rk3588-rknn-core: Add RK3568
Date: Thu,  4 Jun 2026 13:52:53 +0000
Message-Id: <20260604135255.62682-8-midgy971@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20260604135255.62682-1-midgy971@gmail.com>
References: <20260604135255.62682-1-midgy971@gmail.com>
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
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-306872-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:tomeu@tomeuvizoso.net,m:ogabbay@kernel.org,m:heiko@sntech.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:joro@8bytes.org,m:will@kernel.org,m:robin.murphy@arm.com,m:dri-devel@lists.freedesktop.org,m:linux-rockchip@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:iommu@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[midgy971@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[midgy971@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6D5DE640A10

The RK3568 carries a single core of the same NVDLA-derived NPU IP as the
RK3588.  Add its compatible.

On RK3568 the NPU NOC bus-idle and power gating are controlled through the
system PMU rather than a dedicated register block, so add a rockchip,pmu
phandle to that syscon.  The RK3568 NPU has no dedicated SRAM rail, so
sram-supply is required only on RK3588.

Signed-off-by: Midgy BALON <midgy971@gmail.com>
---
 .../npu/rockchip,rk3588-rknn-core.yaml         | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/npu/rockchip,rk3588-rknn-core.yaml b/Documentation/devicetree/bindings/npu/rockchip,rk3588-rknn-core.yaml
index caca2a4903cd1..af9936b32e9fe 100644
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
+      Phandle to the PMU syscon.  On RK3568 the NPU's NOC bus-idle and
+      power gating are controlled through the PMU; this points to that
+      syscon so those registers can be reached.
+
   power-domains:
     maxItems: 1
 
@@ -75,7 +83,15 @@ required:
   - resets
   - reset-names
   - npu-supply
-  - sram-supply
+
+if:
+  properties:
+    compatible:
+      contains:
+        const: rockchip,rk3588-rknn-core
+then:
+  required:
+    - sram-supply
 
 additionalProperties: false
 
-- 
2.39.5


