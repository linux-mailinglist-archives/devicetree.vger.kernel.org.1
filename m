Return-Path: <devicetree+bounces-254154-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EF3A3D14DB2
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 20:05:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4F2A8302EA16
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 19:02:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 275D5310779;
	Mon, 12 Jan 2026 19:02:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PhE4Sh/D";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ASt8PtGy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97E0C310635
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 19:02:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768244533; cv=none; b=beYh/IukMLl7yE9dU3T7bqmluBo8pAE4WK+5sN5v2kUJ6eknUuhMss9cahxpkTTNxkKaOepSw8UgIlu2HZFOHySG7jhNf+7ecaGY8mdjwed+UtVrD43cflBdjXdOzj1MSjPLAi8ekkDe6EqHPsNxhnQp+Yn39rZZQrsqSYpqwvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768244533; c=relaxed/simple;
	bh=HpbGoIkogcwd0iG8wVIE+MiE0a9C6PkDaVHj1ewp1zI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Nnmz5BZ5EcJXlwLrAub0FNAI5yNkco+hdBctG3JaqVcgMq08vjcbM7gYRhaRvvLz5SZerqMfzFPUA0FQZ3S89JT8umvyCZSgZykfReiOntkXV//9Q4OPjzkm6iQV7TKv+Nn6NGDmHj8is77AR+nxwZqQ31I68Vm613oLSoBWfaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PhE4Sh/D; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ASt8PtGy; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60CIaAmk1358187
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 19:02:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=yGZZacre1U/
	suA2bX1Vl5nmbutXoroFn5RuNDNr3mUY=; b=PhE4Sh/D/411rYJvRxIAcdqYT5N
	QTqFdmbhldjmWjaeJ/PYrAq2TeSZNRoH+z1btWAoHFA+dVunYeJXCRPy4yrSrac8
	b3JV4q6BO2CKjlVAeKsmwSPXgnlTFJAVjup5XDtiJpOtZkKKARi8Ugip2ym4dmiD
	MzLbTzcHFcAs9KM9a2VppDVQC1Kc4yYJhFmvf7t91KVz3gQ4Idov/Y36+MdEu4WZ
	bf6rBSnMAba77YJI29NYqi4Jothca/4rAFAFABlVdRrG6kV0iYxLETvsniAZ/MxF
	cUW70Dx+JKdIReQ+DPiaxpCqo3xlntmE2yfhK3bKRjQFnyYFULttqC+JhZQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bn6cng338-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 19:02:08 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-29f26fc6476so99969745ad.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 11:02:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768244527; x=1768849327; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yGZZacre1U/suA2bX1Vl5nmbutXoroFn5RuNDNr3mUY=;
        b=ASt8PtGyWZp1d9gAn1+iqbdodNGYztKsOg35AArZaorpwudsPrH/Z5F8zmKTsslYt3
         PVrRTMxVc5FCzg3gU2U/NR34qaKsLAT2RZYYSBbcByUTrigmWKGToJHZjTySna8yGkXa
         3AXtM9fskMH3NBtY7t+oZpP5y/Rx4F1C+OwKAEB1qxnwsNGp3CZb5peiSCeVe2tJHgpZ
         iGXyyvy1D8wHv954PElwIKgIBoXsIUD5MWwfLRks7jB/hKs4HY1F94ORn5h0uE3zuDpz
         emxBqiE4u7eQ4NByE2ppusjPV6aZtG3exLRboTLa8DZe1X0XALNt5bbE0FqUs3qqIWcb
         VCqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768244527; x=1768849327;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yGZZacre1U/suA2bX1Vl5nmbutXoroFn5RuNDNr3mUY=;
        b=gU2I3VHVy4Ol3oobxi7OJqW/u/yfvB08kq7YVK6uAmMGfP8O+Yz4ekVhoKqULv0UuA
         nny5m3kN0LT9ewSr4AA+SHJvloC8+5sC2VCJMn86sYrN49KlRkEbudgx43ix6xlAcTh9
         ZkTr9eI5uVy8d2F/4kotrZjRy/qQGe72bP3rXotxXxuewDraqXAx8IhptojYkahhEPrv
         9sCOXkOqCAcmCpy2tedkbT876y708YIWoDZeOTniqH2k4svMVJYGEdIgThgDPceRxV2d
         CF3Wq7/j8RajKRDzW17nR3YbXnuGTAidbNRLwlBhSPp18Xvj7UfSCQMXTycL/FJWVRDI
         Cl/g==
X-Forwarded-Encrypted: i=1; AJvYcCU1F2Gy/cypLcrdqvO7WUHqEQ15kUESizahTfmf68K0PJF8hKtxQBvhcGIC+0aXxW6JLq51HircS8au@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7mpHf8PWhYjpXCxmXG3P7NwpOcCnnJ5VBdaQBEkBknBEgg4Mp
	fCemmABn8WwkNfWNsXZOWpcL2vH7K6nWrokWdZhorWyS5zqFjmV2iMpxf4gN84wfbk0+QTJ3HCt
	kVK3BHYh4LQncEeYjNnU9GTGxojUAe3iYDk7YgL7Az5OWgNM2f/as/mb1ioiib7j2
X-Gm-Gg: AY/fxX4pK6rualm/1OK4OlNZMzq9KOlGp0DEBRdG9F+uOMt12D5WiHHxM+SU49dhsrY
	LsIz9wbcQfgWZ8w9BOSkZ6Okeds/sNEYMJ7L4SZbGsL2HJIYrQV2HMlMofaaok+s6ax0GZvNNSo
	sTd5RzZuGBnEmNJ9ltt6Cw4K80ddinFrVHtAvkEeAhYEzdjhIiRrHVJweKh2Vg5C7QtRBrh2DMO
	EatvJDikgNXxPryQFN45t0fO/shnfH6G7Sdl2f3PaL5ZKEk8xILoLEcNS15aXSrUABDaOVQFV5b
	tq+oWa7xWfG3MnyUggM0CE+7rLvzRHTEfq5aNvB7n1zV3IweDpx+3oTFNONjzshZI7N+jWoSDiG
	2sropwZ73zz0odkkjACbQDcR3/h/P9z29UsYIBBy7riY=
X-Received: by 2002:a17:903:1212:b0:2a0:d7f6:e030 with SMTP id d9443c01a7336-2a3ee491f16mr180468875ad.29.1768244527212;
        Mon, 12 Jan 2026 11:02:07 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGmiDNFtkSX+gdc8APgOAohwdzPlMrNsXNHoZaQFIeeIjQE6AU64CBhIdfiGbE6LeXLymnlCw==
X-Received: by 2002:a17:903:1212:b0:2a0:d7f6:e030 with SMTP id d9443c01a7336-2a3ee491f16mr180468295ad.29.1768244526553;
        Mon, 12 Jan 2026 11:02:06 -0800 (PST)
Received: from hu-ptalari-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cc8888sm180120595ad.76.2026.01.12.11.02.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 11:02:06 -0800 (PST)
From: Praveen Talari <praveen.talari@oss.qualcomm.com>
To: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Praveen Talari <praveen.talari@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-spi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        bryan.odonoghue@linaro.org, dmitry.baryshkov@oss.qualcomm.com,
        andersson@kernel.org, bjorn.andersson@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, mukesh.savaliya@oss.qualcomm.com,
        quic_vtanuku@quicinc.com, aniket.randive@oss.qualcomm.com,
        chandana.chiluveru@oss.qualcomm.com
Subject: [PATCH v1 4/4] spi: qcom-geni: Enable SPI on SA8255p Qualcomm platforms
Date: Tue, 13 Jan 2026 00:31:34 +0530
Message-Id: <20260112190134.1526646-5-praveen.talari@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260112190134.1526646-1-praveen.talari@oss.qualcomm.com>
References: <20260112190134.1526646-1-praveen.talari@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 2ufCCSDib6CVtCIPedRWOcULtAlMkmR2
X-Authority-Analysis: v=2.4 cv=KK5XzVFo c=1 sm=1 tr=0 ts=69654530 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=pXSUDizEog3tsSCmG3cA:9 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: 2ufCCSDib6CVtCIPedRWOcULtAlMkmR2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEyMDE1NyBTYWx0ZWRfXxh8t/mkKMINO
 tKIiMZT3TvqqY6cDm/jkB6j8rZAIUz8KeewdS6RsdXGCNN6LaIlZVaMTRnH5k+Ai8kz+HD3hrIu
 shtJgbeziD10AU4gf/4DLgDK4BgL3Iwo/BhtLdGw8zQF4lROLILNVYilpZTG2d4eiijhpoddy8o
 +89wEbqfL54BlcgaEQ3UffV56WbLEgyZli6lWEFXO90Z4GpEC5NgDUidGKAtbyAFSuIbm2kjwaQ
 dbw6Pt08H+fjBYKKMt8NMKkKeiYgXLccUZiQkjwTz+AcqQvTOg4gChWTfvV25uUuNaUCCro0ydP
 NGZ3zTSX5R23Er6YzKBlTuYHL/IbTDyv0mXMONRwkwKTiJe20XIP78QAA+Y/+Y9gxiYsUM2n7eO
 TOabcu8N5c5MaGiklfbqYJESRZLbVL0l400X8qXQhoPwqEIyYwj39ZbYFFKzVkW7Av61zGmuQv8
 mnKXm7yv/nC0i0knTwA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-12_05,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 spamscore=0 adultscore=0 suspectscore=0
 phishscore=0 clxscore=1015 impostorscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601120157

The Qualcomm automotive SA8255p SoC relies on firmware to configure
platform resources, including clocks, interconnects and TLMM.
The driver requests resources operations over SCMI using power
and performance protocols.

The SCMI power protocol enables or disables resources like clocks,
interconnect paths, and TLMM (GPIOs) using runtime PM framework APIs,
such as resume/suspend, to control power states(on/off).

The SCMI performance protocol manages SPI frequency, with each
frequency rate represented by a performance level. The driver uses
geni_se_set_perf_opp() API to request the desired frequency rate.

As part of geni_se_set_perf_opp(), the OPP for the requested frequency
is obtained using dev_pm_opp_find_freq_floor() and the performance
level is set using dev_pm_opp_set_opp().

Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
---
 drivers/spi/spi-geni-qcom.c | 42 ++++++++++++++++++++++++++++++-------
 1 file changed, 34 insertions(+), 8 deletions(-)

diff --git a/drivers/spi/spi-geni-qcom.c b/drivers/spi/spi-geni-qcom.c
index bf2b3d88693c..b1b41218f452 100644
--- a/drivers/spi/spi-geni-qcom.c
+++ b/drivers/spi/spi-geni-qcom.c
@@ -75,6 +75,13 @@
 #define GSI_CPHA		BIT(4)
 #define GSI_CPOL		BIT(5)
 
+struct geni_spi_desc {
+	int (*resources_init)(struct geni_se *se);
+	int (*set_rate)(struct geni_se *se, unsigned long clk_freq);
+	int (*power_on)(struct geni_se *se);
+	int (*power_off)(struct geni_se *se);
+};
+
 struct spi_geni_master {
 	struct geni_se se;
 	struct device *dev;
@@ -102,6 +109,7 @@ struct spi_geni_master {
 	struct dma_chan *tx;
 	struct dma_chan *rx;
 	int cur_xfer_mode;
+	const struct geni_spi_desc *dev_data;
 };
 
 static void spi_slv_setup(struct spi_geni_master *mas)
@@ -307,11 +315,12 @@ static void spi_setup_word_len(struct spi_geni_master *mas, u16 mode,
 	writel(word_len, se->base + SE_SPI_WORD_LEN);
 }
 
-static int geni_spi_set_clock_and_bw(struct spi_geni_master *mas,
-					unsigned long clk_hz)
+static int geni_spi_set_clock_and_bw(struct geni_se *se,
+				     unsigned long clk_hz)
 {
+	struct spi_controller *spi = dev_get_drvdata(se->dev);
+	struct spi_geni_master *mas = spi_controller_get_devdata(spi);
 	u32 clk_sel, m_clk_cfg, idx, div;
-	struct geni_se *se = &mas->se;
 	int ret;
 
 	if (clk_hz == mas->cur_speed_hz)
@@ -816,7 +825,7 @@ static int setup_se_xfer(struct spi_transfer *xfer,
 	}
 
 	/* Speed and bits per word can be overridden per transfer */
-	ret = geni_spi_set_clock_and_bw(mas, xfer->speed_hz);
+	ret = mas->dev_data->set_rate(&mas->se, xfer->speed_hz);
 	if (ret)
 		return ret;
 
@@ -1040,7 +1049,9 @@ static int spi_geni_probe(struct platform_device *pdev)
 	mas->se.wrapper = dev_get_drvdata(dev->parent);
 	mas->se.base = base;
 
-	ret = geni_se_resources_init(&mas->se);
+	mas->dev_data = device_get_match_data(&pdev->dev);
+
+	ret = mas->dev_data->resources_init(&mas->se);
 	if (ret)
 		return ret;
 
@@ -1097,7 +1108,8 @@ static int __maybe_unused spi_geni_runtime_suspend(struct device *dev)
 	struct spi_controller *spi = dev_get_drvdata(dev);
 	struct spi_geni_master *mas = spi_controller_get_devdata(spi);
 
-	return geni_se_resources_deactivate(&mas->se);
+	return mas->dev_data->power_off ?
+	       mas->dev_data->power_off(&mas->se) : 0;
 }
 
 static int __maybe_unused spi_geni_runtime_resume(struct device *dev)
@@ -1105,7 +1117,8 @@ static int __maybe_unused spi_geni_runtime_resume(struct device *dev)
 	struct spi_controller *spi = dev_get_drvdata(dev);
 	struct spi_geni_master *mas = spi_controller_get_devdata(spi);
 
-	return geni_se_resources_activate(&mas->se);
+	return mas->dev_data->power_on ?
+	       mas->dev_data->power_on(&mas->se) : 0;
 }
 
 static int __maybe_unused spi_geni_suspend(struct device *dev)
@@ -1146,8 +1159,21 @@ static const struct dev_pm_ops spi_geni_pm_ops = {
 	SET_SYSTEM_SLEEP_PM_OPS(spi_geni_suspend, spi_geni_resume)
 };
 
+static const struct geni_spi_desc geni_spi = {
+	.resources_init = geni_se_resources_init,
+	.set_rate = geni_spi_set_clock_and_bw,
+	.power_on = geni_se_resources_activate,
+	.power_off = geni_se_resources_deactivate,
+};
+
+static const struct geni_spi_desc sa8255p_geni_spi = {
+	.resources_init = geni_se_domain_attach,
+	.set_rate = geni_se_set_perf_opp,
+};
+
 static const struct of_device_id spi_geni_dt_match[] = {
-	{ .compatible = "qcom,geni-spi" },
+	{ .compatible = "qcom,geni-spi", .data = &geni_spi },
+	{ .compatible = "qcom,sa8255p-geni-spi", .data = &sa8255p_geni_spi },
 	{}
 };
 MODULE_DEVICE_TABLE(of, spi_geni_dt_match);
-- 
2.34.1


