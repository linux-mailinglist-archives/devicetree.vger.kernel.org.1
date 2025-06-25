Return-Path: <devicetree+bounces-189435-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D7BAE7CC9
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 11:29:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 779BE16E300
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 09:28:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 411A72ECD1B;
	Wed, 25 Jun 2025 09:19:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="IbA3LEyA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05CEA2EACF2
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 09:19:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750843152; cv=none; b=IJq4MzXcAEQMXyOOxPNUWiqRdNkLG2rzV7RO3Q0AGTJhuGpmyHh9+XSWYs+LIFoW3MbNfdwpBQQg53bEOSnT1KUO9AL+hT0chcj2CNjGKnHPtZ87YgBn6UTN5+vR+Eu3+NG/Whg/3Taiau+HI2FpJ3KKmgs+qYGbui8++AT4vM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750843152; c=relaxed/simple;
	bh=kgpatAn3UyZhRRylnSXWUsrYKcp8B/g//yfZm7DYI1o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SofDezPW/1INMJ/rP2Cb7xDsXr4bE1s2hsiXBUAlZuqG6GCkFJ/6H8Zz+gOpVYwY85/CxoqqE7RzRURN4QxWdaQGOa0ECIn/MBw3utCma5AKD6/yMFqpMmhDLxjvBTCci/UR7GWRkXqrQgClVrOx6F50dSoaCUmknC6b03u4pZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=IbA3LEyA; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-60867565fb5so2462240a12.3
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 02:19:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750843148; x=1751447948; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wuaucapIjbc/Nvst+f4WACJyvX0IAgOq6Rw0lW1hMjM=;
        b=IbA3LEyAEnt6r4nQOn+ZddzhADWqXUS8d6EezQSZgVkquKGZ8j0FWOOSCwJhkzqeED
         DwxRgKWu+8IRwfKZDVXKBax4BC2TVYbRbY9cnTTEXl+RldDwQxDohxoSWjfKRW1V+JSm
         fdm1q5/5kctSHvRgqykJdDaca1HSOVBTPL8ffxeDUyYEPTI4n0BfsjNhsw1V7P8OTbXJ
         izj3rg8QhHHKRr47RrC8a2UQCfvv+lNJ37CTtMzTDTXEiEa3vNCO1g44F1J5W0pAmuKp
         RaZw2WtUvURKRU8GzbDamEuXekWcQuUL4uiJNmHUkPCvRzWXx87mfldAIfE8zf2RU/0r
         0ogg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750843148; x=1751447948;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wuaucapIjbc/Nvst+f4WACJyvX0IAgOq6Rw0lW1hMjM=;
        b=OzK3FRiJlaEsaLdO/PlPEYmggn+3gJGMR7jCfn6XnbtHDRFilOhVQnlRMadnCHeV/Z
         vAlGCqVkLpk24vTHq8zMTJ4I05pFWkri59oq1O1L/gDai8RrzzD9eItW1XjczjhjOM1v
         UICcAJPcCBn95nZPrPda7vIl1JMZtVAt72Vpx2pSsD8HCt9BbEUccn5B9pSOl08bcQp0
         EQskDMcQjn4sOpEZuA45Ox2e6tEEQbOnERl8sVBM42knEj0+idfa8+8ih/7MSGRcZdii
         Jlfe/WkNRUokPCl42uS+/zHip1WcQOimXEXBxlwzg0FJNUIh9nTEkj8yZEWVztpI1HuU
         BH/A==
X-Forwarded-Encrypted: i=1; AJvYcCVGZOwEPVOdOTD+ImfMnVKpgpmizxZ2VEyBUsgGYKLhp/HYBqcg3aiR1tozhZpGEw8vB5gDOZMsqvUk@vger.kernel.org
X-Gm-Message-State: AOJu0Yzm0nuMTbX/XJYTbQMRIFSzwgyvO/rZc19iGZwFLZfpu817sRzW
	d3N7iiFGV09+kW8Tx6axvxHpIMtuHHwzbNSAQ/3JsVBtBInimdHUMZI59vGq9H6/AE4=
X-Gm-Gg: ASbGnct8DXDfltiuMV7ElrIVrtkSKyHLfqzh+q9UdRZo3UpjvcouTZgsZOds13gmi+Y
	TaUw0+XcbmJaUTvjSVZZOSw/uok6i6bA/Od1uSzA2YJUPTnnUGf6m+bRcHkh8FHCVB80/DvsT5C
	o2pddfqnk5SmtIXpsI50vwjVmzxO6EKF84uSRqU1WUzlDMbem/zrWmkMEz4r7UbKBtum5keMJ+P
	BrvUm5Oqy7+O0JTCnzY30kyy+AuB9Wl2A9DBCl0VIbeiup+YSY0IkWmUH+95e+2fRy4BjJ7hUjm
	a3pV7Wy9vDLwHuyjAlTHKU2sF8/qR7lSutw8hQvyhuepHeMWdaVv8SqseKc66h1lKJ5u2rJfK7s
	C+0ZXpZzHlkRqhDcfx4rPlCs+1lR227sA
X-Google-Smtp-Source: AGHT+IGf29aQsvkm8Kz0oGqiHGQjafT0bQ1zdGBqpvWbJxB7FTYbZYbTebbfduxcvKuny9uTfKYpAA==
X-Received: by 2002:a05:6402:1d55:b0:60c:44d6:2817 with SMTP id 4fb4d7f45d1cf-60c4de9bbabmr1551640a12.20.1750843148144;
        Wed, 25 Jun 2025 02:19:08 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60c2f196f84sm2194802a12.14.2025.06.25.02.19.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 02:19:07 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 25 Jun 2025 11:18:59 +0200
Subject: [PATCH 4/4] regulator: qcom-rpmh: add support for pm7550
 regulators
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250625-pm7550-pmr735b-rpmh-regs-v1-4-cab8ef2e5c92@fairphone.com>
References: <20250625-pm7550-pmr735b-rpmh-regs-v1-0-cab8ef2e5c92@fairphone.com>
In-Reply-To: <20250625-pm7550-pmr735b-rpmh-regs-v1-0-cab8ef2e5c92@fairphone.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750843144; l=3664;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=kgpatAn3UyZhRRylnSXWUsrYKcp8B/g//yfZm7DYI1o=;
 b=DjI1ewEOMhLXPrgnIicTOYSgqxg7FcxqxdagsIqlXVqmIr74DNe0c+qZVMPBGXDwyxSYsOq6k
 VIOE8NVnEXhDlVP0Lqu3VovgShcGjrfM2lQ+PFwD+vo3jW88HB0I4uG
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add RPMH regulators exposed by Qualcomm Technologies, Inc. PM7550 PMIC.
It has 6 FTS525 (FT-SMPS) and 23 LDOs with 3 different types.
L1-L11 are LDO515 LV NMOS, L12-L13 are LDO515 MV PMOS, L14-L23 are
LDO512 MV PMOS.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 drivers/regulator/qcom-rpmh-regulator.c | 38 +++++++++++++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/drivers/regulator/qcom-rpmh-regulator.c b/drivers/regulator/qcom-rpmh-regulator.c
index 7b1743d51fd145a44f98dd8e605b4ca410046654..ec25b324f80669a9291e41e613f09424361a28ca 100644
--- a/drivers/regulator/qcom-rpmh-regulator.c
+++ b/drivers/regulator/qcom-rpmh-regulator.c
@@ -1462,6 +1462,40 @@ static const struct rpmh_vreg_init_data pm7325_vreg_data[] = {
 	{}
 };
 
+static const struct rpmh_vreg_init_data pm7550_vreg_data[] = {
+	RPMH_VREG("smps1", "smp%s1",  &pmic5_ftsmps525,    "vdd-s1"),
+	RPMH_VREG("smps2", "smp%s2",  &pmic5_ftsmps525,    "vdd-s2"),
+	RPMH_VREG("smps3", "smp%s3",  &pmic5_ftsmps525,    "vdd-s3"),
+	RPMH_VREG("smps4", "smp%s4",  &pmic5_ftsmps525,    "vdd-s4"),
+	RPMH_VREG("smps5", "smp%s5",  &pmic5_ftsmps525,    "vdd-s5"),
+	RPMH_VREG("smps6", "smp%s6",  &pmic5_ftsmps525,    "vdd-s6"),
+	RPMH_VREG("ldo1",  "ldo%s1",  &pmic5_nldo515,      "vdd-l1"),
+	RPMH_VREG("ldo2",  "ldo%s2",  &pmic5_nldo515,      "vdd-l2-l3"),
+	RPMH_VREG("ldo3",  "ldo%s3",  &pmic5_nldo515,      "vdd-l2-l3"),
+	RPMH_VREG("ldo4",  "ldo%s4",  &pmic5_nldo515,      "vdd-l4-l5"),
+	RPMH_VREG("ldo5",  "ldo%s5",  &pmic5_nldo515,      "vdd-l4-l5"),
+	RPMH_VREG("ldo6",  "ldo%s6",  &pmic5_nldo515,      "vdd-l6"),
+	RPMH_VREG("ldo7",  "ldo%s7",  &pmic5_nldo515,      "vdd-l7"),
+	RPMH_VREG("ldo8",  "ldo%s8",  &pmic5_nldo515,      "vdd-l8"),
+	RPMH_VREG("ldo9",  "ldo%s9",  &pmic5_nldo515,      "vdd-l9-l10"),
+	RPMH_VREG("ldo10", "ldo%s10", &pmic5_nldo515,      "vdd-l9-l10"),
+	RPMH_VREG("ldo11", "ldo%s11", &pmic5_nldo515,      "vdd-l11"),
+	RPMH_VREG("ldo12", "ldo%s12", &pmic5_pldo,         "vdd-l12-l14"),
+	RPMH_VREG("ldo13", "ldo%s13", &pmic5_pldo,         "vdd-l13-l16"),
+	RPMH_VREG("ldo14", "ldo%s14", &pmic5_pldo,         "vdd-l12-l14"),
+	RPMH_VREG("ldo15", "ldo%s15", &pmic5_pldo,         "vdd-l15-l17-l18-l19-l20-l21-l22-l23"),
+	RPMH_VREG("ldo16", "ldo%s16", &pmic5_pldo,         "vdd-l13-l16"),
+	RPMH_VREG("ldo17", "ldo%s17", &pmic5_pldo,         "vdd-l15-l17-l18-l19-l20-l21-l22-l23"),
+	RPMH_VREG("ldo18", "ldo%s18", &pmic5_pldo,         "vdd-l15-l17-l18-l19-l20-l21-l22-l23"),
+	RPMH_VREG("ldo19", "ldo%s19", &pmic5_pldo,         "vdd-l15-l17-l18-l19-l20-l21-l22-l23"),
+	RPMH_VREG("ldo20", "ldo%s20", &pmic5_pldo,         "vdd-l15-l17-l18-l19-l20-l21-l22-l23"),
+	RPMH_VREG("ldo21", "ldo%s21", &pmic5_pldo,         "vdd-l15-l17-l18-l19-l20-l21-l22-l23"),
+	RPMH_VREG("ldo22", "ldo%s22", &pmic5_pldo,         "vdd-l15-l17-l18-l19-l20-l21-l22-l23"),
+	RPMH_VREG("ldo23", "ldo%s23", &pmic5_pldo,         "vdd-l15-l17-l18-l19-l20-l21-l22-l23"),
+	RPMH_VREG("bob",   "bob%s1",  &pmic5_bob,          "vdd-bob"),
+	{}
+};
+
 static const struct rpmh_vreg_init_data pmr735a_vreg_data[] = {
 	RPMH_VREG("smps1",  "smp%s1",  &pmic5_ftsmps520, "vdd-s1"),
 	RPMH_VREG("smps2",  "smp%s2",  &pmic5_ftsmps520, "vdd-s2"),
@@ -1679,6 +1713,10 @@ static const struct of_device_id __maybe_unused rpmh_regulator_match_table[] = {
 		.compatible = "qcom,pm7325-rpmh-regulators",
 		.data = pm7325_vreg_data,
 	},
+	{
+		.compatible = "qcom,pm7550-rpmh-regulators",
+		.data = pm7550_vreg_data,
+	},
 	{
 		.compatible = "qcom,pmr735a-rpmh-regulators",
 		.data = pmr735a_vreg_data,

-- 
2.50.0


