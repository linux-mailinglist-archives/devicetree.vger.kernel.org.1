Return-Path: <devicetree+bounces-255756-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 87EA3D2806A
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 20:22:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DDF80311BA20
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 19:18:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2F712EBDE9;
	Thu, 15 Jan 2026 19:18:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Rr/lS9LF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498F22F12A3
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 19:18:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768504694; cv=none; b=CZZ83DND9/YI6qlXtMmzeOUvChbbRtjjxzuHdKH60/z5Ea7bAo/AZnPAwCOGrza5IBWFO6FPNbbowohobuX0ZVpYsg1qC+yygHvzKbxFv0vWS2D/l7FxnoB46er8SPqH2ZZFv3MCXJ3+caGd75I1iioaIJTky4FHvB98YVubCUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768504694; c=relaxed/simple;
	bh=dLNnA22RKAohaAguDDfnNkXyaGGOSbGYv0h2Zz9YQM0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AHoUQ5ibejE3VB8CqRW2TqWMvOnAyjyhyf42BE73sX8ny6nmv7+NWIj51+XqMC5Ln3iLJNnLLWJovRHLwC5YjSNRhL64dgpatcOoYI4jueLT2gnJT/xR1wZ0nulaVnLJfVBLDVutK9WVCxOFQcv4TeAlw9IW0Jpn+BlhV5rps5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Rr/lS9LF; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-42fb6ce71c7so1114872f8f.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 11:18:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768504690; x=1769109490; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2bohYG42KR5qp4xz2qlOBlGbhjbb9bQhbV9gX3/v3Mk=;
        b=Rr/lS9LFamyMrQMPL0m/iSjVGqAgVWbPmdV2fYUwih5n2KwY9qKp8XCi74eEO2Me3r
         C4pt3O18GWMt4aXk/Bb7mrL1FFiR2mES0zPpvuUqC9jTu2xdDBTNeHxUZc0CQhVwagvj
         t2Se2D4RNyNtDuD7l2jLcLbEsOm/FgWEcVMIUu4LQ/Bg5zvddmm26KcZeUtkfpMiMNUP
         /JEYSHfRPwc7NbQcy0RrOdzZbbuFu0cbXKSGhLW1C4oaJwzh7nzuNpyNZDzVLaXSCBC5
         FwnvuSe+O8AGMx1e4FgiwOISPUCFqQBtIirkhE/7kTobUvv9gqrfsHwciQcglK0de14V
         U3qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768504690; x=1769109490;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2bohYG42KR5qp4xz2qlOBlGbhjbb9bQhbV9gX3/v3Mk=;
        b=uLFA3da9Y0HCySQX4xooVbkv/3YguLzvLXCTfBwMOVbis0Eg0cs7z3j+hW8wl1WSY2
         rgsZ/8N1N9XUMVCelRYxS3SfnHTBxbOlXV0+SRpP4BwOiE3cLKYlZG61RI4qGKgE8eZB
         dhOGueqHRINjn90hQVCTvLMnl4BFWjfKssFSAXamygCY9K1MRlfUPr8WlmxivBsbLXsp
         PhyBBXeAZRpnWsMebcm03gL801zeazjyWD/d4THQ+MFppRhSkf3ELuEKPw895q0yRmdQ
         JYFcb+HB0zqWgsCxFZgKxjN5RelPw0Kwheq6pH6oiT1lUwzPCOo1+9r6T94mL60sBFZZ
         96Hw==
X-Forwarded-Encrypted: i=1; AJvYcCXPL6pvT2Y+b5itO/7wBdAGkgkQn5ydtqanjVD+dPAFntldKp3NTfPod4CSZBhc9WeU9k2W62fEoMw7@vger.kernel.org
X-Gm-Message-State: AOJu0YwJJQVb5mACmFqSYWm3VfHPo/Yzu8OGIi8QITB9S0AEa8kntmc0
	nrWBDFVRUfCLUrQwvg39HxkFUD/ytnyOsyKNYQJBS2F9XJGK0+J/59To
X-Gm-Gg: AY/fxX7vIXaY3kheFNVD0tKERKhHcvMcLSFFC0lPU6yEthObeOksK+h4ISO2XXGT4Q8
	HbGoJlRjq6aaLx0I2BziQtoUE55dainLvDU9JwJyhdk75WkbBXATYkg8Uh3W0svLMOMXV8vG+M1
	bGYgxDUVoDuqlpeqIZo2ncnZQXWx29qiudPKSSJMsGHR8shuYlgosZTbW6iIvwENpel2yFT1nRr
	Aw58lTQwIvf1RRml7DD9h4tCB0So7kET8VcOMxDw/pjiPy1v4xAZTzU+FZPTEkoDLC+2J/oxDdo
	MIYreAGu6iVmELwD9qTeHhDcYNE+DfjpbJZgXqewxtvnFJxq60Oz1cXw8F0+fVjwj2MPTvtn7iq
	pWDSqrSTP+ReXKe6T4AOCSxeDHL9C5PKAIU0UFi/P/O3bwJ33FOBwGQ57fZxBHev5bypGvDZud5
	JUvcoKr4E9qu81Y5EuuH/lKNGhgprir7lXF0czF2wwoR+l
X-Received: by 2002:a05:6000:26c2:b0:430:f6bc:2f8b with SMTP id ffacd0b85a97d-43569bcf1b1mr533301f8f.45.1768504690389;
        Thu, 15 Jan 2026 11:18:10 -0800 (PST)
Received: from [127.0.1.1] (bba-94-59-215-181.alshamil.net.ae. [94.59.215.181])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43569921dedsm692734f8f.9.2026.01.15.11.18.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 11:18:10 -0800 (PST)
From: "Anton D. Stavinskii" <stavinsky@gmail.com>
Date: Thu, 15 Jan 2026 23:17:40 +0400
Subject: [PATCH 3/8] dt-bindings: sound: sophgo: add CV1800B internal ADC
 codec
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260115-cv1800b-i2s-driver-v1-3-e8b22b8578ab@gmail.com>
References: <20260115-cv1800b-i2s-driver-v1-0-e8b22b8578ab@gmail.com>
In-Reply-To: <20260115-cv1800b-i2s-driver-v1-0-e8b22b8578ab@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768504677; l=1630;
 i=stavinsky@gmail.com; s=20260115; h=from:subject:message-id;
 bh=dLNnA22RKAohaAguDDfnNkXyaGGOSbGYv0h2Zz9YQM0=;
 b=SQniyJ8r3rp4gJLKkMe/RuCjhYd1U6T6Xou1eZP38X8wwCyHO4bzGi5Ane4ARCg4LHldz4dOK
 Wzh/SCWOZwjCVC/3yMCdble9F+bcH7/0nBnSX9sk6GKlfWbbVy5qbyz
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


