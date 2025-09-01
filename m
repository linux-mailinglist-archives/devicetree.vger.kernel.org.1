Return-Path: <devicetree+bounces-211405-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DDC2B3EEEF
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 21:53:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C1A641B210DC
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 19:52:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87280269CE6;
	Mon,  1 Sep 2025 19:50:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="imyTR3qp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E30AD267729
	for <devicetree@vger.kernel.org>; Mon,  1 Sep 2025 19:50:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756756246; cv=none; b=XiOBBwuuqqjmDfPkY1mU7alICOuIGmmTDK6i51p8nY8xRL77z2MyE+ofC6iz52/5b1w8OFJH0fIiAIaNcPgSSC/CSpqkHeHqxbNfd9+OyWNowHU82BJwqOx9GtOq4TsJA11VtlvhR6wkKXGr+ahwJR4MKEAoCMIMKwA8WmeEBSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756756246; c=relaxed/simple;
	bh=AHDigbA4loghQH50YBF+v6gAajTjrpbOVptFQwr8VLs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Iz2pI/SlJqupzOPrOVBEP9gNY9FkJcybyD6DCJzw9svNyquGbnH1Akrxh4gqjdYcGCyAR6bTY4YCWPMkd7iDiR9uQmJ7eVgL5ItiVhFJGmf9CAu0MPa7BBfizvAdRlQo2dyq5/c+/nq9ltKPUPGYlMREZC5A0O4Obal9D3afrvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=imyTR3qp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 581B42mC016470
	for <devicetree@vger.kernel.org>; Mon, 1 Sep 2025 19:50:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=KP9gxy/yT7A
	kFjO18af3WMChPo0w9IcOx7eEoNmhqBs=; b=imyTR3qpJ/C5LAr8nmjal70PFbV
	AfryiOjG0FwpPcJTjYS82crnhrZjBauAOsF24kmQDDQDEMkpAl7gHPDQlemwslIT
	mUy964iP+WGjOZUj0MAY/ZpNPyddn/rxzz/11demA5d1iCW+OP2NXFgpK5JxSxIM
	/pYXYkLDefz6zQSt709zhXMRgF8MsL/FYPNnHZiki+27rCX5BNNzRqEN0hxymVf8
	JoUbPqgPJMgDZ/smXQlHZDi5lLSK7ePF4Tzo4gBRNLjCOIk4Wyj84zh+CgT5UOHy
	6TtLGPZdUX//gkus3z4SCunkE0AFsKaZdtw7GO98Qy0AUGaHoQwAV2GoNYg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ush2wm8y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 19:50:44 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b325446155so37973061cf.1
        for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 12:50:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756756243; x=1757361043;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KP9gxy/yT7AkFjO18af3WMChPo0w9IcOx7eEoNmhqBs=;
        b=kyajmdKi6K7IjGLqwcccqLOixzrmbc+mA39OpejlRG751RGr5iCkrNZf4+zYy9G2ei
         Lemqky3nbjMJ8vCoyWJkoEmHKwTiabIcAro9Rvr9NsKAoTtdDoQYR0sIVoH8xsNmSMa6
         qfEBeNuMba3WbX0wUwqNS7kq/rr81E6TEdN/JDmXElxWjy6Lbdxo5tW8ttNiaKjCXt69
         TFjYEpuxWw5mqBQjnt8OMSUUECePzJcVyNl5MBbsrD97vx+l3u5WgKxqGdb5lT60wmRh
         NHtJ9QYoYGzTf4Ks1Qm9oGv7YLVz1AnEBI7LLswNUbKMCSlNdY0GIPehnM6QsCGCozC1
         rrTg==
X-Forwarded-Encrypted: i=1; AJvYcCVglE9j3Z9oLPrcYUBWpTxVV9wSH96dYFAIQY07jSD4xsWAYujbxr1lBp5+m/z9R2x16vVFJIvG5GAS@vger.kernel.org
X-Gm-Message-State: AOJu0YyBe4F4jACtvrkH3GItHS06HFecFA/gTTQypiQ+PcwCeAbJ1ESt
	Ro41GD+ZGhhmbYj4IO0L5FtoeI4VooYJvHJxY1LHnOU2+tuBuW9HIRI+SqDQhMkeoGNvqnjYh/8
	cEiICyHNCh5T4NJDCA99MimBcv7/VmfeSZ6lUwJUuvKd0kD4SI8vEgQLaifiIMc4Y
X-Gm-Gg: ASbGncuceqfXEfa8suFWSgd/hs7Kn0XUbiwCTJGZ/U0nhF+AwxFNZuHFxqWaHR2BqLq
	xG2kxk3Fi2HGAOQatR+NDaYPOmo9LgW9hsd5ZC3iTmLaeRkztM5ypITy6obqs8dwTKYrIQMCWD3
	FN2Q5/2dy9+xdZ06ra41q2nYq4gQ2VPBb5y8QDZjQZ9OCnnHU0JQoGpdN/4EWOlx2HX0LCfJDDy
	wwx4jUovhnLdTExkviFRCBBIvVrAS5yuCXgu4Yi05qkTsphqnKV7Fy5hLkStli73GnkCVoDTpZP
	hruvW1K2I2k6oJSDD9p/3OyquXP2kG2gXqD1dgQKHzRCRvaKK4HbdA==
X-Received: by 2002:a05:622a:4c0e:b0:4b3:19b1:99d4 with SMTP id d75a77b69052e-4b31dd773bdmr129174921cf.80.1756756242751;
        Mon, 01 Sep 2025 12:50:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHan+WHaBp9LzvOWoHXnc20EoeTJqcyjwxwQPX+w8HoCdoNYZlsGeTqQbkfBLWcrpSldlgPsQ==
X-Received: by 2002:a05:622a:4c0e:b0:4b3:19b1:99d4 with SMTP id d75a77b69052e-4b31dd773bdmr129174671cf.80.1756756242367;
        Mon, 01 Sep 2025 12:50:42 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3d7330e4bc9sm4653705f8f.10.2025.09.01.12.50.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Sep 2025 12:50:41 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: robh@kernel.org, krzk+dt@kernel.org, vkoul@kernel.org
Cc: conor+dt@kernel.org, srini@kernel.org, yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.dev, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-sound@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH 2/7] soundwire: qcom: remove unused rd_fifo_depth
Date: Mon,  1 Sep 2025 20:50:32 +0100
Message-ID: <20250901195037.47156-3-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250901195037.47156-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20250901195037.47156-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzMiBTYWx0ZWRfX/yJNK0bZg3S1
 8sXPjrGrJ4nHuIDKvwnQrxW2g/eu5e7I/gWA8RAymIE6p9AqLEuI1Zjdg+UaUVWljEsNraeHzlF
 wRCAnKCbJ6Ac8D/Xrfl3GnUr55Y3Da6y+Uv4ra6rT3Tem3DHTmJnIzmjltPRQxJYnOZ25t/R3z3
 GjIxsT7IudPemEONhIoJNojT38WEiVe6tYipg2nLpaXWMPuQlfHrEGMcJieU4pKW56zq0gl7tcz
 07wHN6kmoOdtYScbfp76saE8PbjnCG/Nu/LklMHKlLdz+4PgAGFoVPH6kB2YhjMEr/TP9WAFkU5
 y1r7XOJ6BM55y2dzW4Xb4tAb9uZ9+1ngZlsm96k+B0U3ntVJry6eJ59ffP+ePA0mcu+5HBkqETC
 in/zRbrl
X-Proofpoint-ORIG-GUID: 3DOoUdv5kI_UigLuRGjzf2lmJ6ge4lQ7
X-Proofpoint-GUID: 3DOoUdv5kI_UigLuRGjzf2lmJ6ge4lQ7
X-Authority-Analysis: v=2.4 cv=M9NNKzws c=1 sm=1 tr=0 ts=68b5f914 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=gsLITZHy2-c2cRxuoYYA:9
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-01_07,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 clxscore=1015 suspectscore=0 phishscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300032

remove read fifo depth field parsing logic, as rd_fifo_depth is never
used in the driver, cleaning this up would benefit when adding new
version support.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 drivers/soundwire/qcom.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/soundwire/qcom.c b/drivers/soundwire/qcom.c
index bd2b293b44f2..7f19ebba6137 100644
--- a/drivers/soundwire/qcom.c
+++ b/drivers/soundwire/qcom.c
@@ -209,7 +209,6 @@ struct qcom_swrm_ctrl {
 	int (*reg_write)(struct qcom_swrm_ctrl *ctrl, int reg, int val);
 	u32 slave_status;
 	u32 wr_fifo_depth;
-	u32 rd_fifo_depth;
 	bool clock_stop_not_supported;
 };
 
@@ -898,7 +897,7 @@ static int qcom_swrm_init(struct qcom_swrm_ctrl *ctrl)
 	swrm_wait_for_frame_gen_enabled(ctrl);
 	ctrl->slave_status = 0;
 	ctrl->reg_read(ctrl, SWRM_COMP_PARAMS, &val);
-	ctrl->rd_fifo_depth = FIELD_GET(SWRM_COMP_PARAMS_RD_FIFO_DEPTH, val);
+
 	ctrl->wr_fifo_depth = FIELD_GET(SWRM_COMP_PARAMS_WR_FIFO_DEPTH, val);
 
 	return 0;
-- 
2.50.0


