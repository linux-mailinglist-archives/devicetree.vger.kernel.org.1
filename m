Return-Path: <devicetree+bounces-234665-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E9931C2FA4F
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 08:36:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 108C43BCD47
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 07:36:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB81B30BB9D;
	Tue,  4 Nov 2025 07:36:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Wp/FNPGT";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cI5j7OYb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D66130BB9A
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 07:36:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762241780; cv=none; b=F1IWrhZkHWNECHkR0kNM+XFzbHB1bciggXl6Tr39fDHerwZS0mnysJWF0akymsRig9ADlD4kySAPnQikQwSCOtthrriMeL5E1tEEUVSZcCOPNWTgAf4SgJ6vekUMc/5rLECBLJxhyjVhleJKSv/tr6FcW8VUNxN6qvxz10OCSis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762241780; c=relaxed/simple;
	bh=FmKGIfydpIBvZwHLGbtykFwsfVO47sNP+uEYs4V3KtI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KQ4rERBq5vYxWJaEZLao2DTWY5y1rqSi5zq/9fiD7knJSnwa9V+8icNGD2XR+usuvOtfWNV3Ztu494vTiAVuYl/uT1XRDg+rh41Jxa20E6AajqH1BL5ociY62/7X5eA0UZgyS7E2dmjP2bMI3D1VoEWPav2CbWHxxnQRQboai6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Wp/FNPGT; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cI5j7OYb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A43P2tQ904583
	for <devicetree@vger.kernel.org>; Tue, 4 Nov 2025 07:36:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LqXRNN5WgLhy970VZ7+bHvuWbBP7UIoDXfqq5soCIW8=; b=Wp/FNPGTlUw0CQot
	majLNEPt2dZeq+WVsPM1J8lavB2b4ZupyDrhpja/jGg7y7ABn1wjnTgvhIcJJTGs
	0LpnPWSFd66YRrHiHZDVJZ+ZCYCq1vSNld6t/8/xjzZnXrzHAR0N8hul6h5GznSg
	04VLfGMSUr2r9KAHN5GGRIF1rfueCvnvb9Qdhuu7xjQuYdiX2y4dmk2I9q4Hbzat
	jujGD66rp5ipyAl3oY7ijCVH+M0RkeGu8RvFzgxTo8o29mP+pdVXSqD0c6rTrKmA
	9/BTGM1bGwX78bSPAJ7EBeLZGnGe/k2/mEOFyW61UHd+bh0xNQO/OBy6bOzNdI+Q
	qlg6hQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a79jjrkn6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 07:36:18 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-340bc4ef67fso3923906a91.3
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 23:36:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762241777; x=1762846577; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LqXRNN5WgLhy970VZ7+bHvuWbBP7UIoDXfqq5soCIW8=;
        b=cI5j7OYb3eW6Cyt+HZCpTkne17fCCsiwMHG8fIUD58NXQWyvpAHf5biuum6F3rnTcX
         tIs40iKB80MbLGbtNkg2rg91WVwlINPWVPr+CiiGcJSNbhsz7fojVt8zcFtUWtNmdcSF
         nq+O9dT4CzxOCX+lxI2GHb0tf5+CtFv/yiHFLQONjpsw9yA/4gGIA4hxktBzBOlDD4Gm
         pRsBlE/OfzoN0ZY5eMS8yVQQhqOrA1+roKOtKaPJJvmljLL6uEkYYogLO/fIyZS/fUB5
         0+T+VralA6/5E+xumYmPSAhJsBpWN/TCCcd9zxUoAunaECbbNQGIehFYet5OBoDd+ahn
         PXcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762241777; x=1762846577;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LqXRNN5WgLhy970VZ7+bHvuWbBP7UIoDXfqq5soCIW8=;
        b=RKzGeq4M8ukvducpnurxGW+0Fv4op898cnNwcUECUmE9k5kitcPMw6qj7aVkUBtauC
         S7rSQTnvGHlDYzX5KhOn28DVg0k7dShOhKpS0XSq7mZYfpQdQXyt/0yNWzxRQyFjrHa3
         gTx2i8xWKCHm9iKSL1jjayqjZhamC6pH9tdxcJT5VqQQKKkDgMOhP5rCdxoAOCWP52Oi
         AwJu1vKQ5zLTRG/HwVDagYX1fG6P4KDnewqhZoleu2cNaE5RAQSd/U+DaLtEC0CVM6OM
         AICLvqRvM0Pm+oIk9TzrNe33Oj1o4YQBmCOY7+k2hqd2ot8RRVPrIfbN7ZnaIOqYgEep
         0Thw==
X-Forwarded-Encrypted: i=1; AJvYcCWNspwZ6NB92/Jo5c3pvyNQqguNgVt0twS/iyy2dQuVrAe8/oDx6BT7aog0Dd52QINdI7Fp7x1HOkqv@vger.kernel.org
X-Gm-Message-State: AOJu0YxWjworv1+rbxovsc5gpFqE4kt80nu8oGucUigEEAPLxzcRBU6N
	x6onChW1OK+5eVBWvTzYbvuc6bTZJzrHXM3Abdcu/vrkzJlyLo/M9rNqD7PrTBOTMQDLgxEI97T
	JZPXG5neIq56GGtKPCxN9Oajcit3bW+YqSqOCm8iSMw6k091N55bHPW+xnhyrWYlW
X-Gm-Gg: ASbGncu0u1WtgOg9kpLqS3g23v0wO+O3cPdATuZdWHwjnXsZ+w3hObqaLNaJWdXOEqi
	olFYUQE7xsx6qYLv4I3DZqzFJDsZJX+N9CKEp1TWeC3l+6gj6VmbJ3ZE5AyEiS56S4z90f6bPlM
	d85r0VuHjOS8PT+TI8XXrkaIBaQePGR/+vQVU35TFMezPL/rooK/9AZme9b7kLzqLioAdrc6+nz
	jQxz/Oe4PRg2XU26qtcgfqGkSJbxd8rsW8CW5lpQk2f8HCCMr6aeN57hKLkIe/+PgZIYX5f6wcW
	ebBPOyqyJ1SJgzXXmIMy/1RrQZrZyrhKjLUHUmKeiU12TutF8hqhWYPj5npxndzrfcUHTaYJ44z
	X/PGCrcBbbOEtUo6ODG9l6CguAw==
X-Received: by 2002:a17:90b:2b44:b0:340:f05a:3ed3 with SMTP id 98e67ed59e1d1-340f05a4111mr11891001a91.17.1762241777220;
        Mon, 03 Nov 2025 23:36:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFC0zzraVPxykKEoWBCgsKtSlR9peX7tZKI1998OGHVxAi0b3AuVr6yJ9IR0P1G35ZoVuRFiw==
X-Received: by 2002:a17:90b:2b44:b0:340:f05a:3ed3 with SMTP id 98e67ed59e1d1-340f05a4111mr11890952a91.17.1762241776608;
        Mon, 03 Nov 2025 23:36:16 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3415c8b5cfcsm3484367a91.19.2025.11.03.23.36.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 23:36:16 -0800 (PST)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Tue, 04 Nov 2025 13:05:42 +0530
Subject: [PATCH v6 02/14] firmware: qcom_scm: Remove redundant piece of
 code
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251104-kvm_rproc_v6-v6-2-7017b0adc24e@oss.qualcomm.com>
References: <20251104-kvm_rproc_v6-v6-0-7017b0adc24e@oss.qualcomm.com>
In-Reply-To: <20251104-kvm_rproc_v6-v6-0-7017b0adc24e@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
X-Mailer: b4 0.14-dev-f7c49
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762241765; l=701;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=FmKGIfydpIBvZwHLGbtykFwsfVO47sNP+uEYs4V3KtI=;
 b=JaZMbmQPwIaJzEwbqi26osYgo8y3y8kiIBl0iE5kn5gZ4x4ye9GXg/gks3sL/Cs7FcDBR7nMs
 zO734FNyCQcAIWUJKEm+gpEv0OfPdPdaWUU5dlR2GEWi4HhpZmqmNwx
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Proofpoint-GUID: secrdClp6u4pVaq-DKICBF3qheR8xeeh
X-Proofpoint-ORIG-GUID: secrdClp6u4pVaq-DKICBF3qheR8xeeh
X-Authority-Analysis: v=2.4 cv=TuPrRTXh c=1 sm=1 tr=0 ts=6909acf2 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=QKOBHnd7J3GditHIzEoA:9
 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDA2MSBTYWx0ZWRfX5huoCo5zm15e
 PqmFVP6p1XRGMBhLgn5v4Ycblz5gjD9wgwH/rSe8xm+y7PCAM5yB5NzljpMEZrzXQE6iok/YEo0
 T7ieq0l/wyY0qMBbvlSS+AzXhADMQqOPAmOnZeYgA6x8fKEGeCxw6omVamSJoSPXYp2GfTPKi3d
 T7E/yrcjkG8t5dr9MPj2H3xyJxfjw2rj5BrOGPx6R+po/IfU+Jdd+7Jqm5m538yTX9jzS8fuIGf
 7FLgCU+tN6VMMe4beb2tFJyVcFm4SoM1Z3/Rrl+R4bc6FM4YzdW6/I4PDVFUxoJ68jqcoB5x74Z
 4spX2TdLhvfwNbiJa8qCJJqZ3adtImfEQ/yr+/79i7y+QA6IQvPF3h2mmf0SjgbfgbcKZKMxoPX
 2khKv4CyXhTl3/xM/omirJSJuX1AWA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_06,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 priorityscore=1501 phishscore=0 spamscore=0
 clxscore=1015 malwarescore=0 impostorscore=0 lowpriorityscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511040061

Remove some redundant piece of code to save some machine cycle.

Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 drivers/firmware/qcom/qcom_scm.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
index e777b7cb9b12..26969bcd763c 100644
--- a/drivers/firmware/qcom/qcom_scm.c
+++ b/drivers/firmware/qcom/qcom_scm.c
@@ -650,8 +650,6 @@ void qcom_scm_pas_metadata_release(struct qcom_scm_pas_metadata *ctx)
 	dma_free_coherent(__scm->dev, ctx->size, ctx->ptr, ctx->phys);
 
 	ctx->ptr = NULL;
-	ctx->phys = 0;
-	ctx->size = 0;
 }
 EXPORT_SYMBOL_GPL(qcom_scm_pas_metadata_release);
 

-- 
2.50.1


