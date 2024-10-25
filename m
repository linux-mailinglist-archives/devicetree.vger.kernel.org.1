Return-Path: <devicetree+bounces-115559-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF1B9B0060
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 12:43:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1DF991C20CAA
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 10:43:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 600131DD54B;
	Fri, 25 Oct 2024 10:43:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="g9NgYi+C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79BD21DD0DD
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 10:43:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729853006; cv=none; b=UOCMov7Uekeocy7OY9bnqMAx7ywh0irzEYNNf3PQKEWRStSxUA+NubsooN7FAdXIVqwdsIbatnX8o88321G+/yRVGeytFlutZuH6MZxGoZn+hi/Xc3A7iCvcJWJtIjYQads4FHiQMSpv9oERRtgCkiAtUPbbj5or0nWj4pioKRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729853006; c=relaxed/simple;
	bh=WSwybBvIgG1IpEW2B6Wpf43EoAYTHprR+E28IrEifwQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=svzrRBJAWpskJtN/lqX2HAJscV8AQ3tNHmtkLkmyzGP5tka65gbuaPdSp3JxJjyZoOswbG27xOof6jqWV10e38I44bcm6cPjuivEnNzNtQ9ZhW86btcLvCR63mUOAWdiVCm35LiZxLbOh3HILWvFP/SnnUUUC3qZtyPfFQvrXPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=g9NgYi+C; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-2e2bb1efe78so1243406a91.1
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 03:43:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1729853004; x=1730457804; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KxrytHmxkB3KbKiG8V4DcHZ1mCc5pLP/FlD1m68qCP4=;
        b=g9NgYi+CszGlE5dgv8A0frGL716ftVu2yZqR7iTyJ9ZpeQMu0MrN2Qe+aEyXoIBAEW
         Nel3MSHyQD9xBRendAv8zNKDjCRgdNzm6ekr6z7BW2jP+Jzsqf5fqBUM+imYC8oUY2sp
         EpR3co5oDJttLPG+HnwfO/AMw5vILufo1jw+0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729853004; x=1730457804;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KxrytHmxkB3KbKiG8V4DcHZ1mCc5pLP/FlD1m68qCP4=;
        b=QM/xDo5cGCSZj7lls1VudOP2AX9IJD4vrUtIxyxJw7lssUQB8qBASt+vfeVX9eL1CX
         v+DAxHPSQXl0rrlL98aBMtUvHS+kEquAHDyjpJz14OMImmuBLe2k4N4ZNTV0FiOCtYqV
         dqcmtwAixsqtOTRniqSlQPYSQ8vAWH7+XyBlcDUsvqQW4IbZijF8Oe5xIV2QCSyHY6CX
         ahy8XqUtGQKkHO9yqEdix44YD/h3dAUWNhfxjNczqD/5fF1HUVjnZrchosTO82DddGAU
         NtGdxvNcuxzWkjLzIQAWG+Z029m4+jGQ1zgSeULP22bCcdxy9gznDSakzL5ZxxGEte1X
         oA8A==
X-Forwarded-Encrypted: i=1; AJvYcCWTAIUhEp1UjdCP0N29/6KLK4rEyEBEbJHK4UM3wZx9EhWUEsDP597INDIJmX2Mlbz/JHJdTWXfQGvn@vger.kernel.org
X-Gm-Message-State: AOJu0YyA2z+O6z8XhWczpT7c7BEoPQq8eSUeYd+HQfzhw/oPBxn3UYHH
	0MccHuVJRuNAk+qGviDZ+1cfBWmfzDicbWhi+U6SOCYIpFwFst+mM0M66V9SWQ==
X-Google-Smtp-Source: AGHT+IEc8DWXdGFrPxI2fzHPjMeSAyvo7Jul73y4KLbJM19gxhJsddXsu1xMH6CPalfcWwhWNeu3pg==
X-Received: by 2002:a17:90a:4bc6:b0:2e1:8a41:aaba with SMTP id 98e67ed59e1d1-2e77e88ddfemr7745822a91.19.1729853003888;
        Fri, 25 Oct 2024 03:43:23 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:ebe1:dd63:343d:8a4c])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e8e36a26aasm1093307a91.27.2024.10.25.03.43.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Oct 2024 03:43:23 -0700 (PDT)
From: Fei Shao <fshao@chromium.org>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Cc: Fei Shao <fshao@chromium.org>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Jitao shi <jitao.shi@mediatek.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Maxime Ripard <mripard@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Simona Vetter <simona@ffwll.ch>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH] dt-bindings: display: mediatek: dp: Add #sound-dai-cells property
Date: Fri, 25 Oct 2024 18:42:45 +0800
Message-ID: <20241025104310.1210946-1-fshao@chromium.org>
X-Mailer: git-send-email 2.47.0.163.g1226f6d8fa-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The MediaTek DP hardware supports audio, and the "#sound-dai-cells"
property is required to describe DAI links and audio routing.

Add "#sound-dai-cells" property to the binding and filter out non-DP
compatibles, as MediaTek eDP doesn't support audio.

Signed-off-by: Fei Shao <fshao@chromium.org>
---

 .../bindings/display/mediatek/mediatek,dp.yaml   | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
index 2aef1eb32e11..c05c2b409780 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
@@ -42,6 +42,9 @@ properties:
   interrupts:
     maxItems: 1
 
+  "#sound-dai-cells":
+    const: 0
+
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
     properties:
@@ -87,6 +90,19 @@ required:
 
 additionalProperties: false
 
+allOf:
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
+        "#sound-dai-cells": false
+
 examples:
   - |
     #include <dt-bindings/interrupt-controller/arm-gic.h>
-- 
2.47.0.163.g1226f6d8fa-goog


