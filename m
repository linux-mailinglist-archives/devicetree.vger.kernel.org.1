Return-Path: <devicetree+bounces-222962-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B7136BAFCCD
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 11:11:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7FD921885629
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 09:11:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BEDC2DA753;
	Wed,  1 Oct 2025 09:10:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hkKu3oVJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75B132D94B2
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 09:10:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759309844; cv=none; b=Tz2zNMN66qOklE8qOEGmY4ukdTXyl7cKSEEyaSi+ENa9Oop79yCtTj7+wb5TN1AJGrP9evyFxyP2QGoXlH35FnjoBJUwIGUaJRsS/hJHiKHmWj1tvSwZ1JmfwmzN/9ZwBGhbFVwJK0J3xtXcVrYV2KrfNx2vMkdQeIfX6dAiNBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759309844; c=relaxed/simple;
	bh=fk0TNQn7BAcvjE7TYECp7NGF/xF5QIeAzGhAHgip9EU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=HHt2EEjwgzZhNo8PGkmm/HGhHiekDWuCvgA8mbZMHfRdnelRfPy9oA0VKkjb0Ts1f0DCO/lrp3Ck6ZRYdHLlM74PBxCwwzigQnTqn3WerjkTguxGedaVWmvFZwL7faGIALBYT7W+pLPaBH0oX/OWgtybRXGD04806O5JalwCcgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hkKu3oVJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5917KWlb017597
	for <devicetree@vger.kernel.org>; Wed, 1 Oct 2025 09:10:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=fAG+r6LmnpS
	+c29A06CpnJf3DtWoAPxQEN6FpwdQPUk=; b=hkKu3oVJtxvzo3nFqAJrrxfSJLE
	28BuXxUzHcSkSHXTyMerNXvBT5bHeFlM5XKs56aBIzz1VdSCv0KnnggLO1/WFvs8
	JDWtQxcnEHIEVrFzrAsZlgrtPeIqBG5Sv1haLYyBl4bgEmXHybknUcjOFDZzWySP
	pXIbPiVy2STV9xuZfyh1buXnufB14ZlxX8E4zW7/Vy2+Z7cXWJVvy5NTrRPcWLsL
	Own9aUI4Xftjsh/UgvkQWP66ChC0fpP8NfLy1TysqVh77ARg9L66EOffPJtUE/+P
	keSWizTq6L3Qt1hjfHBc86kTT0//OjX2rKO7sUWth8P1gzsVvc4RZsyvhbw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e80tv5g7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 09:10:41 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-33428befd39so13283734a91.0
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 02:10:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759309840; x=1759914640;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fAG+r6LmnpS+c29A06CpnJf3DtWoAPxQEN6FpwdQPUk=;
        b=igvGABgmFVu81bo7WOlGX1SLLrqiQSef6SLjgo22MuJ4z6yd1QcIJCleGIQEh+ASUT
         Zw7LCbZFAHDwRoWzH4Pd8p/GPdjerVu2r0NQgvnWaHbClXNVAvbTBduw/cp22kdOQAX7
         4xgpAnUigVTUxr9THaWxWp8cOQ7PQK56kf5Jz5cCxbxGVVpYE2w8VlCjbna1ramge/sL
         ulDWZNVtrNfsvuq/Qcg7lYUEWbhBl7P2ovIfBV2d29vGVtCMkG/SNm64HYwYmDJVDNpE
         5g+aFDVF5mPYkiKsfiaq3Q61QOTUOIPdnq0e7t5vQbwP2BmABqq5O+jx5p1wwRiWxFdP
         vp7g==
X-Forwarded-Encrypted: i=1; AJvYcCWCmNRAre6EXS/98IVouVqPMnmbkINLaDZ1g81r/f4Kxbi2s7ve2icwH7Dl9Ge7m+ON9ElMMG9yC+/y@vger.kernel.org
X-Gm-Message-State: AOJu0YwoHVDA5xiLRXfoI9Lg8oBrfgxkkjjXbWhHK2iSoWxL/u3y8mAg
	7D7bvelRDd7KJLy6m0+2DydtbrkI4aUrJ/cXs7v1FL4c+231tJIza5HGKpNZ+7ARkj6Oe42x08I
	tCX32l9cluUc8ZIUTzIPn0oZux6PD+M/J8lhQSfX5nnHNt8r/T4kDig8XHViIVoha
X-Gm-Gg: ASbGncvCCw6FddiWNMk34k51X16AWSEaSDHW8k2GYfqa4Z4NC2gYST3yzzsv+RY69WZ
	hggapu2EP5/ZY+j1tDRG2FgryNEBCwyb8E3rkOdPLl/O7zrfEYSpf1+cwlgbJFUOJXSWTddGIFH
	0XABzeLIVwu8PtR1XedH6igddef2v0od5PedlZPYa/nKovWRAW7D2tpigUQBtAOXzRasLOCPj6i
	cMQWuJFI67HIj+2JmyhNAgT4S5iUM7hH+kmXXsgEiDC+oXj9lstOJyPjLbg75YVVHtSvZDmP4Es
	IHIQNF2w6Rx0HAVtlOYyoMEGBYNZpU0dEzXYM+tZ+UkDAqXg6wN+fCrqnDokNKumtFMG+QV2nC+
	4zhXhvQ==
X-Received: by 2002:a17:90b:4a8c:b0:32b:c9c0:2a11 with SMTP id 98e67ed59e1d1-339a6e906d5mr3004495a91.4.1759309839812;
        Wed, 01 Oct 2025 02:10:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEG2Oc1zqD7w/nvyX6L05+vrpzpYRsOhSjBhkqgqLwDY6UG69cDOCWgjGqXzaNuipkL6H6UfQ==
X-Received: by 2002:a17:90b:4a8c:b0:32b:c9c0:2a11 with SMTP id 98e67ed59e1d1-339a6e906d5mr3004460a91.4.1759309839344;
        Wed, 01 Oct 2025 02:10:39 -0700 (PDT)
Received: from hu-vdadhani-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-339a6ea09ebsm1859315a91.2.2025.10.01.02.10.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 02:10:39 -0700 (PDT)
From: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
To: mkl@pengutronix.de, mani@kernel.org, thomas.kopp@microchip.com,
        mailhol.vincent@wanadoo.fr, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linus.walleij@linaro.org, brgl@bgdev.pl,
        linux-can@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: mukesh.savaliya@oss.qualcomm.com, anup.kulkarni@oss.qualcomm.com,
        Gregor Herburger <gregor.herburger@ew.tq-group.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Subject: [PATCH v6 4/6] can: mcp251xfd: only configure PIN1 when rx_int is set
Date: Wed,  1 Oct 2025 14:40:04 +0530
Message-Id: <20251001091006.4003841-5-viken.dadhaniya@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAyOSBTYWx0ZWRfX/dfouQc+P2++
 VTkv4tirJOqr9z0t9EMoY1qIaXFLIxme4+PvqMPkCzcB2hzfpzalVZeaGx/3BoJ0SWpmQBnlzqY
 ImcEod58tQJ3BLYft3pdmcmsfjqZLFXeSjJRP6JakOyZUsfxeHfXj3eSgSxpUJEz94/5AwTqw/m
 wGtahcn8ULGarcAXLeQoVrWTvzrP595Rwqqom+BMOAjX/9nx28MYqm/c+SO5S4BWIefI+SAT6Wl
 ZHvuCHT1pHDCOAz5wfdBMYFRh1JN/wJWCGmREQYxhvSlz+USbk5j964GbsFTzpqlEJ9sbQawGWM
 TaPdhoBYlkkZ7SDWlg/IbYHgL+qbGoeB4YztwkmB4GvhzfSJ1LwFt9SCZSdq/JXudsf+B2Si3O4
 fqzkxhD45Mu6nnnnsZrqfDCQ69+jiQ==
X-Proofpoint-GUID: 94LZ3p2GMcCl-YOIUANScAa0Topck8vk
X-Authority-Analysis: v=2.4 cv=OMkqHCaB c=1 sm=1 tr=0 ts=68dcf011 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=x6icFKpwvdMA:10 a=8f9FM25-AAAA:8 a=EUspDBNiAAAA:8 a=Zr3td6iJmGh5AMeZqZgA:9
 a=mQ_c8vxmzFEMiUWkPHU9:22 a=uSNRK0Bqq4PXrUp6LDpb:22
X-Proofpoint-ORIG-GUID: 94LZ3p2GMcCl-YOIUANScAa0Topck8vk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_02,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 bulkscore=0 phishscore=0 adultscore=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270029

From: Gregor Herburger <gregor.herburger@ew.tq-group.com>

When rx_int is used th mcp251xfd_chip_rx_int_enable and
mcp251xfd_chip_rx_int_disable function configure both PIN0 and PIN1. To
prepare the support of the GPIOS only configure PIN1 with
regmap_update_bits.

This way PIN0 can be used as GPIO while PIN1 is used as rx_int
interrupt.

Signed-off-by: Gregor Herburger <gregor.herburger@ew.tq-group.com>
Tested-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Signed-off-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
---
 .../net/can/spi/mcp251xfd/mcp251xfd-core.c    | 22 +++++++------------
 drivers/net/can/spi/mcp251xfd/mcp251xfd.h     |  6 +++++
 2 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c b/drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c
index f9eabb1810cf..ea41f04ae1a6 100644
--- a/drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c
+++ b/drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c
@@ -608,23 +608,21 @@ static int mcp251xfd_set_bittiming(const struct mcp251xfd_priv *priv)
 
 static int mcp251xfd_chip_rx_int_enable(const struct mcp251xfd_priv *priv)
 {
-	u32 val;
+	u32 val, mask;
 
 	if (!priv->rx_int)
 		return 0;
 
-	/* Configure GPIOs:
-	 * - PIN0: GPIO Input
-	 * - PIN1: GPIO Input/RX Interrupt
+	/* Configure PIN1 as RX Interrupt:
 	 *
 	 * PIN1 must be Input, otherwise there is a glitch on the
 	 * rx-INT line. It happens between setting the PIN as output
 	 * (in the first byte of the SPI transfer) and configuring the
 	 * PIN as interrupt (in the last byte of the SPI transfer).
 	 */
-	val = MCP251XFD_REG_IOCON_PM0 | MCP251XFD_REG_IOCON_TRIS1 |
-		MCP251XFD_REG_IOCON_TRIS0;
-	return regmap_write(priv->map_reg, MCP251XFD_REG_IOCON, val);
+	val = MCP251XFD_REG_IOCON_TRIS(1);
+	mask = MCP251XFD_REG_IOCON_TRIS(1) | MCP251XFD_REG_IOCON_PM(1);
+	return regmap_update_bits(priv->map_reg, MCP251XFD_REG_IOCON, mask, val);
 }
 
 static int mcp251xfd_chip_rx_int_disable(const struct mcp251xfd_priv *priv)
@@ -634,13 +632,9 @@ static int mcp251xfd_chip_rx_int_disable(const struct mcp251xfd_priv *priv)
 	if (!priv->rx_int)
 		return 0;
 
-	/* Configure GPIOs:
-	 * - PIN0: GPIO Input
-	 * - PIN1: GPIO Input
-	 */
-	val = MCP251XFD_REG_IOCON_PM1 | MCP251XFD_REG_IOCON_PM0 |
-		MCP251XFD_REG_IOCON_TRIS1 | MCP251XFD_REG_IOCON_TRIS0;
-	return regmap_write(priv->map_reg, MCP251XFD_REG_IOCON, val);
+	/* Configure PIN1 as GPIO Input */
+	val = MCP251XFD_REG_IOCON_PM(1) | MCP251XFD_REG_IOCON_TRIS(1);
+	return regmap_update_bits(priv->map_reg, MCP251XFD_REG_IOCON, val, val);
 }
 
 static int mcp251xfd_chip_ecc_init(struct mcp251xfd_priv *priv)
diff --git a/drivers/net/can/spi/mcp251xfd/mcp251xfd.h b/drivers/net/can/spi/mcp251xfd/mcp251xfd.h
index dcbbd2b2fae8..bd28510a6583 100644
--- a/drivers/net/can/spi/mcp251xfd/mcp251xfd.h
+++ b/drivers/net/can/spi/mcp251xfd/mcp251xfd.h
@@ -335,13 +335,19 @@
 #define MCP251XFD_REG_IOCON_TXCANOD BIT(28)
 #define MCP251XFD_REG_IOCON_PM1 BIT(25)
 #define MCP251XFD_REG_IOCON_PM0 BIT(24)
+#define MCP251XFD_REG_IOCON_PM(n) (MCP251XFD_REG_IOCON_PM0 << (n))
 #define MCP251XFD_REG_IOCON_GPIO1 BIT(17)
 #define MCP251XFD_REG_IOCON_GPIO0 BIT(16)
+#define MCP251XFD_REG_IOCON_GPIO(n) (MCP251XFD_REG_IOCON_GPIO0 << (n))
+#define MCP251XFD_REG_IOCON_GPIO_MASK GENMASK(17, 16)
 #define MCP251XFD_REG_IOCON_LAT1 BIT(9)
 #define MCP251XFD_REG_IOCON_LAT0 BIT(8)
+#define MCP251XFD_REG_IOCON_LAT(n) (MCP251XFD_REG_IOCON_LAT0 << (n))
+#define MCP251XFD_REG_IOCON_LAT_MASK GENMASK(9, 8)
 #define MCP251XFD_REG_IOCON_XSTBYEN BIT(6)
 #define MCP251XFD_REG_IOCON_TRIS1 BIT(1)
 #define MCP251XFD_REG_IOCON_TRIS0 BIT(0)
+#define MCP251XFD_REG_IOCON_TRIS(n) (MCP251XFD_REG_IOCON_TRIS0 << (n))
 
 #define MCP251XFD_REG_CRC 0xe08
 #define MCP251XFD_REG_CRC_FERRIE BIT(25)
-- 
2.34.1


