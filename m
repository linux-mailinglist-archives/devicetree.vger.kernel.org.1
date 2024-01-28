Return-Path: <devicetree+bounces-35909-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5373B83F2C0
	for <lists+devicetree@lfdr.de>; Sun, 28 Jan 2024 02:33:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F08D31F2309F
	for <lists+devicetree@lfdr.de>; Sun, 28 Jan 2024 01:33:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F7D71373;
	Sun, 28 Jan 2024 01:32:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="S82W5RFe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D4A51362
	for <devicetree@vger.kernel.org>; Sun, 28 Jan 2024 01:32:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706405578; cv=none; b=rEY4/Zp3uO2wn3ulgorZoCZ2HHVJM31kY9SfHpmaqo391o3U63/OPbT6b1gICRMiGihQZGz6jGmBg5+IVh+x7aZFOB5d/PxSZW707FthPsbYxXffLLkELYGbYN3yOKRENIstKUoSa2odibEXPrcen17Xi5Hy3/CDKyR6F7itNM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706405578; c=relaxed/simple;
	bh=JaKT94RptCBEHogJS1KEczwM4Kx5YqwwDyj+Pj89O9c=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=gwQUl+aQQSItvtBShsLegMowoh1mqA3nCuPtH0nEmbPbmunrZN/Am9exy19ZlkNqnDkRPXcCKftcTqUUwVRHJW7UEn18zOR+hTPlsmkc3uLG6iFR+3RpkSj/Iiej9kNEp4fBlAGfLxqk8jZxuvZ7xHN/KS88nNJ/47NfWxyDLk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=S82W5RFe; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2d043160cd1so1473971fa.1
        for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 17:32:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706405573; x=1707010373; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WsoiAQCfFV0sJjZnlPvgAEXM1QdLcaV3g6qtEIJ5xps=;
        b=S82W5RFeJLG4WStwKSpFhlkJr7ujYJY/QSoCmeZ/QxQsQXsIlBypb06F42k996jYkP
         Nmwu3wSov685tOSU7ZPVZEUz1yM5I7awNhkF2eRdUzkMHgEuRDWq3jNOz5fAqSflzOKd
         BaT+0AZMXfnXwhGYEEoTX1jydrHOeA1A0YGK28GjIyeFt2YPZIs5xwPa8CsF2zx7JK8c
         9keZqLqr5KQHJXkrnXhf/wQVZXvw0HNYCyZOpqKbsSfufIQkRceSaJiMhIoYxAS+lp23
         hcBtCl3FNYqxYLpEj4b7nMmT0qgHre34Y4va3p5TyQGP23WouXUkytwZ9ou0eHbO5412
         1FFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706405573; x=1707010373;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WsoiAQCfFV0sJjZnlPvgAEXM1QdLcaV3g6qtEIJ5xps=;
        b=Gfcmh2Wtwq+f/gFaBWjoT2xX6ktHsGbef80ozsCncQTH1JrDqsed3v7Ar8f8ng4Nes
         TE1cKy2tXgie0QPAPNf/tbz3euUqueaP5wwReoPjgY6GCDNJdS481Ewj2lgLRBg0G+mS
         N5dzzR5w7Wx1dyThHpMTBgT0ooktuz4X9FDV5UhlkNmx1GnlpkJhaoSl7fTgj04mb6Jq
         L6QD0Tap9yvKOuBFWsWPEpp0C7QU+GpWh+55cc3e5j11NK+QOawVwfZZrr8wY3NIqnna
         WrlQi6NMH5k/9TQjhdQjOHHzbCl9RF3pnwrEdjLWRGuvoS1ij4IgNM7RCNCyNV+ljmr1
         UlMw==
X-Gm-Message-State: AOJu0Yxdd+2SYXoRh2ZjXF+Ix8kEQ36emHIW/SO5Wpp3JBefGmJVrRN8
	MvUxaiaZenO8wS/V4BXlZo84WZ8c+dVo0qC8aL039dUPhkBNj6hoSvgjP1nDCtE=
X-Google-Smtp-Source: AGHT+IEmIq+1+AR9VxbTbavhkAGBVoUWo72nExx2zLw/wmd/3wBtaysEcX/ghN9epg/6cei0OuAf/g==
X-Received: by 2002:a2e:9b51:0:b0:2cf:4b6d:3629 with SMTP id o17-20020a2e9b51000000b002cf4b6d3629mr1714580ljj.9.1706405573249;
        Sat, 27 Jan 2024 17:32:53 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id y14-20020a2e95ce000000b002cef959509asm662150ljh.24.2024.01.27.17.32.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jan 2024 17:32:52 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v2 0/2] soc: qcom: rename rename PM2250 to PM4125
Date: Sun, 28 Jan 2024 03:32:43 +0200
Message-Id: <20240128-pm2250-pm4125-rename-v2-0-d51987e9f83a@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALuutWUC/4WNQQqDMBBFryKzbkomJrV05T2Ki1RHHaiJTEpoE
 e/e1At09Xkf/vsbJBKmBLdqA6HMiWMoYE4V9LMPEykeCoPRxmpEq9bFGKdLWDROCQW/kCIcrWu
 aa/3oL1Cmq9DI70N77wrPnF5RPsdLxl/7R5hRadWg1x513deDa58cvMRzlAm6fd+/b3fCGbkAA
 AA=
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1249;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=JaKT94RptCBEHogJS1KEczwM4Kx5YqwwDyj+Pj89O9c=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlta7DFjNEQZo6kPJixFkabtPgYSnb3kXGOfP+v
 Ua215pzaUOJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZbWuwwAKCRCLPIo+Aiko
 1dGsB/0VhOvpL444kUz/LaHPcc9n1SFMOr+aWVuACam4eBKZkQ4U+LFmZm0BqwiESOSUseFyKkF
 lpKrg++Nd4fm250CKEoT+Xh9DubunSMiJ3pmrkZiaq8T4weASw1iyQSS/qEx6xboG46urqJLOkc
 3ZwgxLVR/V5bm5Sv622Hn0okizP6K2tQ/RRBTnm5xvJGb9XRcaaQoZ/ZMVjuQyayIC5UAZvPuro
 CAKp+7zFdLtq5e2aZciDo41xO/w+tQF6aq/iVkAA9bZUCPt3x7CqQDx3RFM/DWZGs1kjJBWmupV
 8/piaW8P0fOjpZ/G+MKgb/ltOrzHuhaefg6r6LemDM0T94Cj
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

It seems, the only actual mentions of PM2250 can be found are related to
the Qualcomm RB1 platform. However even RB1 schematics use PM4125 as a
PMIC name. Rename PM2250 to PM4125 to follow the documentation.

Note, this doesn't change the compatible strings. There was a previous
argument regarding renaming of compat strings.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Changes in v2:
- Rewrite commit message to mention that RB1 schematics uses PM4125,
  while DT uses PM2250.
- Link to v1: https://lore.kernel.org/r/20240114-pm2250-pm4125-rename-v1-0-71a0a103c3d5@linaro.org

---
Dmitry Baryshkov (2):
      soc: qcom: socinfo: rename PM2250 to PM4125
      arm64: dts: qcom: rename PM2250 to PM4125

 .../boot/dts/qcom/{pm2250.dtsi => pm4125.dtsi}     |  8 +--
 arch/arm64/boot/dts/qcom/qrb2210-rb1.dts           | 78 +++++++++++-----------
 drivers/soc/qcom/socinfo.c                         |  2 +-
 include/soc/qcom/qcom-spmi-pmic.h                  |  2 +-
 4 files changed, 45 insertions(+), 45 deletions(-)
---
base-commit: 01af33cc9894b4489fb68fa35c40e9fe85df63dc
change-id: 20240114-pm2250-pm4125-rename-e1f457783bc6

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


