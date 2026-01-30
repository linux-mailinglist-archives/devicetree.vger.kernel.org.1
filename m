Return-Path: <devicetree+bounces-261230-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aPzgFCm0fGnSOQIAu9opvQ
	(envelope-from <devicetree+bounces-261230-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 14:37:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E54E5BB247
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 14:37:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5AD31304DCB6
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 13:35:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A1192E6CD3;
	Fri, 30 Jan 2026 13:35:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="P0WJDHqW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com [209.85.221.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E745E2EFDBB
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 13:34:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769780102; cv=none; b=MX1b9h9e6Ur+MuAXa+83byJX+BbTGy8CDRuIx1vUcLd9RZr1Zsh3bh8y/qg/C19lU64JkkrvADwLKyK7hP1sbI/9LE79c33SX2mSQdAsJvqybnyIi2p0/DYM1LMY25Cb2f1iqIQIxQgRBQLXFwU4nAlYCMtD6uWm4aZzVE/QqSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769780102; c=relaxed/simple;
	bh=E50Z0kZ8QEC/+gID4A4p9F54kc2DuevigG1LcHQ1FUU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ECvoN9HUZnG5eJygQjMVG6430zJHIPnAiwdfd7pH7mLK4MQ2wmrfoAMs6cuKpj0AnikoOcxlgvOSwB1vubjLh4pFtsXQmroc7sepDI8mnEFZxnU+kiHKzovm4/6vAN/Ng6rJ18iJobdsEIp7KmkNgHDCxTN5kLPb5ottz4ACffI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=P0WJDHqW; arc=none smtp.client-ip=209.85.221.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f67.google.com with SMTP id ffacd0b85a97d-43596062728so2072213f8f.1
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 05:34:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769780095; x=1770384895; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CDk6pvEbCDbKFm0MEs5hS5v1vRZPcd+sQDBn0D1BQXQ=;
        b=P0WJDHqWGnYnB3jZNkeY8R2g9r0jVnSA7XXv9FUVti86QLM1uWm3H0E+eK05IUfeuo
         bqXVxEIrvP57n+iDki1shcVVbe4xe37pAqMT5YwZP3sQcXZtT3JZLASyI9+8IdDn8IKW
         i00eDnwjl8dnl6Iy6zG6hzEvkYxfhwZA4eDOQZ09NqHgRTq4OB8F0p0ISgsTftsQsouJ
         13VlFmn2DEmg5dwc27LIH+SugKoUu2UpH69xCTj3ovByw8IYEZuuwU6+knSabjuoYckd
         TQQcslb9vUxdfxWzlWqZp2fI5NXGvHOzACPAKYKTk8XelxtftIhtZi8H9qeLyxesSHOG
         2uXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769780095; x=1770384895;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=CDk6pvEbCDbKFm0MEs5hS5v1vRZPcd+sQDBn0D1BQXQ=;
        b=KZU8MdWzeZP20p26JoB+bpceLinMLwQOpyCzxrTqPqERVG1kXwvMPFdP9cxHhH4D+r
         a69gmqmL8ow4QZ6uHN5iUpZN1tVaIUntjU6m5j3WyuyRZVUl5gVHjfe0gHBmE3tQCiqZ
         I4sv3gb5IkzZrmGIXH3ReFLe5Z+JYW5tGtSspB0fBVrrz8sOT0HlngPv2vVSs31qRsYc
         OAwIsQx67ftIiN0XQdjivAJuYVNqNsa2lJDdvInDgEHvHs6f4ETzhWJTlsdsxghf3fcL
         sXJXMHvjrNEcT4JzqqaBCQlwFnKSiByRyS1nOPo7R9m4fjRMzDx6JCM3sf6bsM/tpSKQ
         QLdA==
X-Forwarded-Encrypted: i=1; AJvYcCVbGJ1P5v0jmbyMVF4wEh3oPoVv6WObakAKbI2Lb0Hv9ZeR96oBfv11mDCreFTDey38RTYJAtRj8Lr0@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8CW20vkRP0SYDrW+Kn2XnSxKy8JcNtWRx7z9hDtmLp2GnsEFn
	E0t8dExdh3oWwafPiAReKLCO6F0lH2ZimsLdIGM1v8jw/mhlY+MV3Hi4
X-Gm-Gg: AZuq6aLU3MkDCyzH0rOhMFfRvtG9NY1rF1xGDvnmJX93SnopMk9eopIDT/j2bU/BEL9
	qX7k9JV/NwAeXPPIYzFqvwJLtTnRC84FzUVdEyCdPKIZfmmZq8bxGbSKIIQyMos8UGRmruxTmMo
	17N+Qee7KKsbZ7I/jsTki3kmJv8KQ6yG3aQOElS+H+mY3xaIvXMO930rXHlcrKOotn47eT3qbSQ
	nmovZYPIFSkkmmU3rYK3hCmW6VWbnYM4+yWTuufbW4fqnfuFT1B0k1hIzhspcGJS5QKgxj5e6cI
	qcGiRAYibXmQivdeFopBKBMf1Q+eaIlPk3C4RFUtpw954/Io/JLBAxMy2j6dfyVsCY86RWvCps1
	pQ+6huFYEb2YlCyrfxwei+4UjHS0PTWOLXxgN+GpD+Amuws7RD0Q1TZ4erfGwcnlAcH8B5jnK4f
	6L
X-Received: by 2002:a05:6000:3105:b0:435:932e:f932 with SMTP id ffacd0b85a97d-435f429d77emr3966731f8f.7.1769780095157;
        Fri, 30 Jan 2026 05:34:55 -0800 (PST)
Received: from xeon ([188.163.112.49])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e131ce93sm21536837f8f.24.2026.01.30.05.34.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jan 2026 05:34:47 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	=?UTF-8?q?Jonas=20Schw=C3=B6bel?= <jonasschwoebel@yahoo.de>
Cc: linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 3/4] ASoC: dt-bindings: nvidia,tegra-audio: document WM8962 CODEC
Date: Fri, 30 Jan 2026 15:34:33 +0200
Message-ID: <20260130133434.353353-4-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260130133434.353353-1-clamor95@gmail.com>
References: <20260130133434.353353-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-261230-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,nvidia.com,perex.cz,suse.com,yahoo.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,devicetree.org:url]
X-Rspamd-Queue-Id: E54E5BB247
X-Rspamd-Action: no action

Add dt-binding for WM8962 CODEC.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 .../sound/nvidia,tegra-audio-wm8962.yaml      | 88 +++++++++++++++++++
 1 file changed, 88 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/nvidia,tegra-audio-wm8962.yaml

diff --git a/Documentation/devicetree/bindings/sound/nvidia,tegra-audio-wm8962.yaml b/Documentation/devicetree/bindings/sound/nvidia,tegra-audio-wm8962.yaml
new file mode 100644
index 000000000000..2c3bf5a02a34
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/nvidia,tegra-audio-wm8962.yaml
@@ -0,0 +1,88 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/nvidia,tegra-audio-wm8962.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NVIDIA Tegra audio complex with WM8962 CODEC
+
+maintainers:
+  - Svyatoslav Ryhel <clamor95@gmail.com>
+
+allOf:
+  - $ref: nvidia,tegra-audio-common.yaml#
+
+properties:
+  compatible:
+    items:
+      - pattern: '^[a-z0-9]+,tegra-audio-wm8962(-[a-z0-9]+)+$'
+      - const: nvidia,tegra-audio-wm8962
+
+  nvidia,audio-routing:
+    $ref: /schemas/types.yaml#/definitions/non-unique-string-array
+    description:
+      A list of the connections between audio components. Each entry is a
+      pair of strings, the first being the connection's sink, the second
+      being the connection's source. Valid names for sources and sinks are
+      the pins (documented in the binding document), and the jacks on the
+      board.
+    minItems: 2
+    items:
+      enum:
+        # Board Connectors
+        - Speakers
+        - Int Spk
+        - Earpiece
+        - Int Mic
+        - Headset Mic
+        - Internal Mic 1
+        - Internal Mic 2
+        - Headphone
+        - Headphones
+        - Headphone Jack
+        - Mic Jack
+
+        # CODEC Pins
+        - IN1L
+        - IN1R
+        - IN2L
+        - IN2R
+        - IN3L
+        - IN3R
+        - IN4L
+        - IN4R
+        - DMICDAT
+        - HPOUTL
+        - HPOUTR
+        - SPKOUT
+        - SPKOUTL
+        - SPKOUTR
+
+required:
+  - nvidia,i2s-controller
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/tegra30-car.h>
+    #include <dt-bindings/soc/tegra-pmc.h>
+    sound {
+        compatible = "microsoft,tegra-audio-wm8962-surface-rt",
+                     "nvidia,tegra-audio-wm8962";
+        nvidia,model = "Microsoft Surface RT WM8962";
+
+        nvidia,audio-routing =
+                "Headphone Jack", "HPOUTR",
+                "Headphone Jack", "HPOUTL",
+                "Int Spk", "SPKOUTR",
+                "Int Spk", "SPKOUTL";
+
+        nvidia,i2s-controller = <&tegra_i2s1>;
+        nvidia,audio-codec = <&wm8962>;
+
+        clocks = <&tegra_car TEGRA30_CLK_PLL_A>,
+                 <&tegra_car TEGRA30_CLK_PLL_A_OUT0>,
+                 <&tegra_pmc TEGRA_PMC_CLK_OUT_1>;
+        clock-names = "pll_a", "pll_a_out0", "mclk";
+    };
-- 
2.51.0


