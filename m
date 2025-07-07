Return-Path: <devicetree+bounces-193629-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C69AFB100
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 12:18:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 236B54A20F1
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 10:18:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25EF92980AC;
	Mon,  7 Jul 2025 10:18:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="vWJq6nMh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E24A2957CE
	for <devicetree@vger.kernel.org>; Mon,  7 Jul 2025 10:18:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751883506; cv=none; b=Zc5L/H4Bv7w4TpODj1LoybtomRYD9mj97wQYCScXqhgoCaIG8Gi5jxLxrMifdoF1O7aemTVroW/xBDcxhHb1721lhDfmL43WhFKSPr+fIIGKOZzj+TTUmxgp1IJvH5neR+S2J2j/8xeqozBTfnd00+xNKHmbW6Tkbvt3A07Jha0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751883506; c=relaxed/simple;
	bh=DMbrTGn2oiFCand2994EbbGqOk9oOogjgoWe7AhWgh4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NHr951B9avtFQl9HETVuG1G9RYga5Y2pytLCtMIAcK6eNDzHTyauc1oN9eFW/kzeS9d0nIM/2WsHqljlh09zjEDBfgIzCLatb80NkeSW7WFSaCV0Ven/eoa2dzHTEcJhJV8U8YZ+ri23pwwMAoFmDDZ2kPSOp1YWzPgwYrxtPVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=vWJq6nMh; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-60cc11b34f6so6500861a12.0
        for <devicetree@vger.kernel.org>; Mon, 07 Jul 2025 03:18:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1751883502; x=1752488302; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a8Ge20RgeK7ksHv2r52GDHh4NGxzRBjNBgwgR8RP7uA=;
        b=vWJq6nMhQXIcIK3QbvkwT7KQVepZJmCJYUWQTx+ehyKb+8jaDxBssKf3K5x/T9tTo0
         oGt81EuYyK4B2ljSd4G1nztAHO9NIjAc/Nb8zJ5PAFZJ6+I2xgfI/89O+J+VZxhVh5pr
         AcZVE3yE7EL1mmGWOnANaxkn4fN3CjFsGhjSTiAFJYXKVAZGboH4EUGdgvMgmVcRXHQj
         MIVMbEvWY3b2mLdGEMdJAHvl2GeaJae5IS/2gPPCqEuJhjwABl1kSoqpCmTfDo7/w57k
         alwQXkgFriIPZwUOy2Y+i+2OJ9uBnT42Q1WMS445Q4VqfdJ7GDueRpwm15IedJgm01Mw
         0Wdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751883502; x=1752488302;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a8Ge20RgeK7ksHv2r52GDHh4NGxzRBjNBgwgR8RP7uA=;
        b=fLIuDvVkb89DgGLc2s75ME6Ud+/eHg2/Ot7Odpr4RZGeHGhgSi92eWOCQ/Fr2jwZGY
         Ah/IWwLNovHtQLw8kaj4TZSUypIP8sTNpX4aiheO7jYoZrn2B6Gm8A/NQr1R4e1NvY+w
         1nIpxWaRZTPQBsi8B/RXivuD/u+VAfo/nejtdZjnosQ5RexWQ+5atoBMEqjTNdv43Dc2
         G6e3nTFtaCcrifAlchyLoYljZ2szXr8M4Eit31pFlAbuVv+skIo7TOZbxdVtNONP9ULE
         LArJ8mGkDQRgCp2uUZ8h1LcculGH/5wbV9fuJTEft3R+08aSYhxQNFiWCLCmYIoLzZKC
         OYbw==
X-Forwarded-Encrypted: i=1; AJvYcCVXyd4l2qbp97FlQB6Hnw1hLlcYJIAa5uPfLYBeHEadCTv7liccnnDxDrWjvPpjnA7glghyGJu6In24@vger.kernel.org
X-Gm-Message-State: AOJu0YyHJha1l7RS4cgVBkv8gGxE3oCg/8uiStCVYwpa5KPu7SYmQ4K8
	JKouJSaYekR64mOZhUq1/T3fMdU+We0wXmKlae91+7hIxolcBpRbJTDUaVb+pmEJ9Yw=
X-Gm-Gg: ASbGncuoiYXAReLfDIa30gEhAoRbMDlvcK2ElbXblEjl7egkC53FuY2lPnPGIrWeefj
	3rH8jiaxqGf4DlZAOHIxG5mzxZ+pb6HdKFflHB81pjHUyIHKEQblSQv98cqQL2eUmq0AOLeWcMX
	doONfZVS3bmVzalbmYz4gRfChOvPsOYev/ZT1vIzLVicH05NAuG/r8eLdPwIQlyb3F+IKXX7CoL
	YwUsga5eoRJFgqzVJ/Yaco7F1pGuvTg8O+PV1MB/q8wScVkRh+0eBldhGsK2n2iGH9X3C4Sm/jV
	gSuY1qTkDTEwlhhROwNOW7uUixr0O5XexmZC5LgE1FHV/5wQBPujqy72WyLj3PAYW+eZEbEfDSp
	7fzG3kbkHH1gqXWxq5E2KjdS4ITv8SvTg
X-Google-Smtp-Source: AGHT+IGG3uIPzMF+00PNjI0EwVgYviZWA+kJ/1ai7rBTaIQlV6W7t19T5/X/FqCEc5TjKLQfSV9xng==
X-Received: by 2002:a17:907:d1c:b0:ae0:c1c4:645 with SMTP id a640c23a62f3a-ae3f830b8c0mr1056831866b.21.1751883502499;
        Mon, 07 Jul 2025 03:18:22 -0700 (PDT)
Received: from otso.local (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f6bb1edfsm671711766b.180.2025.07.07.03.18.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jul 2025 03:18:22 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Mon, 07 Jul 2025 12:18:11 +0200
Subject: [PATCH v2 2/2] pmdomain: qcom: rpmhpd: Add Milos power domains
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250707-sm7635-rpmhpd-v2-2-b4aa37acb065@fairphone.com>
References: <20250707-sm7635-rpmhpd-v2-0-b4aa37acb065@fairphone.com>
In-Reply-To: <20250707-sm7635-rpmhpd-v2-0-b4aa37acb065@fairphone.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Ulf Hansson <ulf.hansson@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751883500; l=1514;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=DMbrTGn2oiFCand2994EbbGqOk9oOogjgoWe7AhWgh4=;
 b=XSqig1gqw6cfVF2o7Z7/eF5lh89rfbm1iux4bgA4bm5c0eWV+gPab1K/4ouMqwacD2UIW8onh
 eI1Xn9NWVtyCBxoKJIVmOn+JG8ROd7Oyu9UjQ+ZkkZ3+hoHgyRFenPP
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add the power domains exposed by RPMH in the Qualcomm Milos platform.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 drivers/pmdomain/qcom/rpmhpd.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/pmdomain/qcom/rpmhpd.c b/drivers/pmdomain/qcom/rpmhpd.c
index 078323b85b5648e33dd89e08cf31bdc5ab76d553..e09552a469264f28952fc46c3ab8c125e87310da 100644
--- a/drivers/pmdomain/qcom/rpmhpd.c
+++ b/drivers/pmdomain/qcom/rpmhpd.c
@@ -217,6 +217,24 @@ static struct rpmhpd gmxc = {
 	.res_name = "gmxc.lvl",
 };
 
+/* Milos RPMH powerdomains */
+static struct rpmhpd *milos_rpmhpds[] = {
+	[RPMHPD_CX] = &cx,
+	[RPMHPD_CX_AO] = &cx_ao,
+	[RPMHPD_EBI] = &ebi,
+	[RPMHPD_GFX] = &gfx,
+	[RPMHPD_LCX] = &lcx,
+	[RPMHPD_LMX] = &lmx,
+	[RPMHPD_MSS] = &mss,
+	[RPMHPD_MX] = &mx,
+	[RPMHPD_MX_AO] = &mx_ao,
+};
+
+static const struct rpmhpd_desc milos_desc = {
+	.rpmhpds = milos_rpmhpds,
+	.num_pds = ARRAY_SIZE(milos_rpmhpds),
+};
+
 /* SA8540P RPMH powerdomains */
 static struct rpmhpd *sa8540p_rpmhpds[] = {
 	[SC8280XP_CX] = &cx,
@@ -723,6 +741,7 @@ static const struct rpmhpd_desc qcs615_desc = {
 };
 
 static const struct of_device_id rpmhpd_match_table[] = {
+	{ .compatible = "qcom,milos-rpmhpd", .data = &milos_desc },
 	{ .compatible = "qcom,qcs615-rpmhpd", .data = &qcs615_desc },
 	{ .compatible = "qcom,qcs8300-rpmhpd", .data = &qcs8300_desc },
 	{ .compatible = "qcom,qdu1000-rpmhpd", .data = &qdu1000_desc },

-- 
2.50.0


