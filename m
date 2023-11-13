Return-Path: <devicetree+bounces-15297-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 83B2A7E985A
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 09:56:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2395E1F20CA6
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 08:56:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AF2918B08;
	Mon, 13 Nov 2023 08:56:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="qUwO+ta1"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A994D18625
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 08:56:36 +0000 (UTC)
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A59E1727
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 00:56:35 -0800 (PST)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-9e2838bcb5eso612015566b.0
        for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 00:56:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1699865793; x=1700470593; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IHFRmzvU5T3tlzyLJ6u+L9D1svx2JsEEqR5zHg9JW1s=;
        b=qUwO+ta1ElsepjclimtwfnWbQX16Z+Q7FjTwuVNuPDBAhAk1VhXGKqUVy/HgJgBtYw
         90VbKbOA2H3fPTMWutCMGwEoooBYSkz618InRSpGLoRDc7emjltlnMlCzsr8rjIeF5Z0
         PcRCY2m3ssO5/tEbAwHIGQLHobetEqPS110Odj5c1lNdwnoml8bhoBt8O4Lyxc+tCh8K
         7O4FFfts/Nix3cmEhIm0j+lyWu0xkaIwcuJO3kz4Ikadozxi/xePv/MmCh9hmzRlEV3E
         IPnjiJoz51Kqfx+w6UWHUjne2xCzEzixfvJnRDDpte9qQEoqn72LtSMA+RYR7EYWKtrl
         tFpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699865793; x=1700470593;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IHFRmzvU5T3tlzyLJ6u+L9D1svx2JsEEqR5zHg9JW1s=;
        b=lgihDL+O8FJe+o6GBBl72reW79xIV7QKrIXCLoGk0Tc6m/y3ynYLjhmiFjcNT2Or+b
         lplZvIwsxxukstfnfAH6TDuJw0yQZ7U/sD3K3UbermLJyAqYkiGG9N7GgeI/vCx2eh88
         5EnJp5z+420AKi4yV8komPCmhCvtK3G1uJQ6dlmz5oWGHsBcQy2Z4FJ9GEbIMVj8lJeC
         MwFMXt2lWgz61Q/UaayynfToYj9GSgihOdEtZUZ9mSvgnu0xDruSida81PBSwkEU9HnT
         HnfVH03vB98O0RxnADQdMAOq0Iba2XviiAxoL8C3MqkTDGfssfNZ7X3PVkLlaEIB+usR
         Y3dg==
X-Gm-Message-State: AOJu0Yx7380vvpLjQaxcfwXaJXLF78LTFjR9Jm+EJF4Wr1sb/cxZOmMh
	zHiXQwc91lpa5J87SdS0IOxESA==
X-Google-Smtp-Source: AGHT+IHa8Pb31leGcq/BfLuDTezKdtxG/yoxKfwEJl9LGFiOL4LSbWDBIt1ehToQWQGdY76XglA3OA==
X-Received: by 2002:a17:906:7fd7:b0:9de:b20c:be5e with SMTP id r23-20020a1709067fd700b009deb20cbe5emr4170846ejs.53.1699865793553;
        Mon, 13 Nov 2023 00:56:33 -0800 (PST)
Received: from otso.luca.vpn.lucaweiss.eu (k10064.upc-k.chello.nl. [62.108.10.64])
        by smtp.gmail.com with ESMTPSA id kk22-20020a170907767600b009c758b6cdefsm3673538ejc.128.2023.11.13.00.56.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Nov 2023 00:56:32 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Mon, 13 Nov 2023 09:56:22 +0100
Subject: [PATCH v2 11/11] arm64: dts: qcom: qcm6490-fairphone-fp5: Enable
 WiFi
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231113-sc7280-remoteprocs-v2-11-e5c5fd5268a7@fairphone.com>
References: <20231113-sc7280-remoteprocs-v2-0-e5c5fd5268a7@fairphone.com>
In-Reply-To: <20231113-sc7280-remoteprocs-v2-0-e5c5fd5268a7@fairphone.com>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, 
 cros-qcom-dts-watchers@chromium.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Rob Herring <robh@kernel.org>, 
 =?utf-8?q?Matti_Lehtim=C3=A4ki?= <matti.lehtimaki@gmail.com>, 
 linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.4

Now that the WPSS remoteproc is enabled, enable wifi so we can use it.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Depends on (just to resolve merge conflicts, could also rebase without
that):
https://lore.kernel.org/linux-arm-msm/20231002-sc7280-venus-pas-v2-3-bd2408891317@fairphone.com/
---
 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
index 307062c1a0cb..c0287d8f4ed6 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
@@ -693,3 +693,8 @@ &venus {
 	firmware-name = "qcom/qcm6490/fairphone5/venus.mbn";
 	status = "okay";
 };
+
+&wifi {
+	qcom,ath11k-calibration-variant = "Fairphone_5";
+	status = "okay";
+};

-- 
2.42.1


