Return-Path: <devicetree+bounces-267302-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oE/6GgkUnGkq/gMAu9opvQ
	(envelope-from <devicetree+bounces-267302-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 09:47:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F8E617344E
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 09:47:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 25A52302021C
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 08:46:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B8A134C990;
	Mon, 23 Feb 2026 08:46:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Zblcxq4k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com [209.85.208.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE472346792
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 08:46:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771836411; cv=none; b=QsdZ7128umi4eMk1UhHtONPqmjkeKb8Nku8QpBGSz406RqDa8JrQAROvwFFD0d9nHJ4hUvZKJlHuHvvEBjLsaKQjjYJz/lOgsh1wBUqXFF1sOLyg8LT+MLweZ0xZT56GVReaBM4n75B4KpD6tagD341BhY2i9q50/hh9VzqeRMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771836411; c=relaxed/simple;
	bh=E50Z0kZ8QEC/+gID4A4p9F54kc2DuevigG1LcHQ1FUU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nQrpu5oH31wIZsESHvyEUlZpkY3ukt2DmLy3GOUrFBoiaa6i+DB5aGPX1nLjaGvFrXhD+pX/SxOCKzJv7fH3Vg8RFolCi7fkMownspoOwVuZt/c5BglsEPf9WE5urjxDOVkqCOX/E3W1hpGvtKUH1Uo8Zh5p/b5/dd8eUlwi9I4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Zblcxq4k; arc=none smtp.client-ip=209.85.208.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f67.google.com with SMTP id 4fb4d7f45d1cf-658b6757f7fso7261630a12.1
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 00:46:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771836408; x=1772441208; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CDk6pvEbCDbKFm0MEs5hS5v1vRZPcd+sQDBn0D1BQXQ=;
        b=Zblcxq4kUc9VG89DtBDIvmJQlvC0aCoukuB0zybrw90XhPcZspELXydQuxMjc/W4aN
         81mcNe+R6VlMbXAN/KkruMy4ZZADnU4pKNOgf7WrTIpyiBhelGbGvah5zNjB03wi+arD
         dsXkO1jzZf/kgouCusIQLCwE0zZXqUeFiBpjMaiUxPV8khQT6F3LwR56YtkniaujdObL
         LV6ZXgEgvwPiJhgWN3KUfYHnD2Ett1d/NZGKNXD6wXm3QDfYBwCdUUigawRPdowhDZM7
         aI6TH7QUgwS3fVu7uN4Eg6rhkJ0qe4AVV0Zkgprl/c1uLKPPmYGVg9XDqjSJK99znZyV
         tmAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771836408; x=1772441208;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=CDk6pvEbCDbKFm0MEs5hS5v1vRZPcd+sQDBn0D1BQXQ=;
        b=fUjJXWBYWVTZv2US95u0aiiZaCy4sqR5Q/kMWV91iFukltY/FC3gupk+UfdUWu8fvP
         h8xDVyA1qY0at1tICtUQ14bVSZd0K35QCcCO3UddY8OTL9CXdVSiLDnhQO++APtVRwLN
         qPN5OZDIU1/XorhIvrvKYcfGxhWwqfB3vtMxb29YVaOGKjU5UEN7MBijYIyW8m++A/DS
         KytOObPnH2NaPSSqseL4NbdMPF0TemEnhq2Iw1vUW0BQd02OCjz/uJx0t1oDj1vpv55l
         Dqj5+0BEzbryV0f7LGpAIvkhO9d3VobvpmFyaAO7Xmdv9QvDymxFkHiSAW6sYBL23vXx
         AX3A==
X-Forwarded-Encrypted: i=1; AJvYcCXwoBgzbtbzWeUGSuW7iDrXRK/29D2MrnxpzIX4qQ2M3xaolAeq4DBITH30OE1hJnkGgI7NCSxhL8/M@vger.kernel.org
X-Gm-Message-State: AOJu0YwXwO6WBzuceSDKz+oPW03U1Rhznaf/sV5B3heGstEHhxYOpDDs
	Byu4zNprIJOJbJRPFvBNPcKpxnOn+lmVRzSmWXjxOW124CKCDXFQifQoMNVsSpEK
X-Gm-Gg: AZuq6aK8+XP8LlqQ7hU/FakOTTnsRcU9OUdxfgMwVA2VMDwoTUqMwAH001u827JKZl6
	bgs4L2X9M4hXAPF3W+sl4vy8rL7lnVio5dp2xv2vBKDqe3juMBVgACoo+/d1n7RAxWGQs5WIpCr
	FaEXgDzD6ROxvPweAGh2SOMXHouQUIAKGexk01edM02stiRQIu/iEot/c2JpLpnYGGzjucL+VHN
	ggp1H+OVmGWxzmZPPQu7EK1SYAoQRkMw58zcRqCYmtO5GhU/ZE/UR+U/BenKjuTevs0FZyf8Z2k
	ThOLC+kVNkMCpOuouAuWSH3Lrhv+igkeUuuRQnlAck0obmgSIyi5A3oFNtNfHHQvuaHcy1d8WyL
	i8VTakNAawxM6gP2rOPlgOHHENjBFMZscxJzxEhLJdQPrKba9IO9U5+FkHsdN6hpvzua7AsRcSf
	bR83pWGRA77dfC
X-Received: by 2002:a05:651c:41c7:b0:386:34b5:aed2 with SMTP id 38308e7fff4ca-389a6072e4amr24552671fa.5.1771829463626;
        Sun, 22 Feb 2026 22:51:03 -0800 (PST)
Received: from xeon ([188.163.112.76])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-389a78b4a45sm13916521fa.13.2026.02.22.22.51.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 22:51:03 -0800 (PST)
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
Subject: [PATCH v3 3/5] ASoC: dt-bindings: nvidia,tegra-audio: document WM8962 CODEC
Date: Mon, 23 Feb 2026 08:50:49 +0200
Message-ID: <20260223065051.13070-4-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260223065051.13070-1-clamor95@gmail.com>
References: <20260223065051.13070-1-clamor95@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-267302-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,devicetree.org:url]
X-Rspamd-Queue-Id: 0F8E617344E
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


