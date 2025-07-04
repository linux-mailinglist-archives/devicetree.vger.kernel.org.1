Return-Path: <devicetree+bounces-192939-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 025DDAF88F2
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 09:17:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 58715587F66
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 07:17:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A344279DD5;
	Fri,  4 Jul 2025 07:17:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="WEiXB9bX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C220267F66
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 07:17:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751613436; cv=none; b=dUyVA6EANMWpjXcfiD0ck0n6gsD/xoBK2gUaZ/E7IG2UrFtiari5ERvoY54O/qqcvyBz0dHWuBoQw7o1hk7iVfWx8nikCMPEccZjw8PUiMvjh4/m+EBBF6sCRxfQwCGzThboj7PEourk5EwAUA+zzCdoenvDL56XEKjfS5S7Adk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751613436; c=relaxed/simple;
	bh=WEDOiEFaIuCIuMx9QpwHtbudKxci3T1kQojeog8ab1o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CUwh6EaWV6HgRO4qv5phNhYCnDJweoPhXvSYP/YibeehkC7ofHpTSaCvZiICJZevBTTZE1kiO/rPiQTipZps65q8D6Ds6Z+k+zoHeLxmrv1gVS8cumcZqfQT1tj27bHsRK0GRuOlWrGJay6vTOScpWfA8VwE0Iqdk1F9fCE7Ns4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=WEiXB9bX; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-60c5b7cae8bso968703a12.1
        for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 00:17:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1751613433; x=1752218233; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ObV9aMDnHMMEJ0mO0zQzyaaA+ak9cS5sIBz04rXlZDY=;
        b=WEiXB9bXfteLCo3nESaJaC+B6EiFb1UtxEXGA7DC9Bmlf9Z93Yixd5EoG6nttQ5XgK
         J1bBeUN+mJVdwzpcel5TDvu327wBd9K+GOlznOPFkrc9PXPWB74hmIuHaazNtUSolmPu
         PdhErDQooyy/EjVACcocZiz1hbWhA72nZ3RXCeftf60uWC0B8KQ2if9WoHN8+S9T2XIG
         eRbtHbaF3lFAsQKgcD8qMhlmW1onwM9+6net19Pw0rS+/VIgH7wiEtQV9AfnP7cZBUjH
         1F5SOHJiWtwbL/1wHRSFAR8QhVTs8K4XtaGCUOkN1s7Aj7vit/7yIMav/iygvwuwPB6L
         dsOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751613433; x=1752218233;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ObV9aMDnHMMEJ0mO0zQzyaaA+ak9cS5sIBz04rXlZDY=;
        b=hOqXrjjIQn12C5QVdDrANH+h3PHuRQ6yo47JytwD1J8H+gqXpe443NL7Zk8OmXpove
         rNE8Uo0ZeIgDpNzitAdYIRg3xoEFEtBxlOlh3XMppckwJ1My1ZbH0wo60VNjMIHZIQA6
         ZW8z6SC0l6wqoLUVyfXgNk15PNtrZYXyDE08D0w5ctTLryXpmpAzAuSGLo7PKx0x8j6B
         4cTWIXLsjQ9UB+VcazYatFCsjyMKruAUSDaJ0AeWHyTbVZ2zKUqXVdwwNWeQ+EcqClOM
         QIKbO+xX51l/DVvoi+kzzl94MTohnlF91LpYQ9yaoKOlPMKNCfUOcReCHFb5QDiP9jGn
         QDGg==
X-Forwarded-Encrypted: i=1; AJvYcCXxdmgc+k6gwMnlnwrhzjqr60+IaYHOGAoXMYPam0GZIvZS2jRU0aT05WWHr8DyocouaqSgNp/VxW93@vger.kernel.org
X-Gm-Message-State: AOJu0YyaM1hlqtlm8nzkJ7+0g5+fF1YH9hkiCL8zkaeJ9ooydvwqfRn+
	dJTpnijKGpa+HR0RXfuFLDkbr/ssAyeWK7uG1rJsDXyn2IlZFUwWGucOxB+Nmw03XqQ=
X-Gm-Gg: ASbGncv3DJBSXIdl3vWEOYhKFr9aQC17mrPnT5ZziTwjx8UK687DbvlfnJYopgG56kw
	OKd5fHLlg8WQyWATTeA8G7rhlRn3/2gSMrZliMRo5Etz/Sl+Xyh+eYBnq2sCy27P0MyczLTqRAG
	NGRoOU9KHuxJ6EbC3wT5jqJfF2E1QUuvtypFt6i8GqmrHU0nyFH7k+jny1p81a/wKIWXNd2M5gu
	vV6iuKiLqHQ/b0qWgi1A4RYiFlJ/Wx460IDpJndZvVpTd59JRAieYq0iUCvc4k+LHmqV8fJTsLF
	whhZcQeTbBIZDdyX3EopeJOpCFNDIDVujw1DNjUqm5wBx3BDhvselcDI14aCkCJyl3nLOjEdcoA
	MDab3COCjgPPyDUD5ca2A4aGEJrvdbGBdVDN0SWAWXEI=
X-Google-Smtp-Source: AGHT+IEeV3Kn0cO3kR2tRlEoBkxBkhC7lFjM9MhwWz48Em0WJ4DrWIyGYbBz0+fejRI4ZiAN8fozmg==
X-Received: by 2002:a17:906:6a28:b0:ae0:7db8:4189 with SMTP id a640c23a62f3a-ae3fbc56e59mr134073166b.18.1751613433448;
        Fri, 04 Jul 2025 00:17:13 -0700 (PDT)
Received: from otso.local (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f66d1ae3sm119401766b.7.2025.07.04.00.17.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jul 2025 00:17:12 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 04 Jul 2025 09:16:53 +0200
Subject: [PATCH v2 01/11] clk: qcom: common: Add support to register rcg
 dfs in qcom_cc_really_probe
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250704-sm7635-clocks-v2-1-9e47a7c0d47f@fairphone.com>
References: <20250704-sm7635-clocks-v2-0-9e47a7c0d47f@fairphone.com>
In-Reply-To: <20250704-sm7635-clocks-v2-0-9e47a7c0d47f@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751613431; l=1425;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=WEDOiEFaIuCIuMx9QpwHtbudKxci3T1kQojeog8ab1o=;
 b=8lgV4fcoO76mnpDOKf3MXb6JTVVbunfJKkGXJqbGA1kJqSDvkrKaCvRKkzUbioxE+iz/7wRo8
 jjECGd4oVdHDozI0ZZsy9hvNox95UzV/nqjk+mRsclTKifsh4TN2ckr
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add support to register the rcg dfs in qcom_cc_really_probe(). This
allows users to move the call from the probe function to static
properties.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 drivers/clk/qcom/common.c | 8 ++++++++
 drivers/clk/qcom/common.h | 2 ++
 2 files changed, 10 insertions(+)

diff --git a/drivers/clk/qcom/common.c b/drivers/clk/qcom/common.c
index b3838d885db25f183979576e5c685c07dc6a7049..d53f290c6121f31d06cf244f72603b694966e216 100644
--- a/drivers/clk/qcom/common.c
+++ b/drivers/clk/qcom/common.c
@@ -390,6 +390,14 @@ int qcom_cc_really_probe(struct device *dev,
 			goto put_rpm;
 	}
 
+	if (desc->dfs_rcgs && desc->num_dfs_rcgs) {
+		ret = qcom_cc_register_rcg_dfs(regmap,
+					       desc->dfs_rcgs,
+					       desc->num_dfs_rcgs);
+		if (ret)
+			goto put_rpm;
+	}
+
 	cc->rclks = rclks;
 	cc->num_rclks = num_clks;
 
diff --git a/drivers/clk/qcom/common.h b/drivers/clk/qcom/common.h
index 0f4b2d40c65cf94de694226f63ca30f4181d0ce5..dbe7ebe5b8710fb03c1671ac9022e608a6aad35f 100644
--- a/drivers/clk/qcom/common.h
+++ b/drivers/clk/qcom/common.h
@@ -43,6 +43,8 @@ struct qcom_cc_desc {
 	size_t num_gdscs;
 	struct clk_hw **clk_hws;
 	size_t num_clk_hws;
+	const struct clk_rcg_dfs_data *dfs_rcgs;
+	size_t num_dfs_rcgs;
 	const struct qcom_icc_hws_data *icc_hws;
 	size_t num_icc_hws;
 	unsigned int icc_first_node_id;

-- 
2.50.0


