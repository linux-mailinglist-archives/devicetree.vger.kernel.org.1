Return-Path: <devicetree+bounces-4228-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0560F7B1930
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 13:03:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 9EF80282F5C
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 11:03:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25D0B37152;
	Thu, 28 Sep 2023 11:03:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A59B734CC3
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 11:03:34 +0000 (UTC)
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04C4CCCC
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 04:03:31 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-5031ccf004cso20680380e87.2
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 04:03:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695899010; x=1696503810; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k892yPv/128pmT+0c+CLRewxWCJSJdHIcCP1VlRPxE4=;
        b=IJPT4t6ermvoLceXU9Cc+Tp0OuR2IkQmgEnQtywkKigQE2AiYXcLx1aUJJ5AuZlad7
         E+M5vQMjthCq/HLV5d7UVbjqenSE0a88aO2iDs/m1cRoUhxZovFa+VzJvdmpnPkMHbkV
         8FbQXt/Quz111gsYgt7N8K+CyLmQEhc7vcXFNbksMNLGtrsB/87GXButLyuNX3XaaEQz
         3UpyujKRLDMPhhbDTixzof30m7u87fL7sg19kkjP0iLtamXXfeAw9uFvEKZZtvcDytM7
         kdXhQmxBzpI2RT0FNjpMvwhLbMXqcw+HBGq1TlXVbVM8FTuPOapwlYzSKUTjq5uS6vAg
         YqvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695899010; x=1696503810;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k892yPv/128pmT+0c+CLRewxWCJSJdHIcCP1VlRPxE4=;
        b=b+54eQ1AHd2098BuQ1Zs2QaZ7Mu6r1daSPkqN/+Vnt0CTOZgMNAheR2Iu1U2zBFSc9
         HFa1jEtliJwb/53Tk/mQ2cieQsbPK6o32XellHlipBvoIC9Dz2YsmGOdLEdyk0vpeLjL
         gUadGCwv6smZPJpZcjPcr0yeOlWnqp+S/8PnPdDkRIVOrjKyeTPfBqixOC1XYOnZpkaJ
         0XmR7G5GbxqpubMwHNzIKIw0rU3/vIFfZkII3ohY9Qiqx/qJAIcsrO1AdYusq8hOozTH
         0sT+xYPvRuChnmJPdbafcJ5FqMqwAhtheFagzGqjJIOrWanUIi/MzmYKd4IYiTDW09Jg
         UwnA==
X-Gm-Message-State: AOJu0YzniOXtOr4yFZY7yTJkIYJyyO/LQF6kHmnNBR1fpRjIgSQU1Dwf
	uo8do4DkTpPbMFy339pwVVZMIw==
X-Google-Smtp-Source: AGHT+IEpPN08S7U6KLOgqow/qZZuEOQ2CCuedHbLWe6iS0SStFZj1s083C+dvbduRXQT4APz641P7A==
X-Received: by 2002:a05:6512:220f:b0:503:36cb:5438 with SMTP id h15-20020a056512220f00b0050336cb5438mr1075108lfu.21.1695899010264;
        Thu, 28 Sep 2023 04:03:30 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id u2-20020a056512040200b005030a35019dsm3052953lfk.178.2023.09.28.04.03.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 04:03:29 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-input@vger.kernel.org
Subject: [PATCH v6 23/36] ARM: dts: qcom: pm8921: move reg property
Date: Thu, 28 Sep 2023 14:02:56 +0300
Message-Id: <20230928110309.1212221-24-dmitry.baryshkov@linaro.org>
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

Move reg property to come after compatible.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/pm8921.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom/pm8921.dtsi b/arch/arm/boot/dts/qcom/pm8921.dtsi
index 4697ca33666f..fa00b57e28b9 100644
--- a/arch/arm/boot/dts/qcom/pm8921.dtsi
+++ b/arch/arm/boot/dts/qcom/pm8921.dtsi
@@ -31,9 +31,9 @@ pm8921_mpps: mpps@50 {
 
 		rtc@11d {
 			compatible = "qcom,pm8921-rtc";
+			reg = <0x11d>;
 			interrupt-parent = <&pm8921>;
 			interrupts = <39 IRQ_TYPE_EDGE_RISING>;
-			reg = <0x11d>;
 			allow-set-time;
 		};
 
-- 
2.39.2


