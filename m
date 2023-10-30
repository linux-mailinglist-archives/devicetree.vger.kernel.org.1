Return-Path: <devicetree+bounces-12785-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AFC17DB6C6
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 10:55:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9D1961C2092E
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 09:55:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1D6FDF6A;
	Mon, 30 Oct 2023 09:55:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WndII1Yi"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62756F4EC
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 09:55:27 +0000 (UTC)
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CC2510EB
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 02:55:25 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2c50cd16f3bso58555731fa.2
        for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 02:55:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698659723; x=1699264523; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FL4shc+cRRMmcw5qxKkbA2VipdmxCQewr4u6fEOw/1M=;
        b=WndII1Yiarj/EClH6qjlzHvml+arstF/EXs5oa4c5iZRYkv/ezJjkQ8fpiOmKPT70P
         ePgnKgrwoJ0J5D98DxZZc4AEmfmRECK4ouTEMr1Q+G5KF40MGtNqtHUqlTFoLIX+3U7z
         5f5YaUcGOdS3q7ptDoiBy/0nGz5uStVCpTbibyuk+JFbO5/D9XRxyuuHiEFqrKdIt81n
         z+ZR9Vs68HT2AorUuK+v7GVQcKl8CCBNWhpv2n3oZ4KCIY8vVe5n9cYBz2DBYUTdmd7A
         qRd4uD5ihCX/K0daq6+4s8Zw7LLJQPhZP0ztBNRPpESu6uKW0mPavpEzrJ2i6rei7LG+
         l3lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698659723; x=1699264523;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FL4shc+cRRMmcw5qxKkbA2VipdmxCQewr4u6fEOw/1M=;
        b=vo8G6QGONLaGaR5D5YD6OUSO3CF+6b8+51b1QC0xBk6f6z7JJkQOd40rLpzCeffnKe
         0j5kRq4hEvUUrCXgbb0PQOQe82Q9V+g8xmh1UcHJHBaIyPlzf3XBaBx5YoIPusGr4Zbk
         5HUFZ8scqsx9U5rXK3q0mAfwzQTNwaZl4OX5FH9aUGbeP2I+xyfSoA4SudzteOyuN3xl
         oQ4AK1euL2P5kGsbtsweQAZiPxA1g4uhd3ZeGj8ynLqwNbOGAZlJNU44zYobYmJ61l4i
         3/3sIax7FjUC760efp1+7u475v2TLVmotF6hLptN88y/stTnSxco0YaiPYonwhzZnTyW
         67/Q==
X-Gm-Message-State: AOJu0YxMU/Zwfci/2px8jUxz3pxiAEUmO2k4pBsct2uSgyeABgaOTSwI
	5HFoGf//ja674A3Ev1J4Bb2Vdg==
X-Google-Smtp-Source: AGHT+IFSgX3WWYhnbRwPF3Fgt3KhZkNwPflvQsUsVQKCfe0k4Dp01/AWgPqy1G9AAUmmnw4Jw3thAw==
X-Received: by 2002:a05:651c:11d3:b0:2bc:b75e:b88 with SMTP id z19-20020a05651c11d300b002bcb75e0b88mr7488432ljo.18.1698659723337;
        Mon, 30 Oct 2023 02:55:23 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id m11-20020a05600c4f4b00b0040651505684sm8783759wmq.29.2023.10.30.02.55.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 02:55:22 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v2 0/2] qcom: socinfo: Add SM8650 SoC ID table entry
Date: Mon, 30 Oct 2023 10:55:18 +0100
Message-Id: <20231030-topic-sm8650-upstream-socinfo-v2-0-4751e7391dc9@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIZ9P2UC/4XNQQ6CMBCF4auQrh3TKVCQlfcwLJrawiTSkikSD
 eHuVuLe5f8W39tEckwuia7YBLuVEsWQQ50KYUcTBgd0zy2UVCVK1LDEmSykqdW1hOecFnZmghQ
 tBR/BVFUjjaqsv6DIxszO0+vwb33ukdIS+X3crfhdf7Kq/8grAoJuGm1qbEtv5PVBwXA8Rx5Ev
 +/7B9pnrwDLAAAA
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=923;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=3CG7a5rFsp5E9RmHmcpF+FEL0nmZ0r+jgZgCKX8lOc8=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlP32J00v4S4srvXUITxOJTMwesQHWUInJHFRzC0ps
 zuiDMjiJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZT99iQAKCRB33NvayMhJ0RHXD/
 0bAIDTr7qNqEDXKhgS5vlKTW6U66Ts0eK8cvIMmxFf9fG/0syYDr0EFM2AXlELlkZOSABvYzfSgmkM
 ZRbO/Da4naAS2Au6lFPde/75wNouNPj4oaeaDnn79YoAgNx6q9D6eRyUyPQcSmVUsd0dODj5a6Yrht
 XR88/squmnqjyS9D6L0g8j8wkfaMTPjrfpcwj7R5mrq+Cth+Dfa02pnbOzMJC/7DD3yCe8A1Qa3/2/
 qONMNkdg54fPetnQfuT0v0C54shg5nKCnJAFHFLXIiDMWeBVm3XPdg/LUe7rvUYpAKU6TAjyjm3ROi
 jbG61RYaioUcfeztMGSNPzNXcuQEXmShATYwUwHlDB3WPDpiQ1LdY3B8D+BMPdjqAlDziK/mGd0O4w
 tI5jCPQNCWDdndmt27HZ2PV4ac1jihYgVJ3tLaqOj6/noj1e5+NhFTyH5NmmOW6CYX1eRDDYowAocu
 Whg8kNgx933oRBnHUUttRUXPta7Vt7LAGjEpQ0OIl//JcE5y2aoGyFJWEyZVjYm6Vn7AJnZFUuc59Q
 LuDUGsahtW04BXdteWXkHkRkA2OC/LOmsLm0yYP86YBIMBrTbDz42JPsBYbwHe7TlFoGr1OVpYBgFc
 UHJl+wgqmfPuzi0O86uX+EVyQQX/LlBGbozNh4NU9MXIkbVh7fRn7q4R50rg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

For convenience, a regularly refreshed linux-next based git tree containing
all the SM8650 related work is available at:
https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm8650/upstream/integ

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v2:
- Splitted patch in 2, moved ID definition in bindings changes patch
- Link to v1: https://lore.kernel.org/r/20231025-topic-sm8650-upstream-socinfo-v1-1-6776a5183fa0@linaro.org

---
Neil Armstrong (2):
      dt-bindings: arm: qcom,ids: Add SoC ID for SM8650
      soc: qcom: socinfo: Add SM8650 SoC ID table entry

 drivers/soc/qcom/socinfo.c         | 1 +
 include/dt-bindings/arm/qcom,ids.h | 1 +
 2 files changed, 2 insertions(+)
---
base-commit: fe1998aa935b44ef873193c0772c43bce74f17dc
change-id: 20231016-topic-sm8650-upstream-socinfo-a4470a24cf91

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


