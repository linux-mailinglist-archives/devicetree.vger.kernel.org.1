Return-Path: <devicetree+bounces-241313-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8F0C7C79B
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 06:03:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 4069E35AEB3
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 05:02:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FD332BE634;
	Sat, 22 Nov 2025 05:01:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nuwjSvey";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cEpuEePf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91FB72D23AD
	for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 05:01:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763787702; cv=none; b=bXqh+ijW5XEso5KDMCcZj32O+h3nyTWOfAXu9cZoQ9ZWXwwfEiQwuQknIITgg2PgPc4PF3Co0HRWLPXh/QtiIQWnZNMhEQQnHDpFnCTeu+0TS4k0XddQ1WIfTGYsOedqZYluopwPL6m4OiDPhlwU9FRP6vh3FqL6t1Dx5nhKztE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763787702; c=relaxed/simple;
	bh=pjl6cY91tXoDWcWfEEAwSSE3Iw/3tG+J8zq8C/zS7lg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=UJpyokJGKvUpUMsZNsvJCeraxIo0iggoJYjhg5k0MUJNCLR3yXjN4PrZf9Pcd9ekCO71S3XAqmtG3s6VkvTUtkbeohKnhpWU+eeW3vxiaY8gz3SmF2FF56NJnf+2ohM4lii/yOWDH/7EPaS5lOCINErbmYu/2Q5kH10QbeloC60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nuwjSvey; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cEpuEePf; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AM4m0D11253344
	for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 05:01:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=2E9YZHi8mVm
	UUCdAPl94Gdnvp6FNNgZ6ghFgArKR1ZM=; b=nuwjSveyM24yjI0jH+ly7AvqFFV
	kFOOcKUa2Ew4+4dqZDTWoyWLNmzZmAthMontcHTIWFlShtS675ZHYcLpnn0bPUDJ
	8Qyuf2PVA0RbbF9CTvsQSkXD97s4U8suXPiqktrQziF8CZQNQefYY153hPxcUSeE
	D6E9XRuK62ToM558lis8m9LxTI36UlclqCREKXlEFmrzL2ftU3kv3Gk9wz1T5fb0
	pTyWefuGFWVLKFHjKG0VfO4qdhxOcFIEwZJmNf7FvT8PVlEXNGSzOKdcVZRLnKxm
	MTwm6FiCpwH1+twCni6hN20aiB79Zxv2jrlzUa+6ZBMi/uruw/Lth9eEiIw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ak6f800rd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 05:01:39 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-295fbc7d4abso41333995ad.1
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 21:01:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763787699; x=1764392499; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2E9YZHi8mVmUUCdAPl94Gdnvp6FNNgZ6ghFgArKR1ZM=;
        b=cEpuEePfdyKRJQv3NMe2tkTkHwoWpQUwzLHHYhfQk0WjxVw3HPHDEAlju45bBFvkAO
         09J5htsrGRsTWL1I7Ayp7ROWJj7aVkuYxn4jZfd7pZdrXTcZ/C9lHDR64/PfdUbqLosm
         UiCeMQAW3UK8Y0f1p1itdFWAiDEO53jolcWvES5kFZ4ulNo9nWkGO0rGyhT9d37/gu8X
         J76HNgxsQMrCtgt0+wDS2S1td9pFHHhfjL8qmz6kaSsyznxxbsll3Mj9UDsjGJ8z7JYs
         HwfLikcAe2NGa9X7bGQIQ+PwdWyqhhGzl18mQAE2kwCL/a131zIJLQZrKATs+YDLE21J
         MHfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763787699; x=1764392499;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2E9YZHi8mVmUUCdAPl94Gdnvp6FNNgZ6ghFgArKR1ZM=;
        b=O+PD8PSc1pIVk7kvtTd2t+FHX+6qtzxwFxrzT0Y6aZXAVVuMrj4+Dya2exZ2W6Y2tM
         RG9jScM9umpkPNeawVDCLorVF/yES1kJp0rhPnT7TCI6y9Zdjp1ubxZAj5hemXm0aLMh
         BxDBGuDL8QgAlebI2IPBjScQsQPWYtAaW4heb8fG9NFW6+Q0m/wpKZU4w2QyuZV2/N5G
         nz8K43/VzLuTZCMk6E5TdfB+xmzVFDswMcrA0IO3TA1NBmJAifs1Ftg48axEPfkKDa++
         HbU6FUcUJMXRPmFRvUfYGGLoBRR3+uzyKLXOn3UDTywSL4ql3p5bBWOsiQMBWzxzOJpy
         ou9A==
X-Forwarded-Encrypted: i=1; AJvYcCWSIbx6r+yz6wsNz94TVWe6bQzj29hiJOccZORwaIbpzUaEN3z3NB1jC0Gh1nJ/pNdesryaZoMApaGZ@vger.kernel.org
X-Gm-Message-State: AOJu0YyYrjQ8XVKmhRdUXW/aGJqPbh7E1CtjovD5+2nwEYsdmnqzEUpL
	vLy6R+mWSDXt2Lz8SF4tcBGy8EJh69cv59moJWYLpg2k6rb83XsbweH1GgBcYW9lZfIgS9psEq1
	j46anWWeeIFyKusKIvr5rrga4+ZVsQ5qpP2N/D/XvuzW1PPANtPqI5zxN0ZzOgT1X
X-Gm-Gg: ASbGncscOYVOON3fXfEATKiqQmvlXcQTk3BNoAgpm2x/TOitia5VIWfTlRCy/5msW0K
	eyyrs+P9uyh1o535Xb0HjeGrGZAhIXyhshqeAgKjnVE6NNNQZbwH66r9m9jb0YtV0LzWVOtFan+
	ft4KnEu08DFDtvrpuxmG8QOkGQFFs1YLxzWBd+KKpgTYEKTVAZsSN0m2jgmdh63PnWG9wpZAWgd
	vSfDZOnlI/FVC4Y8lU75X/IgpKoNsgz34rDlBj5aJdDABRhYo8ne/rFN0gtVuK76vAIjfL7IH60
	DXrK9wN4lTWFKIhWqox/xec/7wG/ZEoYvq6ag5LK+sBamike5Uo/b2MKD06fpXaor+iy1aU7e67
	Sh/NIDVojVUATNJVKCyYsPbm8rviJvQM08hRoG6iNGSM=
X-Received: by 2002:a17:902:fc43:b0:295:73f:90d0 with SMTP id d9443c01a7336-29b6bf76f59mr57983875ad.50.1763787699087;
        Fri, 21 Nov 2025 21:01:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFoRvXLUuA8WOlFW5EjeyHiUFDI6eRZdYMUcLr1xpYwDsGXQPm3VjjJU/KUwQK2LYPNTZeJhA==
X-Received: by 2002:a17:902:fc43:b0:295:73f:90d0 with SMTP id d9443c01a7336-29b6bf76f59mr57983435ad.50.1763787698469;
        Fri, 21 Nov 2025 21:01:38 -0800 (PST)
Received: from hu-ptalari-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29b5b138c08sm70688725ad.25.2025.11.21.21.01.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 21:01:38 -0800 (PST)
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
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: psodagud@quicinc.com, djaggi@quicinc.com, quic_msavaliy@quicinc.com,
        quic_vtanuku@quicinc.com, quic_arandive@quicinc.com,
        quic_shazhuss@quicinc.com
Subject: [PATCH v1 10/12] i2c: qcom-geni: Use geni_se_resources_state() API in runtime PM functions
Date: Sat, 22 Nov 2025 10:30:16 +0530
Message-Id: <20251122050018.283669-11-praveen.talari@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251122050018.283669-1-praveen.talari@oss.qualcomm.com>
References: <20251122050018.283669-1-praveen.talari@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: VVBmDDjDw3mYBsRmUL_Iy_elUXdKpHbU
X-Proofpoint-GUID: VVBmDDjDw3mYBsRmUL_Iy_elUXdKpHbU
X-Authority-Analysis: v=2.4 cv=SINPlevH c=1 sm=1 tr=0 ts=692143b3 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=467v_uBPdO_cN_CSUdMA:9 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIyMDAzNyBTYWx0ZWRfX6wnNzyrJ9qal
 q0Nj36hXXE46K1iyPj0kPy7nB/lpf2ab54vNAHvk+xGGS7IbQ1uDpBoFG3f5KrrFRPGWYK9xVmY
 p1NwZKfL+1xhNk23oJ0UZdAsCjPWMgtTJSl7pmYxMdkS9kDPk0AkJc3le21OVGY77O8daNrsWYO
 Unrl90DqfsVH/2tItJE8bChYKm0ZPYpL9VEtcByVd2eLkWltHSRvs/tb/nuRPzIZ36vwjsEEqon
 oqsOrIRvf6ZmJam+Oea6LkMm6H+qdyTjcjaPhf4+RJGkjgtnYbrI2Fy3ZZ7UTa8oBbDzIO45pwU
 5mf79wI2sIQWy4td+mnXaJuBDGh8JCLhbzPM44jD5Ng+r0guFKa72JLz73FXP4pHOf/AZzkwVeC
 As0zglRPA+BqYT6NUPZcqnGxRdtHjg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-22_01,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 impostorscore=0 clxscore=1015 phishscore=0
 bulkscore=0 lowpriorityscore=0 malwarescore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511220037

To manage GENI serial engine resources during runtime power management,
drivers currently need to call functions for ICC, clock, and
SE resource operations in both suspend and resume paths, resulting in
code duplication across drivers.

The new geni_se_resources_state() helper API addresses this issue by
providing a streamlined method to enable or disable all resources
based on a boolean parameter, thereby eliminating redundancy across
drivers.

Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
---
 drivers/i2c/busses/i2c-qcom-geni.c | 28 +++++-----------------------
 1 file changed, 5 insertions(+), 23 deletions(-)

diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
index 790cbca2c22e..ea117a4667e0 100644
--- a/drivers/i2c/busses/i2c-qcom-geni.c
+++ b/drivers/i2c/busses/i2c-qcom-geni.c
@@ -1166,18 +1166,15 @@ static int __maybe_unused geni_i2c_runtime_suspend(struct device *dev)
 	struct geni_i2c_dev *gi2c = dev_get_drvdata(dev);
 
 	disable_irq(gi2c->irq);
-	ret = geni_se_resources_off(&gi2c->se);
+
+	ret = geni_se_resources_state(&gi2c->se, false);
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
@@ -1185,28 +1182,13 @@ static int __maybe_unused geni_i2c_runtime_resume(struct device *dev)
 	int ret;
 	struct geni_i2c_dev *gi2c = dev_get_drvdata(dev);
 
-	ret = geni_icc_enable(&gi2c->se);
+	ret = geni_se_resources_state(&gi2c->se, true);
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


