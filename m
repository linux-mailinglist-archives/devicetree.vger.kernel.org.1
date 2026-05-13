Return-Path: <devicetree+bounces-297137-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2JvLBoPsBGr7QQIAu9opvQ
	(envelope-from <devicetree+bounces-297137-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 23:26:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 798AE53AFAE
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 23:26:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 85B1E3045A82
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 21:25:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EB643B635B;
	Wed, 13 May 2026 21:25:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Nsk2ssRN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f54.google.com (mail-yx1-f54.google.com [74.125.224.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC1403B776E
	for <devicetree@vger.kernel.org>; Wed, 13 May 2026 21:25:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778707551; cv=none; b=c8LXH38X5/TvIivGWZwaq0Eqkqd9GNdU8N+YzAM1QO1mKCkrq38hQlO5PL13GfP1ial4OngkReFCdj1WsRwVwGHXlB5VIEm2zN8yAEqf2Gsuuq8Z4yAYYGiJR0btytBzI5iRuhupygajAUzFGiXgNF8gZMsAzRTHbsfsfWNCOB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778707551; c=relaxed/simple;
	bh=0YOIeEfM7VyMCOce1KEss0Hecntxk+HxQDlZl2XCTRY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KKKjzHJViJ+1bAJf/w+Qea80IQf3kJr1Xlpkvc4nMhjDRd/a6steU0XlYqVYaE0L4YFnc/4BGB4yT20xNkJSn7LoqTRsFogrPz7hcTWxG0tGicSyQ4zD/MI6G7Pqmq7P0ZR3zyYc++BDUBiZbEJE5sT5nJtnCFIFd+eIKem5afE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Nsk2ssRN; arc=none smtp.client-ip=74.125.224.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f54.google.com with SMTP id 956f58d0204a3-65c6a2158d3so5648331d50.3
        for <devicetree@vger.kernel.org>; Wed, 13 May 2026 14:25:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778707549; x=1779312349; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/cJlB+8b3x/3rtxKDJ9m4uDjdrOStGjNFVxlZruzgDE=;
        b=Nsk2ssRN1aEOW/O7GOR+etc+rMn26rzl9oqPFn6e+Re65IhjOOdgzzF5U6+S+5EETF
         xoUCZKS3tIVBzmxErTJgcttR52oywhZ4KNZgFQqTYZm9bdJ9oNrn4HoRsMx6HDPXCgL2
         VDSaltAfBo3oTx3KYO1RDOeytTn9g/e6EcQey0J71GxQJS2FZs3d9xR9ffgMLUbq0aq9
         lBXAOPa7dXvtHhU37vtKU04Kruqq61K96xZ2buzaFgxfD8vTmSE67IEUQXdRYGLdkSDh
         Ivb1JeOQe0h9oXfBJV8L0l94QMUEtdHhUJec0F2Cd49Y6zbkmX1aYDvIbDlNitT0rE9s
         yEsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778707549; x=1779312349;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/cJlB+8b3x/3rtxKDJ9m4uDjdrOStGjNFVxlZruzgDE=;
        b=PWceCkPVuIl3PgDI2LPPm20/kPJL+zSJBx3Zy3/qKCuLztI8NUPVXWfkAGz9FlMoj3
         wzvMmPe8DY8AOZ4/rxvdYEtgJo6ZzpkzkIY5ye6vLtSOko7wO9WBJuLvDDmSm3+hDuCm
         o7jEGrNsFeNy5VtaoufHSAU1KI2IqLfNKsou3hX683qPY3od5Deft4ZIZWjulyTZ8wg2
         5DOOtFldXVaECRysDXcyNNfSM+YY6yVMwMfHrTTT1JgVDWhnWLLqjGEn8/LeFVQDt2Te
         tid9VjqGzvSCNBwoaAbApoCxL9sV6/JDdoJZ0YcrUCEqJRqdBd0lqiXfjDhA6XKteEKO
         4INQ==
X-Forwarded-Encrypted: i=1; AFNElJ94ogp3F7V1ZjjbawiAwQBtfd4IRwJ1bdxC+QTau5UFqBFhZFGNGrHDmv4M5AnG2J4dluiUgt6zPNWn@vger.kernel.org
X-Gm-Message-State: AOJu0YzbMz5KsHyohzRD1KntHVT7T8x6NxEcgxCmh5LO2/sgoz9EK+5j
	d7pIqlZWy0J8ZNNksnCqwzPK40DrVLTr0CMXmFnH1gjeC/5BteBv9OzN
X-Gm-Gg: Acq92OEBySV9kAgE6Gb1yURuoPDDXU59GfuSZFdQ84LuyjpBk280ZWBYtrENk5oZhvz
	xWF2dO+OHxRg8DCzf1gkHq1DlWjT04f2jhQUS6dawda13/vwdwPhyW0xlq8s2oZ8fx5nqyOfyo0
	Imd2vGO7KNz3HdCPAU/39tQ969zEkiatRq5DOKfeDy3MJC3r2DmOCRKLE1T03edYytnXriCcaYu
	9gX51AD3objvJzT/HI9OjiOcobJCyFg4JQ2lqx1v2l67M1p9ky6rDRiGB6C3y5cEWTHcGD1lcfA
	gW7RJLoq/RTBUmRSuzGmwyod6Q6gu0sheBqUnN0EwTy4yadwQL3CRz0fltgK2im4t6eDZOnT5Ss
	4+dGrCHrhXA4o6LCtKNHzjFnuis9YxF3q6rFYxdaQ2yTZWamZ66t/5M4lgcdX2XYreA0hxJoja4
	YfgxrSrNnGCcyZLiF7CF59xnzjPA==
X-Received: by 2002:a05:690c:6983:b0:7ba:a726:57a4 with SMTP id 00721157ae682-7c6ac5aad93mr55193477b3.36.1778707548765;
        Wed, 13 May 2026 14:25:48 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7c7f28b810csm3715107b3.14.2026.05.13.14.25.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 May 2026 14:25:48 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Thu, 14 May 2026 00:24:30 +0300
Subject: [PATCH v7 1/8] media: dt-bindings: venus: Add qcom,msm8939 schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260514-msm8939-venus-rfc-v7-1-33c6c6fb9285@gmail.com>
References: <20260514-msm8939-venus-rfc-v7-0-33c6c6fb9285@gmail.com>
In-Reply-To: <20260514-msm8939-venus-rfc-v7-0-33c6c6fb9285@gmail.com>
To: Bryan O'Donoghue <bod@kernel.org>, 
 Vikash Garodia <vikash.garodia@oss.qualcomm.com>, 
 Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-clk@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, Erikas Bitovtas <xerikasxx@gmail.com>
X-Mailer: b4 0.15.2
X-Rspamd-Queue-Id: 798AE53AFAE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-297137-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,apitzsch.eu:email,devicetree.org:url,1d00000:email]
X-Rspamd-Action: no action

From: André Apitzsch <git@apitzsch.eu>

Add a schema description for the Venus video decoder/encoder IP in
MSM8939.

Signed-off-by: André Apitzsch <git@apitzsch.eu>
Reviewed-by: Bryan O'Donoghue <bod@kernel.org>
Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
 .../bindings/media/qcom,msm8939-venus.yaml         | 79 ++++++++++++++++++++++
 1 file changed, 79 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/qcom,msm8939-venus.yaml b/Documentation/devicetree/bindings/media/qcom,msm8939-venus.yaml
new file mode 100644
index 000000000000..10a50a410748
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/qcom,msm8939-venus.yaml
@@ -0,0 +1,79 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/qcom,msm8939-venus.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm MSM8939 Venus video encode and decode accelerators
+
+maintainers:
+  - André Apitzsch <git@apitzsch.eu>
+  - Erikas Bitovtas <xerikasxx@gmail.com>
+
+description:
+  The Venus IP is a video encode and decode accelerator present
+  on Qualcomm platforms
+
+allOf:
+  - $ref: qcom,venus-common.yaml#
+
+properties:
+  compatible:
+    const: qcom,msm8939-venus
+
+  power-domains:
+    maxItems: 3
+
+  power-domain-names:
+    items:
+      - const: venus
+      - const: vcodec0
+      - const: vcodec1
+
+  clocks:
+    maxItems: 5
+
+  clock-names:
+    items:
+      - const: core
+      - const: iface
+      - const: bus
+      - const: vcodec0_core
+      - const: vcodec1_core
+
+  iommus:
+    maxItems: 1
+
+required:
+  - compatible
+  - iommus
+  - power-domain-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/qcom,gcc-msm8939.h>
+
+    video-codec@1d00000 {
+      compatible = "qcom,msm8939-venus";
+      reg = <0x01d00000 0xff000>;
+      interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&gcc GCC_VENUS0_VCODEC0_CLK>,
+               <&gcc GCC_VENUS0_AHB_CLK>,
+               <&gcc GCC_VENUS0_AXI_CLK>,
+               <&gcc GCC_VENUS0_CORE0_VCODEC0_CLK>,
+               <&gcc GCC_VENUS0_CORE1_VCODEC0_CLK>;
+      clock-names = "core",
+                    "iface",
+                    "bus",
+                    "vcodec0_core",
+                    "vcodec1_core";
+      power-domains = <&gcc VENUS_GDSC>,
+                      <&gcc VENUS_CORE0_GDSC>,
+                      <&gcc VENUS_CORE1_GDSC>;
+      power-domain-names = "venus", "vcodec0", "vcodec1";
+      iommus = <&apps_iommu 5>;
+      memory-region = <&venus_mem>;
+    };

-- 
2.54.0


