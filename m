Return-Path: <devicetree+bounces-167362-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E44B3A8A083
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 16:04:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 00BC7175BD7
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 14:04:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCFD52749D5;
	Tue, 15 Apr 2025 14:03:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VPYVucay"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDAA01F4722
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744725835; cv=none; b=AyK1LsbFYT4zcOlezLOBgF3Lmsa8Yk4Z0bVz4jk+uu6MhDNlHWiCznV2l4VVq4e9VIPJG4OhG58UA0ry5hqrIKYszThu3FroKhaXEdnCSWZR/NQ1OvJLE/EYTYMNx+Z5r5o6VPDHGLhFFF8U5BMty1XhlyBU0ORkw7gtGONO2Ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744725835; c=relaxed/simple;
	bh=ZUMaY3dlz9lDIRgs1PBOQEps4QcSaiaHIY+Pz/GU5Oc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bMnxZJCzgqJATkyr3xHanWEH7UHXAGndKNr+FWsAB9cEjI4ZvMWYKG46bwOsBIYMSd5GuqgFrwx5IP0u9+45wz4XXDrzXMvDzdOnAPBt6cXRoeCM7hEucH8soaMVtRYOewjfOXcMf5D+KKipvAbrpkY0jaKUuvlAz97EMsgHk+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VPYVucay; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43cef035a3bso40395495e9.1
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 07:03:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744725832; x=1745330632; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=POkWqpZmZzT/QyzZw7C/DVyyTQMZgcCqqfwdkFJOiZE=;
        b=VPYVucay1jJ6ioNH5hpr0hDr8oswMY2JUU7fMW80VlOVCly4EhJPdq26RvDjrMoOcU
         MFV5GLArMkNW3JGx9F04xutxn/pwxAFX4xywmKvtKUXa9EOJtZy62UUqGKlUNd5IMBOv
         q0aZZy6069jXV750Gkl8m3KShCKHktM5o13K9XwKzsu0P/ebnN78kzfUAaGQlMLIpmym
         VYyTemKItqdXDCDigkzJ7OHS5L+fUOdxGEtVTumA1qq/pIbqI0Df/Wh2PNzKG2+ffxQu
         yfLsiM7kV1JENxcEtxUigdN2GkrTs6N/E9kI1vK40nm9DtSASoxbDW2T/jUFbDYHILcd
         Y9yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744725832; x=1745330632;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=POkWqpZmZzT/QyzZw7C/DVyyTQMZgcCqqfwdkFJOiZE=;
        b=h5uhwIfM/b9xN2ZmBHmszoFgUZ4LaCqNRJj5+4PTQU1EU0Ii9X9BE64CcsZVkSm3YV
         5ikF0J4oap8hqajsU6usopMvWMLXgJhB8+dm5aUfAHklyqp0wnZiGK710dIz1aZMBAz9
         nIAX0ulyxCS555p1IqrOMtWcgKH6acpauE+1I/KfaZCQByJ9fAK/z6jeHwfdlfsObMsn
         bHXkgUby4wO3P5mb6Nvlb+beiBz/m4YosAuSaPdMxoA+YVUMCKtDROZvU+ruJ+LwxPAM
         9FID5HHX+hofaA5ytv/SvqGgzQm8ws1x44t4oyjQTDKR4tfK4oJMZIwlTyisGPrVtxPE
         pMXg==
X-Forwarded-Encrypted: i=1; AJvYcCUCm1RxIka+4WclcPiMN7SF62s8V5sD02yLiJ5piuAebF5HpIH3AGXB2DxLLWV74Ytzr0mxEaRdRYsD@vger.kernel.org
X-Gm-Message-State: AOJu0YzxNSZIIn8HlT+GWp6FpCNST6QJAJBzMV3eOH6fV7uozzRjXb5k
	dNF+8WzczdQo+yA7zQdCBQVlHcKMT0Zvdtv2S2RyNpfo/86etfh8GskvrJMNT3E=
X-Gm-Gg: ASbGncuOw6V16G9CGFOUv8AucktpKaRzCnvdA35X8v2dlN1RuwnCf8rKEH0rDtoUlu2
	jPpTWCd8ZuLiWGyYCYwCabfl3MJH9CnyFGNP/6JximuryAipwHeywZIa8q5XyMulRq3m43FAcun
	zPyHoowth1Jh3Ms15LtQ0iymm/WjuTJXUqhB+ePMq2ixoX4mk2r5LsyJm1qALcBIfbGiyhpc746
	1pKbDOnZoEUwpIqvuhmY57rAGX/NpwXlsG5+0Q9FnKdjI9LSwFvgWTJxd1UoQGdQTPXO+hHGOG6
	jYdcEsFM+L2QG3wm01QAVYu6hpXW1QCI4QOkzGJPce2dowP5Efyft+aO281Zc6SVLj1fmbZS
X-Google-Smtp-Source: AGHT+IEqLgllgG6L0zPJ7hSdFTSoB8uDVAxU+CD5pH/V4v0HUxYGptOrn1f0jN+ptjhwnNLqYFMRZA==
X-Received: by 2002:a05:600c:1e14:b0:43d:ea:51d2 with SMTP id 5b1f17b1804b1-43f3a93f681mr147738345e9.14.1744725831864;
        Tue, 15 Apr 2025 07:03:51 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43f206332d9sm210480765e9.13.2025.04.15.07.03.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Apr 2025 07:03:51 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 15 Apr 2025 16:03:48 +0200
Subject: [PATCH 2/2] interconnect: qcom: sm8650: add the MASTER_APSS_NOC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250415-topic-sm8650-upstream-icc-apss-noc-v1-2-9e6bea3943d8@linaro.org>
References: <20250415-topic-sm8650-upstream-icc-apss-noc-v1-0-9e6bea3943d8@linaro.org>
In-Reply-To: <20250415-topic-sm8650-upstream-icc-apss-noc-v1-0-9e6bea3943d8@linaro.org>
To: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2017;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=ZUMaY3dlz9lDIRgs1PBOQEps4QcSaiaHIY+Pz/GU5Oc=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBn/mdE4Ap38CwY6Hel8BSUGMRamHbsk/PQ7JDXaAmG
 MPyP3WiJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ/5nRAAKCRB33NvayMhJ0f+BD/
 9pVMjvFr+TK+TSCw+AfaNe4Vit91MGZ/8ynFDqqy5oRpeH8WCVJ0M3+nHKtxSps0SAoP+g3McHlbD0
 NGlpDQdJHYFQa6H1ljv9OOZs7CuvVF3jHNF67bmcYFg4dIBlazG/82j7QY9XipEXTXdqEtgQIbHvKy
 GjcQC5oGWnZW0tBOVmlHc7DSLugsqU5fnUug7ZoDJHQGxEkqkrb29jcyVyrRUzezS83Cv0V/vGuA7Y
 Fu7v8HgaZegRoYjzePNftu5/3IG2fDu7ZNwsYepS6pKJ7/JDZmSF6e1d7IyMkeGr05JE5ebsEWRtjn
 FDsgTpQ2ugYjH/xG4Djw/MylMm0hZLTXqZ3rFEDTrvt60IMPjywPMk9s51e456fXWEOUrT15WzFjP4
 gJeTJnGcR/ZmQyEjLvlX0xN7Rc7rC7susuhfuvk5UrMx1mk9JKchb9p/AJslsyARNVczaVoOJxBW8l
 m/tQzQzqe2ID+YsZZByvDOSA8b/BDPtM1rA4zS2WtMxyk9NsYs2EISnsHM+XLdh1gM+6EZWjeEZMtw
 tEYxSRO7Blc8CnTUXugnQjK5cD1tEBtnlMCqbh/WT/qyS/2Af2pd/0dmMzr5Eq7FWvW9LfICwAuKqw
 xp7qLVmGM5uohySkBAVkMHDX1KAPHkDXYVluBWsGVKnVs++BAQT1zFMybSlg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add the MASTER_APSS_NOC interconnect node of the system NoC
and the associated QoS configuration.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/interconnect/qcom/sm8650.c | 19 +++++++++++++++++++
 drivers/interconnect/qcom/sm8650.h |  1 +
 2 files changed, 20 insertions(+)

diff --git a/drivers/interconnect/qcom/sm8650.c b/drivers/interconnect/qcom/sm8650.c
index f6911891503a7ed65be8bc37ed600e87d4cfcc42..1eb2cc3bea672a01f88bfcf24fd82395a07ea36f 100644
--- a/drivers/interconnect/qcom/sm8650.c
+++ b/drivers/interconnect/qcom/sm8650.c
@@ -847,6 +847,24 @@ static struct qcom_icc_node qnm_aggre2_noc = {
 	.links = { SM8650_SLAVE_SNOC_GEM_NOC_SF },
 };
 
+static struct qcom_icc_qosbox qnm_apss_noc_qos = {
+	.num_ports = 1,
+	.port_offsets = { 0x1c000 },
+	.prio = 2,
+	.urg_fwd = 0,
+	.prio_fwd_disable = 1,
+};
+
+static struct qcom_icc_node qnm_apss_noc = {
+	.name = "qnm_apss_noc",
+	.id = SM8650_MASTER_APSS_NOC,
+	.channels = 1,
+	.buswidth = 4,
+	.qosbox = &qnm_apss_noc_qos,
+	.num_links = 1,
+	.links = { SM8650_SLAVE_SNOC_GEM_NOC_SF },
+};
+
 static struct qcom_icc_node qns_a1noc_snoc = {
 	.name = "qns_a1noc_snoc",
 	.id = SM8650_SLAVE_A1NOC_SNOC,
@@ -1946,6 +1964,7 @@ static struct qcom_icc_node * const system_noc_nodes[] = {
 	[MASTER_A1NOC_SNOC] = &qnm_aggre1_noc,
 	[MASTER_A2NOC_SNOC] = &qnm_aggre2_noc,
 	[SLAVE_SNOC_GEM_NOC_SF] = &qns_gemnoc_sf,
+	[MASTER_APSS_NOC] = &qnm_apss_noc,
 };
 
 static const struct qcom_icc_desc sm8650_system_noc = {
diff --git a/drivers/interconnect/qcom/sm8650.h b/drivers/interconnect/qcom/sm8650.h
index de35c956fe4995aba9e962e52f47bf773b2211c1..b6610225b38acce12c47046769bb0460a1ae4229 100644
--- a/drivers/interconnect/qcom/sm8650.h
+++ b/drivers/interconnect/qcom/sm8650.h
@@ -139,5 +139,6 @@
 #define SM8650_SLAVE_USB3_0			127
 #define SM8650_SLAVE_VENUS_CFG			128
 #define SM8650_SLAVE_VSENSE_CTRL_CFG		129
+#define SM8650_MASTER_APSS_NOC			130
 
 #endif

-- 
2.34.1


