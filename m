Return-Path: <devicetree+bounces-223957-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A7908BBFAB6
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 00:21:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 669304F2541
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 22:21:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DAD12DEA9B;
	Mon,  6 Oct 2025 22:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ICoNp2R4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F41C22690EC
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 22:20:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759789221; cv=none; b=T7x1W25ESD2//nHgGF3gZ8mLsYZ4VRCLw9Spptav5S5wbOwd1iNJ7HVPtcQGM9mw6Dd+KkdVIZdS4U/1ldOGrXEI4NcN1tMuvL1PCrm9fEyWpGVzWTzJpllr44GZvhYxhDq2aFJhDsqwOEoN+XL841bbqxGq1sKZLPPb0bguDzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759789221; c=relaxed/simple;
	bh=y84fa6fvuCZpJxjEsWR6XfroWoXIZOXTyVARiLBoUh8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=QwZFHOoFu2sDwg5C0XReQoYgll6sosBoh7SFePDhJRnIRN6SWqaEqc/216g9ChFuH6649ekayAOdxh578efaSFJzFpPHSSYtdcLrwKxzs8lxXNxpLJFFI2bsv4AP8/cWOdMO+SvBBXQCHM7J6IYqx0Ey0ce6JItT8RKLHKugXiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ICoNp2R4; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 596FBcWU024939
	for <devicetree@vger.kernel.org>; Mon, 6 Oct 2025 22:20:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=g6hGIMMv3wb
	uPomMpx8H8k/GiKEKmx7JPEl9gfJaIng=; b=ICoNp2R4zS26XwjqroKXK5XltGH
	CswvdsstUgTIoEjd12evPOYEDG/cUADcf/2e+dAvOIGX64SEGFu8+zagkdQsBYHE
	tTrLiGsjCDnMoPDr64FNK00D7jhudTTraCimJSZpOZyCrC+xAgZKjv7XSoxW2YsW
	mLrVwoLx/pVHZi1Fioa4mrxDlkrsUCjFPzR762PjZ3o4foM6n6z/7ExBPIHJ8+y8
	TZPPEHGYXUZBg9tMrAiwGKF0t1ZBdQtK/dRbaI+uZSOsz3trSFtZ9uT7Z/XS+kcz
	UucLm2y1evG37Rz4Y+4a/jDGLT4apOeEMbTvVj6cX9LZVOHbzftp/b4Tp2A==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49mg6a92wc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 22:20:18 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-782063922ceso4765395b3a.0
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 15:20:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759789212; x=1760394012;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g6hGIMMv3wbuPomMpx8H8k/GiKEKmx7JPEl9gfJaIng=;
        b=BAz/5Z1+kvaypeE+RFBysIlezgfVSizEZ+JHEw9tQWt+ILpcV4Ly6QvTUZwRFMFweu
         B0sFgEUeGMMHVHkTPKGXC3B8/34TFH4ece1XLBBMtjWTsOP5tvnYmo6ANRfwMNGH/qKe
         fd4knApr6WSKxUDU9WzeHT+HpJgRW2AvSFZdrwYRrNjX7/NrJmZHxeaaGW5ywkrGaN2X
         MalElbA7DGj5+N5rZbrDxlcQAos7yligXwe838qZU5N/6C6St6tzlaIYH6cUd/cvIIFQ
         m13HtR8VNloxRrjVIpYh2Rch/wFCLJD0bztpj1Vymc76JCSH/zvbLKck4juNblTw3gt7
         risg==
X-Forwarded-Encrypted: i=1; AJvYcCVgcSu9CriJW06Ro3A3kFtHGU9Gwe5rUz8WleD26HcJ2gwznvi7EF8YuxVHGl6m3yIIB9S9C+bzx0aM@vger.kernel.org
X-Gm-Message-State: AOJu0YzpXgtj3ClrjctElvbFOGhd97D3YKKUNWraz4J7tYJ85MTH3XPU
	foHsD8ekLJmMuE55NS4zuKCGME08Hl8Zo3Vpuy37Ms2MS+NZ06MYnTYce2wq9hY6xMzUn2f0Mra
	1d3oF1Dj+ETObzSn6ygNrSnGKwlDOeGMsPpwDKEWCFz4T0qZ/sXNpkGC6e40QvyMa
X-Gm-Gg: ASbGnctupHj1bHZq/aJ/D2UNg5yFuBET9NqXtVpMht7qjFv1e2K4FFcvIGiryvX0vMa
	VgFK51HH+wsOUi5o6LoaftwIz2Z/oOUR5tkgP1bl7/NL57zcO48kbP0EPlEVCdwh9wmqY9kkU4l
	KkgX0vd831KDiniIHUxaXDTemtRL7R0DKVcPSWu+Bze6WAt1G1ykLTmzrU/gSZC0Kt0r+py1iPs
	B6DrLhAc+63bCAD5md3c4M4GDqxOzeWZROnqPsBqYttKtQUSBfBimMarsGPi+E3g5CWAlBL36P9
	CIfTV5A+QBknzWGE2xbpte6ZfNW+A4MGSv8zD+25wvB1+bWfMcTk4t1MfKwPbgHU1AuaKqSCtQd
	jlMBU2Gc5t6kO1acZKYb0Hw==
X-Received: by 2002:a05:6a00:3e1b:b0:792:574d:b1d with SMTP id d2e1a72fcca58-792575c7065mr731270b3a.14.1759789212559;
        Mon, 06 Oct 2025 15:20:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFwVIZrtgir0jsxXPAjMTVqs04hKUgCAEt4yAQwrK5Enm7r/n2TXNbFI5l+MOzSFJexLm8MIQ==
X-Received: by 2002:a05:6a00:3e1b:b0:792:574d:b1d with SMTP id d2e1a72fcca58-792575c7065mr731243b3a.14.1759789212105;
        Mon, 06 Oct 2025 15:20:12 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78b01fb281bsm13734968b3a.37.2025.10.06.15.20.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 15:20:11 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com, kishon@kernel.org, vkoul@kernel.org,
        gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v5 04/10] dt-bindings: usb: qcom,snps-dwc3: Add Glymur compatible
Date: Mon,  6 Oct 2025 15:19:56 -0700
Message-Id: <20251006222002.2182777-5-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251006222002.2182777-1-wesley.cheng@oss.qualcomm.com>
References: <20251006222002.2182777-1-wesley.cheng@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=QtdTHFyd c=1 sm=1 tr=0 ts=68e440a3 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=JYTQWVwI1XGucIoeipMA:9
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: aZvtTx_7SMqTXwJjvZxTXyIDyu581ZxG
X-Proofpoint-GUID: aZvtTx_7SMqTXwJjvZxTXyIDyu581ZxG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA2MDEyMSBTYWx0ZWRfX/j1kdXmoKqWU
 TRjZPQzAgzy7BPn74BdAlfE9JYSgwD0j8aBNQOyrcwNAms93miWvR/+kI7cxjUs3OyV8y/MiTaO
 PAEzyW/vaaA4EDMGbaLtq4bFDVIZ0+vEDmLggEEG4ZuFNqWpWp4tttHZ3JAHEeHlKnld5ztKYkD
 5btsDXQXpDUpNFUcEvjXk8gutGYD+VrtknUFt2jUQ35L6QtWfRhR/5zgu8mbNQ2lC0Dcxj9umXK
 6wvQHpu47+9H6cz7XUamSZUu2Bk6d38n938Q61tqxoEadvwKNrUsKj+VqsKW+TV9tli8OPvkVAy
 nWuDxk/NFPENStwB+4Kw4BAD3yGU/TRUShf3475fd9zO2VLgsceBU624wceYraMxiSMw95v8HsD
 opBOdT7P1lBbp5msyeogNu5h8rEwTA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_06,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0 bulkscore=0
 adultscore=0 clxscore=1015 suspectscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510060121

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

