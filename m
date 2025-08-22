Return-Path: <devicetree+bounces-207769-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F950B30C33
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 05:07:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 305921D01736
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 03:07:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EB7A2701C2;
	Fri, 22 Aug 2025 03:06:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="lZpte2w5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97BF026B0AE
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 03:06:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755832003; cv=none; b=HEeGDCgr1A9U3dYSE1IeTXAq7i9o1arADaeLI+Ave/yOoURXd5MMcmNTZMk7npMxFu8/gHmgbF6qk3trA4rFAZkBxLlPjZszWLbkkaOvvlQffXJu8iawkg80KF6980R55zxZSQ3HoF616xNI9w8WiD8njH6JdGGHU0NMXy2qrWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755832003; c=relaxed/simple;
	bh=k16Ro7327MWHaqNkOpPs6wLh2gCwtpI8bM29orBEHX4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Q7y2JJx5Ot+59xva9P71I520I5MaTCf+QANefV6g/2vuakKzCghI4Iw4Jy4TwO6qpvOAOwjSipzIgvv0r76xQkMtUsXwwbPZr/b3Es8SIqPJuSBUHBarw64mqQ3cY4P2wIO4bNhFZMJu3jH75QNPtkEJ8p3kZstNjL1RRqfJFFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=lZpte2w5; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-32326e8005bso1858663a91.3
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 20:06:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1755832001; x=1756436801; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aaYtJX2FWb8MRA+YGF1PwcizqXL95f52x/ivDYOROU8=;
        b=lZpte2w5A/e2BYmZqc8LzUUQOOPf5FzgfjJMhxnOiGa6ZtrADFkWLkKPN39xxaajfM
         TrBwf2s6IMff8wa1/JlbILAg40U4dgTLhKKxHavugDQw3Pa8/aruzIpD1iFuDlTqtEkP
         7rm+I3nzESX/tNql2rW+SewedQGL1kBjTN3oCmTOuF5N1u+EJzA690kFRySJ/b1nGliQ
         9iWmgt01JY38rTCYNMZp3yMr5NqYOiXEcQ+g8/9C+ALdtgYgZRbNrUERQQq4f8q7lhm4
         KomsulYJBNhg4eE0ea/BOYQ0iv0Y/2eCbISzksgtzclY6E7sE/B1B4yyiMQVa7dnRr5v
         FY2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755832001; x=1756436801;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aaYtJX2FWb8MRA+YGF1PwcizqXL95f52x/ivDYOROU8=;
        b=gJXVM2QGBlUUSodhX9ygwnNPlY7jYLSU6Od/K8DGFL3N8HwkwCOgZVeklj1J2p61Ur
         tcOcWHMLb1OHH/tfFsUGkzw8UvPA4s/fUylclZlBtnG1iFr4jBNRklLKrkyGDYi+IR4F
         4Z7XFiioh2NvMR90arqkwdArBjIsxlJCRnc1V2PZrEVuwXsF6AAI0eKAFquyMKn582Kk
         SiAEpsqmy7LQ3afz4M7CmC0y/mfw+zDJXYBcZvB8nADKcY/2Hxax/r3P5N10F9K0V5R9
         99Eu0YBPs4NSSihxxEcJVghX9E3uU2U0TxP56rieu40OUchODpwC+EzX5uXJFqI/nhiC
         FbQA==
X-Forwarded-Encrypted: i=1; AJvYcCWwmnpMXVe96uCt9dkb2mEHlUQb9OXlZSCm6UFLKMtdiglN4vgPzJf+iBMuK1FhTkI+Dsr03SCC3VhS@vger.kernel.org
X-Gm-Message-State: AOJu0YwQDoX3S7l5L7R7NgjeFKUd/Sff3JJ6/aQ85wjnTnBC7/9sKHLw
	DAemnvN+/ZJyNSgap+lF5l+CD2hGZNZRJh6n/OuGpQOqurPGn4u4JiWnAV8d41ht1HE=
X-Gm-Gg: ASbGnctnsGUheLf9hhTIR63LoitdPW0Xs3dBmntX3lD1WybqA1dbfnkJRpp74iRWJ1j
	9c5jXM9uuo5MS6tCCak+Fv+D00B2Iog6/bpFVlHtjEELWrHyA14evjA0b28SvhR4zOpquNYoYu5
	YdvdvY53wiHYVTbInOr32UVr1us8Q7N99HqGupla6QkCbk0dtYNPVyTeZNcbJHsEO18maHeDhdi
	ARyYrYbps5e+OMBXdd1fQsp4yLddXR8JLfoJb1RHO2/bMeY9Kbo8+WK6FIyh1X85xm9dcypxM6J
	kwXYVTINR292blREhA55zZ88bn5k088YuH7Yjq//ujd7DIuUL/9uE9kKmm2CF90ncHmJA7T6yaS
	H1RB9hFVA+cOqlI0K0epfNn48n//l41jrmQ==
X-Google-Smtp-Source: AGHT+IHtoiI+ywaKLlu/wESYvwFaF1Wdo5+3G/aByEkmXZSAYsSzFIutpoI18vcBU1inhQ9OszGlwA==
X-Received: by 2002:a17:90b:2c84:b0:31f:ad:aa1b with SMTP id 98e67ed59e1d1-32515e3bfd0mr2287803a91.3.1755832000590;
        Thu, 21 Aug 2025 20:06:40 -0700 (PDT)
Received: from [127.0.1.1] ([222.71.237.178])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b47769afc1bsm2756777a12.19.2025.08.21.20.06.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 20:06:40 -0700 (PDT)
From: Guodong Xu <guodong@riscstar.com>
Date: Fri, 22 Aug 2025 11:06:27 +0800
Subject: [PATCH v5 1/8] dt-bindings: dma: Add SpacemiT K1 PDMA controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250822-working_dma_0701_v2-v5-1-f5c0eda734cc@riscstar.com>
References: <20250822-working_dma_0701_v2-v5-0-f5c0eda734cc@riscstar.com>
In-Reply-To: <20250822-working_dma_0701_v2-v5-0-f5c0eda734cc@riscstar.com>
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, duje@dujemihanovic.xyz
Cc: Alex Elder <elder@riscstar.com>, Vivian Wang <wangruikang@iscas.ac.cn>, 
 dmaengine@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, Guodong Xu <guodong@riscstar.com>, 
 Troy Mitchell <troy.mitchell@linux.spacemit.com>
X-Mailer: b4 0.14.2

Add device tree binding documentation for the SpacemiT K1 PDMA
controller.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
v5: No change.
v4: Add Rob's reviewed-by.
v3: New patch.
---
 .../devicetree/bindings/dma/spacemit,k1-pdma.yaml  | 68 ++++++++++++++++++++++
 1 file changed, 68 insertions(+)

diff --git a/Documentation/devicetree/bindings/dma/spacemit,k1-pdma.yaml b/Documentation/devicetree/bindings/dma/spacemit,k1-pdma.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..ec06235baf5ca3ecffe7dba9bb425b242985660e
--- /dev/null
+++ b/Documentation/devicetree/bindings/dma/spacemit,k1-pdma.yaml
@@ -0,0 +1,68 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/dma/spacemit,k1-pdma.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SpacemiT K1 PDMA Controller
+
+maintainers:
+  - Guodong Xu <guodong@riscstar.com>
+
+allOf:
+  - $ref: dma-controller.yaml#
+
+properties:
+  compatible:
+    const: spacemit,k1-pdma
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    description: Shared interrupt for all DMA channels
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+  dma-channels:
+    maximum: 16
+
+  '#dma-cells':
+    const: 1
+    description:
+      The DMA request number for the peripheral device.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - resets
+  - dma-channels
+  - '#dma-cells'
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/spacemit,k1-syscon.h>
+
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        dma-controller@d4000000 {
+            compatible = "spacemit,k1-pdma";
+            reg = <0x0 0xd4000000 0x0 0x4000>;
+            interrupts = <72>;
+            clocks = <&syscon_apmu CLK_DMA>;
+            resets = <&syscon_apmu RESET_DMA>;
+            dma-channels = <16>;
+            #dma-cells = <1>;
+        };
+    };

-- 
2.43.0


