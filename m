Return-Path: <devicetree+bounces-229658-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7900BBFA8D9
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 09:29:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9AE683A8E73
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 07:29:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7BA02FAC0C;
	Wed, 22 Oct 2025 07:29:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dDWD32yb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC93B2F9C3E
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 07:29:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761118144; cv=none; b=HV+8Ax/EUyfBACSX5Ct3iZ5GurHORh2Icorln6LjpSl5m9uIUjyCfSC5KQRngNRGdfYlgYLf8O0Fj16UZgN+yUH8cxnwUcNwcaFfKObrsaWviKeUIgzolukuSOL1Z5A0Uphnh49TEz9LJEA08/5umFZNu768kr7f/0ilURzT8sE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761118144; c=relaxed/simple;
	bh=7XsJROAyaxSz6LryDkWxrJ3XX6JFt8eLkapu5AOerUA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UM9qanfHVnk7NrKZyVeHVub+VRPJ6rNfxttkNu5Q6qN/uE8Cj7Mll0h9EJSs4ivDWuyAT11xPVr7pON/6cGKgeJ5cay3YA6GNQ/O8lzYWFUBzmSoOI+0fqGjPxlYKxOzGGIT4eFQHejRbcvNOnGL9l6mht5xxOPuXiUshfc82PA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dDWD32yb; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59M20XMA020645
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 07:29:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ha5WsXGio4cpfRMOdsHnU8o9EmohdZHNryE2Em1psBs=; b=dDWD32yb3W7MKOP+
	2G2YLaAVOC39NXwnTgmxbTYG00qZOvjmjIU8WcO/ClQUVdgDAlEqOtC5ju0Lu0mW
	Z0ErqiNREmO3yYSGLEkSKV5hb1RWzASskByAQIYONUT6oL7weYMwa5FWzl4h8tXI
	SMlf+vwegXKVdkYx7eZZWe+wUd8vkd685qoCDHt+ACk4INy0w8kql260BeSNrQwf
	6HLShbpEtWtpQ7M+a0A6qy3gHlCvXCfIXLdKA1h6cbNxmDAayMQR+zHBBkkLWCtI
	m8nLzwzzooe099VqvXRmF/o08bItT2VKi+q2sk7vD/vM8kdVQXkmG/W3iHwJBRfK
	n1Qa4w==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v3443pqc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 07:29:02 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-33bb3b235ebso12841891a91.1
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 00:29:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761118141; x=1761722941;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ha5WsXGio4cpfRMOdsHnU8o9EmohdZHNryE2Em1psBs=;
        b=IvdKg0HfsKYIYVSs887/oAqCAaovh79oVnZHgZcSJMuD/Digy+n3VP2rGvl/eon3/s
         gyPgZN0wAyn4tC3sq/xxAVSzTp+uVdGfBVDVHY2naOWWEosRNFBqsqG6Gw3nYurp9IX/
         g/y7rsuzgCmmSsd3z/qxdbyLh5hTOYoSPXCmD7fk8BHFAM1TOg2rNG4KY5SUQLaIO7rI
         +ENS7ZAaTph3D5VL/7X3V7QSo/MubNyq9SJPMAPYm6rSHDUdm89WkF72T5lF66bQ3HrK
         MsezKJXDpX5myEhkddn7l6USqmMQRMdJcHlr5xOfeufZ4dFUu3i69TNL/vsArDpFYASy
         gjmg==
X-Forwarded-Encrypted: i=1; AJvYcCVxshshiGGm2CI0yoK3s/3WOZdEf6cE82r3fsdOcBZ+6FDHtt+Wg/QM87LkfOA4kBf9lmHP4LRC99Bz@vger.kernel.org
X-Gm-Message-State: AOJu0YxoFD3PWsj4WU7Vt2IuqFH0/t/YPnxpccWXjGcvhgOknF7hkrje
	VQZYR1pAgP+X1/Zf7ps3a3O+suzuxp9EBf0SujFZvXfLPMPQKt+2KbAv+2Z2+6hmZow/Q0YkBwL
	Q3OCYH7v/eb8ui6SUrlibcgZreDx+aAdHt5y3cWpBX7i9hdFlv0AEmRGfpOOH9Ir5
X-Gm-Gg: ASbGncu5gHskCU3FBMcM6/mlSboD14DsfCWl8n1/H5THZIX0fYIWq6wL9UM/UREyudf
	toLKWn1wMYwqXk8ap+ZmUzXw5CsOw9YUx+dl/cS7oZimCYcy3EsVpdwOSbmkG0H3aq/xKthbO6N
	xuwi++1sxigoc7pIv4ry1vIkfLnK/lqIMXBkQMrzlhnrj1CtbKo40LvpQex1TqrAbQFQjr8TiQL
	dv/0jXJ2owDnlbY/H/81uAXWtz5cOgw19b3SUwuKfBhlr4XX4taCvbxStT/jPjWKUwKWHLQp0W6
	JsNnqLd0BilIdUzDZpinzFON+cz6MztvgaOcvBNmPLF5rjfU7I16yDPbeph+TSthZx+/6+wapto
	8YYW/sqbR5yF9kwccFbUqLWrSH1j7ccZeZHbiYHkyLfP3n6VwpQ==
X-Received: by 2002:a17:90b:5111:b0:329:ca48:7090 with SMTP id 98e67ed59e1d1-33bcf940e76mr22669709a91.37.1761118141299;
        Wed, 22 Oct 2025 00:29:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEUfeXBmWDXCej2nYFRsJmx+4Jj/dO0rVNI1Pl96X46GrmC1MJSjneWKucPte49g/Bv2jKP6g==
X-Received: by 2002:a17:90b:5111:b0:329:ca48:7090 with SMTP id 98e67ed59e1d1-33bcf940e76mr22669691a91.37.1761118140856;
        Wed, 22 Oct 2025 00:29:00 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33dff4498d0sm1687342a91.11.2025.10.22.00.28.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 00:29:00 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 22 Oct 2025 00:28:43 -0700
Subject: [PATCH v2 3/4] dt-bindings: firmware: qcom,scm: Document SCM on
 Kaanapali SOC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251022-knp-soc-binding-v2-3-3cd3f390f3e2@oss.qualcomm.com>
References: <20251022-knp-soc-binding-v2-0-3cd3f390f3e2@oss.qualcomm.com>
In-Reply-To: <20251022-knp-soc-binding-v2-0-3cd3f390f3e2@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Robert Marko <robimarko@gmail.com>,
        Das Srinagesh <quic_gurus@quicinc.com>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Eugen Hristev <eugen.hristev@linaro.org>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761118135; l=1086;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=7XsJROAyaxSz6LryDkWxrJ3XX6JFt8eLkapu5AOerUA=;
 b=Igh3jwg5L9I4sMtXDmWtsC3p4humSItibIXUryu6n41T3gHKWjYaIPtGmALwwfV5doPDblK6q
 uwOP2Ujos34AKxigZErDEsQdZtM1WOAyKY7FkPAZdMuccCPpTxKLVHo
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: gfIbB3wwYkNkVL3TFWMGSr4ui2SEaS6g
X-Proofpoint-ORIG-GUID: gfIbB3wwYkNkVL3TFWMGSr4ui2SEaS6g
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMyBTYWx0ZWRfXyNN5BPwFpd4P
 RoLIoHIMe3pK12bOeqynQTmlgCFjrd6Er/cvoyKiUGpS8s2WWrwQqn32wHMH1y8sQyMsvlLIuoL
 phNV32ou9Ih6h1Ac3RRZld0DHu9e0QlVSk+q3SedNNvLScxuxXQXKDvnqhyx0Mn4dfLTBV1lBbB
 47ADdjuCrzBs1nNirdZD6XyEZG9spppaCD2HZ/9OUwqX3wzdGi+FhKOVYPey7RG9UMeoyJSINXr
 bkdwNYaZsniqrOCpKo34tYSo/gZUbqhQP9VE7U6t17dDY87+16pknNDWZCIIE7g6BY887BtY3yq
 NC59K8h4ZvQQASkpBkmNYg/iVBmEOv0Y7jLO920MbJOeAIsX1EAPHMUAh4Btua1Yg8URiLbMw7E
 /oo1FeM0TPcziC7xzGafY8iijPh7XQ==
X-Authority-Analysis: v=2.4 cv=E/vAZKdl c=1 sm=1 tr=0 ts=68f887be cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=ffYJIid-Q94gFHaen9MA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180023

Document scm compatible for the Qualcomm Kaanapali SoC.

Reviewed-by: Eugen Hristev <eugen.hristev@linaro.org>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/firmware/qcom,scm.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml b/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
index ef97faac7e47..340b754e6322 100644
--- a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
+++ b/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
@@ -31,6 +31,7 @@ properties:
           - qcom,scm-ipq806x
           - qcom,scm-ipq8074
           - qcom,scm-ipq9574
+          - qcom,scm-kaanapali
           - qcom,scm-mdm9607
           - qcom,scm-milos
           - qcom,scm-msm8226
@@ -202,6 +203,7 @@ allOf:
           compatible:
             contains:
               enum:
+                - qcom,scm-kaanapali
                 - qcom,scm-milos
                 - qcom,scm-sm8450
                 - qcom,scm-sm8550

-- 
2.25.1


