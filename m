Return-Path: <devicetree+bounces-136758-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF95A0618C
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 17:18:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AC0787A066D
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 16:18:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5073200114;
	Wed,  8 Jan 2025 16:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="I1TleJer"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0711FF619
	for <devicetree@vger.kernel.org>; Wed,  8 Jan 2025 16:15:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736352954; cv=none; b=GLcEZyr722GuZTq/ETjQLF65Ar2g8CRlPu36DelBJUtqDBiVGkHInohfPnHSpJispyPmTY6VPqg4ECY7E1JSarqo9bVzZpZap7Q0wNTEfw+kkzHpBQxGy8xlSoLbERrS9aMKFN3mdxrei0WWvidfX6DteIciq4rrub8BrnGYs7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736352954; c=relaxed/simple;
	bh=FQ1WhPXpjYUtDc6OtOLLWvIOFilLCz2YFVE8yhOHTI4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KptV5suw4rL2mwgC3fhY1fCM6XDLwzHn8yeH8X83p/VgPBHD2pDe7Hvsk8MTPshVNTf9RzdIiCmLnDnQNL1KqiZZz0QBv1Q2AdQqDwn+R84L8EylO9Yg51OkQ9G4JjzdgHLpkN6CRtaZWVPq9mP0dnSrJt4vSjoS/fQOSt7eolI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=I1TleJer; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4361b0ec57aso213585e9.0
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2025 08:15:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1736352948; x=1736957748; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IG3hLas3UfTPkozAfYaKba7ObuA6dtQ/tq4NQXQommA=;
        b=I1TleJerJYXhfaJC+lIC4H1DV+szwv1ibdAmc8/w4w4BZx7vLfvUoRsnH+a0fDw3B/
         KKQWWK7w1BazP8UQuf4a+fnzPHGcNmXdDSJVHGk4jdHxkIVaGRd8DjhDqZdOWFN5tuez
         ijTujpP2Y2DgDfcLrGaWAhgYI5GsjC84vmTKM4xHzIqiMRarHloFya6wymfXfVvSDnVk
         b8zKOhdqXhPMOMST45GMQismVLRHvjQ44IvSgzplUOpLuHyTzEx9gfcJUB65u47oBbc8
         cUjgaSlGbxqt382U9kL7Kc5D2E0/W6EEp6hS53XykaBTMJ8AshSTf+1qbU53jx3nq4w4
         +f/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736352948; x=1736957748;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IG3hLas3UfTPkozAfYaKba7ObuA6dtQ/tq4NQXQommA=;
        b=r/zm5MhiS5aX6rk0UgJ+BhEvr4Dsqp815YNUASgbUWZeULs7wEZRhMlOMGy6vy7hBJ
         etA3IjviRv99gRw401qPRHge7TzV24HivfVB5bVgw4imJR+1QtlHGgZZUmpat6KsTx+l
         hv0FxJ9z/pom6Nv/swSANs2ZwelV+IUvS7EuEmidXlAA5IfmppS2xXaZ1MlqI9CPCy1Z
         WaROBucTeNJYBzk+AKLfrsFsybTuZ56NqfHASunnwlApEUZDSAGSaqKj/jmVO36TePMP
         YIfSCN1JALNXkzoPBgZiPxN2IQmUKhtkmZSWh7xb37hoa3Muk1AbYad5q1QKPv97MhHK
         CVWQ==
X-Forwarded-Encrypted: i=1; AJvYcCUpwq9rZKFYCpqAjxJhtTqe+/kAA7QlIr1cD8qAJALlYxQ3v7Fpb3VpDxKqNHXGWzaDNWVH44MW9ZGp@vger.kernel.org
X-Gm-Message-State: AOJu0YwNdtu29nv5nlFDcs272uGmXNV1Nbsu2tU/epSA09JXYJVOm5mX
	1LFT8K7tzaGwTjSeofTTEfs0ge7vcr+bkvEzK+2LT0DT3f69xLiliER5AHZNHrQ=
X-Gm-Gg: ASbGncvrfEiyVLmGoNT4fd7dIjPnZ7UU8hkJ2xA42am/xtCOsuxKuUVLbv6aw9udt5d
	Y57im5kJsPx1p6IRez5hjOcg26VSxI37CRTmmeT+6ZLdU5yeJ3VPsWtEXnsDWSHdiDq5JvL6Xib
	yfhQB7ACKSE/JRCg13doeKSl+iOk9xXnoYXsuX8oNqFD/S/8ORjWDmtP67KL5SgZWdZL6sTUhfS
	ozQMRzqMFTZ7AVwMuaYAH8t1gxJHtJERP4FeEaz5Z+15/NiB36cyIKWkb9T
X-Google-Smtp-Source: AGHT+IGaEwxTWMsJfLtdd1I6PoPqL/PTANFRWph7aumfUnPlCkceeFP4oivIGxhbB8f3iUZetscqaw==
X-Received: by 2002:a05:600c:4ed4:b0:435:330d:de86 with SMTP id 5b1f17b1804b1-436e25620e7mr33395155e9.0.1736352948494;
        Wed, 08 Jan 2025 08:15:48 -0800 (PST)
Received: from [127.0.1.1] ([2a01:e0a:5ee:79d0:a6ac:e6d2:88e3:8ea1])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-436dd14dfcasm44378105e9.1.2025.01.08.08.15.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 08:15:48 -0800 (PST)
From: amergnat@baylibre.com
Date: Wed, 08 Jan 2025 17:15:43 +0100
Subject: [PATCH v5 1/7] dt-bindings: display: mediatek: dpi: add
 power-domains property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-display-support-v5-1-3905f1e4b835@baylibre.com>
References: <20231023-display-support-v5-0-3905f1e4b835@baylibre.com>
In-Reply-To: <20231023-display-support-v5-0-3905f1e4b835@baylibre.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Jitao Shi <jitao.shi@mediatek.com>, CK Hu <ck.hu@mediatek.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Simona Vetter <simona@ffwll.ch>, Simona Vetter <simona.vetter@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Alexandre Mergnat <amergnat@baylibre.com>, 
 Fabien Parent <fparent@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1768; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=3t/5pxgQVWN7RxuofrCRFkP/dHvG8lcvXKXop7859wM=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBnfqSxAVfPOiiIfUU1aZI0sXET3HOzDDreNQ/UVUQf
 9pAs9VaJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZ36ksQAKCRArRkmdfjHURV9eEA
 CfysJK9hX3xkHwEMAwlWyxohxYBetop54h6Gncy4LRniwOmHwaHW5GzckCxFRrulUjXJ8QlWAFaElS
 zuQ4mYO4jWauG1rxAYsPVUmIEmV6gYt9nDspt4oEk1s7XGXtwPDIvMS8hp4hkOoHOtPY/c1KO17ZxN
 Cu5CHlgsPXPtE0mOi4R4Vl56mKR8BxxBtY1H9FlceZDOTC2JsUCcpelsbF0Gvl1er0x+EIpwRGMLms
 dURg+Rl8h7q5FSLBnsFVqce/IhTw8mq6lfNk8+5a4D9uOfgeIqpc7rh1oNa+/I+JEcjf0e9Z2w7dwQ
 X/Fxs/2ALXuK9+uWmIUuKLCmNBzlptr4pK0PeTfSAD5WokQOPnp7Al6+5gF5avoUeUPZ0SqrpRZY8G
 o1OcxhBWiakMhAncV/t1/WtlqTF9qCPmaAhO3mHaGazYrjQuTWCC3aBxkt1S36+mTwypmRA7YRCIOr
 g07kxlvKNxEMck3rqP032ddDR5JU0tQPvBSFLnXZuxcXUvCDwqJzfnPyUHjXfOnD7mYA+5ynXrqKtg
 uvM+O0FAKnJruleQtvWbMs6d6ta6EOqdr+6i+SbqNP1ARB5WeuLQZva2bkGarQdY/G2bOuXE8WVcr9
 LaDL2vMN29vq3jlQJpBtUa5iVa1mV/UuY0tmAVhCV6He7z/gP2JPfQBvepYQ==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

From: Fabien Parent <fparent@baylibre.com>

DPI is part of the display / multimedia block in MediaTek SoCs, and
always have a power-domain (at least in the upstream device-trees).
Add the power-domains property to the binding documentation.

Fixes: 9273cf7d3942 ("dt-bindings: display: mediatek: convert the dpi bindings to yaml")
Signed-off-by: Fabien Parent <fparent@baylibre.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: CK Hu <ck.hu@mediatek.com>
Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
index 0f1e556dc8ef..d3c4942df58f 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
@@ -97,6 +97,9 @@ properties:
       - port@0
       - port@1
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - reg
@@ -116,11 +119,13 @@ examples:
   - |
     #include <dt-bindings/interrupt-controller/arm-gic.h>
     #include <dt-bindings/clock/mt8173-clk.h>
+    #include <dt-bindings/power/mt8173-power.h>
 
     dpi: dpi@1401d000 {
         compatible = "mediatek,mt8173-dpi";
         reg = <0x1401d000 0x1000>;
         interrupts = <GIC_SPI 194 IRQ_TYPE_LEVEL_LOW>;
+        power-domains = <&spm MT8173_POWER_DOMAIN_MM>;
         clocks = <&mmsys CLK_MM_DPI_PIXEL>,
              <&mmsys CLK_MM_DPI_ENGINE>,
              <&apmixedsys CLK_APMIXED_TVDPLL>;

-- 
2.25.1


