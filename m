Return-Path: <devicetree+bounces-14311-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F75A7E39E5
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 11:35:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3A2B6280ED4
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 10:35:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D30A228E06;
	Tue,  7 Nov 2023 10:35:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DySTqw1o"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62AD228E28
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 10:35:47 +0000 (UTC)
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1865BED
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 02:35:46 -0800 (PST)
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-5431614d90eso9066009a12.1
        for <devicetree@vger.kernel.org>; Tue, 07 Nov 2023 02:35:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699353344; x=1699958144; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zkKRn9nghMmuE3432di/HrZ3jPO+EnQVaOT7ILYUMGE=;
        b=DySTqw1oH4L8CxUNXzEYI69y2IpeHVSWWyppXdu2iWnJ7pUYwquPpqYe4YY7kZlDXG
         fr2Q9ttTdXbikQ0gHNB/zvvDSRarS48rINUV4MUB2tAMGkMCPwwohs+4X0+ywhSwr0gJ
         iZKlqCXxC0lw/z+t9ocM9chbUN6eAPYQ2Rbv4pUEy/uyXfNfu6NGz9CHJ1cRmuKuzqXx
         rMuOPak1NB2FYHO50aCZBFA8iFNmH545A2iH1lIB7bJVAF5C2SETF7vlMtqYKl7fe+IW
         jIpvaPSuuIXYA+e4dzu6kVcjFWW6nNVRMD03Az/m/aKCMmdC3MOurZqqjdgCjklGMdji
         EXCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699353344; x=1699958144;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zkKRn9nghMmuE3432di/HrZ3jPO+EnQVaOT7ILYUMGE=;
        b=ClvijmYdk8RfFJ7UsWiYdBtQI0PVqib7a7tauyAhRX0pCzNAIXg8gbrxq2FMri0lPy
         6ub7EHAvtqP1TsaP10ZVSMUU7QAyZtyQh8WcKUuYYoExjREetuOnh4nxjXiJI5PrZ09y
         BimRWIJDPjKGaJXRW+C011uIHe8KSE6zMukCNUh/NqfqIq2/G+2/AHV2wfJGEC6g3tHj
         WeFqgI7uZpMMMnRlmNQqjheCUcUR1sbO+k5kQYHux4f+caqZ1zhxQi5HGauKtenAHmRc
         Fj3fsNgRHPJT49Zvdj9h76VMn9rd0eF/l1TByM/H1MZEkmJezgis/XsKG2eXdFudV8c8
         kBzw==
X-Gm-Message-State: AOJu0YydJOYKTxjHGGHs2CAk6RL2LiEkh3NcY4F7EBY4AAt6GBb84Jpa
	AzU2VmEk2LjZJJssdcqtGH5xSQ==
X-Google-Smtp-Source: AGHT+IGbq1apWVW+o6Ak/B4q0Y8orYYZgw7fYmEJLabNmjpjG6BX1jMi4mVWmlF/VW0RoFwzxrjn6w==
X-Received: by 2002:a17:906:c141:b0:9dd:82b4:4221 with SMTP id dp1-20020a170906c14100b009dd82b44221mr9050148ejc.2.1699353344574;
        Tue, 07 Nov 2023 02:35:44 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id u21-20020a17090626d500b0099bd86f9248sm882998ejc.63.2023.11.07.02.35.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Nov 2023 02:35:44 -0800 (PST)
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
Subject: [PATCH 1/3] arm64: dts: qcom: sc8180x-primus: drop sound-dai-cells from eDisplayPort
Date: Tue,  7 Nov 2023 11:35:38 +0100
Message-Id: <20231107103540.27353-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Qualcomm MDSS Embedded DisplayPort bindings do not allow
sound-dai-cells:

  sc8180x-primus.dtb: displayport-controller@ae9a000: #sound-dai-cells: False schema does not allow [[0]]

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8180x.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8180x.dtsi b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
index a34f438ef2d9..73d9e8039e32 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
@@ -3117,8 +3117,6 @@ mdss_edp: displayport-controller@ae9a000 {
 				phys = <&edp_phy>;
 				phy-names = "dp";
 
-				#sound-dai-cells = <0>;
-
 				operating-points-v2 = <&edp_opp_table>;
 				power-domains = <&rpmhpd SC8180X_MMCX>;
 
-- 
2.34.1


