Return-Path: <devicetree+bounces-250041-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A2D8CE5F55
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 06:08:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 400133022F18
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 05:06:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8E80296BAB;
	Mon, 29 Dec 2025 04:56:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fs1FFbJg";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BJScILJv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A7E229346F
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 04:56:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766984172; cv=none; b=hNcwGV+lKgogRzAqD6P6l7CR4lfLvkdd3VaqyBpfJHUGcBJAaxC6/4BSJad7h/ANyob8QKnfqgFSkBPfRzkiTOTbyG38wkieSNG1Ji2PYol/p/3Za/d+Lj4V+ou6ETvIUjEY0TgCyCx92BR6Ts+VIk81h9JWadgQ2I4tpCzT1PQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766984172; c=relaxed/simple;
	bh=dd9jcM7VhtLSe01qVKxg4cqsefq6fIxIf68B+OdANWo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=KQivxGl0El0A888J/y63fl8gMghJ2WTb/Tg2M6CgiXeSJYLKgIt46jZj3NBBzxjevqXPAXXcmfaIG6rXGPk3Z7zvZiMwtYRsAMCY9gdkJY+5sBzUZ1eIHhEytmBomSnMwTjdGnxtDAQqS/4SS/DA2jpXp3Oj458CEa/Z/pEKaQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fs1FFbJg; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BJScILJv; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BSIehPo3754970
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 04:56:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=6DIBNmtegJx
	j/sp5FwSU/fdzZauMmtoR986IcxrENk0=; b=fs1FFbJghCYmmqmmhZq0mGC67mi
	JycZwI2vrl64SdhvOG1vWGw3ZbkchnhXmRY49fJmPoouHURZYxTchUpSmvdMIApj
	27eLTrs4kuDZN4oHvFwN1JHspQLBJfOrxGzB68upTFYGsJyMGBhsvUad9g/vCgzD
	QBSyJx5B9m1O2IPAM/hVPO+S/7sJc8Ru6t760DWlaFHZg6ptE/59VxRNnyl96Od7
	75SnMGkPeYQ+t72LRMIcPfotk1duJAJB/TX1rxacTeNDEteKNczvYFtbqYXXdCYr
	9Zv85Np9lC1PNMzbDBcqFJzzZED9VE2kKI3ob0kGFmaeknLeJ5bH2XtWaxQ==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba71wucar-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 04:56:09 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7f046e16d50so14763586b3a.3
        for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 20:56:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766984169; x=1767588969; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6DIBNmtegJxj/sp5FwSU/fdzZauMmtoR986IcxrENk0=;
        b=BJScILJvzWKrrF9RjND62tzPn9QUkZtkykuep6tyLXgjO6wc4wnrO7NT65qW24cvrY
         IccMqEhVeC5bFr8SITKvdYNobnDI+YMu4etXspcLTj9bS14+1YOLSVee0Dth67+t22Cc
         RU+t1hfiwp+LP3ccnsW5h5JSnXW0adkqgBwT4DIeE4HPzFW7S9/xEFc67q7bHpyPsD/W
         xWkIB0Ozrk4r6LZiTKY6KlA2mcfN0M0zQ4qDpCmae6hRFq72W/LukUmXO6f9gZC7vKzc
         mt6KUkO3M3NTpOcgCokro0QyDKWuljorQ43fk+x3iYRzDHA2HzRPPHF3Weoia7HNYgZK
         e6HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766984169; x=1767588969;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6DIBNmtegJxj/sp5FwSU/fdzZauMmtoR986IcxrENk0=;
        b=Kqcc3eGD/CHXhFYTwUySJeMJra80dLDrQAs0tn5YkznyXZBzolm+sh00jiV0fT0KFd
         AsjgrBHN+ToONoMueJbU5jMpJR3cv23oK9Mv5s9fc+tFyuABMM9bFeWdfqhjMIZBFTgs
         h7ZfFauwe4sp45es6pF/jG1AGlBDE7eFyTq8O2HSgoiCFIi3iuLRqz2EfoyS6rh5DsYE
         TMQQbxugdezaeh52ORiYO6vP7aAqvFOt/9hSKc5xYvQnvws9/5bNy1JP/1FEL6QcA0yC
         AIqiicc+YHMRQ5oLT+bVJeayoeDq4BhoJVg9EhulcNswDf1qmSaBGwbFhnEL4wlMfjJ/
         UZ1A==
X-Forwarded-Encrypted: i=1; AJvYcCWSj4oWF+9Tj7FM+o8ek0lstr/IiWmz9CG6RcyCJlvX06jWDRb1UK2NWI+dItpga46ZSPhZoTtbheHP@vger.kernel.org
X-Gm-Message-State: AOJu0YyevanwcMSwvXhr9fYRZtJIdNueRjrG6JYO7pllexN+OwpPOxKZ
	PVu9Zjx+sxlBpoCA7+gOLn8DrheqXm6XYxMMyVdD7nos0kXfpypFaJk7kWhksrZ5D39hZp62wDO
	ApKP8xNU+UPrFCIkO1n/hKzj54HvshBcsHRHjAaYndyxiPVvp2RvEOfcaFgfiCKkS
X-Gm-Gg: AY/fxX6V0haGtame8NPQMg6r+ziCANefyxbT7O7b3T6uj1ivZ2n6AEf4pDXehRxM3H2
	jNerfoZDveoARQgrgyZDh7EVQgGecuusUZt29EZ0LAcM6K4iltgqbxNJIzHlRBcuBu0MamgAk+J
	mNzsuqvM89se49mS8WjYNmTEW8bwRzdEglc5PLoAGkEdNy3B2agE+v3Bj3SHduFWsiEOjDCUpLE
	Tj/TtYzMvf8y///pEhOEhOEEgFR2pkZXkDhIc3wiSv1JHv12kaUFDVLLdVxaZukxqP+SbVtzrDL
	WUiUIi3Xl1wIItDmtpW3IpIZW5NzKuAVXd6slW5jmP8y+xNHXfUb+ytCDUvg0Vqf1Pl0oe4H7Kj
	GAxtYtrcoujVCA+Ul8LhnJNZ6L3YK2MHhT+HdwspZ3KA=
X-Received: by 2002:a05:6a00:3386:b0:7f2:1951:c130 with SMTP id d2e1a72fcca58-7ff66d5ff66mr27353196b3a.68.1766984169010;
        Sun, 28 Dec 2025 20:56:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHR7M1yhRS750JdicCCmdoq4t+9wBUNIGOHfOwPohqIVn6OoIL6o7IqcuPL0ykrZIuELU6Xjw==
X-Received: by 2002:a05:6a00:3386:b0:7f2:1951:c130 with SMTP id d2e1a72fcca58-7ff66d5ff66mr27353156b3a.68.1766984168483;
        Sun, 28 Dec 2025 20:56:08 -0800 (PST)
Received: from hu-ptalari-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7dfac29bsm27902080b3a.39.2025.12.28.20.56.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Dec 2025 20:56:08 -0800 (PST)
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
Subject: [PATCH v2 10/12] i2c: qcom-geni: Use resources helper APIs in runtime PM functions
Date: Mon, 29 Dec 2025 10:24:44 +0530
Message-Id: <20251229045446.3227667-11-praveen.talari@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI5MDA0MiBTYWx0ZWRfXyJjbZmE2SG+f
 mV9cuj0dRe8mJ7K4aBk6KNqcBHSe43J0Tw5uWf0xxURVOuqLGSq0EPRIi/BHuh2cjbIZP7kwXfX
 B9uI62iscVvxGQvkiyVd8zEvGkH+i+Cw/fXUjnXm3xI6NSm3gAbQV2MYK6J2MJrqfgVGz3iV3FW
 Ru0FUzRsCgYsLLR+VyGBucG4lqvFWnhyCwNY0Hv4rYWMhtrgsSaC/QJrqAGrqWPmqaMsLnEWPrR
 2yiTiOREI+Ad6r+UifaqSlfsknAQP2j9UcwI80UDRCcVGd7p+4Or/ask9ic71+d20wTqn50zzJw
 IzTtVhbq+O1CeVOnJm40/TAXjYbvpnVHxHAhsG99nI/7kT2PktrN0Gy1Csuiwv1y5VrTInVuwPR
 svWhhDuijBE3SPHmyzbnQDHkWJXkDrpcknLGV8AhnT7YjY809K72UYkacJaV2tzL+F7Nspt8kWs
 MN4n96ERvtKDjR9Z1+w==
X-Proofpoint-ORIG-GUID: yFyiAox25eBKFJTNJw4Gklept99OH_a7
X-Proofpoint-GUID: yFyiAox25eBKFJTNJw4Gklept99OH_a7
X-Authority-Analysis: v=2.4 cv=CK4nnBrD c=1 sm=1 tr=0 ts=695209e9 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=3PeDo36KSfG0vlEF63sA:9 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_01,2025-12-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015 spamscore=0
 adultscore=0 suspectscore=0 priorityscore=1501 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512290042

To manage GENI serial engine resources during runtime power management,
drivers currently need to call functions for ICC, clock, and
SE resource operations in both suspend and resume paths, resulting in
code duplication across drivers.

The new geni_se_resources_activate() and geni_se_resources_deactivate()
helper APIs addresses this issue by providing a streamlined method to
enable or disable all resources based, thereby eliminating redundancy
across drivers.

Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
---
v1->v2:
Bjorn:
- Remove geni_se_resources_state() API.
- Used geni_se_resources_activate() and geni_se_resources_deactivate()
  to enable/disable resources.
---
 drivers/i2c/busses/i2c-qcom-geni.c | 28 +++++-----------------------
 1 file changed, 5 insertions(+), 23 deletions(-)

diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
index a4b13022e508..b0a18e3d57d9 100644
--- a/drivers/i2c/busses/i2c-qcom-geni.c
+++ b/drivers/i2c/busses/i2c-qcom-geni.c
@@ -1160,18 +1160,15 @@ static int __maybe_unused geni_i2c_runtime_suspend(struct device *dev)
 	struct geni_i2c_dev *gi2c = dev_get_drvdata(dev);
 
 	disable_irq(gi2c->irq);
-	ret = geni_se_resources_off(&gi2c->se);
+
+	ret = geni_se_resources_deactivate(&gi2c->se);
 	if (ret) {
 		enable_irq(gi2c->irq);
 		return ret;
-
-	} else {
-		gi2c->suspended = 1;
 	}
 
-	clk_disable_unprepare(gi2c->core_clk);
-
-	return geni_icc_disable(&gi2c->se);
+	gi2c->suspended = 1;
+	return ret;
 }
 
 static int __maybe_unused geni_i2c_runtime_resume(struct device *dev)
@@ -1179,28 +1176,13 @@ static int __maybe_unused geni_i2c_runtime_resume(struct device *dev)
 	int ret;
 	struct geni_i2c_dev *gi2c = dev_get_drvdata(dev);
 
-	ret = geni_icc_enable(&gi2c->se);
+	ret = geni_se_resources_activate(&gi2c->se);
 	if (ret)
 		return ret;
 
-	ret = clk_prepare_enable(gi2c->core_clk);
-	if (ret)
-		goto out_icc_disable;
-
-	ret = geni_se_resources_on(&gi2c->se);
-	if (ret)
-		goto out_clk_disable;
-
 	enable_irq(gi2c->irq);
 	gi2c->suspended = 0;
 
-	return 0;
-
-out_clk_disable:
-	clk_disable_unprepare(gi2c->core_clk);
-out_icc_disable:
-	geni_icc_disable(&gi2c->se);
-
 	return ret;
 }
 
-- 
2.34.1


