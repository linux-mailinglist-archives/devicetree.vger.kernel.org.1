Return-Path: <devicetree+bounces-4608-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B9C07B33E0
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 15:40:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 2E4521C20A2B
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 13:40:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18932405D1;
	Fri, 29 Sep 2023 13:40:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 635373FB28
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 13:40:18 +0000 (UTC)
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B59E01706
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 06:39:05 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-532c81b9adbso18342141a12.1
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 06:39:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695994743; x=1696599543; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QdNtbM8sg5Uv/4iy/PMTp5TjbGaItzuz9a1/F8ZNl8I=;
        b=dIwD7hUTtN/uX1H3XDBJ0M250A3L6BflRIb94Plhu4s4H1kvLEgcNYhbJcGrtFpw95
         q9KuUmdYctmK37DEdeI8BU/8+1xPjo+q1OLE4pQyjnhKiyAHp6ofL9jviO98iljmmbkX
         ncuz9NTxf1Yr/P0zFq6z00eHNe2fDxvp1WCADnh86GBeTOUD7G7+NgzFNiZX833rxYh4
         9ei2hAxT07B4A7rsiMIZvjF9q0m5X1B/BluhPN18BR7L8pozlYyJ2gZkantPvOF3TQi0
         1Do0Gy7Tjt4/brjXYLjy0ggsN7tSXfQ5mNFbgY7tjnkDAvIMWATEH67qM9Simq6XNSa+
         yHbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695994743; x=1696599543;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QdNtbM8sg5Uv/4iy/PMTp5TjbGaItzuz9a1/F8ZNl8I=;
        b=o2a6438L9Kyn3fdWhEiw9d4XaPSds9LFRjIQf7lRPsS0qiUi4P8dkKSX+8ERJJCiat
         yGT9X8H3F835P0DxQcGygciXyrvcKP2q0UbGaZjC/7muXSCSWasVLdaavE/sjNQRl+8o
         j9AQDXWuwCYoRxUAJxJsv3WNBu1TUltAzhO6ULS23455kHWXaUDE09hJ1UdClXJDvvhp
         otlfma73ASW7/HJEbQ+fY12wr5f4TmsfBDhl9t4RTeQX4mjqbr45ZfpY+AU6hGDm/Bq5
         yD67ZSlE7kpsTbql3ABAeSK/soFupbm2zkhbPAg4PQf4M3Vde6XaBg9+jzqvhobc8xkU
         4dqw==
X-Gm-Message-State: AOJu0YzPIQkpJYB6hIXBHDewNfQ5mJ2DkUjkQ1aiwUs/QvfaIhJQMLHI
	RlHmS4E0GiEi8aas5jPFInnb9w==
X-Google-Smtp-Source: AGHT+IGpBizH8QZwp7ZPEb3difKlOrS1jonPPKtM6duYEQOku2tgSjMYdiD+m7xCfMaKLJvj2w7g3Q==
X-Received: by 2002:aa7:c746:0:b0:522:564d:6de with SMTP id c6-20020aa7c746000000b00522564d06demr4285089eds.36.1695994743533;
        Fri, 29 Sep 2023 06:39:03 -0700 (PDT)
Received: from [127.0.1.1] (178235177217.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.217])
        by smtp.gmail.com with ESMTPSA id cx14-20020a05640222ae00b005362bcc089csm2215701edb.67.2023.09.29.06.39.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Sep 2023 06:39:03 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Fri, 29 Sep 2023 15:38:53 +0200
Subject: [PATCH 2/2] clk: qcom: gcc-sc8280xp: Don't keep display AHB clocks
 always-on
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230929-topic-8280_ahbdisp-v1-2-72bdc38309b9@linaro.org>
References: <20230929-topic-8280_ahbdisp-v1-0-72bdc38309b9@linaro.org>
In-Reply-To: <20230929-topic-8280_ahbdisp-v1-0-72bdc38309b9@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.13-dev-0438c
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

These clocks are consumed by the dispcc[01] clock controllers, so there's
no reason to keep them on from gcc probe. Remove that hack.

Fixes: d65d005f9a6c ("clk: qcom: add sc8280xp GCC driver")
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/clk/qcom/gcc-sc8280xp.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/qcom/gcc-sc8280xp.c b/drivers/clk/qcom/gcc-sc8280xp.c
index bfb77931e868..bf95f82a3818 100644
--- a/drivers/clk/qcom/gcc-sc8280xp.c
+++ b/drivers/clk/qcom/gcc-sc8280xp.c
@@ -7545,18 +7545,16 @@ static int gcc_sc8280xp_probe(struct platform_device *pdev)
 
 	/*
 	 * Keep the clocks always-ON
-	 * GCC_CAMERA_AHB_CLK, GCC_CAMERA_XO_CLK, GCC_DISP_AHB_CLK,
+	 * GCC_CAMERA_AHB_CLK, GCC_CAMERA_XO_CLK,
 	 * GCC_DISP_XO_CLK, GCC_GPU_CFG_AHB_CLK, GCC_VIDEO_AHB_CLK,
-	 * GCC_VIDEO_XO_CLK, GCC_DISP1_AHB_CLK, GCC_DISP1_XO_CLK
+	 * GCC_VIDEO_XO_CLK, GCC_DISP1_XO_CLK
 	 */
 	regmap_update_bits(regmap, 0x26004, BIT(0), BIT(0));
 	regmap_update_bits(regmap, 0x26020, BIT(0), BIT(0));
-	regmap_update_bits(regmap, 0x27004, BIT(0), BIT(0));
 	regmap_update_bits(regmap, 0x27028, BIT(0), BIT(0));
 	regmap_update_bits(regmap, 0x71004, BIT(0), BIT(0));
 	regmap_update_bits(regmap, 0x28004, BIT(0), BIT(0));
 	regmap_update_bits(regmap, 0x28028, BIT(0), BIT(0));
-	regmap_update_bits(regmap, 0xbb004, BIT(0), BIT(0));
 	regmap_update_bits(regmap, 0xbb028, BIT(0), BIT(0));
 
 	ret = qcom_cc_register_rcg_dfs(regmap, gcc_dfs_clocks, ARRAY_SIZE(gcc_dfs_clocks));

-- 
2.39.2


