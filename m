Return-Path: <devicetree+bounces-268424-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mMmWJfURn2nVYwQAu9opvQ
	(envelope-from <devicetree+bounces-268424-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 16:15:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B4EED19959F
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 16:15:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id F253330591BB
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 15:12:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC6793D9058;
	Wed, 25 Feb 2026 15:11:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uODowfAJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 120673D9034
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 15:11:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772032300; cv=none; b=NtvLB3CIuYXfIDe4kP376gBCnAXzynexHhLUEO1sYRHb4LfSOm9dmrRP4xHF2iM6MBtU3BXi7mgHsvmdjV/a1cxtpevIxhR7Mgwe0bcfh/AIuENkVZTagZk8pYbFpIJOA+pVVxlRGtF4p+MXaE9gqpS/FkIoAmOqENwgrgAndT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772032300; c=relaxed/simple;
	bh=JCJLTtRtvJ90CcOYDuxKvQaTTx+Gne77FFK0gL0HyCQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DmdO2V5RPQnQn4qteQ1EARzQm1F4vT9SZ07BEV8GQubDjYgIPxrJZ6wDKx7Tz1jwMadVjpI3No2G1DYgw9T5JTAZwYzqTd+5HpKUV6R3HwG5IA7yfC7P6kJrJa3ZRotuvl3cFdD6IXA4MPZYhYhTKbmohXJL2e7nxabOor2jJas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uODowfAJ; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-48371bb515eso85849715e9.1
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 07:11:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772032297; x=1772637097; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hhJBFhoC1RwaDVTW5cflhmAq0jF+Ul6SFFdi4f77LHM=;
        b=uODowfAJ3ZOAtDDascDLd4ziO6wjSCMsxLVzv0K0MMsmuhGy3+XUC+vaVMqd1vwoAV
         rgZoO5qoseJv6qL+jdMRYuHgZVIvZVTTFF6/psh+xYg181wUNxH14MKrBt8BwedRwcmD
         Y2mcKCZ96VyLBxkAhVDcQP6lwMvM6hmJXCbX6EjQwJg/J6VSOakQoWNv+/yRxZMvtM05
         UZFDHY0JlJFSL+KAcAchzqkTEyZOjYtpZ/IEpOU231jcb0ilbwSDsigR4DpGZrdEzO0A
         t6mxQUaDLmhpFVt4P+fpaQ0ZwtIqlugCkR5QBmEsAwhrRVQJL1/g+KIlERwvTzOREEV5
         dTDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772032297; x=1772637097;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hhJBFhoC1RwaDVTW5cflhmAq0jF+Ul6SFFdi4f77LHM=;
        b=MuZvlnsDRx55g8Az/sAQUlqHBfzLWBDy58345M0dyBF9woiOwDf8nYocJOpK2KeQ/O
         gLXw2hfMiJBDbgeRkeQBaxaLv45Upmk62yXz/ZESbt43ZMEv035l/VVP1SH2BOTBUqWi
         dcS1LakM/ccxIGSopwbqaBrC0Zp8rKK34ZR7KqF8DBeVHnc/3o6cLebF5yqxaY3IqlgP
         RwOQOg7Ie7oKeWNistcTOqH6dWdrti2KuLZOUH2+giyjyJDmV0M8IguXw+b8jl/BFS5c
         2fXXyK3+XZNE4TpSv6ZtB5UZnVcwfX6Gpcb+nPW9sXW7/JkXpPMl8fcWhLC+Bft2uFcz
         Wf8g==
X-Forwarded-Encrypted: i=1; AJvYcCXM/GdQjn9Ob+fJwYymN6uMwoyyefbuElbtUZvzf5esvPyUXqkwiDSLab/NzFBQOgrPesepI/utSny1@vger.kernel.org
X-Gm-Message-State: AOJu0YzsfRT0Upt5AaMEPg2sN08nsAklo5X6uOQTQJBuK2Qkc9y/I1+J
	u4SBf6cellW4yfi/+dqgz00xngZn0TkGPIOmgrNWrJH8OTQOwjvUkqS4udbPmi19wD4=
X-Gm-Gg: ATEYQzyPqdvnA8oBlCurLMMFvV2cjy9zagXPvL/TQF3qUKJ2IJ0qHZzi49nx6wZ9M8p
	Rk1K528ZC4KjOgoM2Lk9vByiJx6Vf79nVVqs5+ohaPx5DTN7SOMOjFgIixNIhfVYfwmt2YeMjyM
	vdQWmLg441DHF6s3TwrsFX8WPzQp6bd2JnjeiciY+odglJ0m+Mdcq3Q7aW5hGZlOaTcQSt0nmVw
	bpirj/x36oSWa5FgscNtHwUksJmhzzT26nU/U3zXl3+xRv48dant812OSlSQmaDTvjWhYM7HF5/
	erKf9yWk8MgKMmhINy+lkqk6xkLV/Ki62dxgrmzvOiZSg4MMgCEF6IcbyNpM8fY2/PmViZDTwlh
	osPGzQq30TD+za0QTdSyvYSCOqzLXg4RLi2tebFLiVWuPVlGBljJZPm+zVT9QafOhsCP0Oq6PxC
	GrMlC9PttVMdXI/BbpKnDqrITAQhRXU28Nker0YgbL9R3CKPVOqBunUUJNviVCI8wuvD0b5XYvz
	Xk=
X-Received: by 2002:a05:600c:c8a:b0:483:71f7:2782 with SMTP id 5b1f17b1804b1-483a95fc09emr278187125e9.12.1772032297479;
        Wed, 25 Feb 2026 07:11:37 -0800 (PST)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bfba9a5esm33950695e9.4.2026.02.25.07.11.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 07:11:36 -0800 (PST)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Wed, 25 Feb 2026 15:11:24 +0000
Subject: [PATCH v8 07/18] media: qcom: camss: Drop legacy PHY descriptions
 from x1e
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-7-95517393bcb2@linaro.org>
References: <20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-0-95517393bcb2@linaro.org>
In-Reply-To: <20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-0-95517393bcb2@linaro.org>
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
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3031;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=JCJLTtRtvJ90CcOYDuxKvQaTTx+Gne77FFK0gL0HyCQ=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBpnxEaarbmXGLSsGpk6UhUAzT0tPtL6heJPzy9S
 4HpHuAxMDiJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCaZ8RGgAKCRAicTuzoY3I
 OjJQD/9P7wL04Urs/CtzMCKYuSLrCP3JytN7tWCHJ76N0j22F+VSbOd0g2MceBC0Frih3VE/SLf
 TUaD82VXiR2wqt+NcUy4ftJWYXzw1cX9jlshD+xQJmt6hr6Nic935voLHiUMGaq8RnyxwKNjvQw
 wURAnfsj2j1y8usg96xwYP2CIWfXkHVink4Dl/UL1t9msdnpbVsysB1ym162JDeSVhBlCx4pFzh
 7rEXdMTp+b6QZkAeSK9okxq3ZcaVlJKbGOEgrupww1oYSt9pABGSupDqCJ+/KfUQ404mbkXdm9z
 GQtBKKLjFogY2FPR7Ku174r66kZEHtJ/Wo7ZR3suy4CJM7gcJH8VpgpBsrYogvvgauO9YdWOgDT
 TSV6M3hD5zYtFEVDUibXqSd8cpLIv7x6ZW3qLsHtYF6+fNQd4ljkLm6qp/lOER0e0hZKRL/EKBk
 jmDLP5MwDu7aLXLfdW3McZtttsyxHw+mWFlGt5weoH/PgeWySur2NMZE8sBqKSaYqjvMFXI2Zli
 1iFQp8mH0SDHJwSNVq7hlEB1PH0M7xt4SuWinNEj/ShOgCNfu2vp1PhyVJAiN/FX+oVYsIz7K5I
 /TmKTwerEupiHfaO3U3ZaUg93BEyo/wSJmGC4RnJH6uzlQCkAcNA4V+mG8PSLJurzATPm+PGqX9
 ciODHNwr4anzxXw==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268424-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,baylibre.com,gmail.com,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCPT_COUNT_TWELVE(0.00)[19];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:mid,linaro.org:dkim,linaro.org:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B4EED19959F
X-Rspamd-Action: no action

x1e is the first CAMSS SoC to use the new PHY interface. Drop the redundant
legacy CSIPHY descriptions.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 drivers/media/platform/qcom/camss/camss.c | 37 -------------------------------
 1 file changed, 37 deletions(-)

diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index b1737b5d52160..0ebe634f5d96b 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -3895,15 +3895,6 @@ static const struct resources_icc icc_res_sa8775p[] = {
 static const struct camss_subdev_resources csiphy_res_x1e80100[] = {
 	/* CSIPHY0 */
 	{
-		.regulators = {
-			{ .supply = "vdd-csiphy-0p8", .init_load_uA = 105000 },
-			{ .supply = "vdd-csiphy-1p2", .init_load_uA = 58900 }
-		},
-		.clock = { "csiphy0", "csiphy0_timer" },
-		.clock_rate = { { 300000000, 400000000, 480000000 },
-				{ 266666667, 400000000 } },
-		.reg = { "csiphy0" },
-		.interrupt = { "csiphy0" },
 		.csiphy = {
 			.id = 0,
 			.hw_ops = &csiphy_ops_3ph_1_0,
@@ -3912,15 +3903,6 @@ static const struct camss_subdev_resources csiphy_res_x1e80100[] = {
 	},
 	/* CSIPHY1 */
 	{
-		.regulators = {
-			{ .supply = "vdd-csiphy-0p8", .init_load_uA = 105000 },
-			{ .supply = "vdd-csiphy-1p2", .init_load_uA = 58900 }
-		},
-		.clock = { "csiphy1", "csiphy1_timer" },
-		.clock_rate = { { 300000000, 400000000, 480000000 },
-				{ 266666667, 400000000 } },
-		.reg = { "csiphy1" },
-		.interrupt = { "csiphy1" },
 		.csiphy = {
 			.id = 1,
 			.hw_ops = &csiphy_ops_3ph_1_0,
@@ -3929,15 +3911,6 @@ static const struct camss_subdev_resources csiphy_res_x1e80100[] = {
 	},
 	/* CSIPHY2 */
 	{
-		.regulators = {
-			{ .supply = "vdd-csiphy-0p8", .init_load_uA = 105000 },
-			{ .supply = "vdd-csiphy-1p2", .init_load_uA = 58900 }
-		},
-		.clock = { "csiphy2", "csiphy2_timer" },
-		.clock_rate = { { 300000000, 400000000, 480000000 },
-				{ 266666667, 400000000 } },
-		.reg = { "csiphy2" },
-		.interrupt = { "csiphy2" },
 		.csiphy = {
 			.id = 2,
 			.hw_ops = &csiphy_ops_3ph_1_0,
@@ -3946,15 +3919,6 @@ static const struct camss_subdev_resources csiphy_res_x1e80100[] = {
 	},
 	/* CSIPHY4 */
 	{
-		.regulators = {
-			{ .supply = "vdd-csiphy-0p8", .init_load_uA = 105000 },
-			{ .supply = "vdd-csiphy-1p2", .init_load_uA = 58900 }
-		},
-		.clock = { "csiphy4", "csiphy4_timer" },
-		.clock_rate = { { 300000000, 400000000, 480000000 },
-				{ 266666667, 400000000 } },
-		.reg = { "csiphy4" },
-		.interrupt = { "csiphy4" },
 		.csiphy = {
 			.id = 4,
 			.hw_ops = &csiphy_ops_3ph_1_0,
@@ -5362,7 +5326,6 @@ static const struct camss_resources sm8650_resources = {
 static const struct camss_resources x1e80100_resources = {
 	.version = CAMSS_X1E80100,
 	.pd_name = "top",
-	.legacy_phy = true,
 	.csiphy_res = csiphy_res_x1e80100,
 	.csid_res = csid_res_x1e80100,
 	.vfe_res = vfe_res_x1e80100,

-- 
2.52.0


