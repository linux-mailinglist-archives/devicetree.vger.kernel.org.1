Return-Path: <devicetree+bounces-221893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 779ECBA3E7E
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 15:31:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 29DB41C0554A
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 13:31:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DE442F999F;
	Fri, 26 Sep 2025 13:30:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MC+bQKDk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 697652FABE1
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:30:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758893459; cv=none; b=Hco+Xr/uyi2QOT7bGOSE0CsMf9hKo/ibtZkStHQJEWNxPggLGUOuTWICDTS9vsbrXGMm62cfkEmH1BCy42moLzKizNYjeM2a9bXQSna3j9zeqEl6wJltO7VbN2eIcb++Y/pa+nrsezm9V1Pnqwh7aZ+RkPOtMDQeTPKRVyQnPBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758893459; c=relaxed/simple;
	bh=SPcf++Iyi3zzKsVUVveR11UfhJHrrII0re5TSa0X8Qg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=JAB7FnvlnGIHuxw5O+LO8X/Mqym5riRja8MTpzxr+3wFL4EN1kvnx/XGIh0nXZpHJwXb/Am3PqBtgLQAxRjRT9ZcUw6bAC5v/vKxZa4fggfz3+V9VZWU2kuLIyBfb9rr6fc9uxdtKgz3GVeUe4ePttmEQXx2sotkaeCovuci1ZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MC+bQKDk; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58Q8vm5a029359
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:30:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=eea5gCv3xnM
	ebaukW35PefSTb9gPNWDUanvxJnODS38=; b=MC+bQKDk4wyDBUvmXgizRPOTMxt
	nZWr7zATaqUCW+DF3odBbkelhk3agWH3cyl08JSzxHDuGHUMfLlFLlr9MsPN53N/
	QxNBBMuq0DG7i4kEpbN6o9dltx7yNeQG+cElHWaVrEHVfBR9G6jfuOOeubH6PzSh
	tKr/FK1YuYoTcV2uZSwMq9Nc/2L1PqwWKPzD9ggMmW4vdcJQxcN+VhC/WFu629tT
	B0gQJLGwyc/D/ltoV+7uMZBW3b7HAcu7VsYxXONnqi7rnfFMSkyrfsIVHQ1Qixvs
	GlCvi6KGzksPwatspZyPw3Uq82OjbqK2AR8xK8hZ3vqsKyv1P9isG6UAZxg==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db322y6s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:30:56 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-77f2e48a829so3571826b3a.3
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 06:30:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758893456; x=1759498256;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eea5gCv3xnMebaukW35PefSTb9gPNWDUanvxJnODS38=;
        b=Nmifr99U7iYEQfe07mahaBvKaJvi4I4i01TnNGBlLLaeqBCic9kzTmowgjUmKUtXEK
         Lf7HeYqgmxtqDp4W9tam1DBM33Fp9uBcH5Vz2FziuOh1f11d1j34hcgYMzROnRKXn/93
         ghB230yuFN2dauBBy5ZMeV9Tytd7RE1K7tyornQqhMDrBEFRwtmdCp+rI2xGULkXq3ez
         wKCuH3G/9TR93ie0/R4QZbgt+l6Ca5woFGnf1treoCBzsOf/6glajKXQ2XGKA/JQVYC9
         IYc2ZtIEYAQfD4A1XPpMy9xwTSA5qqHg/CZYaeV69izccLDqi1/zyexmKw/kkYTnP1ga
         ptUw==
X-Forwarded-Encrypted: i=1; AJvYcCXlp04lIwc50WlHmFg358RoVxLuV49JWg6fhbSL6m8fAVM1GOTlQLoPCRuBrig0d2BQ98d9aASDue0I@vger.kernel.org
X-Gm-Message-State: AOJu0YyNDTtwPdGmH7JzGAWfvTg84WqNJY8KmcXZeHOzo4nTA19QEjot
	mCE7QKxVCFi7DPrYgM82nW7QFDsXEB2w2vYMWO4nHRExuoshJmEKWVBkOut4dz4dJTE/ZxsODWm
	tD1GxBgicVcc634JodbmXRl3PAgPPGUZFOzRQQNESsyvtd7O3B3g1pHlgWfGqD57j
X-Gm-Gg: ASbGnctQdtOtLCitRNBdpedufT3kAZKOepFGmlEgvItnDrner0/EVgeQRudHBKXccU9
	TeVwW520mvWU9J+tj1RnfsaWRM9aJgUflVPiRQlRJKzp7F06tj0mOwR4hJaia+iCHzMdiBrqKBq
	i9U+++5rs0zG3WmNODB7Trqc78EAl6WMp+9UA85R1VPEZVYwfrk24qeCQ24X6s1maSQ9MiYUZRa
	A6hLQ+HLKclSPViqUedUqU1hjYaL8e4884w5+7yB9C0x1jrIqTmk7S0486P1gioW3gBDpC4ynMQ
	KZCTYSfb0Ac9OhB7z6qR/KIN43ALvy7TPydFtlzs5QFhCHPb1FkJR2gXgVLXiFpaFB0UTel4h6X
	p
X-Received: by 2002:a05:6a00:8c0e:b0:781:18dd:31de with SMTP id d2e1a72fcca58-78118dd369dmr1549232b3a.12.1758893455708;
        Fri, 26 Sep 2025 06:30:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFDMsJY/jOHSQBSRpAM1bJg3jREXLQMB/BlA11EqBoG9fchJG9k3mAKRt0sQomWwVSy1TLp2g==
X-Received: by 2002:a05:6a00:8c0e:b0:781:18dd:31de with SMTP id d2e1a72fcca58-78118dd369dmr1549190b3a.12.1758893455134;
        Fri, 26 Sep 2025 06:30:55 -0700 (PDT)
Received: from hu-vdadhani-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7810238d321sm4504174b3a.17.2025.09.26.06.30.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 06:30:54 -0700 (PDT)
From: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
To: mkl@pengutronix.de, mani@kernel.org, thomas.kopp@microchip.com,
        mailhol.vincent@wanadoo.fr, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linus.walleij@linaro.org, brgl@bgdev.pl,
        linux-can@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: mukesh.savaliya@oss.qualcomm.com, anup.kulkarni@oss.qualcomm.com,
        Gregor Herburger <gregor.herburger@ew.tq-group.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Subject: [PATCH v5 5/6] can: mcp251xfd: add gpio functionality
Date: Fri, 26 Sep 2025 19:00:17 +0530
Message-Id: <20250926133018.3071446-6-viken.dadhaniya@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250926133018.3071446-1-viken.dadhaniya@oss.qualcomm.com>
References: <20250926133018.3071446-1-viken.dadhaniya@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=ao6/yCZV c=1 sm=1 tr=0 ts=68d69590 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=yJojWOMRYYMA:10 a=8f9FM25-AAAA:8 a=EUspDBNiAAAA:8 a=tLDx1KCooYQGmN993QAA:9
 a=IoOABgeZipijB_acs4fv:22 a=uSNRK0Bqq4PXrUp6LDpb:22
X-Proofpoint-ORIG-GUID: TqPgNKLXbHTkbFyfn0cv3jFSvW3GNH4o
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MiBTYWx0ZWRfX7J2cs3Er9Z+A
 sjHY0MehOb0bDdbYZJIH8UeAvo0i5yhDzZq9pbwWB9sCSZx1U8BYnwwpGVY+2AqZ0rWrZCtGfSA
 ZAuhg8a2Zi0BmB8E3aFe0O8t3xOWodkPA/IKXHsemQAOYbzOetzQ19gBAhT9blDo9NBNp83UoOY
 YFkRdRaDfwZbYKyAreJTqMElQOgZ5vdeCH4E/uNlV5UKRdDHQTdIML+vR1r83po4HdCuLVKaK7h
 bgTasv4HU812868MzzNvKbRDoPCouX6XDov0FUC9BQY4ddQCTlyHC1JcN9r75ge+KbRX7cCzbeE
 PdoIyDC81cbGGZNkyD2c8vl0ZhMiIhVFPbKJVvu+W4dvGgpEvb/8io0aLWhs0mxMD7p+ZrqWMCt
 ENy26My8syovnUYDLON0sY/wY9iAOg==
X-Proofpoint-GUID: TqPgNKLXbHTkbFyfn0cv3jFSvW3GNH4o
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_04,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 priorityscore=1501 suspectscore=0 phishscore=0
 adultscore=0 spamscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250172

From: Gregor Herburger <gregor.herburger@ew.tq-group.com>

The mcp251xfd devices allow two pins to be configured as gpio. Add this
functionality to driver.

Signed-off-by: Gregor Herburger <gregor.herburger@ew.tq-group.com>
Tested-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Signed-off-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
---
 drivers/net/can/spi/mcp251xfd/Kconfig         |   1 +
 .../net/can/spi/mcp251xfd/mcp251xfd-core.c    | 172 ++++++++++++++++++
 drivers/net/can/spi/mcp251xfd/mcp251xfd.h     |   2 +
 3 files changed, 175 insertions(+)

diff --git a/drivers/net/can/spi/mcp251xfd/Kconfig b/drivers/net/can/spi/mcp251xfd/Kconfig
index 877e4356010d..7c29846e6051 100644
--- a/drivers/net/can/spi/mcp251xfd/Kconfig
+++ b/drivers/net/can/spi/mcp251xfd/Kconfig
@@ -5,6 +5,7 @@ config CAN_MCP251XFD
 	select CAN_RX_OFFLOAD
 	select REGMAP
 	select WANT_DEV_COREDUMP
+	select GPIOLIB
 	help
 	  Driver for the Microchip MCP251XFD SPI FD-CAN controller
 	  family.
diff --git a/drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c b/drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c
index ea41f04ae1a6..88035d4404b5 100644
--- a/drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c
+++ b/drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c
@@ -1797,6 +1797,172 @@ static int mcp251xfd_register_check_rx_int(struct mcp251xfd_priv *priv)
 	return 0;
 }
 
+static const char * const mcp251xfd_gpio_names[] = { "GPIO0", "GPIO1" };
+
+static int mcp251xfd_gpio_request(struct gpio_chip *chip, unsigned int offset)
+{
+	struct mcp251xfd_priv *priv = gpiochip_get_data(chip);
+	u32 pin_mask = MCP251XFD_REG_IOCON_PM(offset);
+	int ret;
+
+	if (priv->rx_int && offset == 1) {
+		netdev_err(priv->ndev, "Can't use GPIO 1 with RX-INT!\n");
+		return -EINVAL;
+	}
+
+	ret = pm_runtime_resume_and_get(priv->ndev->dev.parent);
+	if (ret)
+		return ret;
+
+	return regmap_update_bits(priv->map_reg, MCP251XFD_REG_IOCON,
+				  pin_mask, pin_mask);
+}
+
+static void mcp251xfd_gpio_free(struct gpio_chip *chip, unsigned int offset)
+{
+	struct mcp251xfd_priv *priv = gpiochip_get_data(chip);
+
+	pm_runtime_put(priv->ndev->dev.parent);
+}
+
+static int mcp251xfd_gpio_get_direction(struct gpio_chip *chip,
+					unsigned int offset)
+{
+	struct mcp251xfd_priv *priv = gpiochip_get_data(chip);
+	u32 mask = MCP251XFD_REG_IOCON_TRIS(offset);
+	u32 val;
+	int ret;
+
+	ret = regmap_read(priv->map_reg, MCP251XFD_REG_IOCON, &val);
+	if (ret)
+		return ret;
+
+	if (mask & val)
+		return GPIO_LINE_DIRECTION_IN;
+
+	return GPIO_LINE_DIRECTION_OUT;
+}
+
+static int mcp251xfd_gpio_get(struct gpio_chip *chip, unsigned int offset)
+{
+	struct mcp251xfd_priv *priv = gpiochip_get_data(chip);
+	u32 mask = MCP251XFD_REG_IOCON_GPIO(offset);
+	u32 val;
+	int ret;
+
+	ret = regmap_read(priv->map_reg, MCP251XFD_REG_IOCON, &val);
+	if (ret)
+		return ret;
+
+	return !!(mask & val);
+}
+
+static int mcp251xfd_gpio_get_multiple(struct gpio_chip *chip, unsigned long *mask,
+				       unsigned long *bit)
+{
+	struct mcp251xfd_priv *priv = gpiochip_get_data(chip);
+	u32 val;
+	int ret;
+
+	ret = regmap_read(priv->map_reg, MCP251XFD_REG_IOCON, &val);
+	if (ret)
+		return ret;
+
+	*bit = FIELD_GET(MCP251XFD_REG_IOCON_GPIO_MASK, val) & *mask;
+
+	return 0;
+}
+
+static int mcp251xfd_gpio_direction_output(struct gpio_chip *chip,
+					   unsigned int offset, int value)
+{
+	struct mcp251xfd_priv *priv = gpiochip_get_data(chip);
+	u32 dir_mask = MCP251XFD_REG_IOCON_TRIS(offset);
+	u32 val_mask = MCP251XFD_REG_IOCON_LAT(offset);
+	u32 val;
+
+	if (value)
+		val = val_mask;
+	else
+		val = 0;
+
+	return regmap_update_bits(priv->map_reg, MCP251XFD_REG_IOCON,
+				  dir_mask | val_mask, val);
+}
+
+static int mcp251xfd_gpio_direction_input(struct gpio_chip *chip,
+					  unsigned int offset)
+{
+	struct mcp251xfd_priv *priv = gpiochip_get_data(chip);
+	u32 dir_mask = MCP251XFD_REG_IOCON_TRIS(offset);
+
+	return regmap_update_bits(priv->map_reg, MCP251XFD_REG_IOCON,
+				  dir_mask, dir_mask);
+}
+
+static int mcp251xfd_gpio_set(struct gpio_chip *chip, unsigned int offset, int value)
+{
+	struct mcp251xfd_priv *priv = gpiochip_get_data(chip);
+	u32 val_mask = MCP251XFD_REG_IOCON_LAT(offset);
+	u32 val;
+	int ret;
+
+	if (value)
+		val = val_mask;
+	else
+		val = 0;
+
+	ret = regmap_update_bits(priv->map_reg, MCP251XFD_REG_IOCON, val_mask, val);
+	if (ret)
+		dev_err(&priv->spi->dev, "Failed to set GPIO %u: %d\n", offset, ret);
+
+	return ret;
+}
+
+static int mcp251xfd_gpio_set_multiple(struct gpio_chip *chip, unsigned long *mask,
+				       unsigned long *bits)
+{
+	struct mcp251xfd_priv *priv = gpiochip_get_data(chip);
+	u32 val;
+	int ret;
+
+	val = FIELD_PREP(MCP251XFD_REG_IOCON_LAT_MASK, *bits);
+
+	ret = regmap_update_bits(priv->map_reg, MCP251XFD_REG_IOCON,
+				 MCP251XFD_REG_IOCON_LAT_MASK, val);
+	if (ret)
+		dev_err(&priv->spi->dev, "Failed to set GPIOs %d\n", ret);
+
+	return ret;
+}
+
+static int mcp251fdx_gpio_setup(struct mcp251xfd_priv *priv)
+{
+	struct gpio_chip *gc = &priv->gc;
+
+	if (!device_property_present(&priv->spi->dev, "gpio-controller"))
+		return 0;
+
+	gc->label = dev_name(&priv->spi->dev);
+	gc->parent = &priv->spi->dev;
+	gc->owner = THIS_MODULE;
+	gc->request = mcp251xfd_gpio_request;
+	gc->free = mcp251xfd_gpio_free;
+	gc->get_direction = mcp251xfd_gpio_get_direction;
+	gc->direction_output = mcp251xfd_gpio_direction_output;
+	gc->direction_input = mcp251xfd_gpio_direction_input;
+	gc->get = mcp251xfd_gpio_get;
+	gc->get_multiple = mcp251xfd_gpio_get_multiple;
+	gc->set = mcp251xfd_gpio_set;
+	gc->set_multiple = mcp251xfd_gpio_set_multiple;
+	gc->base = -1;
+	gc->can_sleep = true;
+	gc->ngpio = ARRAY_SIZE(mcp251xfd_gpio_names);
+	gc->names = mcp251xfd_gpio_names;
+
+	return devm_gpiochip_add_data(&priv->spi->dev, gc, priv);
+}
+
 static int
 mcp251xfd_register_get_dev_id(const struct mcp251xfd_priv *priv, u32 *dev_id,
 			      u32 *effective_speed_hz_slow,
@@ -1930,6 +2096,12 @@ static int mcp251xfd_register(struct mcp251xfd_priv *priv)
 
 	mcp251xfd_ethtool_init(priv);
 
+	err = mcp251fdx_gpio_setup(priv);
+	if (err) {
+		dev_err_probe(&priv->spi->dev, err, "Failed to register gpio-controller.\n");
+		goto out_runtime_disable;
+	}
+
 	err = register_candev(ndev);
 	if (err)
 		goto out_runtime_disable;
diff --git a/drivers/net/can/spi/mcp251xfd/mcp251xfd.h b/drivers/net/can/spi/mcp251xfd/mcp251xfd.h
index bd28510a6583..085d7101e595 100644
--- a/drivers/net/can/spi/mcp251xfd/mcp251xfd.h
+++ b/drivers/net/can/spi/mcp251xfd/mcp251xfd.h
@@ -15,6 +15,7 @@
 #include <linux/can/dev.h>
 #include <linux/can/rx-offload.h>
 #include <linux/gpio/consumer.h>
+#include <linux/gpio/driver.h>
 #include <linux/kernel.h>
 #include <linux/netdevice.h>
 #include <linux/regmap.h>
@@ -676,6 +677,7 @@ struct mcp251xfd_priv {
 
 	struct mcp251xfd_devtype_data devtype_data;
 	struct can_berr_counter bec;
+	struct gpio_chip gc;
 };
 
 #define MCP251XFD_IS(_model) \
-- 
2.34.1


