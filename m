Return-Path: <devicetree+bounces-218694-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E446DB83325
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 08:50:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A920672248B
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 06:49:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FD0A2E5400;
	Thu, 18 Sep 2025 06:49:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="A3XYrLCV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9604E2E4247
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 06:49:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758178168; cv=none; b=OfwhkwSr9pdMrJIfaroUYHk/7zZohk+faR7ZKlomnsxW5Psz4KszHeU4O0Rbq9k+YhsFL3ZOtD31N1U3v4BrKpIVvjQwiiUEco9KAqJ9ad5KsnpX/Pv7AOpIkV52y57lMlQvrVUx5dLNGdwvf6ZIqnSOUFJ5+f+D8KsUw63Q10A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758178168; c=relaxed/simple;
	bh=+IOLF0XPvUULiaKZhdl3sSn55zuFmc8DaivaubnewwY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=qgVZeDucU+uaScNGnPuHuRfB25bGCGCyAGMaPaczYe4uH+gCqLCuZ9qVYzMeG12WtHGwgVsutr5i1KTsIA+6RqYdYvsNXyUPFE+DGeVHp0elv6qhj0sRsnMdsWNMbdwcXTQzd6a9QbKoiZsGUxb6E5pEmW9PESdkqSyl49hQxLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=A3XYrLCV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58I6eRET027113
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 06:49:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=QmS6oCHS+MH
	N39AhLGTMSeGEuEf2T3uv/XWwxaYqPAw=; b=A3XYrLCVG+VL82KO7BbccmXUYH5
	b43GANxPmYdJhedIxu18nrKLC5d60hAJwdhFZjYNGxqiH7YM6CH/h5eYu9CEsrqc
	IC3Xs7DAMydACTSVQYnJ2YfRFe7heeGuOGIb2tEH8yhNcwGBgUPUurMx0MTzqojt
	Cv7Giieya2wzlWQfLsCLWddaKZ6A8538jxQAXxIifl/XK9q6iHaOj6LCcm2jJvD1
	jmZ2RpyslYLpRuJu2GRm9ufXb0UjW0Dr+DZCALFSBzuQHUA0hrBPw/PIRaOM8pK+
	EGT/P/S45SlIUSemKLuKwh/s7/7XGFWgtaOwE/HmzifRD4FvYVqIu3+HhXA==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497v1jb7bx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 06:49:25 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-777d7c52cc3so1097056b3a.2
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 23:49:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758178164; x=1758782964;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QmS6oCHS+MHN39AhLGTMSeGEuEf2T3uv/XWwxaYqPAw=;
        b=Z5X8NPuyVzjAJRMb7aE/vY0Eq3HbBQOpOMQbk9QwfGw8WFzmdb1wshnzo5CwFdm1M/
         EL5QL5OBo+kvganHxjpVkPSXbyDAS5vqDXxRtiqZy4msrpMhQdp5w+3BJuw0t0PWcNS8
         dfvLay5kV6JdngxrucWzxDNZYAEk/Bz8Ad5oOBpHbJM5PTNH9J15Yfzin9+MFpozhXZ+
         xYRO8606p7QG9i8Tgj0o7N5iigrC+sK8upKi5NLEGQuAbe9pMwQyv4DnZE7yrDw1oP8/
         k5oEUmvbghPRTyhCSKo+yM0ZUWzLNYEO+Is5ihz4F2c05Bu9cfpj9G2MlTbO7MXKBpPI
         +Xvg==
X-Forwarded-Encrypted: i=1; AJvYcCXIHNY8fD7y1w/W62reaD+dhrmNul4ZQp2dXk0ir8/QQXlzZYToBc1bAnGMeMSDRmFG0fdZFvliVwzp@vger.kernel.org
X-Gm-Message-State: AOJu0YzNdDpCWk01aKS+gb2zb/GVvdHMv0nt7V/oSSuz5q9NvYvUcJGm
	YAiJ8aV6NXhRPLh63z0fiffsytVOeVA31YsEla66yPwhnzIcwFJtcPp3/9LekshsfN0jwoDRw6l
	pOSMYYdCo9359SqmQuWrw8YpiBq3UBjNrqubrvDlaLVTFXwMm3cObc1rcAayYkPqQ
X-Gm-Gg: ASbGncuCOBA6aVwoB/X0xtsQgRqbWuUMZH2LW/SArPlj1obJ0PcsDxmWCENlzFy9rJk
	7kefjz3vqFQYWZb8VAJP51I6MFfT5I5Pni/2hDzMqWuynYDgxCpdqYWIDyF370ajMba+Ve7TwhK
	jU0y5aLUcMDRFMFY3jWXsaOtHPo1Q26ELW/in8SE+0IU+a2VzEXAH2uKZA/3qIYVxQznP8jEjiw
	xBpAWG0e5J71YgxHYFn73/aN7spG9Ck829kkLA84PtUouz4jz3rgg3yrRY+V30Oz3flriqd6ipp
	Jf4tBP0bYs5VXypn9+bz4KS2sC6xQjjecp33QPpEGwVjScSpkLkm6sb4lT9iRFS7hqJ05v8V7xD
	K
X-Received: by 2002:a05:6a00:18a2:b0:776:2e3:a95b with SMTP id d2e1a72fcca58-77bf72cb98cmr5744827b3a.1.1758178164099;
        Wed, 17 Sep 2025 23:49:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEGukSBl0fOY+Q+OdY68Z3vITk6rVt7kdWoKiAb3EkNyvnFx81Fn4rVDEc00foqitvN18kvpw==
X-Received: by 2002:a05:6a00:18a2:b0:776:2e3:a95b with SMTP id d2e1a72fcca58-77bf72cb98cmr5744803b3a.1.1758178163666;
        Wed, 17 Sep 2025 23:49:23 -0700 (PDT)
Received: from hu-vdadhani-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77cff22bdb5sm1356789b3a.94.2025.09.17.23.49.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Sep 2025 23:49:23 -0700 (PDT)
From: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
To: mkl@pengutronix.de, mani@kernel.org, thomas.kopp@microchip.com,
        mailhol.vincent@wanadoo.fr, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linus.walleij@linaro.org, brgl@bgdev.pl,
        linux-can@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: mukesh.savaliya@oss.qualcomm.com, anup.kulkarni@oss.qualcomm.com,
        Gregor Herburger <gregor.herburger@ew.tq-group.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Subject: [PATCH v4 2/6] can: mcp251xfd: utilize gather_write function for all non-CRC writes
Date: Thu, 18 Sep 2025 12:18:59 +0530
Message-Id: <20250918064903.241372-3-viken.dadhaniya@oss.qualcomm.com>
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
X-Proofpoint-ORIG-GUID: 7KaUR_ybhhGizhZEgxFdijvE73NGolg7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE3MDExMCBTYWx0ZWRfX0eaRByLNutAt
 IK/1bOjeyfvzgjAhsX9VNSBmppBAYo9aQ4tz8xJhJjPCaOn9h4MdzwdHqpdAY4srNEHf+zg7gEP
 lkqoO+3eEoL8ElXI1s0HBnzAP5VO8+LyGNbCxWstrVNg4uYOceulkxn87ItgVrmjadT32xG3oQQ
 E9DAs8v//eF9EBYfBXKuHX4z1cO+272afF9WKz5ZxZ+AFBIgISbIKy0Hxqx+U3GqKKxSpxbqIPV
 QzwuL0OPEdAdSu3I2LpdK/jhGOXpdgh31sVmnCIJngEDa6/s18fJCEZtI03+Y4rRZK/l2laoj6K
 yjZnb4SlMqm517M8m7rMd3Lffunh8ZhB05ikL5JjEArKLVLkrGwwexsmEyHysiCtC8zMpYvYnUk
 T+93wTbQ
X-Authority-Analysis: v=2.4 cv=AeqxH2XG c=1 sm=1 tr=0 ts=68cbab75 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=yJojWOMRYYMA:10 a=8f9FM25-AAAA:8 a=EUspDBNiAAAA:8 a=lCqp9tVl3zhOgjhhuWQA:9
 a=IoOABgeZipijB_acs4fv:22 a=uSNRK0Bqq4PXrUp6LDpb:22
X-Proofpoint-GUID: 7KaUR_ybhhGizhZEgxFdijvE73NGolg7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-18_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 phishscore=0 suspectscore=0 adultscore=0
 impostorscore=0 priorityscore=1501 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509170110

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


