Return-Path: <devicetree+bounces-2064-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A6517A998F
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 20:15:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BA787B20ED4
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 18:15:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 557F81944A;
	Thu, 21 Sep 2023 17:23:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC70A44477
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:23:02 +0000 (UTC)
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E4555A015
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:20:44 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-32155a45957so1249401f8f.0
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:20:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695316843; x=1695921643; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RatweBkvtrU6P41JPdWUfgV+9gxtDS8Z15ua81Y0Obw=;
        b=eE6sZI3aMKxbdBHM9hrVfgyS/t6N+DPRGsMV4jVwFpWcxwdaaIFh6fUqmJ1QfAmOLg
         lpq6R4WSCvU9axY6uS13E8aM2eP+emHWzCUNdqxuoU/kl8ogMj4AAB6Nyf3rSmSyWLRx
         hBXWYM2z8GqWMLx01ppb6sDP/ZqgkgbToWXp5+x4jW56/gDbsbphQKMlJc/lLHh77qy+
         Z+0/O5y5Fb6Ty6aHuZizaKZXyOW3D/OI4XHS3OX8QsvYSpSubZFcCbO+TdehxfH3CX2a
         YbhwAqyDAOds/LFyf2zrEsK1Uz24U7fai7DYOVJmkiQkzHcSnGWlopf7tar+NI4pyWnk
         cxkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695316843; x=1695921643;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RatweBkvtrU6P41JPdWUfgV+9gxtDS8Z15ua81Y0Obw=;
        b=e+sNzaTglSq8t1Zvpnog1R+q8OYoGQ0FLvB3NnbxxKZTCxfo3b1cJ1so1z4lAo/bnI
         zh8eMvOn0SUYqWFkMp0muscmMguoudmrJpfh4OgnwvCvDz++BxkwGjsG2n4OvNGioOrL
         v0v6ISZIW2agH1wHHY8f+KtdgnXQ1T318tZXYzarqAs++1QfCjp+2SZyRW3cEEfALzwa
         WsepOk4Upqz9gHnm8uH5qEDXpDRzEwTqS6tEQ8QsQbpC7O3IshXxtHR9ULFSFBa4Z3wb
         k//YlecpUgaAXCQB/NZasqLybf2v6Obxmsrr1xZWwe1tUM4x6shAo3PqAq4fG7V4mLkA
         LpLw==
X-Gm-Message-State: AOJu0YyAQoakum2CDL+GC/htbp6smpkS2/QdSMN1sofR40w3bbcZwLGv
	NFSzaeVYaP/EBSg9TwFxUFBast3avkJ5Z3n8FeI=
X-Google-Smtp-Source: AGHT+IGSkyWUtvar9ZLWBQZDLiST02yDQZgS7/saoVxYhwoVJNzn3LoyxXtwhZyKoMkQv/KBTVhA0g==
X-Received: by 2002:a17:906:194:b0:9ae:5848:3f8e with SMTP id 20-20020a170906019400b009ae58483f8emr2323416ejb.49.1695306771871;
        Thu, 21 Sep 2023 07:32:51 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id lt12-20020a170906fa8c00b009a219ecbaf1sm1153327ejb.85.2023.09.21.07.32.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Sep 2023 07:32:51 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Thu, 21 Sep 2023 16:32:41 +0200
Subject: [PATCH v5 2/7] arm64: dts: mediatek: add camsys support for mt8365
 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230207-iommu-support-v5-2-fa6f03680832@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1127; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=gpd1qVgLFNytHp6mp3Oxt2b2oXUpJ1x+ZZ2jt7uMt0E=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBlDFQP0sH6dzPgSy2dVGfVl1WaQu1Hm5yWCM/Ma55H
 YHT71FOJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZQxUDwAKCRArRkmdfjHURbmBEA
 CNUoSrRob1rh1wg1N/+dAXP8ugPQkCTciCkJAoV+tvqQOyC/NYqw3bav8ExTwrfk7xCQ8gpE4vrKI3
 DorQIlZWdHiFAyqZSdMC7c8HiDZ3thBPXcLkEfX4FNlbbdCKd9Z310gFzjcTQKew+2QvBrNZomCmM8
 RMBvpn7RJIv/V2DxcTYPSN9pYYtYPoc9buoibKE0BGR86kJPjiWb3zk+MghfR1DfKMTF9xG0Mfvz8g
 fnMxDPAz1JpMWFXelGY2dIE5MBr5lmKt0j/ifEoIIQgCjGmfi4VYvN6E+b2PrmWDx9y9w3YApWrFJY
 4Z6iQgjC/mrZUGcwpbxquRQt7l9bZg+Ry657e9N8jxOhoj5Ng5jZhsPavKxqkpCp6TgJjdl6sg/VbO
 iJdR/OeolrPkH2Ws6s3AAWtTGXae0oyuJHOERcAyroMPRFXqKcBFccDDepqq6kpO9RNdMtdyjB8+c0
 b/BdeXZeORCt9GhWNKB+u6NcVLZ5dn5ZXuYo1r1OkezOtDAyiTPJ36+9h/kD3vsMfnEwa83f1eNACz
 d3r/F9dPCJfFxEzJv6fDNwgJU+ZZWVlalUZCxqFnqwxrgPBqbxyohTTupaRaSSo/UzNR/AvFS7wNDg
 T0MfzOqxQaDhh0E1SpQR5zH4pH+oDYof7B10ofS00iV4qd9G2rWLz06W/kTA==
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

For more detail, ask Mediatek for the MT8365 AIoT application processor
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


