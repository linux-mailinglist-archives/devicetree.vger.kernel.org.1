Return-Path: <devicetree+bounces-208800-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E77B334AF
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 05:36:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BD64817F4B4
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 03:36:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91D9A265637;
	Mon, 25 Aug 2025 03:35:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oWMhVuWh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF6CC22E004
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 03:35:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756092945; cv=none; b=Cjt/+FpOV+W1ASl2a3LHfrZ4byYqnec6aiWAXxghFwshdry9ECEJso+h3jk4pGRi/Hiy3GC5mdwFPyr6sNGYPaL0lLI5vc3lcKsT1Zu03VSyIFDlq0VFPOq5IwHbeb+fCP4qXBQ1sLO2JXeHfeX2alUxrOs8ckKTyR/qwV8jeA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756092945; c=relaxed/simple;
	bh=Vcbndb0BitXQXBCCDy5phydPWg7MwP6Brhlf2YVSZNE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Dx6zkjddYVHCai5I8omXmH8/T1l7fuIHvqGtz2Jt/ofweAidSdRdpLNbNqkByMIZzcuFgJyzLreUWJ1paeFGW2uSgvNhyW9ez6O1BqmJVRUNA1kz+2HoPthzYxIYqH6mH13bo/HrnCVjMK3Wyrco4B13OeYNAhq0rFh5lzo5C04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oWMhVuWh; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57ONoKaO023627
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 03:35:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0Yg/2s8cwpHYy/pmAzzHeffOyyjabiwQv6sxOo7TaLA=; b=oWMhVuWhjhnFFmWa
	IytyVZT/fw80q/BUz73knjb9dRlJg5o2SMT4JQ8pSna+mR0iD3NluzvDM2FZev4K
	/nhwHfy+9u1LtCdHWGXMJRp5YdZchJ6t0Q5vuhleK+0nQqFtbFjUBm3JwGIH+WPR
	tV0XNzWTcgSqymWYelNUcPGGRG8sjDLX3oF3MlBNna11BRDAbwsqs44ZISZDlu9+
	0oARbe10VKwp3odp92ymxbwCBDUxLrc+7q3ofeb7n2SaLeO5+zpnD1AB5iM5FruU
	D3V55hZED4YmEc4kI/vbAbtEyFYjnc1AbI3MlGqd+qR/fJIXDS0EUbDuDxoHH3u2
	Dzq0DQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q5um3ke4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 03:35:43 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-24680b1905fso13666905ad.2
        for <devicetree@vger.kernel.org>; Sun, 24 Aug 2025 20:35:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756092942; x=1756697742;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0Yg/2s8cwpHYy/pmAzzHeffOyyjabiwQv6sxOo7TaLA=;
        b=pz7DIOlcMjg6ATj9T2Rk0vTGaicf+eW76kjP3mDRWtla/PcRyk6JMbE9CZU7PD3N5a
         N5GB43ziR7smprlaGglymCnodP/i9RdM2ngzaUJT8I6XoXb82rrPL6pgdRvFXjf5qB9e
         QT3wvyA5YRyosqDyTG0CoQbt/3LdXBltEMJZMbZMLNkk2vRnJRIfrbj4BawH0/X/v4j1
         Y8OR+DC6mSk+GVxmM2sN0drp9eJPHlEh6ZlxvKCNcBLe7vzvo23hEgORENHsOOfzzhxr
         1IRUBn3HtFxmnxTfPLhATPH12hepkLFs9Rs3ClUAKB238gN5o/hzsUTfvl4LXJxcD53m
         kwrQ==
X-Forwarded-Encrypted: i=1; AJvYcCXjHzeqpuq5/i+/ThwC+LnqcIUhKte01DpQaT15iqukrbj2PUandFHQHNMyvWL9g5CQAMRe2yZvtIA7@vger.kernel.org
X-Gm-Message-State: AOJu0Yww2Z0OjGjZYzFQfsnoa21P8ZOJs0481hs5tOX1WQe3NAeC45Gw
	l5/gUAwZGsNanCHgftpB+Fsn3kLeRyrLNV7NdvZ/cjgX0TgBU84AX83QKgY1AqHut8JG1PgXrIO
	I9/IlNZez8zhVvj84ioQpasc2F3RKHudEBGENJDPbPX4b+hdDrgPgrRPmmxF1NUuW
X-Gm-Gg: ASbGnctJfyRlCESpRgttwcc3qxGZqGZyco44z+5ocW4RnyyipuLC+jlUAkOV90kV1Jk
	V6crXh3bezmFtDYy6VjYy1buzG4j2hPcwzG8ST+zWBAaXd9rtOvGsgblgqu+6qMdflJvLLu1TSw
	yrfJHgf9XRiqE9VrSqyPZybH00qUnZLEsVH44z8IemRi70TOMRvdP9TQqJj/glZMTtsOj0ubc5Q
	ZyXMMWFkXc3dF5KkOnInilVD9JtkMhzpdkWGrHuJhJLi5HhzBg5+opVoiy97HgS/GkZmqzPSOq/
	d8FZIdNWQrDYKKaFT4fGN06Oo38i4DTTdvd9WAUxA764SJagu9jxbQnokc34rxCZVkMzVJY=
X-Received: by 2002:a17:903:1b4c:b0:240:11cd:8502 with SMTP id d9443c01a7336-2462ee1a94emr104486355ad.13.1756092941991;
        Sun, 24 Aug 2025 20:35:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHIayiCQhykERtgqE3/QyLN5qc4N5nnERNIq6sat/ZgQrYqvJ5iGLOZQo1u9v0cQun56yecKw==
X-Received: by 2002:a17:903:1b4c:b0:240:11cd:8502 with SMTP id d9443c01a7336-2462ee1a94emr104486015ad.13.1756092941456;
        Sun, 24 Aug 2025 20:35:41 -0700 (PDT)
Received: from cse-cd01-lnx.ap.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2466877c707sm54859565ad.22.2025.08.24.20.35.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Aug 2025 20:35:41 -0700 (PDT)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Date: Mon, 25 Aug 2025 11:34:20 +0800
Subject: [PATCH v9 1/6] dt-bindings: display/msm: Document the DPU for
 QCS8300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250825-qcs8300_mdss-v9-1-ebda1de80ca0@oss.qualcomm.com>
References: <20250825-qcs8300_mdss-v9-0-ebda1de80ca0@oss.qualcomm.com>
In-Reply-To: <20250825-qcs8300_mdss-v9-0-ebda1de80ca0@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Yongxing Mou <yongxing.mou@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756092925; l=1231;
 i=yongxing.mou@oss.qualcomm.com; s=20241121; h=from:subject:message-id;
 bh=Vcbndb0BitXQXBCCDy5phydPWg7MwP6Brhlf2YVSZNE=;
 b=VmGPf/kXtbdgJwEU9kmGm6raoxahnIcjLJYE7n6dbhH3xq8vaqonHtFHsWtTtSk0hFei8lH5P
 7PoCFRw4vYDCsAG0a+3nKVXf687bS17my0UjT/NianR1QTFbn9va466
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=zeCnFRUqtOQMeFvdwex2M5o0Yf67UHYfwCyBRQ3kFbU=
X-Authority-Analysis: v=2.4 cv=VtIjA/2n c=1 sm=1 tr=0 ts=68abda0f cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=5ixSZjX4nqodb9qzXsEA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzMiBTYWx0ZWRfX5eWIKlwzu7Bj
 g+E5ADBQrazP4BULK0WakZtQUlehtKhENP8/xsvaMNTJvdBiQfkouSfY3uX2Q2EMgzMhnwUrIdc
 x0+iAM0GR62aPtYTemcBuFSCrYAjkB3/mPM5Axu1s8frV50rVWsSqGGtNC1EqSPPghyORj4umN7
 U2tt8rTpnFj8cAIOKMhbVq8GcgJ+TQFeAzxZsp6Gnqe0uKaCwfnuJ70yNr+3d5YjWwZQFZrxagM
 kf4hFUkK3AP9OmoyIFy6emdgn1dkZczQj0RtUSeQVYR6TC+Oc0I/zg77tRaDKmO+9y4W0o3MFwK
 kEX7EPnJ1vw85cWDpOkpe5veehgU2x3rVzhWiKxvyJyDf+c3GCKRj0pqMbSjqlcQsnI7tzRzvna
 0zDZuHHA
X-Proofpoint-GUID: LzRq4XcLL8-_ON8I-yTRcyQc7THqNsvD
X-Proofpoint-ORIG-GUID: LzRq4XcLL8-_ON8I-yTRcyQc7THqNsvD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-25_01,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 priorityscore=1501 impostorscore=0 bulkscore=0
 suspectscore=0 malwarescore=0 adultscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508230032

Document the DPU for Qualcomm QCS8300 platform. It use the same DPU
hardware with SA8775P and reuse it's driver.

Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
---
 .../devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml  | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml
index 0a46120dd8680371ed031f7773859716f49c3aa1..d9b980a897229860dae76f25bd947405e3910925 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml
@@ -13,11 +13,16 @@ $ref: /schemas/display/msm/dpu-common.yaml#
 
 properties:
   compatible:
-    enum:
-      - qcom,sa8775p-dpu
-      - qcom,sm8650-dpu
-      - qcom,sm8750-dpu
-      - qcom,x1e80100-dpu
+    oneOf:
+      - enum:
+          - qcom,sa8775p-dpu
+          - qcom,sm8650-dpu
+          - qcom,sm8750-dpu
+          - qcom,x1e80100-dpu
+      - items:
+          - enum:
+              - qcom,qcs8300-dpu
+          - const: qcom,sa8775p-dpu
 
   reg:
     items:

-- 
2.34.1


