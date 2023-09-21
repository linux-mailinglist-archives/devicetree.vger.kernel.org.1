Return-Path: <devicetree+bounces-2070-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C2E7A99B7
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 20:18:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A6BD7B209D9
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 18:18:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B63919472;
	Thu, 21 Sep 2023 17:23:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59FAF44492
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:23:06 +0000 (UTC)
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EAB425B8CA
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:22:06 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-40528376459so12696855e9.3
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:22:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695316925; x=1695921725; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ABe5lag05JGrRRfK6Q7TQU2Nmk4xnwbIxqigvQsoK2A=;
        b=GRVFUqzHaVHbsM0OxeUYPlitKcrQMm0vFHeFNU/wm1Lm/p5Zo/tXQ8V3WiKHiDXxZo
         yvkO/+wg0LkVwxheA/7E5BcB8Q5OdzIGUDjECMVgX92cNZtiA7Ofw4EoNKDS9AIlqFCH
         2QzODM76KirFyBSiiPpl53pc18TTfBcCBtME0gYPbK0iP2B7AJl44ihMeC4WWOQztWZ/
         wFNR/hTalCUG9Ix0azi4E9kMNgllhVaumpwsEykun8LzykqVRIBEAZjd07yLscEM8Yy6
         Qda5T10YSA5LLFUf+5hbe9mX04p+tqCMClD67cgOLizbj1EiFMV0ehxYmD/5q/5c35An
         1yxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695316925; x=1695921725;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ABe5lag05JGrRRfK6Q7TQU2Nmk4xnwbIxqigvQsoK2A=;
        b=fgrp2T6FypgOZ1TEEAS6EPbNRT6+6aXGntwlN82XsxzvkuE9iqlbFbdD9exXU8pDoo
         fkFSbDeXgWfwIJvxjC0oc9klOw2evM6qNE1ze3PV6W42T0lptlXyHkeYeZ0lecBv9GEY
         Sz3sMcj8npWro/ArJDN6iGDTvmlkxTcD6N3VOJ5Ctl+klOgpyp63atVYew1gXK7bGwep
         twC7DKE3Us3kMExdTTkaUiwBtQD0uyoaLSofkhzrE1YjqXK96E1ftx1pTCLA8izf8R5y
         TMZ7bCJLCsYgqFBo4GizwQvlRKeFyhzFYSGhnX1iQp2bsBIcbZLJUET/vhrIu4BmZGQO
         WPEA==
X-Gm-Message-State: AOJu0YydxZmfsiiITLalQSWa8goHSkdi1UMbRr4imCcQkj28okwaZSyf
	WxEOIrqS+55v5jgfBJIueFRWegMcr5RRbqcv9OE=
X-Google-Smtp-Source: AGHT+IGjoyNrvxCOmiRU6T/l2zYW9m8AVBU3LbyVShNlB4GekcqlT9pPNTweRl3dmSDWyO+BQzflag==
X-Received: by 2002:a17:906:20dd:b0:9ad:cb02:275f with SMTP id c29-20020a17090620dd00b009adcb02275fmr5307075ejc.34.1695306773342;
        Thu, 21 Sep 2023 07:32:53 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id lt12-20020a170906fa8c00b009a219ecbaf1sm1153327ejb.85.2023.09.21.07.32.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Sep 2023 07:32:52 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Thu, 21 Sep 2023 16:32:42 +0200
Subject: [PATCH v5 3/7] arm64: dts: mediatek: add apu support for mt8365
 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230207-iommu-support-v5-3-fa6f03680832@baylibre.com>
References: <20230207-iommu-support-v5-0-fa6f03680832@baylibre.com>
In-Reply-To: <20230207-iommu-support-v5-0-fa6f03680832@baylibre.com>
To: Yong Wu <yong.wu@mediatek.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Alexandre Mergnat <amergnat@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1174; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=LNi5XTwnw6k3l6Q87CyTgWzrlVLjaNEqurZKDlk2veo=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBlDFQP6GqJjbLUqKqxj6xy8Bno/ClUvJYLrn3Hmj6Z
 WRq+RVyJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZQxUDwAKCRArRkmdfjHURbzXEA
 CtoPjBUH3xYFYAKUMiNcdHOWrnTKIIVSJ1nCZqaEtp4uzw7YjrnDFm97+Xjuu2+We3fpcQh5rfUhYw
 sPyIKuzpBGukYrCyg1cntaJFnWj7zkuv5tm01rIhDSb9cvfIesD6Wgybc4c9xkvuufeAPSaCeamCUz
 6XKAk8oIdSwhXp2ZJEqjCfb8Jq1tq7XbtAU5EsNDm+YQdBRVmTESdE0p0z4fG12A1RSBoHDQkJ8ijo
 P2fbCbDjkeu6h0xg5dMIFwNbJH2JwCr4DraiG6jZ93u22kqyaC/ROO9iQKJgRR/0YB/pCHHP6cV7/V
 OZkxUkgLQaYd4dbZuxcw+30vhbMp3emKzdz79kYDtRtLJmDOhwD1R9BKAcO02Dbk4iw8XoePlfM4Hp
 qfMoX8zqKIVMWXXawqQUW74VBHelwGLmlFN4xEKBpB7G3q3fOr4zYGaVbddNoBC89lqFldbBxyAzwU
 qOQVRnIGbxtDEk3QP3Sl3fUZQR+naiUGD+2aUFpRP4K0yAOTqKgJQY2qtQPEs69zlj+RUH05ssfKC9
 Pza9sw4vljuxaR3KeKHzgsCsf/jmjP7vyPNPyEzOLyosR3g8gUvKKeiFzPQO6jPCpQrjt4ViZkv2II
 L23fuNQtT5JgfO60FwIvZvGiCWxWkrCQ5kc61MjwKwJmFbVD4HU4D8E6uLEQ==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

AI Processor Unit System (APUSYS) is a highly efficient computing unit
system which is most suitable for AI/CV algorithms. It includes one
programmable AI processor (Cadence VP6) for both AI and CV algorithms,
and an eDMA engine for data movement between external DRAM and VP6
internal memory.

For more detail, ask Mediatek for the MT8365 AIoT application processor
functional specification.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt8365.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8365.dtsi b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
index f9cddce5bd9d..c3ad7cbc89ab 100644
--- a/arch/arm64/boot/dts/mediatek/mt8365.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
@@ -615,6 +615,12 @@ camsys: syscon@15000000 {
 			reg = <0 0x15000000 0 0x1000>;
 			#clock-cells = <1>;
 		};
+
+		apu: syscon@19020000 {
+			compatible = "mediatek,mt8365-apu", "syscon";
+			reg = <0 0x19020000 0 0x1000>;
+			#clock-cells = <1>;
+		};
 	};
 
 	timer {

-- 
2.25.1


