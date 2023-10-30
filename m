Return-Path: <devicetree+bounces-12787-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 352397DB6C8
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 10:55:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C395CB20DC4
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 09:55:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 403C6F4EE;
	Mon, 30 Oct 2023 09:55:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SKDf+49A"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5E4DF4FC
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 09:55:28 +0000 (UTC)
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2003C10F8
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 02:55:27 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-507a3b8b113so6112410e87.0
        for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 02:55:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698659725; x=1699264525; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8bkGQDj4pTSB5aXxaxpfi8qDmUZfumql9Hra/PlolFk=;
        b=SKDf+49ADfPQnvr51xLwPpYmCRAwL5rSfYO4cKfYsxZZWjf5/9SDNbtdZlRbngJcsM
         IQXwtRSgmrvWdPPlqhiHlVytkMF5Q/SevRY3p++j4Pt5DLZjha7turGuNyKfu2KNmXfc
         jZZa0g/h0L8COywUMv+P8SP50fgZaggs+JKA2y1/81sbaZB93PhH6aYSz5jKlfVvsas0
         cCO50c4mkOzA0LmglqEZZuA2/YkPdL+fXZXfvytjWXqTiEp0bkSAOJrLZCiUuEdG7bew
         6fd6oU/Y9V0S9HrIzBkjvogKAjF9TlXrURn/6BTSsaQwfnxb5cVZaaxZoi6os5z+0iSf
         ADdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698659725; x=1699264525;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8bkGQDj4pTSB5aXxaxpfi8qDmUZfumql9Hra/PlolFk=;
        b=bA81EqoNijgLRQtZWu37fbyNdnHEecP9BMRdYtCqT7IyBV1V3TDFosb5b576fmXl+7
         oV42Bo51TJc1MOaBTn+mDC8J90tS/waNf2WzFBJ6giJeT0yCtwILkExIjML+EO8h25VQ
         2Y3/AToEXIDibr7w/h9V5taMz1fnfV95R4feimXCr5H9oglZbw+8TvIAtcPfzw3vNZ1y
         4PHcGQjSM776oaeWzaTfZPbYu3Xr+T9FakdswNeyKSfhj833YLyvz3k490qQCkYHM4jF
         ECTQhoEk2DU+SRw442sHI/DRsVEO7qI5J5m9J+N1FPr4GTcJ9d8v10Up6ISnhZBSqrUq
         FseQ==
X-Gm-Message-State: AOJu0YyQiey6Ks3X9DsL8N3P7l+rJvZN3qvzUdPEyqdQNclIOOBxrdrY
	48nA6DhPrKF3+O77dKTvnV57aA==
X-Google-Smtp-Source: AGHT+IEU8j34c4zXdeXi+aNQLxi2n1+qiw1MVqpJjz8esqLzeEi6Jlt8NNZLb8aUyv6g1HxeprRLCw==
X-Received: by 2002:a19:f80e:0:b0:507:ab5b:7b6c with SMTP id a14-20020a19f80e000000b00507ab5b7b6cmr6197361lff.36.1698659725355;
        Mon, 30 Oct 2023 02:55:25 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id m11-20020a05600c4f4b00b0040651505684sm8783759wmq.29.2023.10.30.02.55.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 02:55:24 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 30 Oct 2023 10:55:20 +0100
Subject: [PATCH v2 2/2] soc: qcom: socinfo: Add SM8650 SoC ID table entry
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231030-topic-sm8650-upstream-socinfo-v2-2-4751e7391dc9@linaro.org>
References: <20231030-topic-sm8650-upstream-socinfo-v2-0-4751e7391dc9@linaro.org>
In-Reply-To: <20231030-topic-sm8650-upstream-socinfo-v2-0-4751e7391dc9@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=708;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=zSHF5cYhgjvQfhnPCHiseIMiUqrm+cN0hIaKtY6Ml04=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlP32K/2ueqZYSgzCcUEsJHcp9enEmtabbxe3LcnLB
 eQVEVJqJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZT99igAKCRB33NvayMhJ0c0JD/
 0UWyoiZqzxhbagsYX1Rdc4V4VV4RTijEeOuC1xFGWX2eGJPYsXQTkYK+irPDe4QlFBJ1lL/xC2L1wK
 yYvxs5loTyFPwuw/tNjmKNwaEvsdGL9EjvfCxUbNiTBaGvfSmh8j1U+Lv1TIC9MBZPGY5THXjtIJnT
 W2NqCSi33SQFQ2Ai+IoedFZNdjGKRS0g6TPIJxOXbQPN04s92Y5rbW1UKou03F39LyzDBOAoPvBrDb
 FQB6XgcMFsiNmBghVGz+oSQZj9stc8sUCaXe8y4ai3SqLHcZW0R4ZXoBGE0A1U6yTv9vNsrRKnHgRS
 AC7M1WX7vq+qyeiGS0OAFJIbpRwXxWosJ8m+qSFfWD/f0Bh7xSwvu8uQh0OOm4JxI7Nw1DM6U/sMAN
 MBzHEyHcPVFXVNGzAgrtYL83hatuH8ko8XP/nCeNtN4kbl4EN5gCTeSTgAduH7bOcNUHAUqyg8aveC
 XiS4nF3RXoKfIyBX0cV8ndfgq9oKvYR/BfMMJrFW7Tpvb2AOGS8+fk33G1F5XDxISjMLAxFzE3zULe
 uY5lupg4djgNITuCq2Hl4pQzcDuQjJcFf9VlF6ba3JhPwsyZ4zyp9Kx2kRVREgr8uiMrsYPDrXQ2nE
 MiBeCn76zfOC9Bt5xXtR6/cgEi5JBvry8TwiJRayAULl+QKGr4X5uj8J/HSQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add SoC Info support for the SM8650 platform.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/soc/qcom/socinfo.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/soc/qcom/socinfo.c b/drivers/soc/qcom/socinfo.c
index 51e05bec5bfc..8e8cd4ea58d1 100644
--- a/drivers/soc/qcom/socinfo.c
+++ b/drivers/soc/qcom/socinfo.c
@@ -417,6 +417,7 @@ static const struct soc_id soc_id[] = {
 	{ qcom_board_id(SA8775P) },
 	{ qcom_board_id(QRU1000) },
 	{ qcom_board_id(QDU1000) },
+	{ qcom_board_id(SM8650) },
 	{ qcom_board_id(SM4450) },
 	{ qcom_board_id(QDU1010) },
 	{ qcom_board_id(QRU1032) },

-- 
2.34.1


