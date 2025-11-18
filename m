Return-Path: <devicetree+bounces-239877-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E1CBC6A3A7
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 16:09:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by tor.lore.kernel.org (Postfix) with ESMTPS id 630B82BF6F
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 15:09:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 820C2364EB2;
	Tue, 18 Nov 2025 15:09:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HWxUDgFR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0B8A364E8B
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 15:08:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763478543; cv=none; b=b535C9fypQlxebJPMZsr9Ads8gmDAKVjr0wIU3rGlWY+1E6TsMw1nSLD1aku4peMbB7eezdkB5Lt0lQeg1YqUePJ7MTnHFuvzVT5uIy9OwqtVRJQSYu0eaPZTFGtW+y5/ajwvJzvl/sin2uKnpP1uU5N4ks1OZsVkH22IiIqRuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763478543; c=relaxed/simple;
	bh=BuavbZl2CuLyT2bJBQ2qGaxBmPAelG/doGphhiOsros=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=azJu6spep3zUe3OuRPi/h5GTHUADOUps/HLFF8/XzcnlNFdknAurNzamC4FZWQC0UTzzJvM3t/XdcFjaZDf1k2paWusO2MH9uf2iwICZEYPlms8NL4VLHxjz0h0dThD6ynaoaORjFmv0x40sAInU+QJR0l7SczsVgqHpOLkDZ6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HWxUDgFR; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-42b32a5494dso3359542f8f.2
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 07:08:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763478538; x=1764083338; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vXSFON/1VQrHCM+f9FmS2ChuuEZCr9AFJjq4nQ/j5F0=;
        b=HWxUDgFRppSxB6QLY4moUKGg5aCIMLNUh/MNrXwRyJW+0ewOUuoA4Wls/BnclQs+YG
         TSKOzFPZ8eTw/fCrbYsBYsqICtaNKuBXyEM7rO1tfJcoQ1xNri0jHrVInpOtzuPb33zo
         6gprizqZ0aKre+xsMzlQ/3Ks6cQ1+IKPWm2qYgRdU2k0tYghKeN87oA5zp0YTy8VwpD1
         AnfQewMUKF4tJUZct9pFq/6oi7FtkaQQbHVwLY0aVvvQ/V82AKx99axB1OkiH4f1Sm8g
         24Dr9Snva0j8b9xlDnOXTghK6oGzLorXlXkX9zxNBoDt8nK9QCySsuf1zLyzLTRcGTZd
         jDOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763478538; x=1764083338;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vXSFON/1VQrHCM+f9FmS2ChuuEZCr9AFJjq4nQ/j5F0=;
        b=mHre/j1NWjnSC9crZIdN4O2dZ6UyUR7E2whGv4+bs1iv/MqC36H5JfbT5WwYi9BfXL
         yvny3ckH65w0hMf5s8NgML9lIXGxfug4kgoJjJwfXLHkwX/3X2gFfO7ZPWSvXTViQNcl
         eATkN5VFdWYjMt9sm8bGFyvwf/T807luJ826v2OMwCE/hg7SUcyN1kH0J45slcsc6TMg
         4+nHT1/1MPH2AYVXvnQJL7SUeH401EepXrvDUsQgxcBfQwS19jOBkSl8CkaI6bA/7sMf
         WduRMw6mKJBt4w6aPX3SxNJkzCs7zf+Tdov9UaHGzJypa1DMTrQyhS47FK2jebBhAbC6
         9gRQ==
X-Forwarded-Encrypted: i=1; AJvYcCXoNDn3QyYNIx2DIXDoGlRH8HLQxOxcbuUv01LEEgcDzGcP+f3vOWuWEEw/2IbBjQBSCoZ4pNoNHEFs@vger.kernel.org
X-Gm-Message-State: AOJu0Yww0NH6vA/gT9Pxv10MNSiNxOdPEpd8UPElnGMOeKc+8QAjTTfv
	+2AZ9uSe/YADMASaZohJstNV2UDNvxm6obq3vaULlMv4C3tPQ6ox54Wi
X-Gm-Gg: ASbGncu7sir7cnfoZB2777P7hB926cuw/GxsTI4djdFGW3o2+VCTC+YWutcxd4luNhT
	hD4HpilUSCB4S/UDuc4xfr+uUTFK7iTcpqz0t6rOGzu6ZzLiia1hsoGLYCDMErwPrt5K8x0wsdk
	ZXsjxIWlzBUA6etqyQOYqSDAitSaV8nU0Xi5SqkIQLEwEbTO8/CxOXp1hM1ZqWGUlu2qhkeyqd/
	Hsuhph5i24nENW9j0ukg1jwA655G57O4jmRrsVYXP7VfSCsBEOTTU6mll/Iuow14WQUzoL8zzvB
	TBr0eGtt12Da3JCL5rWoo9iSwewfX3QX0ZLh2tD5Bg74PzHeFxkAaIBN1jvZ0vMz3GGlS690v3A
	FHMW27Ay4nhrEiS7cTw96bd08oz3FANnDqPMdQiV+uTrdoGSdFZcnSiTA9NP9/NTZoeHJQFenlO
	+NzpsIdOEFXQMbBo14FgOb67T5LRbXa0ZFUBpGGN1IQ273Nj1AEoeNAatTxFjOXUkda5c=
X-Google-Smtp-Source: AGHT+IEUJJGCTrmMLvsniUV7hiBdNMRfXZvya+c/u+hMC4mF96bJTPI256APV6+JR6pYbekvFc8AOA==
X-Received: by 2002:a05:6000:2f83:b0:42b:3ee9:4772 with SMTP id ffacd0b85a97d-42b5937618emr15137124f8f.52.1763478538022;
        Tue, 18 Nov 2025 07:08:58 -0800 (PST)
Received: from localhost (2a02-842a-9b20-0d01-432b-0dab-f195-2b25.rev.sfr.net. [2a02:842a:9b20:d01:432b:dab:f195:2b25])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53f0b894sm33875087f8f.26.2025.11.18.07.08.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 07:08:57 -0800 (PST)
From: =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>
Date: Tue, 18 Nov 2025 16:07:58 +0100
Subject: [PATCH v9 2/7] dt-bindings: memory: introduce DDR4
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251118-b4-ddr-bindings-v9-2-a033ac5144da@gmail.com>
References: <20251118-b4-ddr-bindings-v9-0-a033ac5144da@gmail.com>
In-Reply-To: <20251118-b4-ddr-bindings-v9-0-a033ac5144da@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Julius Werner <jwerner@chromium.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 linux-arm-kernel@lists.infradead.org, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <clement.legoffic@foss.st.com>
X-Mailer: b4 0.15-dev-86b30

From: Clément Le Goffic <clement.legoffic@foss.st.com>

Introduce JEDEC compliant DDR bindings, that use new memory-props binding.

The DDR4 compatible can be made of explicit vendor names and part
numbers or be of the form "ddrX-YYYY,AAAA...-ZZ" when associated with an
SPD, where (according to JEDEC SPD4.1.2.L-6):
- YYYY is the manufacturer ID
- AAAA... is the part number
- ZZ is the revision ID

The former form is useful when the SDRAM vendor and part number are
known, for example, when memory is soldered on the board.
The latter form is useful when SDRAM nodes are created at runtime by
boot firmware that doesn't have access to static part number information.

Signed-off-by: Clément Le Goffic <clement.legoffic@foss.st.com>
Signed-off-by: Clément Le Goffic <legoffic.clement@gmail.com>
---
 .../memory-controllers/ddr/jedec,ddr4.yaml         | 34 ++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,ddr4.yaml b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,ddr4.yaml
new file mode 100644
index 000000000000..928961c74026
--- /dev/null
+++ b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,ddr4.yaml
@@ -0,0 +1,34 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/memory-controllers/ddr/jedec,ddr4.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: DDR4 SDRAM compliant to JEDEC JESD79-4D
+
+maintainers:
+  - Krzysztof Kozlowski <krzk@kernel.org>
+
+allOf:
+  - $ref: jedec,sdram-props.yaml#
+
+properties:
+  compatible:
+    items:
+      - pattern: "^ddr4-[0-9a-f]{4},[a-z]{1,20}-[0-9a-f]{2}$"
+      - const: jedec,ddr4
+
+required:
+  - compatible
+  - density
+  - io-width
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    ddr {
+        compatible = "ddr4-00ff,azaz-ff", "jedec,ddr4";
+        density = <8192>;
+        io-width = <8>;
+    };

-- 
2.43.0


