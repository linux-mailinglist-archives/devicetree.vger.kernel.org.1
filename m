Return-Path: <devicetree+bounces-3254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C94817ADE77
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 20:17:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 0BFF3281381
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 18:17:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8A83224D6;
	Mon, 25 Sep 2023 18:17:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43911107B8
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 18:17:48 +0000 (UTC)
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8CB7B8E
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 11:17:47 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-9b281a2aa94so302519566b.2
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 11:17:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695665866; x=1696270666; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9ru/MdFcC19oEZdBkk7TP7Nyhe6O+16jZBwSrBv3JVY=;
        b=2HcN/DGQ4/o8xCTifIWnH1JhNVHamcJOJGJn18rceLIeHDnA6gHi9Xn3nusiLgg88z
         kaZJZ4YlZFE0Tqy3+DWweYpgmKoPqaODQAmJT+rkXts5BAWbX0RZ6vO1+ns5Q4RVOYLB
         f/5jPQs50FobN9JknyeVjMrQFQlA5yYyFfo9VOCv05adD7D9YM4T19gkMHUOIbPiiiLN
         AavO0eM0YUitYoCke8tmdNnXjts2afne88UeoUvf3Wi1kCbOkePo9f8dX6rrS24EvJuM
         gTt6w0z9l1vTa8Ue+E5fxbFZPwfwYoYiIjP5DLLP5km101KR7jIdzXFn7DeygPogJpWM
         +FgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695665866; x=1696270666;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9ru/MdFcC19oEZdBkk7TP7Nyhe6O+16jZBwSrBv3JVY=;
        b=Iw0OeWyaDXU34+zbk3L6j5Gq+ZuKMpK4OKYHhGj+odx/6TRci5XDjkxkQZthflIrxi
         zM2DT7c1/3nc6peghyTiYcOIoLSTABorZTRDt5UkPrFrmBasn8+Kzky9U+vEx6pYIoOr
         QuclL8NcemeTIZpt4sCR7pQj/0dwBwi1/PZU8bwL0czO9+jRFVDD5t0e2do0JCDd2cDJ
         B4j3wts/1C/ZlVNTuEDdyIqQwV7F/ajIfcfbvoMKpSjXs96i5lkEcHC3bgrwm/eG/ZIU
         HcwumhmT8GhrjgpFVviNTaFFxIfYjZb596vIOnhHPjUwBoP6BwG6vV9JJvunKBGLq551
         QhtA==
X-Gm-Message-State: AOJu0Yx7L2h6OvROlk4XLTcDNtQBiko7z3kdY+8BcqbFBOEvVI+EDMgc
	obss7IvDqjGEr7CPkTAXjcDzAL+xmFMEr5CSY84=
X-Google-Smtp-Source: AGHT+IHGP5tHvdelrtnH/VblVMJTWJ0HstjyNqWVh7KRRITlIZNsm6r9NPQRTYI0sF9q2peBjRhBHg==
X-Received: by 2002:a17:906:8b:b0:9a2:474:4aa0 with SMTP id 11-20020a170906008b00b009a204744aa0mr6854027ejc.48.1695665865822;
        Mon, 25 Sep 2023 11:17:45 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id j26-20020a170906831a00b00997d7aa59fasm6793962ejx.14.2023.09.25.11.17.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Sep 2023 11:17:45 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Mon, 25 Sep 2023 20:17:36 +0200
Subject: [PATCH v6 2/7] arm64: dts: mediatek: add camsys support for mt8365
 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230207-iommu-support-v6-2-24453c8625b3@baylibre.com>
References: <20230207-iommu-support-v6-0-24453c8625b3@baylibre.com>
In-Reply-To: <20230207-iommu-support-v6-0-24453c8625b3@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1126; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=Lk6qSks1FWZtF7N0V2O1kU7gpoVtoT/NLAYxbDBGin0=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBlEc7FC2MRtrQZWUwmVtFlhUOQbXLAvvGEUpOZLh/U
 6M5lCGiJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZRHOxQAKCRArRkmdfjHURdCZD/
 9ufYH/c6b4zcV+X9wOd10BpsBn386LElzmNxHU7oHBraV7lvrDcSEPAnobUSFN8FMlXXl+74YOgV9g
 TIFRuEFIjHJSnR8p3bLlObNC4WYAhQbNk1wSrGT+AuY8AXPq9a88xBoWBlipOGYocbrlrK6yfsAHsV
 D9XftEKtH72m2MHxP+zPcIMlRCcOVemuwX74sWCIA/K4QgHVFpxrGYgcBbBreMbObA/SsVmV7y0BnD
 8uz0hm0ImK6jFjvQAU28ks1ewKZc79K2DfWBPHU7r7v7K4G/cQ2yTqOoM+yaY3BgWVeywtbVPVi3Ke
 6lnoudCNW/D1BxtLWCQgZJyz438o6+Gz7RVc7o6rzam3pa5bMTprZ+ir1/giQjqcO58e2fQtmxd9/b
 D+gRtfikktXS2tQ5mC+MDo5JpINx4UUvxv8VSVj/pjbbsyyHdonKv/X/T1GApJVWy5LRq39DqwJ06Q
 z9argNbzVuBLUUkoOKLvqNgd/iN3CXzrvWznOluPH1ptwFgmY4wdvYG0Rm7cfI3PLXH9inRUIGWrH+
 ArnbifQa9yXLWoKo5xvNLqUoRzvf/LS2ysO7gswHvVpYSmnL4LxccZbZIJh9Ox8muDT30E4d8vTZ8i
 lUxBc4LxYlZrCYa07VgApwqM7xnun3a8JvSJF3w8qutpafLy1+Dn+GvoNKBg==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Camera System (CamSys) incorporates an enhanced feature based image
signal processor to connect a variety of image sensor components. This
processor consists of timing generated unit (TG), lens/sensor
compensation unit and image process unit.

For more detail, ask Mediatek for the MT8365 IoT application processor
functional specification.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt8365.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8365.dtsi b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
index bcabc2b89a94..f9cddce5bd9d 100644
--- a/arch/arm64/boot/dts/mediatek/mt8365.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
@@ -609,6 +609,12 @@ mmsys: syscon@14000000 {
 			reg = <0 0x14000000 0 0x1000>;
 			#clock-cells = <1>;
 		};
+
+		camsys: syscon@15000000 {
+			compatible = "mediatek,mt8365-imgsys", "syscon";
+			reg = <0 0x15000000 0 0x1000>;
+			#clock-cells = <1>;
+		};
 	};
 
 	timer {

-- 
2.25.1


