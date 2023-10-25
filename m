Return-Path: <devicetree+bounces-11603-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AD9CD7D636D
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:36:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 66F082813BB
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 07:36:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D59719470;
	Wed, 25 Oct 2023 07:36:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aZV3UrC2"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA1B6847C
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:36:53 +0000 (UTC)
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6611730F0
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:34:39 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-508126afc88so1300563e87.1
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:34:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698219276; x=1698824076; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AtjaGI0OyZ0EdBdBaBOQ95CjdQNQsAj7+ZgWxWLoVvg=;
        b=aZV3UrC2rVRCUh0Pt9asJRDBZYMnzNs9pzDbH9/miQ8tjLJPlC5k7Rak2NJAcaLGbX
         gQCT6uoRuWwEoPQ6A6kCAYH3A9T+VqamLYymYBaaxAlv0iagKfk3nfWmVD5mBcqAblMt
         IfwBWNkzZaeM1yYCZbBxD/GSHtx88hKgUFb6UKwJlyry+IkuZpdHztXEDzYWYrHEGQ8l
         SaDD5DJvNVXDy2bYAkxBHK1fq+oKxj/6I2HAqdikVh3PUs0JPxc9DGBeNsFNjFVCJr7B
         LmBcklnDCTocki9IfW+mm41lqbRyxMoP2tKoGkJloiBcBqXyrnmhAHRzq/WzVvDEKbyp
         yTWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698219276; x=1698824076;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AtjaGI0OyZ0EdBdBaBOQ95CjdQNQsAj7+ZgWxWLoVvg=;
        b=QOmBPfaMibmmVFS5YbLcEdT7/RoieVyuakYejkNABWVCUa1LprBMFB0sax85apOd0e
         40mW9cVCoPlgk3aT/fSq5EsEY9oVnsfvNr0q6e/dQZ7uFQdN+7RzUxbuX4D1Y8I4WH1+
         9IHRwsGqhqEvwoPw97w08LvHGn6S9B5u6yU1a9n5C7Ts4a3AJAWFXW6B7/+INMYSPnVL
         mbMMxF9o+SITkpxn6E1dyIMtWe/CSDXRKFRGIJM2fbJmz4Hkg1+YNvAwLw0vlp7Q8lX8
         t9ZG/yqXlK5qiOJeWlNRRruMgTvEueSOet+jwrNpkiYsyheP5HxzcGySc7nER7MylcMW
         oRBA==
X-Gm-Message-State: AOJu0YxsvDx1Tdtpm9usG86pqOq1eU/i8FKYML4zT020PkUzXstk3buB
	0cWKXUI5H+zZWx7btbcYFMX2dQ==
X-Google-Smtp-Source: AGHT+IFQsTBGCIGYdIut4TnKmQ7+1s7MRU+V9MiBwh5l0roqJyWvvI7W3PZkHF29aPNrYRNBhuIeig==
X-Received: by 2002:a05:6512:230b:b0:504:4165:54ab with SMTP id o11-20020a056512230b00b00504416554abmr8851305lfu.56.1698219276654;
        Wed, 25 Oct 2023 00:34:36 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id y7-20020a5d4ac7000000b0032dde679398sm11431392wrs.8.2023.10.25.00.34.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 00:34:36 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 25 Oct 2023 09:34:29 +0200
Subject: [PATCH 7/7] phy: qcom: qmp-combo: add QMP USB3/DP PHY tables for
 SM8650
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231025-topic-sm8650-upstream-phy-v1-7-6137101520c4@linaro.org>
References: <20231025-topic-sm8650-upstream-phy-v1-0-6137101520c4@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-phy-v1-0-6137101520c4@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=807;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=lzyoKSoE9NysNHXkw5ojcFxOZnDU8btJV0S4+yaPrc4=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlOMUE6/wWF47zAPcf5y0QfZFn3laEFazck+MdQEkn
 D8z70yqJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjFBAAKCRB33NvayMhJ0TyBD/
 4x3g+f80Xi5iM5qDvn+GND3eMDlSKsxpYY4HC4yXI+oLNDgDl+kFY+J5uNEUTA1l3DxUkXMD5R1S8C
 KnemxaDns3r7sbVLYjf7gb6ziAVY0qGwa1Va5Nxb36gCH6E2lfJeYmCYQFfdrg2gg57T5N86lWBwuJ
 mCtTj/4i5ArczZ/W8vPJXl/mp4eF0WA5vVcB3LjmkIbYXEePSDP42mYU2C6b1lB53ZQbbjl6UHtXuA
 tiOJ3lX97M7pbhHIMvEGV1w1Ag/6xm02gA0u0O0qbPrvg+Di9VwcA48pshHEaLWgv2QcMAVui03BeF
 jvOwcZqouKlHzik+czRaI9w0R1/dAp79jJfwMtwsAVJESsp5J3wGYTD4cGqoa5q4d/ejgDNtsULITF
 PMeYLtQCFE7wYnxRz9Z+y///qh8IaIXIQECNtT2cB2Q0NKNgvpia9MwJgwOChs/HvJLvPZ74Bn2ELX
 RYJRDSYe4N06MWqYJBpSkmvx1rWrsMglXcT83fiz8WTIeiMJdqSZ8mnLreNfwMig+9tkK8rA2QeVK0
 x67dcgzgGg0ltdvlAK0oLpKdCCMs5iUj1spGzyyF7UNxcQrlgHh1Obw6A93aBldFyoDmJ1DRGnC3Bv
 yPwdWtfDTRoR4r4IdGx+MUdaDsCsn8p2oOeUr5z+IhcBP39LuqTO9CKB1USQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add QMP USB3/DP Combo PHY support for the SM8650 platform.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 9c87845c78ec..0417856b8e7b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -3558,6 +3558,10 @@ static const struct of_device_id qmp_combo_of_match_table[] = {
 		.compatible = "qcom,sm8550-qmp-usb3-dp-phy",
 		.data = &sm8550_usb3dpphy_cfg,
 	},
+	{
+		.compatible = "qcom,sm8650-qmp-usb3-dp-phy",
+		.data = &sm8550_usb3dpphy_cfg,
+	},
 	{ }
 };
 MODULE_DEVICE_TABLE(of, qmp_combo_of_match_table);

-- 
2.34.1


