Return-Path: <devicetree+bounces-118989-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F9739BC88A
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 10:02:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 49A451C21B14
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 09:02:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 161D71C3025;
	Tue,  5 Nov 2024 09:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="lfAbIuLM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BFA91AC429
	for <devicetree@vger.kernel.org>; Tue,  5 Nov 2024 09:02:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730797353; cv=none; b=ZuoeQyq7gVcDvbs9zRgmrobhQTWBjtS9oUNgIBYWthJRhzX3kSqLowPG0eXFUNP5OHeoKb/I6t2aRe2Wys2T6FHubcKPKHJfVKNCpJLCGphZRhAUb08pYOC2vkIcZnlqyGvTSoM9VPLn3zzYQeLh96O+c65NoQymi8eM8Lg6ni0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730797353; c=relaxed/simple;
	bh=2OIjhOvK0YgKLi/tF0dBv4b3uZZAtdgXIgXmLx0oIBE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=jNaTX8PbUc+ife1hnlCNzuKudcPexo/XPNzYoOZc5cawc0shFVYQ64nLCzOrQ6UUWyCL+tPRnz76RNnWWMdFj/diSBZ0SvugjmSdsh98AJ8CkBfUSjnL1Mzuc0rjwt2xCNHMLLEsqaPvPQkoVIqO4yMp8I6j3mKj+rI0qDTtTpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=lfAbIuLM; arc=none smtp.client-ip=209.85.215.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-7e6cbf6cd1dso3493375a12.3
        for <devicetree@vger.kernel.org>; Tue, 05 Nov 2024 01:02:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1730797351; x=1731402151; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=djQbbob5DRcgyzgtrmCeJK9wCGVRn3M70o+CkFeCAc0=;
        b=lfAbIuLMez58szFNGFy95fnf0YLPIjAg5Sl1tNV9T9p8ltVRehRWGOnS6b8lw86V4H
         9KSDhFwTpPmHrKhlvkUMN04V3ifVOtdVMREjRooXBQJtCGpSGAxbe21CbL+JGS8/wa2G
         0Y9kHBBQm+jBGF9P2DJDnlo8ajX9f8olxACsQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730797351; x=1731402151;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=djQbbob5DRcgyzgtrmCeJK9wCGVRn3M70o+CkFeCAc0=;
        b=FXDOH+iYpHgnYnbt3OKH347tvhCvBXkvSjZJhD5Bj5D1q2g1cnXlmJyypvk1+sEQJA
         N2KmoeuqWOWdIfgATKG4iNFeg07Gf2PvHVlepzmRXzDYPyEhRAPZ0wfLDTZ1Ly4rMRg+
         U2Cl+bjModVNlGGQ3PrTYauMJvsSbji5VQ41NI+F2PT2klZzww77N7GwIcFbet9n0TkW
         Ye6XG008OMP6KqYEmq/4ZTGCtLynYAhM3PheV7eHX+ttlUFkx/7nSzhP8no3PhyYHBm9
         EC30v8krzMMeCr82QR1oIRvan22yOQJf6zkeP79/VPiyF1eRuyLcjaFUbS3r0YX4oQyH
         gfmw==
X-Forwarded-Encrypted: i=1; AJvYcCUkOJLUi6U1Y0PPPt7vQjgxErQSm3DDYvOft4/o6vfV10b2PtxCyo7q5RcF6w2t9dZ3rmIyfBn42b5a@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0RbfY5eGMKVo9j9hNshbX4bFKgNwBBUrdQDAwkpeRI63L6GTC
	VRv2zDtA/JY5L8K4zYc56CC8qNqB0wEMZ7jCxT5sqM5wW+JvRRtJxtfGJKAZBw==
X-Google-Smtp-Source: AGHT+IH1k+zMqS05NS5QvavH+ykcILKALPqruVdecenHRtfW6dG9qXj72cxb37tXkc0AOy3qeQYb5g==
X-Received: by 2002:a17:90a:bc87:b0:2d3:da6d:8330 with SMTP id 98e67ed59e1d1-2e92ce32e36mr25501301a91.4.1730797350795;
        Tue, 05 Nov 2024 01:02:30 -0800 (PST)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:20ee:3712:ce0b:1ed7])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2110570ad54sm72591315ad.111.2024.11.05.01.02.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Nov 2024 01:02:30 -0800 (PST)
From: Fei Shao <fshao@chromium.org>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Cc: Fei Shao <fshao@chromium.org>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v2] dt-bindings: display: mediatek: dp: Reference common DAI properties
Date: Tue,  5 Nov 2024 17:00:28 +0800
Message-ID: <20241105090207.3892242-1-fshao@chromium.org>
X-Mailer: git-send-email 2.47.0.277.g8800431eea-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The MediaTek DP hardware supports audio and exposes a DAI, so the
'#sound-dai-cells' property is needed for describing the DAI links.

Reference the dai-common.yaml schema to allow '#sound-dai-cells' to be
used, and filter out non-DP compatibles as MediaTek eDP in the same
binding doesn't support audio.

This fixes dtbs_check error:
  '#sound-dai-cells' does not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Fei Shao <fshao@chromium.org>
---

Changes in v2:
- reference to dai-common.yaml since the hardware exposes DAI
  and update to `unevaluatedProperties: false`
- update commit message

 .../display/mediatek/mediatek,dp.yaml         | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
index 2aef1eb32e11..75ce92f4a5fd 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
@@ -42,6 +42,9 @@ properties:
   interrupts:
     maxItems: 1
 
+  '#sound-dai-cells':
+    const: 0
+
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
     properties:
@@ -85,7 +88,21 @@ required:
   - ports
   - max-linkrate-mhz
 
-additionalProperties: false
+allOf:
+  - $ref: /schemas/sound/dai-common.yaml#
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              enum:
+                - mediatek,mt8188-dp-tx
+                - mediatek,mt8195-dp-tx
+    then:
+      properties:
+        '#sound-dai-cells': false
+
+unevaluatedProperties: false
 
 examples:
   - |
-- 
2.47.0.277.g8800431eea-goog


