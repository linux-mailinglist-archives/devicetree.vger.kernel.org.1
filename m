Return-Path: <devicetree+bounces-251106-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 912B1CEEBCE
	for <lists+devicetree@lfdr.de>; Fri, 02 Jan 2026 15:17:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AC165300E02D
	for <lists+devicetree@lfdr.de>; Fri,  2 Jan 2026 14:17:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DACFB1FDE31;
	Fri,  2 Jan 2026 14:17:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Q12sEHC+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f182.google.com (mail-dy1-f182.google.com [74.125.82.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BC89E571
	for <devicetree@vger.kernel.org>; Fri,  2 Jan 2026 14:17:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767363437; cv=none; b=l+imn+m2g7h/1nAuT+gyMJp+tkw5EFVyKAeb3TX7iS4AZLmB3wT2IMdo8TNJ8IxqSNsbxcFwGvMWivlXGzc+lzwTW+qRoyN+Sv/BA+QoqaqbsaasPsUGt9a0+uxfGcCbZZQ/kCPG/dIB/Yz7ccXqHms/t+i1uVVNxrO2tIMhzRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767363437; c=relaxed/simple;
	bh=7aGVUIArfrM3zkuwEfUV3xtiLLCAqnCD/1cSmOHmAwM=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=PuAo1IjJw9Afnh5oniiwQM7XtqwHATdPlAHiydWWiwvM//9kLlMx0jKNvh9WFv/FtiFdpp4NdTohozuF/KzowA+kQbYLzMoAqMZsH/877rZjaM+1aaCFfkbFJ8hltrW7h7nehysPLEuc7Z1vK8NjCYpoBy/4yboSYDQnUS35Xl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Q12sEHC+; arc=none smtp.client-ip=74.125.82.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f182.google.com with SMTP id 5a478bee46e88-2ae24015dc0so11505624eec.1
        for <devicetree@vger.kernel.org>; Fri, 02 Jan 2026 06:17:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767363435; x=1767968235; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=M6JQu04Ya/eThlA1Fh5omtKaI5pVRfLCtH3qPoS+Xq4=;
        b=Q12sEHC+L46NZsW0kDlYT0drcxE1waEoeuwATcexseEuM0RVlhvRCNFem8caXYpe7X
         wXhG9HJavO2a2PLMfvPZJ2nhiPq4SHklPrUps3XWWeyYqYAJSOELjpGB88Mv/ftyxRzA
         a0f8e3EC1XTYLbvg8cSLTRCY4efdviq+MVeb9/Nhs/QaxBAd+ahDyLQZPZQQ6t1e1bCw
         FFjgkF156hVmB5kVaAaofwmXqCH/w5eddaVf5lDBJN2lhzX1rWrdkQuzYN0bJ/W+26jt
         VGR9GDE3Vlf+NJ1fb6D6yG6ckHs8wU50q2R7ArSxQQeFmO7hb1qXCCVajz1x1yLevqsc
         ZQqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767363435; x=1767968235;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M6JQu04Ya/eThlA1Fh5omtKaI5pVRfLCtH3qPoS+Xq4=;
        b=PNiuJxGX6892ttmgTvqDfQxOah0XQua/jo6luSPjcjSUqifFAYRKIV1KcTsD+3293g
         fGkLNNvsUJOC0VkZ9QASXjgfIU/wV4Yb/+y/knwOMa5eBbXgM/855H4XwRwv1cuU4ahz
         RGFZAzIF5i+KH6Atl6t4LrfLV8zcufy0CbSM0XQKSyjMENjm8VAkCjNSu2j4bqntyBbT
         1r4m4qzEpTBl5G1DkAL567I9WUzj7lz5X6xR5OF3SrwOtgQg1rQs8QIE2heKAZIGuBVm
         ZAsQziRZkw3DGZZIFvhhxLGSfJFu5o7Oqh99R/iYsA9mRO8ZKv42oO+lHyyKi9B/VH37
         KGeA==
X-Forwarded-Encrypted: i=1; AJvYcCWBRnukynnzbofyALjzu6R4kUMIKU4J1JHKwJRi1hkzGDG7YczkrpsXF4Ggw1tFubtRoMmmsRwJNS1y@vger.kernel.org
X-Gm-Message-State: AOJu0Yxql10x4QvxbEO0ijDXInwDmZMwu6J9EaaLhoyzJCG+mkHgLu31
	Rf4PrwfdE2minwmLCdk7mHL6fy5RjliWLrP/6JhcdPnbNBkPpWy046/V
X-Gm-Gg: AY/fxX52XDLeW5g4m1faRaaoA/w/ghr8Za5k+3fL1xInXK+u4H708bPw8pnequEicWe
	f1+1fosNeoGYA7AavQufSjLMvcV0RsMI+EDOXG6Xuz/ystMshc8l8iX4W8bJWPKt3xXmWHan6aJ
	CuzP9WJO2xr5W3ildmhuOlXJ40SxsaZuDcW8FRWksMjADeVjVkDqDR8uUH+kACuq5aEmRsVwCA1
	rCTahAH3pWr4Lhp7HjgEGELW6JdqCGvEC+EUqRUk50zoAKL/RsGQejyWm7jfqpItY3f3IOP2xIp
	zLrShDnbce8+5axVpRYLq9M817B8LIeBqXJ17V7tjVyTdMflmxrQWi/Dx++ZsnULuRdxUVez+I3
	iqt+OvCU0kUoL6GWDnlp3YE+quu/gHy3em9ZwD7xUUe5BKh/qqvQcNnhi/a9FqzL0imsKto8v+G
	yw8ePbzhjvOTRlk3bk9BLZpl0=
X-Google-Smtp-Source: AGHT+IHRbwHKS1jnctTSLGEsxcB++H91ndItbrx0Rlhh25Za0CVwv3MWEfAnrIj2LVHXsV3dEr2p2w==
X-Received: by 2002:a05:7300:f68b:b0:2ab:9d23:f0b1 with SMTP id 5a478bee46e88-2b04cbcb383mr26238952eec.13.1767363435158;
        Fri, 02 Jan 2026 06:17:15 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:388a:7a66:ea1:ff85])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b140c42ea3sm840356eec.29.2026.01.02.06.17.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Jan 2026 06:17:14 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: neil.armstrong@linaro.org
Cc: dri-devel@lists.freedesktop.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH v2 1/2] dt-bindings: display: simple: Add Innolux G150XGE-L05 panel
Date: Fri,  2 Jan 2026 11:17:05 -0300
Message-Id: <20260102141706.36842-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@nabladev.com>

Add Innolux G150XGE-L05 15.0" TFT 1024x768 LVDS panel compatible string.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
Changes since v1:
- Keep the entries sorted. (Krzysztof)

 .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index fc244fbb5a54..2a1c616aac9b 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -178,6 +178,8 @@ properties:
       - innolux,g121x1-l03
         # Innolux Corporation 12.1" G121XCE-L01 XGA (1024x768) TFT LCD panel
       - innolux,g121xce-l01
+        # InnoLux 15.0" G150XGE-L05 XGA (1024x768) TFT LCD panel
+      - innolux,g150xge-l05
         # InnoLux 15.6" FHD (1920x1080) TFT LCD panel
       - innolux,g156hce-l01
         # InnoLux 13.3" FHD (1920x1080) TFT LCD panel
-- 
2.34.1


