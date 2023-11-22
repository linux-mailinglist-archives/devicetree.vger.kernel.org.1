Return-Path: <devicetree+bounces-17822-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F947F43DB
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 11:28:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 34BBA1C20A43
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 10:28:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BC8558118;
	Wed, 22 Nov 2023 10:28:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kkT8dGD8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F603BC
	for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 02:28:31 -0800 (PST)
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-548696eac92so5972127a12.3
        for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 02:28:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700648909; x=1701253709; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JWH+xw6Ri2lXNzhwQ91EPAGvbhscnciMIoUmHQSMYYs=;
        b=kkT8dGD8CUnbhiAfHr19+HW2JHN0H6fwubhj/7QiG9GhNGectyOZRLTeALdnguZNoN
         pzq5nf9CPV77KShM1LnQBq0x/U4ge1lx6ogedOgZHzb210ZVZdRhVgxQfB3cXiTBiro2
         8aRSJ09rWQuCVfjOoHw/sUm6Tbso5pkNVv+E3N+/0eyrpLfjZ875gpD/GiDgxHpTs1bJ
         RKvRD4qEOenUFXo/gDP5eKD90SFizIj09uFfR53Tj7SLBKj11R7eiGc6QVeAI1H51H8f
         YqN8eTEp+NfT6WWImQWaDKMckAk7COGHk/Vi/s6soxZYyIcrVwc05A6KwJYbvqW/ZfTh
         QGpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700648909; x=1701253709;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JWH+xw6Ri2lXNzhwQ91EPAGvbhscnciMIoUmHQSMYYs=;
        b=VFS7Jb9FwLFypIWmjTQmiQ2g5HfTpALPoyuxrRlh+vJDwMlgcT21p9kIFh2og+csTz
         Ta1TJj6DZNVs11I4bU+bcS4K6k+2nczpl6pBrT+JVcZ+TwAV2ZLPUV3fyUnqoMye0Fq3
         PdED/Q/s1anF0HCZ5+2jTgWYreyY+SM4e9bmojffT+EFnjJht+zg2Sa2bwD77AzKk+m+
         uqQ+b0IdD+hidYEY58QP65rHDc6aIlXVkqAvblLBauE7Tku9j1VCw5XRYoxbTvHri7A8
         uFW6PTTfEG/6SEpSL2Jthx18MZuLP6jB9x06E0vrl6+Lig9SqFPGa4+Nq0/nVrhk7C92
         IuEw==
X-Gm-Message-State: AOJu0YyhdkmScOWFNcnxNQ5NyNqkudreGP0ypnzTneZd0tpsL0YnwCgi
	Qm/kM8kXVndj7advs1hgRkURyoR69M0yM/7reyA=
X-Google-Smtp-Source: AGHT+IGqj+udKcJ+gqUc7T8fkJZDu/mAiCS4vvgNHiWj2/7L1nhqXJPGSRpTQMFtjLOb2ZKS6Sx4rA==
X-Received: by 2002:a05:6402:1852:b0:543:90d4:6132 with SMTP id v18-20020a056402185200b0054390d46132mr1726792edy.16.1700648909461;
        Wed, 22 Nov 2023 02:28:29 -0800 (PST)
Received: from [127.0.1.1] ([86.123.99.122])
        by smtp.gmail.com with ESMTPSA id e1-20020a50fb81000000b005488a15b25asm4325139edq.70.2023.11.22.02.28.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Nov 2023 02:28:29 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Wed, 22 Nov 2023 12:28:09 +0200
Subject: [PATCH 2/2] phy: qcom: snps-eusb2: Add X1E80100 Compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231122-phy-qualcomm-eusb2-x1e80100-v1-2-ce0991161847@linaro.org>
References: <20231122-phy-qualcomm-eusb2-x1e80100-v1-0-ce0991161847@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-eusb2-x1e80100-v1-0-ce0991161847@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=827; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=jm+fRdCM97qvSJ/DNyCq1Py3bpqFJWt3ZrKQWELIeOo=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlXdfIb2bEkBXR1ClZrK/BTkkU8IutKbcP134NW
 kjh1AcyJ/WJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZV3XyAAKCRAbX0TJAJUV
 VgWoEACZsXQFgdhXdMVjiVJOq7IwA3TB6BoHs1yWOY70Oqnpf4mzOQQi3AQQAE0cY/g4lEPChBq
 rNq2Fh+Y0J7XfsFwlfBVaEWCPrTxrWSDdyt3ODy5pk5SR2WuIbp2RP2rHHQVfa8OFhLo/ILctJz
 QrmGxKAg70EaPXsymNploM/7UAmsW97+FL3Zg41pmr1gEiaJm6Ld5o3NgMytV45nmSMwJGRULGC
 hw5i1FaSB1/M+hgfTAHn5MeY+OREiGx4ypVePcpyKFyKFDDGpUy9WK7OD7JelOTmDLCJKl42Gdf
 SuNuQ5e3BoBNja0L+o6QDTvpLJz3RRaV2EGZcd72780r2meFOyqqizAJcxH0SimOnxdT+f7TrwE
 mpHmJvVoJMXLc02255w9w7yRaLDTcE0x9wousqpvA8kCK0cjXOdJqNmsMbfG190JZhIW9EkCqex
 Qr8yOZdcpZ2AORbXYmFgsw3meT0MrwUr4IcLWVMeXRmOuQbq4HgWC4IfPeq/HDDyUxuZxoosvTB
 yT+9Gt6aU4ZuE91CidK/jrxUYSzJMdzA2B3oBQI24P4g1vxfdnEO/3gCn1VV3mTgXQV48su2mAL
 qlUhw4lUqmYVmqOAq0fmh9O2C599qNbc5uDiCa8pcOFsjxR4uaiQm4wokU+zcUdUPA+sYgSO/r9
 TZIoYcHySSG4Eag==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Add the X1E80100 to the list of supported PHYs for eUSB2
SNPS driver.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-snps-eusb2.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c b/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
index 1484691a41d5..6420f342dc85 100644
--- a/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
@@ -425,6 +425,7 @@ static int qcom_snps_eusb2_hsphy_probe(struct platform_device *pdev)
 
 static const struct of_device_id qcom_snps_eusb2_hsphy_of_match_table[] = {
 	{ .compatible = "qcom,sm8550-snps-eusb2-phy", },
+	{ .compatible = "qcom,x1e80100-snps-eusb2-phy", },
 	{ },
 };
 MODULE_DEVICE_TABLE(of, qcom_snps_eusb2_hsphy_of_match_table);

-- 
2.34.1


