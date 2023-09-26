Return-Path: <devicetree+bounces-3424-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C40847AECDB
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 14:30:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id CA6611C2082B
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 12:30:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EAB04C60;
	Tue, 26 Sep 2023 12:30:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3F6127EE3
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 12:30:28 +0000 (UTC)
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70EA013A
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 05:30:27 -0700 (PDT)
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-1c5cc63ce27so12851215ad.0
        for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 05:30:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695731427; x=1696336227; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8vueTj3FH9QJ/M+fWSkNNcd5gz3huV95WnyZsT3wILM=;
        b=hoO6j9XLZumpisGhQAxB43iN1HhSOInRoUqmj29seLmKJGB2SbM9uFUkBOK98qV/x9
         MLEeOEUu6ikr48Zl8uFBALvbLf0X/kcevi2E4pH8icjB47K/sDak4n+peYjmT+sjkQMv
         g11eaNzMNVc+sxb57PkyW+8/jll8QlQk00pqezJLannVnpq70Qppiggy6trQWS2WthRM
         5fTJiNXmCmQhrqlJELBcvML2456aJMDdyHHZHDFXss4DAxW6zk6PKXdhAivwEsm0kuqT
         rY8nP8+Ik0rxV3uTlBQt7bZ7BsJcbN8P1/P0rV7OVOWE3duWL5BN8Jpvbvbub7x6Lahr
         689g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695731427; x=1696336227;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8vueTj3FH9QJ/M+fWSkNNcd5gz3huV95WnyZsT3wILM=;
        b=cuO9kUOcY9nz8/o/izuCyLIifK6ARLDA9L4kJgIrYVaJFrWDnf6cAUlAAD4Z4B2hoj
         R9AMW7gESDFEn2XgrOW7GWak0ReTuUEjIyEAHdYGHyqFEJNyutpkH184FhfrB4axhINm
         4UmPIWivOy5c7j6B1+JY0+wBj97fA16PhYMqJDTOUplIhkClV4C/BwntwwyNQ7kVca1B
         Aoi3xvWESGnVl0bkQyMrCcXSc34A9YHSM32AAnnzBnaKWhbNf2h5+tceEcTA82+KCLZz
         BukbtWdWcsj/EZuRJGUSRuF+HlOR0gIjy26pkKobuaR2tt0383021Os6Wazq/LO1tkHq
         OshA==
X-Gm-Message-State: AOJu0Yya70UL3JqaVaKwnC8cUQLgkXMgi3TW8RYJqGaUbvV8H9Dn3oYr
	bwC22rcx1hnANsgvK+zfxtA=
X-Google-Smtp-Source: AGHT+IE/u/hGpbSzUSojp/TzicjZz7ol/GvKvQi4xvESB+p7s+W+BztubQYWVTxMvxbw5ZrxFq5Lrw==
X-Received: by 2002:a17:902:f548:b0:1b8:9fc4:2733 with SMTP id h8-20020a170902f54800b001b89fc42733mr10935782plf.3.1695731426700;
        Tue, 26 Sep 2023 05:30:26 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:87f:ba12:de84:998e])
        by smtp.gmail.com with ESMTPSA id e19-20020a170902ed9300b001c61afa7009sm4227309plj.114.2023.09.26.05.30.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Sep 2023 05:30:26 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linux-imx@nxp.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH 4/8] arm64: dts: imx8dxl: Remove wakeup-irq
Date: Tue, 26 Sep 2023 09:29:53 -0300
Message-Id: <20230926122957.341094-4-festevam@gmail.com>
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
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Fabio Estevam <festevam@denx.de>

wakeup-irq is not documented, and not used anywhere.

Remove it.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm64/boot/dts/freescale/imx8dxl.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8dxl.dtsi b/arch/arm64/boot/dts/freescale/imx8dxl.dtsi
index 19aa89ea442a..c166ffebe438 100644
--- a/arch/arm64/boot/dts/freescale/imx8dxl.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8dxl.dtsi
@@ -124,8 +124,6 @@ &lsio_mu1 1 0
 		pd: power-controller {
 			compatible = "fsl,imx8dl-scu-pd", "fsl,scu-pd";
 			#power-domain-cells = <1>;
-			wakeup-irq = <160 163 235 236 237 228 229 230 231 238
-				     239 240 166 169>;
 		};
 
 		clk: clock-controller {
-- 
2.34.1


