Return-Path: <devicetree+bounces-275868-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IF61EulWt2lsQAEAu9opvQ
	(envelope-from <devicetree+bounces-275868-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 02:03:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 8693729341F
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 02:03:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7B1CB300A59A
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 01:02:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD7B727AC31;
	Mon, 16 Mar 2026 01:02:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GDirzlnV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8899026F476
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 01:02:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773622934; cv=none; b=YF9M8fOeAwiBTGd2I7yOvmM9mlDGdpqRKgCBS6ItDCpeFfoiO9OCN0J7D+2v7Fd2Pj6ppARMouxW7ZRnHlCB5nS0oXLbKIpsA6uurfjnAT2LBo4fVbw3bjk82gb/cPVorl+A4XdJE5SdgJ9Xci17ry7FHH8cKprMsh3lGrzxKW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773622934; c=relaxed/simple;
	bh=R9D7QBRJGljcNS52e8MDmb3qUgPBLvJ+yJXgng1kixc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kB0uBomYRdJ21tmntNAsw80515F6ZW0/TOqT9imkfE5ovnIVlWgvCdr23/L/LMQEeE/AnqBNMfXqMxCg0/Tu1xFNFpHs4DJt9H/4Eixpo4ZPhrowCJn/9Kyns0QorenOJsHj9eaYMF8MkS879+nyoQKJuWKX7PwhLuAqlU/6EMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GDirzlnV; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-439bc14dcf4so3597090f8f.1
        for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 18:02:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773622928; x=1774227728; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vEXI/wT0/vTDxPb1iAv2bVNkGUuRphAeXeojsX6f5oI=;
        b=GDirzlnVZBqFInVureS45IUSRj1j3iDX07PpDA+qD9O61ez+yc0f8AyaX43r2Pnuzg
         ES2XDYQW3+vXBfWy7dnJ/Hwr5J/MT26oShx+0vSV2utp2a+73McBFDeM0FRk0lejAun1
         mY6Sus/4t9yn2LQ3TuxVv2q1v3ZxEih5X1+DfMuINcuqRM0dO+KADj7kjw7HFglRwPqw
         5VuarigZFSmWw/guuOdomtpvTcY6DVMFcON4AUWJ9T7e6ybEY7gc3S5XoDueWDGCV795
         unZqmye0s3kp+wSt3teH1/rXL00F7bXxJa+lIYb9PdgMXbicxFv8PLaHJ2oMChSGEu+w
         i+iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773622928; x=1774227728;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vEXI/wT0/vTDxPb1iAv2bVNkGUuRphAeXeojsX6f5oI=;
        b=qz1oh42hgxPLWfb18s+OKQx7DG/Z1Zxp14tbP/45raFL7JRkSPfPYUwngibHx+eWqa
         CpQcVCpdBF/DXNoyvBj8p0r8NsQKJ3GouvsH4KEXhYBJJ4MuG7eZi+YCMioO2qqq36vC
         WjtEspEcGJtz2qP0KhkqKAkbiJgJbntxDm8CZf957WEATYURj0hEq8rzCZ772KphKUkA
         wmux25Rovvt3BqHmrOnEZnmm2GkWt+jn/EgJxACCWQnoqvaDvTWDM8zq6S8xt5wPy9zw
         cr2N8JXCGZV0ImexnYeJuKgadlPwbaasigh46bvfRZ1ApHqJ5teIQo4VCh1aRV3TcVCN
         HGow==
X-Forwarded-Encrypted: i=1; AJvYcCW1hRl4t3mNYT4jEdh+G+EAe6/qSKewQu/XgG6eqkjfxBQvEvjKClnKHJgYL1lGaqKPwqfJiNFZ5LHp@vger.kernel.org
X-Gm-Message-State: AOJu0YwrMRMmUMnZdmOjnEoqi+K5Wsz5kbvw9dr0JRBcxqJJWR7HTABa
	e43TVoq1FsKJKbVFWQxIe44EhtREZd8s4UfwXMv4a5QEk8CDj3Q74eQSei1Fvm5IraU=
X-Gm-Gg: ATEYQzxWNKzBvYWPsUlVDUmCK7ALnbVPi8t3/bENCF0SRHpcB+eS5bL6aR0rixbXbiA
	3GoL2f8GnRWmBe+WuBW41YynLbrATRkP33gOivReCv4tP+Z/8zzRqWpK26PpBT4Hk2G87HdhXxi
	n+3fqogpj/ECK40HFu+2Bupz/oyUv7pH6K/uB0PBbXZA1e6xK6VSIsW/TioLVXe1D/pST0wDNYf
	w4Qi8Ii17mKG1cVpJkOIVfH7F939XW+ykosyWhF+aD5WR3qj2QeH4WHBbp6emq5kIDTdDR1nepT
	rvs/GZNUUG1svQZSL5QoqAlZwIUyIrtz/keG+ULPMmTS7lfUi7UL8ablLF0XSuQFLG3LJy/5xpn
	sbYwkHn+p4USvm292RNcG/4AqP0mYzN4YNO468fuhcYm9nWR03v+P5p6XTl5TEVxF9sS3c+OJE8
	+7P0HMMUvnXNyJtBrcVU0nKgjP3UYlOKWSUOk=
X-Received: by 2002:a05:6000:2085:b0:439:c5da:64b7 with SMTP id ffacd0b85a97d-439fe19592fmr27321985f8f.15.1773622928442;
        Sun, 15 Mar 2026 18:02:08 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.190.215])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe228986sm34729700f8f.35.2026.03.15.18.02.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Mar 2026 18:02:07 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Mon, 16 Mar 2026 01:02:05 +0000
Subject: [PATCH v10 5/7] media: qcom: camss: Add legacy_phy flag to SoC
 definition structures
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260316-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v10-5-fdfe984fe941@linaro.org>
References: <20260316-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v10-0-fdfe984fe941@linaro.org>
In-Reply-To: <20260316-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v10-0-fdfe984fe941@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>, 
 Todor Tomov <todor.too@gmail.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Bryan O'Donoghue <bod@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Christopher Obbard <christopher.obbard@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=6433;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=R9D7QBRJGljcNS52e8MDmb3qUgPBLvJ+yJXgng1kixc=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBpt1aMXXdTyWRBHpbg95ECMxYFnTxhylH4wic3m
 DvnrFVMF7eJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCabdWjAAKCRAicTuzoY3I
 OighEAC3IryKA/Hg2DUVtqqWGMi/HkQ398jH9xsLQSjgZNgottPV02IU7WSSWRtfL1BsCc/HOs/
 RnTJmN4n1KxwNmhr0EL09tyjh+lzhPSE11fdE8SAtlKjXfdFxr7qWzQJokrmE3jYvYONvPNgjhr
 sw9F6RzHTY/HHDLwbU/VX7S85iK6YzN1egXW+Z9LZUnsP8KW57smJhIR9OIWvOyJdxswuKgFyxi
 +mdxuDL426niTLUtt1wlyPWzfmtS8qK43Eg4iQMWoruvjV5VVoNQndCz3p8U7bPmUGTxr+1B3Po
 x92Agiba4DLh64XIEpXtOw80/wdksd9dsJ92aq2VWW3zJcTSOtbAyyEUAwdqc6fnPM28TYBq94D
 S4TaU3nhp9Ec2LpqFpn4Ig1VEuQCHBzzl2B3zXxuXxKUOmHdiwVb0/qzNj24mCPSM5AKkYGzjCw
 d1dcJ/wtBiz48Z+ntSLKGQJBup744YF7wzpT0ogml7IsYAODuVLzhwFEaE9uMKXyOKZSAcuT/vf
 Y20VJ5pbxCQ71bDmds6z+1ruBszGChP9eoyUXfjFV90f8QzSIAkeF7pkM6k63vfn9+qs9xEgxOG
 kHwOTWOyjxtxtPbqT4c0P3Ua7bnOS5Zap29N67oVxJl5/hSgyCrJ3ZKkrvTwJuy6prRxqki6IMK
 xzejyoDAts7Gitw==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275868-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,baylibre.com,gmail.com,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,linaro.org:dkim,linaro.org:email,linaro.org:mid]
X-Rspamd-Queue-Id: 8693729341F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Flag which SoCs have legacy - builtin PHY code. This will be useful in
subsequent patches to inform PHY bringup logic if legacy bindings are
available.

Reviewed-by: Christopher Obbard <christopher.obbard@linaro.org>
Tested-by: Christopher Obbard <christopher.obbard@linaro.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 drivers/media/platform/qcom/camss/camss.c | 17 +++++++++++++++++
 drivers/media/platform/qcom/camss/camss.h |  1 +
 2 files changed, 18 insertions(+)

diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index 00b87fd9afbd8..5fb5ad87e1671 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -5104,6 +5104,7 @@ static void camss_remove(struct platform_device *pdev)
 
 static const struct camss_resources msm8916_resources = {
 	.version = CAMSS_8x16,
+	.legacy_phy = true,
 	.csiphy_res = csiphy_res_8x16,
 	.csid_res = csid_res_8x16,
 	.ispif_res = &ispif_res_8x16,
@@ -5115,6 +5116,7 @@ static const struct camss_resources msm8916_resources = {
 
 static const struct camss_resources msm8939_resources = {
 	.version = CAMSS_8x39,
+	.legacy_phy = true,
 	.csiphy_res = csiphy_res_8x39,
 	.csid_res = csid_res_8x39,
 	.ispif_res = &ispif_res_8x39,
@@ -5126,6 +5128,7 @@ static const struct camss_resources msm8939_resources = {
 
 static const struct camss_resources msm8953_resources = {
 	.version = CAMSS_8x53,
+	.legacy_phy = true,
 	.icc_res = icc_res_8x53,
 	.icc_path_num = ARRAY_SIZE(icc_res_8x53),
 	.csiphy_res = csiphy_res_8x96,
@@ -5139,6 +5142,7 @@ static const struct camss_resources msm8953_resources = {
 
 static const struct camss_resources msm8996_resources = {
 	.version = CAMSS_8x96,
+	.legacy_phy = true,
 	.csiphy_res = csiphy_res_8x96,
 	.csid_res = csid_res_8x96,
 	.ispif_res = &ispif_res_8x96,
@@ -5150,6 +5154,7 @@ static const struct camss_resources msm8996_resources = {
 
 static const struct camss_resources qcm2290_resources = {
 	.version = CAMSS_2290,
+	.legacy_phy = true,
 	.csiphy_res = csiphy_res_2290,
 	.csid_res = csid_res_2290,
 	.vfe_res = vfe_res_2290,
@@ -5163,6 +5168,7 @@ static const struct camss_resources qcm2290_resources = {
 static const struct camss_resources qcs8300_resources = {
 	.version = CAMSS_8300,
 	.pd_name = "top",
+	.legacy_phy = true,
 	.csiphy_res = csiphy_res_8300,
 	.csid_res = csid_res_8775p,
 	.csid_wrapper_res = &csid_wrapper_res_sm8550,
@@ -5177,6 +5183,7 @@ static const struct camss_resources qcs8300_resources = {
 static const struct camss_resources sa8775p_resources = {
 	.version = CAMSS_8775P,
 	.pd_name = "top",
+	.legacy_phy = true,
 	.csiphy_res = csiphy_res_8775p,
 	.csid_res = csid_res_8775p,
 	.csid_wrapper_res = &csid_wrapper_res_sm8550,
@@ -5190,6 +5197,7 @@ static const struct camss_resources sa8775p_resources = {
 
 static const struct camss_resources sdm660_resources = {
 	.version = CAMSS_660,
+	.legacy_phy = true,
 	.csiphy_res = csiphy_res_660,
 	.csid_res = csid_res_660,
 	.ispif_res = &ispif_res_660,
@@ -5201,6 +5209,7 @@ static const struct camss_resources sdm660_resources = {
 
 static const struct camss_resources sdm670_resources = {
 	.version = CAMSS_845,
+	.legacy_phy = true,
 	.csiphy_res = csiphy_res_670,
 	.csid_res = csid_res_670,
 	.vfe_res = vfe_res_670,
@@ -5212,6 +5221,7 @@ static const struct camss_resources sdm670_resources = {
 static const struct camss_resources sdm845_resources = {
 	.version = CAMSS_845,
 	.pd_name = "top",
+	.legacy_phy = true,
 	.csiphy_res = csiphy_res_845,
 	.csid_res = csid_res_845,
 	.vfe_res = vfe_res_845,
@@ -5223,6 +5233,7 @@ static const struct camss_resources sdm845_resources = {
 static const struct camss_resources sm6150_resources = {
 	.version = CAMSS_6150,
 	.pd_name = "top",
+	.legacy_phy = true,
 	.csiphy_res = csiphy_res_sm6150,
 	.csid_res = csid_res_sm6150,
 	.vfe_res = vfe_res_sm6150,
@@ -5236,6 +5247,7 @@ static const struct camss_resources sm6150_resources = {
 static const struct camss_resources sm8250_resources = {
 	.version = CAMSS_8250,
 	.pd_name = "top",
+	.legacy_phy = true,
 	.csiphy_res = csiphy_res_8250,
 	.csid_res = csid_res_8250,
 	.vfe_res = vfe_res_8250,
@@ -5249,6 +5261,7 @@ static const struct camss_resources sm8250_resources = {
 static const struct camss_resources sc8280xp_resources = {
 	.version = CAMSS_8280XP,
 	.pd_name = "top",
+	.legacy_phy = true,
 	.csiphy_res = csiphy_res_sc8280xp,
 	.csid_res = csid_res_sc8280xp,
 	.ispif_res = NULL,
@@ -5263,6 +5276,7 @@ static const struct camss_resources sc8280xp_resources = {
 static const struct camss_resources sc7280_resources = {
 	.version = CAMSS_7280,
 	.pd_name = "top",
+	.legacy_phy = true,
 	.csiphy_res = csiphy_res_7280,
 	.csid_res = csid_res_7280,
 	.vfe_res = vfe_res_7280,
@@ -5276,6 +5290,7 @@ static const struct camss_resources sc7280_resources = {
 static const struct camss_resources sm8550_resources = {
 	.version = CAMSS_8550,
 	.pd_name = "top",
+	.legacy_phy = true,
 	.csiphy_res = csiphy_res_8550,
 	.csid_res = csid_res_8550,
 	.vfe_res = vfe_res_8550,
@@ -5290,6 +5305,7 @@ static const struct camss_resources sm8550_resources = {
 static const struct camss_resources sm8650_resources = {
 	.version = CAMSS_8650,
 	.pd_name = "top",
+	.legacy_phy = true,
 	.csiphy_res = csiphy_res_sm8650,
 	.csid_res = csid_res_sm8650,
 	.csid_wrapper_res = &csid_wrapper_res_sm8550,
@@ -5304,6 +5320,7 @@ static const struct camss_resources sm8650_resources = {
 static const struct camss_resources x1e80100_resources = {
 	.version = CAMSS_X1E80100,
 	.pd_name = "top",
+	.legacy_phy = true,
 	.csiphy_res = csiphy_res_x1e80100,
 	.csid_res = csid_res_x1e80100,
 	.vfe_res = vfe_res_x1e80100,
diff --git a/drivers/media/platform/qcom/camss/camss.h b/drivers/media/platform/qcom/camss/camss.h
index 6d048414c919e..24ec3ad7990e7 100644
--- a/drivers/media/platform/qcom/camss/camss.h
+++ b/drivers/media/platform/qcom/camss/camss.h
@@ -104,6 +104,7 @@ enum icc_count {
 struct camss_resources {
 	enum camss_version version;
 	const char *pd_name;
+	const bool legacy_phy;
 	const struct camss_subdev_resources *csiphy_res;
 	const struct camss_subdev_resources *csid_res;
 	const struct camss_subdev_resources *ispif_res;

-- 
2.52.0


