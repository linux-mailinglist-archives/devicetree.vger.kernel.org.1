Return-Path: <devicetree+bounces-3427-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA4D7AECDE
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 14:30:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 57D041C2048C
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 12:30:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF50312B9B;
	Tue, 26 Sep 2023 12:30:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88AB427EE3
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 12:30:35 +0000 (UTC)
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com [IPv6:2607:f8b0:4864:20::532])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3DF2111D
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 05:30:34 -0700 (PDT)
Received: by mail-pg1-x532.google.com with SMTP id 41be03b00d2f7-56f8334f15eso1083764a12.1
        for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 05:30:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695731433; x=1696336233; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KfUVz+aQZdxcGZzMUtAFeIfdLav6k+/v+PkEqgFQH0M=;
        b=QLZwcE+XV5Mr0JocgtIUVuoPVY6oqdTg+aHk+bBO44G6jZ+bHvtsNL+w5O13mVZZsc
         EvdblwVEvfms6wDjfpi3+QgPwRJDx/tT+cnLKMkXBt86tOLrjRxZWzAm1et6lM1rsyw6
         Uo1Qe8bxREHTwyF5En5KzaWMGL5SL3ClVQXJK1ibFqE0Dw0vvJu91R5fdRORuWYASKgH
         YFnrjkArZxMubjeFfJkVknRY41L9Dymzhy2/YIyOohraUrwAx3dO8LtdawOpHZe+8HNR
         mHGU7iGBm8y8ruKekwSqJUFwAad+igIo2glqQGpsOLOfeqFAEiiMP9/vDbjQQCfeLzlS
         bPkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695731433; x=1696336233;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KfUVz+aQZdxcGZzMUtAFeIfdLav6k+/v+PkEqgFQH0M=;
        b=QBwYu1wqdacwb6Cx92BdqS0SSz9eK8KseCX1DqnG2j3lZZTNyUH6dSNlDLBiXrYGtR
         rTvKbY3fwKmaeKfoyFlawxM4H/7fQVJGZZjE/sYwwkxUfdUHOUujWg3eftoJCuxir9uj
         fxtD66n3jzYwaW/QURTspuBRmAnmPPLgU6E4v22dV6XGF9+6vpQRUE9ZADLu45gO+nNr
         +BqEkdWMpftek757b/dGN3tNw98PiAC2SzCyrrnwGv2lcsrCvtFJeQm+rVI/DvS6emCN
         Y2hnSWX5mxS3R9ZgdzMooEmtTszGjK0AgpsOb6zVjT0Ml8ZKTpjYaEmkDqApSXwYYQ21
         1ySA==
X-Gm-Message-State: AOJu0YzSMgVErErD2g5FR9hgsgRcjTsnFWmR8B6p5IpnGQg6mPJRahb9
	pPGlc7CPUyo/qHgBQJhMk/k=
X-Google-Smtp-Source: AGHT+IHb2KuKM0z6sTsqzCmZKEgzDw+d90/f0zuUTHmQGsppt4CGw+ER5iwgp85FkJ3+AdUba48Yyw==
X-Received: by 2002:a05:6a21:9998:b0:159:c3d5:40bc with SMTP id ve24-20020a056a21999800b00159c3d540bcmr10112802pzb.1.1695731433512;
        Tue, 26 Sep 2023 05:30:33 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:87f:ba12:de84:998e])
        by smtp.gmail.com with ESMTPSA id e19-20020a170902ed9300b001c61afa7009sm4227309plj.114.2023.09.26.05.30.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Sep 2023 05:30:32 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linux-imx@nxp.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH 6/8] arm64: dts: imx8dxl: Pass fsl,imx8dxl-sc-thermal
Date: Tue, 26 Sep 2023 09:29:55 -0300
Message-Id: <20230926122957.341094-6-festevam@gmail.com>
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

Pass 'fsl,imx8dxl-sc-thermal' to fix the following schema warning:

system-controller: thermal-sensor:compatible:0: 'fsl,imx8qxp-sc-thermal' was expected
	from schema $id: http://devicetree.org/schemas/firmware/fsl,scu.yaml#
system-controller: thermal-sensor:compatible: ['fsl,imx-sc-thermal'] is too short
	from schema $id: http://devicetree.org/schemas/firmware/fsl,scu.yaml#
	
Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm64/boot/dts/freescale/imx8dxl.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8dxl.dtsi b/arch/arm64/boot/dts/freescale/imx8dxl.dtsi
index c166ffebe438..5c63976090e6 100644
--- a/arch/arm64/boot/dts/freescale/imx8dxl.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8dxl.dtsi
@@ -171,7 +171,7 @@ watchdog {
 		};
 
 		tsens: thermal-sensor {
-			compatible = "fsl,imx-sc-thermal";
+			compatible = "fsl,imx8dxl-sc-thermal", "fsl,imx-sc-thermal";
 			#thermal-sensor-cells = <1>;
 		};
 	};
-- 
2.34.1


