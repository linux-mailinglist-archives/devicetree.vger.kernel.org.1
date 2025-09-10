Return-Path: <devicetree+bounces-215398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 62941B51596
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 13:27:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D9F78460C2C
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 11:26:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD2F427F73A;
	Wed, 10 Sep 2025 11:26:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AhMdYRrB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3126A27CCC4
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 11:26:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757503580; cv=none; b=E1uZol/LzDDIFrppYj3Cdc65gFPg9jJqkaWT2qcABJlleSOTHSqlctHGkSiRoMc6msqzRYz99IqMi0LqPpbc36QM0JkpWBsPmbVKxgR9GyKxmbIm4r6hjqYxGxzAUmN4WCSJ9AgopPnOEM+d7WQ9v+M26ndyZ5/0+ouDFczgfP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757503580; c=relaxed/simple;
	bh=PL01mJ0RQboPDnIbyuTFQL2+JjE45/PjCXjxeBASbKU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dCwWyGLlZscdxv2owC7UT7sX9BCPHiy25HEmvHXCO7KpoGlXDIdr41a69igb6WDt6ox0Pg0TxrqHxpWCnJNtE9MhNNslGEUh7e/Q+0ofGnRL2qQjxYZT+B6OK6TTVW0ju2tdrh1weiufWOTxQMy+48C0FtLw5uFyDlMi3j0mRzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AhMdYRrB; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58AAFK9M012751
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 11:26:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8xCz4z0Bi/57zqJUn/Mu/aLwfF4knJr/ZgFBZ7thB9k=; b=AhMdYRrBoiwiY/1V
	xEChmpMDD1v90QbkJStq44JDSMtwAiIA8errZSW444pOjGSTp0lDVRqIkqamX+bB
	h2Rfolu5xm5Wk1E/5WAGlQ/VJzODA+7N6oXEb0OazwdyXgkJcmqOrBmr2EQzJw8K
	fMb01O+kLFpyePaRS6JFxPiVZ1rHWia8be550csJqrGqC9S+DUc6+PQz0PoYCOfL
	L+L2cUtWUuso3UfRfYUk1itKgJe8LfReBn3ak0aSvSRrdvIl+CMn64gY2sprwcx2
	aGfNPxwDPr3r7y0sxKWQOUOeeoJNW/hU1xi6LceifgOWbbbu1zFLNziy25vqZ5Xu
	AzgqJw==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490dqg3eyp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 11:26:18 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7725b4273acso13597384b3a.1
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 04:26:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757503577; x=1758108377;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8xCz4z0Bi/57zqJUn/Mu/aLwfF4knJr/ZgFBZ7thB9k=;
        b=SV1r2X+Ewf/9J+zfz12lKZMZPlmLK55bMVu8JaOG3wwOKyx9xoWQfEYYWAfvr9lVLa
         YVcAd+jLtxvUZYdbWf1ZicpAEE8I/+G2N9VVJfBk9MByLzBf/8HJ0c+z3F5CtJEvRu3/
         JKxnUI2X66/3+hZXZzSH5t1mlv2dDN1UtYNkqCy8C6yHaScSFJHVKYIbwaVzPtX6GpH1
         UKG2HCst2ObZIZpqr9cONUckdZY/HSEJQIRGtFgy/A5/KRiT90fjfCvWizwr0WipOs8P
         oefSmq0+C5ahqV+SjDa4OomyIqoAyNCBriou/+vkHIS/I2QKD0q3dmHiHh3ibPWPoXaF
         hcNQ==
X-Forwarded-Encrypted: i=1; AJvYcCWorMwvaQ/X5IdcC5Sg7HOCKJIokrTNVi+wOePz/c6wf/FgnlayuqMSUh6eggHh1NUnm6M6LElKER0f@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0wuruofC4AWRVsgNox5c79YeX4h52dVTwML6RQt1xQbnA6l7g
	SF6slTe0/uoxW30qbYnT2Qp8pTBuMz5NQFD9dOdEFCo85tW/NSuZFraPk/PAiHwuHLSnvf9pR2i
	NzEa0hGWt2dnAuTwMsu56l6y/IWO+3eLgDtxe83v8SFiDYjfzU3j5JDUHGjagSOr1
X-Gm-Gg: ASbGncvdnTEUjGczssyd8j9ujbHaL1J4BPbJcil0+J3Prz9pk6zV/ZzQjmuc6opPZjG
	e0adEQF5G+8EBB7Z5o0ui0B6e6dGP+fmIFBn2XoSxGyl6rIl33e18Fgh1nogtxQoEAVOTZBcpou
	O2RL6/T0krkl8m96NcE0h43BbRRTUxXmDNVskJJvAf/PWC6OzZQoOYmwHhYag4LcCx0uaPjvZTm
	3bdmbQXkxFyi6t9Y8UrQ+d6kOiDzIUf6pC4Mg82rQPknbIlF4A4OdVgsUl1Q1h2zcavVOwB5zXe
	HslrPFGkboaoi1ZJVV8dV1tn2O5cHXjHDYcO+3dirFJvivmLFC6K495D5QCi6KCM
X-Received: by 2002:a05:6a00:4b01:b0:770:4b1c:8155 with SMTP id d2e1a72fcca58-7742df2f3bamr20536941b3a.31.1757503577274;
        Wed, 10 Sep 2025 04:26:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH+QDB9UfSTw2dpK6r9PESzhtTxePgwetKm4/3FAkoGJBYT+EgDiwgz5uRPw9lAa0ANlB5rGQ==
X-Received: by 2002:a05:6a00:4b01:b0:770:4b1c:8155 with SMTP id d2e1a72fcca58-7742df2f3bamr20536906b3a.31.1757503576750;
        Wed, 10 Sep 2025 04:26:16 -0700 (PDT)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-774662c7384sm4862260b3a.76.2025.09.10.04.26.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 04:26:16 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Wed, 10 Sep 2025 16:55:22 +0530
Subject: [PATCH v6 2/6] dt-bindings: nvmem: qfprom: Add sa8775p compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250910-a663-gpu-support-v6-2-5da15827b249@oss.qualcomm.com>
References: <20250910-a663-gpu-support-v6-0-5da15827b249@oss.qualcomm.com>
In-Reply-To: <20250910-a663-gpu-support-v6-0-5da15827b249@oss.qualcomm.com>
To: Sean Paul <sean@poorly.run>, Konrad Dybcio <konradybcio@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Connor Abbott <cwabbott0@gmail.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: Gaurav Kohli <quic_gkohli@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757503556; l=928;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=PL01mJ0RQboPDnIbyuTFQL2+JjE45/PjCXjxeBASbKU=;
 b=jbHbZpOfOJnlTpNnSBL+ndOzzQcLInmZVQoFwGPwAfCej3VR+/xoFNWKsr/YC7aCrzP97N+4w
 KVWvC5iBnK9AOH+xqLminNazLWF26SM4yGMZR3CsuW/pcOFkMFDYIvJ
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-ORIG-GUID: rHk1ZlAZeRUi3ESRIhi6pvYbvwTmcYfO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzNSBTYWx0ZWRfX9y2l/y/bK9oK
 Dy1hqR+2VZCKlFN9r6f1sX3VSrQrKXgeYYPfok8uVOOXKNvcTtAqGafT1DavpN/HW9s3YVleACU
 fYaw0fzaErOQAV0W4y8ESH9X4OAlkxS7+fCJkoGNx5gVnAwV56Xxu6bq1eaU116fydJBLY7sTVI
 5O6zdIy17Poe3QGia2bllepRdc/7iT/+mOGUlvuk9PoukC2OvTGGVdAs07UT9h3WXzbgo7XNqQT
 CKvJfs36KEx1urbBvNEGmqnzkmX+R2OVAryu4QvtDBfaHzYhmrxU81Z8eSpORRfzTipflrkBJVX
 Ff1FZoQlZRLl6SC6N8cABjaG6ivKfvTHIuhhW5fXI9sTGB21ZbveDU81G3eIbGml8BShKRxkLMK
 2FHWxFQT
X-Proofpoint-GUID: rHk1ZlAZeRUi3ESRIhi6pvYbvwTmcYfO
X-Authority-Analysis: v=2.4 cv=N8UpF39B c=1 sm=1 tr=0 ts=68c1605a cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=TNpnUgr77EDisZP18eEA:9 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-10_01,2025-09-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 malwarescore=0 clxscore=1015 bulkscore=0
 suspectscore=0 priorityscore=1501 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060035

Document compatible string for the QFPROM on Lemans platform.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml b/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
index 3f6dc6a3a9f1adc582a28cf71414b0e9d08629ed..7d1612acca48d24c3b54c4d25fa8a210176d3bb5 100644
--- a/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
+++ b/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
@@ -39,6 +39,7 @@ properties:
           - qcom,qcs404-qfprom
           - qcom,qcs615-qfprom
           - qcom,qcs8300-qfprom
+          - qcom,sa8775p-qfprom
           - qcom,sar2130p-qfprom
           - qcom,sc7180-qfprom
           - qcom,sc7280-qfprom

-- 
2.50.1


