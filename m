Return-Path: <devicetree+bounces-271337-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KLXyIJj6qGnVzwAAu9opvQ
	(envelope-from <devicetree+bounces-271337-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 04:38:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE9720A992
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 04:38:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 363E7305BAB4
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 03:34:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C66A126CE1E;
	Thu,  5 Mar 2026 03:34:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gHtc/9li"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75958189B84
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 03:34:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772681654; cv=none; b=S6eSYn5ksZSyRbKPhAXTEKN70Bph8xU6RcjJoFLvI26ERYQrGn7tEtPOy4Z0akQoUSx1e0CzDIEaAQBY4qPu4bzR5xF5XVsh204nyGe4a9EVlmtPoIdpoSpR9PXHfNzcAkEzvPRVRJ3N0vROGIPndUcWMtwa5bCqP4MWSt0Hj1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772681654; c=relaxed/simple;
	bh=G93cII+3A1u7CvKJrZXIJlpca2wo8XCXaCLCELHybVQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aIRObmsNe2q9n0A+Ndjh9CxgnbDm5K9KupQxht+Y/9bCuPxEu6Pcxe3g+0LSrvdVL+QeQ3hoY5aB7Xu7KgWjifoBVgO+4vkQGx6EBNHp5UR2nXWimr3PyeEZdFlo+9JtH1cQt/NBAJXN4Y/z9dVUAAd9d/LgKlNmssP3kJRIz6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gHtc/9li; arc=none smtp.client-ip=209.85.160.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-506bad34f51so65344011cf.2
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 19:34:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772681652; x=1773286452; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GoyJS43DjogCNIlYUyLOl9RH46vOQLUOd3a+06hfz+Q=;
        b=gHtc/9liE0Xz/URCsAUZ/VJmEMYRNykrH0X2KvPxyN+gND8W5aEEgP2fHox/Q/FzGv
         gqqWtahGYLEpP2BmRtqJd15wOxQj7mTWSnNe86F+nxd06KKh1kAi2tk0d7c5RSi+dIAx
         dI4IXsgWvhiV9mYFHcMUvZdI8MUfPnR64bG5UFVRkGbJtn2Y3bm6MzzcxbWfX9cuChSi
         n87L+2x+5GDXWp0xItnNLYzJBg1FTdAUdHa6SDSIQxB0Mgg+ALB9oigI6TnED23sFexu
         VhD+KFiUX80qxJCdtvzL4k+sb9kdq0lO3d+j3V5CIlWqxeLG8UKn8qRNwCDKvJ8fN70r
         ZFcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772681652; x=1773286452;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GoyJS43DjogCNIlYUyLOl9RH46vOQLUOd3a+06hfz+Q=;
        b=laueLOIBViWG2qPseMIWvZzNnwShwzKHsaSwEXGpH6Hf90ifTXmOjmib9L/0h48u5p
         BSjd8Dh4ve18q0NChxqg7mLYV+OoOKyWiUR4GyEjZjt/aVwlzubNwDXNrzrl7nqnXlbn
         PIW43/RUiDFFyuYWWuxidk7a5rV3mdG0L+KvdFCqyfq7jdfataCnD1kNOjK6n9YLfEFI
         +Ej/JIh8UuIpDa2ArVe7Gio/r9Mys4BkwzV1KkPxNJ21LkOcml3hsjhp/7I9Wadv3ySu
         6kY0vv22/7VsXOo3fUcqNEy+yDgAiu0cLkzpf4E8FkMfcO8ho2kcBvkk4X7wAXpbeFQh
         dDSg==
X-Gm-Message-State: AOJu0YzAnbnzLfn0ACFAImMiD/CHzybPIJAoZx+rQ6q9dsJluSpREq9X
	KXDVCunOv0X74b/Odwr4egOXA/MholZCqA2AsWe2ZA/382YkhNKeeXxI
X-Gm-Gg: ATEYQzzNNUrhrDun2FMacmKtIh8QzcB0yq/LRYZZGsmIti0d8Jzm9LFcQ9JGSm1S8bN
	HR1p2PCx6Nt/CnC1FCZgT+xA0HiFriMGJVcYw0MmNm34Sj0tggOmEesC5LKFKGYyrT6PMpPhhD8
	QP6tCjVyDQRXWnEfTBCMlC48JCPcpwYgGob4XkU/naOK71R9OXKRvV9eNztP2U4cORkUCPviXqV
	g7m2yDvDjMk1EH1Q7y62wYrJgxfWfYgWIWSX2aquAE1d8wKf/5OWJYvKenVU7LMj/bNTsL1Vc6Q
	t1Ev52/zu553ClTc/+QICEf73tb2xF8oG3pNekUt0VkorzQ4d0I47vC9imnCnh2L7MAhK62MfFk
	hc8wgyq3Yy3olapoRDXcQoSDrJdML4NOb8rqw2FTgV7veHv8ApobwS9z87WMCyAVi2TAXibCJUV
	3KOg85gM/7T394zKPrQ7TS8xDqQjg=
X-Received: by 2002:ac8:5a82:0:b0:502:9e93:617d with SMTP id d75a77b69052e-508db36395dmr51002631cf.46.1772681652477;
        Wed, 04 Mar 2026 19:34:12 -0800 (PST)
Received: from [172.17.0.2] ([134.128.219.200])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-507449630b6sm190667601cf.7.2026.03.04.19.34.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 19:34:12 -0800 (PST)
From: Yuanshen Cao <alex.caoys@gmail.com>
Date: Thu, 05 Mar 2026 03:34:07 +0000
Subject: [PATCH v2 1/2] dt-bindings: power: Add Support for Allwinner A733
 PCK600 Power Domain Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260305-b4-pck600-a733-v2-1-ba6bbed7d253@gmail.com>
References: <20260305-b4-pck600-a733-v2-0-ba6bbed7d253@gmail.com>
In-Reply-To: <20260305-b4-pck600-a733-v2-0-ba6bbed7d253@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Ulf Hansson <ulf.hansson@linaro.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, Yuanshen Cao <alex.caoys@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: 2EE9720A992
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271337-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,sholland.org,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.linux.dev,gmail.com,oss.qualcomm.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexcaoys@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:email]
X-Rspamd-Action: no action

The A733 PCK600, similar to A523 PCK600, is likely a customized version
of ARM PCK-600 power controller. They share the same BSP drivers in the
package provided by Radxa, with the only difference being the lack of
resets.

Therefore, document A733 compatible and make resets required only for
the other models, as well as prepare the PD definitions for future
device trees.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Yuanshen Cao <alex.caoys@gmail.com>
---
 .../bindings/power/allwinner,sun20i-d1-ppu.yaml        | 17 ++++++++++++++++-
 .../dt-bindings/power/allwinner,sun60i-a733-pck-600.h  | 18 ++++++++++++++++++
 2 files changed, 34 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/power/allwinner,sun20i-d1-ppu.yaml b/Documentation/devicetree/bindings/power/allwinner,sun20i-d1-ppu.yaml
index a28e75a9cb6a..b97361ce2a00 100644
--- a/Documentation/devicetree/bindings/power/allwinner,sun20i-d1-ppu.yaml
+++ b/Documentation/devicetree/bindings/power/allwinner,sun20i-d1-ppu.yaml
@@ -20,6 +20,7 @@ properties:
       - allwinner,sun20i-d1-ppu
       - allwinner,sun55i-a523-pck-600
       - allwinner,sun55i-a523-ppu
+      - allwinner,sun60i-a733-pck-600
 
   reg:
     maxItems: 1
@@ -38,9 +39,23 @@ required:
   - compatible
   - reg
   - clocks
-  - resets
   - '#power-domain-cells'
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - allwinner,sun8i-v853-ppu
+              - allwinner,sun20i-d1-ppu
+              - allwinner,sun55i-a523-pck-600
+              - allwinner,sun55i-a523-ppu
+
+    then:
+      required:
+        - resets
+
 additionalProperties: false
 
 examples:
diff --git a/include/dt-bindings/power/allwinner,sun60i-a733-pck-600.h b/include/dt-bindings/power/allwinner,sun60i-a733-pck-600.h
new file mode 100644
index 000000000000..cf476a005b55
--- /dev/null
+++ b/include/dt-bindings/power/allwinner,sun60i-a733-pck-600.h
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+
+#ifndef _DT_BINDINGS_POWER_SUN60I_A733_PCK600_H_
+#define _DT_BINDINGS_POWER_SUN60I_A733_PCK600_H_
+
+#define PD_VI			0
+#define PD_DE_SYS		1
+#define PD_VE_DEC		2
+#define PD_VE_ENC		3
+#define PD_NPU			4
+#define PD_GPU_TOP		5
+#define PD_GPU_CORE		6
+#define PD_PCIE			7
+#define PD_USB2			8
+#define PD_VO			9
+#define PD_VO1			10
+
+#endif /* _DT_BINDINGS_POWER_SUN60I_A733_PCK600_H_ */

-- 
2.53.0


