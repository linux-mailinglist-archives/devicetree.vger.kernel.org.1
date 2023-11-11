Return-Path: <devicetree+bounces-15161-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 81BF87E8BA5
	for <lists+devicetree@lfdr.de>; Sat, 11 Nov 2023 17:42:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 332EA280E78
	for <lists+devicetree@lfdr.de>; Sat, 11 Nov 2023 16:42:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3517A8821;
	Sat, 11 Nov 2023 16:42:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZjbZDaM8"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8FF614F74
	for <devicetree@vger.kernel.org>; Sat, 11 Nov 2023 16:42:35 +0000 (UTC)
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40F32258D
	for <devicetree@vger.kernel.org>; Sat, 11 Nov 2023 08:42:34 -0800 (PST)
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-53b32dca0bfso6256271a12.0
        for <devicetree@vger.kernel.org>; Sat, 11 Nov 2023 08:42:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699720952; x=1700325752; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=M3dLnnrtnCRPaf3PcG0X+1LuRdRy0oyYETAOWAbZ9EE=;
        b=ZjbZDaM8HR8PDVucdTZvHSFRL9VDD1C7HRquF2Qj+FhZuXBgIsL4cKvrMAdSLra+vh
         7ARNwnZ8rPpuGA6NDssBlzxZBITmKlU0G4NE4NZsawyxqIYU2xCGJrpNCwb+HmXK9EtM
         gQizzm270HJNF8IewSs9Ru0T8DAQ2KBCGCKeXs127ynfoIn0XawWZtiuKOYDKlBM10GY
         AQbwFzFbQME0sZnkQTq93tb/bvgvHeYQl5rIY37e7EvgZTxoeti+RMTG3+KN12ropa+s
         xclm+zHZXQyJ7A80KBA4OAUnbG0l3wNJSRwIT/4A+vA6PYC03Cic1R4DYPa7QBR6gYZp
         8XbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699720952; x=1700325752;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M3dLnnrtnCRPaf3PcG0X+1LuRdRy0oyYETAOWAbZ9EE=;
        b=omE4mqL3i656LJoTEOzGfBZj3sGDeDb/Z5HDS5/ojN+6I9JALm0hP9Br5pzKUJiBHm
         UtOmgL+3y4VlOqpwK0QeVzPH1+g+j+fR+z92Xlknbxbnt7Al//hAbmC3FWTrSd4w78Nm
         0ZmfH3VYYPXxG6Bzdhbm0il/hfA/ETRfk+ogTGibDc/fyAMMXbsnnQLiHpd/j/vIfbLx
         7nWOjEHzyC3qqENHRyp7ihW3cGDsXYeta0Z+RA+H+toZd6eHbaLFEMPuVScNiJt3pz1a
         SCTg5gSU606sffNRcTFGgiJIX+1l5f1YFSF30h7vj5XDmSyCrASmgDcbpgVJSl3TZm+2
         FPwQ==
X-Gm-Message-State: AOJu0YwMj6dmml8FxvtBK2DYQW5MHDorQRd7KfcxMWMMb2ATO1QMvi0k
	g8KISgnMUZGIdCNBflXgoXRGBpNZrQTJBTMBHGM=
X-Google-Smtp-Source: AGHT+IF1jpsrjM3UtSpzuw6TRcBT2uCV+U/eErKJq07Q/dmAe0neXPiNoW/uDvwD3AvZA3KvBK3goA==
X-Received: by 2002:a05:6402:430f:b0:544:4a91:a30b with SMTP id m15-20020a056402430f00b005444a91a30bmr2299104edc.21.1699720952500;
        Sat, 11 Nov 2023 08:42:32 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id k25-20020aa7c059000000b0053dd8898f75sm1161917edo.81.2023.11.11.08.42.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Nov 2023 08:42:32 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/6] arm64: dts: qcom: sc8180x-flex-5g: use 'gpios' suffix for PCI GPIOs
Date: Sat, 11 Nov 2023 17:42:24 +0100
Message-Id: <20231111164229.63803-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Linux handles both versions, but bindings expect GPIO properties to
have 'gpios' suffix instead of 'gpio':

  sc8180x-lenovo-flex-5g.dtb: pci@1c08000: Unevaluated properties are not allowed ('perst-gpio', 'wake-gpio' were unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts b/arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts
index 3ea07d094b60..0c22f3efec20 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts
+++ b/arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts
@@ -452,8 +452,8 @@ mdss_edp_out: endpoint {
 };
 
 &pcie3 {
-	perst-gpio = <&tlmm 178 GPIO_ACTIVE_LOW>;
-	wake-gpio = <&tlmm 180 GPIO_ACTIVE_HIGH>;
+	perst-gpios = <&tlmm 178 GPIO_ACTIVE_LOW>;
+	wake-gpios = <&tlmm 180 GPIO_ACTIVE_HIGH>;
 	pinctrl-0 = <&pcie3_default_state>;
 	pinctrl-names = "default";
 
-- 
2.34.1


