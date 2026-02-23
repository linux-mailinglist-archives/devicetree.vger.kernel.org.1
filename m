Return-Path: <devicetree+bounces-267294-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eEa0Ho4OnGmI/QMAu9opvQ
	(envelope-from <devicetree+bounces-267294-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 09:23:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C07317304D
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 09:23:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9C5553011849
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 08:23:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 610BF34B68F;
	Mon, 23 Feb 2026 08:23:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HH2HY30M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com [209.85.218.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C596434AB01
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 08:23:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771834999; cv=none; b=H+14tkYrPr6GYH2sqbuDN472rKBfrMdPd6BbnmKiMTGJ9DfCULBB9kpVlwODodG4m4MvdNN9P2ZCGGKq9VaRTKp+QB/CAlJJfxKy3Q/xYW6r+yU8TGvGPFiEzgVExs0Yv6iSnU3NHLlgTH1rDIbOHzj8P//dDGf+YMu8KrvUG2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771834999; c=relaxed/simple;
	bh=QeLyuN/2seU7NDyjmTtE2l7+boc7LAWG8fBCNm5LX8M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SSLeXmZZjoJySQ5UfF89u4cjzWxvbea7cWy462SCGX0ASMQKmeRyZecE3YSg8cP3/NzrMenYW0D9tHCVzeqJ3DV6aWPg7iXuLBnGP19MOeDgeaLVyl0eOJS1FKZ2WC97IUodYN8qokcZoClZiyktQRVvpr6Nnf+1BXONPbdfjDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HH2HY30M; arc=none smtp.client-ip=209.85.218.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f67.google.com with SMTP id a640c23a62f3a-b8fd976e90cso540016566b.0
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 00:23:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771834996; x=1772439796; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wwfoQIZP8rgjlqT6i1sqvtnJ8vCvBM4mV5XScfELGpI=;
        b=HH2HY30MWIeEY5xGO2/5lvLjZURIjeipC8YtUYqdxQgbvrFmg2k4sL+sCj7TxRIGne
         BB7lhnvhJFHI1vEFVmBz0nqR+CzExhh0VJY+yAMX1U6cjxHQhEl8iF47cjpb9Wd/39ZS
         cGw7hDyzwLO2exwwyQOiykOSRtMxhenUgeMiyV4dxSyDuuwdRy0r17XA1LpwTLKyq7Th
         JF59LQWuosF/QKazNcFxlRoZW3R4J/lQgQVb42/LwOscKknOQZn12E46dcsTXszccBE5
         Ifyk2SriZ8N9LXXGxNgBJRMaEE/zkjbAm5AumTztJSg75mnoY39mq+vjYFFKQqSuFgxU
         DztA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771834996; x=1772439796;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wwfoQIZP8rgjlqT6i1sqvtnJ8vCvBM4mV5XScfELGpI=;
        b=OfuGEtrPozKy7tUPlYPkSlBwBPaZ/vHDno18wpSSVoeq19TyiY6QV92jUiYgUxv2Fc
         23uu+h6BR8ySuzQii1a9VfsYPYIiRHnW+nioAvZcHo1df4QK3JYEurDj4MDrjvB9PP/E
         nle6wbsWE7G0Mp5kpileBaaPL3/LiNYTDLZdu9Y5YraYbeKOwxuF1u2SiEgYqCLXUW6f
         t1NdBZf+LyaMXzlATqXhzf3vPqs2Ei0aplUczBAeGPl/wIWtSjyLQhzbG2eByLqBoex5
         y7fmgTR6utFMdVIJ2+9mVls3E416xeHY3GLPVMOl7WgTVO5fxT5EwLutiNBxc1Iw57dG
         Dupw==
X-Forwarded-Encrypted: i=1; AJvYcCUYxLxrmZNHDxj2UK9f6DhuGzdJfUzOL6t14P9PEkTqTZbh/j4978qbDKns8t24qyYIhpJMxmAB3ERl@vger.kernel.org
X-Gm-Message-State: AOJu0YzdO5JYU5X0eno516If6vzTjLMtOl3HpKDbUqfaKN4D0lpj8KD7
	H2KrwNRC5NGKMAZYQfRhK3i6cna8crk/mxVt5nfJ5sR2Meo28G/DNBxnz9+LJbL/
X-Gm-Gg: AZuq6aJ2bQE3/G0r0uLUH72HojCunUTRt9R9waXMljB4CB+qMgNWMxKzpy4yYckRFuy
	hxwXWRitsqm+dfu1it8bT9uu2gLZiMQHdqsC+dLsSYN4ZIMAWuQVoMMJiTjvYPrDNmPX1o4udV7
	x7xvZ6tZVu9TSpiT4WsqZIkGM+BoAIsNg9vpKi6quXVjRMXDfUsAZEX3pP8xZDaPkYbqWZ38cdy
	kKMecAvcHnxBs4S1bLQOYhVVtLvzK9LbriXFQnFBDCrME/GwdgGqMiAUhspVsrpLfdyr15cJJdh
	iBLgxdRwfaQkJhpXYi7lldSBu947c35+PMUjB8q/pOwDqiFra364Xt2DB8e7ziwDGyqQpZmPtFc
	qnFBFI+H5y8Rs4az6WM7UlK5L7AzhVMVsT0oVG+HoFtC0HM52GpEw4yNJNVri4+gChBOyPMyW0e
	qGEr9+2xbUm9+a
X-Received: by 2002:a05:6512:1081:b0:5a0:f5e6:7f91 with SMTP id 2adb3069b0e04-5a0f5e67ffbmr142293e87.43.1771829461585;
        Sun, 22 Feb 2026 22:51:01 -0800 (PST)
Received: from xeon ([188.163.112.76])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-389a78b4a45sm13916521fa.13.2026.02.22.22.51.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 22:51:01 -0800 (PST)
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
Subject: [PATCH v3 1/5] ASoC: dt-bindings: nvidia,tegra-audio: document CPCAP CODEC
Date: Mon, 23 Feb 2026 08:50:47 +0200
Message-ID: <20260223065051.13070-2-clamor95@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-267294-lists,devicetree=lfdr.de];
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
X-Rspamd-Queue-Id: 5C07317304D
X-Rspamd-Action: no action

Add dt-binding for CPCAP CODEC.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 .../sound/nvidia,tegra-audio-cpcap.yaml       | 90 +++++++++++++++++++
 1 file changed, 90 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/nvidia,tegra-audio-cpcap.yaml

diff --git a/Documentation/devicetree/bindings/sound/nvidia,tegra-audio-cpcap.yaml b/Documentation/devicetree/bindings/sound/nvidia,tegra-audio-cpcap.yaml
new file mode 100644
index 000000000000..69af2022d0fa
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
+      - pattern: '^motorola,tegra-audio-cpcap(-[a-z0-9]+)+$'
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
+        compatible = "motorola,tegra-audio-cpcap-olympus",
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


