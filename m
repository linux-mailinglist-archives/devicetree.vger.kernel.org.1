Return-Path: <devicetree+bounces-2734-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C2FD17AC488
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 20:50:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 7195C281D24
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 18:50:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 767B821114;
	Sat, 23 Sep 2023 18:50:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13AEF33CE
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 18:50:24 +0000 (UTC)
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com [IPv6:2607:f8b0:4864:20::435])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17F16127
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 11:50:24 -0700 (PDT)
Received: by mail-pf1-x435.google.com with SMTP id d2e1a72fcca58-690f2719ab2so978436b3a.0
        for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 11:50:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695495023; x=1696099823; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ieOcH0jhow9JKW3NBm3XuoAJV/LnwQcuJH9Ce97VdYA=;
        b=Qdlbb+9KtisgUGcT25D+bV2yHI/m85p6alBkziuGMHLFfZe2nR1l6L3lVfvJwCAts9
         ihPbAUFwe06nCpA1VtFYIXwQQlYqPRoyArAMFeMa+Kk0BOllChdd7zsWzKcWFmWho6bD
         fVKQBdeIxRGQ1ZpQMdFuY/cBeNqWdqLuqtWsMzaOfqrviRciX/ltFYFVLJdeqXL8+n0W
         /lhLGxBLExQcUw090atmJppUzNcyvu7hsyJDyAAUvVu6IHRtisDfS2RAcDXSQ6WueQ+8
         oUYhOmFMhI6HRBqFTFUVq6CJjuoEaWHoBt8gcERnxnBIWc48OET56cjM5Nhwh2wEbzjW
         lbvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695495023; x=1696099823;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ieOcH0jhow9JKW3NBm3XuoAJV/LnwQcuJH9Ce97VdYA=;
        b=F3OkS+BP4ZHLTbzpr/Gvsn8gT2AgDvfg8aI9U0iA6MACTIKZ17+27PP7ZXSYIYmG9I
         3ozvsjdvpeQI6zmetlK3RuzuLtKqHdR5sJa1WMLgvO4841EVFAKzSPE30YGWFCYQ+cJN
         19ALUPQI5qUTGvRWzcoBULo4rmlYHnHK+o0sEO/FX+h8GAS1qtHBQfzmSJrSuagMzdV6
         A2vO2jJsVivbplN7i1SZsIXkFWS3/xxOdwIK6ztQgZgCDuLPbe9iU6oa5dpULOYA3sRI
         ehZhur2SmQK6Pgnl39VWSqm4avix0u+geaVPz5fmcdkqUhGiUeBwqlAqdJ349iWGTEiw
         DAvg==
X-Gm-Message-State: AOJu0Yxiq5DLUjaA0lWTlsjuqphN8h0hhNYDu2FOXWmIe0ycIe6U7AN8
	i9Gy9U0A7m0tZx5XPoLL2Jk=
X-Google-Smtp-Source: AGHT+IFH2Cz77OqG22GOTrR0YIQosCrZYuY8YRClmEvXXk54yN0zWDi2H2uBCiyv864ZYfZgScJ5YA==
X-Received: by 2002:a05:6a21:32a7:b0:15c:b7bb:2bd9 with SMTP id yt39-20020a056a2132a700b0015cb7bb2bd9mr4053609pzb.6.1695495023476;
        Sat, 23 Sep 2023 11:50:23 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:d8eb:c6dc:fcf8:4b58])
        by smtp.gmail.com with ESMTPSA id 10-20020a17090a19ca00b0026b50d9aee6sm5788788pjj.25.2023.09.23.11.50.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Sep 2023 11:50:22 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linux-imx@nxp.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	xu.yang_2@nxp.com,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH] ARM: dts: imx7ulp: Fix usbphy1 compatible
Date: Sat, 23 Sep 2023 15:50:10 -0300
Message-Id: <20230923185010.584011-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Fabio Estevam <festevam@denx.de>

Per fsl,mxs-usbphy.yaml, fsl,imx7ulp-usbphy is not compatible
with fsl,imx6ul-usbphy.

Remove 'fsl,imx6ul-usbphy' from the compatible string to fix the
following schema warning:

imx7ulp-com.dtb: usb-phy@40350000: compatible: 'oneOf' conditional failed, one must be fixed:
	['fsl,imx7ulp-usbphy', 'fsl,imx6ul-usbphy'] is too long

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/nxp/imx/imx7ulp.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx7ulp.dtsi b/arch/arm/boot/dts/nxp/imx/imx7ulp.dtsi
index b01ddda7bd9e..ac338320ac1d 100644
--- a/arch/arm/boot/dts/nxp/imx/imx7ulp.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx7ulp.dtsi
@@ -209,7 +209,7 @@ usbmisc1: usbmisc@40330200 {
 		};
 
 		usbphy1: usb-phy@40350000 {
-			compatible = "fsl,imx7ulp-usbphy", "fsl,imx6ul-usbphy";
+			compatible = "fsl,imx7ulp-usbphy";
 			reg = <0x40350000 0x1000>;
 			interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&pcc2 IMX7ULP_CLK_USB_PHY>;
-- 
2.34.1


