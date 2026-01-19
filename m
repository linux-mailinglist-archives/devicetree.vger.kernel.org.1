Return-Path: <devicetree+bounces-256979-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 58517D3B2BF
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 17:56:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D8D2930596B2
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 16:42:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA13B3BC4E6;
	Mon, 19 Jan 2026 16:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DEfchJe+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC5923BB9F2
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 16:30:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768840253; cv=none; b=LNF++iRBRE6fs+sEX4X7lmL+Hc2jrgOVvNP/GK5S9Re941sEGs0RIheoKTlGeaC3wAjLfQq2Eegqo0zMLiK5upUNY4ZwRei5gfssBHYs4A+XMJo6zVv5Gj6Q72COC/gfeq40YFF3J2nrPJg1qA3S60tT1Wuzt/qfDGDZ0ol4wEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768840253; c=relaxed/simple;
	bh=D6/3vLfrvpSmRRqAGiIOVS8ewVjwKf7GH3zoAMxoKHo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ukejeauGiMCJzhzuI5mfYkzHQJnwLtkcbsnrfFAiDoGb76Xsc4AxTLwJoR9yj5L5sRDhxCQsWjekgHXSHQqPRuJiqX798TNHm7TUBLuc6832t69m1c/hyfIrhNsB6Mz3TDv7ZG94vF6Fj3OawEqFUNJuU0zCNF5PtYxdZkvLHzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DEfchJe+; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-47ee2715254so20394145e9.3
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 08:30:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768840250; x=1769445050; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MQd+WNzdOao4inqLQiN4ne6FLA8M9wMTcCMhupP8Doc=;
        b=DEfchJe+dHXrUKT6qlNAkcvoqKmHA968cCrIrrHlXe3bZ6jeA/msCrvYsgLg9Qm8IS
         eGUdd3rTnNy78ZuBXRxle3HJvIChz5ci37Mu/jiF5joQiwUba6NTyyYNF72VQoW9A4iJ
         qiZl3YweCK65uAaGYqm3Lp5Ys1JNfxJkVhbuRsRpxc/BCiVytwcxvSfXQXQNit8zfsoD
         NnjXRlhfSQeM0xsWio4QKvZTXTEjU8kSZE6ayheCaBRqMMPw7vgft6CX98B6dWM2R3fD
         fHZj2A3IPpLgPOar61ZYusbadEKfc2+PB+M/nQlv53xEXuTmpL9+vy27SjULpbZWolCr
         JIkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768840250; x=1769445050;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MQd+WNzdOao4inqLQiN4ne6FLA8M9wMTcCMhupP8Doc=;
        b=snJy87RO/kMdWDxUVlxGOHbppOcVYFrUgIlQta47zELS03XEcT7GvvKeYCnMCbOudb
         e95X3p665mDyBuuPkGQOI7xz/jaFnIfG/44u2ceSpDRP/m6zisb1rUJMHZ20OYoyAEBm
         OizPC/qVSOoezgyRgJjYuNVKUJiSnA4nHUHYsaCxblaRhDpdRoLmAxzBDAMIXROiC0eL
         uWGNk6KAQI/a9WWt081Mdsimp5bVuGBIVvDo4nYGc+vDtuL6S87JvTUctNmqZlWCybfw
         F6SBLyXZTW0dw3ck0h9+bJko+RrDl2JLiF3OO5sI20bX/inp+UHEdG9SD5p1Ii0ZKhoo
         3osw==
X-Forwarded-Encrypted: i=1; AJvYcCWTvEwENG/u7iw0Z0zFJDnjzC48jSRnooM4KRiX5RAK/qpV71F+ctdjoiicMPTQgrhKUy592/po3GpO@vger.kernel.org
X-Gm-Message-State: AOJu0YwTwmrz4syrvL1AM6QNU+VgLTgDZOs5ZC8FVqyopsYdE3FfTHWq
	ih9LCrikl/1jWWEGTfLJ4CWhPqrotSlnmg8qodMaoBiTA7wECiMy+pho
X-Gm-Gg: AY/fxX5pStziYXqgaq5Xj8IN5198I29u6NEgV7eSlQv80+3DnGyk+2xLlqyrdn0/S4W
	UhLzkDpLvnt9tlgtIDANosoIJXD6jacrNtZkqEmRGyTwweEQcT3ipvN4SnWnMDkKNmddE9pAbss
	N0mlAHhVM8LG8Bv0XmFZtLH/CTWKyoXi+d9LEHDvHQa/0p6NcNyRfgiLpv/sYz9lrUFgMPla5yH
	u9zRoNBUYh27hvlsBN543dHr4VwzTgsnbWVXdeF/al6fN2HPAu788QwY7UBA1ii05VPs3Tv3xEb
	p+k+nYfp0zpS2OjS66sKEqfDDeNXX5J0U6chgccZ46NSYA21xRCTFmlIjU13akIZAJzJN27hkA8
	ZDCak4CGPF2H/P83ZxYFsdPbo8lJNlOrPZH4Sog4Ua8x24DpvLXoQcULsCMSAnXbWnvKrWk88xB
	pxAmSm7FJPBEyCHqJXX75o3yHbTqCmmZWRVZzdaVzmt1fY
X-Received: by 2002:a05:600c:4745:b0:47a:80f8:82ab with SMTP id 5b1f17b1804b1-4801e33c17fmr160556445e9.24.1768840249805;
        Mon, 19 Jan 2026 08:30:49 -0800 (PST)
Received: from [127.0.1.1] (bba-94-59-215-181.alshamil.net.ae. [94.59.215.181])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4801e879537sm201666795e9.5.2026.01.19.08.30.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 08:30:49 -0800 (PST)
From: "Anton D. Stavinskii" <stavinsky@gmail.com>
Date: Mon, 19 Jan 2026 20:30:42 +0400
Subject: [PATCH v3 1/6] ASoC: dt-bindings: sophgo,cv1800b: add I2S/TDM
 controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260119-cv1800b-i2s-driver-v3-1-04006f4111d7@gmail.com>
References: <20260119-cv1800b-i2s-driver-v3-0-04006f4111d7@gmail.com>
In-Reply-To: <20260119-cv1800b-i2s-driver-v3-0-04006f4111d7@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen Wang <unicorn_wang@outlook.com>, 
 Inochi Amaoto <inochiama@gmail.com>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 sophgo@lists.linux.dev, linux-kernel@vger.kernel.org, 
 linux-riscv@lists.infradead.org, 
 "Anton D. Stavinskii" <stavinsky@gmail.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768840243; l=2363;
 i=stavinsky@gmail.com; s=20260115; h=from:subject:message-id;
 bh=D6/3vLfrvpSmRRqAGiIOVS8ewVjwKf7GH3zoAMxoKHo=;
 b=/bjUfLKwlPnlPfk4DYtxlHgdXcY+lvP5GNMVM9VYSX/tdxAVVMOnsLQRkscxApXqhk58aE6Oc
 t8x0QPnx4PCCorDSC03hUrqySe6xs7VieWCNdq16mJ1+n/h65X2Z8w7
X-Developer-Key: i=stavinsky@gmail.com; a=ed25519;
 pk=2WxGZ1zd1vQwSPFCSks6zrADqUDBUdtq39lElk4ZE7Q=

There are 4 TDM controllers on the SoC. Each controller can receive or
transmit data over DMA. The dma it self has 8 channels.
Each channel can be connected only to a specific i2s node. But each
of dma channel can have multiple purposes so in order to save dma
channels the configurations allows to use tx and rx, only rx, only tx
or none channels. I2S controller without channels can be useful in
configuration where I2S is used as clock source only and doesn't
produce any data.

Signed-off-by: Anton D. Stavinskii <stavinsky@gmail.com>
---
 .../bindings/sound/sophgo,cv1800b-i2s.yaml         | 67 ++++++++++++++++++++++
 1 file changed, 67 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/sophgo,cv1800b-i2s.yaml b/Documentation/devicetree/bindings/sound/sophgo,cv1800b-i2s.yaml
new file mode 100644
index 000000000000..e09631308bb6
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/sophgo,cv1800b-i2s.yaml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/sophgo,cv1800b-i2s.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Sophgo CV1800B I2S/TDM controller
+
+maintainers:
+  - Anton D. Stavinskii <stavinsky@gmail.com>
+
+description: I2S/TDM controller found in CV1800B / Sophgo SG2002/SG2000 SoCs.
+
+allOf:
+  - $ref: dai-common.yaml#
+
+properties:
+  compatible:
+    const: sophgo,cv1800b-i2s
+
+  reg:
+    maxItems: 1
+
+  "#sound-dai-cells":
+    const: 0
+
+  clocks:
+    minItems: 2
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: i2s
+      - const: mclk
+
+  dmas:
+    maxItems: 2
+
+  dma-names:
+    minItems: 1
+    items:
+      - enum: [rx, tx]
+      - const: tx
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - "#sound-dai-cells"
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/sophgo,cv1800.h>
+
+    i2s@4110000 {
+        compatible = "sophgo,cv1800b-i2s";
+        reg = <0x04110000 0x10000>;
+        clocks = <&clk CLK_APB_I2S1>,  <&clk CLK_SDMA_AUD1>;
+        clock-names = "i2s", "mclk";
+        dmas = <&dmamux 2 1>, <&dmamux 3 1>;
+        dma-names = "rx", "tx";
+        #sound-dai-cells = <0>;
+    };
+...

-- 
2.43.0


