Return-Path: <devicetree+bounces-49273-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EAAF875C4D
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 03:19:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EEC41283697
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 02:19:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D55A1D546;
	Fri,  8 Mar 2024 02:19:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FNIMtW6b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B79125556
	for <devicetree@vger.kernel.org>; Fri,  8 Mar 2024 02:19:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709864351; cv=none; b=VgggATTKa3K9tWyZiqD6+Mspih+Wq23KQ/jweHmbtZUVx80e+LfeJnjRbzTSuPYXmPKnf9Jj7IRE+Utc931485Bchmyv8h82wU2EBC7BsNM0QN/0aBYIh2cTStz0cUTTE1bWSR9gx+Kh4AOEoWo6+nOy/Lv4rosRuFn7Q4V9OAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709864351; c=relaxed/simple;
	bh=Xy6B09RwVT43ad3OX5nPBcg9tDTgaH31zQ8774eEmuU=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=uqJadDpQPxxfgFB9KiorEqJ3IKTruNBDafY567OYrjBDA94Z5ZOf26tqb3MnEvOL9uEsJuhbZZUXmxVNZDVKajoq22VGjj6ADTEFuVCTap9HSNV/0Z0ElH8D4OyWXh4O52M9jrrghl2RYb9wmrsWqslM43haLUQGNLZhuBHm33g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FNIMtW6b; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5131c0691feso2136472e87.1
        for <devicetree@vger.kernel.org>; Thu, 07 Mar 2024 18:19:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709864347; x=1710469147; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pKdIzofydZLIrT/shXbNHuO868q06IvkKgIySh45aUY=;
        b=FNIMtW6bM6ND8IG4uv+XegkxMOAt5XdkxkEZGX+tZc2p3vJTP1GjpvBu2/rnYKH0XL
         rxwkjIBYBNp1VhKSB3tBsWHb9vyYJtQrG7fzWU/IHYUk+JtnYU7KdZ8HylxzNy3+2BUw
         YJJZy5Ugx+AuljZDE2CYyNJCO3llsG/B21Aybv3+OjWq5nVM+JrsLBUNGE1SWT3SSmsN
         W1XQWe1FflYcrsULLfR9pSfKUV2TpnByBQ+DzD5N3GGvLXHd+YhGexc/2ODKudtJN2Oi
         kgUSyjfYi0tfSJcBYLgDyAL1ssrEqZ0TkX9BRMpVdGbPwRBP/Wi8fNmEXv2BKOZK7nYw
         FCRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709864347; x=1710469147;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pKdIzofydZLIrT/shXbNHuO868q06IvkKgIySh45aUY=;
        b=PauRAxzodniX6P24Q2dPQnT3oq65SrWmQDYr/kTOBiyRN5bRGdr4SMbPzXuVThFfwm
         9+cjIil70jlCxhqWsLUSeFOitihQsqZgr1fMDn0y+o5c/un7dRpX43dHq7nAjTfIN1IB
         4Zz6FnuAevGMXIzoeHdYYBL4pfdyYHQZr0zARpRvPFHDGlNww7HSIMvUrIfGhwtpgAIp
         NOKxCQqo0CASb3ZlBkbza1FDlD21+qrZThtjyrgIb1Z225eS42JugCwTN5hYthBFuNKF
         S4GzF0RmHcGfKP/LHN5QCH2/RUH4Q/xL4HNil4894Mk4U+zlZIBq2njjjuu/lgq5RmPE
         SIuQ==
X-Forwarded-Encrypted: i=1; AJvYcCUe6nuR19nn3+ciufoJ/dIr0W3zJieynZA+p5UUKN+vm2UrpEc7I3zJtUj8obQKRRoZ+lHzGln2SZ4rJPxakFSJuKPk6OfswbkLKA==
X-Gm-Message-State: AOJu0YxyufKWc3KFz36x3R3cTz3fcwvddfcYkqI7DhecbQyaoxL/PSAw
	BiqGYhypSNkvUsnOuVGBCRG6DfwvehliEu7y1BJC+9vL7SDyT7tR
X-Google-Smtp-Source: AGHT+IG8Eq641iU1qUHB4Jm43fMo2Xl6AyIe3nEXifyPdafeTnOKrOzbGnvRr83GBYNDs7lxrCJ3Tw==
X-Received: by 2002:a19:2d07:0:b0:512:9e78:998c with SMTP id k7-20020a192d07000000b005129e78998cmr2725287lfj.9.1709864347229;
        Thu, 07 Mar 2024 18:19:07 -0800 (PST)
Received: from ubuntu-focal.zuku.co.ke ([197.237.50.252])
        by smtp.gmail.com with ESMTPSA id g7-20020a170906198700b00a4503a78dd5sm6209708ejd.17.2024.03.07.18.19.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Mar 2024 18:19:06 -0800 (PST)
From: Dorine Tipo <dorine.a.tipo@gmail.com>
To: vgupta@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	devicetree@vger.kernel.org,
	linux-snps-arc@lists.infradead.org,
	skhan@linuxfoundation.org,
	javier.carrasco.cruz@gmail.com
Cc: Dorine Tipo <dorine.a.tipo@gmail.com>
Subject: [PATCH] dt-bindings: pct: Convert to dtschema
Date: Fri,  8 Mar 2024 02:18:42 +0000
Message-Id: <20240308021842.1975-1-dorine.a.tipo@gmail.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

convert the PCT Arc Performance Counter bindings to DT schema

Signed-off-by: Dorine Tipo <dorine.a.tipo@gmail.com>
---
 .../devicetree/bindings/arc/pct.yaml          | 36 +++++++++++++++++++
 1 file changed, 36 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arc/pct.yaml

diff --git a/Documentation/devicetree/bindings/arc/pct.yaml b/Documentation/devicetree/bindings/arc/pct.yaml
new file mode 100644
index 000000000000..1f97a7c21b77
--- /dev/null
+++ b/Documentation/devicetree/bindings/arc/pct.yaml
@@ -0,0 +1,36 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pct.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ARC Performance Counters
+
+maintainers:
+  - Vineet Gupta <vgupta@kernel.org>
+  - Rob Herring <robh+dt@kernel.org>
+  - Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
+
+description: |
+  The ARC700 can be configured with a pipeline performance monitor for counting
+  CPU and cache events like cache misses and hits. Like conventional PCT there
+  are 100+ hardware conditions dynamically mapped to up to 32 counters
+
+properties:
+  compatible:
+    const: "snps,arc700-pct"
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    pmu {
+        compatible = "snps,arc700-pct";
+    };
--
2.25.1


