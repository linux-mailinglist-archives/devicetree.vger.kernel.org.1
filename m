Return-Path: <devicetree+bounces-4239-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B307B193D
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 13:03:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 6C9041C20B39
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 11:03:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B63837152;
	Thu, 28 Sep 2023 11:03:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB8D337166
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 11:03:48 +0000 (UTC)
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B7B2F10D8
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 04:03:43 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-5042bfb4fe9so20106751e87.1
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 04:03:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695899022; x=1696503822; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iNKbEzWv4/hQlocpzzstUC1xw4nRbc19xDIUSYTkKZk=;
        b=eq6zKc16Essi3mNVQIb2Cty3Pk/KosL7DLBCSItZmXDkhx47Blf6DbU4KiQJFG3JMf
         RBd1yNxqBzK7YdvOh/q906JrtIEATwN6jqzfrlYbY/EK0lMA9ZbPlKw3z72D1d42FUkA
         jfmJmXVU+Xkypml+No4vTssMr6UcawScqJgeDyRjmmE9Gthyk4ykb3Zl3ukzNjJKo/pF
         b9mNTBcPmYOawto1uFwLgICD8i4Zm5wjzljd/viPpiVJtHnCjnqRr7nIv5M8WU7JKFND
         l8NOs58N8g6vIUxC/wc7ESVmE+ZEuAmDxxX1lus9/52T44wo/438ozCeXxxSnFU3mOLf
         KpPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695899022; x=1696503822;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iNKbEzWv4/hQlocpzzstUC1xw4nRbc19xDIUSYTkKZk=;
        b=RSz2gzo2ci0VoCyFzRzSJN5MzWYUalCoOIL5UzLP6lNcH9n2V5I8GK0AdB5hRW9WU8
         YFbUnKeDcar24EDU37zgfNW1OIB6IId/Ut4QmVKyn7mF/7T9jfeEQ09rKiCkqZuHPKXZ
         cU20m2Hz5FE37h6OXv/Ip8zK3AHum8kwlkAETCATsuDBqB84BuSH/cMTer803QEWJx3D
         HQI0j/CkNZkB6dJpK43KwBN/R9ZpqqBFlwTpqsTORDoR6q1Bj1zUSoEOS6HChSGT/ScR
         sdcq0MO30LIE77iZsze+0BIYHHB7JZoYle8rhO0fUuGdjxO9Svahf8OzUPCuOaBpg03e
         3TZw==
X-Gm-Message-State: AOJu0YxL3mpHc/G9is/dbxixRzFH5/iMj+blPrqGD6H0gsoOwCWZ7xh+
	91LGKYTVM5iGiHZW9EpVl7gtlQ==
X-Google-Smtp-Source: AGHT+IFcAUnO++6KidGXwF0sBdfWRRFH0HS9WCPRE9MM7UYw/o76g6BIFUq1cB4lLZJ2+R31XqeBcg==
X-Received: by 2002:a05:6512:34c3:b0:500:bfcb:1bf9 with SMTP id w3-20020a05651234c300b00500bfcb1bf9mr768030lfr.67.1695899022031;
        Thu, 28 Sep 2023 04:03:42 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id u2-20020a056512040200b005030a35019dsm3052953lfk.178.2023.09.28.04.03.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 04:03:41 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-input@vger.kernel.org
Subject: [PATCH v6 36/36] ARM: dts: qcom: mdm9615: drop qcom, prefix from SSBI node name
Date: Thu, 28 Sep 2023 14:03:09 +0300
Message-Id: <20230928110309.1212221-37-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230928110309.1212221-1-dmitry.baryshkov@linaro.org>
References: <20230928110309.1212221-1-dmitry.baryshkov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Device tree node names should not use vendor prefix, they contain a
generic name of the device. Drop the qcom, prefix from the SSBI node
name.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-mdm9615.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-mdm9615.dtsi b/arch/arm/boot/dts/qcom/qcom-mdm9615.dtsi
index 07e712e890f6..b02336bd8370 100644
--- a/arch/arm/boot/dts/qcom/qcom-mdm9615.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-mdm9615.dtsi
@@ -258,7 +258,7 @@ gsbi5_serial: serial@16440000 {
 			};
 		};
 
-		ssbi: qcom,ssbi@500000 {
+		ssbi: ssbi@500000 {
 			compatible = "qcom,ssbi";
 			reg = <0x500000 0x1000>;
 			qcom,controller-type = "pmic-arbiter";
-- 
2.39.2


