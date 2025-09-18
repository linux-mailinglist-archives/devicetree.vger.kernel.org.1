Return-Path: <devicetree+bounces-218699-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0231EB83361
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 08:51:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EFFE46224FF
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 06:51:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 206CD2EA179;
	Thu, 18 Sep 2025 06:49:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="d9BfRA69"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77E772E7621
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 06:49:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758178181; cv=none; b=OfFtH1lJRV5W/DAWQb8DT8p0Faa7hine05geR/Ho7sSKLIrtirL3JE6u1Yvl7YYt/Mkh1wGF5Y/Jp2+bTqSog9hsGuM5j9DdNegyOYieo1Mt0NAuOR3LWH7A2R+KL9BffRJi9EJ9g+5HfiJpZXyMGAK5Al9Q/vzeJppRGt6U7pU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758178181; c=relaxed/simple;
	bh=fk0TNQn7BAcvjE7TYECp7NGF/xF5QIeAzGhAHgip9EU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Sk5YU8w0fkhtpnwSo/tk3KfeYvglCn1RyHRdt7A+kNAaxltU/NMe4tj2nzzt+MXC4uU8Ns56mU83yBVPajib9k8BW5pSm8PFYie4qNgA/oYWLWL8sJlgz/rhazMWnozmh3SB7AZ5eNQOrqAP7iaDnKMX2oqA/J7LWzhrxl6CSGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=d9BfRA69; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58I3fIKM021417
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 06:49:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=fAG+r6LmnpS
	+c29A06CpnJf3DtWoAPxQEN6FpwdQPUk=; b=d9BfRA692SB+8TNxXbttaf9BHiN
	ZUUVcpCjH8U+uRDEsNOuw1hcbZYKGBuI1OX5rTeo+/nRAq8+A+h1z41HQaKdZMgX
	W4XaLwXuKNGKL4wd+adRS9jzZqImRNWVRnzlHRQ5Qt1fJ+bO/3XdbKQOzgfNmSsc
	DPxVl5yR/QiJ0m7blSCRD8bjS6p+XHpQGhPItGIB68TAeKZ7nk6+o4rUqeKKGtM0
	AUlfNywzxCxxs/uCNcZ6pWYDU3b5eXZ8BaIsOA0xuNezpisovgz1DAO+yuN5yLrH
	cGlZgVMMi/bj6P8d/FMEDfd1F2mJmC3BMNNf8WSF2HXvo//D9deYeVro2Tw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fy5d91m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 06:49:36 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7761dd1c845so712227b3a.0
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 23:49:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758178175; x=1758782975;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fAG+r6LmnpS+c29A06CpnJf3DtWoAPxQEN6FpwdQPUk=;
        b=DxFyjgIpK6UNFU9XY7PqyTx8+Hl0PSou/C2Ikpj3SmFtC00ZmLP5rkLBy/Yl8S2zYK
         16AOp9XWx2N4OmwljOUc3cKo4eepv7GoSOTkh0zZm3DX4HbwxmROI+bjnipUPisJXeaq
         Uo5OaL4RBdr5OeZA+AtoqEPCdhzU4dLNI+dCkvSrfaB/XYLk5WVrlSUBwRmRAjm4miDU
         RyrGb1poS1hbOR8m3p8umWnIkKZtPYyMFlAkFOWOwzgn0QZRr52Snho4hgEOekcqNIxq
         qeS/IgadTN6x33UYQeWfHHiReZO3LSICZrxvU0mLWACmgXlTtM5KE1lOuKwlVCeHEVwT
         YOMw==
X-Forwarded-Encrypted: i=1; AJvYcCVoiEwDLyUF3DWJRMP0PZUoELCDmiENec77VmvdPQhqcH42zPGet7vRFAcCW3Mlb2REaQ+j4I/ryLwJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yxlu+aZviypntg9m5HeODn7xFfHdWw80Pgs0hWnIHvnQqdxcqOV
	faKdYog4KII36t3cmlCOlErA1Ey24KXoDzBkotPDj1N7bos0jV4arshr4jMrnSKkA+F58Fndm+3
	nNEJ930gsU4R6dYhKUbdKT2+5RjcI80RjIWWwSl3DbdBci47Ch4yRKBfD/NUAutGz
X-Gm-Gg: ASbGncvsXDq2OA0o8vj/ZTc/LrWqbUITYEpo94my6ELo17l+5onP7+yQNvek6kyi6+j
	irZ09Yyd3+f+ksYgIe0bpLBgxG3V1RYV9EbpdSoEV+hr1qh9xrRA18bbr1WSGtHMSBPEROMdofv
	e4p3KN8lo2ExUTKyeYpUWEUUMGmB/HLbfDGnMGGvkjKehYhIm3Eq6SYXL0JT2q/mjygrSacjyxx
	M7VcNyegnQIAnUBLNBuaSK5goPg9mnZtMP0rhL1umnjUzqKwxQi2ve7p+/DuDq6Pp/9KQQFea18
	Ze3imZ5VuVoZjgA1B7UQJ4sNJR8VvfKGTZmScxjiY1mPucrVKs7eBD6p+te83BSnTLcMpUFt52h
	e
X-Received: by 2002:a05:6a21:339f:b0:262:c083:bb3a with SMTP id adf61e73a8af0-27aacc777ddmr7314911637.60.1758178175027;
        Wed, 17 Sep 2025 23:49:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFwmQHzJp7VE8ev7s4YG3cL5g9fuuOf9VLXesHRyVN7cCsWP8urp7NG7z6HzTDcRNqhM1WC+A==
X-Received: by 2002:a05:6a21:339f:b0:262:c083:bb3a with SMTP id adf61e73a8af0-27aacc777ddmr7314870637.60.1758178174617;
        Wed, 17 Sep 2025 23:49:34 -0700 (PDT)
Received: from hu-vdadhani-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77cff22bdb5sm1356789b3a.94.2025.09.17.23.49.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Sep 2025 23:49:34 -0700 (PDT)
From: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
To: mkl@pengutronix.de, mani@kernel.org, thomas.kopp@microchip.com,
        mailhol.vincent@wanadoo.fr, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linus.walleij@linaro.org, brgl@bgdev.pl,
        linux-can@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: mukesh.savaliya@oss.qualcomm.com, anup.kulkarni@oss.qualcomm.com,
        Gregor Herburger <gregor.herburger@ew.tq-group.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Subject: [PATCH v4 4/6] can: mcp251xfd: only configure PIN1 when rx_int is set
Date: Thu, 18 Sep 2025 12:19:01 +0530
Message-Id: <20250918064903.241372-5-viken.dadhaniya@oss.qualcomm.com>
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
X-Proofpoint-GUID: j8xOVpk7fqxAmfafmrrc6P8hPfUJ9ED1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX6OHS6ccxPKtB
 Y2jkRRiBdplSC7Mt/mZjlYuw3nFyfVcWaCNyrXfkrOp56G/BqZRW2zfp+Y8cQP1nx6lArb5HNM6
 Vd9EBVQgfOKqiqZoKJOsRyCw7eXIwCZ1aB64EM4ImGcV7P0h0pvvcN0oWozBFQsLA8i0yhaRKDH
 QaH/ooFCwSYDjJrm61nWYVUel/mVw5nxtL99xBLOmG5A/iNhNA9Ue/3dR1mhetKGK/bhX9Q5UH3
 OafgXZOOYH0H54iLg2m3pXUUHObFcnLdUadlp+ARybhvY2bePiRwuOZyQNPPapXFve/y6cGubNd
 vWBt7wDrgQtP8WhamKL3xzItkK/MFhM4n24QlGRZQjqUaTBrBmSxQbHFa51+Zx4AUdV+9nAB9M3
 IXBRrmSe
X-Authority-Analysis: v=2.4 cv=Y+f4sgeN c=1 sm=1 tr=0 ts=68cbab80 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=yJojWOMRYYMA:10 a=8f9FM25-AAAA:8 a=EUspDBNiAAAA:8 a=Zr3td6iJmGh5AMeZqZgA:9
 a=IoOABgeZipijB_acs4fv:22 a=uSNRK0Bqq4PXrUp6LDpb:22
X-Proofpoint-ORIG-GUID: j8xOVpk7fqxAmfafmrrc6P8hPfUJ9ED1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-18_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 impostorscore=0 phishscore=0 adultscore=0
 malwarescore=0 bulkscore=0 spamscore=0 clxscore=1015 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509160202

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


