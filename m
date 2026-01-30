Return-Path: <devicetree+bounces-261228-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KKZkBMCzfGm7OQIAu9opvQ
	(envelope-from <devicetree+bounces-261228-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 14:36:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 800A6BB19B
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 14:35:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 092C73013A7B
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 13:34:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 397793093BA;
	Fri, 30 Jan 2026 13:34:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mr81r7pw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com [209.85.221.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 797762C11D0
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 13:34:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769780089; cv=none; b=mtUwCN03Ah095lhCR5Zbbo+6A9hQ3MLG3kA90V28xwmokX1uQT9oHRryu1EKK++kRhsRKc+QIvQ7OkQBkX+5Fmaq87qYH0YTeFl216hNrD+jxW7BGdgVXx5dn5loztcMU72De92fETRmvspjoy6PEoV1Opr8vmvMVQdOGbhsW+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769780089; c=relaxed/simple;
	bh=c0WSaIWh0GbMsdsZOfpY4fsWR+IwyVApzYh2Vgu5YlU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Jq6yGtcbyisPdLFdKa0k5EE2m8oI6u5inPYWIyQFfcWjMBoRPHWqo8J0MxbGGtdwbQXJ0g2A+uSkGeyypjGPLNBvBZrymtbtgSyJAn8PMoskht7EiP5ntiVTotknNydJzU2frolyVmNTj0YuXMPB8V8lS6AbdNuACUV3Hb1Bvmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mr81r7pw; arc=none smtp.client-ip=209.85.221.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f68.google.com with SMTP id ffacd0b85a97d-435f177a8f7so1234593f8f.1
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 05:34:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769780086; x=1770384886; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AoCRYLFgaaOwIEgPrhUSNB9d+/cz6LVHg1Zx25jjT1E=;
        b=mr81r7pwnJKNFpLJcYKHJnwpihsXpmONgyOcHB248+4JfXCwJUcoziEv5N7o3KSral
         p3QwuJvPCTyRA+VYWb+DCW1gy+pLj/XrksfA8MMydtYJHoFkgruLMwOWT58Ff6qMwx6e
         ga7svtLnobwRoB9m6TJXLjQ9jo1b1L5R0Uf9auck+6pil2HvXofNbBoWan7hfJOUAAhM
         syUzqucaO8fEZPXVHIgcYUP8rgNYXsrLESjHODHQxUu1HPPN3gfI8Id0Pec2TeVtJq7H
         aLD+WLLO93aansf/O0kXs2EOpHfVJeKgfcWijKEGQFj3jQ8xcCIqb6+z6S/cdAMG4+Oc
         891Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769780086; x=1770384886;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=AoCRYLFgaaOwIEgPrhUSNB9d+/cz6LVHg1Zx25jjT1E=;
        b=ABAblcKs7BnVov3UoCg0gBxh2RXADmQjdKfXR+6KqSpgVDYkHJv3/kPFpdPf0aXbFS
         Y3sjmih/su9Duwt4qFyJ7D2Jq/YYo67NVwwjIRU6qXlh07h31Qh/b8IJn/vK20FGYPVo
         YNRM58Fn4B/g7MefdvWKpznV7QpMA+nG2+kzmn9EaC2XuCaa99iXax0PN5vr30fy1alj
         rWb3UpIviHRXfczgkPJr6BkOnznSOjO3VVA+LhgCW0pBGNGRYEGMe1QPBa7GZtA996OG
         J5Rvemhv3rUuffYo45zOmWJ7FN1uxfSJUv31Xjv1VmLymoiFWgkLhRkID7nftj4y+WEM
         v6jQ==
X-Forwarded-Encrypted: i=1; AJvYcCWHMcwQorKWUVVkq8ZDch6gOTNMo0zTjY9v9+izeUXwXdbz3J6FOm2FgimK1hTTEWvaVpfrSl8ghmki@vger.kernel.org
X-Gm-Message-State: AOJu0YwBiX0SYyB3rmD/agxg3xAsRc2Jl2OjjCyHjhHBbPhEwsq2mqgI
	kvMbp+/fLHZijoYdNVwFB31dg939OKnGyXnz2hBCEgcKEqtdIW4PliHl
X-Gm-Gg: AZuq6aLPMzpj9rLpYOVlZzdG5saoTyDT5smNmhxS21yVCZ7SdRaQggJc8WlIGedAlvM
	1601FVkcqMmRUsfCAx6b1ESx4Qu2GNpTL2GBf6rbrREUxV4RbnYbFRAivDlKmZPzmKp1zoVJWN4
	wc3PMko/xF9Y0UuZJ9Y+LBhSmdRGBTJTfby29Bk8jTR9iBsJoq2QbnbQ4RRKqUTDBsFbXEFf3o5
	MHCMDZkmGjrtpx8vojkbJkQ1vdRLmUXIYsqwMAIc0oUtsJpXyk3tboMW/c66PNWeAXYQ08Op5hH
	5vffB8nJAAy5Qz0YSjJb1u2mvgecdpJz4zmBsv0sWm66GBGx55jAHUu4LMvBgosyeEKeIBkqSB5
	BXUj36rs6iN71LurnmqnjkmC/TWby70teJiZDg/EUC5UvasCJyq6WkPJP9N32m6p4PFY+k4TAKU
	7RiXElNlkFbI0=
X-Received: by 2002:a05:6000:4023:b0:430:f68f:ee7d with SMTP id ffacd0b85a97d-435f3aafe9cmr4441580f8f.47.1769780085489;
        Fri, 30 Jan 2026 05:34:45 -0800 (PST)
Received: from xeon ([188.163.112.49])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e131ce93sm21536837f8f.24.2026.01.30.05.34.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jan 2026 05:34:45 -0800 (PST)
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
Subject: [PATCH v1 1/4] ASoC: dt-bindings: nvidia,tegra-audio: document CPCAP CODEC
Date: Fri, 30 Jan 2026 15:34:31 +0200
Message-ID: <20260130133434.353353-2-clamor95@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-261228-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 800A6BB19B
X-Rspamd-Action: no action

Add dt-binding for CPCAP CODEC.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 .../sound/nvidia,tegra-audio-cpcap.yaml       | 85 +++++++++++++++++++
 1 file changed, 85 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/nvidia,tegra-audio-cpcap.yaml

diff --git a/Documentation/devicetree/bindings/sound/nvidia,tegra-audio-cpcap.yaml b/Documentation/devicetree/bindings/sound/nvidia,tegra-audio-cpcap.yaml
new file mode 100644
index 000000000000..0af6bd3bf639
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/nvidia,tegra-audio-cpcap.yaml
@@ -0,0 +1,85 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/nvidia,tegra-audio-cpcap.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NVIDIA Tegra audio complex with CPCAP CODEC
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
+      - pattern: '^[a-z0-9]+,tegra-audio-cpcap(-[a-z0-9]+)+$'
+      - const: nvidia,tegra-audio-cpcap
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
+        - Int Spk
+        - Headphones
+        - Earpiece
+        - Headset Mic
+        - Internal Mic 1
+        - Internal Mic 2
+
+        # CODEC Pins
+        - MICR
+        - HSMIC
+        - EMUMIC
+        - MICL
+        - EXTR
+        - EXTL
+        - EP
+        - SPKR
+        - SPKL
+        - LINER
+        - LINEL
+        - HSR
+        - HSL
+        - EMUR
+        - EMUL
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/tegra20-car.h>
+    #include <dt-bindings/soc/tegra-pmc.h>
+    sound {
+        compatible = "motorola,tegra-audio-cpcap-mot",
+                     "nvidia,tegra-audio-cpcap";
+        nvidia,model = "Motorola Atrix 4G (MB860) CPCAP";
+
+        nvidia,audio-routing =
+                "Headphones", "HSR",
+                "Headphones", "HSL",
+                "Int Spk", "SPKR",
+                "Int Spk", "SPKL",
+                "Earpiece", "EP",
+                "HSMIC", "Headset Mic",
+                "MICR", "Internal Mic 1",
+                "MICL", "Internal Mic 2";
+
+        nvidia,i2s-controller = <&tegra_i2s1>;
+        nvidia,audio-codec = <&cpcap_audio>;
+
+        clocks = <&tegra_car TEGRA20_CLK_PLL_A>,
+                 <&tegra_car TEGRA20_CLK_PLL_A_OUT0>,
+                 <&tegra_car TEGRA20_CLK_CDEV1>;
+        clock-names = "pll_a", "pll_a_out0", "mclk";
+    };
-- 
2.51.0


