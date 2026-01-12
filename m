Return-Path: <devicetree+bounces-253857-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C53BD12035
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 11:50:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0BD06302726F
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 10:49:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F02D934D3A3;
	Mon, 12 Jan 2026 10:48:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Deh3uicR";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dKlPxZVc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1208F349B1E
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 10:48:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768214918; cv=none; b=LmF3EaW+Sh2AvP1s90tZ/IFFlm/TZybVcDhkK52aliqiNaA6yy+nS0yweMkjvzzFIo1BHt4wOX/U1ygRkj79bClvWN6g2GLKWfnRVEojqmlW5bGV5uc2ZS4gQOlSdHyXjeqYxJjjkq+FSuV6ogdw+4LDuQ9xAnLWJ0AxCehDJxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768214918; c=relaxed/simple;
	bh=sd+Xljnfm0clwQKZjvueg2pzkap7XowUeh/WoLCloXA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=crMhvOf4ZnNuPOpIV9/tZtZQHnrH9xtQvrPpFHor3xrKRLlNkaRrY/WvO6QVinZznJTbjKMcuTrGD8+SBXX/Ffbyd6thYvNQySE7Tagf7e9fMopjlAbmxpZGI90rQWxx96JvvqyBRQheVbSDv/PRPvw3uR3XkiTWZckC3/T76DA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Deh3uicR; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dKlPxZVc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60C8ruvu675950
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 10:48:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=yHj7LcjuyR7
	44fhCZ9TThkC8k2+KnabV2Ku2dES356o=; b=Deh3uicRFQLSACT59v/PjKASHc9
	YfffzKQzP2PGasG56JoK6OB0DZQG9y9WQmJguogbI7S9pj9rfgjpF4CcmYDg4dRE
	A1FdAbgaNS9s+dSYqJMi+VGOgXvPh1UoGn0ICAHcpux1tFfKpnK3GBRoWyNSaLps
	+0FCAiPoL4Kap6mnAXc3m/WJPcHbVWGQUMi9964XH/bcKMTCGSET2MW9nd2xMfMB
	2LDmFEIt48+mw4v39ZtQdAqUYObKX7BLxFVmst33OP+X/7JnJlt6vLfZc4m82qt9
	hQAThmfoT2qhdrY9W3Teb0aLQu4KxfhgSEfTIt2QVYxME+Ev8IYUUcdJG9w==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bmwur8bn3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 10:48:32 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-81ea3358dd3so1773361b3a.3
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 02:48:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768214912; x=1768819712; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yHj7LcjuyR744fhCZ9TThkC8k2+KnabV2Ku2dES356o=;
        b=dKlPxZVcLpn8yNmybcMIMVr9si9fhGGLm7Tr5eOt/xSlIIXVmnnvv7aRbRtlxanutX
         VFmI8cO4xmXYPQ/+CV5KARSCNd0aNnEXQjtIj5GhToxUBljYQXNIXM6+t9yZ09j7DF9P
         Wl4fBMO/zkLPZy+gVTrIb61ao/VUaHYjxoJKE+nM5NE72NIXljS6f8qpiALABQVHMDl3
         Df1DjzpDqMzU9QLNusWcyoMRKJHVomPrNIwYejCLaagQVMZbiZwEqVJA6tbL+s/UOQJV
         U+e/64uzlQ2Uf7Hh30U/biZq6VPF41AQ8DUAciAIWitfDLkE28652AMoXqQrU+nXUsGp
         ftpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768214912; x=1768819712;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yHj7LcjuyR744fhCZ9TThkC8k2+KnabV2Ku2dES356o=;
        b=U93ycGO5tAjx97TCmGjfMTNDdobMC+TlE7V2uE43cg9I+sJE1qb0iBWAniC88V09is
         aNav6U9KVQh7lcOVlKQMZaJnT6NRybHZnQvgwIVetFTzssEz1LWvXB+RqfMQ2g22cOzY
         ei8nNDrFkIwX9676XzoJvKNE8wyyXPsHgj0m/xBJaFLmw8UiyO3Uvptywq8+Xgyk3wZO
         TAVIjTvmbt5Z8Oepre58VYND9YfwC2Q4/1YewWjs1GHOi5V8Afk4yMkj0bQe3eX1mLuv
         QokpgakvxtQx6pMV4+qAAOdPZ2tO1BZZO3eHsL3vvMz/igAGKbknZS7lsS8R7IAbWphQ
         XRpQ==
X-Forwarded-Encrypted: i=1; AJvYcCWULquwW+XRp3eTmiUgGxt2EpC8gbOiJIadR6wVOQw3/XLQlZwiZ/AjgH0a53/8OmF/hVZuJ4UzMAey@vger.kernel.org
X-Gm-Message-State: AOJu0YwpJJhXcqSYQIeUGV4GJg+9kM8ziaKo8wAZDpquTeewM9yCCp0o
	8Y+f/98/HSoZnQHOeKWLvbfa4esuIgKyxK9IspWnpx6AejpL2UDqcT4ygRdmkIz7PU2qGgj3ai/
	Z4gDeZumo1DBDaAr4qy5hU4AGHau+64EA4SkZxTneQYQHNc4Ap9Ka5SLNjytdRPlP
X-Gm-Gg: AY/fxX5I4JReZB5azSB8L9mlYG58si/EUfYOcQb1C+1afcUPDhJUiCH+YCY2O9W51YG
	x7G1Vf/0XU89FtM5CebOkimyQZcj1+JbtyKLRmVTVef1AZd7Utxw0xaPmYX3TClCUL9yuFF2rtl
	QTwwiqocEzjdF6GwBFZU35r0Vsxn0NsgxfibKa9mEwijWUCl7KxSeBSHvCFtVIgKzQcK71jytst
	j7gd3Trpm8uIah8uwtGNwQckndHX2QqmFxfs1Fwtd7CnxuoI8+f13gB9mKOEpA8/6ekGWxgelZJ
	7Bb0yL+dKSF4Mgbph4LJ1KSjeIkZIqDofGniCmiiCrr8Pt5rPJvoF3hzzlTd2/R+rLkiVFpMLLy
	IzNtGuF21ivuh7RHwDazWUDN1wwFpBj8Gje7IA6T4UZo=
X-Received: by 2002:a05:6a00:ac08:b0:7e8:4471:8e4 with SMTP id d2e1a72fcca58-81b7fbc8679mr14341488b3a.69.1768214911552;
        Mon, 12 Jan 2026 02:48:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEDTPGU5slDB2kB8F/ynpy1LZeQQTfK5nYm0t3d2XETK87JyZOzn4TZMieDp9ZkH04X69aC2Q==
X-Received: by 2002:a05:6a00:ac08:b0:7e8:4471:8e4 with SMTP id d2e1a72fcca58-81b7fbc8679mr14341458b3a.69.1768214910941;
        Mon, 12 Jan 2026 02:48:30 -0800 (PST)
Received: from hu-ptalari-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bafe9b8dsm17288681b3a.22.2026.01.12.02.48.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 02:48:30 -0800 (PST)
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
        bryan.odonoghue@linaro.org, dmitry.baryshkov@oss.qualcomm.com,
        bjorn.andersson@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, quic_vtanuku@quicinc.com,
        aniket.randive@oss.qualcomm.com, chandana.chiluveru@oss.qualcomm.com
Subject: [PATCH v3 09/12] i2c: qcom-geni: Move resource initialization to separate function
Date: Mon, 12 Jan 2026 16:17:19 +0530
Message-Id: <20260112104722.591521-10-praveen.talari@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260112104722.591521-1-praveen.talari@oss.qualcomm.com>
References: <20260112104722.591521-1-praveen.talari@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEyMDA4NSBTYWx0ZWRfX1j37i8hKkUBR
 QD60Xbe8YfsJYWBdxh3wLTTXzELb5pAGobBRD9URN+phwUMyIm9LJ9E+vfF5tO8vpFOhfgy50zm
 EH1mdWOea3HhvT3dQaCS+PW9UereGbhTyqR5geHrZDHcmglTkeDJTT/oTuv+Tv+RVKv52vF3l9K
 moMTgenNfQwqG4JjIrYTRGC+ZTTfA8u7JClSu53yXBkdgAlpepmmTRucylLoPt993QQjUy/yh2H
 p/Phy398BdZ/O0Z2bYVAK4bWgWeJVWmG/oiQyE/2RFLejnOSpxE03iGQPMDVQ4Nexp/hJ3ZXyVI
 ivxFxTEJ1C90HmLolswmcAdQh6IrcvXstrijbPlnsynmszOO0LQVHdlPylXL1llxru6fcjxqGM7
 RQUuo2FC7BR1HkaI2nIeESfQnRQV2lV+a+nl0IjI7g8Jsfz9F76WXXAXN5h0rGdpBGkXqYTULiC
 3PBWctJbqma8yLSsy+Q==
X-Authority-Analysis: v=2.4 cv=HrJ72kTS c=1 sm=1 tr=0 ts=6964d180 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=V89BwkbFsXdiYDgkWuoA:9 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-GUID: lr76AkPgH0Q3kWOfWigdNK8w3efD4TKy
X-Proofpoint-ORIG-GUID: lr76AkPgH0Q3kWOfWigdNK8w3efD4TKy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-12_03,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 malwarescore=0 bulkscore=0 adultscore=0
 clxscore=1015 impostorscore=0 spamscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601120085

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


