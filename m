Return-Path: <devicetree+bounces-3259-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 11E8E7ADE7C
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 20:17:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id B6BF628138C
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 18:17:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F181224D7;
	Mon, 25 Sep 2023 18:17:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C83B224CE
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 18:17:56 +0000 (UTC)
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3A058E
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 11:17:54 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-99bdcade7fbso845493466b.1
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 11:17:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695665873; x=1696270673; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NaqmMPfKXAOtSVjFcLvPHbWm7slgkGY5/ld8VMlAl3Q=;
        b=tnJRoyTQJM/rLuk2CE0NEqg05Y0re8HYlwjWZff29FQMEk1sFFdH91IXVAR1Bs3j4G
         CNs/XrNwRPml7iXEwJe6jGeUokzFMMK3YoJ7KdUisVSbrAomteolGl7kgQgnFI1XP899
         N6ecAwNuC0jfOXXTv3x682xPYdnePWPMDkCG2jkuWVh+aQxpWqgN1u59VPRXtRTaD1pU
         n63ATV0ciiysEhppB9Nvh4BYNgSV8lv0mSRAAWXC5UV6AmJxkcI7rSp6Sww7pQ8LNLJj
         f5mKsrvNFyMPoUpkr57eVzTHL1UWJw5Lx6Hn4SjLAiyixh7iJVnWEu1SKeqbDiWTJoM4
         aRrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695665873; x=1696270673;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NaqmMPfKXAOtSVjFcLvPHbWm7slgkGY5/ld8VMlAl3Q=;
        b=I0qDdgtcCIue7k9+s9GlhiJKsLjRBsKkD/aJc9wauYdAO4adrBSnhzx6C9xB+PrqNc
         n/6+fz9Xdx6KiSV86RXPpHFkOw6ir6ace+6fmgqn2s69hzPqSoIUo71zsk+ooV1e5R82
         +mGGnp0U83gCVXYv+bagXyiSLQ471gyb9vMAyawDHfwjKwknghI3gA9r+cDTTuirOIaG
         QLl4nGz0TMYAE09+FY4uzC8Ap86KmyET0qLoWlBCLsN+FK6GpU9Ck86pFz8lGNryHEjz
         nMvjodZkoO9qjsvuWF0OR/dJCFR9gslfZXUf//l+BsH+7niH90C8PQaC5auSP8XZqcm5
         dxnA==
X-Gm-Message-State: AOJu0YylB4cEoO/qvQTFGEDYF34U4UfhR1ZjDFiNeM4Ki3B4FNPgcEJ0
	qDMw6QBLnvW2gENU2+5gIV0dHw==
X-Google-Smtp-Source: AGHT+IFxzjt0ed1oiSWTrzfayOWn6SKtv3vQPmnoX8XFg6JSjmVqbuZx+3Y90wckx0OT+kjZeilupQ==
X-Received: by 2002:a17:907:26cb:b0:9ae:513a:528b with SMTP id bp11-20020a17090726cb00b009ae513a528bmr8432278ejc.36.1695665873235;
        Mon, 25 Sep 2023 11:17:53 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id j26-20020a170906831a00b00997d7aa59fasm6793962ejx.14.2023.09.25.11.17.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Sep 2023 11:17:52 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Mon, 25 Sep 2023 20:17:41 +0200
Subject: [PATCH v6 7/7] arm64: dts: mediatek: add iommu support for mt8365
 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230207-iommu-support-v6-7-24453c8625b3@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1094; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=9vmrSAYQ/OJGejgymOj9rq18l0jyb8olHnhsKnJiPYw=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBlEc7Fj1C08D9uWY76sqRpCZwA3sp773KCNObftJqZ
 Fs9XuXGJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZRHOxQAKCRArRkmdfjHURTJHD/
 95xhPf1bWof8l+Jc4t2D0Wyk7Htq4NwdZDFDBUCTIeyyJYjTdPXumlZAMdZI5JCZH1b4axEjdOEXB4
 o5eaGyx6Hm20412uB16q/KxliblLI+mi/FG6cPHCJ8GiuEHWHdzcrH0vLRzr38x72dQKoEWQBVtBHR
 VKPvHuV8KWebyFt+QxFLMeUDfsojemOuJDOL34mnmSufu8XfKLJM3Fs3mv3+6bZya8hvyEZbPWZae6
 orUW1XRiKmtM5NMTTwUlgJDM3uwwKSCm+hCNgvf+UlySjiNGhm3e5olJ4Ss514Jb6y6h1a1pHYgSiD
 WV13451VfZZo0pZ/TWAUPNhtN0ETsF+V+yDD0uS1zYs/l/A42oDSIWX8oLWw1hGiGCnBkL55ZDgRxs
 mUAvzPH2bk2JE/DxKhA6bHLgF9Ho7wNnZcmZwG4uWJXFUd4US5uucRsAAv0USxVEjWxVpVnWLpozbm
 nq3cAm6HnVlYpJCTDB8ArODMbmF+EdYebP+C9bnCaUVY0J9tBkowRBrLpPL+0nA6SE9wmFjKi9cU/i
 peVev0hH+2rLNlTp7tuzz60ob90gVU8rcqjaSgYqEIakXXrksAuAh6H/Uww7vcBJo1dbq3pL7IYDhg
 k3lifliO+iCkTBiZ+KMyiEJ26CUGXcRB061PY/aQ/WyhNLoZqeMbN253uMGw==
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


