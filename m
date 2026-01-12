Return-Path: <devicetree+bounces-254152-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EEC84D14DA3
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 20:04:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3641D30222EF
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 19:02:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41D55312820;
	Mon, 12 Jan 2026 19:02:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DfV5KPmf";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KEJBYiBe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B53801EEE6
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 19:02:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768244524; cv=none; b=nNPqKr/B/SvF/aGcA0ZbastiFoKd6OhDTWokhntUrb+SbmqKAQMOYg8ZoKqIky+eXVV79fH+XoGhDS8gbXGDjQ6SvdIyNim3cqaEK8jQvoey/87Nsn1YWrT6431ZCvKXfP1ZDHVS4+wzaaR1sJijSOg6FR51RqYOseWmAjKUnXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768244524; c=relaxed/simple;
	bh=kDa5gdzwglMPiLY8p2wwH3rr+hVw3k9xuDm+4u6eoVQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=PaWIT+eYhPMsPQocreigBMvi8tfcwSNmpUWDok5mxRGY3yygupYYSZ7mQ4WPdkOKhmIdVPBn5NyONTiadR6E85RKk6ywNRwhNoo54iJlI6E4u5RxsmLv7V5r4GWlH94M3ml5EAPvW8PjG3EcfLeLIyD52x/oM/AVtnSA1aa5yoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DfV5KPmf; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KEJBYiBe; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60CHfNTA1426695
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 19:02:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=aLVUs8RtcG5
	zJUJL3atY+JbM0XEXRgp9E94lpJuF/R4=; b=DfV5KPmfYMqyiT8AZkrd2e8mmfZ
	gpuj6DlXIft3Y8IAXZpIz0lIDGxuEmJrahmGSioAlCp5A46qQFvV5rvkmzs9anpc
	kMfkx/UClDR4Tg8YBs/YICyCWme+B05zBKjTjTvJWnjBqIjUru7mSP6jxsETTMZ0
	1TR1fimLsq3uBeLcXI41sgG+FbUVh+PMgd7furSa8U9/hbllU0U8Z3JCIaUlyvhk
	XsAvRnehecoOw5AkVucZb3NTz9ymt66GKUtmMQHU7LXtsYcrJT9adXREJp///96o
	GsKqfkYG+rTLNnxDCbU3gvn0J65UCpn3oA9CtUUbkGhCQscblktYCgOTgzA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bn34g8unt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 19:02:02 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a0d59f0198so73170245ad.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 11:02:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768244521; x=1768849321; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aLVUs8RtcG5zJUJL3atY+JbM0XEXRgp9E94lpJuF/R4=;
        b=KEJBYiBeSpm6QcRNHrEqG7qxgW74YSTB4/aACtv+LeYLsM8pCWDOoo/llU0s6lqewC
         wxPZtFXSmbANQRqgQtQarfVgtyz1oKq67Ry9iFw/fgWP1i0L8ff0RScbZLESDiCb1b+W
         8AkEJNFQDyz6/N5hc7SKtixvCoziFODYYgij+KWWyKfsLLdNsMEFPR7pXwuJtpgIOPat
         U4Bl0QmH+NYTqjoiX1isOjQvN8+g6sNrKxw5FXCUMZEXkAwtf1i/pw2zKe8+zJ3EuoKl
         iLbv/x1lqtePUQTfQexuZbCLn19E5MzIlUFntJypUPd3XYQyCRoANXlvGVfHAbcLxQ0W
         Zgdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768244521; x=1768849321;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=aLVUs8RtcG5zJUJL3atY+JbM0XEXRgp9E94lpJuF/R4=;
        b=FDC2JBNShjQy8mLKThCuowwiODeyVoWNOkEKDQedsJkeHmL04jIQNK81r4lqn/ZBx+
         ZWdpc6rcH6m5CVPi95Yel7CdwDShYAMR//TBqO7PRbGgZ/p3s44pd91AbG3pnwhCBCLO
         u9XI+BhHo5yMJFm1SQPent870r1v5tEB75ELDoBwyJavB2aT0lHmDn8xb6N/jmMjDQGd
         PpLAXPvnBHjn9cLkdwvEsOAhBXvtQ+j5RL08OaD9jdUZQfRBrnuFdLeIesRccre3eDkA
         4vzOI+wrAd6vfIDAcCRggNrLYnLjTNWW8yEIuIslQma9b+DYaEyMQcXKV4EpJ1RpNj3V
         5dHQ==
X-Forwarded-Encrypted: i=1; AJvYcCUUrRj1PG6zIyYUPub6QhtJEq20RuD1354yi6nrgeGL1JV5un+hNeBckzLVXzURsGbPRSRZxAdmpaT0@vger.kernel.org
X-Gm-Message-State: AOJu0Yyjsuhkw7wqUjIweuDZSjJ3wkvQ1MySbizQHk6+avgTAI/MRgma
	UTbqguLk6mOfSwEfNpwodAQO0XLIIKlGqonxTk5q+oKRdoJCuyEYaa7CpXMANGXuo3o/lqGlxnH
	pckt2wDjvOkZX5wkcsgo2KBAn8AE1l0WmEW9r27EJyUn3uQLrf9K+9N3hnYRGCokZ
X-Gm-Gg: AY/fxX4TBylPY1+R/JGo5+jeSQMk0bZ/EOXU5ys+67VkNlCea0OIBVMM4w9nYKBXcih
	Meb4Q83wcPN635WQb0VVO9y12hn+/d8HdU89gE09LKikZuX4wgoGNdNEh8Z6W1zeBXrlSnP7zj0
	xk3vVS4jCoSf6HSlL29Ke4udHUwg4MgPDOo1AYRZK8bwRZBFzmLx02sBqqS/68RHNWnglI923RW
	904JnVvxOYx/dwTTATRUiSl/ikRgnPfOnCHdYXYJYCP0BsYAVTVMBUtXT5pdZEof7IhwBphD7IW
	7TBTnYLckEBPFfQmES2eZ+yk04Oyvpyf/pCnNPARje43UjJXRlNIkKGXk6zlBvdNXCbSa/K6yRm
	AAaJBP46tRX0PxlzJCwgb+eYyMNTQq9EZ9eQ67tNarj8=
X-Received: by 2002:a17:903:2f89:b0:2a0:89b8:4686 with SMTP id d9443c01a7336-2a3ee4c0e8cmr158030545ad.46.1768244521292;
        Mon, 12 Jan 2026 11:02:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEf6hADt7tppLQS5Q1tjaUNG9MMWiX1tIFBn8NgzXU6c4qcr/XwpH5W5RUFOvj6GRH0/C6sKQ==
X-Received: by 2002:a17:903:2f89:b0:2a0:89b8:4686 with SMTP id d9443c01a7336-2a3ee4c0e8cmr158030075ad.46.1768244520655;
        Mon, 12 Jan 2026 11:02:00 -0800 (PST)
Received: from hu-ptalari-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cc8888sm180120595ad.76.2026.01.12.11.01.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 11:02:00 -0800 (PST)
From: Praveen Talari <praveen.talari@oss.qualcomm.com>
To: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Praveen Talari <praveen.talari@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-spi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        bryan.odonoghue@linaro.org, dmitry.baryshkov@oss.qualcomm.com,
        andersson@kernel.org, bjorn.andersson@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, mukesh.savaliya@oss.qualcomm.com,
        quic_vtanuku@quicinc.com, aniket.randive@oss.qualcomm.com,
        chandana.chiluveru@oss.qualcomm.com
Subject: [PATCH v1 3/4] spi: qcom-geni: Use resources helper APIs in runtime PM functions
Date: Tue, 13 Jan 2026 00:31:33 +0530
Message-Id: <20260112190134.1526646-4-praveen.talari@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260112190134.1526646-1-praveen.talari@oss.qualcomm.com>
References: <20260112190134.1526646-1-praveen.talari@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=fbKgCkQF c=1 sm=1 tr=0 ts=6965452a cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=i7xoKaWEWnc8ZE6DH4sA:9 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEyMDE1NyBTYWx0ZWRfX8vDt9mJsbQAH
 OKnFiKpOPrzsNU/VHdfVurKn6n3AcqQ0Q2R3FU1Olx4AVNFsSyMTaonR6KppDpETCRTnHf5L2XX
 dPjwZj8uSR76kaLPecX6bKTFoHBsj1Uv/cEdwDVnBCBAvqLgIVn4Z8wjN4vTb78gyy6vyp4fVWs
 AwTrqGJ1UfiwRtTVSmrMjLeaOTRm/R/fv7cbT5AuCxngkeW2gADJh1z+3kgQRTpBe5JKZB/JcZI
 Eluh5WWaor+z0q8NAlSAEnniOBEV4FvmYS6pdE9GOgSu7O9vQpEcX57MbOx6RE21vHLUyjnzNKl
 /7mAk1Nkg7ku1bp/bNDc3zeFYIYEHccNkusE0fVIF+v9oCu2Af8i3D4tpTUfo70M7HLgRL7F7px
 J0CqQiON+s8b+aYvxauxJcovO21ctb6SGpL/k0DLk+TmJ9K9GlUz8GCzqKUUGD/SrMiTK5w+UdT
 ud00dDdAH2CweU4J2CA==
X-Proofpoint-ORIG-GUID: rIiQqSh270UcL5xvk6R4U1fgI7GUJJHD
X-Proofpoint-GUID: rIiQqSh270UcL5xvk6R4U1fgI7GUJJHD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-12_05,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 adultscore=0 spamscore=0 priorityscore=1501
 bulkscore=0 impostorscore=0 malwarescore=0 suspectscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601120157

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
 drivers/spi/spi-geni-qcom.c | 21 ++-------------------
 1 file changed, 2 insertions(+), 19 deletions(-)

diff --git a/drivers/spi/spi-geni-qcom.c b/drivers/spi/spi-geni-qcom.c
index 7d047ae9c874..bf2b3d88693c 100644
--- a/drivers/spi/spi-geni-qcom.c
+++ b/drivers/spi/spi-geni-qcom.c
@@ -1096,33 +1096,16 @@ static int __maybe_unused spi_geni_runtime_suspend(struct device *dev)
 {
 	struct spi_controller *spi = dev_get_drvdata(dev);
 	struct spi_geni_master *mas = spi_controller_get_devdata(spi);
-	int ret;
-
-	/* Drop the performance state vote */
-	dev_pm_opp_set_rate(dev, 0);
-
-	ret = geni_se_resources_off(&mas->se);
-	if (ret)
-		return ret;
 
-	return geni_icc_disable(&mas->se);
+	return geni_se_resources_deactivate(&mas->se);
 }
 
 static int __maybe_unused spi_geni_runtime_resume(struct device *dev)
 {
 	struct spi_controller *spi = dev_get_drvdata(dev);
 	struct spi_geni_master *mas = spi_controller_get_devdata(spi);
-	int ret;
-
-	ret = geni_icc_enable(&mas->se);
-	if (ret)
-		return ret;
-
-	ret = geni_se_resources_on(&mas->se);
-	if (ret)
-		return ret;
 
-	return dev_pm_opp_set_rate(mas->dev, mas->cur_sclk_hz);
+	return geni_se_resources_activate(&mas->se);
 }
 
 static int __maybe_unused spi_geni_suspend(struct device *dev)
-- 
2.34.1


