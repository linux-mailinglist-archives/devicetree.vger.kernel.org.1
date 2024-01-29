Return-Path: <devicetree+bounces-36330-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 14CED8408CC
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 15:42:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 90080B252CA
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 14:42:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E97AA153511;
	Mon, 29 Jan 2024 14:41:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Q2RoPQbx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F149152E00
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 14:41:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706539299; cv=none; b=pMoCGvHRdcpKGvF8hjpq3sKjrYmGIZtKQ/tfo9EeHMQb1LLQZRCVITSNAQCRbcpbq0G1lPQjGLfTNMCzgxxn0FN/1H+3segeJMlMfCExjBtUKYAU7F98mrxSzUageMp3hPcFv0c2hF4V1gbpRhv3MMdX5NS+TEJOzNxoZ+RrbpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706539299; c=relaxed/simple;
	bh=8EuammNvz7q0zLsv/fNHGrCFJkNOTUOv7xYPFDSydtM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=n3q6G0GdssTDOdndd2WAziuIvCyNW4GdlPXjydIvj9KTlyz1WOIwEJsyf1FTsHmGK2nIbZK1p8TrIJjaU70FN1OsbxlJx2fy8J6KI1VANZaJOHd9leC8oATZ0YXmvulDea8CnaWShjVkM3O7j9A65Ydhlh4jJntGIIE3Pg/5BL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Q2RoPQbx; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-55eece07a75so1582944a12.2
        for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 06:41:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706539296; x=1707144096; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L2ZdJpKQBRnfaS4iSb7zJfUhDZu3ZFuYALkM/QlvKws=;
        b=Q2RoPQbxoit4G+yKmPpYg1oHKcjDC0L+owtUFho6Iz1lMRuJ8rkWQogIx6a2o/Z7mU
         NHYNyZRr1it7NvwQlxPc8G2qZohKRFQ11o9MBH5Hg/68y+ErzJANZmuhf3BzFgQRAjQq
         N9k6dMCGXznuTi/bD2fsuQvxp1ZTGI+cTt7ssPsNdKzjspHmYMUo+Bi6q1jDL3mkGEcn
         dxigM4A4v2CPFii+s0fCFxufVyVluknolOB0mCTRQDea5DRataaGuUoVKKAESHEMPsXa
         r93lBJ6lyr7ylbrazc/JvhZDqzZF/gbXJEp0mXg0Lf4DRUE+XCl8SV8bTIrwUPYklpA2
         Of1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706539296; x=1707144096;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L2ZdJpKQBRnfaS4iSb7zJfUhDZu3ZFuYALkM/QlvKws=;
        b=dVDd7BGF17nEY9HrpRv9urhUVMjm3gPyRkLtpDna4hc3mi4XtO5FyJH5k5F4DBgHs6
         7rGGDUcWiWEmeWb7F0EUC+Xw7hgV0MCWiHhdedjYtHm4i5tzqnCfaTo4AQ7/JGlZEMd6
         b2NAo40IrM3sAEUb4wXIprFPlKvOsA3AAlexTVFWUYYiHlqNdPF0YC1RVRx9kxDcY/NL
         zOcSDHAibdT0TQhdqoP3uN23TwfNyblBTcZ6uV/LRZDvoJyBNw/SmISVKUyjLbVTOO1q
         17t/8uvVduDptRnQ6lNRR2KKnJUiqAA3vx5xRcKdEtYCsZCKrCi77NB8iV0tEwbpIzvg
         oemA==
X-Gm-Message-State: AOJu0Yy0Z6rnwfkaWHdVvRnsAN0zZy4PPf1gC0vqJGka3Hv5tMOr96CQ
	X1OXKkFbB0fZozz6ET4NHlAOjosthJP1Euy8W7T5Cr3EPPMM67fm5/WtIT1E1t8=
X-Google-Smtp-Source: AGHT+IFBJJ9FYkR0EvWij9nrzW1SQPFdCGakWRsLV2MT2ywjx8+ij9jjR3qQye1Uq3mRypIiCCKxyQ==
X-Received: by 2002:a05:6402:3482:b0:55d:190:5a45 with SMTP id v2-20020a056402348200b0055d01905a45mr4809825edc.4.1706539296237;
        Mon, 29 Jan 2024 06:41:36 -0800 (PST)
Received: from [127.0.1.1] ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id em2-20020a056402364200b0055ec051ab49sm2548415edb.6.2024.01.29.06.41.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jan 2024 06:41:35 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Mon, 29 Jan 2024 16:41:20 +0200
Subject: [PATCH RESEND v2 2/2] PCI: qcom: Add X1E80100 PCIe support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240129-x1e80100-pci-v2-2-5751ab805483@linaro.org>
References: <20240129-x1e80100-pci-v2-0-5751ab805483@linaro.org>
In-Reply-To: <20240129-x1e80100-pci-v2-0-5751ab805483@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-pci@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=785; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=8EuammNvz7q0zLsv/fNHGrCFJkNOTUOv7xYPFDSydtM=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlt7kbluuO7UPwf50lOLVC4XV28LzyrD4IabNlY
 iwFvTD2k9OJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZbe5GwAKCRAbX0TJAJUV
 VqTZD/0Z04vfaJg0gch7xWARMZ5xT8UZyu84ReIKEIpAS9JM3sl8NeOdAW9bPH8cgNhJsYlmNOA
 XQi0OYZfMFfsIUR3HkSueuqdu784+I27kJQp6hJ8LqdcvhMpuw2nwAB3evbSmBWFxZ2UfkBVh4C
 icc0ibzcb/nk0urh3FH+SQx+r0RWBc/qNV7jtXdRJPdz0UFhFboSlH0nvIYT5foj+CqO0TelRJZ
 o0glORL2K2sREvvHyRAYOy0KjhnHk7CgW8EDRakzQy3aYSIUbIbdP/Gt9CzpTe1mr9J5CWD37Vb
 u1HRQQzeFnpjMUKYPShlTexaQDBiD+iNv2jPAW6ZfZ45KDMSzy8lAkOdedpebegSkRpslw7WMQ6
 rs8epzOZRF5qtq4IG03XlACpf/3Hgyj01mTe9DnIXM4Ri+5oe4JzTpW7sS+QIC2X2M5AFVE47g7
 oR2gvS79YbQe8M9P6b6DD3mPwjOWr3Udxzyw4Z4akJ84Doq2eGgym/iSk18sCtbUjwdZV66pBUQ
 0CbX4g7lrenOiOeoYItxdX+69DLDm5QfZ2a+f/S/5gk3a+zxr++NUOG2TetnEnR5kcnw3w8lKyi
 +WCBFjGexpYNiZpZJ+669TLvFLtSxDhYLbLvZEzfELEVRpwyMfYL1KCZVMhYa2VzosP//7VStjT
 JntrtxwQmJ62nfA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Add the compatible and the driver data for X1E80100.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index 10f2d0bb86be..2a6000e457bc 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -1642,6 +1642,7 @@ static const struct of_device_id qcom_pcie_match[] = {
 	{ .compatible = "qcom,pcie-sm8450-pcie0", .data = &cfg_1_9_0 },
 	{ .compatible = "qcom,pcie-sm8450-pcie1", .data = &cfg_1_9_0 },
 	{ .compatible = "qcom,pcie-sm8550", .data = &cfg_1_9_0 },
+	{ .compatible = "qcom,pcie-x1e80100", .data = &cfg_1_9_0 },
 	{ }
 };
 

-- 
2.34.1


