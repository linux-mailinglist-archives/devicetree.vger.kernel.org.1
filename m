Return-Path: <devicetree+bounces-64331-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C6208B8E09
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 18:21:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8D1E41C21A0F
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 16:21:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 852BD1327E0;
	Wed,  1 May 2024 16:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zlPpjYyS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00D23131743
	for <devicetree@vger.kernel.org>; Wed,  1 May 2024 16:19:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714580394; cv=none; b=fYH2dTsORSs9zC17Hq/4NNFDmU/YVApzHU5jjcY9ayDKBe4R4FvbhSDu6bCEyvG8dSwlTrDL7OCYKzIG2T4C5Mmvg26ZcuCYDuPmkqBavi88zigk1kUduK7Hj5inEkYvzimg7olQtB0r6Z/5Z2yz/MKyVEZl3KIHF7wKkAmTNXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714580394; c=relaxed/simple;
	bh=crSGRR+b7lbsWsWhLmgSfaIcD39glncVkDnT2aotG1Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bUuL5b/m+NO+8CHT4w/KZJw2fWmLHqmi5RMqLcQkDRUwKpIlLnyFEFYLMoPCHT5YGe0vnNVB1E34aAjmTOTDwREWAKJZDD+U/aBA+D2/4CVeyJZXndULBXX1Z39PliRUSMTAQRf831UUuT39enhW8P2lKEVzs/6TZmNXJPsXPcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zlPpjYyS; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-516d4d80d00so8850846e87.0
        for <devicetree@vger.kernel.org>; Wed, 01 May 2024 09:19:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714580391; x=1715185191; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Nj3BTK0l+BT9bbcti373frC3vH8O2ITnLgMyO1UCPOY=;
        b=zlPpjYySgI2U4YdfFTX5V3btER9DzrnvEP5uoYpju08QZMMr7r1JpYs7hqA+gUu1Ap
         4rLapQ9NB2JeatSpfrbCgzokRQHigqIrqIUBnVVmWIqFp7E5hyBfWBewk+ZSUN4fHpRb
         QNaxclOqbqTRaOR+lG2pQoRl9vvCHYMoYMU8G298Gmjv9HBQFTBQOJcu3BAEA0l6GgE6
         4REqauHehw0RlEawvCaporOHLXqIczP31JPkg7ObvOX9F/rUDAMIgmLsb15mxRQ2EEEc
         LE8uAdcqEOwwakJKSwUNKVpl8mTWXse307KSJZIXoYllAlqfYQ9nhF/bj3V74u5Q3yaW
         25dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714580391; x=1715185191;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Nj3BTK0l+BT9bbcti373frC3vH8O2ITnLgMyO1UCPOY=;
        b=qw8XBtsPLUIm7QfWvYjzs5XCQsCSds273MRwf5yTG83DJO3jQJg876BpTcJoyqjcsE
         KYGqvIYL/x/bbyLppZe/kmrOaJ3b5jYUWrLC9+xY+D+/ydk9BRSm6PpFSO4p6TghBYnS
         LmK5Gd452B/WIvsRWF0m3lbcxqdSCQVD9kvYh7zzXRRcEgGToFmfBRkw4zekAxF+CTvT
         7HJWUK5MKCJMo0B9jrR+2oKqVUnkqZooEHTMztzWehlEPoLLc2wjLe7LGl+rSz3SPCkk
         vvpsgDhwfTUBp1E31d270abR2tXvpU1tiUAP7YF4EMzOkcEGDOtCSHqeuz1dlto4XcxR
         JYxw==
X-Forwarded-Encrypted: i=1; AJvYcCV2mb/uPMoBzGt5JsFdZHmmXKlpRYxTyDHA67lE1UC0Ou+hnL/ubbchpsx3y3UK+AUkkNGLe7aHMcFjMYUWaZ3v39OebdbmvuaQiQ==
X-Gm-Message-State: AOJu0Yxrw7IlhO2N3SSFcsE4k7Jd2LoaKRnkOknKRofQ1a1mIBd2AHYg
	I1gI6AWcLY5IUnuE1VzRJmwFCNGLzK07Njt9NbGSRlhy2TFgYPAkyfnaRUkm9G4=
X-Google-Smtp-Source: AGHT+IH5tqWHtCRAr2aX7+ZebCNeZ1p+W8axFzTMuyk7E9qHpzR2YiJ6RxjCDXO5qhQMUA1fIaS6lw==
X-Received: by 2002:ac2:5d46:0:b0:518:d5c5:7276 with SMTP id w6-20020ac25d46000000b00518d5c57276mr1652942lfd.58.1714580391344;
        Wed, 01 May 2024 09:19:51 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id d30-20020a0565123d1e00b00516d0029383sm4909306lfv.28.2024.05.01.09.19.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 May 2024 09:19:50 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 01 May 2024 19:19:36 +0300
Subject: [PATCH 10/13] arm64: dts: qcom: sm8350: add power-domain to UFS
 PHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240501-qcom-phy-fixes-v1-10-f1fd15c33fb3@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=767;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=crSGRR+b7lbsWsWhLmgSfaIcD39glncVkDnT2aotG1Q=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmMmuZ25x9RMFNxGeyyvINVNZjaMJ2VVrf0SXZX
 QiGBYnfYJWJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZjJrmQAKCRCLPIo+Aiko
 1XWlCAClFYNBSTiJ7a/SX/3RNxoq7j6Bny31sT04H37W7qPEcpq6UNiGYiVBrFycIriY8gxYID1
 Q3GRx5qRyz2E2Kb8vGrbiDZ6zD20WfC3rMaxnyQYl+g/XF9PfILbF/xehPX5FrmfTztd5vS+IH1
 JGV5svWgNvjGT+JZFbbvHKwPIuBllHI/Lu9bU2+ux/Ud6w0Xf2Md3zqQS9a2dD1U8zJ/SR1qyL8
 zmqLGweUuncnP8g4kI90eN0z86UUC62nYvjxohj1sVFmscsgA9j+j+/DBALhGwuhcTAFcylurZz
 62U6E5M5elS0/FvwuyusWgYvK/IMiUFvoNLvrjsaqjF+g8y/
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The UFS PHY is powered on via the UFS_PHY_GDSC power domain. Add
corresponding power-domain the the PHY node.

Fixes: 59c7cf814783 ("arm64: dts: qcom: sm8350: Add UFS nodes")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index f7c4700f00c3..da936548c2ac 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -1779,6 +1779,8 @@ ufs_mem_phy: phy@1d87000 {
 				      "ref_aux",
 				      "qref";
 
+			power-domains = <&gcc UFS_PHY_GDSC>;
+
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
 

-- 
2.39.2


