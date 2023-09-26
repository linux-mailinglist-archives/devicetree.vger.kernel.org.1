Return-Path: <devicetree+bounces-3429-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DC5CD7AECE0
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 14:30:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 26F24B20997
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 12:30:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A0A712B9B;
	Tue, 26 Sep 2023 12:30:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C4A27EE3
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 12:30:44 +0000 (UTC)
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com [IPv6:2607:f8b0:4864:20::52b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46EBF12A
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 05:30:41 -0700 (PDT)
Received: by mail-pg1-x52b.google.com with SMTP id 41be03b00d2f7-578ec80c81aso512494a12.0
        for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 05:30:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695731440; x=1696336240; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OY+AqgCH9AaVGBNkfjAG5RJywNWBgt6pzrdZ0oy6tE8=;
        b=nRGwm8q+Zzm3hXzGzBsWpmjiGm41EiXQShVAH1YH3Wx9kcXtKP+nqPHc5GJMR0yNU4
         oNI8hVEPn0Elyid1mF2eOowH2LT0+LgUu8wBre1W/VkOi0FPy2Pqu9KgsW7ZrdOFt2vd
         GO0Hm2//dI6OgT8j2EL5Q2yqnEMtQpBsOlMx4jjroSwlygq8VbtGpNMgXcHKe8QAu4lb
         vLgSiHOf5LdP7C0s9T3NAAvVsUq4cK0ZOzopyMbkp5t2PxiPI4S1j5kiCv9/X/PUOCl7
         jZbgj+BMQFWVsErMlndIEqORBfZJfLE0eFnPcEpGhQaBBCKGCq5mX1zUhtGCyQPoYYNv
         1b3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695731440; x=1696336240;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OY+AqgCH9AaVGBNkfjAG5RJywNWBgt6pzrdZ0oy6tE8=;
        b=hRMx8YHaBT3mChP3Cx72XPlP3Yn72CjcyhL6Q7do+oUiQdHHCSyagqsF8hCQIAFF2L
         b2ApKeOb5PTkV20Irea/HDVS+SmxXRXMhJIrXaPjlJxRSff91fugLiAGN/Lq0MpFfQ/G
         opTap8ofMGS/hxuCIlV1sgjzamu/W7+6OM7TJeE9TiHF5ERoBi8VoDiIChMOHQZCQ99k
         PJ2u8hjZOQ3WpKMHIZimJuMI4vryZWLNbnB/YCPn0aBEDGVeAy0WJGonKTTGpipmyFAf
         yfwxB48O9Smys+DQ/H9rP74o4hfmq5L1511vFiAQxchJjbBkhmAt6DusthXXC101omIN
         k+Bw==
X-Gm-Message-State: AOJu0Yw8QOHM2AbMTBzmQEfV6g4nrPpeEEDK1X4ibA396C3p8QiXA06v
	FT8pDQ/3WX5n5Css3Xdtdm8=
X-Google-Smtp-Source: AGHT+IG/P8+op2KfAZIygTwC889535wvpNw4j6q9xo62sbLpWHQSkJVMt4PHxDuFiuCn7JKlZs/Bvw==
X-Received: by 2002:a05:6a20:7d9f:b0:14e:2c56:7b02 with SMTP id v31-20020a056a207d9f00b0014e2c567b02mr12248555pzj.0.1695731440631;
        Tue, 26 Sep 2023 05:30:40 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:87f:ba12:de84:998e])
        by smtp.gmail.com with ESMTPSA id e19-20020a170902ed9300b001c61afa7009sm4227309plj.114.2023.09.26.05.30.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Sep 2023 05:30:40 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linux-imx@nxp.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH 8/8] arm64: dts: imx8dxl: Pass fsl,imx8dxl-sc-wdt
Date: Tue, 26 Sep 2023 09:29:57 -0300
Message-Id: <20230926122957.341094-8-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230926122957.341094-1-festevam@gmail.com>
References: <20230926122957.341094-1-festevam@gmail.com>
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

Pass 'fsl,imx8dxl-sc-wdt' to fix the following schema warning:

system-controller: watchdog:compatible:0: 'fsl,imx8qxp-sc-wdt' was expected
	from schema $id: http://devicetree.org/schemas/firmware/fsl,scu.yaml#
system-controller: watchdog:compatible: ['fsl,imx-sc-wdt'] is too short
	from schema $id: http://devicetree.org/schemas/firmware/fsl,scu.yaml#

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm64/boot/dts/freescale/imx8dxl.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8dxl.dtsi b/arch/arm64/boot/dts/freescale/imx8dxl.dtsi
index 5c63976090e6..f580eb6db9a6 100644
--- a/arch/arm64/boot/dts/freescale/imx8dxl.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8dxl.dtsi
@@ -166,7 +166,7 @@ sc_pwrkey: keys {
 		};
 
 		watchdog {
-			compatible = "fsl,imx-sc-wdt";
+			compatible = "fsl,imx8dxl-sc-wdt", "fsl,imx-sc-wdt";
 			timeout-sec = <60>;
 		};
 
-- 
2.34.1


