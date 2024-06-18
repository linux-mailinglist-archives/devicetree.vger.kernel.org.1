Return-Path: <devicetree+bounces-77284-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C42990DFA5
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 01:12:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 83A442853E3
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 23:12:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07FFB18132A;
	Tue, 18 Jun 2024 23:12:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b="LLIl2vWQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AABA17E46A;
	Tue, 18 Jun 2024 23:12:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.135.77
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718752327; cv=none; b=KcKGjlSLifCSJb3U7kqPf+sEOiSLTqzf0suqtSprZv6YEfE4sFkl9dollaSHWt/hEXL20a6+fKLV2TLOiQ9ErfNbhs1TmVT6Y2yxvnQAQgqBUPZx+7xpW++gyCKCIvLvvAN9lTfG4SLrCMnnTwd+K09qDDYeh8/pdid16nEqgDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718752327; c=relaxed/simple;
	bh=d4UMz3/NmqSZwoZcng9pkrOofWTSaljvfAfmh0pObGo=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=nPTnfiolRQWrLp2hv+sFxdwAwaRVy0hk/j0uJ+87UtlaVl1lHO5NlsDsqG2tV3iF3oG4LkD/6K+8SA6rH+lqotesYiM7L/pMWKZxju+3pzsCJjSbqryVrUgf/NbuEVGSj07N7tt+TK/3UATl2mvJ+4R+E7tD8KKY5T3ACSgYcg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=analog.com; spf=pass smtp.mailfrom=analog.com; dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b=LLIl2vWQ; arc=none smtp.client-ip=148.163.135.77
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=analog.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=analog.com
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 45ILXSih005308;
	Tue, 18 Jun 2024 19:11:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=analog.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=DKIM; bh=/w/IY
	NpPZz5IHAh8QoRFFZ3VV7ooZlu3hgDtTg8Vy68=; b=LLIl2vWQIyeQ3mKW7aCop
	5FlIoYQ3A8ypw249a3CcOeLTO/1N+ea3yybrzFcvQ7KhAhxM3cWsHmxMrHAXb8yw
	Sd0LqOIgqEKWU0mD3Wy1pD2UQahLQa6ztATCfLaz3rVzEmXae8MkG0xhwwk83XkY
	2j52V10vAjgx5d52MjdfD/bOyNDyRArRaTTvioZrxitaonrbg4PbHfAhmNTtktdo
	CPKeu4LOLDrz/aYLsAZAHsovUbz4+PxP0Htu2HS9eOayjUwjkaLW6kHmK27o/8z/
	MUonJiDdtipL29+7YOJEj6ItWM7aRY0yGXmd4eWLqzrg5xaVz92RkU5sqBEaqFbk
	A==
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 3yuj8qg8gg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 18 Jun 2024 19:11:51 -0400 (EDT)
Received: from ASHBMBX8.ad.analog.com (ASHBMBX8.ad.analog.com [10.64.17.5])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 45INBoAY017550
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 18 Jun 2024 19:11:50 -0400
Received: from ASHBMBX8.ad.analog.com (10.64.17.5) by ASHBMBX8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.14; Tue, 18 Jun
 2024 19:11:49 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Tue, 18 Jun 2024 19:11:49 -0400
Received: from work.ad.analog.com (HYB-hERzalRezfV.ad.analog.com [10.65.205.129])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 45INBXQd021758;
	Tue, 18 Jun 2024 19:11:36 -0400
From: Marcelo Schmitt <marcelo.schmitt@analog.com>
To: <broonie@kernel.org>, <lars@metafoo.de>, <Michael.Hennerich@analog.com>,
        <jic23@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <nuno.sa@analog.com>, <dlechner@baylibre.com>,
        <marcelo.schmitt1@gmail.com>
CC: <linux-iio@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-spi@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v4 3/6] spi: spi-gpio: Add support for MOSI idle state configuration
Date: Tue, 18 Jun 2024 20:11:31 -0300
Message-ID: <77bd203e857771a458e707a5f57ae3f31cfaa501.1718749981.git.marcelo.schmitt@analog.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1718749981.git.marcelo.schmitt@analog.com>
References: <cover.1718749981.git.marcelo.schmitt@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-ORIG-GUID: 9lgsWApQ3M6SI-LXVRbnctWh62OWWvDX
X-Proofpoint-GUID: 9lgsWApQ3M6SI-LXVRbnctWh62OWWvDX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-06-18_06,2024-06-17_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 malwarescore=0 spamscore=0 suspectscore=0 lowpriorityscore=0 bulkscore=0
 impostorscore=0 clxscore=1015 phishscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2405170001 definitions=main-2406180169

Implement MOSI idle low and MOSI idle high to better support peripherals
that request specific MOSI behavior.

Acked-by: Nuno Sa <nuno.sa@analog.com>
Signed-off-by: Marcelo Schmitt <marcelo.schmitt@analog.com>
---
 drivers/spi/spi-gpio.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spi-gpio.c b/drivers/spi/spi-gpio.c
index 909cce109bba..d3b8c99f0cb4 100644
--- a/drivers/spi/spi-gpio.c
+++ b/drivers/spi/spi-gpio.c
@@ -236,6 +236,14 @@ static void spi_gpio_chipselect(struct spi_device *spi, int is_active)
 	}
 }
 
+static void spi_gpio_set_mosi_idle(struct spi_device *spi)
+{
+	struct spi_gpio *spi_gpio = spi_to_spi_gpio(spi);
+
+	gpiod_set_value_cansleep(spi_gpio->mosi,
+				 !!(spi->mode & SPI_MOSI_IDLE_HIGH));
+}
+
 static int spi_gpio_setup(struct spi_device *spi)
 {
 	struct gpio_desc	*cs;
@@ -411,7 +419,8 @@ static int spi_gpio_probe(struct platform_device *pdev)
 
 	host->bits_per_word_mask = SPI_BPW_RANGE_MASK(1, 32);
 	host->mode_bits = SPI_3WIRE | SPI_3WIRE_HIZ | SPI_CPHA | SPI_CPOL |
-			    SPI_CS_HIGH | SPI_LSB_FIRST;
+			  SPI_CS_HIGH | SPI_LSB_FIRST | SPI_MOSI_IDLE_LOW |
+			  SPI_MOSI_IDLE_HIGH;
 	if (!spi_gpio->mosi) {
 		/* HW configuration without MOSI pin
 		 *
@@ -436,6 +445,7 @@ static int spi_gpio_probe(struct platform_device *pdev)
 	host->flags |= SPI_CONTROLLER_GPIO_SS;
 	bb->chipselect = spi_gpio_chipselect;
 	bb->set_line_direction = spi_gpio_set_direction;
+	bb->set_mosi_idle = spi_gpio_set_mosi_idle;
 
 	if (host->flags & SPI_CONTROLLER_NO_TX) {
 		bb->txrx_word[SPI_MODE_0] = spi_gpio_spec_txrx_word_mode0;
-- 
2.43.0


