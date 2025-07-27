Return-Path: <devicetree+bounces-199924-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 317DDB12EA5
	for <lists+devicetree@lfdr.de>; Sun, 27 Jul 2025 10:32:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5C19D172ED9
	for <lists+devicetree@lfdr.de>; Sun, 27 Jul 2025 08:32:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D4FF1FF60A;
	Sun, 27 Jul 2025 08:32:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HPefPEc/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 915101FE45D
	for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 08:32:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753605124; cv=none; b=Pufs2RmgemVph5yraQmEn9JhDgTXFbGmO/vI62Heb6ygC5hoLMx0L23ARObGTTFFvUtSIL/si4jZZoplGA7ZJEVgHFZ/95aH/PDKQOqsDBLry8exB51AEn883KXj+xFGruIqAPMhdqDPbcApCctJogU257cj+s2sz+c+PzQVP1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753605124; c=relaxed/simple;
	bh=+9bKbsOHOv6HUfFTojTu52PpIyeGZIM2BjFmGx8IJRQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=sf/OEGaOpIlOyQfNC5wUXn2sU/dzbLdyH+o4Mf+WEEAS4L44oTTZRaEnOAIwQi9AX6YeGffsz3u+EufJQjPnHDMNXJcJD+hkleioV5EuRpcP7mbxrcnRyvPs+CUvcI6eFbQ/D/xI4xjmf7cP/pyg9g8fxr//hTx9U1FsD/cMAww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HPefPEc/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56R5FGxT017700
	for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 08:32:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=RZd0XO7FU/P
	/QgQIeS4PXIVz6WnhkQsNSg2RESxcNiY=; b=HPefPEc/95TVL6F6Rrg5jVJV650
	g1MwDGN3Sm/N+vLf0WpA4ttQrZfQ5trD8GZpqnLCsIqidja9jq/oB9bJ4K/SiD7x
	tCxeUwKep3XEZ/tkF9+Mm0tX/KULxpo6xWUkTE4OJucVhJh6HF54arRLkhVSE0V9
	O0fZfGOO4iYv8uTUMFUby1ImZ+XFXYAnSYbeTo1HQxOZN9G4P125guG7YLebzZCz
	0pi7JCfCilCXUI0rHbISq6Rq0A0+7d1iavroPvRYwhlNnNCqQf38roprCUTqdcQP
	4ElAr6B+6BttW2hhAe1OlgDjQ9cojkSiW4yyGetX9FiXVR5GNSq63vMyB4Q==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484pm29v1w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 08:32:01 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2400499ab2fso2189745ad.0
        for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 01:32:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753605120; x=1754209920;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RZd0XO7FU/P/QgQIeS4PXIVz6WnhkQsNSg2RESxcNiY=;
        b=A/nU/GO9xW8YH8Uxikh7CGM0e0LSCMOpStARpqqPqhOJBCb4CF+BJk1pP5k5yzPyYd
         jawJXu9CeQ2kmrx0GusTbzFPCjzhLTJeJEMV34F/mSNo95wI0sklgC4fSTj7OLaZl3+J
         zZP7WiX+4f44i35xhJnj2qdJLTBcqnPQrDuwvLCA9QNc9PSJeFHjioqS2HglPGil1ZlL
         0ceBg5rd08SNthsjf0KyAy/xT7ye22cmfkzOwsBZu4205HT2UfehJLZ6o1TI+SYjsQKu
         VTlOoDgymboJJc3ZE+/GEBiHUUbS7bicdzZvL8AQQebEPOKZ1SQ1BKcTl3/20xolYNHs
         sEhw==
X-Forwarded-Encrypted: i=1; AJvYcCVDrTnq6mewnqs07CDvzo7x9egiKo44DckETXhKfNRYvHNbdGn5fJoBX1PA29o3Vhbgkb/pnyzQEFnL@vger.kernel.org
X-Gm-Message-State: AOJu0YwYeyhYt/4MeRrVqW/zw6p6K1JEz+v3Jl5tcArqb8eb8qeYzXF8
	hZGno4Vl439wZ4piDAQXsl5P7WR8BA1H63i3EVTp4ijXmAuIJf0mG6yieqPPzyvsikcsDEulWNb
	Yn+7eJhJqlLb0C13YfEiv0gPCT7tD9P5UbDZ99VBHeNsNvb8FfN9nhFAvBGeIByg/
X-Gm-Gg: ASbGncsZsjMUkpJhK380aNr7OgYFpevWV7jsYpA2Ia+BeA329ap2scbdyEuCQyxWB/V
	Nudzd1n9G933Ah7X+9Jp7gHEHkdejAw7Cn5T6Dci/F9MmirTcp4zuRFK13VlItF3TEWtMWpXqqD
	h3aupTd0VnBCy2K/04kM7lfRPTLxtbuVF9tGwKBGwqumDIojDzBP+B4eysfmkRMDmowBKCGRuED
	cKxSbGv/qNOzk0LEXYF7OHIpwBAglnl1TqVb2yzW4gpohOXMj+1TKdPvVvABt8FKdamrGLbB1Bd
	X2PYqdlIUuy4Fx4D3PDTTpXZspLjI630AWPs0RVAqNo86IR9UG2VAzkTK194UeLk1dxza69wLEL
	G
X-Received: by 2002:a17:902:fc8d:b0:23f:fa7c:7129 with SMTP id d9443c01a7336-23ffa7c7345mr26119165ad.25.1753605119923;
        Sun, 27 Jul 2025 01:31:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGYL40jaLo95RgGHJ+Xssx0AAZaURi7P8YVF5vPE2C+sA20mi+8Arqz6EQswYNjlnFFzFdgKg==
X-Received: by 2002:a17:902:fc8d:b0:23f:fa7c:7129 with SMTP id d9443c01a7336-23ffa7c7345mr26118815ad.25.1753605119458;
        Sun, 27 Jul 2025 01:31:59 -0700 (PDT)
Received: from hu-mohs-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2401866c2c3sm2848645ad.30.2025.07.27.01.31.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Jul 2025 01:31:59 -0700 (PDT)
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
To: Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>, Philipp Zabel <p.zabel@pengutronix.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>
Cc: linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, quic_pkumpatl@quicinc.com,
        kernel@oss.qualcomm.com
Subject: [PATCH v3 3/3] ASoC: codecs: wsa883x: Handle shared reset GPIO for WSA883x speakers
Date: Sun, 27 Jul 2025 14:01:17 +0530
Message-Id: <20250727083117.2415725-4-mohammad.rafi.shaik@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250727083117.2415725-1-mohammad.rafi.shaik@oss.qualcomm.com>
References: <20250727083117.2415725-1-mohammad.rafi.shaik@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 8bZJrmZA5AVxUEU8q5L1k3-U6aP03cxT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI3MDA3MyBTYWx0ZWRfXz4x6NZm7eE3/
 w7RMyeN16EvwiuZp7HVijratZEU0YKM7BXTOz+NJAhAxk01GBz9hHnJiD+JRR7evpL9MMdQbdPk
 l00Fug8iD7sd1e6kn7OKQbbHBNefFLq5q/AusVNTqH95yj/TPMvTEXGOhnpMmFS/9b/BlxbK9cy
 Gxyd9u/4Jw2UD8e15ZsuOshKPkVSr6Jy3HEDQftOhUInR1mW+vppPbymEFRq3/ucro/2D139V3J
 ZdYFzzntEyN4C/XMNSjEE5VFKeRxKfpgvXSqb5FxjHxxdxj0rO6tkisWnxlXJ3n0n9iIidT/yBs
 ZesvtXGkDhxiboOyR9FDA7ZfE5UK02ZKCBZyKFB5CtUJaT+zT60os4Kyh3d8tfh9MK2avSLTpYm
 h7qH9QN/JtsQRoQBQfovL3AmYTm52vjhzMw14Lo2Eql1PDCmTuPMTDwC8UpooWibUzDxNaLD
X-Authority-Analysis: v=2.4 cv=HfYUTjE8 c=1 sm=1 tr=0 ts=6885e401 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=pGReym1pqKqKmaA-xlUA:9
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: 8bZJrmZA5AVxUEU8q5L1k3-U6aP03cxT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-27_03,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 clxscore=1015 bulkscore=0 suspectscore=0 impostorscore=0
 spamscore=0 lowpriorityscore=0 adultscore=0 mlxlogscore=999 phishscore=0
 priorityscore=1501 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507270073

On some Qualcomm platforms such as QCS6490-RB3Gen2, the multiple
WSA8830/WSA8835 speakers share a common reset (shutdown) GPIO.
To handle such cases, use the reset controller framework along
with the "reset-gpio" driver.

Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
---
 sound/soc/codecs/wsa883x.c | 55 +++++++++++++++++++++++++++++++++-----
 1 file changed, 49 insertions(+), 6 deletions(-)

diff --git a/sound/soc/codecs/wsa883x.c b/sound/soc/codecs/wsa883x.c
index d5bc71b28a3a..0acf111f9583 100644
--- a/sound/soc/codecs/wsa883x.c
+++ b/sound/soc/codecs/wsa883x.c
@@ -469,6 +469,7 @@ struct wsa883x_priv {
 	struct sdw_stream_runtime *sruntime;
 	struct sdw_port_config port_config[WSA883X_MAX_SWR_PORTS];
 	struct gpio_desc *sd_n;
+	struct reset_control *sd_reset;
 	bool port_prepared[WSA883X_MAX_SWR_PORTS];
 	bool port_enable[WSA883X_MAX_SWR_PORTS];
 	int active_ports;
@@ -1547,6 +1548,24 @@ static const struct hwmon_chip_info wsa883x_hwmon_chip_info = {
 	.info	= wsa883x_hwmon_info,
 };
 
+static void wsa883x_reset_assert(void *data)
+{
+	struct wsa883x_priv *wsa883x = data;
+
+	if (wsa883x->sd_reset)
+		reset_control_assert(wsa883x->sd_reset);
+	else
+		gpiod_direction_output(wsa883x->sd_n, 1);
+}
+
+static void wsa883x_reset_deassert(struct wsa883x_priv *wsa883x)
+{
+	if (wsa883x->sd_reset)
+		reset_control_deassert(wsa883x->sd_reset);
+	else
+		gpiod_direction_output(wsa883x->sd_n, 0);
+}
+
 static void wsa883x_regulator_disable(void *data)
 {
 	struct wsa883x_priv *wsa883x = data;
@@ -1554,6 +1573,28 @@ static void wsa883x_regulator_disable(void *data)
 	regulator_disable(wsa883x->vdd);
 }
 
+static int wsa883x_get_reset(struct device *dev, struct wsa883x_priv *wsa883x)
+{
+	wsa883x->sd_reset = devm_reset_control_get_optional_shared_deasserted(dev, NULL);
+	if (IS_ERR(wsa883x->sd_reset))
+		return dev_err_probe(dev, PTR_ERR(wsa883x->sd_reset),
+				     "Failed to get reset\n");
+	/*
+	 * if sd_reset: NULL, so use the backwards compatible way for powerdown-gpios,
+	 * which does not handle sharing GPIO properly.
+	 */
+	if (!wsa883x->sd_reset) {
+		wsa883x->sd_n = devm_gpiod_get_optional(dev, "powerdown",
+							GPIOD_FLAGS_BIT_NONEXCLUSIVE |
+							GPIOD_OUT_HIGH);
+		if (IS_ERR(wsa883x->sd_n))
+			return dev_err_probe(dev, PTR_ERR(wsa883x->sd_n),
+					     "Shutdown Control GPIO not found\n");
+	}
+
+	return 0;
+}
+
 static int wsa883x_probe(struct sdw_slave *pdev,
 			 const struct sdw_device_id *id)
 {
@@ -1583,11 +1624,9 @@ static int wsa883x_probe(struct sdw_slave *pdev,
 	if (ret)
 		return ret;
 
-	wsa883x->sd_n = devm_gpiod_get_optional(dev, "powerdown",
-						GPIOD_FLAGS_BIT_NONEXCLUSIVE | GPIOD_OUT_HIGH);
-	if (IS_ERR(wsa883x->sd_n))
-		return dev_err_probe(dev, PTR_ERR(wsa883x->sd_n),
-				     "Shutdown Control GPIO not found\n");
+	ret = wsa883x_get_reset(dev, wsa883x);
+	if (ret)
+		return ret;
 
 	dev_set_drvdata(dev, wsa883x);
 	wsa883x->slave = pdev;
@@ -1610,7 +1649,11 @@ static int wsa883x_probe(struct sdw_slave *pdev,
 	pdev->prop.simple_clk_stop_capable = true;
 	pdev->prop.sink_dpn_prop = wsa_sink_dpn_prop;
 	pdev->prop.scp_int1_mask = SDW_SCP_INT1_BUS_CLASH | SDW_SCP_INT1_PARITY;
-	gpiod_direction_output(wsa883x->sd_n, 0);
+
+	wsa883x_reset_deassert(wsa883x);
+	ret = devm_add_action_or_reset(dev, wsa883x_reset_assert, wsa883x);
+	if (ret)
+		return ret;
 
 	wsa883x->regmap = devm_regmap_init_sdw(pdev, &wsa883x_regmap_config);
 	if (IS_ERR(wsa883x->regmap))
-- 
2.34.1


