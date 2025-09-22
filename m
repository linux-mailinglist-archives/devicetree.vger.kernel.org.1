Return-Path: <devicetree+bounces-219957-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B52FBB8FE87
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 12:06:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 91A81164E53
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 10:06:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF6962FDC40;
	Mon, 22 Sep 2025 10:06:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Rfc1Ya1c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9F92F618F
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 10:06:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758535585; cv=none; b=T/E80HFU1uIVKxjID3R6QFoHrkf2LLq5keHnr40/QK93pu8KXYVn/1w8EAwaCc5eQd1cRTTew7NFuPYZjpgu1iHwZwmWAx98/rvNGlHfkzh/UGiFmKLtopG53g7mF08uaCVq2pRg26SY/dkvpqnPvJyhqQzACdZ3piUSnyQXCnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758535585; c=relaxed/simple;
	bh=KcqNz+oFGlUyIngywh1gkusVO3lZGzNZNpQmz6FCtIU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aFjVi08FbEaWmaXI3++Y3V5iQCLQKcqju16sN0OsS2g2I4gNpeIaZu/DQgu4M7IZ5i2iDcNXKgpCmGbGQk7/TuJuOzgsiMa056RmZd3WXzxruigzX1zxgtBGgpsyr3+qXdEpo/1+bebqBMfVCsheBjwOo1VLEe+FR1CPVY7Z8UY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Rfc1Ya1c; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-46cf7bbfda8so6148055e9.2
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 03:06:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758535582; x=1759140382; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SBuh28KbXIrgcfSkQ8KjquzRGwut7m7Az0UK1qF6ohQ=;
        b=Rfc1Ya1c/MNwkEb/WMTsh+Jr6AeEZ6wAecAAq6a0cryAA2GZSImEb4Y22PTgFZ8qeA
         Vt2IviqJkKDAi7HmzTLjcRFnEgIrfGXnc6avJQu3c5HlvBZhgfpSZ1k380yMiAssjIg7
         L6MtOKJjAbwPRWc1kBdUbU0ejy1dugGGpQrNX6g2aq/eRAZXy2XDVRQ7Yq2v7SoCgkuG
         wNeDGAl3KNWdiIsNDrzGg+Jof3aYjQWwKpA/y4fr3X50JkGLfCi70n/mSFH/+uTpQvmL
         aAkXmt2OU2VxB+w3FbXSBexN3d2ysGmhutzn0BOrCPcIevJK5YSggeB/XeLq8qTsAxTD
         qlMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758535582; x=1759140382;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SBuh28KbXIrgcfSkQ8KjquzRGwut7m7Az0UK1qF6ohQ=;
        b=L5gJKoqwXJmJ1bxx4ZqWY1hnhpJKIjN43NQTCSOOOl5VZy8iPGp0VD52BoQqIppD/F
         Du8iPQaWzFqiMzAQNWFZseLxen3GXskUGb6xOXmUY7MqaC4ZWEfUMkkoms9QJ4XxBK10
         22aR5q8Rp1M/fniI/K+yLuqv+jAj0izaM44sbEYBFQiRaAfl2r9y9Xgq896TGqFSHB0m
         R/g/P75vxlhTnBkx+FtYh7rGKVdZ8ClbzVjDM9GHqMefIHtZuA2Ao1uF56GfHBzLYaE8
         CfbRas80dkkfT3LzbAqCq9xHtDbSS1H1B9BOyA6WCUEleexUfpYpOim50yw8nEy4I5Gf
         uypQ==
X-Forwarded-Encrypted: i=1; AJvYcCVNZfUjBgsnJQU9vqf4CVUQ5B3gUZIGhDdSgR9h8dN3TyQDkEjlKDj91mS3IBqFxXKS9LnB2TSKx2Xj@vger.kernel.org
X-Gm-Message-State: AOJu0Yxqi6kC5JaTwtLA0vHxZu62fp6CH0iMplBwQCAKCx91umehy5ZD
	acPuZWXlBgvzwwyqfQOUBj+kXkMce3hA+NKwtLH1pddKBl6RYZxZF7j6
X-Gm-Gg: ASbGncsWsZg9nrEz3LCFeVXLBw63XAntzufMj8zxzy+sMutKioGH945D5R2HtzGNKrO
	9W4sguuL9tsAcFeFmD17doy6emUR11wh9AvehIIcHuDxoJm4rYBdJMGpk+0yvpAOdkPdV1+BovN
	ekuiXT6ryPAf2UY/tjiHuTB50rlZ2Bcav67DWp0xDsX84sAwDKKjMMyUf/dm8UDh/PvjOME+Alc
	ucdzZ0Zk1uBcX7PAntapqnmaoj8N5dJPEAl8zxz5AIFLFQ77H9xcjoLe1F5LDWI8EYTvz2OCVLu
	4yNwXlj2Ms6lf3hMCDgMLbL0y9ya9E8+YEMcohSJJi6iG0QggKTLwBXoSRFFV/MGUXw6SLdWc7I
	EgLvR3dZrPvsrM3eLWmA5IcCNcI+tthUt2ZMst7P0rtDLwYkwk2xJgRqKawI7JI8iCEsPcndfjZ
	6TXr/Xjh4J84Sm0dhH
X-Google-Smtp-Source: AGHT+IEHy+Y2fzQAk3dZV6QahdRxDSlEBeTRexcfOlN/UPgG/shF6Jti+KLhEJkls/9J12eMEfDQeA==
X-Received: by 2002:a05:600c:b8d:b0:45d:d287:d339 with SMTP id 5b1f17b1804b1-467ebbbfd0amr108011225e9.25.1758535582246;
        Mon, 22 Sep 2025 03:06:22 -0700 (PDT)
Received: from localhost (2a02-8440-750d-3377-171e-75f8-f2d4-2af8.rev.sfr.net. [2a02:8440:750d:3377:171e:75f8:f2d4:2af8])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-464f527d6cdsm221293315e9.12.2025.09.22.03.06.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 03:06:21 -0700 (PDT)
From: =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>
Date: Mon, 22 Sep 2025 12:06:15 +0200
Subject: [PATCH v7 2/7] dt-bindings: memory: introduce DDR4
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250922-b4-ddr-bindings-v7-2-b3dd20e54db6@gmail.com>
References: <20250922-b4-ddr-bindings-v7-0-b3dd20e54db6@gmail.com>
In-Reply-To: <20250922-b4-ddr-bindings-v7-0-b3dd20e54db6@gmail.com>
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
X-Mailer: b4 0.15-dev-0dae4

From: Clément Le Goffic <clement.legoffic@foss.st.com>

Introduce JEDEC compliant DDR bindings, that use new memory-props binding.

Signed-off-by: Clément Le Goffic <clement.legoffic@foss.st.com>
Signed-off-by: Clément Le Goffic <legoffic.clement@gmail.com>
---
 .../memory-controllers/ddr/jedec,ddr4.yaml         | 34 ++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,ddr4.yaml b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,ddr4.yaml
new file mode 100644
index 000000000000..bf1dae15b65b
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
+      - pattern: "^ddr4-[0-9a-f]{4},[a-z]{1,10},[0-9a-f]{2}$"
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
+        compatible = "ddr4-00ff,azaz,ff", "jedec,ddr4";
+        density = <8192>;
+        io-width = <8>;
+    };

-- 
2.43.0


