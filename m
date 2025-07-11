Return-Path: <devicetree+bounces-195463-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B9D5B01C82
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 14:58:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 618A217E76F
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 12:58:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 369C62D3EED;
	Fri, 11 Jul 2025 12:58:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xgylRLGB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1022D374C
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 12:58:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752238687; cv=none; b=e2/AR3JL8S6R72rGOsDLgkvC0nkZnPnJOo99ObdR05/EXdp/oJt5XoCR5dTrr1lbcN5vSGJFITT040LoJhINIO0YBQasxXNI02mgETQeQO1lOgyzbyLOkrPDNnrYjUVSUzxByQOyaWdLSREymdgpL1fJ19RqkFLUZDrfREgL0HI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752238687; c=relaxed/simple;
	bh=z7ErzWgZz2lcwE7VC8GD8PglT60RCBstJiLuexGjqFM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NLSliozkbBlt0pyt0U4YPhUQQS+Q+wNXOFFeIpqGZnvL0WIxD1MsPhAszqZKso06FFbyklVWgiQqrnDW2hujVqO1UpSpoDkRHaUXN+hpL0K8McCImQT0rbdWodZcfMPk5zxnuHkg9oj6ZVp04xfbg1gdJh1Qgy/ZL3hA3mnfvDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xgylRLGB; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-3a5123c1533so1114924f8f.2
        for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 05:58:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752238683; x=1752843483; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SygQZRMLWB/3Hi3WIMPPsYnBEPh0pO/xxiLevNlWXm0=;
        b=xgylRLGBALRWZkQFD7I8NjX3BQJmesBLCB7MkARe+kELe9e5U7NPSTv7+tO3qulTow
         ViuIcyoUhLtpgdLHRRhq4UDDTzUUpDAkBQLjnhYSond7ArZnNM27gy/j4vVssFa8vBBQ
         xpXHZ3lsShWRDlaaC+TE6mSk5EVnDagCHNCSiSzIFc7mkOaAqtFZib9pafDvl4IObcpB
         tJVOsvOfcKZWafZjZShW46iTV88HDYKGVJ6FqeV8k+UKV6g9I7+4nr39VHEZGg/SCYFl
         9WRltskIzxZhUyy1wRwGqXS/uMBZbuu0Xrn8RxMrXCrRd8xHrolFhoD86x+xu2Qo9Kft
         sAvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752238683; x=1752843483;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SygQZRMLWB/3Hi3WIMPPsYnBEPh0pO/xxiLevNlWXm0=;
        b=ckIHvKmgOxaVlsxbtebpZF+wB3fSg1i02fKMv9HYX3GtiSt2Bz4rlqmczLcyNvjkSH
         eKl6rIu0bAPFCqhsKOLAdoOTDYFBul1mLGnqIGCcrmo7C1CE9H5YNsYId7ib4HwnbJaC
         iwJdLj9R/F0W9EZetDcoizq72o6jgeNRDKHFjczv+7jPkEJHcyg8g/OOx61/a7lpitjl
         902cVQM6LyewrC8K3TO0ZxPB+M1XV3TZC9Wu8iQ4aSL61XWyfnmekM50wPzm+FvbQVqz
         qeO2xoPFnZPWVgp80pY5yQOpNgqGcjQzd6pg313hkSukGXe5IpfyEZYMtnhf/DD5Nn2Z
         sbog==
X-Forwarded-Encrypted: i=1; AJvYcCV6L8oJ3U0TWxcPwyeuaT8Tyvp5aEG4zMJbuAU2axU742e5RydXlSzDMuXs8LcaI56MMj4Vh04IqbgZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzDwJ5UIMtuPonFrBIU8x4FGl66A/D4jArMC40h3mODByh/KnSf
	0TrqbpwH4CPJlGzSA9AXs/4J6S1vgsbsOEr8VSRv4Ufs1pgclobka+n6KmI2RrXBRP4=
X-Gm-Gg: ASbGnct7FjVY8wmwv4OSSzaUbwzhAe8OQjm9ZjzdvKG6o+UKvi/ZXEmpQttV5khlLM4
	gn282Dadp4JPH8R5SKo2N87VUkZ5LniU8TVqCYj6mU79Uo/ezkiYMH2g4fHGJG7YW+jJ3j6yGQM
	N7Asu9as6aNomy67EADozwiuZ/Yb0V6xGS9MrnjAbhWIeufH+LmV7L6QxLl6xtGPCpXSQwn4jMD
	2t53Cm8nIm7I1uxQL+odqJjx3TeMnkUB+lPZe5SWaPUAk2oxHrUyYXbwAwTXX8sv09sfqgAK1FN
	rQuYX4sffvP51IOh1vC7TIISw5iQ16Oy7JXHuOQ4zlQNlbMjMCcWD/jQ9vPax7zsxgrgludiALe
	e3ZbjDF7DezcIzQv48ZzaNiSHA9H93afN8TJUgS1NKe9ohSnV0puT2REBlrifATh7
X-Google-Smtp-Source: AGHT+IHrgUwwe2lXMn1Q/z5OtEp434t2+S+ub5tceQuMhxyGeka1+BcADdUGP6jGMvP2g+I2e6pXZw==
X-Received: by 2002:a05:6000:2d09:b0:3a6:d967:380e with SMTP id ffacd0b85a97d-3b5f187eb90mr2277964f8f.3.1752238683308;
        Fri, 11 Jul 2025 05:58:03 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b5e8dc1f70sm4373648f8f.27.2025.07.11.05.58.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jul 2025 05:58:02 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Fri, 11 Jul 2025 13:57:55 +0100
Subject: [PATCH v7 03/15] media: qcom: camss: Add legacy_phy flag to SoC
 definition structures
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250711-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v7-3-0bc5da82f526@linaro.org>
References: <20250711-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v7-0-0bc5da82f526@linaro.org>
In-Reply-To: <20250711-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v7-0-0bc5da82f526@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>, 
 Todor Tomov <todor.too@gmail.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4545;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=z7ErzWgZz2lcwE7VC8GD8PglT60RCBstJiLuexGjqFM=;
 b=owEBbQKS/ZANAwAIASJxO7Ohjcg6AcsmYgBocQpS0fJ7a90KGD7wa8oeGlT8tzfTaR7/9WbQL
 ozZKej7ltKJAjMEAAEIAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCaHEKUgAKCRAicTuzoY3I
 OigfD/4zuPWhAjCsfxz1+IDCky+zUEaz6BnlcCvfEqZITu4nZDN84Oh0Zl6TplhdQf+tyFsuH18
 E+7IMKIuy8oSNRZLd3JiSCnDUpOLx517RgagzGW4Pv47Jk2+BCvrtqfHErlvz1khHPhrHtwlpub
 lDvfPTLjw4lFIHgeoVmc3NzDNZgIHFuBHTNR7B9z+LdYSGDK7fiDfdN9c43v0Qg4hqs44Yeuhx/
 Fr59MfxG3ffqMcj6zgPSYdXq1HkM7US6pqrmuyM8iIvmSFWRgwbO8fx2ORwzWM/t3KWkPkC5mfe
 p0a5XfAHugntdt2HXwg9+B32K/Bs/4YRtz4oasGu3me7APN5VPz7I6Uh2Y6DKMBZ5Ou+u+/TtF1
 ixfTxwE52GbtpcUYTz/mSomtBP3C3zAIVp4mLa6gJDPc+F2KhVS5xnyOugQ2YBbT7b9+A+r8/I6
 FgtxiQ2bHO58uMW8tjpASiXv7K3FRhCYwPpD9HT1cjkaolqJwTq9K+hJEHUn5YYyNOSEirIHwnt
 biLtWwwlOPTERCriZmyuUq8jzgJWvvD7uy3+Vs/M/M6LEL08JwA6oQxBuVEleD4DtA9ryZLqR45
 hzMwdu+TAwWRcWuz9hqI00TMR9RhEMoq9pWYPDb8q4zf0cbP1u76u52SvC/60Y7/hnRjiu+hKYe
 xJ37CqnC6KBXQJQ==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A

Flag which SoCs have legacy - builtin PHY code. This will be useful in
subsequent patches to inform PHY bringup logic if legacy bindings are
available.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 drivers/media/platform/qcom/camss/camss.c | 11 +++++++++++
 drivers/media/platform/qcom/camss/camss.h |  1 +
 2 files changed, 12 insertions(+)

diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index 23e57c7c8c43b9662e07212b26550d2734480fa3..c8103f8b754a29a63e32bb7bc213bfe14b4e0748 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -3724,6 +3724,7 @@ static void camss_remove(struct platform_device *pdev)
 
 static const struct camss_resources msm8916_resources = {
 	.version = CAMSS_8x16,
+	.legacy_phy = true,
 	.csiphy_res = csiphy_res_8x16,
 	.csid_res = csid_res_8x16,
 	.ispif_res = &ispif_res_8x16,
@@ -3736,6 +3737,7 @@ static const struct camss_resources msm8916_resources = {
 
 static const struct camss_resources msm8953_resources = {
 	.version = CAMSS_8x53,
+	.legacy_phy = true,
 	.icc_res = icc_res_8x53,
 	.icc_path_num = ARRAY_SIZE(icc_res_8x53),
 	.csiphy_res = csiphy_res_8x96,
@@ -3750,6 +3752,7 @@ static const struct camss_resources msm8953_resources = {
 
 static const struct camss_resources msm8996_resources = {
 	.version = CAMSS_8x96,
+	.legacy_phy = true,
 	.csiphy_res = csiphy_res_8x96,
 	.csid_res = csid_res_8x96,
 	.ispif_res = &ispif_res_8x96,
@@ -3762,6 +3765,7 @@ static const struct camss_resources msm8996_resources = {
 
 static const struct camss_resources sdm660_resources = {
 	.version = CAMSS_660,
+	.legacy_phy = true,
 	.csiphy_res = csiphy_res_660,
 	.csid_res = csid_res_660,
 	.ispif_res = &ispif_res_660,
@@ -3774,6 +3778,7 @@ static const struct camss_resources sdm660_resources = {
 
 static const struct camss_resources sdm670_resources = {
 	.version = CAMSS_845,
+	.legacy_phy = true,
 	.csiphy_res = csiphy_res_670,
 	.csid_res = csid_res_670,
 	.vfe_res = vfe_res_670,
@@ -3786,6 +3791,7 @@ static const struct camss_resources sdm670_resources = {
 static const struct camss_resources sdm845_resources = {
 	.version = CAMSS_845,
 	.pd_name = "top",
+	.legacy_phy = true,
 	.csiphy_res = csiphy_res_845,
 	.csid_res = csid_res_845,
 	.vfe_res = vfe_res_845,
@@ -3798,6 +3804,7 @@ static const struct camss_resources sdm845_resources = {
 static const struct camss_resources sm8250_resources = {
 	.version = CAMSS_8250,
 	.pd_name = "top",
+	.legacy_phy = true,
 	.csiphy_res = csiphy_res_8250,
 	.csid_res = csid_res_8250,
 	.vfe_res = vfe_res_8250,
@@ -3812,6 +3819,7 @@ static const struct camss_resources sm8250_resources = {
 static const struct camss_resources sc8280xp_resources = {
 	.version = CAMSS_8280XP,
 	.pd_name = "top",
+	.legacy_phy = true,
 	.csiphy_res = csiphy_res_sc8280xp,
 	.csid_res = csid_res_sc8280xp,
 	.ispif_res = NULL,
@@ -3827,6 +3835,7 @@ static const struct camss_resources sc8280xp_resources = {
 static const struct camss_resources sc7280_resources = {
 	.version = CAMSS_7280,
 	.pd_name = "top",
+	.legacy_phy = true,
 	.csiphy_res = csiphy_res_7280,
 	.csid_res = csid_res_7280,
 	.vfe_res = vfe_res_7280,
@@ -3841,6 +3850,7 @@ static const struct camss_resources sc7280_resources = {
 static const struct camss_resources sm8550_resources = {
 	.version = CAMSS_8550,
 	.pd_name = "top",
+	.legacy_phy = true,
 	.csiphy_res = csiphy_res_8550,
 	.csid_res = csid_res_8550,
 	.vfe_res = vfe_res_8550,
@@ -3856,6 +3866,7 @@ static const struct camss_resources sm8550_resources = {
 static const struct camss_resources x1e80100_resources = {
 	.version = CAMSS_X1E80100,
 	.pd_name = "top",
+	.legacy_phy = true,
 	.csiphy_res = csiphy_res_x1e80100,
 	.csid_res = csid_res_x1e80100,
 	.vfe_res = vfe_res_x1e80100,
diff --git a/drivers/media/platform/qcom/camss/camss.h b/drivers/media/platform/qcom/camss/camss.h
index 63c0afee154a02194820016ccf554620d6521c8b..7ed8984ff192d5bcfca790b0900f8e48700347ea 100644
--- a/drivers/media/platform/qcom/camss/camss.h
+++ b/drivers/media/platform/qcom/camss/camss.h
@@ -97,6 +97,7 @@ enum icc_count {
 struct camss_resources {
 	enum camss_version version;
 	const char *pd_name;
+	const bool legacy_phy;
 	const struct camss_subdev_resources *csiphy_res;
 	const struct camss_subdev_resources *csid_res;
 	const struct camss_subdev_resources *ispif_res;

-- 
2.49.0


