Return-Path: <devicetree+bounces-4976-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EC97D7B48CE
	for <lists+devicetree@lfdr.de>; Sun,  1 Oct 2023 19:19:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 2F14A281DBE
	for <lists+devicetree@lfdr.de>; Sun,  1 Oct 2023 17:19:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 111AA1798C;
	Sun,  1 Oct 2023 17:19:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8F29FBE5
	for <devicetree@vger.kernel.org>; Sun,  1 Oct 2023 17:19:10 +0000 (UTC)
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F52383
	for <devicetree@vger.kernel.org>; Sun,  1 Oct 2023 10:19:09 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-406618d0991so19147675e9.2
        for <devicetree@vger.kernel.org>; Sun, 01 Oct 2023 10:19:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696180747; x=1696785547; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N9kK3xz4P/eX7Le3jl9/AW07O1aDO3RSdht/nTqRVdY=;
        b=VtDVSFLm5oQrjzQFvRjQO3kqUvu04tn8pB+KcbVX1N0OjHDhhM53niIcfT78i1qyup
         HYx5BjocNNtWO9mNajxgEgdy/ay7z/oZY2jIvtZUTW476lEXLj0wq04W58Af1eXPIjvr
         JjUhW4p+QOFXkeB6pcv9pmjFfAPtudwEmldC5+/dxcL16p1vdmhvmk/TgplGM7H5vb7S
         t5rhyVUodxTW6soh5iPuXbX0+tD1f6J899Go8k2wbnPwus7oLkg9WqiF3Q4FlKZUtANA
         oWA10J4VHCfUSZ5vrvv0U6/QDh3u7rVCcAxJ6Rf4ExhrvcNUX6gPdHkXIy8GdC9ImBi1
         c0Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696180747; x=1696785547;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N9kK3xz4P/eX7Le3jl9/AW07O1aDO3RSdht/nTqRVdY=;
        b=dvW9MZ0DCVs717mR5iGUtHoaPdMitQp2k0oN8zTpZhW2hIcAkL7yUh2CTdr8i2AruV
         UKluxkhrDTdILl37Ic8JuCUSeU0aMoL9wf6n8qBLBMH6Vs0BNZwrOpYqhRaBNubd1Kk1
         /WqwCFSRWvFkgGW5YuLjJPcfL3Rf3o46f5RfvipJckpLbCNlVWLFn45H4tsFbP09DC7V
         mDrTMYGn6tqatLpYJStITod7m77vPyM7/ganvScv2xeh5HRSTiNswJ4XOmG3kKwtU2fu
         Z2vgQJ0NUIPwI9m0sDEe+UYzXAsH7F0nKuCOj89xdU4TaasJy6zlz7D4kvkuTnpSRny6
         zZfg==
X-Gm-Message-State: AOJu0YyVjkU9pOds5Q1cEDQvRHTojbjLL0p/x+Aep3pbfyF3UWLy6XxR
	V5qXssiL2zbmOVRVB9cV+V7y9RI/qujkeBbWZ2avNA==
X-Google-Smtp-Source: AGHT+IHIB0SpJbf0xXHuk1VkGpM+Jm6rRCg8f1bsuc4iyDLaThzDkvU0xHssP3o6ngwAk7EkNMh0Yg==
X-Received: by 2002:a7b:c84d:0:b0:405:1bbd:aa9c with SMTP id c13-20020a7bc84d000000b004051bbdaa9cmr9330111wml.34.1696180747646;
        Sun, 01 Oct 2023 10:19:07 -0700 (PDT)
Received: from lion.localdomain (host-2-99-112-229.as13285.net. [2.99.112.229])
        by smtp.gmail.com with ESMTPSA id n9-20020a05600c294900b00401c595fcc7sm5613042wmd.11.2023.10.01.10.19.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Oct 2023 10:19:07 -0700 (PDT)
From: Caleb Connolly <caleb.connolly@linaro.org>
Date: Sun, 01 Oct 2023 18:19:04 +0100
Subject: [PATCH 2/2] arm64: dts: qcom: sdm845-xiaomi-beryllium: enable
 flash led
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231001-b4-sdm845-flash-dts-v1-2-275a3abb0b10@linaro.org>
References: <20231001-b4-sdm845-flash-dts-v1-0-275a3abb0b10@linaro.org>
In-Reply-To: <20231001-b4-sdm845-flash-dts-v1-0-275a3abb0b10@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 Joel Selvaraj <joelselvaraj.oss@gmail.com>, 
 Caleb Connolly <caleb.connolly@linaro.org>
X-Mailer: b4 0.13-dev-46309
X-Developer-Signature: v=1; a=openpgp-sha256; l=1256;
 i=caleb.connolly@linaro.org; h=from:subject:message-id;
 bh=evdVYIXgQSOtBTuRnl5BDevEMjhQURNfxR9UNO8Qn8w=;
 b=owGbwMvMwCFYaeA6f6eBkTjjabUkhlTJVRyhR/fmTj3ed+VE4qI8v+tH7h/bGC0efcEj8X/Lx
 ReB6z/YdJSyMAhyMMiKKbKIn1hm2bT2sr3G9gUXYOawMoEMYeDiFICJmJ5lZNjRkB7558qeWbPm
 zsvW2rOuK4DrZv2+S3pCEyYeYHo3I7eQ4X983pPbFeHXKko9XnBohmWI3o4p814XGhqvnyv7SFG
 uZQkA
X-Developer-Key: i=caleb.connolly@linaro.org; a=openpgp;
 fpr=83B24DA7FE145076BC38BB250CD904EB673A7C47
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Joel Selvaraj <joelselvaraj.oss@gmail.com>

Configure and enable the dual-tone on the PocoPhone F1

Signed-off-by: Joel Selvaraj <joelselvaraj.oss@gmail.com>
Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
---
 .../dts/qcom/sdm845-xiaomi-beryllium-common.dtsi   | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi
index 93b1582e807d..617b17b2d7d9 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi
@@ -355,6 +355,28 @@ &pmi8998_charger {
 	status = "okay";
 };
 
+&pmi8998_flash {
+	status = "okay";
+
+	led-0 {
+		function = LED_FUNCTION_FLASH;
+		color = <LED_COLOR_ID_WHITE>;
+		led-sources = <1>;
+		led-max-microamp = <500000>;
+		flash-max-microamp = <1500000>;
+		flash-max-timeout-us = <1280000>;
+	};
+
+	led-1 {
+		function = LED_FUNCTION_FLASH;
+		color = <LED_COLOR_ID_YELLOW>;
+		led-sources = <2>;
+		led-max-microamp = <500000>;
+		flash-max-microamp = <1500000>;
+		flash-max-timeout-us = <1280000>;
+	};
+};
+
 &pm8998_resin {
 	linux,code = <KEY_VOLUMEDOWN>;
 	status = "okay";

-- 
2.42.0


