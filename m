Return-Path: <devicetree+bounces-36830-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C788842CE9
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 20:34:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E821F2870AC
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 19:34:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 735C378B5A;
	Tue, 30 Jan 2024 19:33:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ab85R/s6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD13571B2A
	for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 19:33:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706643196; cv=none; b=rjAf3TJAmxLkWJ68wOE/ZPOCFgtUo89CuWaFBF0WbktSc4WFrnPTLA53FNuIjYSvn3bSJ0Be1ndv1CfmEta3R86e139aooVvgrlG4GXUy5XZBiD0f+Na7F3BEansLN518pL/h+nWCMzfPwgUMLcg/Rd5d5E7FN8k0G2mgsj5tek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706643196; c=relaxed/simple;
	bh=IL29Hu06ETjd2I3YqtJT2IfRVdAZgg30VpNjrHf4T3M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VJfgK0Zj15Tha0jKNvYNRF2Vkf7c55cBPzBTRbU4bjKXrXwpjaZ1QchOyabWFLPKIjFp2cIwZDglyEdacO0wLQXYAdyYt57oPtQOrEiS9M1sQKq65nPz96lhDFujAK2zl81RXDVgyRTK1R0SRI2ky/1nRZwuA9XuM87LyFu0sxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ab85R/s6; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-50eabbc3dccso5423907e87.2
        for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 11:33:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706643192; x=1707247992; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pVzjB+NEKVKQaVgQT6g9bAJ2cO4yPIaGvtI2br/tvlA=;
        b=Ab85R/s6JGAPrDTN4ejz0BBLleWQxH4MeWgva78KlQJlq7D9dXTtNDhMZ34csaES56
         e+iJaoSAj9df5kqTqdDcoM8nW4T0X3TexZ9JIrOjk4wiNOEkqMtLkV/cbgkFB3oBQi79
         3CHgitTP+YHrPcVEvbZanm3BKUeH2wAierJRYIGP+SRcTGo3nByetcaBzFp6NSNli2Z8
         d8m6Jk7ZfJ4vU1sYEVtZEVJq/LGRyK2Vm6xs23ueTm/8i0Yn2plPSVcNsZIH5GsW8Xfd
         kGFbT2Ne1LpOyqJo0wpn+KmgFj3g6kC1T9Be8aqg3GFuqIrhA1hM9WtnhzhKB5U9OL5x
         ecyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706643192; x=1707247992;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pVzjB+NEKVKQaVgQT6g9bAJ2cO4yPIaGvtI2br/tvlA=;
        b=PurJk+TD7lZMw6S2L0hCU8W4s6bS0ozrPP2VH3hOq6J+Qj7DlpelrQahf1CJh3JgCs
         mktj73aTAZxMkDLbHZJ/dk7rsclYBjDE/rx4sa1rqutLEiFN/kPd7MT9omB1BTUl0ik1
         SPKzEpZr/Ti+7vTUbEUG1jbidYldZm7Vapfese4Lu4N/Hew2hKKybE6HWK1NR3JMxLM7
         PjIO/G13P536sZpWGitNZCJpfmFrGDKexNW/FkAA3zWUYRIJsKyvMtHlGjlIo5RAL/li
         dAnB7Or/uYRMl9HydrNgrPu0s2xyH0BDBUDNr6L17rpMH6qCrB2LVXlOwuvJI9Q9YTb1
         ST7g==
X-Gm-Message-State: AOJu0YxY2yMFIYEmmOrLAlUZsM0frX1uIUYk5aFznqF2Fixy5Ua1UsEP
	8h7qrO4F12h2kv4tARbChyTtDDXUjmO39Aba31ADeBAIZblWqLelSexSbAf5M2I=
X-Google-Smtp-Source: AGHT+IGiQK28/YiEsYnmNaU+nLTPpB8BDe1317RBbYf3h+6w+cod+sDFd1UyD7WKsJExGhBf0zUlXg==
X-Received: by 2002:a05:6512:2385:b0:50e:7411:2489 with SMTP id c5-20020a056512238500b0050e74112489mr7413770lfv.31.1706643191796;
        Tue, 30 Jan 2024 11:33:11 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCUTHR7xUiphkEq9RGrxKSegLij0CRmdVFoHkXrTX9hL8tEgDpBt6bekz7E8hTjcVslBejjn5AKH3HyDI4/k+FnlON67EK7U9rudynY73lLisMlFCvIAAk371btBfO/Fb82Xj6Ad73gcExAfm0nu9Va5r2sDvK7zqkIoKci+9pNPzE6TPC6e4hvtWwx7awgtbDbJ20i5r7Z8H4zzy/9RKu/g+bmHib4u9kpDbQT89cutG46yiDVWMQ8lYeOb18bxskHHekKcT59c3URG70HoQQwL7Rq62z3yny3hixidtwLTJ/oQiIfPnICAMt0JCIz/8Ra9BzXSZR9SDL8PDt+X1z7x6WJPHHBupI+Q6hEL/hUvmIKv3GU0qy/CP0rk6AYJMtnQcSCUGawdXLz/skRU2lW5YAR5E/JzngVArNhFUWJLONzFWHFzXuvIG4fgel2fXzUpSAlgE7YR/8r3dWvXTUbcMRr6+khDwi3I+kmLUucmBB1LpR7qDG7Lu3J89IiEgAAaNeQDeRGJsMgdhstuD3SIRakLxt3LoFOKtzhs9lblL01YWXAyAjTu40bog3Ya9ZgJGWNHZcs+UlDMegHGj5rmwEAlFJhMontKNDTBd72Nj6r3uLEJOv6oyK+GJRdMNvuuK4xUAq1MfX7iFQp89g==
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id u25-20020a05651220d900b0051119371e7csm366525lfr.120.2024.01.30.11.33.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jan 2024 11:33:11 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 30 Jan 2024 21:32:58 +0200
Subject: [PATCH v3 5/6] arm64: dts: qcom: sm6115: drop pipe clock selection
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240130-pmi632-typec-v3-5-b05fe44f0a51@linaro.org>
References: <20240130-pmi632-typec-v3-0-b05fe44f0a51@linaro.org>
In-Reply-To: <20240130-pmi632-typec-v3-0-b05fe44f0a51@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Guenter Roeck <linux@roeck-us.net>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-usb@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1621;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=wEs3G4BN2jvm9ubuHnr4m3jDp0kNKwVXGsFZOFxEnyc=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBluU7yiN3PjWS6NNnL+pEa/SwDpwS9NY9hrXH0N
 jdgzO82S52JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZblO8gAKCRCLPIo+Aiko
 1bsOB/9ZHXp6IN9uc1PDjhP+Y6dBp7sVYjWxLb2fUI6r3NTbFbJbsr7LU5HYnPcZuaZrcynXLKu
 6ckqJLz/BzyPPvHVADS+TcY7mXivx0EQMzZTWx4MGoeOAqgC0AclRbt0GD8a1FNGB3YF6YICY8n
 m2m/2f9XhO5h8Ih1ANJtXEuCOLgIu7PoNF488Z68TiICS8VKPbUxdajqjQXOwQ4o7YxNDSxOO72
 Qd3h/2bT546UJ+wk/Neq5ReV/wyFu+ulnCYh77oQzUgSE75UEp4x79Kb/bjq0LXGGISx0ZFN73F
 Im1SdkAk6PjyH4Lq1qt0F7ogJqyBvKW4XzzfKXGMKfC4pUBt
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

Stop selecting UTMI clock as the USB3 PIPE clock. This setting is
incompatible with the USB host working in USB3 (SuperSpeed) mode.
While we are at it, also drop the default setting for the port speed.

Fixes: 9dd5f6dba729 ("arm64: dts: qcom: sm6115: Add USB SS qmp phy node")
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
[DB: fixed commit message, dropped dr_mode setting]
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Tested-by: Luca Weiss <luca.weiss@fairphone.com> # sdm632-fairphone-fp3
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 4 ----
 arch/arm64/boot/dts/qcom/sm6115.dtsi     | 1 -
 2 files changed, 5 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
index 7c19f874fa71..52f31f3166c2 100644
--- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
+++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
@@ -607,10 +607,6 @@ &usb {
 	status = "okay";
 };
 
-&usb_dwc3 {
-	maximum-speed = "super-speed";
-};
-
 &usb_hsphy {
 	vdd-supply = <&vreg_l4a_0p9>;
 	vdda-pll-supply = <&vreg_l12a_1p8>;
diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index e71cbdef7784..e151b874eaf3 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -1606,7 +1606,6 @@ &bimc SLAVE_EBI_CH0 RPM_ALWAYS_TAG>,
 			interconnect-names = "usb-ddr",
 					     "apps-usb";
 
-			qcom,select-utmi-as-pipe-clk;
 			status = "disabled";
 
 			usb_dwc3: usb@4e00000 {

-- 
2.39.2


