Return-Path: <devicetree+bounces-256409-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E799D390DE
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 21:20:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4D1D0303B7E6
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 20:19:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 276982E3360;
	Sat, 17 Jan 2026 20:19:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hHMS4I9t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98C782E5B32
	for <devicetree@vger.kernel.org>; Sat, 17 Jan 2026 20:19:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768681179; cv=none; b=ehdQ7a10IEv/gK6oXUYjfngY3Uor+7rxclZbdNakTrKZwQTUqFrDkcb/6JhOVhMmMd+ZZGHQrvr5h+gKY4kEGAxUv195rgHypDBoCjmOIbniERRFfrfeiGbX2SKzKcO+KEJfCt6cLDGn22bO4yBY4Bs+bD91qrC+v7tmb2QQn0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768681179; c=relaxed/simple;
	bh=dLNnA22RKAohaAguDDfnNkXyaGGOSbGYv0h2Zz9YQM0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kly/rCjKzjLVBavNvjY8nrwvq7LQBRjwNXZcGP1laIS0ZOOKZVRSlD3XKna5PxgsVG0tu99yxNmN8cAhq855NDev6RL/xiSKF2uUtakmHmiLJP9opV/m1vhVN1hwidfOyfTnegmZhvFXvJg6eOBJQuBCNK5qNoxoWcnLz8umCEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hHMS4I9t; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4801c1ad878so20309585e9.1
        for <devicetree@vger.kernel.org>; Sat, 17 Jan 2026 12:19:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768681173; x=1769285973; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2bohYG42KR5qp4xz2qlOBlGbhjbb9bQhbV9gX3/v3Mk=;
        b=hHMS4I9tCT1o9AAzIo6vXgO/hQYJI3GyYUo6jbNAgbXGB4AHqIsIp1dei5/1dO9Rfc
         pAfPnTi08ZwmmeXEsFAjljRZ5hZejnAXESvnSTQkTmXBh4pLCkuJlBcxMJr5Hitvc6mB
         Mo/f7AkE6QVpkMiGnIkfgx++T7TlGRhFe5+15PCLzrZjerzP5W6j/SCcvqoyDvSBnoS8
         zaww8hEfoq6lDnv7Nm6LfS95RnOYecwCn5IOO+xXfbxkQe2qlogTwS/0kUQqAlD+EeZO
         Ox/zrxsZCBcpLMn715XeAld8FGcHxAU8tFKVDqgrhgl1G3WhL2uLv39IoDA+M7lebwDq
         M38A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768681173; x=1769285973;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2bohYG42KR5qp4xz2qlOBlGbhjbb9bQhbV9gX3/v3Mk=;
        b=aq71+ZZTGV5iAg+J/DU6QK2pdpfbWVRNv11Eb+qKYM18SlcgC1Qw6WFvSQEPAlNfRh
         UqMPecGhVSc9I3SMlIxylQtw3E1Rrifu1jsOe8YtXQM5TE0C1yttqhe81Pk7G3eQPgUt
         cNQfsGk+YRSHDFJc5BABQwrbcSKEJ6kN0n/zErLmLa9u10osr02vnUbLaUTMm+UngC95
         NZyGkIY+M2wkQn4tXpML6UYKTEoUd4kkTHkwb4lhUvCk5Rb4/tF98yjjRkw42E+Cx5JB
         zciHktT3hB6ogSUcwANbTQ68MNGjma9gMCzezRV1nCJDog8U+vN4ovg3Wk+GyASo6dob
         LiMQ==
X-Forwarded-Encrypted: i=1; AJvYcCWOe3+iuq7zMme2+yc5m9UU6PYY2ihSnRMKqf9JAZJCICrQ//tOU15JJ28K8JoopuaHNcHtxZ+IEYU1@vger.kernel.org
X-Gm-Message-State: AOJu0YyHgaTimnKJx9YR0CK1c7PQMPM3ILMK8lp8X3wF90oc88WirmKp
	YDbjhqLSehtK9SQ5YIkFcJQxrO/cVZ55kiEA5KoXEiwjDAxTmZwJVHG1
X-Gm-Gg: AY/fxX53ohgzDdBRy1urYk/NSlI67Hz/NMIrszyC+s8iliIZntr68nLxre7Hx+3o5Gd
	KTIf3/iM13laIgnNxnO+K2dlor5Ug8D1DY/CFPd9atCLxR+sW1FMjemalb57JP91wOPs9TjTyTK
	vFfEajIxdiSoy2FvaohROcbuo+cViTiEDvLz8ynsOAWkHDpKoa4q8PxiTGXciGEU4rKuRwipsX0
	Tj/BWUgvZOVYnDaagcXNv3dHpyb8DGFd8ElcDTyc/QowMeKjGiEDSae2JVtdbe7UGEVgrP+N1CK
	qABkFaTXbxm1BP8+vxkuB4IhFSvs+EKuqRDfEVs24cvV1uexyFbqcVAayXiKy0q+sNru609BN+K
	WkikJ8cvXtgmSaAyAW1DezF75fkTK8iS/3kY6Tz9Bs58Gh+Y439pKYdYqwu6KCwYAvEZN7ynd4P
	EWxT4UkZqeqOSzb/ni7xRg/x4LUa3WtFRu41+LE07PsJbM5hHpTzW2Mkk=
X-Received: by 2002:a05:600c:4693:b0:477:28c1:26ce with SMTP id 5b1f17b1804b1-4801e2fe194mr88194305e9.7.1768681173087;
        Sat, 17 Jan 2026 12:19:33 -0800 (PST)
Received: from [127.0.1.1] (bba-94-59-215-181.alshamil.net.ae. [94.59.215.181])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4801e879542sm112402295e9.4.2026.01.17.12.19.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Jan 2026 12:19:32 -0800 (PST)
From: "Anton D. Stavinskii" <stavinsky@gmail.com>
Date: Sun, 18 Jan 2026 00:18:55 +0400
Subject: [PATCH v2 3/7] dt-bindings: sound: sophgo: add CV1800B internal
 ADC codec
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260118-cv1800b-i2s-driver-v2-3-d10055f68368@gmail.com>
References: <20260118-cv1800b-i2s-driver-v2-0-d10055f68368@gmail.com>
In-Reply-To: <20260118-cv1800b-i2s-driver-v2-0-d10055f68368@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768681160; l=1630;
 i=stavinsky@gmail.com; s=20260115; h=from:subject:message-id;
 bh=dLNnA22RKAohaAguDDfnNkXyaGGOSbGYv0h2Zz9YQM0=;
 b=EeFcn+GCVjQQk9AlKztuSLRvUBU20OcxJTOUV5Zv62e8woM+6/UmsJtbuI2XJHrjfsIZYIG4g
 pEFujRYgLMPBsgyOGXn6+QLsWcx6nO8e2+oHmZSTG4XSGcGekrlC1RN
X-Developer-Key: i=stavinsky@gmail.com; a=ed25519;
 pk=2WxGZ1zd1vQwSPFCSks6zrADqUDBUdtq39lElk4ZE7Q=

Document the internal ADC audio codec integrated in the Sophgo
CV1800B SoC.

Signed-off-by: Anton D. Stavinskii <stavinsky@gmail.com>
---
 .../bindings/sound/sophgo,cv1800b-sound-adc.yaml   | 43 ++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/sophgo,cv1800b-sound-adc.yaml b/Documentation/devicetree/bindings/sound/sophgo,cv1800b-sound-adc.yaml
new file mode 100644
index 000000000000..339b60e317e8
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/sophgo,cv1800b-sound-adc.yaml
@@ -0,0 +1,43 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/sophgo,cv1800b-sound-adc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Sophgo CV1800B Internal ADC Codec
+
+maintainers:
+  - Anton D. Stavinskii <stavinsky@gmail.com>
+
+description: |
+  Internal ADC audio codec integrated in the Sophgo CV1800B SoC.
+  The codec exposes a single DAI and is intended to be connected
+  to an I2S/TDM controller via an ASoC machine driver.
+
+properties:
+  compatible:
+    const: sophgo,cv1800b-sound-adc
+
+  reg:
+    maxItems: 1
+    description:
+      Base address and size of the ADC register block.
+
+  "#sound-dai-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - "#sound-dai-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    audio-codec@300a100 {
+      compatible = "sophgo,cv1800b-sound-adc";
+      reg = <0x0300a100 0x100>;
+      #sound-dai-cells = <0>;
+    };
+...

-- 
2.43.0


