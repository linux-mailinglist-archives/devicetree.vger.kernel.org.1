Return-Path: <devicetree+bounces-79311-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D5F1A9149B9
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 14:23:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5BEE51F2359A
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 12:23:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3045513C3EE;
	Mon, 24 Jun 2024 12:23:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="A+dboVAt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D62C13A889
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 12:23:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719231830; cv=none; b=fv5baONHcu/ZjV+nUh3cg0dKE8FK2qZVd+0ejwcaMMMUPqXmZXeJPlifgnqWk4W05uKu6VsDw/eGlYOVB5XitJBTWgWxNS4j+uEQtbRKkFILCV9zr3B1kj+GxoIyYOzrQPbwi4uscaXhNBP/zRylIBLeQyUtbziasUzAPbbTtqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719231830; c=relaxed/simple;
	bh=0JLcBlxBF1CQ5EouiC1Dz7k1uVMBWlZ5X6xh42cSKM4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fCbEN3KJhvGYl4f3AaOfN7Ijo2KbjsgBjJI3r+H01Y1GGtETQRuoh+JP2BcJ8TZYje27rAa2a4sUj19csNxbAnZY1Hagw6ZaCkE438sk8IPGp9XmthFpGmaisZAlMkvG820nh452imcYgeN1XvAs9GP6aArg2+NtGaW3BrCy3vE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=A+dboVAt; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-57d1012e52fso4827336a12.3
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 05:23:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719231827; x=1719836627; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Odx0fLzh+4FMy3cnjjmB3Hy+zkRCziihVyVwsUQEb5w=;
        b=A+dboVAtG+42HQlYWI/SmnVNZwJ1gkm4dTfmsaTPpLonD+2p7XheJpfy4pzqf9YP56
         P1B+3uERrRxdZCAUdvr+8QOPR2GSiVUY7Qy924Qw+dHEUJEodPzOazkcxbrLSzFtrn2y
         UtfkvzSoox9+Hawj8a+euu2d1RUKcPdhUMb78pczBVaPwob8hPpwY6ByOqRaBZqtuXf9
         S1F/04gd5Sr4Idsey9ZUv7rB8a4HUryt7LBhXHU58qMC4cdLnVmdYUPiMEhVEktnEtaq
         8ZWFtMXYa1Dpr8eW2naWaxuD/KsGn7T2EmGeNBdcAgGI1ysARvGwrgEkfzsL4eNEVsQh
         Zrlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719231827; x=1719836627;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Odx0fLzh+4FMy3cnjjmB3Hy+zkRCziihVyVwsUQEb5w=;
        b=HX50k9pt8qJH5lAXE6VgfqjUhbrkGJhH2+kbTx0yBS3YpscNGwPjbDIo6KSUDGXmQ3
         nSpItD+OdSE+m1zw8rcB3MMNSa1rHUGao0bLb9a3ZXLlOWjVItLT5SAHQkrTHvaqqwB4
         dUoMNLNTdO9xrRU6S5e1RqBZZoBEJidKA6UwcoQBeQjAMyr9QywPei+6/k42ZRDR8VYk
         CVK88eomxhhFmYD9/6b2o+XX9cbw+/1Hl8jO0Ppdr6gAsKbq+Nnc/zmc622Q3aW7S4BJ
         neuEh79BrsNfuAdTWfunvQXNn1q3a7xqVA/vqZ6aBp0ylVcj6WDAaHHM/xh+dvB6OugJ
         9pew==
X-Forwarded-Encrypted: i=1; AJvYcCXrvJF6lS4wFeaXzOgvTE9Fe2mQq8z+f5MTuSO293npCGoK1uCZGDjl7S1D5xIWlNPQGem52DDezIJguSoDf4m72Hewau7lxGpQIQ==
X-Gm-Message-State: AOJu0YxSMM2zwqkb7BFIJx+oGGKWWa9vs1oPibt7/m9a5fxGY86gu4Fy
	gMwrAVNADtOuSLhUMxlS9HWioA+fTBjGzPv314pFdoItOB8K+94Ffwz1FCdn9r0=
X-Google-Smtp-Source: AGHT+IGxlFHDX1ADf1sDQI9KjtUXLyAsqamQKZLJTTUq7sQxeUmjX75UnGfM5wS3MaK8MLjowVWIew==
X-Received: by 2002:a50:9b42:0:b0:57d:10d2:23ef with SMTP id 4fb4d7f45d1cf-57d4bdd96aamr2171763a12.42.1719231826709;
        Mon, 24 Jun 2024 05:23:46 -0700 (PDT)
Received: from [192.168.0.113] ([2a02:8109:aa0d:be00::52af])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57d45496336sm2946824a12.22.2024.06.24.05.23.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jun 2024 05:23:46 -0700 (PDT)
From: Caleb Connolly <caleb.connolly@linaro.org>
Date: Mon, 24 Jun 2024 14:23:42 +0200
Subject: [PATCH 1/3] arm64: dts: qcom: sm8650: move usb-role-switch to
 sm8650.dtsi
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240624-b4-rb2-fixes-v1-1-8d763ee4e42e@linaro.org>
References: <20240624-b4-rb2-fixes-v1-0-8d763ee4e42e@linaro.org>
In-Reply-To: <20240624-b4-rb2-fixes-v1-0-8d763ee4e42e@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Caleb Connolly <caleb.connolly@linaro.org>
X-Mailer: b4 0.14-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=2264;
 i=caleb.connolly@linaro.org; h=from:subject:message-id;
 bh=0JLcBlxBF1CQ5EouiC1Dz7k1uVMBWlZ5X6xh42cSKM4=;
 b=owEBbQKS/ZANAwAIAQWDMSsZX2S2AcsmYgBmeWVQtP4Ui74DzyiwuAGnvGLYnpA/uUISm/YAt
 jIZHx3GjO6JAjMEAAEIAB0WIQS2UaFGPGq+0GkMVc0FgzErGV9ktgUCZnllUAAKCRAFgzErGV9k
 tuoZD/9TJnnMm4mxFnjTTahkjMfFYZI/4q94ZJ+htE6JvKySoVFp/fODw5NV+Lecy+7UBAvSmVh
 b+zUKk3Bdb72AbLHmrTNEzPPROG3LqwuE+g4GW8PvA+8QELzTmp994LT+5HB/zmlNq8bpUGZw1D
 tbSmPk7JciMBzGxdDZxYElLXIRF1l5otwuCd0u4ysU5Gqwwa1Fs0lytzK+hYHP4RpW0CGuWTGzA
 ZhdQ+EFVyE/uIxdJvAgRPZ4TNo8WW9lefGojHgXI3KPXnpVooIBCcIaYAjqZWLOfX4MCtMfGrOC
 L5IRNgI9NBpg+Aj1twV4ogR6fRTUO7pKhkbDWzFK0mvdZp7/8dKCh6dMV23rgEMy6fkKNrXXS5F
 phy2evxNtTGyoPN3KomZWQwrdq69WDHTud4A91X4kd/9JwnaTp2L/+ZlQHsTr76r1xH3KtNbg5I
 cuk4lp8mwbUkxmJ1UJuvT3XHSJwjHfwqOyXrRvVs8ZOOVkRtCQaLNFkXnCzTEiPo76P4NDkX1yd
 wHcpr7XQtpcpDL7dcs/KWYChRRG7v5umLPcsctn5A9Gavn+R2JljmrQkNBZ6+DJ9cn7AWrgMtOE
 FPcefPjNLWBdPkHd/GOXige1TxAUxY3oeivvJEtbaZ7qDteSnsIA9bFZMXJDdj0qE0P4r8dOayi
 xZ32dbDDOWW7u9w==
X-Developer-Key: i=caleb.connolly@linaro.org; a=openpgp;
 fpr=83B24DA7FE145076BC38BB250CD904EB673A7C47

All sm8650 boards have role switching capabilities, set it in the soc
dtsi to deduplicate things.
And drop the explicit dr_mode = "otg" since it's the default.

Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650-hdk.dts | 5 -----
 arch/arm64/boot/dts/qcom/sm8650-mtp.dts | 5 -----
 arch/arm64/boot/dts/qcom/sm8650-qrd.dts | 5 -----
 arch/arm64/boot/dts/qcom/sm8650.dtsi    | 1 +
 4 files changed, 1 insertion(+), 15 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650-hdk.dts b/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
index eb2f910b4f58..092b78fd8a3b 100644
--- a/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
@@ -1300,13 +1300,8 @@ &ufs_mem_phy {
 &usb_1 {
 	status = "okay";
 };
 
-&usb_1_dwc3 {
-	dr_mode = "otg";
-	usb-role-switch;
-};
-
 &usb_1_dwc3_hs {
 	remote-endpoint = <&pmic_glink_hs_in>;
 };
 
diff --git a/arch/arm64/boot/dts/qcom/sm8650-mtp.dts b/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
index fa6c3b397f2d..d6f91580ba8d 100644
--- a/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
@@ -839,13 +839,8 @@ &ufs_mem_phy {
 &usb_1 {
 	status = "okay";
 };
 
-&usb_1_dwc3 {
-	dr_mode = "otg";
-	usb-role-switch;
-};
-
 &usb_1_dwc3_hs {
 	remote-endpoint = <&pmic_glink_hs_in>;
 };
 
diff --git a/arch/arm64/boot/dts/qcom/sm8650-qrd.dts b/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
index 6e3c4d8dcc19..bd60c2770da2 100644
--- a/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
@@ -1285,13 +1285,8 @@ &ufs_mem_phy {
 &usb_1 {
 	status = "okay";
 };
 
-&usb_1_dwc3 {
-	dr_mode = "otg";
-	usb-role-switch;
-};
-
 &usb_1_dwc3_hs {
 	remote-endpoint = <&pmic_glink_hs_in>;
 };
 
diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 8af151d924f9..8647ca314506 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -3857,8 +3857,9 @@ usb_1_dwc3: usb@a600000 {
 				snps,usb3_lpm_capable;
 				snps,usb2-lpm-disable;
 				snps,has-lpm-erratum;
 				tx-fifo-resize;
+				usb-role-switch;
 
 				dma-coherent;
 
 				ports {

-- 
2.45.0


