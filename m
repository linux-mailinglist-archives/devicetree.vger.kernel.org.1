Return-Path: <devicetree+bounces-31918-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4569082D1C2
	for <lists+devicetree@lfdr.de>; Sun, 14 Jan 2024 18:43:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 19E86B211DC
	for <lists+devicetree@lfdr.de>; Sun, 14 Jan 2024 17:43:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1066BE56B;
	Sun, 14 Jan 2024 17:42:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="A0lBIeTy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42BEF134A2
	for <devicetree@vger.kernel.org>; Sun, 14 Jan 2024 17:42:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-50e80d40a41so10176767e87.1
        for <devicetree@vger.kernel.org>; Sun, 14 Jan 2024 09:42:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705254159; x=1705858959; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=O1v1apq6ozW0u5jFLbve7v/4N9ygd3uDpwX9iIhhN7s=;
        b=A0lBIeTys1JEQumRzjzKQssBrndcm0Y96PFXE1oyii9eZwOYWFv3ZaQc6tH4gFcErU
         ebi7iptbR65yhjNK/c8SAcd66PDE2Lz37XuY+Ol2h1k3/NZY75727t9Qh/DP4Xat3Va5
         32Yd8AwsdhA+W2w8HOEoCfte8myLAaSxmJzojAGz8j4JlHbn7PEvXWwUpjfHDCbw7RK6
         VlRojBfzaVatwIXywPRVvGw8jCnu8JEsuDtnhRcQdoKTKjoTBxxJJzGE6k3B8DH8GgHX
         gUs7RAtVugstxl0y9p9OdosC7KkD4xeAGeUvOdDfak8PKIN8By3OG73LJhoNPCsYj8Vw
         x5SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705254159; x=1705858959;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O1v1apq6ozW0u5jFLbve7v/4N9ygd3uDpwX9iIhhN7s=;
        b=fIJWPF3Fj2WcKBlEBMzaBPi7lZJF6GJKd4yfY7aJ0HjqGrVOsC2l8SxnhXhaKG2CBq
         LJfVhOyh6DXd3qN7aFT4nC/0eUTUgEhKWGpAI+waKifNxdWESGZUnUySRFumiTQ1OpAs
         wCvEDAByNvz5h6x0WOO4a3WPILrJBM8L58YK7LsVq+kLdlaoyoHojd4bk8E6FBmNCooz
         azf/IJkaCkgjW57CowaBYQ0bnAxiLT0bCEqXgst7CPqNIrBeJLMCi2WT/JOuVPzPCDRP
         3VV2r2lS7p7I6WgwM2tEXOMpLf/srHhhqXwQpV8/Jk9R+O/Xly7LcQoJRRSlXHiw+PpX
         2bIw==
X-Gm-Message-State: AOJu0YzkB3VcN7KI2j3qhvqeOGKWX/B24RBAuHabblrkHNKD1b2WkDrM
	PzHMUXEkhit8yzQHRJeq1mzrwJRNv3ZbR0ywxhcbz4Rk4qkzWR1I
X-Google-Smtp-Source: AGHT+IFxgZxCUEhm1FRLYCT9t1d7TSUspjKroz2f2k8L1aVdBQzU7H3bizfJsuM2TBdPaH2XTEQ6BA==
X-Received: by 2002:ac2:52b1:0:b0:50e:6a21:f9b2 with SMTP id r17-20020ac252b1000000b0050e6a21f9b2mr1722226lfm.55.1705254158824;
        Sun, 14 Jan 2024 09:42:38 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id g12-20020a19ee0c000000b0050e7f5c8a1esm1189886lfb.206.2024.01.14.09.42.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Jan 2024 09:42:38 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH 0/2] soc: qcom: rename rename PM2250 to PM4125
Date: Sun, 14 Jan 2024 19:42:35 +0200
Message-Id: <20240114-pm2250-pm4125-rename-v1-0-71a0a103c3d5@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAsdpGUC/x2MQQqAIBAAvxJ7TnA3regr0cFqrT1koRBB+Pek0
 zCHmRcSR+EEQ/VC5FuSnKEI1hUsuwsbK1mLA2kyGtGo6yCyusAgWRU5uIMVoze26/pmXloo6RX
 Zy/NvxynnDwCfHN1mAAAA
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=956;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=LamNocVv0daRaHc/6bqwTEOg+N6QEUjZyW/PN67uHqY=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ+oSWZ7KJoVuIwMeb/6cMJctz1/VKZeVvlrFxOKbJCU8a
 9FRSadORmMWBkYuBlkxRRafgpapMZuSwz7smFoPM4iVCWQKAxenAEzktjH7Hz71DxFGvAJFC982
 /JnofXrhqzsbklo8G09sZDbnkvN9rbErZ2Zg3Q7rGtlVE6aGpJ+YVuw+mZstP3vZ8tqwAH3Fhd4
 WIYprrs5dOGeKn+QRsTWSifxiNf1yDe5nZY1Kf9xzce5ieMnqZvqhlWOyqZNsja7xWtWdk6b53T
 jezmpeHXtyXr7MC9NCq9X2Jkoc+VeePX73nVu91qar0lCW7emkSGsL9+Pv7R8mzfN5O2nvhJYez
 b9xU/kanhfE5Uy+6TuTV/HWjMqEhqTCNL8lmf9M+5vFNB7pzXnA1C6ob2h/rc9sXn5xczh32p45
 Cz6UbGOSLNruIv/ajGvrMY8avX9lW/bsF9kSMdVt2hsA
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

According to all the documentation there is no such thing as PM2250, it
has been replaced with PM4125. Use correct name for the PMIC.

Note, this doesn't change the compatible strings. There was a previous
argument regarding renaming of compat strings.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
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
base-commit: 9e21984d62c56a0f6d1fc6f76b646212cfd7fe88
change-id: 20240114-pm2250-pm4125-rename-e1f457783bc6

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


