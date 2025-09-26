Return-Path: <devicetree+bounces-221891-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E6929BA3E66
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 15:31:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6786A1C050EB
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 13:31:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85E8C2F8BF0;
	Fri, 26 Sep 2025 13:30:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="m/gCVSxJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B96ED2F83A1
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:30:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758893443; cv=none; b=JV8Q4RHWpncbZPeMsyLBV9LU/y1aZIeAKFp2A1rBvSSGqIq+qkAm1Uv6WPCSmtB7vDg0XzSNd+piQ3maJhKGvrymCfaTny7u0SOVELZ2xGLacSArbiTBlrvYbgHS+dHYq8ChvLMbtmoOFE8pAFoGCMtqcL0l0pfdA6rD+TrH4cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758893443; c=relaxed/simple;
	bh=+IOLF0XPvUULiaKZhdl3sSn55zuFmc8DaivaubnewwY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=iOh05nosEx3tkK/QfxZ22NNvnX/kA1rhIQUJaipiHNf8i0C9J34vUFO0EE4LH7YulxtbrvErGsoZxWpO0C3WZYg5QU+4wu1oxR65Llqyk9ljx4nvM7u3oEc0kam7issmQ+LHmabaJoSE8STNBGqJRqfAbjhXw2Eh1aZH25hpEj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=m/gCVSxJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58Q8vqdZ029048
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:30:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=QmS6oCHS+MH
	N39AhLGTMSeGEuEf2T3uv/XWwxaYqPAw=; b=m/gCVSxJp/vkvDWz9f6l6NsLaBp
	w3+bkwbPE1iXtmIXIOb/CyKcHbmhXFdZ+FtlRDT75wFX2YdNzkXRImMlhIBA2/BX
	XvtWn8OBLbpoyah2nsrVCCSNjdomXWYQwol2ObeHLKnGkJM8q1E7wcKFpStIbVUj
	zWPamctQjQcA16xWuGECMvu9VbDCbnwo0iveauX2HAoypNmRK/+cnbEaT39uGxz3
	5M86cCAH9FcBC9RBjqUmOcAr7gXzrUfc9c/QXzgCT3EsvwB2eY+rkusILFoHlZcs
	eF0gGRM8PuIV0o7uij7XO/VsensQAFLwCm5EM0VcU+NyhYnLV4gRhGX7d3w==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0q2y5m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:30:39 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-78104c8c8ddso1718866b3a.2
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 06:30:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758893439; x=1759498239;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QmS6oCHS+MHN39AhLGTMSeGEuEf2T3uv/XWwxaYqPAw=;
        b=h5dmgtVRmpmTtFsEzvgl2Wn5fzHDONi4ldcldh+UZoYaP3MI1sOUhxUcQ3eHlm08vs
         kd8O9L+oEoAma2vRkHRCtd2J+M/YAsTeeiPXJ8w4DeD8XBYQk4w1i9HHj/E20IFlPPGG
         e5oOBOPV6vQovDi2IgkUyPcCYyrAXfajuf4+Y5IKwFcGg6EZbH55emH7eXXgZ/q78gNa
         P/HLNnd3AHMBL2Uc6NsmZfnfj83mqHGtmGSd6mg6BLnQ/vTbknDJ8X0oFr1NI8QBnzIr
         TVoT2r8H4WKhWus+9hOQSm7rmVEedZaqf4Yr5uLR8kHH7egDdzsiNZDZeq12bAichl58
         k+SQ==
X-Forwarded-Encrypted: i=1; AJvYcCWX2KHukSN7END53vHi9Uu31HH0b6lGhNjOLQsfiwMFp/xl11M5w+kEoQQVRcorRIgaW+XL7nYtjLnx@vger.kernel.org
X-Gm-Message-State: AOJu0YxqjhElYvPIpuQvQ+yj6ik9nrnaE73jeHXcHPJ9glLx5mXhVrew
	k/x3R/0taCuxYtIbJvdcW8F/qjJ2qa2qL09zcatI1R6frEtDGFAJ4eCzzgGgnildKxREbv1yitL
	iGDU02GzB4NAfBtPJdW4/pXPriyS4zAv6P+dXEhz3MGuKhcGfFBeLwFc7ZJPw1T9q
X-Gm-Gg: ASbGncuf5ZcT/ivHMCzdjM/Tm54XCt6P0yC1peJD2fF+Q9bU3q/87FRLNCXXJ1EbwFC
	iG6u2cHZtvAXo5JMenZRQBbyTL+xCl2EdCObnxyfsys4wtpwyq03lnOtbWvKbGWBtc9zT2PCSbK
	SUUfXoIsv0xbz8VxbT6zR+0dfGycLyB/NLIdaTuBd7FQ889vG5pEM7c6/hYCQs9R0b9SJ80HV23
	Jdfx54LrcYHaFKNLOeXv+GrKA8uVHXWmy9RT4Zf6AauvEyR5UZb6HKYUU7PHfnxDusjKbhCHQlZ
	LwXA+eQxZzmJj9DF/xEzc1ACGApm+HKctA5eYWhM+59uRzvx4xLhQLyoUlXbAw9hpBBAdAya1JI
	3
X-Received: by 2002:a05:6a00:2d88:b0:781:21db:4e16 with SMTP id d2e1a72fcca58-78121db4f59mr624971b3a.4.1758893438925;
        Fri, 26 Sep 2025 06:30:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHsielPPomP21N2Fqm4F4onXqE5w84lbLbYWd6SPPbSs5v9gEnLj3E/5yVmC9Upkyo6oZ+pXg==
X-Received: by 2002:a05:6a00:2d88:b0:781:21db:4e16 with SMTP id d2e1a72fcca58-78121db4f59mr624916b3a.4.1758893438284;
        Fri, 26 Sep 2025 06:30:38 -0700 (PDT)
Received: from hu-vdadhani-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7810238d321sm4504174b3a.17.2025.09.26.06.30.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 06:30:37 -0700 (PDT)
From: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
To: mkl@pengutronix.de, mani@kernel.org, thomas.kopp@microchip.com,
        mailhol.vincent@wanadoo.fr, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linus.walleij@linaro.org, brgl@bgdev.pl,
        linux-can@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: mukesh.savaliya@oss.qualcomm.com, anup.kulkarni@oss.qualcomm.com,
        Gregor Herburger <gregor.herburger@ew.tq-group.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Subject: [PATCH v5 2/6] can: mcp251xfd: utilize gather_write function for all non-CRC writes
Date: Fri, 26 Sep 2025 19:00:14 +0530
Message-Id: <20250926133018.3071446-3-viken.dadhaniya@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX9keUKVybtgaM
 H6gICvIAX6fmuzEpe8aqBSClATWOwXPOILikYibRMiGyTCzv8lZatEmGJ7eYcm6wcUKwMxHZMk4
 v+zr4motfpHKzSG+0RKPSbihzXpR6RaDL9dn5xrlzRRHgVbqaCgYk9ywu/lZxTWQJbJpA09ZqiE
 qxD7FmRfNPXkfDd7qPX/sEuigHJ4NrRKbLGPOCsKIAM+yKPkvGWuTpqof23oFbXlUug6+0xztpR
 DaeRx6iPepv/nokXI0HCoMmlTACQqdhCZfSz6S+LbjFDv3it8g4uC0FW8q8K4MEaWRidKHIRNoa
 39exHUtnSphGUuU7etcQDZK854l6NcxmRXuikr6p/KYE57mnnuuRiIwvgYz6vQavnjtl6bvTFSr
 lKe5gDuqsOvAvpplqI87JSCxqf1hEg==
X-Proofpoint-GUID: Ag03kCbN8RSDnslfVyD2o3G-yebTDr9w
X-Proofpoint-ORIG-GUID: Ag03kCbN8RSDnslfVyD2o3G-yebTDr9w
X-Authority-Analysis: v=2.4 cv=JsX8bc4C c=1 sm=1 tr=0 ts=68d6957f cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=yJojWOMRYYMA:10 a=8f9FM25-AAAA:8 a=EUspDBNiAAAA:8 a=lCqp9tVl3zhOgjhhuWQA:9
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

This is a preparation patch to add errata workaround for non crc writes.

Currently for non-crc writes to the chip can go through the
.gather_write, .write or the reg_update_bits callback.

To allow the addition of the errata fix at a single location use
mcp251xfd_regmap_nocrc_gather_write for all non-CRC write instructions,
similar to the crc regmap.

Signed-off-by: Gregor Herburger <gregor.herburger@ew.tq-group.com>
Tested-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Signed-off-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
---
 .../net/can/spi/mcp251xfd/mcp251xfd-regmap.c  | 25 ++++++++++---------
 1 file changed, 13 insertions(+), 12 deletions(-)

diff --git a/drivers/net/can/spi/mcp251xfd/mcp251xfd-regmap.c b/drivers/net/can/spi/mcp251xfd/mcp251xfd-regmap.c
index 8c5be8d1c519..e61cbd209955 100644
--- a/drivers/net/can/spi/mcp251xfd/mcp251xfd-regmap.c
+++ b/drivers/net/can/spi/mcp251xfd/mcp251xfd-regmap.c
@@ -12,14 +12,6 @@
 
 static const struct regmap_config mcp251xfd_regmap_crc;
 
-static int
-mcp251xfd_regmap_nocrc_write(void *context, const void *data, size_t count)
-{
-	struct spi_device *spi = context;
-
-	return spi_write(spi, data, count);
-}
-
 static int
 mcp251xfd_regmap_nocrc_gather_write(void *context,
 				    const void *reg, size_t reg_len,
@@ -47,6 +39,15 @@ mcp251xfd_regmap_nocrc_gather_write(void *context,
 	return spi_sync_transfer(spi, xfer, ARRAY_SIZE(xfer));
 }
 
+static int
+mcp251xfd_regmap_nocrc_write(void *context, const void *data, size_t count)
+{
+	const size_t data_offset = sizeof(__be16);
+
+	return mcp251xfd_regmap_nocrc_gather_write(context, data, data_offset,
+						   data + data_offset, count - data_offset);
+}
+
 static inline bool
 mcp251xfd_update_bits_read_reg(const struct mcp251xfd_priv *priv,
 			       unsigned int reg)
@@ -64,6 +65,7 @@ mcp251xfd_update_bits_read_reg(const struct mcp251xfd_priv *priv,
 	case MCP251XFD_REG_CON:
 	case MCP251XFD_REG_OSC:
 	case MCP251XFD_REG_ECCCON:
+	case MCP251XFD_REG_IOCON:
 		return true;
 	default:
 		mcp251xfd_for_each_rx_ring(priv, ring, n) {
@@ -139,10 +141,9 @@ mcp251xfd_regmap_nocrc_update_bits(void *context, unsigned int reg,
 	tmp_le32 = orig_le32 & ~mask_le32;
 	tmp_le32 |= val_le32 & mask_le32;
 
-	mcp251xfd_spi_cmd_write_nocrc(&buf_tx->cmd, reg + first_byte);
-	memcpy(buf_tx->data, &tmp_le32, len);
-
-	return spi_write(spi, buf_tx, sizeof(buf_tx->cmd) + len);
+	reg += first_byte;
+	mcp251xfd_spi_cmd_write_nocrc(&buf_tx->cmd, reg);
+	return mcp251xfd_regmap_nocrc_gather_write(context, &buf_tx->cmd, 2, &tmp_le32, len);
 }
 
 static int
-- 
2.34.1


