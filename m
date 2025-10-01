Return-Path: <devicetree+bounces-222961-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5572EBAFCC4
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 11:11:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0BD404E29FC
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 09:11:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 613662D94B6;
	Wed,  1 Oct 2025 09:10:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VuRBuuXb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A43FA2D94B4
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759309836; cv=none; b=jbOPE9ZOZXjUTROVnmmgsuAKRzD518/gYzmw+NYwE4KCpvUs9mwOHM4DHchY35A6Gkzf22ovTRI62VvTUbiRmcfwBAKr+2B/VhTHgbxxNJY4LGl+Y5B7LEcQX/sDemJUCUAEeuZpSa39wRKySiDvGCTFm6WDdHsO8wsiKe/BiS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759309836; c=relaxed/simple;
	bh=qKSG5ADsXNKPjV3nlzlHBiIYrmbuMHtoYqrl7DKLOKU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=cTZoOR+u0RdpfZl7MheZG86nhcNasfzWqWjqAnCVd+HK3mJbN5TedxJa2OwExXd9x6k8FeWEh18FubLmLH4evwlQu5XpBGoinxL3tf1cyfbt0LgYfFnJwrPFZWoU0pL/ZRiC99/DkT2nk7f0YFUCsVmYC1m9WD0F5bBHBZG3ZDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VuRBuuXb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5918U31I022146
	for <devicetree@vger.kernel.org>; Wed, 1 Oct 2025 09:10:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=o0FOP3SERm0
	lzOQVjmAaIk/cr88mu/vSl0/yi1Gxue0=; b=VuRBuuXbQ25g4pw/KXGNFZSXySc
	ou3OWgN5RR5xxGX7PxtwaXLN4cFdeTN2HOzYlyzEye4fo7/xvtGhOpWQzTyizpct
	O1hJtCSQiX9+7FwwMQp5pegp0XVKBLcCtXmZcVn0hNoauDfRGA/O7i8Q/IIX8DeZ
	fULc/TENF2jFaZqnp/Jp5k8vPkMg6MPY8ezTfQL19ErTlqVv8hApxu+7KLwneT5R
	ti1KMm3fKDr6IeXJKfkHhKoXhtvdC9ybivy1TiOa2/3I3eYPBvp/TmEmChwefdHv
	VMSdA3lemdDrFsceb7TFfkC4I/1k/pYKwQWKlL8Va/J+vnABrgJL4rSywtA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e6x5v461-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 09:10:32 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-33428befc5bso6659214a91.0
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 02:10:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759309832; x=1759914632;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o0FOP3SERm0lzOQVjmAaIk/cr88mu/vSl0/yi1Gxue0=;
        b=UshMqpkdhfab+/3t5ngKskPLJFUlxRsBEA2ACsj85knRi0ShHb7n8WpHYasNRpPpUJ
         dl6FlI+OuRMYg2iwf5P/M0mP0RQK4A3sKvfJpowoDE5+VnG9Vl288iEmwoNaDhM8dnfG
         cgzjzAM2IAaSqv+yw4zfW/S9aNfabDe7fgAIjPhGExs6xVpCE9XuKPj8V5GxEa147ZJL
         e4BYci6ZGKRNEyZbZoGBGaS25pRIfrrqmGZSXgz7ak6Xpmywy5vSg7QSHsMbTg3l0Rww
         qI07vbSZNDznpE8nfgs/fvpeRI1CIu2DXvd0a0QEIkkG4mItWb5EF9Xv0CIhIyUcmn/P
         8bZw==
X-Forwarded-Encrypted: i=1; AJvYcCXm/DdhFx3i8m7mFR0IrrVecavlBPDuqxzFTsVFqhzYLQHdBEwBYSoRQEIFAg9UQm3cAGnZi6tug88D@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8UMt3UqpxipKU4eoNUBy/jBvwtGYZceNfv9jSKMr3B+tgAGWq
	rooVIJoXT9zxLPNq3SXXRhCcjYoSNLKmpp+uEuxcS4caw36yLQnjdh0VSILGKMCh4iFdktZMP2J
	MSzI7C6HtzAhmcrYFaJgITYGFnHRzpaIi7zcz7fs6p9k0rtaOlLFn5dQ0BA6UGnr2
X-Gm-Gg: ASbGncvAjCl/UGINYXCKEQtKnjanhJrMYDERxzcGrsd+e3aWzlVaBUGO3t4ZxUv3NnA
	xjNJhJDMdjEhPykok+Qsqxu9NWDRo1d6eiuFXckI6M5RgHRfOA4NtYVQQJ1F0TGKVuEBeywXsQk
	e0hnTKa+baCrbAcA7THkWVKZKqwHu/x4sPoKuGtW109xblN5ZAegWbECzG7xo817SosmVjKXgJQ
	pZ/jN6sWpe3IKVOo1MoMBjsUTpI+xJ8ETTcbU2iB8GVSirx/MjsDTWEvpS6GTq0+pMhuPYmmWHZ
	LbhpDjj7f86HFqfF8Q/+QhOIGFE1n8X532jemVRrW3WtcLD8uHFlu8rQyAheG+E8gyNJYzx46n8
	+opS/Vw==
X-Received: by 2002:a17:90b:1652:b0:32a:e706:b7b6 with SMTP id 98e67ed59e1d1-339a6e75590mr2738739a91.11.1759309831585;
        Wed, 01 Oct 2025 02:10:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHMHrsbDPHS1HxcDO+K/KipyOuzCxhUrgWjzzx0QS2Hg/EFoTGnWxrcFhl3HffiKGv+LxmMJQ==
X-Received: by 2002:a17:90b:1652:b0:32a:e706:b7b6 with SMTP id 98e67ed59e1d1-339a6e75590mr2738704a91.11.1759309831072;
        Wed, 01 Oct 2025 02:10:31 -0700 (PDT)
Received: from hu-vdadhani-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-339a6ea09ebsm1859315a91.2.2025.10.01.02.10.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 02:10:30 -0700 (PDT)
From: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
To: mkl@pengutronix.de, mani@kernel.org, thomas.kopp@microchip.com,
        mailhol.vincent@wanadoo.fr, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linus.walleij@linaro.org, brgl@bgdev.pl,
        linux-can@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: mukesh.savaliya@oss.qualcomm.com, anup.kulkarni@oss.qualcomm.com,
        Gregor Herburger <gregor.herburger@ew.tq-group.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Subject: [PATCH v6 3/6] can: mcp251xfd: add workaround for errata 5
Date: Wed,  1 Oct 2025 14:40:03 +0530
Message-Id: <20251001091006.4003841-4-viken.dadhaniya@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251001091006.4003841-1-viken.dadhaniya@oss.qualcomm.com>
References: <20251001091006.4003841-1-viken.dadhaniya@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: wUtmHxzjedXJqAIpszYLQmg6-BiIJoid
X-Proofpoint-ORIG-GUID: wUtmHxzjedXJqAIpszYLQmg6-BiIJoid
X-Authority-Analysis: v=2.4 cv=ZtPg6t7G c=1 sm=1 tr=0 ts=68dcf009 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=x6icFKpwvdMA:10 a=8f9FM25-AAAA:8 a=EUspDBNiAAAA:8 a=-2jKClcn1S1UO4fOL_0A:9
 a=mQ_c8vxmzFEMiUWkPHU9:22 a=uSNRK0Bqq4PXrUp6LDpb:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAxOCBTYWx0ZWRfX2EF685wiEPpN
 EzlQKKi9PP0Msqjbit1AM4JZQDPxW1Y8WG0/gDjXfP0rZVvjLWGTj8Vxm5RLdbmuGXGg8XoFrWe
 wH6pDRpQ4VjHddb+yvnlrZOp7fI1sUDSQTTJTQVCEP4eZPjQzEol6eviIkl6qfqqRh1QdYq+AhI
 60L8KI48zJ+2s6NAuo/HCf8c97P2hVHxxhHLXnpLgI2dr7k5VrzaFDka/wjpNDb3Rp5HUPtJVUP
 n58JVA42UYD9CHww2mWIPkUX6Ncxzz7ta5dQXSFoMf9rl7RBNCKdlODbo4Ac2qlpa/Mo0y8DI4l
 M059a6FV1W+l2hqWrHRjkw7VBQS91ZRovSPhE5kamwtmdB31+UvhL7kXGBNoA1EE+eVOu/iLhbt
 6J5889TxLWyqJd0X/DxRozluMzCwVw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_02,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 priorityscore=1501 malwarescore=0 bulkscore=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270018

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
index e61cbd209955..70d5ff0ae7ac 100644
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
+	u16 reg = be16_to_cpu(*(__be16 *)reg_p) & MCP251XFD_SPI_ADDRESS_MASK;
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
+		reg = (__force unsigned short)cpu_to_be16(MCP251XFD_SPI_INSTRUCTION_WRITE | reg);
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


