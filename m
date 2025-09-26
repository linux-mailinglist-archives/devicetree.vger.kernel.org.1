Return-Path: <devicetree+bounces-221894-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B08BA3E81
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 15:32:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 65FD0623370
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 13:31:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2367C2FB08D;
	Fri, 26 Sep 2025 13:31:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IIadcD+e"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C8ED2F9C3E
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:30:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758893463; cv=none; b=Lw5JerY9WhDBkzlmNrgvYjV0Oit8egqk1bmKfFqqv/a04ybvWxYe1FDOKQcxE6lbgE4Vlx82ecUSE/7s2ezpsLT4CQImW2XMrVh+R/cgKZSQgQiZPL5AGBPTQ4Yi9Bw7VR7aTm41SoQvEMGN1/LIAzRjRCjI71q4pUmLFM/5D0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758893463; c=relaxed/simple;
	bh=fk0TNQn7BAcvjE7TYECp7NGF/xF5QIeAzGhAHgip9EU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=kdIECrZqG3xgFz30YMpi6CXYshM4yfB1z3dbTFDnJv7q+5evxzc0ib0AMQP5GLsZr3YOUIZxlfjQofctI0nryhp9GRzlpwY/bBKjLBxkhzL4fABw8BOcPS26L7vpbgFYyQ2V+MPDOXBiG/Vh/V8QMEG4t/6KXeRLEpVOdxZXNRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IIadcD+e; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58Q8vqdb029048
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:30:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=fAG+r6LmnpS
	+c29A06CpnJf3DtWoAPxQEN6FpwdQPUk=; b=IIadcD+efjes/6pWru2eTk/72SW
	1cGLaJBrb+fQXJDQXagnW/fzm/VhAWx1EFhqnOFJH4xhLs7VPKe0z/jXlS0xa2fh
	qy3FLInVmB+eCZBLx5fnD/4rNMf+N8NUtPHE+QxclZsiTicyWLpt3How5tVSQba/
	IKugLJMrOJYWo1kssjanQPzQSqs7R5WKAV/TcrX3gwKsNDWRxEyISk6ea0nHUCVl
	VOi7wdN2U90tF3n1+eHNsW19fS+z2u9KsQU9OKi/9XURyVIRTuZj7xGBlSNqs3pc
	I8rtL7yUQIuV0pj0lKQvWG0x/V9PGb8sd/spmWVgoIxvYC2cCObsfqvt8+w==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0q2y6d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:30:50 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-77f2466eeb5so1825199b3a.2
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 06:30:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758893450; x=1759498250;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fAG+r6LmnpS+c29A06CpnJf3DtWoAPxQEN6FpwdQPUk=;
        b=LRGqPj3ycMb07fgPfliFF31Yk1E07Mks2zndYjDlBqlsfjqHgcvXlJOqacRYFo33ur
         3thhSoF5ncszcGLiq7VxVbipDQ8weYEwKTj1j8A1oN/XoMhgmaUkA3TIM9QheCy3Yh5M
         tGEvd9sPVcqLbi68SWkyrTI3FY8urL5PYNeg0TfI1P/VV0xdrq9z3wfsG0hiOeFrm0gg
         doZQxkbj+OcXrqqyu+3G/BOjP6YWvSgaUxHPAZBq4MjPFfsv26QIXBMB6wtznpKKfYyx
         hhm5RtQ9P+agHIQ8MT2wG12hUDdc7QJkHv++i7vKdHn1Ah2pOZfBMoP5NAnqhX6C0w8h
         QqgQ==
X-Forwarded-Encrypted: i=1; AJvYcCVMxz2mbyl16fFfa/nJViRGNypapdPW3LWOtp7ptDaDRXCLko/4gOvjDfIUIKl8kQfBzJIxDmMp1QGc@vger.kernel.org
X-Gm-Message-State: AOJu0YwrVQmU4Z0nTGh3wF6NB5D9f8MNj7DOicsC18ikjXcNxn7ttET+
	gBLyH3ygUOB1bvQYK/7VcY/AVsoVnWtd/tnXR5lq27gTHuo6D50R9zlq4SZezFWKu7BSkP1f9Ls
	IEwcMq29C6WIN2AQ/M5aCBtPmCD29xe3rcv8Koi2LS5R4fJe8M/70pHz22KlnK6Oe
X-Gm-Gg: ASbGnct3XlLRRcWbwkMeiFPwhXNZUkcfxFbEys9+EurwYqZvJ8N82GoDq6uygFV2Vzp
	ZhzzivklLI4BatAqw5D4w9n4vrfnV81SJUsNTES8DebNqjGHeTXIWzUk1Y2aSYU3nNHPP6KByXs
	Nst2vFnn2AQK7RgJl6l95cAVSJNsnV0XFIKC/BbZMHPinm10Zzh4ftXntSYwDVChOGSLvZv4rIV
	o+VG26WOOGV4vlVDKWhZDn5MeEL9TIjLmUWKsGu+ftYSWQLBHLpvA5efw4UoDFviK6jmVjpxaTN
	i4YWkmwkt4DYMbt8Ee6i8QNjHINiaaEQvdpRkGedILHCyfd377QN/a1vtL/+c1S4uWZP7c0uO/P
	H
X-Received: by 2002:a05:6a00:cc6:b0:776:130f:e1a1 with SMTP id d2e1a72fcca58-780fcdf3f22mr7086982b3a.5.1758893449844;
        Fri, 26 Sep 2025 06:30:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEstEY69dbLRQR6at3E+oZw1Mj2XvmB0hm8PJBwooP0qoucokHD6HUCye2J9PIVoBANgGti2w==
X-Received: by 2002:a05:6a00:cc6:b0:776:130f:e1a1 with SMTP id d2e1a72fcca58-780fcdf3f22mr7086938b3a.5.1758893449358;
        Fri, 26 Sep 2025 06:30:49 -0700 (PDT)
Received: from hu-vdadhani-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7810238d321sm4504174b3a.17.2025.09.26.06.30.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 06:30:49 -0700 (PDT)
From: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
To: mkl@pengutronix.de, mani@kernel.org, thomas.kopp@microchip.com,
        mailhol.vincent@wanadoo.fr, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linus.walleij@linaro.org, brgl@bgdev.pl,
        linux-can@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: mukesh.savaliya@oss.qualcomm.com, anup.kulkarni@oss.qualcomm.com,
        Gregor Herburger <gregor.herburger@ew.tq-group.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Subject: [PATCH v5 4/6] can: mcp251xfd: only configure PIN1 when rx_int is set
Date: Fri, 26 Sep 2025 19:00:16 +0530
Message-Id: <20250926133018.3071446-5-viken.dadhaniya@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX0hOTayhFRikT
 +MofHIMjMiIl8PRlf+cB6z+cQo7N3t7RkS1F2MxQs8eA9QHkJ/zyUlfbyJE1IqHPLNHXsmsf/A7
 T0NKLIyJG3B+nDjtCJzslbs0NY8elzQEYLPYSOqVgU2wp6lVgYXPS2eMdt25PpXwN9RCOOLfcGf
 ucjjIG3FSoAhjL8+x/c47Cz1HqVvASLKTfmay+sUEU1yb8mQrTSDjBZAfTGYNO+DfGaQLTIliDv
 6bw40nagqoUU7DxEYFc5Zqu5LASPvphOI3S2y5NndJuiAl2ACKSShGRqd9J08cB7aUWljL9Lgxq
 Pd2O4Nf5btSN82MmMaFVovD5wgExnt3hOrpK4a5QSRBM+VQbSV3OuFlyLD9bRL2HkT1zSJHWk5H
 Yuv6NtpBMKTQT3YfVvB/DEsSzboLxg==
X-Proofpoint-GUID: P-563dx03M1zT7h9SpBfhDbKDe5X--E9
X-Proofpoint-ORIG-GUID: P-563dx03M1zT7h9SpBfhDbKDe5X--E9
X-Authority-Analysis: v=2.4 cv=JsX8bc4C c=1 sm=1 tr=0 ts=68d6958a cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=yJojWOMRYYMA:10 a=8f9FM25-AAAA:8 a=EUspDBNiAAAA:8 a=Zr3td6iJmGh5AMeZqZgA:9
 a=IoOABgeZipijB_acs4fv:22 a=uSNRK0Bqq4PXrUp6LDpb:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_04,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 priorityscore=1501 spamscore=0 malwarescore=0
 lowpriorityscore=0 bulkscore=0 clxscore=1015 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171

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


