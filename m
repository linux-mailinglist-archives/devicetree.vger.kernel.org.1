Return-Path: <devicetree+bounces-207866-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BFC57B31077
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 09:29:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7AE7C3B60C8
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 07:29:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D8EB2EBDCE;
	Fri, 22 Aug 2025 07:27:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CaAkutKP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBA2E2EBB9E
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 07:27:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755847662; cv=none; b=qC/jYZpN7XBPAYiLzZ137bItFnSR1GySTS3U2mvS6RkFPbmZNvwkbo3vVA3zmiLJJ3DrmzGkr08ns+OIy1pf9DsRNtvbkh1Lv8Ok8eAFDBE3GBfzMZeUK9Gt+wOq5qJkqVSACZaJQxgcIEovYIgS0832RgLGs9YbnHodzD169js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755847662; c=relaxed/simple;
	bh=QyI6bFDxZoyMF95D5V/6e1rqQcfodiAaR9+oVqkuc44=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=MN9W8EAfeV8wjPms8TMz34fkpNzvXywqgx6bLShynsIyM/8GQud+2zVHMZrjS3XVFcPx4SMyLXNS4IdgEfus17PGafVjm+SHSR76miFbnA6DcUWCL3p/Ru8BLh/iL9f89bwKTjyBCmeHdnJYXtrHDV3oUokhSpFshZK3gIidtT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CaAkutKP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57M6ueUY012285
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 07:27:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=V+9lRsyxK8p
	0Zh05DSjub85tnlLxGuoGq/Hwap1kFCE=; b=CaAkutKPf6Wk+Q7o8qAzO8DtHeO
	k0hawMlREkOlPJFLZAbPStRHCfL6la0a1CY1grUMuwosXXR6IKXgxS/Q7YRPgcX8
	igPw3+8xd8S3gy101oBGsSVl0PcPKtkrfOqxvhUtcYqzfz5n0Q7A5nvstS1k9bKO
	vOODo/eGcRggnyNa/nkC6pSb7L69PU7OeC7Mj55Si76H8vDMfUr1BS9XgoWhF8Cc
	lkfe2yw0svGInYzqhuojwfNyqJHSIi1/bX41n4HZXm61qp5lg9IaQqbqr2WlgdZ1
	UO9hPWMP3OeNjWvXRR0wIXuN4/UDDxWj120eTaGbRF6UtP98uKHLA6+ADlA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ngt8e1u1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 07:27:37 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-77031d4636aso518462b3a.1
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 00:27:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755847656; x=1756452456;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V+9lRsyxK8p0Zh05DSjub85tnlLxGuoGq/Hwap1kFCE=;
        b=TsP3yGYaGz+sSiVMzj71sWtDW7CplBwBTYHF4rEipYtBWlsPmbs1O7ick4iP1k2YD8
         v1fT66uAAWhtzDm0/a4fOehxW0QD+0tg6Ipe9WTVv7JhcwlH2efuMBeD5yLmPHOun/Ow
         sPmanNDSDfB+Ip6op2hRihr0jK0req3cTqEUttQA1DujkY9jLlbh8MkmxGpoGwt5C3qQ
         01lZXz0Hsdp4GvlzXQoO1rRJUEVpQn15fqGCcufrPwQHCiT9X5eJcb+1PFPIxFjoip9B
         fIdyp21/Biz0JLcT9Q/G/gDOU+bApuT8c6eP1lyo4NCXdgpQUWVB5V3KFaHFTkmr5rJO
         wQIA==
X-Forwarded-Encrypted: i=1; AJvYcCULW9Ssvug90QJtLzLQgXRtghwBlyvBcTL6l2WlHD6eqy9ZbTescijm58zFooOj0t5rsS6pk2TP80X4@vger.kernel.org
X-Gm-Message-State: AOJu0YzCuoHwVQiTm+vDI+kp1y+TEaQ0rrp4shvHMo/8EUEeT4beYsVr
	/CCSVRrBUXsXCGxkdiLU7YoUvcISGmSnWzcUxzUpijEg4zMqKAvVFEkEFX0gto92imOtdTLdFHX
	WEmFB7m83TS0R4LY/gxdhjUJD9xqNlBXe7Sm7pPDPzJGtm4qJ1q+qTwwB8xNYf/HE
X-Gm-Gg: ASbGncv0fOydVIYze03e/b3BMQYqEaKCacisHZDhIUh3s1zlYUzkPQY8bZq6SPStUhJ
	Ed64EzvZYZFItyu42O84xvzBX1bED9/Lfc++D1XAVBR9rE0X9Jp1M6M5bgbvVHZS3VAiZuJAuy0
	nRB41P9e5zGkZjbHF8/VW/OixzfryaOCkx0gVtrwfYtL3AY1vz9o+EJXF06wE75dkDdzmMZuhLX
	WxUkXJU8jGBk39Ot11xcFIN3wkjICnY+Pbf7qgNatAtYcQBtaEceTxqaeBLIvuXH44Ph7l/PeUe
	B6ekBqQUXMUJoykw/KHMVSOXVhZ+qwJvIHjCMfVWziGe1T4bCelGN8CiOvdGLnERdxjMpGtuyyA
	n
X-Received: by 2002:a05:6a20:7343:b0:235:2395:9b79 with SMTP id adf61e73a8af0-243302c9601mr6496557637.20.1755847656287;
        Fri, 22 Aug 2025 00:27:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFTehOos9qkAI5xl9S59zDtQOUhKhsUAUuyv1YxEMjXQtaSCQOWWRMW2hZ4CBYNuyVGH4npwA==
X-Received: by 2002:a05:6a20:7343:b0:235:2395:9b79 with SMTP id adf61e73a8af0-243302c9601mr6496529637.20.1755847655785;
        Fri, 22 Aug 2025 00:27:35 -0700 (PDT)
Received: from hu-vdadhani-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b4763fe3047sm6416367a12.17.2025.08.22.00.27.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 00:27:35 -0700 (PDT)
From: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
To: andi.shyti@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, gregkh@linuxfoundation.org, jirislaby@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, broonie@kernel.org,
        johan+linaro@kernel.org, dianders@chromium.org, agross@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-serial@vger.kernel.org, linux-spi@vger.kernel.org
Cc: mukesh.savaliya@oss.qualcomm.com,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Subject: [PATCH v6 6/6] serial: qcom-geni: Load UART qup Firmware from linux side
Date: Fri, 22 Aug 2025 12:56:51 +0530
Message-Id: <20250822072651.510027-7-viken.dadhaniya@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250822072651.510027-1-viken.dadhaniya@oss.qualcomm.com>
References: <20250822072651.510027-1-viken.dadhaniya@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDEzNCBTYWx0ZWRfX+lcCtZ6yP4P4
 f6qMo8Ogp7DdpQkrzm6MQrzyc619cFJsvCVyGyZiW9YZY3Dt1AaSKUWuIgotdupHNpLquB4z0+6
 Kbk0ADNeW0GyOTFhUQOR/IJaa8c07G/AdeLu6HDeW3uFftopiJ9OCzTA7MGLF1+52foykcoK0Ng
 R9y7iPeqM4Yau/GNDJP0Hx1qnwLQihJOcATeRuMk9dCpLevir7V7Dxqxol403aTpDKDioq+K+1n
 GOh0OnfTr4dpybytvJVcLjKhpISd8pMp00B2VUDhYqh2N1EVXH8+dUsj0J2mDZxfi6SphpwMjfk
 22X+GgXXb5/TFu4g7KUSevI0McKD8gBrWDqX15XAcHXI/YWdUWQtrS3mEzGYuvoo0tTPe8ek9My
 ScAsaDVTbjTSzzS0yw0d3ubTue/v5Q==
X-Authority-Analysis: v=2.4 cv=c/fygR9l c=1 sm=1 tr=0 ts=68a81be9 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=zIdmu9zckVospZd7ahEA:9 a=OpyuDcXvxspvyRM73sMx:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: CUyPcSBAL831sDqEX9cl4gyf1ZpH2zbd
X-Proofpoint-ORIG-GUID: CUyPcSBAL831sDqEX9cl4gyf1ZpH2zbd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_02,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 priorityscore=1501 bulkscore=0 lowpriorityscore=0
 phishscore=0 spamscore=0 impostorscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200134

Add provision to load firmware of Serial engine for UART protocol from
Linux Execution Environment on running on APPS processor.

Co-developed-by: Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>
Signed-off-by: Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>
Signed-off-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
---
Dependencies:

This patch depends on patch 3 of this series.

v5 -> v6:

- No change.

v5 Link: https://lore.kernel.org/linux-i2c/20250624095102.1587580-6-viken.dadhaniya@oss.qualcomm.com/

v4 -> v5:

- Updated the email domain from 'quic' to 'oss'.

v4 Link: https://lore.kernel.org/all/20250503111029.3583807-6-quic_vdadhani@quicinc.com/

v3 -> v4:

- Add a patch dependency note.

v3 Link: https://lore.kernel.org/linux-arm-msm/20250303124349.3474185-10-quic_vdadhani@quicinc.com/

v2 -> v3:

- Load firmware only if the protocol is invalid.

v2 Link: https://lore.kernel.org/linux-arm-msm/20250124105309.295769-9-quic_vdadhani@quicinc.com/

v1 -> v2:

- No change.

v1 Link: https://lore.kernel.org/linux-arm-msm/20241204150326.1470749-8-quic_vdadhani@quicinc.com/
---
---
 drivers/tty/serial/qcom_geni_serial.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/tty/serial/qcom_geni_serial.c b/drivers/tty/serial/qcom_geni_serial.c
index 9c7b1cea7cfe..eba225be9b38 100644
--- a/drivers/tty/serial/qcom_geni_serial.c
+++ b/drivers/tty/serial/qcom_geni_serial.c
@@ -1179,7 +1179,13 @@ static int qcom_geni_serial_port_setup(struct uart_port *uport)
 	int ret;
 
 	proto = geni_se_read_proto(&port->se);
-	if (proto != GENI_SE_UART) {
+	if (proto == GENI_SE_INVALID_PROTO) {
+		ret = geni_load_se_firmware(&port->se, GENI_SE_UART);
+		if (ret) {
+			dev_err(uport->dev, "UART firmware load failed ret: %d\n", ret);
+			return ret;
+		}
+	} else if (proto != GENI_SE_UART) {
 		dev_err(uport->dev, "Invalid FW loaded, proto: %d\n", proto);
 		return -ENXIO;
 	}
-- 
2.34.1


