Return-Path: <devicetree+bounces-44085-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D1D485CAC3
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 23:32:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 382BF28401C
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 22:32:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1E53152E1A;
	Tue, 20 Feb 2024 22:32:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TOZOn5yP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8FD8152E0F
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 22:32:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708468360; cv=none; b=mgg5sxHslRx1FI0utQxWh85fVoKivnSrHipyvQ8vZo9IKWgP6ypH0g+GQ0ANSchCcOLC0SWvHCYrINwLYhUBEhclsFjoyq7V4AHYhrNRl3fVmottoRtou9gYuuEOx4Uc877JHh3UHFA9mnRcjj82UrXwAWMkcN04OxQ+N8mLpAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708468360; c=relaxed/simple;
	bh=QyOIt1OC5aenbMAqQ9ERC+S6ru7SsMKlT+Crdyg/cfA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=TCSJBbSn3yN6P+VGkTtrCo3DFaKmV8SoostL65hV+OfHI97JqqXm0nnt9NUL/WwVCydHszczeF4zS2QID+l99miRKh1pwLa2g1o+j0e/mFtWY28hfGXf/GgYFgTLZqg4VhXlx+bK+DuqQwBsR22BrKkO4NiXE5aqh4fwH5jkJVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TOZOn5yP; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-512ab55fde6so4455150e87.2
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 14:32:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708468356; x=1709073156; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LgtT6PN9/vb4CvMjcc7BrErQ70vOwDGBazNSNfsIIvg=;
        b=TOZOn5yPOz9Yk3SQg9Lt05o7SCsqffvXdMXSY4+OylN7hQdUPeKb90LxoXqdSX0wu/
         VBziEPptSkfOfbTW3ukR47Vm5gO5WSvAYFsLfx/f7zweDq8DC9HdN/0fYYYoU9Jwb4GG
         f0q6AAqAte9RcF94wjQ+PYZA20QqP9aMTeR/KJg3++DCRuokBwoefKraVILZ77vbtaO3
         3CfCzZ0Y9vq923LMdjxjBjgdhyjd+hSq3WTYnHxts838fav/4yT6+bVItcRburbt2c3e
         f5saz8ScqEAJga3vV7PphxYxRQY8brgEmx/TGKZM3Km6Bd1h3FW1ZzIVLYIm1trVCTbE
         3TZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708468356; x=1709073156;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LgtT6PN9/vb4CvMjcc7BrErQ70vOwDGBazNSNfsIIvg=;
        b=H5uWk+RkRG0qLypHVG8lZBtPLSjQUuFX8dFCcRYw5+aQfAYQnX06tXn0L5lIxBqhzG
         9/RDurHpbW2qSEdPKNbwBMmIeDMUF4J4Y+nyRMB0pvaaTR7hw8zfcJVE7vYexWGE/1YB
         wjq64gSxC17VEoqoz7J8ABjAjH+XT1dQ76dra+JMaBqZUoMYiKn10k4KnraXMBwofpx+
         O09sy9cdjqs0sSaTYlVOrEd/JelC60hG6UVbGe5gcmPm3YuNOl+MbippIMtavPsLrrx/
         72vkGQ35T5MRU6/fgEtZii23GEsa89QeXUlZiywpZWWaEJ9hNDDgEMe1jy4rzki5ohJq
         G2dQ==
X-Forwarded-Encrypted: i=1; AJvYcCUvGJsJHSpBS57FwvwgB3om0wG8oC97zX7GNtYrZHANpSJXCQOWzD9157FgJncvoTJ4q7wbnzb1VAOxY+5BEn747iqyZd5+RPjvHQ==
X-Gm-Message-State: AOJu0YznamIA65epoa/xmn2pXZIP/RxvjIX8IcdCLx9Mc3bAilz/VPSn
	Tb6CCkKb9Pw/TWvEM5EruFJGRvWc414XgQey5Qyvg0+AfCVGdAnP3lAMuXJ+t6o=
X-Google-Smtp-Source: AGHT+IFtD5Mt7FFgm9jcoyrumPfMVtw/5l1TfI3A5+sL3d8mAIT0Qj17L/JAC9OGI8lX3OYu+IFXjQ==
X-Received: by 2002:ac2:5e89:0:b0:512:bc0f:b9d6 with SMTP id b9-20020ac25e89000000b00512bc0fb9d6mr3528507lfq.47.1708468355566;
        Tue, 20 Feb 2024 14:32:35 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id g10-20020a0565123b8a00b00512b36ee2c2sm915968lfv.65.2024.02.20.14.32.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Feb 2024 14:32:35 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 21 Feb 2024 00:32:34 +0200
Subject: [PATCH] arm64: dts: qcom: msm8916: drop dtbTool-specific
 compatibles
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240221-msm8916-drop-compats-v1-1-71acdab14738@linaro.org>
X-B4-Tracking: v=1; b=H4sIAIEo1WUC/x3MQQqAIBBA0avErBtQkbKuEi2kppqFKU5EIN09a
 fkW/xcQykwCY1Mg083C8azQbQPL4c+dkNdqMMpYZYzGIMENusM1x4RLDMlfgv3WKee9dYN1UNO
 UaePn307z+37my6RZZgAAAA==
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 Stephan Gerhold <stephan@gerhold.net>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1725;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=QyOIt1OC5aenbMAqQ9ERC+S6ru7SsMKlT+Crdyg/cfA=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBl1SiCXqTH2iE3BwcffLxaUmrWah6isegO5dvo3
 BPV2jsh4iCJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZdUoggAKCRCLPIo+Aiko
 1T2lB/sEpMuP7te6sozIKHa8PSxnnGBERKeRJW3QtiKInmGCocoh1Ji9xfCmIGTnEt+Ky9Hxa5O
 JurJpI6nnNSsCvtZmBSXPyJvDBE+J7DU8zlFx2qa5mPz0tkoJ+k9O3GMou+xoyKcT5c6S9W8YxK
 qO6y1WIVt3gBkISLkZ54SASTOdlRwKgtOzkbsFnyK6EsUtLWR/N7nRwIMBiM2UVeW1HWUACDxjf
 4BOsIiHziUJHu4cSzda1rmL12ChW0H7Dbr++YOB/ojt/cZp1e4hypp+XEfo9WPmOiGzaETve/iz
 oj994kk2/ZX1PQBwYbpjMKjfkFL59CKXbjOMlWBwNv3Uiwx5
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Drop two board compatibles that were used by the skales dtbTool to index
device tree blobs. It was required to boot those devices with the
original bootloader, however all users should have switched to the
lk2nd bootloader by now.

Suggested-by: Stephan Gerhold <stephan@gerhold.net>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8916-longcheer-l8150.dts | 2 +-
 arch/arm64/boot/dts/qcom/msm8916-mtp.dts             | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8916-longcheer-l8150.dts b/arch/arm64/boot/dts/qcom/msm8916-longcheer-l8150.dts
index 3a3e794c022f..7f0c2c1b8a94 100644
--- a/arch/arm64/boot/dts/qcom/msm8916-longcheer-l8150.dts
+++ b/arch/arm64/boot/dts/qcom/msm8916-longcheer-l8150.dts
@@ -12,7 +12,7 @@
 
 / {
 	model = "Longcheer L8150";
-	compatible = "longcheer,l8150", "qcom,msm8916-v1-qrd/9-v1", "qcom,msm8916";
+	compatible = "longcheer,l8150", "qcom,msm8916";
 	chassis-type = "handset";
 
 	aliases {
diff --git a/arch/arm64/boot/dts/qcom/msm8916-mtp.dts b/arch/arm64/boot/dts/qcom/msm8916-mtp.dts
index ac527a3a0826..c11a845e91bb 100644
--- a/arch/arm64/boot/dts/qcom/msm8916-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/msm8916-mtp.dts
@@ -9,7 +9,7 @@
 
 / {
 	model = "Qualcomm Technologies, Inc. MSM 8916 MTP";
-	compatible = "qcom,msm8916-mtp", "qcom,msm8916-mtp/1", "qcom,msm8916";
+	compatible = "qcom,msm8916-mtp", "qcom,msm8916";
 	chassis-type = "handset";
 
 	aliases {

---
base-commit: 2d5c7b7eb345249cb34d42cbc2b97b4c57ea944e
change-id: 20240221-msm8916-drop-compats-7f608aa48948

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


