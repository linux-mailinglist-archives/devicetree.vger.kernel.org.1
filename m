Return-Path: <devicetree+bounces-256981-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E74E9D3B3B3
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 18:16:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E40E230A0E1B
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 16:43:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C1753C00A1;
	Mon, 19 Jan 2026 16:31:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="f3th6RTD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88C3A2EDD69
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 16:30:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768840260; cv=none; b=rpHEn7sV8KYv+U3S5q5OPbK9bo2Aa/cMgZWh13MIIAeB4nZk7VbJUAaFcOJAtUrszVwI2aK5qzKX+MUTh1VQY1ip9QIvezqoU9VuB5iMihQJcy5SEvSbHSXdei/w5jHgRXfIW39SVaHDbjUERfxIrPQIlTmbncYps3L481oLfGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768840260; c=relaxed/simple;
	bh=Uu914q6UODLItA3vvK5l88VgJwM32DdfsJmtfwi/rkw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=htQauci3iFfuR5L7r1cCTi0AkQZJL2Vt5CJyOKKtFDFDsaDeVbBKGjQqog5qCZhYYJfQBcRq97phrtfZSc63n//X1/6YXNJlAW8/Q2vRHrN6gGwfUf5D0/j8/Xc7dSuibrjp/+08LhiFCLOKO/6neMKUFUXTTKx13xLvvEs6aLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=f3th6RTD; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-430f5ecaa08so2207911f8f.3
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 08:30:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768840257; x=1769445057; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dO/w705OwMsU88LoVwjVUON1I4DFKZluQtaxNiuxS18=;
        b=f3th6RTDG/djVtwPwJxIvfdGpcKfm8+fDHbbQVK65SEcqnuf7oZYucHrzi1oo2WSmp
         WHKnmPCpn0lqVVrhuGz4vqIxZTA+F4lwb6PSqp5k8RieMjBBR/28qilcoEAa6RQ84aDN
         2xz8/LPc0gjYMpfIyZ2+dRBDF6dhF51tvkz3VNC1Y+k/saZUKpRJYMnvqHVTWEtzH6sg
         Vlpq9cWTaarja9frRfPvIpWGJOfkvPLNGQmi/JkK9ebnoUWjMX+w6L+Qlm4ggccLLLKi
         yizt1E+cGtKXmA6TEyp/bti0XRWKQ0JQ7MAkb0dWl1LVBQr+aY04qAcZcFmaITEJe8qt
         sTAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768840257; x=1769445057;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dO/w705OwMsU88LoVwjVUON1I4DFKZluQtaxNiuxS18=;
        b=LNCnjLPiApDgFEzREL4exy9IpSUDeyxqL+smxur206QV5RwVEQow3zfGSymTsaH3KP
         O9pf4jHtq9F78uFvnpLJfMKRQLCToSom6FIE8epatB72FBf51i5r0aV0eNFPjTi6j5t5
         Vsl4KZPXssUe4KNwq8glWRrtiM/QiRNXfIb8+daibqugmDjPfxFVzg5wYI+24X9xTMgG
         nyv36fl+BHjhS3ZvyJtPsNytvPeClZtZ7nE5agI9YscRVIas0yWyo3ETAMz6jlCrB+4+
         fBnEliv/MihzqLVD2Gzz/PPAh3YKIHsTAkV1bEw64aWq48eIQV24jKxD3BQz+Ed7rkLm
         qkjQ==
X-Forwarded-Encrypted: i=1; AJvYcCWOoG1Q/0a8D3lGJcqJHuCmTIojYB7BFEbuQgQETQ5c87KecGqSIkMYXd9lTkOS75belnTOfNU2UM6b@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0Oe0CqBee/ZnbCHTvhUYu9q60cBcd33B7TeHDa9YHqWqWzwdb
	Svp0tyTNU4OXWRDRocIB2SqGf1K70wNkuwQyWogGDJdAL6+0w5DtqfOG
X-Gm-Gg: AY/fxX4qG3+/koCtNGVC8NGgr9J4OBzjgWKbg22Uf+s/8JO9SHymTz0bu2W85d9GuHF
	OOgK5wrYcmIxYTVsUawTPGpwi9OBZWnfW3z0Qs9ghOLkFvZa1tX6RzV2OnCROOp+xqxg9G4z6xc
	92xzhLJwoU7b13GS9hPQ7MZeokB/1Svo9njOh/XFXu832S4cYHELn79eL6RFp2lJ55hMN26pvFA
	0HwF9F+GMd8yylrzu/MEn/V6MD1+KoLcnqYi/X1p9Gx7uM6u+aJZI/auCNu0C021XaCzR52aMf/
	GMxf2UgYCRx1UpTfKggfrApqfbPgAw8XlfLTaebO7W9wsPwjVj1zdOLR3X7qAN545oAl/U6Pc9T
	uw0KZFaA0bdCunh2Whf3VIo756OtRw7vZoXy7Pjbxx+ZsrgpEhM2f6F9c/RHlCtGvVlLSRTOHz0
	DafONIvPhMPZmeuSVQbqKaakoKE9J7C3gALyp+lwT6WwIF
X-Received: by 2002:a05:600c:548a:b0:475:dd8d:2f52 with SMTP id 5b1f17b1804b1-4801eb12369mr140158025e9.32.1768840256778;
        Mon, 19 Jan 2026 08:30:56 -0800 (PST)
Received: from [127.0.1.1] (bba-94-59-215-181.alshamil.net.ae. [94.59.215.181])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4801e879537sm201666795e9.5.2026.01.19.08.30.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 08:30:56 -0800 (PST)
From: "Anton D. Stavinskii" <stavinsky@gmail.com>
Date: Mon, 19 Jan 2026 20:30:44 +0400
Subject: [PATCH v3 3/6] dt-bindings: codecs: sophgo,cv1800b: codecs: add
 ADC/DAC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260119-cv1800b-i2s-driver-v3-3-04006f4111d7@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768840243; l=3011;
 i=stavinsky@gmail.com; s=20260115; h=from:subject:message-id;
 bh=Uu914q6UODLItA3vvK5l88VgJwM32DdfsJmtfwi/rkw=;
 b=nqI8ujgfXvOhrkF22+SO+FuPdj0nXLzd7iSHNw/zYATKuwEIQGxLxETgbdJ6NdnCicyO5vUUa
 U9BiyYztgEqApft9pm9i+stRZcA7NDW5Id/dBr2XFP185F3gMq6otZT
X-Developer-Key: i=stavinsky@gmail.com; a=ed25519;
 pk=2WxGZ1zd1vQwSPFCSks6zrADqUDBUdtq39lElk4ZE7Q=

Document the internal ADC and DAC audio codecs integrated
in the Sophgo CV1800B SoC.

Signed-off-by: Anton D. Stavinskii <stavinsky@gmail.com>
---
 .../bindings/sound/sophgo,cv1800b-sound-adc.yaml   | 43 ++++++++++++++++++++++
 .../bindings/sound/sophgo,cv1800b-sound-dac.yaml   | 43 ++++++++++++++++++++++
 2 files changed, 86 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/sophgo,cv1800b-sound-adc.yaml b/Documentation/devicetree/bindings/sound/sophgo,cv1800b-sound-adc.yaml
new file mode 100644
index 000000000000..d3b7e92f9758
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
+description: Internal ADC audio codec integrated in the Sophgo CV1800B SoC.
+  The codec exposes a single DAI and is intended to be connected
+  to an I2S/TDM controller via an ASoC machine driver.
+
+allOf:
+  - $ref: dai-common.yaml#
+
+properties:
+  compatible:
+    const: sophgo,cv1800b-sound-adc
+
+  reg:
+    maxItems: 1
+
+  "#sound-dai-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - "#sound-dai-cells"
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    audio-codec@300a100 {
+      compatible = "sophgo,cv1800b-sound-adc";
+      reg = <0x0300a100 0x100>;
+      #sound-dai-cells = <0>;
+    };
+...
diff --git a/Documentation/devicetree/bindings/sound/sophgo,cv1800b-sound-dac.yaml b/Documentation/devicetree/bindings/sound/sophgo,cv1800b-sound-dac.yaml
new file mode 100644
index 000000000000..8457bddcea92
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/sophgo,cv1800b-sound-dac.yaml
@@ -0,0 +1,43 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/sophgo,cv1800b-sound-dac.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Sophgo CV1800B internal DAC audio codec
+
+maintainers:
+  - Anton D. Stavinskii <stavinsky@gmail.com>
+
+allOf:
+  - $ref: dai-common.yaml#
+
+description: Internal DAC audio codec integrated in the Sophgo CV1800B SoC.
+  The codec exposes a single playback DAI and is intended to be connected to an
+  I2S/TDM controller via an ASoC machine driver.
+
+properties:
+  compatible:
+    const: sophgo,cv1800b-sound-dac
+
+  reg:
+    maxItems: 1
+
+  "#sound-dai-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - "#sound-dai-cells"
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    audio-codec@300A000  {
+      compatible = "sophgo,cv1800b-sound-dac";
+      #sound-dai-cells = <0>;
+      reg = <0x0300A000 0x100>;
+    };
+...

-- 
2.43.0


