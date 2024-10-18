Return-Path: <devicetree+bounces-113005-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F1E09A43E5
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 18:33:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 29EEE1F24379
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 16:33:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E3962038A1;
	Fri, 18 Oct 2024 16:32:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VF12KmUo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E849B202656
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 16:32:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729269170; cv=none; b=cdPQccfmhJmgMU+o5CsCRFMCMAgBGZP9F5lIei+NZ9RSzj4Z6/P44LgVb2dnOtdFLOBQ4bbWAryNV+Katv/Dzz3HsA3i+/tJZTrxB1h32s5JMsk+fbbD95q5/Q3QgL92olOKx0X7WKzrCiQPLwvfsP6ZTzjcidVqMuCwlChtAsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729269170; c=relaxed/simple;
	bh=NGrWOmQi7UKWLaQ6cFebKNXqsVRBsNMsyK8Cwo1wgcM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dOwP6ikRoWFtBdzxpevRulaaMjUIJwiRgaVLDOB37iDiw6ivEm1ZCGadNyVk5k7Dm5lR/vCewIHTZR84IabQsP/GnoCqvrExPQ7KnnqqaqCjGHoaIIx9ia8x8FIm0x+zwL/d28S7T/Rq/swuwGOXnNDwrm1TUuIk8EieyfadlZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VF12KmUo; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-53a0c160b94so236234e87.2
        for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 09:32:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729269167; x=1729873967; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2x0bZyfZ5ha9oKimkx9pUvKAIB8mH8xfgHm0APH6qvU=;
        b=VF12KmUotFfOak8BWrv9+dYB+e3Yaas2/n9IEkPJUdwe81DHy4V3mjwoKypuR3PUht
         +0KjOG95glTlTy/F7YpUuUaxY9h7dG6ggQFwBS02m70nGssoFrFlE9qe8NhVSC+y1cC+
         8c1ep8N5IowD8JD/gxHVv2uKQUkwmZUkJOAjJhlcChRn3CCHrTtJjJvI9+fnNtiJeb8J
         ykB2j64tiU2fDx9bQ7iwfjkCt+6FBiCX5Lr2IrRzTntig4GNlsXWkrrIiKwNHyHr2HBZ
         SXykQTEqjDFuzxlTYLKcP6NNhjXaJnvViHKBTvS80kTKytXz7CECFZBR0G3Fkw8Hc585
         huuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729269167; x=1729873967;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2x0bZyfZ5ha9oKimkx9pUvKAIB8mH8xfgHm0APH6qvU=;
        b=SVjsNBsHXMe+QkQJIa8zuOeFpHa8FfjCC/U8QKVmWlagskpEX75LsHb+3WwjpFJEoq
         kgKlFIN+epcXRqIEBYn4qyFtV02x+LU4eO8TRFnmw8S6evQPBS9IZjGT2A/77dI3z/5/
         GT0bt0kr0sNqg0QryB+nTX45BQ23RwxzVK6osvaA1WBs1B42fHXvnKo+4U/IO185OBrn
         mgUxYL9WX/iwTleP2O62iIBewoXNeoxWYepbbcfSgGuXeOXvBSGSrIBAZSsLFDMVi6NK
         bkPZgZz+2kmlJsE5eDSm+3GIRSrd0Ag+ba0IuNsBRU3A9NYqOh4lT/YGAAhNA/nDfLk2
         4icA==
X-Forwarded-Encrypted: i=1; AJvYcCXmFgqOb8TtYympQhq9LGhiKTXbP6wUKD+BY4jpvmlG8UNc/L7Om7juf3pnDT3wnolGYJi65dYA1E8k@vger.kernel.org
X-Gm-Message-State: AOJu0YyuMYNm1wIXb4jmCF9vdkhTtmBWPD5THRNlSFrPW4I7yYe6mwBV
	jaWZTG2QGEQXnoBQu5GdkOs0y5v5PfCA0Cu5QLBvfzkRfQihDFMaiNoCcy9nrs4=
X-Google-Smtp-Source: AGHT+IH1/o6xUnJs4CxRD2RxVCBb85sKv+33arvjeRmgC3qexg05j0xzpl2Qv4fwCA0kwsl1TXPyfA==
X-Received: by 2002:a05:6512:308d:b0:536:55a8:6f78 with SMTP id 2adb3069b0e04-53a15219180mr1996964e87.17.1729269166941;
        Fri, 18 Oct 2024 09:32:46 -0700 (PDT)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00-70b-e6fc-b322-6a1b.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:70b:e6fc:b322:6a1b])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a151f0b67sm259486e87.126.2024.10.18.09.32.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2024 09:32:46 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 18 Oct 2024 19:32:36 +0300
Subject: [PATCH 1/2] dt-bindings: arm: qcom,ids: add SoC ID for SAR2130P
 and SAR1130P
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241018-sar2130p-socinfo-v1-1-b1e97ea963fe@linaro.org>
References: <20241018-sar2130p-socinfo-v1-0-b1e97ea963fe@linaro.org>
In-Reply-To: <20241018-sar2130p-socinfo-v1-0-b1e97ea963fe@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=978;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=NGrWOmQi7UKWLaQ6cFebKNXqsVRBsNMsyK8Cwo1wgcM=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBnEo2qMyY2Muc8q/rllRU1BEKmc+jFf0cEXNkhL
 4nN1x1vVMqJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZxKNqgAKCRAU23LtvoBl
 uLxeEACh0gxu2J+SOKsc8qH9kuki/5/tHWCI8kn9xEFx8nLufpDGhQviNxqpeHEFhBnKGUE+TQC
 vBlWy/8d3R3t0d1yPKb3Q3duQBWyZPUpWn8m5PAhI4+Egy9Ug9JpjxkLF9Wx6Iw2CcEKZXnGJVV
 40BCUwJgsQwyPrbK+4Vm6swBvMdcvzjfzYy0MWB32yHJUuH/rqGnhoOcVh7o4KKWbccnxO1l7RT
 0nB1lVUgNiAydSBOSCo7G/3Ms9Bq+VoXOkXtxyJOeX6QX0aXUz7WBxEqZSIaRLg7JT0Clp/lyg+
 8TbEUxAsRxbThbqPPPHbJZ4OsTOxg4jZfHX6bMosY1piF1jRKQHZukHCXRzPUsKiB/Kktm47Y6p
 PAsLIUKs5XFXQY4cFHOZrocMvpio5E1qnsQnmp4R0dqLy3Wu6y4AFN2uS1OAvBVn3PGsoWU86zP
 VdtK6vITmS5VckMBhjMsHu+qbmfqmbGh+GziD84/Rsv/cLaBXErEpoEVGJCVQkSNK1be6CHlMIQ
 d6RUKaHLs1Rb4KRKBXbCGOM3sFNKTRFZLzOAWDtXIHXS6kWQrM+5tgXZAHof+WjWmmWUW5uXfFG
 jwaaBgxGNwj5q7PGxfcFT7fZLjWZKo/TibJYAJ/zq8bxso71i7eMe0qqn/lXJYTvSdxYkh1hMvi
 0SM1OVA7vGb023Q==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Add the IDs for Qualcomm SAR2130P and SAR1130P platforms.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 include/dt-bindings/arm/qcom,ids.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/dt-bindings/arm/qcom,ids.h b/include/dt-bindings/arm/qcom,ids.h
index 8332f8d82f96bb0c1e72980c92b59f226a1ddbe7..903eb4dd4168ca7bf07d9795470a161189c4bf45 100644
--- a/include/dt-bindings/arm/qcom,ids.h
+++ b/include/dt-bindings/arm/qcom,ids.h
@@ -255,6 +255,7 @@
 #define QCOM_ID_IPQ9510			521
 #define QCOM_ID_QRB4210			523
 #define QCOM_ID_QRB2210			524
+#define QCOM_ID_SAR2130P		525
 #define QCOM_ID_SM8475			530
 #define QCOM_ID_SM8475P			531
 #define QCOM_ID_SA8775P			534
@@ -264,6 +265,7 @@
 #define QCOM_ID_X1E80100		555
 #define QCOM_ID_SM8650			557
 #define QCOM_ID_SM4450			568
+#define QCOM_ID_SAR1130P		579
 #define QCOM_ID_QDU1010			587
 #define QCOM_ID_QRU1032			588
 #define QCOM_ID_QRU1052			589

-- 
2.39.5


