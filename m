Return-Path: <devicetree+bounces-240865-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 81BA3C769D5
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 00:31:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 311CF4E64C9
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 23:30:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54CBD3126B1;
	Thu, 20 Nov 2025 23:30:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OgTVZTDi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D7D530F951
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 23:30:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763681408; cv=none; b=Bv+cX+MqcrNUW0wiBs6vsYLHbkTrKBw6xrg/3Po7ThmVZot8xonZVQUaaYTUCxQ4anND2wbCjhbfSM/kzHdooonSIrfj7ZVuIeO9/QnFQxJQQoFDlSnBFblvSCbev9v7WZd7CzsS0hPwIN68shhSGcc1l6pF9eJ1KKEFrDfCMek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763681408; c=relaxed/simple;
	bh=xZAMMTzqv3xW7C+UMRhWcflE3oJn9Xg5Wy7C+qUtd+c=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FzsK3Uv9Lsz9lTAnS66iTO/0FRezZ8Fbip/zeWer9thobA6K0OrDFXtVeGvS4QoSUCaLVahrrYJ38FUnodcb9qBGrrkFkGTinGpiFUcN8jRu4C27tYuH9bSPpSoUAKqDMqhgXSYXiSznoQlrDawvBSDqc4VQ1IHzYwyXqYfjcN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OgTVZTDi; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-429c8632fcbso846649f8f.1
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 15:30:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763681403; x=1764286203; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3+/E1TIhpDRo8RKAqJEHauT5WqKU3CX8xyLt8d/UFSM=;
        b=OgTVZTDimZJQWNx2ltx++zQPNO7lsRXZ/bwJ1BR5caIRibnHuqR5uAqoeagjfZMxGx
         F3IAgQ2xrgcrRLTykHgo9y0UoOLjcPUB9t7FFagFzi5NpnP6vnWCiEK7AZZwuZXTdFPZ
         BK/Mbo5SVMOs7Guw2svtGePTm7tmFu77ICPhqQr4X+WaRlHnjUJHl15AMzEXKVw+SDnK
         TA2PvuQU5a7YvPACSzL5JbuQFfaJadhApzjYrc8E/svrU5HXgjEIykfXuV2SXSjO0tVg
         cDjdaMV4QM5GyNrVQrDdhNM7potLi1ZC+dVGF8SEYPT4v83kt9VLgwYIR8XkXOBCfJ6P
         vqew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763681403; x=1764286203;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3+/E1TIhpDRo8RKAqJEHauT5WqKU3CX8xyLt8d/UFSM=;
        b=p4A8rYVfhv816bwVyyud/ZzDT58u6we4YLajGlXFGW8paa8b/B3b044RrzYiL+LzMx
         NQxZG14+I+em40R16wvrn3iEB7MUm9Y9c84wdkBey/jynLOfWgluE9rVEN5ueppl6SLW
         WM28CODePOTP+vNmrr0k6aZLDFTk1mPeu0ZxIz92B6XTrp0Va8CTqNbAA6miWjeWciKE
         ptuppegEmkEJbrmV8MfURizNDusC2o+cBxCCm6rpCMF0IUU9Jgl+bYCUT9N62DOWjIuz
         0nAEl6gb92r0KrFN4ImV+JlUrpcxjPKkhhwLHK3vlXSv8b+ISxlqJFYtwJCEHPfE5Sv/
         U6Hg==
X-Forwarded-Encrypted: i=1; AJvYcCU1VtqAcikX8FHCY3PW4kK74WWvdP+j6SlS+0/bf0/TW39oidskKW66UIMn4PiHo1Od0oB5YuQ4BhTP@vger.kernel.org
X-Gm-Message-State: AOJu0Yzm8iBS5h8LWlAUEUwRYUNX69LRXgPxmvfz6Df6ZmX2zCmd4V+U
	u58TXJNjNN8AhKSVfNLX9ITd9b1wSS/hJyKRuKk8ykPZqZzkY5dLD1zb
X-Gm-Gg: ASbGncsAC1NekWbpIt8mzDtAoKPn4Pu4OnzOMfKcseYqtnhP+3aHkkDP9dzYQmx97xg
	Y1pG14/y4KMvk9qZq05E7SqhNVgU/SHiHsXLfE6rtiRIpXUwK8rLEafCgEzo5ERRPwVlFCJmb6F
	DuH4wp2Yc/oQvshO2XBmGRfRLdkSM7aT+9PE2I+iXhRn6z9MGYkW8UGv02yFl5Wlhc3yZVN3xZf
	NsFrlGvosUr3WeEraDBWVFIPuF1VobvVP16nRZkESncvz5UwdZc6fEJA+TDoelxICtJ0HhfcynT
	aNMkxOLVuAoOrrJW92uWi8FMTaFhyCVsCUAZ95EKcJdhtSW4QKCOfr6omx472NGcCwvzhG9yETP
	d6l/qpkW0BGohohnOs2ftzmfGikjmRuM5j6f1GUdEw6BIvsLxHCCj0JceEjtF0ndjPY6yg/L4PA
	xKApVkbSGb0BPjOZIT8J/QPhw7/b3wuj4eHvvPgl1RwnR06E079i0=
X-Google-Smtp-Source: AGHT+IHqEb8VCudY5XeW4oLvZSGAjMxNC8ruQ7rhvDVg5aKGaQnnkgzkoE9uKt2k4/hXUDSeMYg4Nw==
X-Received: by 2002:a05:6000:420e:b0:426:d5a0:bac8 with SMTP id ffacd0b85a97d-42cc1d19624mr85145f8f.56.1763681403285;
        Thu, 20 Nov 2025 15:30:03 -0800 (PST)
Received: from Ansuel-XPS24 (93-34-90-37.ip49.fastwebnet.it. [93.34.90.37])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-42cb7fb9022sm7776315f8f.36.2025.11.20.15.30.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Nov 2025 15:30:02 -0800 (PST)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Lorenzo Bianconi <lorenzo@kernel.org>,
	Ray Liu <ray.liu@airoha.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Christian Marangi <ansuelsmth@gmail.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Cyril Chao <Cyril.Chao@mediatek.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
	=?UTF-8?q?N=C3=ADcolas=20F=2E=20R=2E=20A=2E=20Prado?= <nfraprado@collabora.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-spi@vger.kernel.org,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH 2/3] ASoC: dt-bindings: Add Airoha AN7581 AFE YAML
Date: Fri, 21 Nov 2025 00:29:11 +0100
Message-ID: <20251120232913.32532-3-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251120232913.32532-1-ansuelsmth@gmail.com>
References: <20251120232913.32532-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add documentation for Airoha AN7581 AFE YAML schema.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 .../bindings/sound/airoha,an7581-wm8960.yaml  | 67 +++++++++++++++++++
 1 file changed, 67 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/airoha,an7581-wm8960.yaml

diff --git a/Documentation/devicetree/bindings/sound/airoha,an7581-wm8960.yaml b/Documentation/devicetree/bindings/sound/airoha,an7581-wm8960.yaml
new file mode 100644
index 000000000000..ebeda0876280
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/airoha,an7581-wm8960.yaml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/airoha,an7581-wm8960.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Airoha AN7581 sound card with WM8960 codec
+
+maintainers:
+  - Christian Marangi <ansuelsmth@gmail.com>
+
+allOf:
+  - $ref: sound-card-common.yaml#
+
+properties:
+  compatible:
+    const: airoha,an7581-wm8960-sound
+
+  platform:
+    type: object
+    additionalProperties: false
+    properties:
+      sound-dai:
+        description: The phandle of AN7581 platform.
+        maxItems: 1
+    required:
+      - sound-dai
+
+  codec:
+    type: object
+    additionalProperties: false
+    properties:
+      sound-dai:
+        description: The phandle of wm8960 codec.
+        maxItems: 1
+    required:
+      - sound-dai
+
+unevaluatedProperties: false
+
+required:
+  - compatible
+  - audio-routing
+  - platform
+  - codec
+
+examples:
+  - |
+    sound {
+        compatible = "airoha,an7581-wm8960-sound";
+        model = "an7581-wm8960";
+        audio-routing =
+            "Headphone", "HP_L",
+            "Headphone", "HP_R",
+            "LINPUT1", "AMIC",
+            "RINPUT1", "AMIC";
+
+        platform {
+            sound-dai = <&afe>;
+        };
+
+        codec {
+            sound-dai = <&wm8960>;
+        };
+    };
+
+...
-- 
2.51.0


