Return-Path: <devicetree+bounces-250040-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 95754CE5F1F
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 06:00:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7B7A53069323
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 04:56:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4110327B32D;
	Mon, 29 Dec 2025 04:56:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kmqPJFCp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AaZzRQ5i"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF1A0275AEB
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 04:56:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766984165; cv=none; b=sjUU8ked8n/jqTrkVpzQdrj8BOjyb2rbG50cowLuYqCElPETnycSDDtn/rh85QYAFHjNvx3rnZKuFJ+S3v6y2DFDAvpPy6Dr+YzAMbUUhoJcwi6raRoSPOCRfHe8mAri8cL1FJdilQbJL0igB+bPQrCRCvrJTsGGWJK4zWeMgZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766984165; c=relaxed/simple;
	bh=sd+Xljnfm0clwQKZjvueg2pzkap7XowUeh/WoLCloXA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=mo6avpYx4r0nUAmI35LSmY7/T5/+nMqfFC236Z0rjbjULXSsWRi9hGXPW+PiYp/27FwYmIhPO1BWLxq0JC0+UDau12bUi+ES/Zu2Fv5tuXrP/RdzDPLqxf/X/IBgk23WfdhShgu4/Jc3R857OnlUf3ATHPHdcRC/C+zW6oYlnY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kmqPJFCp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AaZzRQ5i; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BSNQZP64107603
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 04:56:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=yHj7LcjuyR7
	44fhCZ9TThkC8k2+KnabV2Ku2dES356o=; b=kmqPJFCpTWOu8wYmXUG+Oe44FoF
	Fo+Nq61tgLrGMDB+Ya5EgwTzISCaHcE2GgYhy4TfJ5HyNrjcuPBbiQ5A50Q76S4C
	GClH9WGP0uGjNdLna/eF106NZRSlevvwgxNCr5rRKJU8XikflfD9alGxuii6czOj
	OYcnCpHRWubFEUJKtAaSe3np8c3rfrh7rFQJ1FlZTtMtsZy/9QwM83P/8/m7p+6B
	95VAE3zjq/gJANRTH4WhYKks/JBjyaTZI/HkN/GvHtiIwWLbTOKRbG9gdEi+MwIp
	HBKlPTVamvStywsVm6hyLxgK+QBNC0mADZEwYGvvgXjk6Uo2Pv8dq4UmwEg==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba87buc7a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 04:56:02 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7b952a966d7so18214859b3a.3
        for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 20:56:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766984162; x=1767588962; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yHj7LcjuyR744fhCZ9TThkC8k2+KnabV2Ku2dES356o=;
        b=AaZzRQ5iaohrlVCFoiVkbyV+99Kmt7xTDPJbxSdadqjJI/ekN6uL1MRa4LW+wDIYYZ
         dUhQUE6IhtkeRCWljfYLX5uYExhl/2A0WUe5yXEMsfph+BxBhZJEXZTNlGm6sAaC1l0Q
         hUtzeYU7F18sjo8xyx7VIdFtmqbi/yrkMWhLI6o77NsKFMpplN98I79DpHi26Nj6CV7V
         bTxApdIDq/SUGNYHvaqBQXKS2okFAN1LvoU9BMiSjBW2FJcagtzLuUMI9cQggK6eMO3t
         JFohNBWnf46WTCS5cZAl5Qx/JXpt83J5ZT9NU1et1dgnPIN+bV2cuADGzfiaWQywXKpK
         t4lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766984162; x=1767588962;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yHj7LcjuyR744fhCZ9TThkC8k2+KnabV2Ku2dES356o=;
        b=ODl+FmvGLkrNPU19BncxjblHowqgXGcDb+64LKWENuEYGIWnk2W1YAmTAyDjWtD5Y/
         FtEUXqa+8weZy6b3Y9nA3SkoqW5PSU15FXQYh91EkeEdPw1v2jtVqac+KY5fPPDgxG1I
         hDsRwLA0r9OTAS7s76UGg4okg+9YPIykcRjgKZG1w8PZBV6HDm90BsvzA5C+KJiyYde9
         p5Mu6Zr/EArz3kFcy5TP6EtfUuXDU3ebjcA4dshWZtyEFoe5mNFhhEd0I12bCOqY/9PW
         jPdhuu/YwpcFrYfeBqfpY7w5O8HGozjOj8rOVNSs+/sxchLD2Cs+TqSN+qwGS/oSCSt9
         0Utg==
X-Forwarded-Encrypted: i=1; AJvYcCU+N8NzBXlEYLVK00JtvVIHnmo1X1BC40nuBCWPbzd+LlYc0mDG/Lz284jHqFNSpFnIg59K/I51gSxx@vger.kernel.org
X-Gm-Message-State: AOJu0YyS24YiOprtn4lSiZettIMrccvts4DGnhawUrf0O7DTV3q7f43U
	VFbNoYomqMHB6CdJqjuMbw87tD9d914Ui471c6yMrNLe0+kKXs9qCgreiUgg615NZCjL9yL1maQ
	MA+fmlGdYd/kcN6EdVmVei9vVV4b8jnnSpudqlYjI1/kvZZVAC7oXRUcvqvwvenVQ
X-Gm-Gg: AY/fxX6msDI/UbANf8b5duUADhv1pHGUWzo9BYI3M1QSfvugR2kxV1flVV/smJ2QAwI
	OWR64Pec9XVKoAUEsN1Mu2TGrxIzXX+9YSFx4So699seAKgrMOFSy378Bp75zZnJ5UD3NdNqZ21
	kl9ayaXAm1cygsv1nNF/tW4EMkGTxOrtXJ7bhySv9JIEL9S2Yx5gBpB5dPrpLwrmugVItbOYClt
	pEjKycga6g/I+lXFwo1etv7sse5UhedS0Dfx16DQiub/GuZbBEu3ywUDQ5AA0ey3vk0VrEpcNDP
	nKtUOdoGjhoID7nPwHAM2Bm2iWS7BOKyDzVPpazPY8ia21NndiGsYzHnNn1NM4NyseAgcq3ozNY
	5Ej4bu141bwcKs+lSYnD8b9bK73UZ1d2OQB0Eick4iBQ=
X-Received: by 2002:aa7:9312:0:b0:7e8:43f5:bd0c with SMTP id d2e1a72fcca58-7ff66f5a71emr25516924b3a.33.1766984162106;
        Sun, 28 Dec 2025 20:56:02 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHpSZwQSfycFRFi+kX7lm3SjsjxKH6VXTgnbWY4QiweMoYebX2+LJo3vobyxCXvUawEzpJqSQ==
X-Received: by 2002:aa7:9312:0:b0:7e8:43f5:bd0c with SMTP id d2e1a72fcca58-7ff66f5a71emr25516896b3a.33.1766984161526;
        Sun, 28 Dec 2025 20:56:01 -0800 (PST)
Received: from hu-ptalari-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7dfac29bsm27902080b3a.39.2025.12.28.20.55.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Dec 2025 20:56:01 -0800 (PST)
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
        alexey.klimov@linaro.org, krzk@kernel.org, bryan.odonoghue@linaro.org,
        jorge.ramirez@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com
Cc: psodagud@quicinc.com, djaggi@quicinc.com, quic_msavaliy@quicinc.com,
        quic_vtanuku@quicinc.com, quic_arandive@quicinc.com,
        quic_shazhuss@quicinc.com, quic_cchiluve@quicinc.com
Subject: [PATCH v2 09/12] i2c: qcom-geni: Move resource initialization to separate function
Date: Mon, 29 Dec 2025 10:24:43 +0530
Message-Id: <20251229045446.3227667-10-praveen.talari@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251229045446.3227667-1-praveen.talari@oss.qualcomm.com>
References: <20251229045446.3227667-1-praveen.talari@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: UVQChBAJMLFqWHxWuZh71JOzNO48OgsM
X-Proofpoint-GUID: UVQChBAJMLFqWHxWuZh71JOzNO48OgsM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI5MDA0MiBTYWx0ZWRfX+YSnTa6Ta4Lv
 jMaqDT18zE/1hTeWO9M6OBhdropGLnqlq4uDAnnprdMgpR0adQsIMhJTYtW7P63p8E5uua7mbL4
 erswXqf0J7Bl+8WwN81eNBYCaR/uRlGFqoYlKCLoJTpTq5ZtUdy6++dIzWYA+giGz7aA/zXOup2
 GRTTg7QtzOuYgzIcYO+E4id0knkz5sUTLlvZh8m7zPA3Jtup4Z6S0KMCAuTlUIGL4eFdi2hLwex
 u+bw5N37++kew543+3lFP7TXdlxNl6LbwzqlTZ6i9IXFGbiV1EnjZ9Eb1MY0y7EBPauF87XYYv5
 m2Fhr8fjsLx9C95FDK99/IJltiuUUdgM7YqYyk9jCO8cFxGuHzOW4DLpmiYjG5RmNCsRGLW3vDK
 SLiG2Neg4AntZKptIAweMhKCnd/odxOec5MNu5R/upec/TPO+IYQnNQnWfpMQeG1y3waQUU2Oru
 odtVIkMA7/SAwsBX9pA==
X-Authority-Analysis: v=2.4 cv=do7Wylg4 c=1 sm=1 tr=0 ts=695209e2 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=V89BwkbFsXdiYDgkWuoA:9 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_01,2025-12-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 bulkscore=0 clxscore=1015 lowpriorityscore=0
 adultscore=0 spamscore=0 suspectscore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512290042

Refactor the resource initialization in geni_i2c_probe() by introducing
a new geni_i2c_resources_init() function and utilizing the common
geni_se_resources_init() framework and clock frequency mapping, making the
probe function cleaner.

Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
---
v1->v2:
- Updated commit text.
---
 drivers/i2c/busses/i2c-qcom-geni.c | 53 ++++++++++++------------------
 1 file changed, 21 insertions(+), 32 deletions(-)

diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
index 58c32ffbd150..a4b13022e508 100644
--- a/drivers/i2c/busses/i2c-qcom-geni.c
+++ b/drivers/i2c/busses/i2c-qcom-geni.c
@@ -1042,6 +1042,23 @@ static int geni_i2c_init(struct geni_i2c_dev *gi2c)
 	return ret;
 }
 
+static int geni_i2c_resources_init(struct geni_i2c_dev *gi2c)
+{
+	int ret;
+
+	ret = geni_se_resources_init(&gi2c->se);
+	if (ret)
+		return ret;
+
+	ret = geni_i2c_clk_map_idx(gi2c);
+	if (ret)
+		return dev_err_probe(gi2c->se.dev, ret, "Invalid clk frequency %d Hz\n",
+				     gi2c->clk_freq_out);
+
+	return geni_icc_set_bw_ab(&gi2c->se, GENI_DEFAULT_BW, GENI_DEFAULT_BW,
+				  Bps_to_icc(gi2c->clk_freq_out));
+}
+
 static int geni_i2c_probe(struct platform_device *pdev)
 {
 	struct geni_i2c_dev *gi2c;
@@ -1061,16 +1078,6 @@ static int geni_i2c_probe(struct platform_device *pdev)
 
 	desc = device_get_match_data(&pdev->dev);
 
-	if (desc && desc->has_core_clk) {
-		gi2c->core_clk = devm_clk_get(dev, "core");
-		if (IS_ERR(gi2c->core_clk))
-			return PTR_ERR(gi2c->core_clk);
-	}
-
-	gi2c->se.clk = devm_clk_get(dev, "se");
-	if (IS_ERR(gi2c->se.clk) && !has_acpi_companion(dev))
-		return PTR_ERR(gi2c->se.clk);
-
 	ret = device_property_read_u32(dev, "clock-frequency",
 				       &gi2c->clk_freq_out);
 	if (ret) {
@@ -1085,16 +1092,15 @@ static int geni_i2c_probe(struct platform_device *pdev)
 	if (gi2c->irq < 0)
 		return gi2c->irq;
 
-	ret = geni_i2c_clk_map_idx(gi2c);
-	if (ret)
-		return dev_err_probe(dev, ret, "Invalid clk frequency %d Hz\n",
-				     gi2c->clk_freq_out);
-
 	gi2c->adap.algo = &geni_i2c_algo;
 	init_completion(&gi2c->done);
 	spin_lock_init(&gi2c->lock);
 	platform_set_drvdata(pdev, gi2c);
 
+	ret = geni_i2c_resources_init(gi2c);
+	if (ret)
+		return ret;
+
 	/* Keep interrupts disabled initially to allow for low-power modes */
 	ret = devm_request_irq(dev, gi2c->irq, geni_i2c_irq, IRQF_NO_AUTOEN,
 			       dev_name(dev), gi2c);
@@ -1107,23 +1113,6 @@ static int geni_i2c_probe(struct platform_device *pdev)
 	gi2c->adap.dev.of_node = dev->of_node;
 	strscpy(gi2c->adap.name, "Geni-I2C", sizeof(gi2c->adap.name));
 
-	ret = geni_icc_get(&gi2c->se, desc ? desc->icc_ddr : "qup-memory");
-	if (ret)
-		return ret;
-	/*
-	 * Set the bus quota for core and cpu to a reasonable value for
-	 * register access.
-	 * Set quota for DDR based on bus speed.
-	 */
-	gi2c->se.icc_paths[GENI_TO_CORE].avg_bw = GENI_DEFAULT_BW;
-	gi2c->se.icc_paths[CPU_TO_GENI].avg_bw = GENI_DEFAULT_BW;
-	if (!desc || desc->icc_ddr)
-		gi2c->se.icc_paths[GENI_TO_DDR].avg_bw = Bps_to_icc(gi2c->clk_freq_out);
-
-	ret = geni_icc_set_bw(&gi2c->se);
-	if (ret)
-		return ret;
-
 	gi2c->suspended = 1;
 	pm_runtime_set_suspended(gi2c->se.dev);
 	pm_runtime_set_autosuspend_delay(gi2c->se.dev, I2C_AUTO_SUSPEND_DELAY);
-- 
2.34.1


