Return-Path: <devicetree+bounces-252494-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C698CFFDBA
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 20:53:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E757432E679E
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 19:21:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D9BD332EBA;
	Wed,  7 Jan 2026 19:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MW0zH9bI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DeHDyw2d"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386F1318B84
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 19:20:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767813633; cv=none; b=bl+cByHF60d5505xJVicjYo9GjbiX5WvPNBxTDn6uQKuuO4tvQmkW9GeNRbh/Y22ZU6IYQI2Tv4/mSBMQR/auux3GHodbnptfhakUkGTDKfR236gm2ivbZOz74LeYnmz5YU/7PPIf9FiI3FOn7SMwBYtw9FrunxeF9geDgMS6wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767813633; c=relaxed/simple;
	bh=/2J2c4zUpQv+8TdJHvFbs/n5HauwxA5cdvXyGMSiqhk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=WGh+179U2Ybbymh42OlQayPiyHXOgT7Kuu5DD605HT4XHFdlSIgOlIsffLBZe7KPND5oP+5GK/urfMbBN1SgAVPw5wjCbxg/yZOUvAPlKFIK2H7CgJ9Q4LWm7qCnDkpMGDqwqVoruU787tf70xRiuSx+F5xGa+JxpfJrXd4kKpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MW0zH9bI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DeHDyw2d; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 607Hq2FR2988855
	for <devicetree@vger.kernel.org>; Wed, 7 Jan 2026 19:20:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=DnKul6ENsE5
	CG1kxgMhW/8UxhHvELJqE3WTQ51JllRY=; b=MW0zH9bI7hi5z7SBQjF1dfHdQNG
	4ayCJJUDk+KivZ8q0Ie0L6bjRH8F8YqHN8yhE2c3TUiXQ44H0e0LWmClXNjg71q1
	VXcEBMPQWhgLgCrL3uFCPkfAqwjBeYe43Gw9Fva5eEw6mfK7eYZiqPGnNe1BgqX+
	frGMjUhW3Imy22zuRD/EzzGB+gEpHG/gduwi3OcMuAiJ8+mRorABaRTE+gY9Y+hY
	0RrEErHM1T/Ra/5x+N8EZD9/4qkN90mjWPyZHIbF+kKejWmvYLIDnlU0nOJyOedo
	qTpYSAdQXkKQ6suUYNRouB3xCNPVHM2q6k6y86sqG6FrsawZUj+ZjbRIYUw==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhn2nsu4m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 19:20:29 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-34abec8855aso3434879a91.0
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 11:20:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767813629; x=1768418429; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DnKul6ENsE5CG1kxgMhW/8UxhHvELJqE3WTQ51JllRY=;
        b=DeHDyw2dUBFgorNp+urFUmBAGQijYLsOzJRpB9IzvdG41APdWKiueOkZh1JkFOXsOj
         rZc++nlp9t17l8WuYvYSQVaYF3erS6Oft79NVCiVFVkwZ7yLM+tLwI+/YzyyoxDyJaYK
         8cyMz2+suTR2Gj3pC+C3DX00owIJzuu9JnsMYkRxxR2zRuv9anjKxHRJ7PYAr9Dg8iIA
         kR5WaAnnt18oeBARD0r+hIodrEY7NOG3TzyachQbb2uRSIFf/7GgYDe5vR6Qv7x+XlxO
         1FfRlPtK6LuZ5e68Leaoy5xZSAEmdA7oaNVZbdS8hivWvR71ACwZ4BYeppaA/m4ajmLH
         3mJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767813629; x=1768418429;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=DnKul6ENsE5CG1kxgMhW/8UxhHvELJqE3WTQ51JllRY=;
        b=kBG7sPs66hdzHUdlc/faP4ONBVJXMCaNGUscrhauvCRQO88C01JzHyt555c/UYrbzl
         sX/SOGNqKbnPaWP6D4OZJuNKO7GtiZMNbeGCNdp4KiOchUF1LCazj3XdgXCCYyFd/gT+
         MnLPrOptkaO4pr0sT3c0URNsKbm/Rf2UFAk1emf1Uiehzq6przF8CbA7+hOIkoSv2jb4
         O4R1zq63Z72bPhE3su4iP3i/Qer3uOTNPKMj8fNUYe4YkBnDUWl/MkjzqOUEzIqgcR7Y
         X9ek0+JAbSOvaewTNAhP25UvLv0xGzLlM1kq2SHnvEvuVX8zMp3HTFzO2NxRMm38YzN2
         XdHQ==
X-Forwarded-Encrypted: i=1; AJvYcCWvVKHwptoYUqeIQh7AnbG5Ybet6dilzpgwLh9Zh0aDgxi+qiqZIrbTbXLZrB99yZB86Xtnlj2TR+Eb@vger.kernel.org
X-Gm-Message-State: AOJu0YydS7IdYD8VsSKTgru3aUFayI30qk78eX+wsYpkdajzSmfNK8GS
	x69gXKSYZ1dFdCrZLvXp4nbiAFptSi51NRprwaRMqg79u24aGf6aqQNJWewfGCh9lllsWoCgGAy
	H8Glw4UzOjYkBa0UFdLJ8/hcTSqDw6+TKUMLB4LjZq1VszBiwwsngOh3/76DsjkDv
X-Gm-Gg: AY/fxX6ZV/ti7Kd2K4C34CdVA/4BL3FgQS01i+d13afD3l7igQ23hHVhDc6Z+Sa6WNz
	t7Q4Up04MwNA1MZxRUXWT1oYylgxFnmBHq1AuYIzJVoWViHEeSvc08l3sLzo1Ja4S8b3JhVPa8C
	eS15CJuT6bU9D5E6TO44/F+30ftinXwNTY2V7LHfXbK1aTU3hC82OQfRpujA3Dru9K/ioAHuex3
	00PF8jhdXI5tBru/cHF5Hv809yzw/1TJGELX1IwRGl7oBx8esdUjGpa5bryT7W2IHs8udFxMWFH
	q2LLrH1IimFEQlclSRGBbM0O2Ybh5bd374kTc6wlNTJmOMd0W/pL7PChqc/CtwH9uXT2S3zs2zB
	MkwxRiy1V/d9KpMiF3gZQ/wEATUN0Pr/BpjNaQQhylTWyiA==
X-Received: by 2002:a17:90b:1ccd:b0:32b:baaa:21b0 with SMTP id 98e67ed59e1d1-34f68b4ce91mr3083198a91.6.1767813628826;
        Wed, 07 Jan 2026 11:20:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEBdQ9XgrDo2PINQtHWiVPEX7ghbF4eoODF6ffU6+7YGixMzpgI0s7eWpuAp6WkjAccKlH9rA==
X-Received: by 2002:a17:90b:1ccd:b0:32b:baaa:21b0 with SMTP id 98e67ed59e1d1-34f68b4ce91mr3083177a91.6.1767813628302;
        Wed, 07 Jan 2026 11:20:28 -0800 (PST)
Received: from hu-mohs-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f5f7c4141sm5756375a91.6.2026.01.07.11.20.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 11:20:27 -0800 (PST)
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>, Linus Walleij <linusw@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] pinctrl: qcom: sa8775p-lpass-lpi: Add SA8775P LPASS pinctrl
Date: Thu,  8 Jan 2026 00:50:07 +0530
Message-Id: <20260107192007.500995-3-mohammad.rafi.shaik@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260107192007.500995-1-mohammad.rafi.shaik@oss.qualcomm.com>
References: <20260107192007.500995-1-mohammad.rafi.shaik@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDE1MiBTYWx0ZWRfX+7ziCrdq2UT3
 ZGeZqFSw+4yJIgnTccMvPYsrS3ubv16HygKafbdqSSUhmJL1w7Cy4+5ir/P0pKEiZLEn1j8nbWS
 mUxfIPr3kkDftmDKdD5G5fVeCFV/LsvV4W/0n6nzUPBP8zyeMzk5C3H3VsFP1OYeNQd0TtO4Zv5
 AFkpMT6rZGEnbtOSnzzxgSim05bCsadd85GQkC+sY94PIKifxELQN1M8Y8q66mTluM7dRNR3OKj
 jU1cIyAwLhDv3ezfRnpTrPxcxKpTwhOEMn3xAUab5OJY/zdleUYHjwBi2CRuAOoudh1uLNBTKFc
 llzfmcX1Xc7hJfiQVVD1+Un7QAyZ7wvFvHDRYtFtrbfHQKFPejHTnda0aT58gPXlRAAL48Btk5f
 /ZjC5s+T/lTXLJ2oJZ+9nOsvE4ta/xexHe8yJ/uFx+435BF2hCyRF97Jaqjis4D3h/GxWWZOs72
 +eFlknvzuPMpgfcxQOg==
X-Authority-Analysis: v=2.4 cv=CYEFJbrl c=1 sm=1 tr=0 ts=695eb1fd cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=TKk1ZooRSNHayU2e024A:9 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: Rz2eFaQ9h59q3vr2Qb_ZhHxQAv2lE6ZY
X-Proofpoint-ORIG-GUID: Rz2eFaQ9h59q3vr2Qb_ZhHxQAv2lE6ZY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-07_03,2026-01-07_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 suspectscore=0 clxscore=1015
 impostorscore=0 malwarescore=0 phishscore=0 spamscore=0 adultscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601070152

Add pin control support for Low Power Audio SubSystem (LPASS)
of Qualcomm SA8775P SoC.

Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
---
 drivers/pinctrl/qcom/Kconfig                  |  10 +
 drivers/pinctrl/qcom/Makefile                 |   1 +
 .../pinctrl/qcom/pinctrl-sa8775p-lpass-lpi.c  | 216 ++++++++++++++++++
 3 files changed, 227 insertions(+)
 create mode 100644 drivers/pinctrl/qcom/pinctrl-sa8775p-lpass-lpi.c

diff --git a/drivers/pinctrl/qcom/Kconfig b/drivers/pinctrl/qcom/Kconfig
index c480e8b78503..bb1524243906 100644
--- a/drivers/pinctrl/qcom/Kconfig
+++ b/drivers/pinctrl/qcom/Kconfig
@@ -60,6 +60,16 @@ config PINCTRL_LPASS_LPI
 	  Qualcomm Technologies Inc LPASS (Low Power Audio SubSystem) LPI
 	  (Low Power Island) found on the Qualcomm Technologies Inc SoCs.
 
+config PINCTRL_SA8775P_LPASS_LPI
+	tristate "Qualcomm Technologies Inc SA8775P LPASS LPI pin controller driver"
+	depends on ARM64 || COMPILE_TEST
+	depends on PINCTRL_LPASS_LPI
+	help
+	  This is the pinctrl, pinmux, pinconf and gpiolib driver for the
+	  Qualcomm Technologies Inc LPASS (Low Power Audio SubSystem) LPI
+	  (Low Power Island) found on the Qualcomm Technologies Inc SA8775P
+	  platform.
+
 config PINCTRL_SC7280_LPASS_LPI
 	tristate "Qualcomm Technologies Inc SC7280 LPASS LPI pin controller driver"
 	depends on ARM64 || COMPILE_TEST
diff --git a/drivers/pinctrl/qcom/Makefile b/drivers/pinctrl/qcom/Makefile
index 748b17a77b2c..b2a23a824846 100644
--- a/drivers/pinctrl/qcom/Makefile
+++ b/drivers/pinctrl/qcom/Makefile
@@ -39,6 +39,7 @@ obj-$(CONFIG_PINCTRL_QCOM_SSBI_PMIC) += pinctrl-ssbi-gpio.o
 obj-$(CONFIG_PINCTRL_QCOM_SSBI_PMIC) += pinctrl-ssbi-mpp.o
 obj-$(CONFIG_PINCTRL_QDU1000)	+= pinctrl-qdu1000.o
 obj-$(CONFIG_PINCTRL_SA8775P)	+= pinctrl-sa8775p.o
+obj-$(CONFIG_PINCTRL_SA8775P_LPASS_LPI) += pinctrl-sa8775p-lpass-lpi.o
 obj-$(CONFIG_PINCTRL_SAR2130P)	+= pinctrl-sar2130p.o
 obj-$(CONFIG_PINCTRL_SC7180)	+= pinctrl-sc7180.o
 obj-$(CONFIG_PINCTRL_SC7280)	+= pinctrl-sc7280.o
diff --git a/drivers/pinctrl/qcom/pinctrl-sa8775p-lpass-lpi.c b/drivers/pinctrl/qcom/pinctrl-sa8775p-lpass-lpi.c
new file mode 100644
index 000000000000..4579a079f7c6
--- /dev/null
+++ b/drivers/pinctrl/qcom/pinctrl-sa8775p-lpass-lpi.c
@@ -0,0 +1,216 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#include <linux/gpio/driver.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+
+#include "pinctrl-lpass-lpi.h"
+
+enum lpass_lpi_functions {
+	LPI_MUX_dmic1_clk,
+	LPI_MUX_dmic1_data,
+	LPI_MUX_dmic2_clk,
+	LPI_MUX_dmic2_data,
+	LPI_MUX_dmic3_clk,
+	LPI_MUX_dmic3_data,
+	LPI_MUX_dmic4_clk,
+	LPI_MUX_dmic4_data,
+	LPI_MUX_i2s1_clk,
+	LPI_MUX_i2s1_data,
+	LPI_MUX_i2s1_ws,
+	LPI_MUX_i2s2_clk,
+	LPI_MUX_i2s2_data,
+	LPI_MUX_i2s2_ws,
+	LPI_MUX_i2s3_clk,
+	LPI_MUX_i2s3_data,
+	LPI_MUX_i2s3_ws,
+	LPI_MUX_i2s4_clk,
+	LPI_MUX_i2s4_data,
+	LPI_MUX_i2s4_ws,
+	LPI_MUX_qua_mi2s_data,
+	LPI_MUX_qua_mi2s_sclk,
+	LPI_MUX_qua_mi2s_ws,
+	LPI_MUX_slimbus_clk,
+	LPI_MUX_slimbus_data,
+	LPI_MUX_swr_rx_clk,
+	LPI_MUX_swr_rx_data,
+	LPI_MUX_swr_tx_clk,
+	LPI_MUX_swr_tx_data,
+	LPI_MUX_wsa_swr_clk,
+	LPI_MUX_wsa_swr_data,
+	LPI_MUX_wsa2_swr_clk,
+	LPI_MUX_wsa2_swr_data,
+	LPI_MUX_ext_mclk1_a,
+	LPI_MUX_ext_mclk1_b,
+	LPI_MUX_ext_mclk1_c,
+	LPI_MUX_ext_mclk1_d,
+	LPI_MUX_ext_mclk1_e,
+	LPI_MUX_gpio,
+	LPI_MUX__,
+};
+
+static const struct pinctrl_pin_desc sa8775p_lpi_pins[] = {
+	PINCTRL_PIN(0, "gpio0"),
+	PINCTRL_PIN(1, "gpio1"),
+	PINCTRL_PIN(2, "gpio2"),
+	PINCTRL_PIN(3, "gpio3"),
+	PINCTRL_PIN(4, "gpio4"),
+	PINCTRL_PIN(5, "gpio5"),
+	PINCTRL_PIN(6, "gpio6"),
+	PINCTRL_PIN(7, "gpio7"),
+	PINCTRL_PIN(8, "gpio8"),
+	PINCTRL_PIN(9, "gpio9"),
+	PINCTRL_PIN(10, "gpio10"),
+	PINCTRL_PIN(11, "gpio11"),
+	PINCTRL_PIN(12, "gpio12"),
+	PINCTRL_PIN(13, "gpio13"),
+	PINCTRL_PIN(14, "gpio14"),
+	PINCTRL_PIN(15, "gpio15"),
+	PINCTRL_PIN(16, "gpio16"),
+	PINCTRL_PIN(17, "gpio17"),
+	PINCTRL_PIN(18, "gpio18"),
+	PINCTRL_PIN(19, "gpio19"),
+	PINCTRL_PIN(20, "gpio20"),
+	PINCTRL_PIN(21, "gpio21"),
+	PINCTRL_PIN(22, "gpio22"),
+};
+
+static const char * const dmic1_clk_groups[] = { "gpio6" };
+static const char * const dmic1_data_groups[] = { "gpio7" };
+static const char * const dmic2_clk_groups[] = { "gpio8" };
+static const char * const dmic2_data_groups[] = { "gpio9" };
+static const char * const dmic3_clk_groups[] = { "gpio12" };
+static const char * const dmic3_data_groups[] = { "gpio13" };
+static const char * const dmic4_clk_groups[] = { "gpio17" };
+static const char * const dmic4_data_groups[] = { "gpio18" };
+static const char * const i2s1_clk_groups[] = { "gpio6" };
+static const char * const i2s1_ws_groups[] = { "gpio7" };
+static const char * const i2s1_data_groups[] = { "gpio8", "gpio9" };
+static const char * const i2s2_clk_groups[] = { "gpio10" };
+static const char * const i2s2_ws_groups[] = { "gpio11" };
+static const char * const i2s2_data_groups[] = { "gpio15", "gpio16" };
+static const char * const i2s3_clk_groups[] = { "gpio19" };
+static const char * const i2s3_ws_groups[] = { "gpio20" };
+static const char * const i2s3_data_groups[] = { "gpio21", "gpio22" };
+static const char * const i2s4_clk_groups[] = { "gpio12" };
+static const char * const i2s4_ws_groups[] = { "gpio13" };
+static const char * const i2s4_data_groups[] = { "gpio17", "gpio18" };
+static const char * const qua_mi2s_sclk_groups[] = { "gpio0" };
+static const char * const qua_mi2s_ws_groups[] = { "gpio1" };
+static const char * const qua_mi2s_data_groups[] = { "gpio2", "gpio3", "gpio4", "gpio5" };
+static const char * const slimbus_clk_groups[] = { "gpio19"};
+static const char * const slimbus_data_groups[] = { "gpio20"};
+static const char * const swr_tx_clk_groups[] = { "gpio0" };
+static const char * const swr_tx_data_groups[] = { "gpio1", "gpio2", "gpio14" };
+static const char * const swr_rx_clk_groups[] = { "gpio3" };
+static const char * const swr_rx_data_groups[] = { "gpio4", "gpio5" };
+static const char * const wsa_swr_clk_groups[] = { "gpio10" };
+static const char * const wsa_swr_data_groups[] = { "gpio11" };
+static const char * const wsa2_swr_clk_groups[] = { "gpio15" };
+static const char * const wsa2_swr_data_groups[] = { "gpio16" };
+static const char * const ext_mclk1_c_groups[] = { "gpio5" };
+static const char * const ext_mclk1_b_groups[] = { "gpio9" };
+static const char * const ext_mclk1_a_groups[] = { "gpio13" };
+static const char * const ext_mclk1_d_groups[] = { "gpio14" };
+static const char * const ext_mclk1_e_groups[] = { "gpio22" };
+
+static const struct lpi_pingroup sa8775p_groups[] = {
+	LPI_PINGROUP(0, 0, swr_tx_clk, qua_mi2s_sclk, _, _),
+	LPI_PINGROUP(1, 2, swr_tx_data, qua_mi2s_ws, _, _),
+	LPI_PINGROUP(2, 4, swr_tx_data, qua_mi2s_data, _, _),
+	LPI_PINGROUP(3, 8, swr_rx_clk, qua_mi2s_data, _, _),
+	LPI_PINGROUP(4, 10, swr_rx_data, qua_mi2s_data, _, _),
+	LPI_PINGROUP(5, 12, swr_rx_data, ext_mclk1_c, qua_mi2s_data, _),
+	LPI_PINGROUP(6, LPI_NO_SLEW, dmic1_clk, i2s1_clk, _, _),
+	LPI_PINGROUP(7, LPI_NO_SLEW, dmic1_data, i2s1_ws, _, _),
+	LPI_PINGROUP(8, LPI_NO_SLEW, dmic2_clk, i2s1_data, _, _),
+	LPI_PINGROUP(9, LPI_NO_SLEW, dmic2_data, i2s1_data, ext_mclk1_b, _),
+	LPI_PINGROUP(10, 16, i2s2_clk, wsa_swr_clk, _, _),
+	LPI_PINGROUP(11, 18, i2s2_ws, wsa_swr_data, _, _),
+	LPI_PINGROUP(12, LPI_NO_SLEW, dmic3_clk, i2s4_clk, _, _),
+	LPI_PINGROUP(13, LPI_NO_SLEW, dmic3_data, i2s4_ws, ext_mclk1_a, _),
+	LPI_PINGROUP(14, 6, swr_tx_data, ext_mclk1_d, _, _),
+	LPI_PINGROUP(15, 20, i2s2_data, wsa2_swr_clk, _, _),
+	LPI_PINGROUP(16, 22, i2s2_data, wsa2_swr_data, _, _),
+	LPI_PINGROUP(17, LPI_NO_SLEW, dmic4_clk, i2s4_data, _, _),
+	LPI_PINGROUP(18, LPI_NO_SLEW, dmic4_data, i2s4_data, _, _),
+	LPI_PINGROUP(19, LPI_NO_SLEW, i2s3_clk, slimbus_clk, _, _),
+	LPI_PINGROUP(20, LPI_NO_SLEW, i2s3_ws, slimbus_data, _, _),
+	LPI_PINGROUP(21, LPI_NO_SLEW, i2s3_data, _, _, _),
+	LPI_PINGROUP(22, LPI_NO_SLEW, i2s3_data, ext_mclk1_e, _, _),
+};
+
+static const struct lpi_function sa8775p_functions[] = {
+	LPI_FUNCTION(dmic1_clk),
+	LPI_FUNCTION(dmic1_data),
+	LPI_FUNCTION(dmic2_clk),
+	LPI_FUNCTION(dmic2_data),
+	LPI_FUNCTION(dmic3_clk),
+	LPI_FUNCTION(dmic3_data),
+	LPI_FUNCTION(dmic4_clk),
+	LPI_FUNCTION(dmic4_data),
+	LPI_FUNCTION(i2s1_clk),
+	LPI_FUNCTION(i2s1_data),
+	LPI_FUNCTION(i2s1_ws),
+	LPI_FUNCTION(i2s2_clk),
+	LPI_FUNCTION(i2s2_data),
+	LPI_FUNCTION(i2s2_ws),
+	LPI_FUNCTION(i2s3_clk),
+	LPI_FUNCTION(i2s3_data),
+	LPI_FUNCTION(i2s3_ws),
+	LPI_FUNCTION(i2s4_clk),
+	LPI_FUNCTION(i2s4_data),
+	LPI_FUNCTION(i2s4_ws),
+	LPI_FUNCTION(qua_mi2s_data),
+	LPI_FUNCTION(qua_mi2s_sclk),
+	LPI_FUNCTION(qua_mi2s_ws),
+	LPI_FUNCTION(slimbus_clk),
+	LPI_FUNCTION(slimbus_data),
+	LPI_FUNCTION(swr_rx_clk),
+	LPI_FUNCTION(swr_rx_data),
+	LPI_FUNCTION(swr_tx_clk),
+	LPI_FUNCTION(swr_tx_data),
+	LPI_FUNCTION(wsa_swr_clk),
+	LPI_FUNCTION(wsa_swr_data),
+	LPI_FUNCTION(wsa2_swr_clk),
+	LPI_FUNCTION(wsa2_swr_data),
+	LPI_FUNCTION(ext_mclk1_a),
+	LPI_FUNCTION(ext_mclk1_b),
+	LPI_FUNCTION(ext_mclk1_c),
+	LPI_FUNCTION(ext_mclk1_d),
+	LPI_FUNCTION(ext_mclk1_e),
+};
+
+static const struct lpi_pinctrl_variant_data sa8775p_lpi_data = {
+	.pins = sa8775p_lpi_pins,
+	.npins = ARRAY_SIZE(sa8775p_lpi_pins),
+	.groups = sa8775p_groups,
+	.ngroups = ARRAY_SIZE(sa8775p_groups),
+	.functions = sa8775p_functions,
+	.nfunctions = ARRAY_SIZE(sa8775p_functions),
+};
+
+static const struct of_device_id lpi_pinctrl_of_match[] = {
+	{
+	       .compatible = "qcom,sa8775p-lpass-lpi-pinctrl",
+	       .data = &sa8775p_lpi_data,
+	},
+	{ }
+};
+MODULE_DEVICE_TABLE(of, lpi_pinctrl_of_match);
+
+static struct platform_driver lpi_pinctrl_driver = {
+	.driver = {
+		   .name = "qcom-sa8775p-lpass-lpi-pinctrl",
+		   .of_match_table = lpi_pinctrl_of_match,
+	},
+	.probe = lpi_pinctrl_probe,
+	.remove = lpi_pinctrl_remove,
+};
+
+module_platform_driver(lpi_pinctrl_driver);
+MODULE_DESCRIPTION("Qualcomm SA8775P LPI GPIO pin control driver");
+MODULE_LICENSE("GPL");
-- 
2.34.1


