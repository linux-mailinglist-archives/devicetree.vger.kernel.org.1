Return-Path: <devicetree+bounces-256412-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B933DD390E5
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 21:22:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 33178305A757
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 20:19:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4422E2E9730;
	Sat, 17 Jan 2026 20:19:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WggWR+t8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A9B52E54D3
	for <devicetree@vger.kernel.org>; Sat, 17 Jan 2026 20:19:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768681187; cv=none; b=hSbEfdYAVaOiZE2jjOLVnOqZ4RWmikwGCQhFG7wY2MGLUNj/nV02pP17C4O/FzbLeYQRV0ZdafQfoc//YUF+rmpFfRtML/ee9Dd4b5ftbLpTRuVGqWzd5Q88QBcV3buaHAXquC8jcVoYkV/kot3rm7Ic+4VMJ/YPxprHvYU2gA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768681187; c=relaxed/simple;
	bh=GwTIVlGCDzAackWj5fM/XVH5Lb9iGR97dcSVgftL+2Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Vr8HMztm8LxkLf9PTSSDYp8+f48aZbxshY8sjFWD5bRL7ONHYbn4yhaY9tcH/Y00kXrbQwUgdD3zfOEaq4VXTKcA5AIVLyi9OhQKHJI+iKT9jMxD7U3ZzYZNeHDQrKbChi3UYISoG64eGmWRpPwIZrjrhcSOMsnf+ah7kgBtQ3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WggWR+t8; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-47ee76e8656so35724255e9.0
        for <devicetree@vger.kernel.org>; Sat, 17 Jan 2026 12:19:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768681180; x=1769285980; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0UxSpNiV5VGrUBMb7ER2DKSz/PAOIwyqbaRxTfzD0/M=;
        b=WggWR+t8hzgaL0pEmO2Cdi73qt1ZyMULn7PAkQ8iCdMUKHCiOnK/WaBeNUOcAUWt/F
         r9d7hSgG9YmVfrkhGH4eIm3n8srkgPkp1lqMCtmjHAs4zy5J5gZOYnbIVFEFgiEpSOOi
         vJ4setaV9wBYYVEvn7S9waTL0030Z4HRSrxSOZpdC03yncyXSsKPvtA192JtXMaRY+fv
         f25+ndPdhuRX0vMQ6mK1HecnjP1q2+5qkKHn4VuiMiyJ7CT9Hr8kyrflLYZM9rVaO1i6
         +5hTV+TXBBzHBmUD/mj4VT5a7eXfElnPVwsn/yUdzX2uRblkt20P2SJaYBCarvAeiPQF
         5iRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768681180; x=1769285980;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0UxSpNiV5VGrUBMb7ER2DKSz/PAOIwyqbaRxTfzD0/M=;
        b=mnEcx4yx8VbPOS8rmPA9iTI+WkCOvQun0hhVnb9Gy8oNSx/EQiWuyxZQR70D4KNrHC
         nUm2e4LV21eF8ompjOtqvcXlDBWAfF3v2obWTQkKnfjLeUX6czhXgM6OSuYxr5Df4SIR
         YNtzAsBcwdv6yHCwiUhGCxgeaRlLM5eBlAkyw79uDD2+LJ27smnUqXUSi1anA/eJJ+tW
         RRRPy2SXpMOcdl8I0xLdUGIGL7NEAyTZQ1IXEzED70l9woqTBF+6X+v/EK8R7O/ZrtzA
         2hz0hFJyp9r/XeRxLXEtLqcvOOUn2H/mtBdOqvbt8ZBEQiIDh8wngG/B0wQpVhA90qEo
         +G7A==
X-Forwarded-Encrypted: i=1; AJvYcCX2PHbjfXJh/UQF/GOUM90+OZpl//E94MotB86iQg2Zn9ZrAsjN6fKY+qiGK3BoqmxTQZ+pJrUIyI5e@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6WKr8o+OzlFvrxB+V9F1gz5J4t6yvJw5gXsDsWkXUPYG/+ECu
	dHGC56aUDqIcoONx6KJfzbkQMR2wpTQ/7qJQnZINfkySUmyiUnHI/EJY
X-Gm-Gg: AY/fxX7KFm6wk62tfLdpy06pq0CN3pYl51KjnXJy/7IyNy0fE+C73/407GLlzmw2coz
	cL3d5njM3N+t25TBtOhu6hLBcmsuyN8DbntQemFtJpVDuw5KCspQbREkO1Oesq1DKNUWIJ6GLdG
	wmR27D54/0IrInK6KuwsR+k+Hpfer2Fukzvzgb7MifpRa3ple/f3TIgymVlsaYXFL02OZNbyxmY
	wDvu4j5sOJ5YhS+Opmdz7qEDfZV/8Fx/jg7Ajhx9syd5482TqSyZnwvpOf8JnbTkzoGq5/pWOXD
	W/XxwQTxfxhVLIUNpTRKJG2tPLzZDCSo7u1iuQCf+2RAavUTmiZS0ukn9PB2UZJhGO+vSZZyiop
	zjjZxUOE0fz3iPePNDR2+rVbWuEE2WlUu8mwIAuBSjQFAxgAxjO/g/S7dtdh9HHlp5/eMSG6/DY
	iu8sJpDRQ3zn6Wr+6L03K8Ly7iJucB9lLAsF74b4wv1eIT
X-Received: by 2002:a05:600c:548d:b0:477:9fcf:3fe3 with SMTP id 5b1f17b1804b1-4801e2a4c3bmr88691655e9.0.1768681179596;
        Sat, 17 Jan 2026 12:19:39 -0800 (PST)
Received: from [127.0.1.1] (bba-94-59-215-181.alshamil.net.ae. [94.59.215.181])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4801e879542sm112402295e9.4.2026.01.17.12.19.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Jan 2026 12:19:39 -0800 (PST)
From: "Anton D. Stavinskii" <stavinsky@gmail.com>
Date: Sun, 18 Jan 2026 00:18:57 +0400
Subject: [PATCH v2 5/7] dt-bindings: sound: sophgo: add CV1800B internal
 DAC codec
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260118-cv1800b-i2s-driver-v2-5-d10055f68368@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768681160; l=1737;
 i=stavinsky@gmail.com; s=20260115; h=from:subject:message-id;
 bh=GwTIVlGCDzAackWj5fM/XVH5Lb9iGR97dcSVgftL+2Q=;
 b=gWseGCnVm2/lclbG2rn3qTW1KAMRYhjwJ6KXzgLpr24RyIRTPhxiEifZ6rXedoHGg4b2rRBJg
 0zD6SVMzvkUDOAMuPw4nvoWJS0mMvRtfBHAbR4UhgEvE/VkxZzHvzq7
X-Developer-Key: i=stavinsky@gmail.com; a=ed25519;
 pk=2WxGZ1zd1vQwSPFCSks6zrADqUDBUdtq39lElk4ZE7Q=

Document the internal DAC audio codec integrated in the Sophgo
CV1800B SoC.
The codec doesn't have any special configuration at the moment.

Signed-off-by: Anton D. Stavinskii <stavinsky@gmail.com>
---
 .../bindings/sound/sophgo,cv1800b-sound-dac.yaml   | 43 ++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/sophgo,cv1800b-sound-dac.yaml b/Documentation/devicetree/bindings/sound/sophgo,cv1800b-sound-dac.yaml
new file mode 100644
index 000000000000..2a35e38dc7f9
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
+description: |
+  Internal DAC audio codec integrated in the Sophgo CV1800B SoC.
+  The codec exposes a single playback DAI and is intended to be connected to an
+  I2S/TDM controller via an ASoC machine driver.
+
+properties:
+  compatible:
+    const: sophgo,cv1800b-sound-dac
+
+  reg:
+    maxItems: 1
+    description: |
+      Register base address and size of the internal DAC codec register block.
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
+    audio-codec@300A000  {
+      compatible = "sophgo,cv1800b-sound-dac";
+      #sound-dai-cells = <0>;
+      reg = <0x0300A000 0x100>;
+    };
+...

-- 
2.43.0


