Return-Path: <devicetree+bounces-218697-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B0630B83346
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 08:50:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 63A231C821BA
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 06:50:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 213892E2DCB;
	Thu, 18 Sep 2025 06:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LRUsp5o2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F68A2E7637
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 06:49:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758178174; cv=none; b=FpFeYwyF//423aSgEX1iOBsz1XhpnBMFRNRdeyXfsEFT+Lxf3koQglGj1QcP2xou6jTzPKR/L0zWaVHzpHJjYawHazpEd+B1ftjRV7q/B//Nk9eK33ZrSOvOv/OGIYmiQaf4nirjC2kH667p+HB20nZ3q0ycOs/pJYejwTuhfh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758178174; c=relaxed/simple;
	bh=/4kbUwnniL554GVUNwVLXBqnCaR/My4fabOkFQKK6oo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Iab/1eOdXL71vq9fuyMLWX8v8wZdtdPaXI9KO+2DJek5qPJ2InyLKf1cAqZ3C4eFVC6SVXf67jLza7O4ihQiT7ENNkSZSVAyFpWpe8GrFhcXBQmfvuQkVB0eYS3N33beuudbbmKqECpKRKSmzAO+600ZmfSU2CQdkWS3fkl4014=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LRUsp5o2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58I3JVJU021451
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 06:49:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=NnvOmJJvaiJ
	dkdV0XAgXRx/iMwwsotajiWEilazX6Rg=; b=LRUsp5o21t5z1kKnrb/8bDIx+/B
	FQCTlxML4MLx7FQRYb3IUzPQ0K05ryQkcnHvCSA1EM2JDbp+DkM5FDlS/0WFycT5
	jJEkD3urgo43Ayb/J+fAswFGcSkCon/ee1nTCrRLqv+QOIhnEppq8PmWGTAi8Kkb
	HFXZXiu5vKHNLZqWTh1M9wovWMeSzCAa2fBk6Z5JeIwVRHWLc1q0AgMjTcz8YC10
	PGi6e5hvZcusXwpzykGo5r5NogSXQ0LgBu6AV4nVk8ETtCxXkV7fK9mqKy5OobNg
	r/EL2CtazimZ0UGKJlyRs/E8Y7XGrtpF1DvYhlfxhYR12Zs4yV+tZVTL59Q==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fy5d918-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 06:49:30 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-77d4d4bb1bdso267284b3a.1
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 23:49:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758178170; x=1758782970;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NnvOmJJvaiJdkdV0XAgXRx/iMwwsotajiWEilazX6Rg=;
        b=QyjfUlETw/a80broknVmfxZSIkW6iXCDUj37g0gssm6C7CsqmoxiSrQyLXtTgRFoD1
         /1Miq36Gu/Ootm+Lo6dxBwFm8VKZv+C8W9+v8KDOnhmK/Q211WTA/6+hpkaVJZaw62SL
         1pLS3BDTfUONL9MRhHPC9J+N9jZatARHZ7m9l5O/A5ntk/KjKwwdLXDCoZk05t2Jxj1O
         xqr9QnEODlj+IKdSn6VRP5z8YG0DOn/GA2Lj5zXCAoca7kuSF2H915tcWnwKQwK/3ZeY
         UBMxCPsxAutdag071+tBfCQMY4avXmYcaYzcfyGCw2sIJipFGfXTLnf7RyoeBMDchJvf
         uRlg==
X-Forwarded-Encrypted: i=1; AJvYcCVSQQQ5qfte1ENWGoCLXoyv2Cz4sD0qJUQxfOdeLXEZhHBqS8EC3ELAzbpNGDs0LeqxvaL6K7yVI7J3@vger.kernel.org
X-Gm-Message-State: AOJu0YzHu0nDj3dcJVi/nMdWadvQ+ROm07rHNamCUpuTRIWTM2ijKKBI
	uCxlDpHhL0PVcf9gVIa6ILC2mOA0xivT6JyT8478gEY11/qI2qkjAt5p2i0PRzdMZZGcnpeTAVa
	3qZ4XR+p0qrMjvpQ5e4xxINjjIeGCFcYkHHcloqSy1xsv+2nl7UfARTAqDizYGTut
X-Gm-Gg: ASbGnctA6T6FtlBxUaX7zHD5ZpTYneP7xNCUlMMbQ25WV0BHKQ2tAvVBLSxAHB/ijfj
	L42wDNGHRmlrfIebPnGRGVB6RIszeKAeLpRXIZSY0GBqtXJlw4f2skREZUoyjfsse7cwuzdlIG4
	CZs2e9UN5ngNejkJ2RdzwKJKPhL6/M9We+fSItjst5TOEQMV60lEd8qa5ja8ll/nos2pakjDCa/
	I5fq2MZA6YV6jm7TevEqCfSwaUjkRg5ev/mIl5fhhkASXEoU9LRKp2X0Pi7ViVFJ+tkU/2W0ruC
	5rldCzlvo+Nse2+VbUQ7IUvDbseiqmEU4j5A4D5TTKsJhTgRa1mHoRkZ50/uJlK3TbSeM0WYznl
	k
X-Received: by 2002:a05:6a00:a24:b0:76b:c9b9:a11b with SMTP id d2e1a72fcca58-77bf6fcf42amr4802528b3a.3.1758178169596;
        Wed, 17 Sep 2025 23:49:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG7sRaE02ggQe01SKwGhQlmhie7T/BAQTw4FIQVNZcr6uyfDFZZxhM/OJpvcp1IJ6Q2Ip3U1g==
X-Received: by 2002:a05:6a00:a24:b0:76b:c9b9:a11b with SMTP id d2e1a72fcca58-77bf6fcf42amr4802516b3a.3.1758178169129;
        Wed, 17 Sep 2025 23:49:29 -0700 (PDT)
Received: from hu-vdadhani-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77cff22bdb5sm1356789b3a.94.2025.09.17.23.49.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Sep 2025 23:49:28 -0700 (PDT)
From: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
To: mkl@pengutronix.de, mani@kernel.org, thomas.kopp@microchip.com,
        mailhol.vincent@wanadoo.fr, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linus.walleij@linaro.org, brgl@bgdev.pl,
        linux-can@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: mukesh.savaliya@oss.qualcomm.com, anup.kulkarni@oss.qualcomm.com,
        Gregor Herburger <gregor.herburger@ew.tq-group.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Subject: [PATCH v4 3/6] can: mcp251xfd: add workaround for errata 5
Date: Thu, 18 Sep 2025 12:19:00 +0530
Message-Id: <20250918064903.241372-4-viken.dadhaniya@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250918064903.241372-1-viken.dadhaniya@oss.qualcomm.com>
References: <20250918064903.241372-1-viken.dadhaniya@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 7KKEUjQ2zgyFaLCDiwENuSU_lH9zka-L
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX/1Pf4qxn30af
 fO8yh+PFhuQgqbWB7FOjGRaqHplTzFOD/uRqUji6hyY90unG39xbN4aFxxWsP+84ltuDpA96qj3
 z31A7Xsrdhwd8Oy5DOQj9LrBQh4k7CxswryfaR2xHpMeRQxuw+zlvBL8JNmUMagXIo/orTbCLw9
 +Hfq66RStjcDEbQi4huyQgnzWZv0PUQZZFu2fAdhi0Tqnyhm1gNsDd9tahu3RkiX0KtUKlRGADP
 6y6BkakxeIcDtyUSkV1WQ3ZQTIZDmpQYU7HsrETIQriN4vESq6ROTlUDmtnHbZXEOkq5A80eD3h
 gpVdPrK2SLf/6al6Oso/BQJH09bObsUjZJQdYFxQ3nSWQSrJ7avN+bDaufWRUkjV+5BVJfAESV5
 l5v3lrKX
X-Authority-Analysis: v=2.4 cv=Y+f4sgeN c=1 sm=1 tr=0 ts=68cbab7a cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=yJojWOMRYYMA:10 a=8f9FM25-AAAA:8 a=EUspDBNiAAAA:8 a=-2jKClcn1S1UO4fOL_0A:9
 a=zc0IvFSfCIW2DFIPzwfm:22 a=uSNRK0Bqq4PXrUp6LDpb:22
X-Proofpoint-ORIG-GUID: 7KKEUjQ2zgyFaLCDiwENuSU_lH9zka-L
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-18_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 impostorscore=0 phishscore=0 adultscore=0
 malwarescore=0 bulkscore=0 spamscore=0 clxscore=1015 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509160202

From: Gregor Herburger <gregor.herburger@ew.tq-group.com>

According to Errata DS80000789E 5 writing IOCON register using one SPI
write command clears LAT0/LAT1.

Errata Fix/Work Around suggests to write registers with single byte write
instructions. However, it seems that every write to the second byte
causes the overwrite of LAT0/LAT1.

Never write byte 2 of IOCON register to avoid clearing of LAT0/LAT1.

Signed-off-by: Gregor Herburger <gregor.herburger@ew.tq-group.com>
Tested-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Signed-off-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
---
 .../net/can/spi/mcp251xfd/mcp251xfd-regmap.c  | 89 +++++++++++++++++--
 1 file changed, 83 insertions(+), 6 deletions(-)

diff --git a/drivers/net/can/spi/mcp251xfd/mcp251xfd-regmap.c b/drivers/net/can/spi/mcp251xfd/mcp251xfd-regmap.c
index e61cbd209955..bc24a837bcd0 100644
--- a/drivers/net/can/spi/mcp251xfd/mcp251xfd-regmap.c
+++ b/drivers/net/can/spi/mcp251xfd/mcp251xfd-regmap.c
@@ -13,9 +13,9 @@
 static const struct regmap_config mcp251xfd_regmap_crc;
 
 static int
-mcp251xfd_regmap_nocrc_gather_write(void *context,
-				    const void *reg, size_t reg_len,
-				    const void *val, size_t val_len)
+_mcp251xfd_regmap_nocrc_gather_write(void *context,
+				     const void *reg, size_t reg_len,
+				     const void *val, size_t val_len)
 {
 	struct spi_device *spi = context;
 	struct mcp251xfd_priv *priv = spi_get_drvdata(spi);
@@ -39,6 +39,45 @@ mcp251xfd_regmap_nocrc_gather_write(void *context,
 	return spi_sync_transfer(spi, xfer, ARRAY_SIZE(xfer));
 }
 
+static int
+mcp251xfd_regmap_nocrc_gather_write(void *context,
+				    const void *reg_p, size_t reg_len,
+				    const void *val, size_t val_len)
+{
+	const u16 byte_exclude = MCP251XFD_REG_IOCON +
+				 mcp251xfd_first_byte_set(MCP251XFD_REG_IOCON_GPIO_MASK);
+	u16 reg = be16_to_cpu(*(u16 *)reg_p) & MCP251XFD_SPI_ADDRESS_MASK;
+	int ret;
+
+	/* Never write to bits 16..23 of IOCON register to avoid clearing of LAT0/LAT1
+	 *
+	 * According to MCP2518FD Errata DS80000789E 5 writing IOCON register using one
+	 * SPI write command clears LAT0/LAT1.
+	 *
+	 * Errata Fix/Work Around suggests to write registers with single byte
+	 * write instructions. However, it seems that the byte at 0xe06(IOCON[23:16])
+	 * is for read-only access and writing to it causes the clearing of LAT0/LAT1.
+	 */
+	if (reg <= byte_exclude && reg + val_len > byte_exclude) {
+		size_t len = byte_exclude - reg;
+
+		/* Write up to 0xe05 */
+		ret = _mcp251xfd_regmap_nocrc_gather_write(context, reg_p, reg_len, val, len);
+		if (ret)
+			return ret;
+
+		/* Write from 0xe07 on */
+		reg += len + 1;
+		reg = cpu_to_be16(MCP251XFD_SPI_INSTRUCTION_WRITE | reg);
+		return _mcp251xfd_regmap_nocrc_gather_write(context, &reg, reg_len,
+							    val + len + 1,
+							    val_len - len - 1);
+	}
+
+	return _mcp251xfd_regmap_nocrc_gather_write(context, reg_p, reg_len,
+						  val, val_len);
+}
+
 static int
 mcp251xfd_regmap_nocrc_write(void *context, const void *data, size_t count)
 {
@@ -197,9 +236,9 @@ mcp251xfd_regmap_nocrc_read(void *context,
 }
 
 static int
-mcp251xfd_regmap_crc_gather_write(void *context,
-				  const void *reg_p, size_t reg_len,
-				  const void *val, size_t val_len)
+_mcp251xfd_regmap_crc_gather_write(void *context,
+				   const void *reg_p, size_t reg_len,
+				   const void *val, size_t val_len)
 {
 	struct spi_device *spi = context;
 	struct mcp251xfd_priv *priv = spi_get_drvdata(spi);
@@ -230,6 +269,44 @@ mcp251xfd_regmap_crc_gather_write(void *context,
 	return spi_sync_transfer(spi, xfer, ARRAY_SIZE(xfer));
 }
 
+static int
+mcp251xfd_regmap_crc_gather_write(void *context,
+				  const void *reg_p, size_t reg_len,
+				  const void *val, size_t val_len)
+{
+	const u16 byte_exclude = MCP251XFD_REG_IOCON +
+				 mcp251xfd_first_byte_set(MCP251XFD_REG_IOCON_GPIO_MASK);
+	u16 reg = *(u16 *)reg_p;
+	int ret;
+
+	/* Never write to bits 16..23 of IOCON register to avoid clearing of LAT0/LAT1
+	 *
+	 * According to MCP2518FD Errata DS80000789E 5 writing IOCON register using one
+	 * SPI write command clears LAT0/LAT1.
+	 *
+	 * Errata Fix/Work Around suggests to write registers with single byte
+	 * write instructions. However, it seems that the byte at 0xe06(IOCON[23:16])
+	 * is for read-only access and writing to it causes the clearing of LAT0/LAT1.
+	 */
+	if (reg <= byte_exclude  && reg + val_len > byte_exclude) {
+		size_t len = byte_exclude - reg;
+
+		/* Write up to 0xe05 */
+		ret = _mcp251xfd_regmap_crc_gather_write(context, &reg, reg_len, val, len);
+		if (ret)
+			return ret;
+
+		/* Write from 0xe07 on */
+		reg += len + 1;
+		return _mcp251xfd_regmap_crc_gather_write(context, &reg, reg_len,
+							  val + len + 1,
+							  val_len - len - 1);
+	}
+
+	return _mcp251xfd_regmap_crc_gather_write(context, reg_p, reg_len,
+						  val, val_len);
+}
+
 static int
 mcp251xfd_regmap_crc_write(void *context,
 			   const void *data, size_t count)
-- 
2.34.1


