Return-Path: <devicetree+bounces-189434-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AE25FAE7CC6
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 11:28:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7AB2D16C059
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 09:28:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 705ED2EBBB6;
	Wed, 25 Jun 2025 09:19:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="5ln4Yrsq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 103882EA488
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 09:19:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750843151; cv=none; b=daGnlSh+64rFJK4PHycwT+QsAabGT95vBisTo2kdFXHHJxtAZ4vRJhqYNNjQkxRPLNr9Lfp1LIRN+MMGjZWAkZwl0XRYAIZoHT3S4vBFkSS5jAiGLcGqM5lg0LqUMtI6Vu7B41C0aU/QWZYaCv0V8S54Ei/c/FUD+BaoSOS1Jh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750843151; c=relaxed/simple;
	bh=At2HBbsXvVHz9rxjvswxCr4eB0qsSfZ+uDiTlrusbVc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=o2WDOQaXvkZ772KJtuzTfpaRpyXzNoscoY+EUi5p0FKJ0PuCceq9MrSipVqprm0fa+R9NVMhGRI36Df/Yz6oZMKBzEGqKjW2H8H9uWSPqLNGZ3PYRFYaP/hfkg2I+NM+nH9/fEE1rOF6yuqWnl5D6rZLdvfeWtKbItC+Z4H4Ai4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=5ln4Yrsq; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-608acb0a27fso9740789a12.0
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 02:19:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750843147; x=1751447947; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QNd3fbEJo95yGNYgF3KFEKSMuGFIZiFKw1iK0PL8zKc=;
        b=5ln4YrsqZY+GnVgKLiDiELO8HL9wh+hKCgLlumv38bMmDeDzWBv6oJB9biOZTk/0k8
         NRNXTQ1M3Jdk393sP04alOb+Ca7qaRwWxi1YtZpRr70RqbVbjjCbgQ1GMvuD2fY+EIK9
         gAwJE2EDRZ5ru0ZYOHQ1DiwhmBMB01WzwJ36n2dNY8pBdLch9GsFDawib5A2GNF0ICt+
         PsRtZnZwL7aSzDyIRHQa2tAA2AIHNuX3OdDWFrOgZYV4wcorLmBmYuTBvH6pcVO9X/24
         eajZfm44ci5KBCNHscM2ceknWlKzDWv6c23fQujKexnWhCmn/ztcq8AlNa+eH+1XQRLh
         t07w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750843147; x=1751447947;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QNd3fbEJo95yGNYgF3KFEKSMuGFIZiFKw1iK0PL8zKc=;
        b=Kq2q/kjkLEKuhjYjRxY/hnTkF0fyr+ogKXaXSsX6tEB3vwDOA1iB94AFvMe+2AunIK
         l1s5pshx8gT2hiVjITwqzCfucSxBfYzDNIvgI9lLOQ1pDQvaZz1OACAaQkhJaNJ9RotC
         h6eFpURkHY+xufP6Vye3vLsp3xzvirvepwhl/1k/Nv8deUeJGF9l1bn0+dsTxfRRzhrQ
         IY3x42ysbdg6dOOuXJ6y51RF1ASTFraYJymoZVA+qG9QcjsScAKgo6D2CI1wni66Exaw
         bcuEmIb/gO+V6qT/csbZslfSi5goKOfXkpWliyIDdLfQkvrxbKcWyCAGuFYBcmIHqumY
         fYKQ==
X-Forwarded-Encrypted: i=1; AJvYcCXUiDiwy0CL17QnT7zI68kwF0OcDJ9FzBrf6zCevrh4p4KMF7c3DsPquzmEXdFa6YV5qfRnTPd26rte@vger.kernel.org
X-Gm-Message-State: AOJu0YxB1kt9TNzTB8PbMz/uGUNEudzKPDnhJnRL8So1hCBV84n2AZ3b
	ByaMGxIQ8RkFMVGWKXCIhHUwem/ZgZG2UPfNCmrPQj3IOBLQCbOIfukwaWXnCV3XzjY=
X-Gm-Gg: ASbGncvaHgNogax1KCBAN3q2JwZPr/uKkG2bmD4bUd+hx9jxpimEOa0jgIJLNN/mNjX
	Rz0HGWgO2H7cjMea0ZxJqit2NozDb82YiGcQYYKOUUYlnFN8wvEz+H3/r5EvWz9MeOks+gcGIVp
	es6LC0cIYmgD9EoBMpUBXIPZpWPC3ZXjUJ7nv3L9mE9c0+A7tfq38ng+w/JB7IRtSGNX3KFNrRE
	6+OHuYhLFREvQwGtTIDl0Mtomlv2Nx8pHHmw+cXOrkF0SUoKI4NknkZzuqSeEx54Q5ZrTkUhAj1
	AXM+xIE3sqY4MpGZyI97Q79MWR+1HMLa/OLpK4QdhK4Buq7iY3YvO6rHzBiVZVPgnt8GGn61S6W
	UA5F5rFbxinc6BnNFh86tKr53xeDeoPXwsS0+b6TTZGE=
X-Google-Smtp-Source: AGHT+IFrWmp3wGgOyhTgxlPt9IPhlOttoTglpXWgze+zdtqVFSVHTWvXHVCUkPD9wTziTvQxUHBaXA==
X-Received: by 2002:a05:6402:2712:b0:606:c388:636d with SMTP id 4fb4d7f45d1cf-60c4de1f0f7mr1624510a12.27.1750843147213;
        Wed, 25 Jun 2025 02:19:07 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60c2f196f84sm2194802a12.14.2025.06.25.02.19.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 02:19:06 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 25 Jun 2025 11:18:58 +0200
Subject: [PATCH 3/4] regulator: qcom-rpmh: add support for pmr735b
 regulators
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250625-pm7550-pmr735b-rpmh-regs-v1-3-cab8ef2e5c92@fairphone.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750843144; l=2162;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=At2HBbsXvVHz9rxjvswxCr4eB0qsSfZ+uDiTlrusbVc=;
 b=WxMVah8khmrJdoPsiT1CStb1PKFXN7peOrJoknPgFsvU3lLgAlpjKormdCGiDOBOPg2x5ce6s
 Ux0+q9cGoeSDb8awLllnJmDhpFxOlOsKC1z4/vwDLs+6YPJJJdjPqbj
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add RPMH regulators exposed by Qualcomm Technologies, Inc. PMR735B PMIC.
It has 12 LDOs with 2 different types, L4 & L10 are LDO512 LV PMOS
and the rest are LDO512 NMOS.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 drivers/regulator/qcom-rpmh-regulator.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/regulator/qcom-rpmh-regulator.c b/drivers/regulator/qcom-rpmh-regulator.c
index 7870722b6ee21ce487c2cf911760fb4a385fc44b..7b1743d51fd145a44f98dd8e605b4ca410046654 100644
--- a/drivers/regulator/qcom-rpmh-regulator.c
+++ b/drivers/regulator/qcom-rpmh-regulator.c
@@ -1476,6 +1476,22 @@ static const struct rpmh_vreg_init_data pmr735a_vreg_data[] = {
 	{}
 };
 
+static const struct rpmh_vreg_init_data pmr735b_vreg_data[] = {
+	RPMH_VREG("ldo1",   "ldo%s1",   &pmic5_nldo,      "vdd-l1-l2"),
+	RPMH_VREG("ldo2",   "ldo%s2",   &pmic5_nldo,      "vdd-l1-l2"),
+	RPMH_VREG("ldo3",   "ldo%s3",   &pmic5_nldo,      "vdd-l3"),
+	RPMH_VREG("ldo4",   "ldo%s4",   &pmic5_pldo_lv,   "vdd-l4"),
+	RPMH_VREG("ldo5",   "ldo%s5",   &pmic5_nldo,      "vdd-l5"),
+	RPMH_VREG("ldo6",   "ldo%s6",   &pmic5_nldo,      "vdd-l6"),
+	RPMH_VREG("ldo7",   "ldo%s7",   &pmic5_nldo,      "vdd-l7-l8"),
+	RPMH_VREG("ldo8",   "ldo%s8",   &pmic5_nldo,      "vdd-l7-l8"),
+	RPMH_VREG("ldo9",   "ldo%s9",   &pmic5_nldo,      "vdd-l9"),
+	RPMH_VREG("ldo10",  "ldo%s10",  &pmic5_pldo_lv,   "vdd-l10"),
+	RPMH_VREG("ldo11",  "ldo%s11",  &pmic5_nldo,      "vdd-l11"),
+	RPMH_VREG("ldo12",  "ldo%s12",  &pmic5_nldo,      "vdd-l12"),
+	{}
+};
+
 static const struct rpmh_vreg_init_data pm660_vreg_data[] = {
 	RPMH_VREG("smps1",  "smp%s1",  &pmic4_ftsmps426, "vdd-s1"),
 	RPMH_VREG("smps2",  "smp%s2",  &pmic4_ftsmps426, "vdd-s2"),
@@ -1667,6 +1683,10 @@ static const struct of_device_id __maybe_unused rpmh_regulator_match_table[] = {
 		.compatible = "qcom,pmr735a-rpmh-regulators",
 		.data = pmr735a_vreg_data,
 	},
+	{
+		.compatible = "qcom,pmr735b-rpmh-regulators",
+		.data = pmr735b_vreg_data,
+	},
 	{
 		.compatible = "qcom,pm660-rpmh-regulators",
 		.data = pm660_vreg_data,

-- 
2.50.0


