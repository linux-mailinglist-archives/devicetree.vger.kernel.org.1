Return-Path: <devicetree+bounces-64327-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB918B8DFC
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 18:20:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 771AC282D32
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 16:20:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6168813118A;
	Wed,  1 May 2024 16:19:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IdfmugaW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347F3130A4C
	for <devicetree@vger.kernel.org>; Wed,  1 May 2024 16:19:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714580389; cv=none; b=FDq9P5RNW6qatAaZlhz5Ia/Mi3kyvgLqhznks6bkxXIrJ6OY4bchjoNy38LT8v9e1L2qoXngJoprSGpg1/NYveJi1CL/AEdFAnnidrtdjO6oxP4P7h+3winsOWmU/vDzD++mhXjnBYqtW47kL52K6YvMV0Gz8lFRECc1qvOn+dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714580389; c=relaxed/simple;
	bh=reMWTTafaerBcmGlLpLFc80Ucy1bb2eDytgF9WWMKMs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=c9qQcZqZrtDfFpPS2eGO3HN6OAwuxrPlkK5jckaHRf6Q0+vz87uyfDUFDF3Cxn4ShN8JYK2laeGoV2XPyYT37AYa7YX7zyAN8IFDd4617A1MmMulML3y+ZbP5+v39VO6UMjcqtDn2lUNXM+VicqnkA0n4pOgeUOPuX7Vq+eMYII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IdfmugaW; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-51dc5c0ffdbso4089879e87.2
        for <devicetree@vger.kernel.org>; Wed, 01 May 2024 09:19:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714580384; x=1715185184; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IwZX91+fyu2v2To8YAuRlrp8mqx8VMi7WeEYZ8W2110=;
        b=IdfmugaWSeyXpO2StwaTnxwkaWa6JaXS97XeG6Qbg3RDtkbgft1cW02UXxljFDq2gS
         Qh3RZGBoMRyiKiWN8qmArqcs+tlpC+ZT0CesXVfCJCUiuNVBIsJf+16hIrBtAdWFq6AJ
         smZcF8YHO5JfDAl2zDiqbXG5H5fc6OdmHAG+aOA1mZDcm7g5S1A0yM2DuCjTKHfu2Tfn
         776KWErcHy2uhuZaQ8YWOMmGgPoCMmIREySKbI+5V/mgdv2jvtxwakjiZg6sOgw5mSYc
         rN7xIyYceZz4fOZ5zuDDKGtnmRkoXOEO6BPQZtyJZK4036Smlbb9AGCKtCvvN2NajV8e
         O7Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714580384; x=1715185184;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IwZX91+fyu2v2To8YAuRlrp8mqx8VMi7WeEYZ8W2110=;
        b=NQmwFcNJgJHNxAe17wk9nHmz+kDXwy/aPTjtWYnWtqHlno7/tWVlqXLsp5jKkYER2V
         NKBKhEIiL0G6rorn40YInx/YpwzzZb18dHHjL2If7eL5gSNHZZb/NdT75kITq68oWltO
         3E9K7zWqvWfTsekOIHhm0sAh/2UvDPw7O+gzHwFum+22njrXE5KOx4K03RfzDZKwf7fy
         X1NoAH/D2Y98ypvDDnZmC14Y1OEXNvsyKa4CH7WYuM5L1G8U/tx1Pvg572deVAK3V/V9
         rSvHUpsz0xgvuIgpbK1A8pCEMMXqjVYG+W/VhBlvV8GjJRCI4oqk+J3K5WIpPsBLp1Z0
         vAzA==
X-Forwarded-Encrypted: i=1; AJvYcCWF1JZOZ1P2RHocO0DzO5XZZg6wHKTBe+NT6811tSLKFRVJ5z113ThVM4xOz6g6CDuXkAjP3DOHp/Hihv4WHZ3Qh9W9Y4gEmMeXkg==
X-Gm-Message-State: AOJu0Yzlo2TBOwRgnDzbpJP7OIhnGlfu7xSya3vv46N4FkAvPPAL7kdr
	Z7L0AWUh8AVwahNgvYo2+Py9Jr0yyCjtUCMng+7Omk+yBXEgL8ZMRPDUkieMaZM=
X-Google-Smtp-Source: AGHT+IG20sfl5EC5LLMXV4kcmeBO9vuLq7BnZkB28yj2/hwiT0Ze317OhVo+dSt1B/qoF7/EUeM7XA==
X-Received: by 2002:a05:6512:20c9:b0:51a:c207:12b with SMTP id u9-20020a05651220c900b0051ac207012bmr1484187lfr.37.1714580384459;
        Wed, 01 May 2024 09:19:44 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id d30-20020a0565123d1e00b00516d0029383sm4909306lfv.28.2024.05.01.09.19.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 May 2024 09:19:44 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 01 May 2024 19:19:30 +0300
Subject: [PATCH 04/13] arm64: dts: qcom: sc7180: drop extra UFS PHY compat
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240501-qcom-phy-fixes-v1-4-f1fd15c33fb3@linaro.org>
References: <20240501-qcom-phy-fixes-v1-0-f1fd15c33fb3@linaro.org>
In-Reply-To: <20240501-qcom-phy-fixes-v1-0-f1fd15c33fb3@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
 Wesley Cheng <quic_wcheng@quicinc.com>, cros-qcom-dts-watchers@chromium.org, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 David Wronek <davidwronek@gmail.com>, Andy Gross <andy.gross@linaro.org>, 
 Evan Green <evgreen@chromium.org>, Douglas Anderson <dianders@chromium.org>, 
 Iskren Chernev <me@iskren.info>, Luca Weiss <luca.weiss@fairphone.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Yassine Oudjana <y.oudjana@protonmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@somainline.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=921;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=reMWTTafaerBcmGlLpLFc80Ucy1bb2eDytgF9WWMKMs=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmMmuYIw1k7/VIRimo91ElHCaDOpuIa1DpOZFh5
 D3ntjMul7CJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZjJrmAAKCRCLPIo+Aiko
 1bdyB/sEzD7K/i29E4xVZevYaekOPnK7qu5JW5OuE58rlBhVIZh5KWgpVKh/D5gQTDhIJpEAPwJ
 YsAcrlxEZmMRAf37N6fxZXLt4ko3t+Bz+5g8AdjnTu35CZGn0C7MKf7kvwjCXdck7mVHdtcHjwl
 etrwmLHSZJ4fH71QJxL28NV525ecyKhdPDhEsobzRwFbbKWeC3K3gwuPb3omnkeNb8DonIkc6K9
 fl3DLEXEI6fbI/0DzrepZwefeoiXdF8EgI+BOvLIT17BS4Di9iub3h6U4WiSRKjl+EeKGs2XlNj
 ij+BpqdPkSwxVBUk/Kiuz7l77s/0pa038i0pakrJFhzq9ynU
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The DT schema doesn't have a fallback compatible for
qcom,sc7180-qmp-ufs-phy. Drop it from the dtsi too.

Fixes: 858536d9dc94 ("arm64: dts: qcom: sc7180: Add UFS nodes")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc7180.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
index 4774a859bd7e..52d074a4fbf3 100644
--- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
@@ -1582,8 +1582,7 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 		};
 
 		ufs_mem_phy: phy@1d87000 {
-			compatible = "qcom,sc7180-qmp-ufs-phy",
-				     "qcom,sm7150-qmp-ufs-phy";
+			compatible = "qcom,sc7180-qmp-ufs-phy";
 			reg = <0 0x01d87000 0 0x1000>;
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
 				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,

-- 
2.39.2


