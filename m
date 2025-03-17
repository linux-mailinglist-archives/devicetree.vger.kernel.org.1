Return-Path: <devicetree+bounces-158317-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A94A65B4E
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 18:46:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 673F217DC2C
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 17:45:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EC7F1E1DF0;
	Mon, 17 Mar 2025 17:45:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SfmNeVzL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 837411DDC1A
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 17:45:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742233504; cv=none; b=f+v4PYjwY/GYrJ/a90M/yUCA3QEyjFaOAQ0XhTbvQk8pPrT/+dYXrQlA1hy++G+T7yWB8w1D7h0qiQtrsb+D8nDiQpgZCd1A8GQMtfmY/vUUd6O0wtnaBFNBAUfpcdhfuKKVhUEI811dcEOTwGG1DINmQmqexbfFeIWM6DDQiw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742233504; c=relaxed/simple;
	bh=GGq/9ihy3yPuzqQSqDIFv8MiEa9/Oun5e7X6iSFdWZM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=e/SKSY9Ozx6z6hMEzPf3JSmB9kWbXPoxZa1lfuhc9iKGdfJpTDS2ehTjChquTYrfgeKouVHux8XEhkVUQmpBQKoH1ulAAkuuXFv51WH+QEXviKWvg4gDoHa0IzPpskq5qEQkNhRw8QUFnYcjETGLxDa/q6gC3+1iGptCeynK9JA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SfmNeVzL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52HA4T37030742
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 17:44:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GFn8jUQoU8QET0Q7Y2/H3zZJ8p6JHV7h1jOFwob8Aj4=; b=SfmNeVzLG4UDcuTC
	nRUsPCZJizAmFUG4D3puygisgNUP7p+B0pUrfLWbbfX8W9FdMbKA/cCciKm3WBle
	CJuqXf1wIP3+WLN5/lnAUVIih/QlCi99dXi05yceVM5waPktSUMfHQkNK/0CFdJR
	pshSteSDeh2HKpulRqtO15hcVejDj8+XwjEbRNZP/4pMEYcteOFrCTugS374Dd4h
	F/oHVMROom/3bqv72e1DzLwSZ69yFNRcFfJ6GLxhbnXEodRw76Y+N8CrLgiSGwGU
	VvA/49d1rumsOqdw+wdgIenthSV4T6rnXjRB8FW8WT5zAkaXoeKpXwxEUZ+AEHtr
	1B3S+Q==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45d1rdnk8s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 17:44:55 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4767348e239so101482341cf.0
        for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 10:44:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742233494; x=1742838294;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GFn8jUQoU8QET0Q7Y2/H3zZJ8p6JHV7h1jOFwob8Aj4=;
        b=hw0sPys9DFMsySfeKwPhupJbqCrcHPpYpgjKA/zelXtogTOXPA1rjD5PyBN/QM6lXG
         Tcr221Nz6tyoFfeQyC0H2DoCdBAWKxuYWbOLwup5vJEqV9V56GJiWiEDUyg1XcnT0uhL
         Scd5cWkUhQOlYLqvceVxiK80anMeiKGw0wKw8M8kayhMXAPMuWTAT3Go3uRH8nUPDEC5
         SoTMlC5nkredOo5Y7pYxXlhwIUGlsohGcOVObX1KAkpbWU4n1whUI8aeHv0lK+iA3Je8
         EUhtzQ0LbmhiiXCC3HgwgYMkY6MUG+JoWItIuqbTsxzRLdXY1Jtt2jyPg4BXMeoMMUSH
         Z5WA==
X-Forwarded-Encrypted: i=1; AJvYcCXiocvem6v1Ef+jMf/sJNcmJgRYQ2m81QM8j2NrDM6k2iLPwR0TXS5+IN3rvwn8Ip+4tQEeBntL7384@vger.kernel.org
X-Gm-Message-State: AOJu0YzXyi9BOHVBZzG6TyXXLIIUL9FIiSKTv5ztUel73Lhtq3b3Ti15
	lgrshZPTNClFL+M2O3Hq0gnAMa5cUvffBydvGX6wanDpeEIJZKODzJLd3TjwUFJm12RU1MIKwKh
	AyQup+VkoFPHH1CGapH7D+MFr/Gm2ZYuYcgkrZLNAuxVXccnAZnOZ9vdsz0LD
X-Gm-Gg: ASbGncuK5s7vrCNoO1SaGwbJXvkU0qS6rOffa72HFol7E7cNC0O6Eab6YfoQqVhSZio
	amHGDnhx4LLuObC8M+TuVq0fH2yKkYdPtYzmYPDn4BgCFBzH5Iqy+dSj3VCjQ2pMXmC4jSgtV7g
	Gd2zJlEa7spSK64vrW2h0xAH7q8hdiQzk7LiT1ButE1BPbVsv4F7xCkRvGc7AWwe4QL0T44KTjr
	Xfh1m4BzcuoUQQL6w7o9s5g2KP+H5mUDnBg5+wo/v40ngqELeu1jjBvnkIEtnKYS429UzXoFHGz
	k2/u4iPg/msqVsVC2kD3X0K8n6xQWx2VucgBU9kpsK9FD5rUvvskv5SiNFoEWwHQPUCV2eQnHkH
	xBO5F0sT+WDNBGpXFl66nVtbSzMaQ
X-Received: by 2002:a05:622a:114b:b0:476:6215:eafc with SMTP id d75a77b69052e-476fc99009fmr8243491cf.22.1742233494519;
        Mon, 17 Mar 2025 10:44:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFx2iqeGGhoECD06EGgynljrm1UFU3tlDa0Y7tDDJEaoK3LeQgEoilub/oM8WSkmjHqhW0GDg==
X-Received: by 2002:a05:622a:114b:b0:476:6215:eafc with SMTP id d75a77b69052e-476fc99009fmr8242831cf.22.1742233494160;
        Mon, 17 Mar 2025 10:44:54 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30c3f0e9985sm16687121fa.29.2025.03.17.10.44.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Mar 2025 10:44:52 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 17 Mar 2025 19:44:38 +0200
Subject: [PATCH 3/9] dt-bindings: soc: qcom: add Smart Peripheral System
 Interrupt Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250317-fix-nexus-4-v1-3-655c52e2ad97@oss.qualcomm.com>
References: <20250317-fix-nexus-4-v1-0-655c52e2ad97@oss.qualcomm.com>
In-Reply-To: <20250317-fix-nexus-4-v1-0-655c52e2ad97@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Leo Yan <leo.yan@linux.dev>, Kumar Gala <galak@codeaurora.org>,
        Andy Gross <agross@codeaurora.org>,
        "Ivan T. Ivanov" <ivan.ivanov@linaro.org>,
        Andy Gross <andy.gross@linaro.org>, Georgi Djakov <djakov@kernel.org>,
        David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1553;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=GGq/9ihy3yPuzqQSqDIFv8MiEa9/Oun5e7X6iSFdWZM=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBn2F+GFIxO2iAYR/ha0nJwD2Eg1yX3HfVf70gE9
 iv5i7HiwYyJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ9hfhgAKCRCLPIo+Aiko
 1S3ZCACUOskqPOEvLD+01HgOWPYEMTBKeOD3R8D5mw/V1g4VsuJsnarn4H9Wn4AS5RFONL1lwek
 ArrfaM0aKFgphWcaMu0v+84IJxdrqpynpdcxZDrDeUletCeEgDgh3Jqw/IHoqKqTzcksEsnwlgQ
 Kl5BGF4KL5oypxeoqSomLu+wfO+5Bihbdp5YygDCa6keiQ8FQr8sep9fQRASPw2SGtM9cMbUDV/
 3rRhy+mv6Lp0znl4g6MlbyFhDy0YcCxyCVXD4dqumtoX7Ck5anXlMjCnyNQRCa3nqltK16L3GHg
 2sUeDfKK1geSSi38zzbQA3vQseK4c9ri/3i6FkMudcyxOdvx
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=Fe83xI+6 c=1 sm=1 tr=0 ts=67d85f97 cx=c_pps a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=pxxQaWppw0d4f0HdsPoA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-ORIG-GUID: ZavbmIB5wkI9fGXweOuhpGX2LyjkdLJW
X-Proofpoint-GUID: ZavbmIB5wkI9fGXweOuhpGX2LyjkdLJW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-17_07,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 lowpriorityscore=0 bulkscore=0 mlxscore=0 mlxlogscore=999 spamscore=0
 clxscore=1015 suspectscore=0 adultscore=0 phishscore=0 malwarescore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503170128

Add schema to properly describe the SPS SIC block present on APQ8064 and
several similar platforms.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 .../devicetree/bindings/soc/qcom/qcom,sps-sic.yaml | 38 ++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,sps-sic.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,sps-sic.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..ccacf6f45955177dd9302107e09897bfa2f1fd78
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,sps-sic.yaml
@@ -0,0 +1,38 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/qcom/qcom,sps-sic.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Smart Peripheral System Interrupt Controller
+
+maintainers:
+  - Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
+  - Bjorn Andersson <andersson@kernel.org>
+
+description:
+  Smart Peripheral System (SPS) Interrupt Controller (SIC)
+
+properties:
+  compatible:
+    items:
+      - const: qcom,apq8064-sps-sic
+      - const: syscon
+
+  reg:
+    items:
+      - description: SPS SIC register block
+
+required:
+  - compatible
+  - reg
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    interrupt-controller@12100000 {
+        compatible = "qcom,apq8064-sps-sic", "syscon";
+        reg = <0x12100000 0x10000>;
+    };
+...

-- 
2.39.5


