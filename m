Return-Path: <devicetree+bounces-2088-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DAE2F7A99D8
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 20:29:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D6010B20B1F
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 18:29:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8CED20318;
	Thu, 21 Sep 2023 17:26:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357E620307
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:26:31 +0000 (UTC)
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A4AA301F2
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:25:26 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-405361bb94eso8254675e9.0
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:25:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695317124; x=1695921924; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NaqmMPfKXAOtSVjFcLvPHbWm7slgkGY5/ld8VMlAl3Q=;
        b=OSIdBbNMqwK07epsK5dRrBNYFOnYF7KgnSVx+CCxJpzUz3KGu1QM7IWnCS9c6szKUN
         2tlqObCzN4CvJk3w3wpM0FPYOSeBayiBvQXZJznzj2GkEjGb7tgpbMJBcpllf05yWFZp
         cLSOhN80v+jw80D3S28oSXlt5QZBhk+VVj6EDg9+D30wYg7iJrvMQla/8PkJgfYrzthv
         VrnLand1V26/I81WoYdMZEMOSCKXkS9wyKEx22sd1WTK374BtbT/xvdMqC8lsa9f39Wo
         ckHyCcmBETi8Ul155KsxwEb9L6m4z94YP35TA0nvuVSqUH5YYmwyQmmS9VxYAjMBVPaD
         C3MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695317124; x=1695921924;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NaqmMPfKXAOtSVjFcLvPHbWm7slgkGY5/ld8VMlAl3Q=;
        b=i7zc51Oo2MzYbdwpl1gwuNVGaIw7lv+eVAgczrcIlFuLRsyajABlxDAcgWMw+LZ1UM
         hvnMWQWs8nEVnzG8Xsl5cVB+XW9eohWH0TR5cVPgLCVy77uN3M3MNIjCLpPLI8z+vCqG
         JvBRJACUUg8rHWIO2oXo/yq2Jp+uy5hhX9p3LU+nNfF2YeA32IKSCDTbrIZ4HORgipju
         dzkz0VMbi9kt0ooZiq+SWofidNnEN3V136QJYN70XDpB6thTsVuAgsCIBjIWfDJu3+/k
         hgSBeMsABhxNMkt3E4/gvlbOJDZK98Ja1+x0tQKE+bUm38itHuoUKWd3hLO1xGyrkThf
         k1Yg==
X-Gm-Message-State: AOJu0YygRQptC3Su/gVjgIFoCWGk0m0tLVWOUr05N6C7q1FG6xY2PiZU
	MfTDXaagmZyOO5Pgd+oJuu3OTYVfy3yco2HmvkA=
X-Google-Smtp-Source: AGHT+IFaAYDa6Vr0lrCvqGhnr3YcAh06ruBWoq695g+RZk8mUCM1VfhyAsQXvwPJdaNC8FQdqzlkZw==
X-Received: by 2002:a17:906:28d0:b0:9a9:ec12:4832 with SMTP id p16-20020a17090628d000b009a9ec124832mr5144140ejd.41.1695306778831;
        Thu, 21 Sep 2023 07:32:58 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id lt12-20020a170906fa8c00b009a219ecbaf1sm1153327ejb.85.2023.09.21.07.32.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Sep 2023 07:32:58 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Thu, 21 Sep 2023 16:32:46 +0200
Subject: [PATCH v5 7/7] arm64: dts: mediatek: add iommu support for mt8365
 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230207-iommu-support-v5-7-fa6f03680832@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1094; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=9vmrSAYQ/OJGejgymOj9rq18l0jyb8olHnhsKnJiPYw=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBlDFQPl1+LIdPl1L229+UVcYfLca3OCYNM/P0YnuXB
 v4QWDSCJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZQxUDwAKCRArRkmdfjHURQJCEA
 DHuD1i2t/r+Gg3749MClPYGF6EvLT0nqGc30sqhS8plPDlblum+YJR+x5f9yqpboZgb+3sCnX7Zi6E
 d4A/JTQDZ1rL3QYD28iI3zVNVFl765+7QIM/KeVEJ9HThaF0sfXQe2i6Pvsy/IetfSueods9QemGkq
 JT9DTpz6wFf7Ciq57MLgYGvCxDq0zY0AsZ2sJV1mxmQNkfxVfakpoRgiiNmPbNrbzfFEzlLTf3Udp1
 j8iZCsdmO4kQT8oLRzMzepRpIIQNlFo+aWfjq3L/c7Gl5YoE2tgtsRcVt7b8czjJJH4xoMCD+mEHfe
 Pp1LRdwNJGKcOmDuH7Bs2MZTyFOYLWtmQ8Me+Ht9Nkj0P3r0iZTSvBRn7HVSzx9GL/eE3pTDJm/Iac
 s0Kqc/ySTwwbvhJn+a6NqUZaW5pI9szuP6KThc56aZnU8xKbo2b6ROzifjl2eEIqgSsm8tIyrMIMqn
 3mLLqsDL0vBKQdyhw+FjU0V482ifiB0swMjtuzEgQHjc+linbCEBFDWe4LfTnFV+6w0dSWCSaufIXt
 xPedYGgozlvbrJK8TJLdcfHzQYz6qZ+dl3iDu/yWu+MbXuRmXJ7pYgP99wIL+8bEORcE2Mj2J8VzFH
 wJnE5PfTyKrI/9/85Dch7lBPFSwIyjoAa+RochVFwz9nsl36hPVAF/8K5ktg==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add iommu support in the SoC DTS using the 4 local arbiters (LARBs)

Reviewed-by: Yong Wu <yong.wu@mediatek.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt8365.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8365.dtsi b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
index afcfa1dd242e..24581f7410aa 100644
--- a/arch/arm64/boot/dts/mediatek/mt8365.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
@@ -471,6 +471,14 @@ sysirq: interrupt-controller@10200a80 {
 			reg = <0 0x10200a80 0 0x20>;
 		};
 
+		iommu: iommu@10205000 {
+			compatible = "mediatek,mt8365-m4u";
+			reg = <0 0x10205000 0 0x1000>;
+			interrupts = <GIC_SPI 102 IRQ_TYPE_LEVEL_LOW>;
+			mediatek,larbs = <&larb0>, <&larb1>, <&larb2>, <&larb3>;
+			#iommu-cells = <1>;
+		};
+
 		infracfg_nao: infracfg@1020e000 {
 			compatible = "mediatek,mt8365-infracfg", "syscon";
 			reg = <0 0x1020e000 0 0x1000>;

-- 
2.25.1


