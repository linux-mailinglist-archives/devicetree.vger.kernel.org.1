Return-Path: <devicetree+bounces-288886-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YEMBAbid5mmyywEAu9opvQ
	(envelope-from <devicetree+bounces-288886-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 23:42:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B9A74344E2
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 23:42:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AFAF53030EA8
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 21:36:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A24438A707;
	Mon, 20 Apr 2026 21:36:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JxyA3F3r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D67E4348440
	for <devicetree@vger.kernel.org>; Mon, 20 Apr 2026 21:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776720995; cv=none; b=oQIyyjpfXP2J+VnHRqRkvcq488zyerV2Tz4og7uOnMCanOqyYdziUA3ebpDudqdYhf5AZuR/KMqUWWlL7MWqE9yaRu6cspcAcTbksM8EqDJ4D1fGs+ZpVWTAhbCBF4ps3ljL6MUHmKf18kBdHUSx5gAyYWrRrFiCf6zxhBeKD1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776720995; c=relaxed/simple;
	bh=EKvdaIKyTKvcKJGyia+SK7d+HUNcnLjmavHs+qnlEDI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MF/ZOfap0tx+J6s9t0K7UohlVeOMtn7tfC+tJY5fNJCRdXmlt3YAbNjfWAhtlSHl0b6B3wAjieBGtawv/aEv3VwAk+8VZKatUYqfs6TSbZKfuvRYKH/xm2QjtxLZfCYk+ejdLpTkjhAYIV1sqSxEWZbOG/yYohnWG+ez0FDgx5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JxyA3F3r; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4852a9c6309so31265045e9.0
        for <devicetree@vger.kernel.org>; Mon, 20 Apr 2026 14:36:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776720992; x=1777325792; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PeDXgOZ2fJAOAlM2C3zm9hiJl6sDVNOXzlY1iVGrLts=;
        b=JxyA3F3ra4LE3ND+V8+JSqnBRDB2tlPE2Flnz/ivNKfjbfH9/rrwBEFRuMQwKzWW5A
         EGOmQJB6MEyMHgfMLGMqddDFkjBjciugY5BFnL9JdcMomFOnGZdgwWYpps5Ybmm2MUrN
         Ad2J1qddjha+2HOC9hf6T3IOity3ZRYCi+uX1P4h6Uw3TJlp17n+RGVIG8miACN9JDJ7
         kmUEEXtwRTUy3VqWRqMLXvnh+E60xXOvtGAUhCwr95rxAAkU12E9DZ6dMmciORPXXlbJ
         RRziC8tuXHv9YnEuTUU1guytduNpPRQgTMJAWwiT8FUdl5/kde5Q0fyxP1RC/PO4e9AC
         BMIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776720992; x=1777325792;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PeDXgOZ2fJAOAlM2C3zm9hiJl6sDVNOXzlY1iVGrLts=;
        b=Z/OIgLOikBR+BE2HUlHfhWHbcJ2S6SskNgUk97TTC0lumSZmsTkc3s9iyYjVYkpFpq
         Qvny8WbM7ZzpCWEyykuCs82xYW1f42lp7yxlLwFFzxDOzf3Remux7ReewacDYolapWSv
         UfnZd4S0kSdeKoM4LPZWX3NkMJcec4FH3m5+ZStDheV6zyry2XR/W9ZPob1qRzvxKUOL
         +AAAbv0htDsakfnK6DH6oSXMvf0amRLrEFOxtpvSubp/dZbUiMsO9xVkHQPZmYqI3omj
         NsBb4KhgDJjmstFFOF3jhrQwrs0q2oQgB7Swc/kwm0a8/n6sHicjaNxymBFy5ii/3T1I
         zqQg==
X-Forwarded-Encrypted: i=1; AFNElJ8gp/f84LiYhbZzW8gJkKr6repsR446gfhnqEJQVTBIWRYw7ikSewIv+1w6zc2ZVUQWWl4sbCS8FEzl@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1UDsltAF2Pv6XxFoyB0rA1CXuIRbmWqiDOE98jBAcVXkrqsoo
	FSpNmlC6mhTv9yjpMWe6f6Q7aNv5K8m29HsFvNt9WbPxv2mflo/RZvys
X-Gm-Gg: AeBDievjWQ1/dPNmW3mZpG6UnR96/R8fNoQIGfbVELTl6r5dEAcFCa7iVPgyRP2N3Ba
	5ygbgRndZEsa4XUWNkSNAm9QfAjonmY8TZ8dwYgGWyCxd0ptBo3S5nJuvh3uTuTsdNcKMggSFgF
	5KZ2SeBfYixiWPydxHXO04WAEchpf0qwnBt7GR3ke0qbV49emL/0mCs+9tYJZ63Kx2eY/QvW6rw
	7U3CSe0tAHeRhMkAox/J0OQIo0kDh7FAECG5xVTOG/Nb83w7PmmlZd1hdzh23SB/nHGUEKykJVp
	ONmy7L4Fe0Bmzj54PqSxKjW5am1t88ZyhbNMe5yeMOsEXXxaWc4hCfZCP88BON296gLkWxYvilv
	Jvfpu33W9hJINt4kHblZW6z5BglnzCMefYhAuEGBX13fZ7VrTFD1fdoOXvCgdsaZm4dHujHwDsG
	pSUvY3Mjh2cp6J4ZrSysoM1bY8u+pMXA==
X-Received: by 2002:a05:600c:1907:b0:489:201c:dc46 with SMTP id 5b1f17b1804b1-489201cdf13mr58952175e9.12.1776720992169;
        Mon, 20 Apr 2026 14:36:32 -0700 (PDT)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-488fc140c82sm289500355e9.12.2026.04.20.14.36.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Apr 2026 14:36:31 -0700 (PDT)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: linux-mediatek@lists.infradead.org
Cc: Fabien Parent <parent.f@gmail.com>,
	Val Packett <val@packett.cool>,
	Luca Leonardo Scorcia <l.scorcia@gmail.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sen Chu <sen.chu@mediatek.com>,
	Sean Wang <sean.wang@mediatek.com>,
	Macpaul Lin <macpaul.lin@mediatek.com>,
	Lee Jones <lee@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Linus Walleij <linusw@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Gary Bisson <bisson.gary@gmail.com>,
	Julien Massot <julien.massot@collabora.com>,
	Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>,
	Akari Tsuyukusa <akkun11.open@gmail.com>,
	Chen Zhong <chen.zhong@mediatek.com>,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-gpio@vger.kernel.org
Subject: [PATCH v5 1/9] dt-bindings: mfd: mt6397: Add MT6392 PMIC
Date: Mon, 20 Apr 2026 22:30:00 +0100
Message-ID: <20260420213529.1645560-2-l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260420213529.1645560-1-l.scorcia@gmail.com>
References: <20260420213529.1645560-1-l.scorcia@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,packett.cool,kernel.org,mediatek.com,collabora.com,vger.kernel.org,lists.infradead.org];
	TAGGED_FROM(0.00)[bounces-288886-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[28];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lscorcia@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,packett.cool:email]
X-Rspamd-Queue-Id: 5B9A74344E2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Fabien Parent <parent.f@gmail.com>

Add the currently supported bindings for the MT6392 PMIC. Its MFD driver
does not use the compatible property to bind the regulator driver, so
don't mark it as required.

Signed-off-by: Fabien Parent <parent.f@gmail.com>
Signed-off-by: Val Packett <val@packett.cool>
Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
---
 .../bindings/mfd/mediatek,mt6397.yaml         | 27 ++++++++++++++++---
 1 file changed, 24 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml b/Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml
index 05c121b0cb3d..2866e95e338b 100644
--- a/Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml
+++ b/Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml
@@ -40,6 +40,10 @@ properties:
           - mediatek,mt6358
           - mediatek,mt6359
           - mediatek,mt6397
+      - items:
+          - enum:
+              - mediatek,mt6392
+          - const: mediatek,mt6323
       - items:
           - enum:
               - mediatek,mt6366
@@ -68,6 +72,10 @@ properties:
               - mediatek,mt6331-rtc
               - mediatek,mt6358-rtc
               - mediatek,mt6397-rtc
+          - items:
+              - enum:
+                  - mediatek,mt6392-rtc
+              - const: mediatek,mt6323-rtc
           - items:
               - enum:
                   - mediatek,mt6366-rtc
@@ -99,9 +107,6 @@ properties:
                   - mediatek,mt6366-regulator
               - const: mediatek,mt6358-regulator
 
-    required:
-      - compatible
-
   adc:
     type: object
     $ref: /schemas/iio/adc/mediatek,mt6359-auxadc.yaml#
@@ -231,6 +236,22 @@ required:
 
 additionalProperties: false
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: mediatek,mt6392
+    then:
+      properties:
+        regulators:
+          $ref: /schemas/regulator/mediatek,mt6392-regulator.yaml
+    else:
+      properties:
+        regulators:
+          required:
+            - compatible
+
 examples:
   - |
     #include <dt-bindings/interrupt-controller/arm-gic.h>
-- 
2.43.0


