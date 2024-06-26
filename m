Return-Path: <devicetree+bounces-80129-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D1AC917D5E
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 12:11:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E2865281371
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 10:11:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A50917DE21;
	Wed, 26 Jun 2024 10:10:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="t5JlQ01y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com [209.85.166.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A41E17BB2B
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 10:10:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719396619; cv=none; b=qPZIA1pCYqz8ux0XHOMT+7X9j62LwGRSKZ8ZHEblvRTHyl5vTXpySfKi2OyrRvyljlpCfmOJ3/GXXhG3xoMGB6ICZpdrxMYcgwUtw51QvRgeNRc22p9PoTEvefPo9uHxwU4R5yMULWoO0b06fLSqE+WgoLfD3PtxxpoIYNWo5lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719396619; c=relaxed/simple;
	bh=lJ28Y3M24JoUrkT0kfRU9mVaVheUptQt841EFO3wEWg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cLtlpuo1ilfwYZCT8n6Dvz63yivFGb8kErXjCtC+ORN05EC3JdCKvdbXxqPSTwr4qxLVudiEW+KkFIQIFFjr+vEob2pE885CMLhEehuqJdXHFjAs3zZeDPWIdereyNNcg7MRNu/kSbWfd8F5k7vHi/78LRtbvVPJ3Z6GmYdcFmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=t5JlQ01y; arc=none smtp.client-ip=209.85.166.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-io1-f50.google.com with SMTP id ca18e2360f4ac-7f3ca6869e8so40157839f.3
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 03:10:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719396617; x=1720001417; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=59XlO8N85CHKMZTE14dutfLqTOocIO6QaYNJIqLDR0E=;
        b=t5JlQ01yC4ulYu5wrmWGtSHVJXcdNS6LJDwbB5dWm+H5Mcd8W7gNrM23QFdKPLTq/9
         X2wnUZUqgZ2HAw3P/gqs4ZkCz9Q+xoyDYsZfO32t6PT4OtyAiUGeHDSW2BnCBBVlhQDA
         wBAMMcQUnJEAjXifrP6WA+eRpvaownpckTFhu3h6Dl/knZLydDRX/mZHapHK+Majyk0H
         HhOz2EFlzzkiDOOw4+DTHzASrFlzJXbwdl9gojI1gKX0xaPwfmnWMXm9ayygo1MOwlN1
         iIGxW1caJKax0ZmrFGtVPBZl0VLhgyU6G7aIxqhmgGwF9ry6c9sTOcvYMsLIj9yxNR07
         x6yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719396617; x=1720001417;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=59XlO8N85CHKMZTE14dutfLqTOocIO6QaYNJIqLDR0E=;
        b=FqDusOjwIWDZWQTnvrNiOa6HngbK5M759XigOZMYNskLczp6rcAXrDj6oZ5DGgnrrU
         A8r880CpvlzBvk2HlxFEIhkmBkmYDaxu4AsQfQT6QI1VO5/CgZkuOPd0SYqfA1ymuaYq
         pDPJqJRjGwISS6JIorwNP1n2WQHkQSLfNZo2qCHgEA98f6Wtsfy8ya+wNILPt641aLhS
         LiSfZwDt66WZTY/Y2St3o9aCVFIP+jFNXb41Te2R9a9sMcTWDazm5JCxuS9bO2utKSgH
         L5I9vc9L0cCF7sGwBGxz0nYkfTlzd92r4diyYB2yQwDQkqIQHcLOXhAGoNQe8kRQjZOV
         X2yw==
X-Forwarded-Encrypted: i=1; AJvYcCXNhm7gCSi9xqM4ZBDYZmrSUOylA3suEbei0KWYwYoqzKlLmztNNUhrkugkddTezOMqGBbWV7XUwUDhsvs2YKSLPkdPhk2pr0BLqg==
X-Gm-Message-State: AOJu0Yyc9NfALNGp4N/HYdScVa7yC2nv7FbKuqnPQQxYz7V7rIlzfcCw
	MwW33G8HTMY485FbgFurOsCgyCGlXDyUg3xxvkuJPdHWDuDclKLGmTrLcpxqdh4=
X-Google-Smtp-Source: AGHT+IH5jBZh+2gfhC53GuIZJ8jCOVDi3reMK55I7AmQ0e+4wBYPfNvgxYCPjk0H5YJl3LjlcD09vQ==
X-Received: by 2002:a05:6602:1549:b0:7eb:776f:d970 with SMTP id ca18e2360f4ac-7f3a75d95e8mr1114379739f.14.1719396617514;
        Wed, 26 Jun 2024 03:10:17 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4b9d121859csm3079108173.137.2024.06.26.03.10.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jun 2024 03:10:17 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Wed, 26 Jun 2024 12:09:16 +0200
Subject: [PATCH v3 7/7] dt-bindings: mfd: syscon: Add APM poweroff mailbox
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240626-dt-bindings-mfd-syscon-split-v3-7-3409903bb99b@linaro.org>
References: <20240626-dt-bindings-mfd-syscon-split-v3-0-3409903bb99b@linaro.org>
In-Reply-To: <20240626-dt-bindings-mfd-syscon-split-v3-0-3409903bb99b@linaro.org>
To: Orson Zhai <orsonzhai@gmail.com>, 
 Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Chunyan Zhang <zhang.lyra@gmail.com>, Jacky Huang <ychuang3@nuvoton.com>, 
 Shan-Chun Hung <schung@nuvoton.com>, 
 Khuong Dinh <khuong@os.amperecomputing.com>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chuanhua Lei <lchuanhua@maxlinear.com>, 
 Rahul Tanwar <rtanwar@maxlinear.com>, 
 Lars Povlsen <lars.povlsen@microchip.com>, 
 Steen Hegelund <Steen.Hegelund@microchip.com>, 
 Daniel Machon <daniel.machon@microchip.com>, UNGLinuxDriver@microchip.com, 
 Nishanth Menon <nm@ti.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Jiaxun Yang <jiaxun.yang@flygoat.com>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1201;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=lJ28Y3M24JoUrkT0kfRU9mVaVheUptQt841EFO3wEWg=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBme+jTtrYuM01hjhHqNdEtBumYFIQAj1hCW6QmI
 qkgn/4bVjuJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZnvo0wAKCRDBN2bmhouD
 13oED/4w11Sz6XcfEYcb7aCh448tvr/mT1uzJWylaAQ7h0adW5pLvYy6V8VNcH50TcOFSNz8pKb
 mP+/8qYde/sPaCx26zuPBwf9DyMvVP20grTsTmieBrx8cBd7TaJxf8ZNnl8XOzIcdrqmhaPU+Pv
 MKiUdtVS6Vnj1c8jAj33lufxbePDWl8Ec2kE6cgwtSAj5f9p6cEgfVqA9LnXMpT3VLwt8hluNJ3
 ji1uiFDP2y0D4g6B6arahRnZw+GbNbx8LnjhOs8MIx5OEHYjifdnUCmLL+vs8BQc8NmXNvFUR9a
 O+HUnsCoVL7GMidD69z8RjZ6whWaLHuAp39caMXOLCrE5lopNm5bW+QPpQA2RjVEPPV4waQvzvu
 pnnLbom9fpB8aHVH7zTTqw6AEKFK/uphsxA+9X9MkHAQrsIKPBlali7VxEMAxImoWa7ysFU3Js0
 AsqI8MYxIjz1O5N8PugktWFU6vpSaRy8BvLkt9xlcux2+ln3EQHLzhBysHYX2vejfxON9tZVp/f
 SRV3pAPTp0rNPsfS0McAkplHYhkuDsiQJpL61gURK6MI7mMJCWFVMz7Kcrvk6/DhOH75asCYxdv
 WV8AqbpzacSECz3Vvdf2gb3rIEabhrJZVkJnCko5Qbl0IGYl0XiqRk/i2h1ubOh86X4ofL9PB9C
 Jy0rzXiiGk3H+HQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Add compatible for an already used syscon poweroff/mailbox block in APM.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/mfd/syscon.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index d4e9533cf3fe..70e3a4465b4f 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -41,6 +41,8 @@ select:
           - amlogic,meson8b-analog-top
           - amlogic,meson8-pmu
           - amlogic,meson8b-pmu
+          - apm,merlin-poweroff-mailbox
+          - apm,mustang-poweroff-mailbox
           - apm,xgene-csw
           - apm,xgene-efuse
           - apm,xgene-mcb
@@ -133,6 +135,8 @@ properties:
           - amlogic,meson8b-analog-top
           - amlogic,meson8-pmu
           - amlogic,meson8b-pmu
+          - apm,merlin-poweroff-mailbox
+          - apm,mustang-poweroff-mailbox
           - apm,xgene-csw
           - apm,xgene-efuse
           - apm,xgene-mcb

-- 
2.43.0


