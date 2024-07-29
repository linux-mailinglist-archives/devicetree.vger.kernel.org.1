Return-Path: <devicetree+bounces-88877-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4570393F38D
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 13:05:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B90B21F2264E
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 11:05:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9ACB145B07;
	Mon, 29 Jul 2024 11:04:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iJCh7IZc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF3D5145334
	for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722251096; cv=none; b=OtjYWCEMC4zv5pIXHwVLoDfsV+slRGRPZSKlRewSHEhGl1Ks+6r4ie1GN/wjtjvCXxyN512daLFWRPelcih+34cqxMgqcjWgZLBtBhFaJyhlRUzh5ZanjZL2p7W4G69RUbDRdDSi4KKVXEeQNfsgScBa8ICRSFySLr6gHiE6gpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722251096; c=relaxed/simple;
	bh=H2Muob7dk11oRV21anlzfmTL75LiqgcTURYex0h8N/I=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=gjqNR8oo20s5vjeXRVfHdrzZQP57RGsuTBo+QBMHTk21hZsbvuztKUFxMnJY/DgnkBUeALla9u39TBeTsq6sGYmbXHKZ5UhCh3I5AMDWciQzHUWBQBQdlohTc/9hmp7KCMXwYDws5f6Vi/NrRPsO4Xq6p44PCLTUGjblEUfqrgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iJCh7IZc; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-52efbb55d24so4772976e87.1
        for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 04:04:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722251092; x=1722855892; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fAn4RVxTnpgnao4vM7hy07ohwvLBby85rLUIHJlEjok=;
        b=iJCh7IZcR5ZMSi+224/bVFlCl32FWvRUj/71f9GktXpCJEnigwklbDXv8XEujwt7Cj
         wprB08Iu1gYCRaKawwCDPMPNlcoV2+JHcQ2B8IR7k2cjyQE5N7NKLAfXLP+NzQUOyyvB
         KBADTqllRDFO3YJzXJbQAMxFu0ohVKzt+Ncf6+aRmoRQdTuOsCBO3W9sbCBZNh9AEx8Q
         lGPLA1QXnaw9eVVzrT5ECp4TQIoqRukujRnKdqULq2mjY7cY5LG/pvhmTz+EXJadZuTm
         jOvWUT2v91QqPGo30il+9QXI/bfIa+/w5TsOd5Z1y/VwyhQVUxX7AhwDqPIC9o++IIFj
         O+yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722251092; x=1722855892;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fAn4RVxTnpgnao4vM7hy07ohwvLBby85rLUIHJlEjok=;
        b=RlxrYGTSSoty6ISQZvV55pmVEx8YDUq3F20U9IttX2rod6eqetdwlKJLpp3tsveIIq
         ESajieg9PU4GkQvcRwWN9QJTvjcrAGCRXF9PqEhCPzJtdN+qCaltQ6PzvJy5fz14XkvL
         pVjRhdTc2kHJcOWchCZcBe2TDa4+o8cp17I8obdJI1Sli3v+AhOPC7g+vhP1JmqotiCl
         EdkfHOQBpw0Bgyo9kZ13SRY5/BAFowC9+Zy+qgZP+c68WOb92U6e1vN5/yX2iHFdP7Gg
         yHAfhriBzizKyfX02baIpWG7zDZ1bR9AoVDnCk6BBRY5a9+VjjdaRudqmgP/To3R+4YM
         fvdA==
X-Forwarded-Encrypted: i=1; AJvYcCU0K4ZRMnQtrdS/aZ3nb09q2ftFkWfodlS4wy6O6qEUAsbCiD8knxbMxX1sIw1XDFuGwV+GaJC05gUfhXtUfDhFlz68SU/1R7mhIQ==
X-Gm-Message-State: AOJu0YzO/NlfQMEXVFf+vd7rIrjyzqAyVlv2MzBQXbroxKncTXNhavxZ
	lUmERoQpoqflntnUyDQzHwr8dBnM7QC2IR9hLblWbhGTbWoBvhVuvFjarRIcnAMAMpfmpf2RQII
	e
X-Google-Smtp-Source: AGHT+IH/kP7pAMTn1q68QbNIDyPd3UjktcOBDnVWdWcd34XE8UaGSIaKLrcRBYDZIHIXLFiIqe9VkA==
X-Received: by 2002:a05:6512:606:b0:52c:83c7:936a with SMTP id 2adb3069b0e04-5309b2cac07mr5526622e87.42.1722251091848;
        Mon, 29 Jul 2024 04:04:51 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52fd5c09093sm1457806e87.172.2024.07.29.04.04.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jul 2024 04:04:51 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH 0/4] soc: qcom: fix rpm_requests module probing
Date: Mon, 29 Jul 2024 14:04:44 +0300
Message-Id: <20240729-fix-smd-rpm-v1-0-99a96133cc65@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEx3p2YC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDcyNL3bTMCt3i3BTdooJcXUszU8NUC/NEy6QkAyWgjoKiVKA02LTo2Np
 aAPqVPI9dAAAA
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Andy Gross <agross@kernel.org>, 
 Stephan Gerhold <stephan@gerhold.net>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2167;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=H2Muob7dk11oRV21anlzfmTL75LiqgcTURYex0h8N/I=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmp3dSjeXGRToe4IvLPl+bO4gAoxQn90haPCAmq
 RTxCRFEqF2JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZqd3UgAKCRCLPIo+Aiko
 1cEaB/4tIGYqvwox3T1je/qKjFL1+J0nnPzxWZIcvUz2qVDvRG7x05O/mZmmi/aNsGzoNKavvTk
 y/UicNfKlq2NaEK375rVKdkRnQQ8OYPeg+g/VkesprzK3siBK9e1aNtVJOLIAVSU1agfHH/NGif
 dx63r6Xi0IR5fzZPCYRmNHtLMNL+UUCYPsEx86d7ddZHpqOgqDxd35ql1v9haCdy0LW3EL+RN9M
 eB+UEa/a6IuVOxjGATfJknL49vNxOQ5BVD4Or4KIZ7Pp2bqp2lB4T+CzEv3Hi+LLFgVNvlCkmJm
 Xi/GMEfpeq2F9u3PAJVi28Jo3ZTK0uYa2tt0mYaG3O4nB7NY
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The GLINK RPMSG channels get modalias based on the compatible string
rather than the channel type, however the smd-rpm module uses rpmsg ID
instead. Thus if the smd-rpm is built as a module, it doesn't get
automatically loaded. Add generic compatible to such devices and fix
module's ID table.

Module loading worked before the commit bcabe1e09135 ("soc: qcom:
smd-rpm: Match rpmsg channel instead of compatible"), because the driver
listed all compatible strings, but the mentioned commit changed ID
table. All patches in this series list this commit in the Fixes tags.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Dmitry Baryshkov (4):
      dt-bindings: soc: qcom: smd-rpm: add generic compatible
      soc: qcom: smd-rpm: add qcom,smd-rpm compatible
      ARM: dts: qcom: add generic compat string to RPM glink channels
      arm64: dts: qcom: add generic compat string to RPM glink channels

 .../devicetree/bindings/soc/qcom/qcom,smd-rpm.yaml | 52 +++++++++++-----------
 arch/arm/boot/dts/qcom/qcom-apq8084.dtsi           |  2 +-
 arch/arm/boot/dts/qcom/qcom-msm8226.dtsi           |  2 +-
 arch/arm/boot/dts/qcom/qcom-msm8974.dtsi           |  2 +-
 arch/arm64/boot/dts/qcom/msm8916.dtsi              |  2 +-
 arch/arm64/boot/dts/qcom/msm8939.dtsi              |  2 +-
 arch/arm64/boot/dts/qcom/msm8953.dtsi              |  2 +-
 arch/arm64/boot/dts/qcom/msm8976.dtsi              |  2 +-
 arch/arm64/boot/dts/qcom/msm8994.dtsi              |  2 +-
 arch/arm64/boot/dts/qcom/msm8996.dtsi              |  2 +-
 arch/arm64/boot/dts/qcom/msm8998.dtsi              |  2 +-
 arch/arm64/boot/dts/qcom/sdm630.dtsi               |  2 +-
 arch/arm64/boot/dts/qcom/sm6115.dtsi               |  2 +-
 arch/arm64/boot/dts/qcom/sm6125.dtsi               |  2 +-
 arch/arm64/boot/dts/qcom/sm6375.dtsi               |  2 +-
 drivers/soc/qcom/smd-rpm.c                         | 11 ++++-
 16 files changed, 51 insertions(+), 40 deletions(-)
---
base-commit: 668d33c9ff922c4590c58754ab064aaf53c387dd
change-id: 20240729-fix-smd-rpm-9651e87a9bb0

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


