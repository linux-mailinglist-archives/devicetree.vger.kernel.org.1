Return-Path: <devicetree+bounces-219483-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ACF1B8BE19
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 05:22:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9E3305A169E
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 03:22:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E87FA236A8B;
	Sat, 20 Sep 2025 03:21:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PyDhJLE+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0D722FDFF
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 03:21:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758338482; cv=none; b=DNg9Shudc161CzlE6Etx0FQLeKE6jWtlOmQHzEjxMDBaxiDvylKL3YmMZPySN/HbInW7thWCVEJVGriYu/PjPFo2G+zGlYB86j814nJMg3msqmu8whY4Y8rSRJjkytEpMn1op15jIlDTJUHvLscGWCKZvFfcruqlSZirQvDRcjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758338482; c=relaxed/simple;
	bh=y84fa6fvuCZpJxjEsWR6XfroWoXIZOXTyVARiLBoUh8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=hdqcy9hVSznD95zCN94jcpJKHSkGkk//cHQqKNASz6kRB27s/XawLeSjhsDUYZLDdBQsqK4ZM/y/wmgJxArLjmWMbif0jSsItjRGija5BYCdQbKnmrAySp6jMFBZga6jVdApcixvo97VtmGAyMoLWaxzJFPIDkTUXbnAd++eD3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PyDhJLE+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58K3FWm3011301
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 03:21:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=g6hGIMMv3wb
	uPomMpx8H8k/GiKEKmx7JPEl9gfJaIng=; b=PyDhJLE+UFGTK2DP0UZR0iYLQcs
	NBnVt5bmN4Jm7ZJ/Y+yWzTgtv78XS+fUkAruXHkKOiWjdi3y3tvUGoBuJV5Zi58y
	dpw3Bivinq3lm6qkgYEucNQ+d0eUMyIsvEmIa+4ienTbKFAUhrxOaTD4a/ssNudU
	INNdgP9YjzR6pB3vsjj1xMBf8zu7kUwkDC+p3iUfPSscZus5JYwHD+Ts4lzUNrH+
	Fw/H6aMGwQ4c0wtwMrb8u5yC2EOXrXhDVpb9SjGq3EcGlo7kmEBlJ14ZObFaqcTO
	EGW6TXeqcr2BnviTPb1Zl2dVZI4djNevrc0FITijT114mulYRfEuhnFT8Ew==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fxy4f98-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 03:21:20 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-77b73bddbdcso2802647b3a.1
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 20:21:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758338480; x=1758943280;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g6hGIMMv3wbuPomMpx8H8k/GiKEKmx7JPEl9gfJaIng=;
        b=Q4OA9l9WyXIVLkaK1HM7aQKxFpscdIVVKlqsql4ft4DkAz8/HDU+TFAVnwe0rtaHXZ
         RtsGSwrLOmdUGXHRhCII+/meLUaRxlrL0j2emMiIoda9KmNMtH00KC1dWycYuR6KrVyz
         OGoZKeIRoUwObx+oFnZzdgxeXUESXeU/wqUnfnr5u52mjDMHHIKSEu/fgjCFkC0eBym6
         S3Y4Olc0DWobMe2wzl8piOLvfdtxEwzILDAVk6UF9yKn3s6cwu0OrTnf0OOu+EP/E3yD
         kvnIp3TlcoGfRo7vNiusoAiCssHWAh/ax9KCqCSiHHfW/K2+iU8uAJxURfmFFTJXuVDA
         gG1A==
X-Forwarded-Encrypted: i=1; AJvYcCWmcq4Hkqpa+iTIsY/3ng+0ATgwGWvTx5qsrtld8PJN/dxlqRUxQQMeEppVUQlnZczSyQL8VKxhxB43@vger.kernel.org
X-Gm-Message-State: AOJu0YylP4KHl6JavYZKZOVmydjexd6kPpBfz87XpWilC29dQf0e5oOv
	Ai/zcGczQlorK5pVFHeP8MfSSbMnnewW2jejQv9LGhfkK2Mhj4UGsuhpZw0Ckg5uDREHEDNtIrR
	rrb2A5m4XNb9MzZZ+PperJ76GWvdE1xvf4MYraaEX+fsn8gWpJnkRtVoipUPEDDxx
X-Gm-Gg: ASbGncvlnglLjDdh3tEyAwiTuHSayxYCqIoaQQukwQ/DbKw0BkO0JsfOP688CzqXulE
	813BZrxfjHxyZXchHQZ3RQ/ckYer3cOH9bRpa/iuSzTNHXOf8y6M8Su4LepCe1i0tcvK73mgC0j
	Nbg1fMan6pqN5rQ9ha2odp30uaq67PUwB813aCEkp9hOsYb1D3IViE/FHDFcICBhgkAQDgWzXLA
	V1XEgptLHQRA9qHpB8Jul/YB6v7v/kvQ2oGql+jIQ3KVt6cY8FfS9cMdQRbWbWJqak+U8JnuDFI
	rI0s40V53c7bNX361ed3d98R4J/kPUeBkJdCgpoVGmWN7Mj6lOTtTk8chFnRPkLiFl7XpEtrYaN
	KGsebOmD06BC2fHyz
X-Received: by 2002:a05:6a20:72a2:b0:249:d3d:a4f0 with SMTP id adf61e73a8af0-2845ed1da85mr16281131637.14.1758338479579;
        Fri, 19 Sep 2025 20:21:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFetA3WDam0Qho0OajI7y40pyPQFuw0lP5o44u6ANcRyJ15kqRkUGW2DaxpCx9AGXT0Vc6BNg==
X-Received: by 2002:a05:6a20:72a2:b0:249:d3d:a4f0 with SMTP id adf61e73a8af0-2845ed1da85mr16281090637.14.1758338479024;
        Fri, 19 Sep 2025 20:21:19 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54ff448058sm6178807a12.54.2025.09.19.20.21.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 20:21:18 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH 4/9] dt-bindings: usb: qcom,snps-dwc3: Add Glymur compatible
Date: Fri, 19 Sep 2025 20:21:03 -0700
Message-Id: <20250920032108.242643-5-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
References: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX9Qwkeydd2FWI
 5/2qcNXhXilNVHiDW4hXdpyZPnKIQ840gQnWom60DUVPI08dveZgD1vmblc1bvHtABo0ukzIb7L
 Aw5DX+ZIX+EK7iOEVg0JJWTlWa2IZV48wKcilFcpW2DDyxP8JVTGg01qYpM1lJA3HLthZhZKBN4
 dcQNaMUF1ooU96qlX+5D7cavvMyNyeJaTH6S0+GCaZj8OMzy3PtH7MQZXStbg07Vo7zmetJU8E+
 GiTb9QRqNAhxtZWb9vth3EqgcB5tmR+yvVN/XcYiK+pk5iVSxGQ0gGabyzFNSFxFy3b391BXnrD
 VCZZxnal3Y/ij95lKIOIHyJgo+deuLLEOPviON8Czgq/HlSsNKlw0+B4ZzYzgSZYPEaDbcSCEsp
 qEX6z1i+
X-Proofpoint-ORIG-GUID: 34yUoXxfqIgL4lSctlPtkSicWb4H8xQs
X-Authority-Analysis: v=2.4 cv=KJZaDEFo c=1 sm=1 tr=0 ts=68ce1db0 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=JYTQWVwI1XGucIoeipMA:9
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-GUID: 34yUoXxfqIgL4lSctlPtkSicWb4H8xQs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-20_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 bulkscore=0 adultscore=0 impostorscore=0
 suspectscore=0 malwarescore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509160202

Introduce the compatible definition for Glymur QCOM SNPS DWC3.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 .../bindings/usb/qcom,snps-dwc3.yaml          | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
index dfd084ed9024..eaa0067ee313 100644
--- a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
@@ -24,6 +24,8 @@ properties:
   compatible:
     items:
       - enum:
+          - qcom,glymur-dwc3
+          - qcom,glymur-dwc3-mp
           - qcom,ipq4019-dwc3
           - qcom,ipq5018-dwc3
           - qcom,ipq5332-dwc3
@@ -386,6 +388,28 @@ allOf:
             - const: mock_utmi
             - const: xo
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,glymur-dwc3
+              - qcom,glymur-dwc3-mp
+
+    then:
+      properties:
+        clocks:
+          maxItems: 7
+        clock-names:
+          items:
+            - const: cfg_noc
+            - const: core
+            - const: iface
+            - const: sleep
+            - const: mock_utmi
+            - const: noc_aggr_north
+            - const: noc_aggr_south
+
   - if:
       properties:
         compatible:
@@ -455,6 +479,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-dwc3
               - qcom,milos-dwc3
               - qcom,x1e80100-dwc3
     then:
@@ -518,6 +543,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-dwc3-mp
               - qcom,sc8180x-dwc3-mp
               - qcom,x1e80100-dwc3-mp
     then:

