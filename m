Return-Path: <devicetree+bounces-133813-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AA149FBC55
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 11:31:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A29EB188919F
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 10:23:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 436981DE4C3;
	Tue, 24 Dec 2024 10:17:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="r7CUobTf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E462B1DE2CC
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 10:17:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735035477; cv=none; b=iq9+tUzBDLipSUcMGPaC1sbIQtJkFJ9JXSUbH9l9oJSs1eMrSlb0wFLfoVnVSkMNO04D+P8J4GsF8Q8poGbuHjlfKOQ9TJFJop0ur+/mIOGyp9ebisth35SJechVuSkywsStOkuRBgb83T/i84uPwAeQ4MF47SV2aP/QiFJxXDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735035477; c=relaxed/simple;
	bh=k6VUs1ScFCdCh+SFXZEEGEWQ1wMPimPue9P3iT/F5+E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RTvfN3jYiiPsvIONSHTpFTToIak3pIdKhv4P2+fRr9V0uooWv0pjbu29oXnkQagTok/wK9WDNqZNrvQcSug8uOkRIQ7LrlO8IIfIW3zNmJVekPBGGj0XG1GjEMsTnfWfvJMa7RLbOuhaL4G4PBZ80/xhmhNUQdRq8Rte1XYI8Pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=r7CUobTf; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-540218726d5so5221137e87.2
        for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 02:17:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735035472; x=1735640272; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4UBAF6UjiLUGwxXJXXuJ3ndE0M3ekgfexe+qBug5T/M=;
        b=r7CUobTf/1fFewk1btvN+chSegmpkvJrjy5+zH+MfTcQhKdXfGAlYCn6blTrd5Yg3M
         C9elrxCfBNboaYpCdaURXb6wQ38E5sfgzUjcgSDC29fN2TMBdtTzQ7ag2pkp8pFKtBJ2
         Di0R2CFoO5T1MLPI3vB4X/tp4QRMObJi8iGYn6XN17H8mcgwo4XZUdR5UQLlbi/rvGEE
         4w+CZQ9VGDNrjGLF/3dAR6pgS0DliM8fALN24FpjnKz3vxW4YunFl3Qyn1OswuEy2uDa
         PsxG2IQ43On/Xed9pj152s0p50THC4KrLxNqrQxNboiF1Z4S0LtfDV2F+a2+huxk26pd
         qK6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735035472; x=1735640272;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4UBAF6UjiLUGwxXJXXuJ3ndE0M3ekgfexe+qBug5T/M=;
        b=P/5Kdjg/eTryqppo0G+PG6yeZfgZkc0x2aq4RLcNRffzQSAvJl+ZAVYGKRLwizVwnQ
         cMiJxy+DvOaIk1zogH40AnXumzVSofJQdV1a2yPOWcmEX0qg3G3PZzfm2HcmnsuLZaIA
         Se0Sp9kZjKXDnkcV7+wuTFle8Ws8W22QpWM29hy9CuixVSjDF2P4SqDQ9rlim+GQ26aj
         ZjsK6KEjKuh5DrxICRMJjqq58XRqqV33sDmYeayrThO6DmOdevx208XJtBZb0v50QLQo
         slR2mhBsNC+kM5zbJX/A0TOPEYEM7NdHN0sZnGd1kVF4LHKLcIcQ6nRtI8wBLcieJL0S
         8D4Q==
X-Forwarded-Encrypted: i=1; AJvYcCWVekeoFo/HTitNmILBz9iMG2hSJjbGVGRWmECtxxS3EjAXpzrnkagbnrDhvwpgB7A54ej7LrPCuT/w@vger.kernel.org
X-Gm-Message-State: AOJu0YxoGPbLIVT5qOi4+cT6BfMzS2PyprMHnvGUoEWKgkYS0VYNLGnP
	RofAIW4BXwcDUve/XmRmiGNXIUqVveoUJKKssIG8HoPwjlmk72ttuKtP6vudqiw=
X-Gm-Gg: ASbGnct39COX+8fqKY4QWrbNBmZDPvbUyY4n8WlEM3s1XEVqvsAXsRNDEr12N0k4Jcl
	XdpK8dum8pjUY1xGWCNw8hz3nq85ee4AQ1hgm1YRxRzrMJWbJpdd0uiPFyzHY5Cywewl2ZHFC2V
	ZbuH9E0DwuzJk7xMYfOeWCfdGcQ+0xVEJ6qiIBig1U+0ih9wYadZS/Am1f7eIKpVTC6lE7I7rRd
	Ea1k3PZpn4Q1HUwbSZ0hbyNFlww4KEwT/tphewOaY/cM6welvW871SDDO6bn4Yn
X-Google-Smtp-Source: AGHT+IFhqzE92mnnHnLJv0jh8KG4su45vQDbk6bX/SYCD+5XAaIN7MDAofnbrl4J6dKMFO5i4bv0lA==
X-Received: by 2002:a05:6512:39cc:b0:53f:a8c0:22a7 with SMTP id 2adb3069b0e04-542295602edmr5957074e87.38.1735035472207;
        Tue, 24 Dec 2024 02:17:52 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223600596sm1576865e87.92.2024.12.24.02.17.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Dec 2024 02:17:50 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 24 Dec 2024 12:17:16 +0200
Subject: [PATCH v3 17/21] arm64: dts: qcom: sm8650: correct sleep clock
 frequency
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241224-fix-board-clocks-v3-17-e9b08fbeadd3@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1965;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=k6VUs1ScFCdCh+SFXZEEGEWQ1wMPimPue9P3iT/F5+E=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnaooi4JbQ9qoMYHTPz6/B+ss1zW0Z0TZr54dx6
 ApifhuCgNqJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ2qKIgAKCRCLPIo+Aiko
 1aHPB/0fHqSZUYDtdKTHNvB7niV4Y48sLLPWpgxlxEGbqe4AzyPIcNipiJPyUzxGhQ8azo/SudL
 u3LPKCa4hWKWte720ttZXLwnSczS2QpiGwLrtUqLtiBbaN0XKnNRegp4NGvbWSTpW0EV6K51E5Q
 WmUZ5+LepC14bCNF3Xe+LhSAGdPEF4sObMUbRpNZCj1v/Om7UURpGI5bXxR/V//uXCeKRD9TVjr
 EsmZYbVlnZT3rtk+rHegHQv6rQTvmUJITaQXMhZw10qhZ7B5Bvha7QhqyMcpEhfJMtRux1pad3t
 G7eQTyne1qc44aZFpd3yWlbxuIFUuNPSKRyxMwB2RWvnh203
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The SM8650 platform uses PMK8550 to provide sleep clock. According to the
documentation, that clock has 32.7645 kHz frequency. Correct the sleep
clock definition.

Fixes: 6fbdb3c1fac7 ("arm64: dts: qcom: sm8650: add initial SM8650 MTP dts")
Fixes: a834911d50c1 ("arm64: dts: qcom: sm8650: add initial SM8650 QRD dts")
Fixes: 01061441029e ("arm64: dts: qcom: sm8650: add support for the SM8650-HDK board")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650-hdk.dts | 2 +-
 arch/arm64/boot/dts/qcom/sm8650-mtp.dts | 2 +-
 arch/arm64/boot/dts/qcom/sm8650-qrd.dts | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650-hdk.dts b/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
index f00bdff4280af22f6f8b23e33238f53c602bc169..d0912735b54e5090f9f213c2c9341e03effbbbff 100644
--- a/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
@@ -1113,7 +1113,7 @@ &sdhc_2 {
 };
 
 &sleep_clk {
-	clock-frequency = <32000>;
+	clock-frequency = <32764>;
 };
 
 &swr0 {
diff --git a/arch/arm64/boot/dts/qcom/sm8650-mtp.dts b/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
index 0db2cb03f252d19a1f8b171a562a8e06290c8a21..76ef43c10f77d8329ccf0a05c9d590a46372315f 100644
--- a/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
@@ -730,7 +730,7 @@ &sdhc_2 {
 };
 
 &sleep_clk {
-	clock-frequency = <32000>;
+	clock-frequency = <32764>;
 };
 
 &swr0 {
diff --git a/arch/arm64/boot/dts/qcom/sm8650-qrd.dts b/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
index c5e8c3c2df91a49476f49832c0bd6418f4dfae3d..71033fba21b56bc63620dca3e453c14191739675 100644
--- a/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
@@ -1041,7 +1041,7 @@ &remoteproc_mpss {
 };
 
 &sleep_clk {
-	clock-frequency = <32000>;
+	clock-frequency = <32764>;
 };
 
 &spi4 {

-- 
2.39.5


