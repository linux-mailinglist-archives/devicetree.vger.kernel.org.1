Return-Path: <devicetree+bounces-263468-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eH5YEEIphmmuKAQAu9opvQ
	(envelope-from <devicetree+bounces-263468-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 18:47:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 928BA101611
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 18:47:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C819430AB58B
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 17:42:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D47C4219E8;
	Fri,  6 Feb 2026 17:42:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XROZyVqL";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ACyaXTx+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF93E38F92C
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 17:42:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770399751; cv=none; b=q67Y5EzBsZGT4XdtN+80iv6ub5J+HaY4ZReQ/X/0OjSb+q1VZeZlpxSj6qdklr+R12lYafydFkfRET4wkbk0aRMu5g7QOlycK9w6pAdDmOYYzeZQT01bVH9+4B0kNMzUzRujoH5NY2Et7ZTrNgXi0mPQHdFUtwqoz8w/JeTP4I4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770399751; c=relaxed/simple;
	bh=sDUm9Xydq3403YULfrfZBE49cHQPZ/UiIqAzox6BoBM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=jI2Wj8eLDdImRmH8qJHrUGlCxqgDspUk4jJFTIJ0uiAbx6JSBjeFaOemeVgDiYwgN7Vr0MRuA2DTHbenUEPE/wOQ8PvsA4hihXpfDnLeJflc3jXe0z1FhPgHKYpejPa9ZD/aW5XS/9idlx/1FIQAtRh4JFwxkHzN0OCmgjEfUeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XROZyVqL; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ACyaXTx+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 616FhmJh4042041
	for <devicetree@vger.kernel.org>; Fri, 6 Feb 2026 17:42:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=tZXS0ryzuuo
	eAsGptKjaEuILlyf9UBevXtHQPKJSvt0=; b=XROZyVqL1eptJRLEbnARPhaaDnf
	K/v1rAvMmyLNf3aqjL6bw52BgkXPuZN7hGUslnUDC48+gOlj6pyJz9yZ2csjrwFd
	ksbJk7KZJCGulaakadajhvxXTiJDUhD84404hacNA1XjCdJVAn8pF4+xGu841V1L
	8YjUsV1FGHSHrRVb01Blqc3kAU1JfwQAJIcPbn1BnImSSGdk4pLpBluNMLFrIyiU
	7ZJB6GvcwH48lLH3vm3BsfGY4UaVfjeOcLwomri4yAuZ0ivQVZlAVRPnAvFJigRM
	RDraEyTfw1mt0yFGeTcDS4bebMDgpj/zMmsFjado+2xODIN7ha5vavwuq9A==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5c2w1u56-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 17:42:30 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-c617e59845dso1388835a12.1
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 09:42:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770399749; x=1771004549; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tZXS0ryzuuoeAsGptKjaEuILlyf9UBevXtHQPKJSvt0=;
        b=ACyaXTx+8uDH5Xno5c9MTO7ycl6zb5gk6yQ4coU/WkqqhhqLSwTpYvVVg0zexXLlqX
         pW8XNIqXZ2pHYKpNM6Pri8pta90Hx15gdAwFwn+naqo32TpoR44UYXlQgen6qQ5QRbj1
         +52QO8va5T3ODQf6zRY2Bzxdwsh8GXrhZsJYJL4Y/0/LXt2YPiQy93OTVM1GC2lx0qzn
         8gHP+COZ/x1hTB6EMFlOQ63TycsZFr3vT5MtQqgSu4BIzK1nlmITfaADNlg7zqxvQwru
         vMA6JhWOVb64wPFIcLekTcIgh79qoNARsRye40B8ViwUoSh2kWQkTbAxe9O6E2/DblA3
         DD3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770399749; x=1771004549;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tZXS0ryzuuoeAsGptKjaEuILlyf9UBevXtHQPKJSvt0=;
        b=M6gGzouVTpKaxRKapNgyeq4h6QUkSsB96h57WRzEfw+bFdAg6kO0SYMfZF+mbf61FZ
         FLnBfzzi9dfwr508WLVGgl2uqIc9FF7EYs+Pe5ZBaBu3At2MQa0S/B9bJU6fxsLED2Jz
         dxYKUvhJs8JU/aRXE7FOSeOYPlw5ZfMxuvzJl5YVhqEc1WHtHaLTTOFmqipc4sXo5v7M
         0oEm7FAMwKGVl6WCOE8taY5ZMG9G20QJXXINI2Yk64w/jVVZxE0y5zkbptnPaGvl9WtQ
         GPIeaGz/8Sx0ETbyc1XnK0+uCWYOq6qZ5Cyys0t6W2k4ARYIwrnGaKvJ7YTMBdShvjq5
         7KBA==
X-Forwarded-Encrypted: i=1; AJvYcCXoyakDymr0GIXN4UvJ3W/tK++TeCx2HjdJuOR4a25dGVmSi2YT7cZp7ZNgCk0/Ym7OmJ3Err5ibLLT@vger.kernel.org
X-Gm-Message-State: AOJu0YzfK78V6FCjIKo6G8Bfd2Bk2f2XknDuQ7hntBOHv6Jwfs8pjbFL
	KG0141ONBU/KbLp5b5G+r3Pccra6AFvvBpRu9MGbozwb103mYmyTNSbvafx0m3i+8/X5TBL4RNb
	0A+ORn1Xz/yvrKURInNbfpeoUDdZAE42HexZV3g9OU3zRmjGKRIKOGjJdQvNW1uFi
X-Gm-Gg: AZuq6aLM6GaSG5kQnn+pjSGkBfArkmMLVadcDQH9q4K2awMsi2UZYmM6FIr1N1S4Hsl
	9nZhzAQpHiRsxQqAjQfPDSyQ+nAiQfssWFRxKSodAi+sNU15eoJEjNMFIlJwafqtjDeUpBNt9kr
	K2E0icx7vZ091HawDYw90Og9LacUySjHq57qDOANOJCMY7sagng5inpx5J08eeeQMR1bQdDa8TW
	Z8ogFoXnfaHjU75Gy0WMj3FylG1N3oFeviX2G559tlXcPwJVM/X5BOt391f6CUUlljCl+N2MJri
	b7l/BaKcMpfimorpZ4+NUb6Srw0PHmKt+iIq0dnxkiTqfU5RuL90OcNDeBIzzyUkUXESzBzpUk8
	v5NAboJGrAlgYdQ6o8oBivb6P89BxfBR3Uypxr3HCEtU=
X-Received: by 2002:a05:6a20:d12f:b0:393:c4d:be50 with SMTP id adf61e73a8af0-393acfb104fmr3213264637.16.1770399749513;
        Fri, 06 Feb 2026 09:42:29 -0800 (PST)
X-Received: by 2002:a05:6a20:d12f:b0:393:c4d:be50 with SMTP id adf61e73a8af0-393acfb104fmr3213243637.16.1770399748923;
        Fri, 06 Feb 2026 09:42:28 -0800 (PST)
Received: from hu-ptalari-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c6dcb5eccbdsm2639387a12.19.2026.02.06.09.42.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 09:42:28 -0800 (PST)
From: Praveen Talari <praveen.talari@oss.qualcomm.com>
To: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Praveen Talari <praveen.talari@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        bjorn.andersson@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        konrad.dybcio@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, quic_vtanuku@quicinc.com,
        aniket.randive@oss.qualcomm.com, chandana.chiluveru@oss.qualcomm.com,
        jyothi.seerapu@oss.qualcomm.com, chiluka.harish@oss.qualcomm.com
Subject: [PATCH v5 09/13] i2c: qcom-geni: Isolate serial engine setup
Date: Fri,  6 Feb 2026 23:11:08 +0530
Message-Id: <20260206174112.4149893-10-praveen.talari@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260206174112.4149893-1-praveen.talari@oss.qualcomm.com>
References: <20260206174112.4149893-1-praveen.talari@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA2MDEyOSBTYWx0ZWRfXxoywy0rJ/356
 yoAc+Xd2UzblFVdGwWSceh/No21ENLisMbZkuDK8XS2X8W8SwnxcXsGKHMcH2h2IwQyKm6bV9P9
 RJtd9KX76OBFDTlO/yoCMjlNOqps7XmA0IPRo+K7siydbNpyA63OXKlln3RoXtf2Htt6RCO5ocf
 wtyy+ARPuNOnrUnZ/rf5Vb4HzAK/Vh/IQ/8GNPSluuTC9X0T5L+Mzt+cszQyBq+AI3i3qDPsMZk
 tFl66yJObL2qoo0Yw3lfx0RwJ6tOtdUkQcDUEfN9rR6mMTHeysuxvoyR4Cmr9s7Dk3jK7a4kjTY
 rUQhLARxrk16d0DTaYkQPM6Yq6SNufS2xn0Ruy71x+fPfq4Q1CwE51NGBPmw683QxPMm+Z8kWKn
 FtkyyX0BhKqEmF5CDhz38f9nrRe9JzfeZ2Lu7SG90C4gHwdFAfCOhl1LEOSkWPktJ+m5fHHzU5w
 SQFfIUAFdzOTkONQY/A==
X-Authority-Analysis: v=2.4 cv=Wtom8Nfv c=1 sm=1 tr=0 ts=69862806 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=6GPvvr__t7aM35KwLhsA:9 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-GUID: yfqecLMJw6Mk1dQKbdTkHAHUKaARHY5k
X-Proofpoint-ORIG-GUID: yfqecLMJw6Mk1dQKbdTkHAHUKaARHY5k
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-06_05,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 impostorscore=0 spamscore=0 lowpriorityscore=0
 suspectscore=0 malwarescore=0 clxscore=1015 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602060129
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[22];
	TAGGED_FROM(0.00)[bounces-263468-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[praveen.talari@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 928BA101611
X-Rspamd-Action: no action

Moving the serial engine setup to geni_i2c_init() API for a cleaner
probe function and utilizes the PM runtime API to control resources
instead of direct clock-related APIs for better resource management.

Enables reusability of the serial engine initialization like
hibernation and deep sleep features where hardware context is lost.

Acked-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
---
v4->v5:
- Added Reviewed-by tag.

v3->v4:
viken:
- Added Acked-by tag
- Removed extra space before invoke of geni_i2c_init().

v1->v2:
Bjorn:
- Updated commit text.
---
 drivers/i2c/busses/i2c-qcom-geni.c | 158 ++++++++++++++---------------
 1 file changed, 75 insertions(+), 83 deletions(-)

diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
index ae609bdd2ec4..81ed1596ac9f 100644
--- a/drivers/i2c/busses/i2c-qcom-geni.c
+++ b/drivers/i2c/busses/i2c-qcom-geni.c
@@ -977,10 +977,77 @@ static int setup_gpi_dma(struct geni_i2c_dev *gi2c)
 	return ret;
 }
 
+static int geni_i2c_init(struct geni_i2c_dev *gi2c)
+{
+	const struct geni_i2c_desc *desc = NULL;
+	u32 proto, tx_depth;
+	bool fifo_disable;
+	int ret;
+
+	ret = pm_runtime_resume_and_get(gi2c->se.dev);
+	if (ret < 0) {
+		dev_err(gi2c->se.dev, "error turning on device :%d\n", ret);
+		return ret;
+	}
+
+	proto = geni_se_read_proto(&gi2c->se);
+	if (proto == GENI_SE_INVALID_PROTO) {
+		ret = geni_load_se_firmware(&gi2c->se, GENI_SE_I2C);
+		if (ret) {
+			dev_err_probe(gi2c->se.dev, ret, "i2c firmware load failed ret: %d\n", ret);
+			goto err;
+		}
+	} else if (proto != GENI_SE_I2C) {
+		ret = dev_err_probe(gi2c->se.dev, -ENXIO, "Invalid proto %d\n", proto);
+		goto err;
+	}
+
+	desc = device_get_match_data(gi2c->se.dev);
+	if (desc && desc->no_dma_support) {
+		fifo_disable = false;
+		gi2c->no_dma = true;
+	} else {
+		fifo_disable = readl_relaxed(gi2c->se.base + GENI_IF_DISABLE_RO) & FIFO_IF_DISABLE;
+	}
+
+	if (fifo_disable) {
+		/* FIFO is disabled, so we can only use GPI DMA */
+		gi2c->gpi_mode = true;
+		ret = setup_gpi_dma(gi2c);
+		if (ret)
+			goto err;
+
+		dev_dbg(gi2c->se.dev, "Using GPI DMA mode for I2C\n");
+	} else {
+		gi2c->gpi_mode = false;
+		tx_depth = geni_se_get_tx_fifo_depth(&gi2c->se);
+
+		/* I2C Master Hub Serial Elements doesn't have the HW_PARAM_0 register */
+		if (!tx_depth && desc)
+			tx_depth = desc->tx_fifo_depth;
+
+		if (!tx_depth) {
+			ret = dev_err_probe(gi2c->se.dev, -EINVAL,
+					    "Invalid TX FIFO depth\n");
+			goto err;
+		}
+
+		gi2c->tx_wm = tx_depth - 1;
+		geni_se_init(&gi2c->se, gi2c->tx_wm, tx_depth);
+		geni_se_config_packing(&gi2c->se, BITS_PER_BYTE,
+				       PACKING_BYTES_PW, true, true, true);
+
+		dev_dbg(gi2c->se.dev, "i2c fifo/se-dma mode. fifo depth:%d\n", tx_depth);
+	}
+
+err:
+	pm_runtime_put(gi2c->se.dev);
+	return ret;
+}
+
 static int geni_i2c_probe(struct platform_device *pdev)
 {
 	struct geni_i2c_dev *gi2c;
-	u32 proto, tx_depth, fifo_disable;
 	int ret;
 	struct device *dev = &pdev->dev;
 	const struct geni_i2c_desc *desc = NULL;
@@ -1060,102 +1127,27 @@ static int geni_i2c_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	ret = clk_prepare_enable(gi2c->core_clk);
-	if (ret)
-		return ret;
-
-	ret = geni_se_resources_on(&gi2c->se);
-	if (ret) {
-		dev_err_probe(dev, ret, "Error turning on resources\n");
-		goto err_clk;
-	}
-	proto = geni_se_read_proto(&gi2c->se);
-	if (proto == GENI_SE_INVALID_PROTO) {
-		ret = geni_load_se_firmware(&gi2c->se, GENI_SE_I2C);
-		if (ret) {
-			dev_err_probe(dev, ret, "i2c firmware load failed ret: %d\n", ret);
-			goto err_resources;
-		}
-	} else if (proto != GENI_SE_I2C) {
-		ret = dev_err_probe(dev, -ENXIO, "Invalid proto %d\n", proto);
-		goto err_resources;
-	}
-
-	if (desc && desc->no_dma_support) {
-		fifo_disable = false;
-		gi2c->no_dma = true;
-	} else {
-		fifo_disable = readl_relaxed(gi2c->se.base + GENI_IF_DISABLE_RO) & FIFO_IF_DISABLE;
-	}
-
-	if (fifo_disable) {
-		/* FIFO is disabled, so we can only use GPI DMA */
-		gi2c->gpi_mode = true;
-		ret = setup_gpi_dma(gi2c);
-		if (ret)
-			goto err_resources;
-
-		dev_dbg(dev, "Using GPI DMA mode for I2C\n");
-	} else {
-		gi2c->gpi_mode = false;
-		tx_depth = geni_se_get_tx_fifo_depth(&gi2c->se);
-
-		/* I2C Master Hub Serial Elements doesn't have the HW_PARAM_0 register */
-		if (!tx_depth && desc)
-			tx_depth = desc->tx_fifo_depth;
-
-		if (!tx_depth) {
-			ret = dev_err_probe(dev, -EINVAL,
-					    "Invalid TX FIFO depth\n");
-			goto err_resources;
-		}
-
-		gi2c->tx_wm = tx_depth - 1;
-		geni_se_init(&gi2c->se, gi2c->tx_wm, tx_depth);
-		geni_se_config_packing(&gi2c->se, BITS_PER_BYTE,
-				       PACKING_BYTES_PW, true, true, true);
-
-		dev_dbg(dev, "i2c fifo/se-dma mode. fifo depth:%d\n", tx_depth);
-	}
-
-	clk_disable_unprepare(gi2c->core_clk);
-	ret = geni_se_resources_off(&gi2c->se);
-	if (ret) {
-		dev_err_probe(dev, ret, "Error turning off resources\n");
-		goto err_dma;
-	}
-
-	ret = geni_icc_disable(&gi2c->se);
-	if (ret)
-		goto err_dma;
-
 	gi2c->suspended = 1;
 	pm_runtime_set_suspended(gi2c->se.dev);
 	pm_runtime_set_autosuspend_delay(gi2c->se.dev, I2C_AUTO_SUSPEND_DELAY);
 	pm_runtime_use_autosuspend(gi2c->se.dev);
 	pm_runtime_enable(gi2c->se.dev);
 
+	ret = geni_i2c_init(gi2c);
+	if (ret < 0) {
+		pm_runtime_disable(gi2c->se.dev);
+		return ret;
+	}
+
 	ret = i2c_add_adapter(&gi2c->adap);
 	if (ret) {
 		dev_err_probe(dev, ret, "Error adding i2c adapter\n");
 		pm_runtime_disable(gi2c->se.dev);
-		goto err_dma;
+		return ret;
 	}
 
 	dev_dbg(dev, "Geni-I2C adaptor successfully added\n");
 
-	return ret;
-
-err_resources:
-	geni_se_resources_off(&gi2c->se);
-err_clk:
-	clk_disable_unprepare(gi2c->core_clk);
-
-	return ret;
-
-err_dma:
-	release_gpi_dma(gi2c);
-
 	return ret;
 }
 
-- 
2.34.1


