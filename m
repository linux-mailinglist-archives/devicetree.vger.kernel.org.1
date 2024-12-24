Return-Path: <devicetree+bounces-133800-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C6DB9FBC2B
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 11:24:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A39831881E21
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 10:18:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 751F81C9DD7;
	Tue, 24 Dec 2024 10:17:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KCBE9Fl1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CF491C3023
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 10:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735035445; cv=none; b=lpLBeVNmEOF8nSUSPFjEKeC6mJeZm7aGP+f0CZmFMcyS3M/hyn/5YH1oM+SvbG/Er6HQNO5XXIwGaqsGK4gxXP63yZe5zX6LYxFpGVkFPkZnoa/pBwChg8KkLmfOWGBTxBWr1Iek7dRjQGHM7l6hTb/ay0iF+QAvJrV7xtYBUDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735035445; c=relaxed/simple;
	bh=dSm81W8OxeK3gTXqKdadDd4ykcQub/N1yof6klx6nCs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CjYmPxrSdGgnCHHLe6JcvYbQRVRx/YutX2PdXuY3s9he6h/8/3vIjME7PSZvwsUfg84d5Ta0mJ+ZdSxahbTOi73Acf/+Jncrk+OSnjRJuBraxMjBM/4E2/z0BH68kULKNhokoLDDw6z+YAjukliNT3zFVUDm3Luf/NOescpH30k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KCBE9Fl1; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-53f757134cdso5511977e87.2
        for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 02:17:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735035442; x=1735640242; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JtqLBuuxq99YjBu1NlJsyy1afZJqqcmeNdDxNGeJwsY=;
        b=KCBE9Fl1dXZ1KQmoFQ7O4/cB9iIn+kzVFyEN01HHyaVBKJGlRCWo7Tl3W768COoyQW
         CJAUIpXPt1Mk9qgzXRK7I5RGVhQRjGDEt0WDr+j0K1k68NV50QWYUo9hq1azC9T+VNF3
         pHjLaZmv+aKIWzWAocCQgzeYT06r23nmhkFR4zJ3IDMvrUtcJPV4ZTDcn0CYT5G4lbar
         8lKPB9eAkVpQoXHoGKZm1Oa0MRB5jXxFolFMZ4ZwuaGDmB8HVm/ul3UuvGDBq5yfft85
         t8xO3bvePQrgamlrzaQ3LzZwo/HdMi6Jf7dCMEl7G5Waw6+lOZlV1hQXoy35lT1gGVbq
         IsNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735035442; x=1735640242;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JtqLBuuxq99YjBu1NlJsyy1afZJqqcmeNdDxNGeJwsY=;
        b=vD/1MQsP2EuvP9G9faduXHxoNwLhLjq8zZI01BMO+EMlaUck/v69kum1AFQXC0OfXy
         ilDhG8UL+iTEFnzuIZhFqqNfY3LpOdll/iEirjG2KkJG4jomYHnuJnDvT4/IY5IlHvK+
         UmjYwxVPIkp/3Q/N8SQsefi3drRl7/B7cb0xcPiIADpyAKqxXx6iZwLt78LcKYJdxLtO
         DI77Umy80QzJy2nJDIvWQCeZJSW7Ih0UYVlshyh0WaF7/2MS+5WMjgHEOgS04RCUAN2J
         utpX2vLjhlQ0sl9Bc9m/Yil1mJhIEvtVZWhiAaogeTSd+gBFOINfSncS2VyaTuZRa5Ez
         S7cQ==
X-Forwarded-Encrypted: i=1; AJvYcCWFDGWeKOmAyXru5sShUWeZpbZokct/4m4G9qFcjmrgewnDJWAJIax7vKs6uy9RyTfCjhKwbkYRtMTC@vger.kernel.org
X-Gm-Message-State: AOJu0Yxnm7kXvk+ySzveNlwZcPls6b8bwEGD0+ArFr/rjwmEqHYx+gtd
	UcKnMQi7pVcndtcjdclZlBY1L9gWxs28BzSL+aGtD1tOoAJapo+c4MJjLoPmKHU=
X-Gm-Gg: ASbGncusZWPltRKRFQerQYNSr+LxFAr7oTlTV0btjMSP72pVXlBXepwutxZC60WSmBI
	RMbp3IfPIDeaMqkRaF9iXK8LtQz9Bve273GXMNoEyoNVITZQdXq9GZf3GgzykMJTPB1BNkFY5IS
	55vffWd/cQPeZVsJU+kel47rEvi/FoMd5VA5egQ5ifcQSFI6zZubuglaZXaOT7wgncr5+MYV4JI
	yC5q+8ZQvT+Occfh/MtyCHeLTNcfRY7LoFVKD7ccYIVwjwqeDk/tD9nlJ3Fs6dh
X-Google-Smtp-Source: AGHT+IF6QJiCqxJuoH8TFWA7zu5t2JOJkZf3Q7UBbClicTBlW+dojDW+a/L90QWnjTJFG837detNUA==
X-Received: by 2002:a05:6512:1396:b0:540:c349:a80f with SMTP id 2adb3069b0e04-54229561adcmr5953634e87.38.1735035441731;
        Tue, 24 Dec 2024 02:17:21 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223600596sm1576865e87.92.2024.12.24.02.17.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Dec 2024 02:17:20 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 24 Dec 2024 12:17:04 +0200
Subject: [PATCH v3 05/21] arm64: dts: qcom: q[dr]u1000: correct sleep clock
 frequency
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241224-fix-board-clocks-v3-5-e9b08fbeadd3@linaro.org>
References: <20241224-fix-board-clocks-v3-0-e9b08fbeadd3@linaro.org>
In-Reply-To: <20241224-fix-board-clocks-v3-0-e9b08fbeadd3@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Leo Yan <leo.yan@linux.dev>, Georgi Djakov <djakov@kernel.org>, 
 Shawn Guo <shawn.guo@linaro.org>, Stephan Gerhold <stephan@gerhold.net>, 
 Zac Crosby <zac@squareup.com>, 
 =?utf-8?q?Bastian_K=C3=B6cher?= <git@kchr.de>, 
 Jeremy McNicoll <jeremymc@redhat.com>, 
 Rohit Agarwal <quic_rohiagar@quicinc.com>, 
 Melody Olvera <quic_molvera@quicinc.com>, 
 cros-qcom-dts-watchers@chromium.org, Stephen Boyd <swboyd@chromium.org>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>, 
 Martin Botka <martin.botka@somainline.org>, 
 Jonathan Marek <jonathan@marek.ca>, Vinod Koul <vkoul@kernel.org>, 
 Tengfei Fan <quic_tengfan@quicinc.com>, 
 Fenglin Wu <quic_fenglinw@quicinc.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Abel Vesa <abel.vesa@linaro.org>, 
 Alexandru Marc Serdeliuc <serdeliuk@yahoo.com>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Sibi Sankar <quic_sibis@quicinc.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Jun Nie <jun.nie@linaro.org>, 
 Max Chen <mchen@squareup.com>, Vincent Knecht <vincent.knecht@mailoo.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1483;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=dSm81W8OxeK3gTXqKdadDd4ykcQub/N1yof6klx6nCs=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnaoogj20Rs8aW8Hkeaud3j5vPOPK3p/qeQoW9U
 3RnNotUY/2JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ2qKIAAKCRCLPIo+Aiko
 1RcxCACrEo4bNVWFuhVh3GPK8a+xv2HPdXbuTuZxU+s0AQayGGLmyRUbRJypctuKcwykTKQzAzY
 WGxJ0M/xSo+noBpTXJdH02JTf1FSKGWNi8gLd8QgkOyNI11wFMHRbmjJQ+cETi/69yjjV8vai0U
 4fpTI6p9o4Imeyy+G7XEEP7DQzKoJCthXSehl6XiGyDZMv8843EVdqOfBgQ7EtLgXB2aymmU8/C
 QwvdRaNNv7p5p1SWAYn9QW1oAeSvZ+lIoEKHpGUfVQAZdPJi2+LAOcfGtHWce7mExvMXr+eIb1H
 WZOdM2t/Dk5LWxlBujSjUOZ2huqOavoQAF+YAvrj/S+qjoul
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The Q[DR]U1000 platforms use PM8150 to provide sleep clock. According to
the documentation, that clock has 32.7645 kHz frequency. Correct the
sleep clock definition.

Fixes: d1f2cfe2f669 ("arm64: dts: qcom: Add base QDU1000/QRU1000 IDP DTs")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qdu1000-idp.dts | 2 +-
 arch/arm64/boot/dts/qcom/qru1000-idp.dts | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qdu1000-idp.dts b/arch/arm64/boot/dts/qcom/qdu1000-idp.dts
index e65305f8136c886c076bd9603b48aadedf59730a..c73eda75faf8206181764df4d1ea32f96c9cfcd0 100644
--- a/arch/arm64/boot/dts/qcom/qdu1000-idp.dts
+++ b/arch/arm64/boot/dts/qcom/qdu1000-idp.dts
@@ -31,7 +31,7 @@ xo_board: xo-board-clk {
 
 		sleep_clk: sleep-clk {
 			compatible = "fixed-clock";
-			clock-frequency = <32000>;
+			clock-frequency = <32764>;
 			#clock-cells = <0>;
 		};
 	};
diff --git a/arch/arm64/boot/dts/qcom/qru1000-idp.dts b/arch/arm64/boot/dts/qcom/qru1000-idp.dts
index 1c781d9e24cf4d4f45380860c6d89c21e8df9925..52ce51e56e2fdc51c05fb637ed4b1922801ff94b 100644
--- a/arch/arm64/boot/dts/qcom/qru1000-idp.dts
+++ b/arch/arm64/boot/dts/qcom/qru1000-idp.dts
@@ -31,7 +31,7 @@ xo_board: xo-board-clk {
 
 		sleep_clk: sleep-clk {
 			compatible = "fixed-clock";
-			clock-frequency = <32000>;
+			clock-frequency = <32764>;
 			#clock-cells = <0>;
 		};
 	};

-- 
2.39.5


