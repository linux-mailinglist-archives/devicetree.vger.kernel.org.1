Return-Path: <devicetree+bounces-263454-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eFMZNAUnhmlSKAQAu9opvQ
	(envelope-from <devicetree+bounces-263454-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 18:38:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC4C1012EE
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 18:38:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 47F08304B003
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 17:34:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E88C40B6D4;
	Fri,  6 Feb 2026 17:34:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hJFtEl6x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com [209.85.128.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 028323EF0BA
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 17:34:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770399280; cv=none; b=Ml0dso6oKjyvx9EC8lFHdgBR3xUxKm5JvRGNyOdoMwMVHAirE9d4su7iLuRD10CL8Psw/AysJgP819fpndau4o+yeNW3+RoqtoUNmYHqLAnTTU1XLSOzuf8ZpbGjDKGCvOH0U/VMSaAB/WP7kLxZrfAIFm0mRJaNpgYiI44Yq+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770399280; c=relaxed/simple;
	bh=tT4egkhAh/4FJlYjxvVmOIEurMTvY9gcIWgBMYTPX9o=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oEKnqrmFzA9jn/SzJsa5cSF2ljfPZ9pbk0WkR5pTgJNSGtXiyEZgqliKDE/QY1tu8KdjwQyk+RJ21sjXB1bKAKBXw7vwOF1kEwumJNO3I7+UBn0UcDjmicFIs26zfJRJTtAoMEnAFckCQE9eq9X1daoikWMSRACR2+pMNNFSdBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hJFtEl6x; arc=none smtp.client-ip=209.85.128.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f65.google.com with SMTP id 5b1f17b1804b1-4805ef35864so21038245e9.0
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 09:34:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770399278; x=1771004078; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kF1hhqYZPeYTY+vJ3xTMx17h8TLzRw6tKr0GpQ4bJnw=;
        b=hJFtEl6xfrQ2/cNaRZIZABNmoMqTD2SLl3r35x3WiN1L3+sqYWiFb8+vOv8qYPyrlV
         iORAqPKpc6gf7+zCQhX1EYjUCszDOMslrXkL03mG8n1NuF38FNjwGZq7QlmkJhwQlpZx
         U2tJ/J2Xn7h0gwifWjUHHsOXhPPMuv8M8fxCQq5C+ns6jlQTLgJlVevF0VHelpHqg0Yq
         i4P2rnjh6yMpon/6hmBcedPC1KK+ufC8GagUlS4FEWmsFJifEUIo0/UigFJ2A/yAOYgu
         arYSw7qVWa78ayal3S37fXV9fVap3yviKFsrmEP05E27dateN/f/K2EuK1cJL6pLTTA3
         uykA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770399278; x=1771004078;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kF1hhqYZPeYTY+vJ3xTMx17h8TLzRw6tKr0GpQ4bJnw=;
        b=MJ8dn/BkGme6nNswYf/jcctBDL1Ti+KjZXxsopKB4rpvj8gWCc+p+lROMtAYNwq12t
         c7PogCl5Zbrh1bx3XJlbGS2s5MsH3NHRZc+uVx738lp8F/DYIuPNTwSQ1im7rrxwyeiX
         LeKl3y4YLzdQD4Ax+HFhiZehT/D+BvwfnlaeQXxG8GUsv2LxoQ75QJLxfpo7PsWnc+53
         i45bGsjzvVetZ415kD8lFS929JdaODHgyelJBSB9zOlVRvXBjuBzR5MmtJ+T3EhGPxF8
         A6pPbndMFswlLxMVxIpH1ixBbA9lxeBNCAzjaTLBrz38NC2mRfjzNqntf0JzXEb5KxhI
         lrcA==
X-Forwarded-Encrypted: i=1; AJvYcCWZSwkZYAoz02S8z68zqmRyojn9BYDdFfOlhx1nq8kgGvxSV+pdxwh8lAQNQOcD7wPoFE/xJrEOIoBD@vger.kernel.org
X-Gm-Message-State: AOJu0YwX9H/ITKECZnpkqxH94R25LnDN9enPIHDKXxdR6HHXpfDFF5WT
	pypUdSIu1rIQSoKh/Bey1Y20ohBRwDZPRCXNo6nL/9nWM8JGkNVrLA/4
X-Gm-Gg: AZuq6aI6JM6oqoaOZ7j3SAdnPwXve+oQdfYeAO0N3LEat0akimOTG7+bMtVQneJJdau
	bWZXjHq2Z/jKzL/O0qkbvRJGkpaasbE7x26igJyOUttJIoIXA3kmmxpmoRO3ARWt7mpg/jKImt/
	OBAJmjNS4xpvE5bKIGjzVpxk0pMUme/8RCclzZ8YuiXiNwZjmqi5GuIYaBrqvUXId6DqHNharQF
	PgXZDuWsvMnEMcaTdZ3QJ8Rl4db8hHfDv+YfQq3nFXoE3DaI2FlqiTsZrOFBy+LO/tXLjcmYVoo
	S82+Tc9PLZb4gY9ZIjBGIGbTr5wJqd5Z3YbIACC12VLZDsH566CvqyVN5md4QI8DT8Y426IczP/
	S82a4hP2Y0au3ZYptLPoUB6dB4sw7U5siqyZusWTGBYQt573RFgyBc6AZaP4cl0dfw3fc2Vti7z
	ktRvDNstFYMSQ=
X-Received: by 2002:a05:600c:a08:b0:480:4d37:e742 with SMTP id 5b1f17b1804b1-483201dd276mr48259315e9.10.1770399278112;
        Fri, 06 Feb 2026 09:34:38 -0800 (PST)
Received: from xeon ([188.163.112.49])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-436296bd4a1sm7454523f8f.17.2026.02.06.09.34.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 09:34:37 -0800 (PST)
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
Subject: [PATCH v2 1/5] ASoC: dt-bindings: nvidia,tegra-audio: document CPCAP CODEC
Date: Fri,  6 Feb 2026 19:34:18 +0200
Message-ID: <20260206173423.145954-2-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260206173423.145954-1-clamor95@gmail.com>
References: <20260206173423.145954-1-clamor95@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-263454-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.995];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url]
X-Rspamd-Queue-Id: 4FC4C1012EE
X-Rspamd-Action: no action

Add dt-binding for CPCAP CODEC.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 .../sound/nvidia,tegra-audio-cpcap.yaml       | 90 +++++++++++++++++++
 1 file changed, 90 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/nvidia,tegra-audio-cpcap.yaml

diff --git a/Documentation/devicetree/bindings/sound/nvidia,tegra-audio-cpcap.yaml b/Documentation/devicetree/bindings/sound/nvidia,tegra-audio-cpcap.yaml
new file mode 100644
index 000000000000..5335fa56fb3c
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/nvidia,tegra-audio-cpcap.yaml
@@ -0,0 +1,90 @@
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
+                "HSMIC", "Mic Jack",
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


