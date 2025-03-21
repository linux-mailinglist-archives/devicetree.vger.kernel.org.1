Return-Path: <devicetree+bounces-159543-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DC107A6B619
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 09:35:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A6EC4189FF87
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 08:35:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCBDE1EF0B2;
	Fri, 21 Mar 2025 08:35:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="mMMvcy9n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480BC1C5F2C
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 08:35:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742546121; cv=none; b=TvdGvM8Z/pB652+olPsJ7GSBjFkLFAAuT5vxtqOK6vFgH3l06M7VPZUm2ht3wMHoBB5wDWV46IbUkPVAHP8btneBJXUZAeKDqdnlWAQ8QULSYNovEnBhXukXm0+XzKZwOBHX93Kfwd1GqojjdnbVrXUerJYhGE+NXPNbYd93L5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742546121; c=relaxed/simple;
	bh=SHEPQMA7zsG0pcW3VUHnjFMKPkC+BT7CZDZhG145VOk=;
	h=From:To:Cc:Subject:Date:Message-Id; b=iawWMKzMQrnmII9NiwPbOXsb8DD6oKCtP/w9f7wMhO0IPRPETn+eDF7A4tuViRqG8Hyo3pl5JpvXvEBytH6JC3+ERl4LxgL3JvZ4UFRi+TMJBmUNDx7cqM35Atp+qkxG6FgsE08hKM1720WodhLEnhFaP2OroNDw8HVLqMl1dc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=mMMvcy9n; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-226185948ffso32859425ad.0
        for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 01:35:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1742546119; x=1743150919; darn=vger.kernel.org;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KNIYAxNTxrJgvNOeOr0z0lxXWvmJniaTC55sev3rziA=;
        b=mMMvcy9nCG2qLE2Ll3jGTh4Eh2xfPFvaI9MUK0Rio+/iR3Cm5ev5SynZ9GrNdO+WPO
         +cUFuCBN8WYoLxSsUTvSo8WzPL3ivYez0UKQUNsOqJm1J8mF4K/rFf93XvWNTQ0OTN1O
         lHPSRo4o6xm8SuJ1pLGjtwyKfxNYyFBRyCCXlFCe56wI7aQA76dxuWUyTkbUI29+pKZm
         I4ql+lprYOb0YeULbjCBM44GvUHalSpVo9K0B0CVLahAaumLYLXCW/Q1/uixazwcO/rU
         /FqBE8NGYgE0lPEFwR4UPAbmJkIlLrA5B7bKak95L0XE7ZJnVGWlxljCsyOTNGofWU9B
         hJ9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742546119; x=1743150919;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KNIYAxNTxrJgvNOeOr0z0lxXWvmJniaTC55sev3rziA=;
        b=QKu+TsgwJQIer3J48MF2R4F7g8AAdOK0w/LT5GZrFx8iZmQRTCmHGsPQW2YYROGKd+
         MVbAp0jbzEg3Vj5P8gPjrBHEvXSOBteqwLOD1bcDfDbcSECuG9Fx4HWIMhCR6/1fkV5O
         TAO9RLMaEA0vMtgArVuTtegBUvEsm7iZDNoPtmh6+2QmgwgDS7oUtglxC/DDHEWfye3+
         T31gW/skGreHC//yQGOq/x/E4fOen0W8A+8txrNxdG7rsh/T9KaznQpPGzvoXtOUwmDY
         A7FdmyeHdMM1q9MU9oRYGg6nIyB+/wXVrX6Lw3/3jf68z8edklYfhLdwDnzEia6jpk3A
         PYyg==
X-Forwarded-Encrypted: i=1; AJvYcCWAEcfqnptD7ntkjJFflj8kzxfuC587i3lwS6+E2bMQcv6ISWfVDzpyDOK8ZreJmHJV4LM/bVc+seln@vger.kernel.org
X-Gm-Message-State: AOJu0YwjoBinUlhPDeJzUd6pafvOFcV6oWaR7z3NLKYv4tsbd2Xr6Ayj
	YmNhvXiYsXqQ0RWwBJxGyijTbpLhhUW7dfuU+RyKFGEMYrdkwliq2DAmrsYr1IE+xJJ7yRFjHSr
	Y
X-Gm-Gg: ASbGncuCcbR5vxqucgQwUZ2y3koSbIHt0QattRIgDPftzcbiAVtp62HBOUbQIIzmK/C
	OLQUal5Q7naH58ZYSE70ZP4IOCjniy91aNGq+nyjaJuiGYktS6UV6R+5O1j7F7hYhcAoEE+GYJk
	G/i12XZecgnnFjJWWPYbNmvagv/B3R9UM18lNCfeUfPnsagzB1IyB9msMlB3+BpJFrYjj7DPx/9
	fHajiObnj+A8pLjselxP6mR/ejsZg+hmyqqadS24gP0sZGLAkOoJiawJ59skRM8Gua50FMHdxDa
	P0JN0UlBcN1UU+U3DxD9AOc8egF8liCw/4xZoFcWgX/mWXjsAuS98X29+RZB54tYNESsIj/TzeK
	P0A==
X-Google-Smtp-Source: AGHT+IGXFGLuEoU/vQJUliqJjmPIq4zF6xy634F564ds+E0ZTlK8S163nLM7MaGqqNkry0aYcIfGgQ==
X-Received: by 2002:a17:902:ebc9:b0:220:c63b:d93c with SMTP id d9443c01a7336-22780e234c5mr34978645ad.44.1742546119383;
        Fri, 21 Mar 2025 01:35:19 -0700 (PDT)
Received: from hsinchu26.internal.sifive.com ([210.176.154.34])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-227811f1462sm10857625ad.210.2025.03.21.01.35.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Mar 2025 01:35:19 -0700 (PDT)
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
Subject: [PATCH v3] dt-bindings: timer: Add SiFive CLINT2
Date: Fri, 21 Mar 2025 16:35:06 +0800
Message-Id: <20250321083507.25298-1-nick.hu@sifive.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Add compatible string and property for the SiFive CLINT v2. The SiFive
CLINT v2 is incompatible with the SiFive CLINT v0 due to differences
in their control methods.

Signed-off-by: Nick Hu <nick.hu@sifive.com>
Reviewed-by: Samuel Holland <samuel.holland@sifive.com>
---
- v3 changes:
  - Add the reason for the incompatibility between sifive,clint2 and
    sifive,clint0.
- v2 changes:
  - Don't allow sifive,clint2 by itself. Add '-{}' to the first entry
  - Mark the sifive,fine-ctr-bits as the required property when
    the compatible includes the sifive,clint2

 .../bindings/timer/sifive,clint.yaml          | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/Documentation/devicetree/bindings/timer/sifive,clint.yaml b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
index 76d83aea4e2b..34684cda8b15 100644
--- a/Documentation/devicetree/bindings/timer/sifive,clint.yaml
+++ b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
@@ -36,6 +36,12 @@ properties:
               - starfive,jh7110-clint   # StarFive JH7110
               - starfive,jh8100-clint   # StarFive JH8100
           - const: sifive,clint0        # SiFive CLINT v0 IP block
+      - items:
+          - {}
+          - const: sifive,clint2        # SiFive CLINT v2 IP block
+        description:
+          SiFive CLINT v2 is the HRT that supports the Zicntr. The control of sifive,clint2
+          differs from that of sifive,clint0, making them incompatible.
       - items:
           - enum:
               - allwinner,sun20i-d1-clint
@@ -62,6 +68,22 @@ properties:
     minItems: 1
     maxItems: 4095
 
+  sifive,fine-ctr-bits:
+    maximum: 15
+    description: The width in bits of the fine counter.
+
+if:
+  properties:
+    compatible:
+      contains:
+        const: sifive,clint2
+then:
+  required:
+    - sifive,fine-ctr-bits
+else:
+  properties:
+    sifive,fine-ctr-bits: false
+
 additionalProperties: false
 
 required:
-- 
2.17.1


