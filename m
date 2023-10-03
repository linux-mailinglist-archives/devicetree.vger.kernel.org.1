Return-Path: <devicetree+bounces-5385-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D577B6238
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 09:10:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 62454281783
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 07:10:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBAC2D270;
	Tue,  3 Oct 2023 07:10:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B932D26A
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 07:10:36 +0000 (UTC)
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D821AB
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 00:10:34 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-5046bf37daeso642177e87.1
        for <devicetree@vger.kernel.org>; Tue, 03 Oct 2023 00:10:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696317032; x=1696921832; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dFSd4fSB4DzPMdE39OUqbklHCe7VB7SI126p8m3GbCs=;
        b=UTkUM5o6CxHj8sm0k+oYOYnLdkHtwVGVpMcn+abKxbmaK5DiENML4FKFcIWzqCV4S4
         rIqh99963a/0gkew3peZNx9hCRUfLLVDenFXDQddIJDmZdkMG/O6T1AEUvHhjptfYrzF
         iS915G+v8c39VKhXWeR9I/RdxUR49HNKAGuYCt45LI+Cn5Uh7ZoZ8VDSQHuUaBp5mHDc
         mLzCSSErOqn3XG37kSdJwyXU6k3iwkdrbD73RMDyknacHrSMLg4/Z/B1qG0Y7dQtlmZF
         rD7gzyxtmp+uyq96fsQSR9JRNA1fqjHBSm8Q+cNkx1k/xPCwDQIuQVRecSQcFyc8OPsW
         TMuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696317032; x=1696921832;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dFSd4fSB4DzPMdE39OUqbklHCe7VB7SI126p8m3GbCs=;
        b=gh3dp6OiOoO8zHR67DpCRRpEq1lQvVjsOiNr078srwWOI9W3GkjP8Uhf500RRRzvbn
         +vup35/L4sldi1pv/3ufAFlvDM/K/Dq7wlCS1XWAmmKuQFNRRsIF9nbRsd+6aY34JUlf
         SUCjviRWPUMVKF+Bun4lM5dSfziDzhKKO3OMIqWFN6BirnzecexrEouK4Sjsf5wDlfm0
         Dz5hgyc95cibAvngjMrAJUldOhxUjp9ecRlBcN6utzbtCSnDLVxFg43B9DkQJ/RCTTRV
         tKEjU75t21cb+lc0fjzLBSSIjkMgrHADMNisvRyuLBwDrGvFZyhCwj3V19i9uAbajf6P
         K5jw==
X-Gm-Message-State: AOJu0YyoU5sfR9G/t1uK25E0vKJSyu0EZ5/t5m9kkBbm3rJZO3CNaY0q
	o9WS+Kp8Y0aKOuwYvWrJJ8hEjXJ6uzxkn+CEkFpJP/Y9
X-Google-Smtp-Source: AGHT+IHArH/IjYooLEDj4lVd7xFtDtmqV3QPFk/s89/iJNy+nBeFn/Ipd5FQHYlE9WpZeYEL/p9lZw==
X-Received: by 2002:a05:6512:3137:b0:4fb:889c:c53d with SMTP id p23-20020a056512313700b004fb889cc53dmr10381624lfd.10.1696317032279;
        Tue, 03 Oct 2023 00:10:32 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id k2-20020a05600c1c8200b004065d72ab19sm8746652wms.0.2023.10.03.00.10.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Oct 2023 00:10:31 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 03 Oct 2023 09:10:23 +0200
Subject: [PATCH v4 5/5] arm64: dts: qcom: sm8450: add TRNG node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231003-topic-sm8550-rng-v4-5-255e4d0ba08e@linaro.org>
References: <20231003-topic-sm8550-rng-v4-0-255e4d0ba08e@linaro.org>
In-Reply-To: <20231003-topic-sm8550-rng-v4-0-255e4d0ba08e@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=826;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=Hm1MPLKUH9tBWMMNXkinW+xDa10cw2ZXd53LQwFFR9I=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlG75hsFIRN6yFE7mxKY45ckp6XvVNthN2ptfbZHI5
 4iKfr7KJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZRu+YQAKCRB33NvayMhJ0QWDD/
 9QrGGccCEgDyyppdwR4TS4pJdlMQNZRHKb8vK9uQcqHYGmPSDQK4j2MsfKiqeCTeXL4lxDNCxcTvE6
 XjQ4wEI+9pyuH/CBEmP8EhF3ZGhgdhc3vdQoYYFI/JTH9Hm/moe9tzG4WpTag7hYUzFk5b7bLnuyqI
 IcGOhcYpKZj4uGYlgm/xu7P47NF0Yg1AYocEscgRVKW/Pcw/AgRbUPw9mxx6ak3eqPfwQD7YJNyo/R
 VBuT4TVvgKQvwwgN9Z8qnoaXdzq5uj48x5Z6W7TBpFiSEJwYooGMH6OOmyH3h74pNPMaH5DSwe+o+p
 ZfKyPFzNBtrjSQmHnawuy2GT83Wft7iEtenO3xpZpEvnQLcoJehTqLPkUDja75N5Pl5C7DfKm4nmPo
 legR/tmbwI9gv3YqE3UE9TlfEP9zZN4n+Qc57j/fGp3aLXvDU+FaPYrG4FSUOCYjTzYlese+ihyQL+
 8X4BZMtOFdyi/4S5Wi75+A6xbuGlLFleJUTDMLvjyokuJijq8Uf11ULUAavtKyY2jKMDs9PGIAR6E5
 sf9RdOJZvECdTaBLsHmBawefi04pS3qb+LNuwZnl5Vp95O7KlcCtrvST95DW51JMslpY08XkvOaYfV
 WZLQ2Pcf3QY2HCK/DIMTav/OGmB4JJgqSqJXmgpMJyQtXtGi5YbgislKYCBw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The SM8450 SoC has a True Random Number Generator, add the node with
the correct compatible set.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 1783fa78bdbc..bde9c1093384 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -1739,6 +1739,11 @@ spi14: spi@a98000 {
 			};
 		};
 
+		rng: rng@10c3000 {
+			compatible = "qcom,sm8450-trng", "qcom,trng";
+			reg = <0 0x010c3000 0 0x1000>;
+		};
+
 		pcie0: pci@1c00000 {
 			compatible = "qcom,pcie-sm8450-pcie0";
 			reg = <0 0x01c00000 0 0x3000>,

-- 
2.34.1


