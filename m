Return-Path: <devicetree+bounces-15578-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C26A7EADDE
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 11:20:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 590C91C208B8
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 10:20:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51A8719462;
	Tue, 14 Nov 2023 10:20:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="K+HGsPui"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF50C18C39
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 10:19:59 +0000 (UTC)
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21D341AB
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 02:19:58 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-4084e49a5e5so46947495e9.3
        for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 02:19:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699957196; x=1700561996; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OEIBIUZc6uePJfntJdIEYKl8kqhtvCCVMaiOaHpDyfM=;
        b=K+HGsPuiYL3ZrqRk7KkXHGbkyLrn6PeTwb33cDrYHxY5xNX5cpz53uQSSv23D8aN8N
         JwXyC8Fc4OvS+vhbmSrGPPsiUHia0y5rrk2kYhwCg9PhI2vRNdMvgjjUWjjhiLmGHojM
         MuW8XF93vuy1QC6Sc7igbbTFCkjnevsvtghCeWCLs/qSAJykX3GvE6uy8waLeejkGC29
         Egpoctb92Bgjc8QdUEAL7CR4ZZ863/EVhoBC9JLJ6W+qig7ANMoWwcuXnz7xOZtBAuYB
         6bsAtMz8zylgoelMrKkt53zc5o5xAXDfzKtwFVt8UukWhI6fTny9h1cpPJRHz3+uGPkl
         cBUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699957196; x=1700561996;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OEIBIUZc6uePJfntJdIEYKl8kqhtvCCVMaiOaHpDyfM=;
        b=mClLVP8HqI3eTzBfKYiD1GUa1you/B4iucfeMy5A4i0qDFzceWEZU72V/EWnhv3+ED
         ylLfipH9ZD/bmUbNGDzQYKl5pAc7HoIhjvP+M0BeRn561vScMHxR6uscc4G/4QXav7jM
         LW8tScUzdHShOCk6bohNleMOC25D9TOcJo3bH5GZOiCcqPqR418QgXIBdCLvKpwDc4Ne
         rl41la28S2NNPpBOFEwxYsm6eHMSdK332W5CdLvRMz+MSFqwlN/MGhtsOAWsD23u8Zk/
         98QVr6/rtmij4qF5qJW3j/qGC46qqCu5SJhIkWlz5xJ4KZyf8AkTB4ksDJNqEnAWqiTR
         6ksw==
X-Gm-Message-State: AOJu0YzM3Mh1osD/BMLO72VbLYsIeoENAzuvm/0RiwakN9Pl37CUvFNI
	ykbPCJxK0gjecq8cAvHj0BJacg==
X-Google-Smtp-Source: AGHT+IFNvpoPpsHx2p5m3MMv9VHHwSghZIW3y1edhUbi+6SVcRkn4CBysD08DhvHC8uZ2rPXGDk8rw==
X-Received: by 2002:a5d:4e85:0:b0:32f:7967:aa4d with SMTP id e5-20020a5d4e85000000b0032f7967aa4dmr6050646wru.68.1699957196533;
        Tue, 14 Nov 2023 02:19:56 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id v9-20020a5d43c9000000b0032da022855fsm7419675wrr.111.2023.11.14.02.19.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Nov 2023 02:19:56 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 14 Nov 2023 11:19:51 +0100
Subject: [PATCH 2/2] pmdomain: amlogic: meson-ee-pwrc: add support for G12A
 ISP power domain
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231114-topic-amlogic-upstream-isp-pmdomain-v1-2-f01e6fca67a0@linaro.org>
References: <20231114-topic-amlogic-upstream-isp-pmdomain-v1-0-f01e6fca67a0@linaro.org>
In-Reply-To: <20231114-topic-amlogic-upstream-isp-pmdomain-v1-0-f01e6fca67a0@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Ulf Hansson <ulf.hansson@linaro.org>
Cc: Daniel Scally <dan.scally@ideasonboard.com>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2024;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=aQxr32do09NNbq0amsdwX/uvKdT6sjjcfu6Gh0FrHoI=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlU0nJG2mljBw/0T6F93TKPKViSSLGHPI+v240fNwU
 6mi3DumJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZVNJyQAKCRB33NvayMhJ0XjED/
 9KRANEUmUjaRu1euBCtDmLf/JYF1uTV/2Zv2jc7KgMIDYp88B7esJ6pba+UtJ3jN3oj/xO2oRkRPWA
 gn3mgr1zCNWeFchLMDHwrE9AOwUQlesIWdh2PZSwSxZ9M+4IyyWY8shQkUVKf4U6/2hD4tujoQ8HaX
 C37kWyzbxzLZ2oWFl3DxsGAFk5doAr6Uh4q523pFst1oS0fs3WU6Ms5UgAf+6McUPwaPWSth3JRvG1
 V6ybYoD8aQmPjlvO+0TcsfemJ9U8OzU76SlgENyFxTHMSi/O0080wR2dGQAYfrRYyiRJDGa5IuNgLX
 Gf2/hs48OniwJBKhpc0FJQ2fQWOW2LKyoDw00w7CSoBujUqwHTR8GOupyHqqOodBrsXXmfyrucu0Au
 qINla3qD8EYH/br77LI4Zlt9F4KpKR7bI7DnznwBtRTsg9AUK0tIwSVgapO9vDCirhQML0m3sksavo
 wSmFDAqgSV1foZkzxtKndM/yM7G/g2bf3fpsY4QoGy40QnKfHCWZgNdvKp/yycTpTR+AtqhWgY8Qd2
 o1cskcw0iSfh+R5Mle6a071YtCqQ5mSUCMsFn9v/2nTKAnrh1+82YcrdHiGYHO2neof5AUxNK9aV1y
 bPYUBc1t9KJPXT35IEmzS9XP9L8AOOYy42+RD4smlOdstkhbboEWekFvpG8A==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add entries for the ISP power domain found in the Amlogic G12B SoC

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/pmdomain/amlogic/meson-ee-pwrc.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/pmdomain/amlogic/meson-ee-pwrc.c b/drivers/pmdomain/amlogic/meson-ee-pwrc.c
index 0dd71cd814c5..cba216a2175e 100644
--- a/drivers/pmdomain/amlogic/meson-ee-pwrc.c
+++ b/drivers/pmdomain/amlogic/meson-ee-pwrc.c
@@ -47,6 +47,8 @@
 
 #define G12A_HHI_NANOQ_MEM_PD_REG0	(0x43 << 2)
 #define G12A_HHI_NANOQ_MEM_PD_REG1	(0x44 << 2)
+#define G12A_HHI_ISP_MEM_PD_REG0	(0x45 << 2)
+#define G12A_HHI_ISP_MEM_PD_REG1	(0x46 << 2)
 
 struct meson_ee_pwrc;
 struct meson_ee_pwrc_domain;
@@ -115,6 +117,13 @@ static struct meson_ee_pwrc_top_domain g12a_pwrc_nna = {
 	.iso_mask = BIT(16) | BIT(17),
 };
 
+static struct meson_ee_pwrc_top_domain g12a_pwrc_isp = {
+	.sleep_reg = GX_AO_RTI_GEN_PWR_SLEEP0,
+	.sleep_mask = BIT(18) | BIT(19),
+	.iso_reg = GX_AO_RTI_GEN_PWR_ISO0,
+	.iso_mask = BIT(18) | BIT(19),
+};
+
 /* Memory PD Domains */
 
 #define VPU_MEMPD(__reg)					\
@@ -231,6 +240,11 @@ static struct meson_ee_pwrc_mem_domain g12a_pwrc_mem_nna[] = {
 	{ G12A_HHI_NANOQ_MEM_PD_REG1, GENMASK(31, 0) },
 };
 
+static struct meson_ee_pwrc_mem_domain g12a_pwrc_mem_isp[] = {
+	{ G12A_HHI_ISP_MEM_PD_REG0, GENMASK(31, 0) },
+	{ G12A_HHI_ISP_MEM_PD_REG0, GENMASK(31, 0) },
+};
+
 #define VPU_PD(__name, __top_pd, __mem, __is_pwr_off, __resets, __clks)	\
 	{								\
 		.name = __name,						\
@@ -269,6 +283,8 @@ static struct meson_ee_pwrc_domain_desc g12a_pwrc_domains[] = {
 	[PWRC_G12A_ETH_ID] = MEM_PD("ETH", meson_pwrc_mem_eth),
 	[PWRC_G12A_NNA_ID] = TOP_PD("NNA", &g12a_pwrc_nna, g12a_pwrc_mem_nna,
 				    pwrc_ee_is_powered_off),
+	[PWRC_G12A_ISP_ID] = TOP_PD("ISP", &g12a_pwrc_isp, g12a_pwrc_mem_isp,
+				    pwrc_ee_is_powered_off),
 };
 
 static struct meson_ee_pwrc_domain_desc gxbb_pwrc_domains[] = {

-- 
2.34.1


