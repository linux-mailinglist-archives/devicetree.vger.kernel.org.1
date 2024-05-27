Return-Path: <devicetree+bounces-69381-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 866298CFBF0
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 10:45:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3BDE82823FE
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 08:45:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A76D313C83B;
	Mon, 27 May 2024 08:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Zz949cJ1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83F5013C3CF
	for <devicetree@vger.kernel.org>; Mon, 27 May 2024 08:42:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716799374; cv=none; b=gqK4p92ICq6MhNhiN7JHl1YubpvrH1hNIMWezu4/gPXQGoCOQXT8dxYuLE/+FQS+hayVNScoS+Oyv/M/Dogsm8buFy/radoBE1RtLSWf0sT7zmeh3TdRv32QNrnPiaIPyue61MzaNBtcRIZP3mw6LZrKDLEh7puyzsdoDbFy5Ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716799374; c=relaxed/simple;
	bh=EQYEM+nXLwVomhzLq6K3CGSxN/j1/41Ke38UOW9m/Bo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AcWrz85EDC7tSdQpSNZO2ZkcpgB11LaULj2r49F/q2/ESnDdbhiiIXTBUq+v62Z4vklpiNC0FVOplSN3QwqU7QOgStlhEiqmXd8UwPJ5d9AmVUmAz1WWC6TEAJcJMUzELZC5usAtK9BDcW4U9dLgO3bx1x9ZgrutZVd2mlDB6eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Zz949cJ1; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4202959b060so77601235e9.2
        for <devicetree@vger.kernel.org>; Mon, 27 May 2024 01:42:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716799371; x=1717404171; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gv4XcgrE+Sm06cvS3N6RCuploOyylX22ILl1HxMDPcw=;
        b=Zz949cJ1iHpBqRJ9gpdjUguNXC9uuToxx1LAsgH0CPHeLKIAeFAuf6U9SxrkbgTgux
         LZcuaMQv9YAkuuaiGqCnDpDcbKobTBwyofQT572VubOBseJHsZ49OBSgVhTk2HdGZdUz
         PwEPb7HGeOS11Qo4KuprrFTwzvBefJfj2alzDyZsZAz+WQ69Nqb86wvO6GMsqsLzzUIR
         3adRFEAXyvGy97GRHCx4c2Y0uIwQtCuEsulXg/AUj4MRiKeGz8Pq+4T+OjBVlxvY/U27
         nMbddPQEZ8p+Kb59hmyN+01/xzmZRFebZeyKlw5LWyv/EUUL3+2uWPRnUxWsOks4QaWU
         U3dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716799371; x=1717404171;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gv4XcgrE+Sm06cvS3N6RCuploOyylX22ILl1HxMDPcw=;
        b=Fa73STf0vXx98c0JXNIkoE3dH0eJNvY8KPfWPWGs4s82vqj2m7TZhKtMP8qYXfHVVt
         gL0X9bDsrnu2yrSLbrepjSAAdB42vkM3HQPCVzjSamkGkZNuybRvW8DlClj1fJyFstcN
         Zsg+SHaeTHVprqRQjBSblszCpgA8qerOR4U0b/+Z6VBc6gVBbippyDRHzhznAM3ENPav
         SUVeIOP/x1ymPbGTADR1/ThzD5buLCRif++fdL88HrulUdkr4DUdwMOfW5JtwEB0xTg3
         ru2l/y4sn95UlCzCPRydp83LPAtphuW4SihujwtfRICqvMWrb0zyIE2BAqj97lgXBS++
         31tQ==
X-Forwarded-Encrypted: i=1; AJvYcCWOLPGzhbiDuhLvoFn8Alc/HxLAZ2NhDfoZanxTjcVoasxfidfmJ2GLe6Cmb06VEowhP6YRAH0pAqQviokQ2cCAz31l8hYIUO0NQw==
X-Gm-Message-State: AOJu0YxuNG8J86FBx15ixlS5t3FcfS4QWsO3TwBUx9Wo2IKuivgXE2Da
	hSCOsi4S7h+RoJAJ7LAK8TuTOEijfr6Xud6ODbTjVaPLm4MvWfi9gC51vNhqWcD42/cPIuI4pEf
	3IcE=
X-Google-Smtp-Source: AGHT+IHF22FK1+Ks6DxIuwzLPxEi57/bXJbpsEkYmUSNcM8jUjUfiNgSqFkwncWDon6TfTyIOBiLnA==
X-Received: by 2002:adf:f48c:0:b0:354:f90c:63dd with SMTP id ffacd0b85a97d-3552210f11fmr6175693f8f.0.1716799370947;
        Mon, 27 May 2024 01:42:50 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3558889fb57sm8447292f8f.114.2024.05.27.01.42.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 01:42:50 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 27 May 2024 10:42:39 +0200
Subject: [PATCH v2 7/7] arm64: dts: qcom: sc8280xp-lenovo-thinkpad-x13:
 allow 4 lanes for DisplayPort and enable QMP PHY mode-switch
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-7-a03e68d7b8fc@linaro.org>
References: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-0-a03e68d7b8fc@linaro.org>
In-Reply-To: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-0-a03e68d7b8fc@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1314;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=EQYEM+nXLwVomhzLq6K3CGSxN/j1/41Ke38UOW9m/Bo=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmVEeAHBZsJopuIKCfsXkjV2XRXahXRubswN6LvOMY
 WusZGAeJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZlRHgAAKCRB33NvayMhJ0f+hEA
 CdjaqatyiAaFU3k1VieZt3QmCuHnjKxT4lgrTMmAKQxCydsv6Z82g1Vi5hugt8ZZ73C5iXvHSAn8kK
 lOHQ2h7F/uFFFnfyIPl9wWPLnwo4f80hjcjDdcQ4qWKIMqdKyu8EKroW76xvNKQTZ7JFxpVQLy3B35
 qAzYO4DuzIMFQN8hfCloPuH53SGceSqzMoluoYoVudwwXG/+WD1guBLIP/QWjPY61P+6dfoLv0Znkh
 oUCaigX/PO/BOUc7XAmzvy47Zrn29i+SO1M5NgV5C6Tcftv5z0vy+l1regR5jowBpxEpIYedIrKhk6
 XbBJnWvF05Fqkw7hPajqX8QsiCEA59lo++GQJ5q79K4IFY1dU0Qo5IMY/Vnb2ucN9GLyTvjM+nO5O1
 3Ch6HkJy9Jouan6hTwNzE3FOv0+r8T545yu3hy/SJiN7ZrOlN1+By0WcuTiKIV6IaV0nMGhK42nJkk
 1bzatzIoi7XCux49BBqxN/5nFIwiQxgoKh1t7xV2cQHnMve74czLScmjmccl0+nYMqz402l76+Mln9
 meH2oWuuCRHt31GiMgVauvFgnucIXdjXjcwo8cXaO9kv2bRwpjX6pG+K0fnrpIr28ykj2Gc9NID/vi
 txRALFfvbNwq4GIYFlYHLRDZFKQeT7evtqN04nYxv/iNQEiK24MBgHfDrRMg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Allow up to 4 lanes for the DisplayPort link from the PHYs to the Controllers
and allow mode-switch events to the QMP Combo PHYs.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
index e937732abede..bcd38831f9d3 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
+++ b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
@@ -593,7 +593,7 @@ &mdss0_dp0 {
 };
 
 &mdss0_dp0_out {
-	data-lanes = <0 1>;
+	data-lanes = <0 1 2 3>;
 	remote-endpoint = <&usb_0_qmpphy_dp_in>;
 };
 
@@ -602,7 +602,7 @@ &mdss0_dp1 {
 };
 
 &mdss0_dp1_out {
-	data-lanes = <0 1>;
+	data-lanes = <0 1 2 3>;
 	remote-endpoint = <&usb_1_qmpphy_dp_in>;
 };
 
@@ -1143,6 +1143,7 @@ &usb_0_qmpphy {
 	vdda-phy-supply = <&vreg_l9d>;
 	vdda-pll-supply = <&vreg_l4d>;
 
+	mode-switch;
 	orientation-switch;
 
 	status = "okay";
@@ -1180,6 +1181,7 @@ &usb_1_qmpphy {
 	vdda-phy-supply = <&vreg_l4b>;
 	vdda-pll-supply = <&vreg_l3b>;
 
+	mode-switch;
 	orientation-switch;
 
 	status = "okay";

-- 
2.34.1


