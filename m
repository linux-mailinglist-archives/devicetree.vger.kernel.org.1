Return-Path: <devicetree+bounces-35908-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A9183F2BF
	for <lists+devicetree@lfdr.de>; Sun, 28 Jan 2024 02:33:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 329EDB21943
	for <lists+devicetree@lfdr.de>; Sun, 28 Jan 2024 01:33:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 899E9818;
	Sun, 28 Jan 2024 01:32:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="H0bdGeaC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B066F137E
	for <devicetree@vger.kernel.org>; Sun, 28 Jan 2024 01:32:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706405577; cv=none; b=WoK7Vlrm0qoSZZAQGXGwl5q9TEDg+3qauAF1XS53Rcw7+7t0FIL1pdXNaQXPnWwO9TmApxM5feHf6SrUo8bxbY8L8igbOyCl2RNH6atCg0T/9P6GzQImG+dn1nj/cxgYik0/R+mtL4XUZj5yiaZznlQf+NmuFSpma1kwESbXDHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706405577; c=relaxed/simple;
	bh=V1od66KS+dMJTSlsL7+zUxXYhGjHTLLmLk+FNtFMc6I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hBH1DXMvCQaD2EgUasuV9sJZvjTCYPt2QIhRLE8vq7p550yMB9oxC4dFeVCVFc1MM4I3847tRc8jPlCA6h+Fnw8JAmtKs1mz3nSW3pH94T/sGRZH3v67Y992yy8G3ubIJGpq86h/kc1/PGHiacYYNhWOoh2rIOJKngWDAmCD4LE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=H0bdGeaC; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2cf47acf8f8so16762501fa.1
        for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 17:32:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706405574; x=1707010374; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q9Q1aDcdV3en2hsifnnhB9yh7irCpTeewTvcz663l94=;
        b=H0bdGeaCS7EfRHYDunaq8JBv/oangP1LiEPBBRXCFBxvaxWz+xovNzLt+FYm4IQp9B
         +9I6qz9fNkIzfO9D9QS6hpKuDJKt40PvsUlVJnqQWp47U+lMmVSzB1rIL5p+lUWIotGH
         lLWFjGsv0IVqvlf5KyD6PUwDvjBe+slEvNCSD8PtbEfikXS5REjzQGautCDpvdopDnKr
         ibf22Z7wJZDd9Ng5ciJJCAdotHHF/s9bpwoGIxICo5cEpSep503xVaRpQN3eMWw4BB3V
         Ki2wUVJsRKtDylO5n2eVaS5/ACgLc+uiMFdG18v+T2Sn0LGZJB++jV0TIB7nnR+jkCNG
         2wVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706405574; x=1707010374;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q9Q1aDcdV3en2hsifnnhB9yh7irCpTeewTvcz663l94=;
        b=TUF2HqznzctmDJmKxpW49VY1Fn1xKYJpINGGGf2HuQ4a0MtrGPlCAh2cOMxaf3CdQS
         JUHxRc1O9pqPuFuWeIGEqw0WsbJghybIQMSIB17EmEWaY5vyixEVBKpoYfxnst0alPtQ
         35ybx9/ekchTgWNphmPNsfQvZNsbNV5fGEF3mhTxCZ+7oEn8Z6ZDGSYjAMNgbjVn/N9g
         YLMZRieZExcF1oPRen4iALaB/n3GjMy3Cz4++yeOu/rVvt3nKdko5UFM+fu18OskhTIp
         6pViwDAXmR1hntvjsyO+VtkBGq7zgS7kRlxFCYRVCgi0Z3zK8S49sbkd0YXNFCZ2L+Kl
         IP/g==
X-Gm-Message-State: AOJu0YwPxMb9W8yaSrsYK8NOrF6uVjviJVR59yl8BJKrRUymIK7YFoYg
	+SkiAsBe82hP9muYFK3TGhfZUw0Z3SxZhDZDoB6FZ+OmBIoRcaCC+b4PlFxciWLUAWXHRr/hvan
	W
X-Google-Smtp-Source: AGHT+IHLO6glY04uC4NRSwyItmx+x+A+WJRwKmKVGhltrUkgg0UhI1y6V+7kgeY6pW9SQR7L08KRnA==
X-Received: by 2002:a2e:9ad7:0:b0:2cf:2e75:be93 with SMTP id p23-20020a2e9ad7000000b002cf2e75be93mr1089351ljj.2.1706405573842;
        Sat, 27 Jan 2024 17:32:53 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id y14-20020a2e95ce000000b002cef959509asm662150ljh.24.2024.01.27.17.32.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jan 2024 17:32:53 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 28 Jan 2024 03:32:44 +0200
Subject: [PATCH v2 1/2] soc: qcom: socinfo: rename PM2250 to PM4125
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240128-pm2250-pm4125-rename-v2-1-d51987e9f83a@linaro.org>
References: <20240128-pm2250-pm4125-rename-v2-0-d51987e9f83a@linaro.org>
In-Reply-To: <20240128-pm2250-pm4125-rename-v2-0-d51987e9f83a@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1482;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=V1od66KS+dMJTSlsL7+zUxXYhGjHTLLmLk+FNtFMc6I=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlta7EBPWtGw9ZujPQxSkG/vsIWEvwBDFtsBKcJ
 e69wBD43WOJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZbWuxAAKCRCLPIo+Aiko
 1TpLB/9XEwUpkM+c9GesGr+FNrb6rMhajWf+j6jTkjm+EUBVfvsDCAhBFRpgBvIpZskZWRWriJ2
 Y9M6Ama/K00x6FvLAXtK6nEAIoXytmvI1jqM078nDFFo2eQ+ff2eNokdA+1g4m3uZ2jAlu+cFdL
 wuIF/tLlLJCB/mxE7y3oKrB+SM/IKaIwyrhz7IRSq7RgHQFQ7jqOY4ZK2qiAmSJQmKbg4HhJwnD
 pgRKJDb4P2/yt44ZT3zO96D/3CmuozUzrCv1cVvLuu0gfMeBP2qtur4TrGnMnqzJ4WMK/BuYdgF
 /RWEy9eRK3H3aVQXFO7z40pGIfyroDQSDUlQ7iVYPhD6mEEv
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

It seems, the only actual mentions of PM2250 can be found are related to
the Qualcomm RB1 platform. However even RB1 schematics use PM4125 as a
PMIC name. Rename PM2250 to PM4125 to follow the documentation.

Fixes: 082f9bc60f33 ("soc: qcom: spmi-pmic: add more PMIC SUBTYPE IDs")
Fixes: 112d96fd2927 ("soc: qcom: socinfo: Add some PMICs")
Acked-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/soc/qcom/socinfo.c        | 2 +-
 include/soc/qcom/qcom-spmi-pmic.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/qcom/socinfo.c b/drivers/soc/qcom/socinfo.c
index 6349a0debeb5..a980020ab854 100644
--- a/drivers/soc/qcom/socinfo.c
+++ b/drivers/soc/qcom/socinfo.c
@@ -124,7 +124,7 @@ static const char *const pmic_models[] = {
 	[50] = "PM8350B",
 	[51] = "PMR735A",
 	[52] = "PMR735B",
-	[55] = "PM2250",
+	[55] = "PM4125",
 	[58] = "PM8450",
 	[65] = "PM8010",
 	[69] = "PM8550VS",
diff --git a/include/soc/qcom/qcom-spmi-pmic.h b/include/soc/qcom/qcom-spmi-pmic.h
index 17a0a8c3d656..a62d500a6fda 100644
--- a/include/soc/qcom/qcom-spmi-pmic.h
+++ b/include/soc/qcom/qcom-spmi-pmic.h
@@ -49,7 +49,7 @@
 #define PMK8350_SUBTYPE		0x2f
 #define PMR735B_SUBTYPE		0x34
 #define PM6350_SUBTYPE		0x36
-#define PM2250_SUBTYPE		0x37
+#define PM4125_SUBTYPE		0x37
 
 #define PMI8998_FAB_ID_SMIC	0x11
 #define PMI8998_FAB_ID_GF	0x30

-- 
2.39.2


