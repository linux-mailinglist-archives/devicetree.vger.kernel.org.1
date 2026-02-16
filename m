Return-Path: <devicetree+bounces-265880-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2D+NBfVFk2l83AEAu9opvQ
	(envelope-from <devicetree+bounces-265880-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 17:29:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A68146309
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 17:29:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A87DD3074108
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 16:24:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7A8A332EBA;
	Mon, 16 Feb 2026 16:24:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Mpo2fYGJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D272C0F8C
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 16:24:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771259097; cv=none; b=hrwJz9IWQ+8lVXMFeZxyRywwylRMOVkrzO2wfkr5Be4FGh3njVzZWPN5IhiiRw7mLKERhEF+GGHLhPfJT/5UuCarVTwA8/XHRWSrriZXlqnqXRil6KSaCf22XHJnObFHMzadkTwuGbpVxYLNyV3iVCkdA52FCII4tujDDhiLZZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771259097; c=relaxed/simple;
	bh=SS0rOuGX07LG4ArFwJu40Z8IOao9RBcgTINQVwd9QNU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=P0noOZ5k/4UcbOLXPlpbHgtoE40jbAanqLkTPXAPlJBb7pjVVrDJYF43OTIHFDblFRFD9BOiTRO4u7UZlsiK6SqtFuwQVaeCVMBiZU5m9L4nzUUtp8hCAjBEp2ZZzFC2ca2Kl3jOvqCrhiuFBtEUOfBpk8IzgUuqYMPvtEM9+T4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Mpo2fYGJ; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-436309f1ad7so2752587f8f.3
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 08:24:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771259094; x=1771863894; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sYr4kH26Cd3kQ0Yi5Y6B01aBIxSE1jviWCAWWKW+n5w=;
        b=Mpo2fYGJFUcWbQOOIYkcjo/htmZDA/uBk1b2/gR8NKsPaIgsgPkQKUr9rTGe6pU+hh
         aG/AW/7gTYMhqiwA5zeREYXKj3QmLb2rIoQN743azjQL2DQeEMj1z+qnDg3Mn/ucRatW
         6Pvq2j1B+U9e0VWetLb6YDDTd9vJm4FoLQT8U5RONFT0kg+D7GQZE6S1uKjYZbZLGpht
         fyqEf+H7J41nESmkqzkwy2GpAztn0YBRwhMoTHSGEWUk9WmevyFmX40vslSeQ93w1vPd
         iRcSWvpt9h5P2guUg3HT7/YTR06gc4nnem17EmMEp3Saoes2OwnlK12H3l5SLqwspkD0
         WNWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771259094; x=1771863894;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=sYr4kH26Cd3kQ0Yi5Y6B01aBIxSE1jviWCAWWKW+n5w=;
        b=B8eThb469ZPwV5RRzjIQDMMoN8a2oD9zHM0I9NNT5qAssms8HErDQdkkEzpDKUofPN
         TjbVuDPWrLPUayrRSBTTufBRWBQ+B0FCTxNdxsWbaoTqTSZRghcia3aklymEKVMTg/iF
         Uh8p10p17bmevIuFsDzmHNwKo8EG1faer8B9RXJGmwT8la7xOHaWIOXPNG4n780bM/Yf
         rZ9eryT4hSkEHPULlm9C2oYsCQj3a50fNf0QSIB53EEgZQPzJ/kaO+j6wbd981/NnWdx
         r2J5eVt5fL5eaQ8lwkgu5GSrERryiuE6xWd7Pd+cY4sjEFKmCpWQojLjF2FxQ9wkCz3Y
         WGDQ==
X-Forwarded-Encrypted: i=1; AJvYcCWTKtUFE/DW2X2EO8nnu0sYAQfE5QyUGm4oEtyxyRZv6vT2HY7e2QZaSxtcqBzrdCMru/c+ecealP6v@vger.kernel.org
X-Gm-Message-State: AOJu0YxR3ayaNmkKSnkrtjOs130FOfAe7xhsgjyFcZZ+IE4Wwoi3E52c
	U2bBuILdtVjuEinJDT765tBk0zh7R4S2KREh16AYRq/vvaCyJWE5Yocz
X-Gm-Gg: AZuq6aLfr8CxHswYluK3JYaZPk8ioE8pIwsCMg7W+jFRyK0K8J/yYx5QjTmYmnvSTab
	kbHxnDxF5+oBbkm87WFs57aAIBAMc76+flbrwhwHqS73H3dJrNexUwlrz/V/80Q+5ZPQkZ9MaxW
	tsb2/k2RPXKbElYlk54T63GmWU1XKTO1TSENRZC+xU9rlUY7QALzDRN+9TmNqbmQ/1tnfu+12js
	Bx3LWxHtclRnWiKHaf5MXUK/+nYIRsR9bdBjJx8r6cfxYYYfgZZnr3wcWZgDsEwAqz7hCGgwF53
	ZqfLrPvGv7v8QIC/UEIpBfYpqmApUb9u2e/i4lVxvYbgbdc5pfVVrxMovK2ZIWyYymZV0cD0kBk
	M6yg+3tuy7B79E+GVUxCIY1CeKf9Caq0rVsbr1TLHEJdiGqM7hY4Hy6ug6am7DMY4zN6XoBEZfA
	BLdlLv9Yvrt3E523/LilOTZNZLF7ltxw==
X-Received: by 2002:a5d:64e7:0:b0:437:8f98:8c91 with SMTP id ffacd0b85a97d-4379db34172mr14117696f8f.3.1771259094415;
        Mon, 16 Feb 2026 08:24:54 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796a6a6desm28775962f8f.10.2026.02.16.08.24.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 08:24:54 -0800 (PST)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: linux-mediatek@lists.infradead.org
Cc: Luca Leonardo Scorcia <l.scorcia@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Jitao Shi <jitao.shi@mediatek.com>,
	Fabien Parent <fparent@baylibre.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v2 2/6] dt-bindings: display: mediatek: Add compatibles for MediaTek mt8167
Date: Mon, 16 Feb 2026 16:22:13 +0000
Message-ID: <8f86f229e564723b424b4d621244cfbe158c0f08.1771258407.git.l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1771258407.git.l.scorcia@gmail.com>
References: <cover.1771258407.git.l.scorcia@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-265880-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,oss.qualcomm.com,kernel.org,pengutronix.de,linux.intel.com,suse.de,ffwll.ch,mediatek.com,linaro.org,collabora.com,baylibre.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lscorcia@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 72A68146309
X-Rspamd-Action: no action

Add compatibles for various display-related blocks of MediaTek mt8167.

Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../devicetree/bindings/display/mediatek/mediatek,aal.yaml    | 1 +
 .../devicetree/bindings/display/mediatek/mediatek,ccorr.yaml  | 4 +++-
 .../devicetree/bindings/display/mediatek/mediatek,dither.yaml | 1 +
 .../devicetree/bindings/display/mediatek/mediatek,gamma.yaml  | 1 +
 .../devicetree/bindings/display/mediatek/mediatek,ovl.yaml    | 1 +
 .../devicetree/bindings/display/mediatek/mediatek,rdma.yaml   | 1 +
 .../devicetree/bindings/display/mediatek/mediatek,wdma.yaml   | 4 +++-
 7 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml
index daf90ebb39bf..4bbea72b292a 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml
@@ -33,6 +33,7 @@ properties:
           - enum:
               - mediatek,mt2712-disp-aal
               - mediatek,mt6795-disp-aal
+              - mediatek,mt8167-disp-aal
           - const: mediatek,mt8173-disp-aal
       - items:
           - enum:
diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,ccorr.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,ccorr.yaml
index fca8e7bb0cbc..5c5068128d0c 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,ccorr.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,ccorr.yaml
@@ -25,7 +25,9 @@ properties:
           - mediatek,mt8183-disp-ccorr
           - mediatek,mt8192-disp-ccorr
       - items:
-          - const: mediatek,mt8365-disp-ccorr
+          - enum:
+              - mediatek,mt8167-disp-ccorr
+              - mediatek,mt8365-disp-ccorr
           - const: mediatek,mt8183-disp-ccorr
       - items:
           - enum:
diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dither.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dither.yaml
index abaf27916d13..891c95be15b9 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dither.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dither.yaml
@@ -26,6 +26,7 @@ properties:
           - mediatek,mt8183-disp-dither
       - items:
           - enum:
+              - mediatek,mt8167-disp-dither
               - mediatek,mt8186-disp-dither
               - mediatek,mt8188-disp-dither
               - mediatek,mt8192-disp-dither
diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,gamma.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,gamma.yaml
index 48542dc7e784..ec1054bb06d4 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,gamma.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,gamma.yaml
@@ -28,6 +28,7 @@ properties:
       - items:
           - enum:
               - mediatek,mt6795-disp-gamma
+              - mediatek,mt8167-disp-gamma
           - const: mediatek,mt8173-disp-gamma
       - items:
           - enum:
diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml
index 4f110635afb6..679f731f0f15 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml
@@ -23,6 +23,7 @@ properties:
     oneOf:
       - enum:
           - mediatek,mt2701-disp-ovl
+          - mediatek,mt8167-disp-ovl
           - mediatek,mt8173-disp-ovl
           - mediatek,mt8183-disp-ovl
           - mediatek,mt8192-disp-ovl
diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,rdma.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,rdma.yaml
index 878f676b581f..cb187a95c11e 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,rdma.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,rdma.yaml
@@ -36,6 +36,7 @@ properties:
           - enum:
               - mediatek,mt7623-disp-rdma
               - mediatek,mt2712-disp-rdma
+              - mediatek,mt8167-disp-rdma
           - const: mediatek,mt2701-disp-rdma
       - items:
           - enum:
diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml
index a3a2b71a4523..816841a96133 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml
@@ -24,7 +24,9 @@ properties:
       - enum:
           - mediatek,mt8173-disp-wdma
       - items:
-          - const: mediatek,mt6795-disp-wdma
+          - enum:
+              - mediatek,mt6795-disp-wdma
+              - mediatek,mt8167-disp-wdma
           - const: mediatek,mt8173-disp-wdma
 
   reg:
-- 
2.43.0


