Return-Path: <devicetree+bounces-270451-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YPsiJ+vOpmnHWgAAu9opvQ
	(envelope-from <devicetree+bounces-270451-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 13:07:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 549031EEFE4
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 13:07:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 309D430E0254
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 11:58:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D028C33C532;
	Tue,  3 Mar 2026 11:58:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="ctoNr/v9"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 616F532E121;
	Tue,  3 Mar 2026 11:58:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772539100; cv=none; b=EmrYlRio+LTiaCv9J3SwenWPxZrkZmpcBtUYGRvW3zqUQdT0XiGPMt3Q4tXXdH37e7Dg+iC8AWADatjorSCWQ0fpnoFTjWfoDOFSPI2XPZ2gjV0nDeEfcyhsnyyTHfbNv+PwgQyG6ayucdyDNkwxSSXeqCIjb6MXibDs6OD4Puc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772539100; c=relaxed/simple;
	bh=aODRgbbjQIg8M73gNMETnXa7r/KLRoXLOm+tPuOfZPg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=dZOmG3dnPuX4S9EnYt3J7gJkez5yJdM04ADWT71PcqK/8BmibVw0kpEhsqXp5rMErhjrk9jjIyyuKRSZvQiNFwailToGo8SuOosLYUObEVV5glADssFLTcPkj7QqPNDr3fk4C+PLsce5AWT2rLC20ovmtuWnKQuplbr+lkQ0UWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=ctoNr/v9; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1772539097;
	bh=aODRgbbjQIg8M73gNMETnXa7r/KLRoXLOm+tPuOfZPg=;
	h=From:Date:Subject:To:Cc:From;
	b=ctoNr/v9Re7nFK0WqnA/WyHeUitF2jx6LlM9JXwgMuNA+uMvU/jxUxAz9pdjoqkN7
	 uWHg3qqsgyH5AJ9q1AZgJfU8gfJdeKU/fuF1MY3CsSAGfO1GbupECf1i4qSLASJqlb
	 YYscBZd9yWiyci5hUD1TBt13WKpzut+0vl4bEpqjL3NVpPo0habFYDQpkn8a1QHXzg
	 ytrO2Zdx3UDMp2n44xooSSGEH4C9p/nEPUJGt95/9jnk3mgrCZ/ij3t4Nko7yJl9fr
	 Zk+RxeK3e/cyoz1vEIWLZCIpUtHhg+dsA112PIt/RSFIMTd6+SkcXM8pjUkxZ4aNXF
	 FVAQNMVhb1/Qg==
Received: from yukiji.home (amontpellier-657-1-116-247.w83-113.abo.wanadoo.fr [83.113.51.247])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id A340D17E0454;
	Tue,  3 Mar 2026 12:58:16 +0100 (CET)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Date: Tue, 03 Mar 2026 12:58:05 +0100
Subject: [PATCH] dt-bindings: arm: mediatek: audsys: fix formatting issues
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260303-mtk-audsys-dtbinding-check-warnings-v1-1-e4e1b62f060e@collabora.com>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXNQQ6CMBCF4auQWTumtIlGrmJYDO0IE0LRTkEN4
 e42svze4v0bKCdhhabaIPEqKnMsqE8V+IFizyihGKyxF+OMwymPSEvQr2LIncQgsUc/sB/xTSk
 WKVJNN8umI1dbKE/PxA/5/Cv39nDi11Ji+RihI2X08zRJbqr1ejaYvIV2338WB6WzoQAAAA==
X-Change-ID: 20260303-mtk-audsys-dtbinding-check-warnings-a1a92e0ba312
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Eugen Hristev <eugen.hristev@linaro.org>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, 
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772539096; l=2932;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=aODRgbbjQIg8M73gNMETnXa7r/KLRoXLOm+tPuOfZPg=;
 b=RKhLJsRCHhqkx4Pswn7tNHxP8qIGxM0Xo5xl48hxS+sW6xU52EWeNQe4iGjV6cENkJyVHwvcI
 iW0SClS9hcnCpwozd4yQoWGrPiqHo0o2VLYcunQN9NV4Ase8EXknNsY
X-Developer-Key: i=louisalexis.eyraud@collabora.com; a=ed25519;
 pk=CHFBDB2Kqh4EHc6JIqFn69GhxJJAzc0Zr4e8QxtumuM=
X-Rspamd-Queue-Id: 549031EEFE4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270451-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[louisalexis.eyraud@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

Fix indentation and drop duplicate newline to resolve the following
'make dt_binding_check' warnings:
```
./Documentation/devicetree/bindings/arm/mediatek/mediatek,audsys.yaml:52:2:
  [warning] wrong indentation: expected 2 but found 1 (indentation)
./Documentation/devicetree/bindings/arm/mediatek/mediatek,audsys.yaml:84:1:
  [warning] too many blank lines (2 > 1) (empty-lines)
```

Fixes: a8e3d66ff5c0 ("dt-bindings: arm: mediatek: audsys: Support mt8192-audsys variant")
Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
---
 .../bindings/arm/mediatek/mediatek,audsys.yaml     | 63 +++++++++++-----------
 1 file changed, 31 insertions(+), 32 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,audsys.yaml b/Documentation/devicetree/bindings/arm/mediatek/mediatek,audsys.yaml
index 09a6c16e7e8299c5a271df24f18f7a585046a7c9..9aa39b002361d9f6fbaacae5823b3a811a0043ca 100644
--- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,audsys.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,audsys.yaml
@@ -49,38 +49,37 @@ required:
   - '#clock-cells'
 
 allOf:
- - if:
-     properties:
-       compatible:
-         contains:
-           enum:
-             - mediatek,mt2701-audsys
-             - mediatek,mt7622-audsys
-   then:
-     properties:
-       audio-controller:
-         $ref: /schemas/sound/mediatek,mt2701-audio.yaml#
-
- - if:
-     properties:
-       compatible:
-         contains:
-           const: mediatek,mt8183-audiosys
-   then:
-     properties:
-       audio-controller:
-         $ref: /schemas/sound/mediatek,mt8183-audio.yaml#
-
- - if:
-     properties:
-       compatible:
-         contains:
-           const: mediatek,mt8192-audsys
-   then:
-     properties:
-       audio-controller:
-         $ref: /schemas/sound/mt8192-afe-pcm.yaml#
-
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - mediatek,mt2701-audsys
+              - mediatek,mt7622-audsys
+    then:
+      properties:
+        audio-controller:
+          $ref: /schemas/sound/mediatek,mt2701-audio.yaml#
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: mediatek,mt8183-audiosys
+    then:
+      properties:
+        audio-controller:
+          $ref: /schemas/sound/mediatek,mt8183-audio.yaml#
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: mediatek,mt8192-audsys
+    then:
+      properties:
+        audio-controller:
+          $ref: /schemas/sound/mt8192-afe-pcm.yaml#
 
 additionalProperties: false
 

---
base-commit: 9fad1d148df6f36105159c2503d0ecb1397bc89a
change-id: 20260303-mtk-audsys-dtbinding-check-warnings-a1a92e0ba312

Best regards,
-- 
Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>


