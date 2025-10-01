Return-Path: <devicetree+bounces-223187-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 85432BB1EF5
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 00:08:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BC9E018946AB
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 22:08:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6017E313E1C;
	Wed,  1 Oct 2025 22:05:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MzHbIRzT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57BBF313D74
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759356355; cv=none; b=j+x4n5MrEN+modVYkiH3yvd2UN2Rj1LUxjsdYlPdGrC1gI2g1H96GNAMSoxva2OfXGKKDuRnq+3QCVAEEFni3bteIiuba4Yx/X/5bZLkrOCNGSaVzOY77sKvfAoGci+CsSncXxk+OHHwnXp1/1erg99DL5acmL9XTqBg7SiiaEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759356355; c=relaxed/simple;
	bh=wwAOX22I0FMwc3Zh3TmwOoD6CIPx68eD+c21Q+iR4lk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=F8tfu0n3bLCKJTtUYafefVlC40wwX1Qbh83AH7uXrMHCBmKkg27gWPsB9AJuKRUl9T4be6DABi2YsuON+kTzj9nlnUgCn62oCpDfbdeStxrbKH6p390KctA04kFSmtmRE0+L5hvWzPSU3QHCkFOcxB7NC4fIlO5h1nyKcYSzIys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MzHbIRzT; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 591IcQRd024114
	for <devicetree@vger.kernel.org>; Wed, 1 Oct 2025 22:05:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=fV/4QT0VA9Y
	jNuWz+QmsYOyq2W7XTcB2wF0sRRRIIRY=; b=MzHbIRzTXcx0eDmkqISGNJMbVyY
	hTBgZTG7esS5c45IStBAEl3hkYcHKJk3gsznEEvUfhh2m0WCEUmoz2tAcLcWKkC+
	wcrR6u+noOJrNi0nraDv/acNAjVFFoIqiUgncMkKf3PJsTgEt2eDpuvixoXUUssh
	ZcpNJ/hkrlpp1ff8EQ3/d4WZ3kGQBGK5J0ddjCdUn63bRB/txEs3qhTMI49RpuMq
	Ud0VUHd9dVt/6YAUPiKVFMZRrvThXn8fmzlCDoGI1994JD7rQoBt5toyKyNDOXsw
	gf1DVUeKpPq/Izwgmusi1psKBhNa1GaAhRQ5GiBnNu7/nD2OCc8KkO3WCKQ==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e8a660tk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 22:05:52 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-32eae48beaaso347279a91.0
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 15:05:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759356351; x=1759961151;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fV/4QT0VA9YjNuWz+QmsYOyq2W7XTcB2wF0sRRRIIRY=;
        b=MH48/MdcFgBBge+Kuuhe3TEvnPoF9L3Mdx9zlUkHQeaH61pFBM4vzhwLrJnbLQqxuW
         eWv7Oc1F4RTrC8PMF/ww4xQHmTzkHmbSM3VJmi9neu7wiVhM0+s7Az4nD+N3avWbumxW
         LoGgGYXpaZGUbVQWg1eeOGZoOcnCjLCBjOKuhwsrytn3skHUAJqiGMJwubavJZDThi9u
         HyHeSP1+89I0GV3hMIPv46pwqput6PBg5uc04b5nSVhWJsYtAjD5pe2XnVkiWQk9pnE8
         S6G9hBqUc5H3lSonNGia+vcRp9b0oEEFxJdrTAc4JADI69JHYED2YqDjNMYi9C8l0RYE
         bkYQ==
X-Forwarded-Encrypted: i=1; AJvYcCV3W29EgOf70Ga1a5dOKS/dqT6L6r9AsaEOG94uoUS+RmCYCZZLqh2EehIBnR/X/pu1QbNbOLFuV+TR@vger.kernel.org
X-Gm-Message-State: AOJu0Yw80/g953f4f6AW59NHodxk4u3QMWhiD/UVat9rNIicpNtZNWPO
	zvAxtAtXyGH5ZFsaPE7CbfDSmCfolm5abCxdbUh5fQj2WPBvmyrOgQezsttgiHIi7+JAGdq8gqv
	0i84t99pbJROw5Re8MjM8aA+VjFWcNQQOtt4vHvM+w19F86NXvLqE3h46lG/hkdTM
X-Gm-Gg: ASbGnctu+3RHdZabTnKbgfwRx/Pl6kBKeAmsTOea0EMj95Sn57K9F3JXKQmpjE2M2iv
	ZZO6gBLDs9cVXFhlvNuBsDZeI0dmwd1AUHvZcENxn3qLchrQucyPAidiuwKt6G5w4hUheBRSIdH
	j+d1BCNk9QtCOieV4ks5akT4GXrkpxo8FsGZWsB5s5kJKdP/HiiXlo/rimygcnhOtbnULohWVVu
	YYTuUKZOk1miStxOobDrllaCfq61XxZCgzt8bWZlHWNXm0ScOIP6iOnBnGlX0fpobblc32EtbtM
	BlXYAzD7xTdxljnx1hogaqsGL90gm2g87pEeOZJco8uVhY+SoiXxrbJI2MhlwWpaQO4swyH9RME
	bdcYjiM+BjccdiY5fTLMd7g==
X-Received: by 2002:a17:90b:3511:b0:32e:51dd:46dd with SMTP id 98e67ed59e1d1-339a6e97a92mr6634318a91.16.1759356350777;
        Wed, 01 Oct 2025 15:05:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGmr7R5I47BoSxuFE5aidJ6MkJoBIZ2dG5PdBMeCR3hmk/q1hEeSZK08XFxZ/maDOfJEkItaw==
X-Received: by 2002:a17:90b:3511:b0:32e:51dd:46dd with SMTP id 98e67ed59e1d1-339a6e97a92mr6634278a91.16.1759356350296;
        Wed, 01 Oct 2025 15:05:50 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-339b4ea3c3dsm702085a91.5.2025.10.01.15.05.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 15:05:49 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com, kishon@kernel.org, vkoul@kernel.org,
        gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v4 09/10] phy: qualcomm: m31-eusb2: Make clkref an optional resource
Date: Wed,  1 Oct 2025 15:05:33 -0700
Message-Id: <20251001220534.3166401-10-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251001220534.3166401-1-wesley.cheng@oss.qualcomm.com>
References: <20251001220534.3166401-1-wesley.cheng@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=RZKdyltv c=1 sm=1 tr=0 ts=68dda5c0 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=8inbgvmG2iPteTk8MkMA:9
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: qKbY2d33-oO4ZA_5PpzQtbXBzg4XI5HU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAzMyBTYWx0ZWRfX7DtFJRT2xBGx
 zfiAfI6jWeGLZF1XZQ6irrx51BaXa/+NQRmpekD1eychrRnEH5WIHrJkzb0hpJb3y6pSsJzBhkd
 83VJGEWU3V//gSXexyXN3rPlhYPXBhdlE/d/M+oy4k8nBdc72l0Ie8yHFoY7HfQFfPNb7QntSu2
 fZroZQ8OoXRAe8qIP9RVScS/2YQA4b7WTjbfnNmtjGJC43L5yZ20DTkBxIK7Qoq2+7/MhVh99YK
 nfJ67tDRiF5cyBXa9p+rKQvPbQTXx1nR5POr2zWiUQrTb+ekP9sxFWiYpCPaTV3xckXSLWMsACK
 zvTOlCywt4dk/EVjRTf/c32rCnJm6VW0E6KK1s/bz/q4vIAt5cTnE367zmvrAI4f077cERzGi6o
 YKU3mAB3ZX0+dKGRdIX41TQJxDlv4Q==
X-Proofpoint-ORIG-GUID: qKbY2d33-oO4ZA_5PpzQtbXBzg4XI5HU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_06,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 priorityscore=1501 adultscore=0 phishscore=0
 impostorscore=0 spamscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270033

Some USB subsystems that utlize the M31 eUSB2 PHY doesn't require a clkref.
One example is the Glymur platform, which contains 4 USB controllers that
all utilize the M31 eUSB2 PHY.  However, PHYs associated to the primary
and secondary controllers do not require a clkref resource.  Due to this,
mark this as an optional clock.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
index 95cd3175926d..f8a00962f937 100644
--- a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
@@ -267,7 +267,7 @@ static int m31eusb2_phy_probe(struct platform_device *pdev)
 	if (IS_ERR(phy->reset))
 		return PTR_ERR(phy->reset);
 
-	phy->clk = devm_clk_get(dev, NULL);
+	phy->clk = devm_clk_get_optional(dev, NULL);
 	if (IS_ERR(phy->clk))
 		return dev_err_probe(dev, PTR_ERR(phy->clk),
 				     "failed to get clk\n");

