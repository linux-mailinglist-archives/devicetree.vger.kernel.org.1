Return-Path: <devicetree+bounces-281659-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oAXXFJCMxmlELgUAu9opvQ
	(envelope-from <devicetree+bounces-281659-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2026 14:56:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE12345A87
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2026 14:56:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 689733061770
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2026 13:47:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9823D375F8E;
	Fri, 27 Mar 2026 13:47:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="E9Fqpupp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8C543128D9
	for <devicetree@vger.kernel.org>; Fri, 27 Mar 2026 13:47:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774619261; cv=none; b=ldxdzGWXWG3OSybVuAxHjyUusG6tVvY4PHspvaynXn7eIgvV5DyZn1LeCQVDn4kC02Pc3oLESocBW7CkL9vRYlxq80gH9uD+PmG5CxEmtDuJVNI26KMIp4TACQSNMMujns2cEhwB99NSFppjzcVpoIrbG99i529IN3doJy6yWuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774619261; c=relaxed/simple;
	bh=ETu1mxBwykyQb7lRYZO43uSaHPXnM7oaVSiLyiX3Y2Q=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=UX5ev0w94UCVmmdjkT+wZ0G4GqAvyiYrlwnrruMawOc8iGf3rUIDXddQsF7hxApntXTO0qCg1LQAQwJVpHtmh1CVROAlaMcS1H9GSsvni0hUHja39HT8M/3ytU3kF344sPEB3+6ceeFg4GHHY6zqEYEe6MNm0CrM1LM23/vaazs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=E9Fqpupp; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-2aaf43014d0so14520535ad.2
        for <devicetree@vger.kernel.org>; Fri, 27 Mar 2026 06:47:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774619258; x=1775224058; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=no0uujIoaeBaN0lzDrFX2OOJtop28oGgvskS3mBh/+k=;
        b=E9FqpuppDELxNj/zMCzvlADh1wvR3xYIA64/67FvjS3NO+c7tfsqbqijznQIV+4ReJ
         IoAQ3QTQOm+LXr1S8au/U+IkjNFm+f4u2uxSC9KDHD2MeU590SU8oDD9JvtBJy9etXgi
         +bZkU/E1wP90VFpmf4gQ9IgEmfLhvdonwaFRDjm4UmACazNbExWwDtHbAv6H0mPuioSM
         jqxXKRhfMlGUkmmYuRbh6VNq4162uebVdtmKtPMvlKV0eK/Vld7ySFA9XaZaSTxeYfsH
         XrJrdgr9rH5ZQN+YDdyLgSifJYZ0PIBlYv5C6IG1mSVcuJhWvFM6XNsUtSv1UEOE/EWy
         F2Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774619258; x=1775224058;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=no0uujIoaeBaN0lzDrFX2OOJtop28oGgvskS3mBh/+k=;
        b=pj6PMgY1GBDREwPzLVnInkIgpsOMTKHeLDVHhB+0GD4G2KzRXlwg8xNAbIBSXsfOYe
         IAZvP/G3UFBfqOoUMx3Yi8ob8ou4T4fC1Oj5w/ACSOKR52j8umB6xoSiWFxfv9LYIC+I
         z5q8qvpIMYCUJi3mmHWDiN5c/jXdPQZgoYIzMgGhRfT2l4isNp7B2h7QJXoB+ig900t9
         CHSGfq1aJZjqKqvxD0laaxkP2UYi6FhErWMWwy/EViZynXT1VlNHcduYVQUM4wwSc9fM
         9rIbdpi26gS6UqPyLYS9m0kgAf/hvap9cl+uVRZiixoVh6CmMr5hIAqcJnpoIBQxNIFA
         qfyg==
X-Forwarded-Encrypted: i=1; AJvYcCXCgMpKiF8KphjTf5E6c5Nm5FsYarDTZv5Mzxx6XjIhtEVpv27HLkoBkHgOUXf1a5WWjAtLvUBkWeIV@vger.kernel.org
X-Gm-Message-State: AOJu0YyBhulAfUfJ29oTEABo4wKakZFsPEN63FOP4QOtdcJ+MCy/GI5K
	FfeCw5XagA/4I7Ak5p0MdiLJ0zgd1URt1Ne6hbjT6qCXwAfMseqfIcHT
X-Gm-Gg: ATEYQzwc2vvWtXliGnG2RZdS7xFyyhT4qKE9n8XMLCLUegsgPNtR2SM79JEpChZhZG6
	CydU9OAkiGFD9unpOD0HwjYhntn+sudZcbR54ixDGdLp7gdRecDiZ2OEb7MEyVz0kZ7j7y8Yhbe
	qEDo6jNrRX6u096ifw5nmg2MTQhCWW92Nh3F7BKl/ynafRbDQUxnFmwbHaVC1zwKgqsE0P2Q4iF
	Xizuo0n0tA7yextvjz15TpqGbKu2nc49BMnUWohiDXOugQaVvk4go6IgBCA+zDAnmFJ4gCCdUqy
	WREEUZw+HXMqkSIo3q0vaLsQyzKs3PazbhldlWd/h3HHp3jmLk8oSBPhP9o4wF9ZTuAtXuDNFyr
	KL1lU5m4tiZbW2XflYQe2QkPSxbDxm/5P0gEp71W6jQLhj3/+dITa66ONaE9c9HPjNfCRte48rR
	9TRCx6hs39YhKm3f8ndnnQQ+rpBT4l
X-Received: by 2002:a17:903:8cb:b0:2ab:3cba:42fa with SMTP id d9443c01a7336-2b0cdd0555emr28331695ad.46.1774619257719;
        Fri, 27 Mar 2026 06:47:37 -0700 (PDT)
Received: from snowman ([2401:4900:614d:8cb4:a69f:d838:ad5c:7358])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b0bc76b6casm62403545ad.16.2026.03.27.06.47.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Mar 2026 06:47:37 -0700 (PDT)
From: Khushal Chitturi <khushalchitturi@gmail.com>
To: lgirdwood@gmail.com,
	broonie@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	koro.chen@mediatek.com,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Khushal Chitturi <khushalchitturi@gmail.com>
Subject: [PATCH v2] ASoC: dt-bindings: mediatek,mt8173-rt5650-rt5514: convert to DT schema
Date: Fri, 27 Mar 2026 19:16:49 +0530
Message-ID: <20260327134649.31376-1-khushalchitturi@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,collabora.com,mediatek.com,vger.kernel.org,lists.infradead.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-281659-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[khushalchitturi@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mediatek.com:email,devicetree.org:url]
X-Rspamd-Queue-Id: 9EE12345A87
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Convert the Mediatek MT8173 with RT5650 and RT5514 sound card
bindings to DT schema.

Signed-off-by: Khushal Chitturi <khushalchitturi@gmail.com>
---
Changelog:
v1 -> v2:
- Used two separate entries for two phandles.
- corrected positioning of additionalProperties.
- Fixed commit message to match subsystem.

Note:
* This patch is part of the GSoC2026 application process for device tree bindings conversions
* https://github.com/LinuxFoundationGSoC/ProjectIdeas/wiki/GSoC-2026-Device-Tree-Bindings

 .../sound/mediatek,mt8173-rt5650-rt5514.yaml  | 41 +++++++++++++++++++
 .../bindings/sound/mt8173-rt5650-rt5514.txt   | 15 -------
 2 files changed, 41 insertions(+), 15 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sound/mediatek,mt8173-rt5650-rt5514.yaml
 delete mode 100644 Documentation/devicetree/bindings/sound/mt8173-rt5650-rt5514.txt

diff --git a/Documentation/devicetree/bindings/sound/mediatek,mt8173-rt5650-rt5514.yaml b/Documentation/devicetree/bindings/sound/mediatek,mt8173-rt5650-rt5514.yaml
new file mode 100644
index 000000000000..ed698c9ff42b
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/mediatek,mt8173-rt5650-rt5514.yaml
@@ -0,0 +1,41 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/mediatek,mt8173-rt5650-rt5514.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Mediatek MT8173 with RT5650 and RT5514 audio codecs
+
+maintainers:
+  - Koro Chen <koro.chen@mediatek.com>
+
+properties:
+  compatible:
+    const: mediatek,mt8173-rt5650-rt5514
+
+  mediatek,audio-codec:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description: Phandles of rt5650 and rt5514 codecs
+    items:
+      - description: phandle of rt5650 codec
+      - description: phandle of rt5514 codec
+
+  mediatek,platform:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: The phandle of MT8173 ASoC platform.
+
+required:
+  - compatible
+  - mediatek,audio-codec
+  - mediatek,platform
+
+additionalProperties: false
+
+examples:
+  - |
+    sound {
+        compatible = "mediatek,mt8173-rt5650-rt5514";
+        mediatek,audio-codec = <&rt5650>, <&rt5514>;
+        mediatek,platform = <&afe>;
+    };
+...
diff --git a/Documentation/devicetree/bindings/sound/mt8173-rt5650-rt5514.txt b/Documentation/devicetree/bindings/sound/mt8173-rt5650-rt5514.txt
deleted file mode 100644
index e8b3c80c6fff..000000000000
--- a/Documentation/devicetree/bindings/sound/mt8173-rt5650-rt5514.txt
+++ /dev/null
@@ -1,15 +0,0 @@
-MT8173 with RT5650 RT5514 CODECS
-
-Required properties:
-- compatible : "mediatek,mt8173-rt5650-rt5514"
-- mediatek,audio-codec: the phandles of rt5650 and rt5514 codecs
-- mediatek,platform: the phandle of MT8173 ASoC platform
-
-Example:
-
-	sound {
-		compatible = "mediatek,mt8173-rt5650-rt5514";
-		mediatek,audio-codec = <&rt5650 &rt5514>;
-		mediatek,platform = <&afe>;
-	};
-
-- 
2.53.0


