Return-Path: <devicetree+bounces-97946-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FFCD96436D
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 13:45:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B37B01F22A28
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 11:45:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CFEA19408A;
	Thu, 29 Aug 2024 11:44:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XWBBxeaz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386DC192B84
	for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 11:44:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724931899; cv=none; b=ARghkBZ4QW8yZYDa0yY6wFll/0vMWiFooJbadOcCawyRDyrmyvD8R895jLj3O0hRU1IPtdrKGqO6T0GNsX1DN2M0+DaAsfOztsqAjVhnnNqMgrKBigVHCi5ZOwXEWKIumVo0lMrpujrhfo2d1J4VxW2Tp1rje4kzLM7ZDyZXRkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724931899; c=relaxed/simple;
	bh=rifu9y+wt4GJ7gNsY57utuCZvFmW1ndiWZH64xIQQ/0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=Y26iarMGsHDb0ieXGgjSzR+sXNA35RPq8J5cnLrWpwWIhqyPO/jsAYDQ74AnmEPubVuQwkywIsjGCt3trVcMPVE0+US/d2lq1JRUfMb14an+nSOTpA6ek2/Inq7XRAoPNCaSR4NPlfvivwqitkP+nCQbZdpye8IbxT9NjDJsehk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XWBBxeaz; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3718acbc87fso330187f8f.3
        for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 04:44:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724931894; x=1725536694; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UTJJ75BTgCFdOePuEMj8NMovAev5SO8Nt9BRnbnEer8=;
        b=XWBBxeazZn4vPLEdeDtXJfjHr4BNyyYLlB0V6xVqLWooviK/+Y1ayJd3spYYJENVwA
         RyC0HsMhO+JYLD+ESeOvGPfd0eMJ4BN5D9rFmZFPyHb2LaZLLwF+dlqehtsFBF5kLT60
         MbcR7AW+KtpjCMd6Ktz2289Ljp5UjZggbLsAc0vaYgoN0ncsVo5iidTpt61pKk+0RxWL
         TtextXtVPKauhdAzoTrNqGcbkYgsg9t004yqTJ2nAS8QUHNt136k1rfgVfYaO1CP2KUn
         2geILeeLfcIPz+FIzVMxoRKuMTNBU68SWbr7NGPRr19U44Py7UAtHNw5xnK9Z7yajHiF
         AtMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724931894; x=1725536694;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UTJJ75BTgCFdOePuEMj8NMovAev5SO8Nt9BRnbnEer8=;
        b=htIP5E8msJJZ+5zzQ0UX6Y1JyditYz9k1Zg7/rK5QKo3zJeurmwL9SvD73Gyq5c58B
         vyataP8qvo+olntHzzXD21q1iOIfcLsE0OH0wkKiCrSQ54d/TXx25l9pkyAQmwrEOOcW
         E+hdAnYbnWvGTk3JYkpRha/kF7+soRd0EuRvtF74FDjYUmpKvjBvvVipCqZv8OoGpWzL
         0oMoE388d9YGlqY2kUtDBuT2gWPWDbOIaHr+llyhTvoBDh4fNgo/4h0jgdF7igfNkQba
         UP3Bpn8ySApAeizUYaDAgVu/yUQnI5/J/KsD7LgmAnuPve929DvyTvsNjNuZzvsX5bn8
         Effg==
X-Forwarded-Encrypted: i=1; AJvYcCWX+CaHW29i4zQY837VGBmqPI3YLGMHXtNI4fzbS73Pk2dzZAwmVmhzuYvE2NaGOlcYpwPWxJ3wqNMR@vger.kernel.org
X-Gm-Message-State: AOJu0YxTufectlPbxMe6kz1ATmP9PVevGbyR0vD5CV6di/d801JTr2da
	8gLibAQ85T3fAOKWAKmh2j53v6zK1SBQu550sGC3C/moN1HicQJ5e7evGg92rjE=
X-Google-Smtp-Source: AGHT+IF3Bb5AHMsn6V83npZkzhEqtl8IHuKliErQzeHRx3A8IjB/2CX1xOcGVq2M/99gZUXtWMfQSQ==
X-Received: by 2002:adf:e5c3:0:b0:371:82ec:206e with SMTP id ffacd0b85a97d-3749b52ecb9mr1705419f8f.5.1724931894469;
        Thu, 29 Aug 2024 04:44:54 -0700 (PDT)
Received: from [127.0.1.1] ([82.79.186.176])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3749eead49asm1195550f8f.64.2024.08.29.04.44.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2024 04:44:54 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 29 Aug 2024 14:44:47 +0300
Subject: [PATCH] arm64: dts: qcom: x1e80100: Add orientation-switch to all
 USB+DP QMP PHYs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240829-x1e80100-combo-qmpphys-add-orientation-switch-v1-1-5c61ea1794da@linaro.org>
X-B4-Tracking: v=1; b=H4sIAC5f0GYC/x3NTQ7CIBBA4as0s3YSwJ9Wr9K4QBhkFgVkiNY0v
 bvE5dt8bwOhyiRwGzao9GbhnHrowwAu2vQkZN8bjDInNZkrrpompZVCl5dHxtdSSvwKWu8xdyk
 12zqB8uHmItrgxnAJ5qyPI3SzVAq8/n/zfd9/tQIK/X8AAAA=
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1450; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=rifu9y+wt4GJ7gNsY57utuCZvFmW1ndiWZH64xIQQ/0=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBm0F8xa5YEAa9FuZRS1OBycE6xcniCbIbOGS/y6
 U98evK+7nCJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZtBfMQAKCRAbX0TJAJUV
 VlxED/96h+XA+71H2rlUxudo8nM7UQhWz1VsyDaw7UJ7fUeSR0pWL8NbSj/arcGnPGFGxaT+nX8
 u69xWz/sFyobU0BJU/z+bTI5Ckf07eVK5F/gJAp3YW0LTYXibvSH2f9RloTox4Er2pyw4AlpqMz
 hhfpsLPjgBrSqtvztwIVyKwGueiz4EBIkvNzUgBawPHanxTaub+QSWypvyGjt1UUfwQ3biwgUY3
 IsKKeAstIGWe/ZEieLfvCHZSNz6UBEaNB2myQs31BosoSo/G7hHS1v9zWNoT78f58VZrvbjBBVf
 RJUjUtPY6qnKwsPGzxBTfmUIzYUbUEDzEnaOdZ/kQWw2NKVxWU23Hvi3rsI03LgcCYTnNPZkF71
 3bjiRPL4+YiEA2BMvYp7JCOzG7GVdBeVFhW1seQtaZvn7VDqErRzmdJShHTFsBTeTY5sWbL5OO4
 iOrbk75ZFQrR/pmRl3wBmDT+iBpzo3BXVaArLmjVs030KQBRtx0ub3AXkGi63LH0+CCTAlr2A81
 +vjU3jMI0+oDkCC9TQyRxbm+HpFQORPE168gDyVCMRK6x9YazlvXenz06ctAZQ0Tex2GIyF2s9C
 lIZ3qEV8koIHAIriNTxGm1SKMOZXu4nnRANykQ9kKEtfeFGOsVGaiffdx+5awaHsaCUeTlhzxsY
 fwaAXbb+OEzjIXg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

All three USB SS combo QMP PHYs need to power off, deinit, then init and
power on again on every plug in event. This is done by forwarding the
orientation from the retimer/mux to the PHY. All is needed is the
orientation-switch property in each such PHY devicetree node. So add
them.

Fixes: 4af46b7bd66f ("arm64: dts: qcom: x1e80100: Add USB nodes")
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index 6abff8258674..8a577f29d4d4 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -2604,6 +2604,8 @@ usb_1_ss0_qmpphy: phy@fd5000 {
 			#clock-cells = <1>;
 			#phy-cells = <1>;
 
+			orientation-switch;
+
 			status = "disabled";
 
 			ports {
@@ -2672,6 +2674,8 @@ usb_1_ss1_qmpphy: phy@fda000 {
 			#clock-cells = <1>;
 			#phy-cells = <1>;
 
+			orientation-switch;
+
 			status = "disabled";
 
 			ports {
@@ -2740,6 +2744,8 @@ usb_1_ss2_qmpphy: phy@fdf000 {
 			#clock-cells = <1>;
 			#phy-cells = <1>;
 
+			orientation-switch;
+
 			status = "disabled";
 
 			ports {

---
base-commit: b18bbfc14a38b5234e09c2adcf713e38063a7e6e
change-id: 20240829-x1e80100-combo-qmpphys-add-orientation-switch-afc7f6f25137

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


