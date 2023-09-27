Return-Path: <devicetree+bounces-3739-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C037AFFBD
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 11:21:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 28B49281A5B
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 09:21:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77A2720B0F;
	Wed, 27 Sep 2023 09:21:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C814D1CA85
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 09:21:52 +0000 (UTC)
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7823C0
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 02:21:50 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-99357737980so1323085066b.2
        for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 02:21:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695806509; x=1696411309; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tFEJ4pRe+RB1S9eb0nmG/4BAZfGRthsh3flPCD+93R4=;
        b=WhVlbdoT/UbfAa1ALegmvUfo9MrTYoBVoFMRzmRfA1IA537UQR3Za+unZ445nMxECp
         srbEkGyUbUpw3QHFiwika4+uEKnaqwszxuogG541/ZT+/kvezrEWq5f4u9XpXQugvh6f
         ZJmoNlNu4M+eeiN7dtNh/7UKtiZlv56OAvSeNWxG6pBEXMQqZVL34bDo7fiFfowSt5Kc
         A7lEdCq63HtENWofVar7I+1XzBxHK3rG//KSveUM/lh6MfQTF/kTjKfT+5EaMTT+Tisa
         8N9t9QCwuzBGAyYEJz6d/FucNSKCLlBhIwgptIQXcW+eWzrF80wazdm5Il6Tb/KuGoOG
         bjgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695806509; x=1696411309;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tFEJ4pRe+RB1S9eb0nmG/4BAZfGRthsh3flPCD+93R4=;
        b=CT5oHBshR1Ax7tHsOF68oQRSv9MiPjgqxOJzqpZMmtd7ntC2u5gIF/vOLSzOaR1A9V
         1LNbrYasCjrLS3wFBDMEq32mNJrD6Cq3nB7fPew9YNY/OdfHekW13jSUD6lynNEwDIjv
         RCXpWg3QrpCrOXQAy21o3W309PzjURIVVyvohIBz+RjfM9tr3HtJaWg/sUw7QC+h7CEf
         9eIhJ1Ry8/4zxgnP21QaLqR2FwwDqNfgkj58qzFe53tgwI1rd2Qi3gSQhnTVLoWbm8Lk
         EGbAAwhtVH5uFHGT8JkFzLvLEk2tEGz1cOaHtiZ8taUiMZk3NfyUY3vblSt2TBeIH15C
         GHBA==
X-Gm-Message-State: AOJu0YzNfprk5EXmMgFLaaqNZ/TgeGP4pbYAOgAFBwM6zFXxxYQNuJFC
	YT2hO7RG7245y0WkUGYMiiVGmg==
X-Google-Smtp-Source: AGHT+IEfd9IgnlewzgBfO8d7DSxLjgAmY8I8VmUFRqOAsBoFq2F7INqGsO5rfP3NP7DOfMPJns7dpg==
X-Received: by 2002:a17:906:53:b0:9b2:b152:b0f2 with SMTP id 19-20020a170906005300b009b2b152b0f2mr1281195ejg.10.1695806509315;
        Wed, 27 Sep 2023 02:21:49 -0700 (PDT)
Received: from [10.167.154.1] (178235177023.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.23])
        by smtp.gmail.com with ESMTPSA id qq23-20020a17090720d700b00993664a9987sm8948574ejb.103.2023.09.27.02.21.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Sep 2023 02:21:49 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: [PATCH 0/4] SM6375 features
Date: Wed, 27 Sep 2023 11:21:39 +0200
Message-Id: <20230927-topic-6375_stuff-v1-0-12243e36b45c@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACP0E2UC/x2N0QqDMAwAf0XyvICL07L9yhCJbToDUqVRGYj/v
 rLHOzjuBJOsYvCqTshyqOmSCtxvFfiJ00dQQ2Ggmpr6SQ63ZVWPXePawbY9RmR6hNh2FFgclGx
 kExwzJz+VMO3zXOSaJer3/3n31/UDBv/QoHcAAAA=
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1695806508; l=746;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=XAM++hTphVwtDuN0lDqWZr8AwiM0zMzanpAwXHVMGoM=;
 b=3uMZXTpEc+IKGbvWYMzp8RaSk/nWisvJkb8re7GobynRuXaaeZlNjXgcRYQpKTbQwcmYfFCKp
 8pWd5N0l3x6AfL3IWy1C9DsuqLCqW4L7outqOp2lOBNH5Pfu9XNnbFV
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Enable modem & wifi on sony 10 IV, add bt uart to the soc dt.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
Konrad Dybcio (4):
      arm64: dts: qcom: sm6375: Add UART1
      arm64: dts: qcom: sm6375-pdx225: Enable MSS
      arm64: dts: qcom: sm6375-pdx225: Enable ATH10K WiFi
      arm64: dts: qcom: sm6375-pdx225: Add USBPHY regulators

 .../dts/qcom/sm6375-sony-xperia-murray-pdx225.dts  | 29 ++++++++++++---
 arch/arm64/boot/dts/qcom/sm6375.dtsi               | 43 ++++++++++++++++++++++
 2 files changed, 66 insertions(+), 6 deletions(-)
---
base-commit: 18030226a48de1fbfabf4ae16aaa2695a484254f
change-id: 20230927-topic-6375_stuff-a24df562dae7

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@linaro.org>


