Return-Path: <devicetree+bounces-171013-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B1241A9CFED
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 19:48:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C61C51BC3E32
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 17:48:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C63C218AC4;
	Fri, 25 Apr 2025 17:47:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cLMox5l3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2C68218592
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 17:47:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745603241; cv=none; b=pHUJOGxAOzE3H+y1m6sQFZPyRJpKptYK+zhMlTVErpWWgcJdaMAmhpZPmW3yx+stbO0KcNWCRsh7KZJWXw0m6Oovi1cbK5r+D6+EzMvGTDg3VMuwxnviDAh6JQ6v/QirovfAT8zzy4+i29BWpm/SLtAeeyoXESywT8uxUSAKjZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745603241; c=relaxed/simple;
	bh=1d2THw15+daDuyiX9YdQivB5AYVR+M6/q3kC0xvZnOg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fZfAJOHL5Hw+G+JaShB1k/csh3OSVk/w/c3i/RFh7uAIPfssrxADxYnDqBBIkKpsBDYYnMi5ir2JXHIWqHA6DzSJltkOItT+2q5DjRzoYcs6AQqlR1dQVYEkQgNe3oqAbfZIeboicHr/XFq2dka6xGbvYtwJssPgmlMtRJAVNY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cLMox5l3; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53PGJvZo024813
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 17:47:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PL7jN6f+eBJVRlNozYaif9ayrUgthTONRjua2k2Vz4k=; b=cLMox5l3ozjZgoY8
	uEhF0icCilZrkBV1AnO3TDE2Lthvp0blA9Dl2p8QYGF0VS+KzZiwgs+S0rJwNBbm
	x/zqODA1njV6DyPJjqS4Bf3N8BuPASjn3JBG2NH6ddiHvQ7K0sC/n+Yh8SX9Gsn2
	R9zJzXJ+yyrXiXomyPCuOdHIQNt5xbyaUJ2PNYDujQ3Lz51YvdpdL3YL0yjLXLeF
	3Yszz/6m+LyyKpZintLUL8Bf/jwRCdYQCWPtJbtpUvGDfRqOhtPIscpUZVsBqN3S
	GysgHjO6sxVzrJUEGVOPDXdGwi5giG+XwRvHiYU0qbuXnWYXH2bPYwGXXnT7DxkZ
	Yib2Ng==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh0srd7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 17:47:18 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c5e2a31f75so774264285a.1
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 10:47:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745603238; x=1746208038;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PL7jN6f+eBJVRlNozYaif9ayrUgthTONRjua2k2Vz4k=;
        b=pnxJ/Jm3FygHNrwMnnylyG9bV3a9EsFXfRs4gHmn3eEpkQMckC19Dbf5FEXhgaXGsY
         Uay8TxHmBza4krEEEHC7m9TPzmfbfMbUUD7mYYR9duv4CEYrTk1PGRPgwMABDCyHJ050
         LNjhJ/2vkoJ3+QgRWnRiso4s6vcvyXLLdTJgtXaItXENyPjDNnXcNersZSRo+9eJ0qYN
         FSL5wBOwZVUZ8KVRJJBNL6ORG/K6nuTzGhP3m/OdnvtiUX6pxQZZNgpwLdDzIbSD312N
         8jGOcfpYD0uxCrFGKnbjrBsK5bAlq86ToE8ExJwqBSboSW4FREKE0T9w6v9YWyHGHwLA
         2MUA==
X-Forwarded-Encrypted: i=1; AJvYcCXSgmKeKfmhM70aDaXj196AWHyF+ijk8F5Ef+ipi8pt+wXCeMY1cj3q1uq8zB5Afv/Nvg6Rm0uycqKx@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2QZkXSaljGA3nRV0gQQ2uTe+iBZV3eSXYY10dy2hAlPU7Awd1
	l445MWXCKck66VzDhHpqEDds772MiqEll6pMlLRPpGn+qqgDj1wv/X0hAfUeYoc/8NY1J/FqfN0
	EHsJEJrR8Vm4v+KKGFzdH1AfA6t+K2p8qT7hNagLANjxhVsNoa+wB8//uAWnm
X-Gm-Gg: ASbGncvwN6gUR15+JBphxLC9hLuhkGIaiI6v+l7At+8bM3G3LpXdwOz2n6W9NViV28Q
	xz9zKjNXZgdV0BiFaFgkKxfzXlTMWPWXc7+FsAMyodCnpkolcYk3E8mhUVnJxyn9kCnyT4CLzXI
	ksGXsjj7cJ1xCNlb5K4462Y70RExdHRnPciInN1zpbEaXAfvSvwRitmdJxfNYaZi+0entV8u2c1
	3fAEWLrjTkcBFPN2GnQdCaV9a/QTf9shrwwK1KyUl4yIC2J8A9mcXK2I4txUN1nkSx13OjiACcw
	AzhutJK0Mr7gSGR//o8rA7Clt7lZPUkP7p3jmvaxdfi4sto7cOn/JFq0jvX0SPvq6hFx6i50Cru
	r4MxkuF0Va/gUXdUoag8byV4p
X-Received: by 2002:a05:620a:2894:b0:7c5:5e05:df33 with SMTP id af79cd13be357-7c9668cda1cmr75282285a.51.1745603238047;
        Fri, 25 Apr 2025 10:47:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHdL3OArWzBhvBqNzfsFrRZba+vV4aIlrDXD8fYlmtF9uaU4jSX4/V36YajbOCQMlIImOTPuA==
X-Received: by 2002:a05:620a:2894:b0:7c5:5e05:df33 with SMTP id af79cd13be357-7c9668cda1cmr75277985a.51.1745603237688;
        Fri, 25 Apr 2025 10:47:17 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7cb3bd4asm673193e87.84.2025.04.25.10.47.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 10:47:16 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Fri, 25 Apr 2025 20:47:05 +0300
Subject: [PATCH v3 05/11] dt-bindings: soc: qcom: qcom,rpm: add missing
 clock/-names properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250425-fix-nexus-4-v3-5-da4e39e86d41@oss.qualcomm.com>
References: <20250425-fix-nexus-4-v3-0-da4e39e86d41@oss.qualcomm.com>
In-Reply-To: <20250425-fix-nexus-4-v3-0-da4e39e86d41@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Georgi Djakov <djakov@kernel.org>,
        Lee Jones <lee@kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Leo Yan <leo.yan@linux.dev>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1045;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=1d2THw15+daDuyiX9YdQivB5AYVR+M6/q3kC0xvZnOg=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoC8qaJPnWlePN4G06TY7fEEm69HG8cdexjAGYi
 z9VeXhWgCWJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaAvKmgAKCRCLPIo+Aiko
 1evlB/9Ov2RvEXWeMwV1ap857cd7QPGS90ERiHjJ4txAv8jlKQr3TtRgpW9mYpCDGftZOWe64sh
 sl01bwEr9KWeKaauSSO12q4bNkn077fa++Jzjkw/g4vBuxNTC30ZVmqVOBxIEPLBLRlw7Y3uie7
 AmdkGsh+NVZ7yeTCLWCl+T1svFCPVGR/QVixHnjDa87sPZPtuKhvQ3qAEKO8GqrPzLj8Fa+iFkF
 oUlzhFpQ1cUAs/u6xSeW+K1KZPdpStNWbr9USOYVqLQsSzJSaHrvjZdkYXxJ+0YbFRlvfcSlvxx
 fq9+uVVmjwkpPYYXf3yGyKonDbA9oEmuLc4Zgf86H6ju5EYb
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: piTRZu5sQJSiVBu9TcRYNhqIKQXh-UAQ
X-Authority-Analysis: v=2.4 cv=ftfcZE4f c=1 sm=1 tr=0 ts=680bcaa6 cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=kK6--y4YYZXB64QPTQoA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: piTRZu5sQJSiVBu9TcRYNhqIKQXh-UAQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDEyNiBTYWx0ZWRfX5RqO1X2pJNrX jYK5nMUkk8zB7YuflZw/ojbI1NXQoriRICpKpMPDUbCqQB5ET2ofF0cqONUTJ8DCgioVaPpb6ao OOM2jUBdMUXp+W/nN95NQ5IJlF8cPpk4FSaO69riIW6ak5EWhVFFmU6yGQq4gw13YkNWcmAH7wy
 fq7sUn2KERvxJ60YZaPolW81IeuuRca2ep7OxjEaeg4U0ItvyZYNaA2Fi9grXGPGm6vLukvXHuQ /XNckmIeYVPznTYq4dYfM09V0rtbgeFy//zv/m1M0oaITNic5nzHeBKgG11a/X44IPmmq4BKXT+ CNSlydnOi1Z1PXhIE1aSgweGaitXVN2A6nGmqcFCWmAxE581W4t2UsrEqESSHnHszr9xildVaQr
 x95MaWsKMMR+f1Edi+BWFM2WA3NuBLxc4HhnuUHfA1z7ZSvQYf97Y6JWW/jZPHoTDsbyNBtZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_05,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxscore=0
 suspectscore=0 mlxlogscore=999 lowpriorityscore=0 phishscore=0
 malwarescore=0 impostorscore=0 adultscore=0 spamscore=0 clxscore=1015
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250126

Qualcomm MSM8660 and IPQ0864 platforms use additional clock for the RPM
device. Document it in the schema.

Fixes: aa0c4b815045 ("mfd: devicetree: bindings: Add Qualcomm RPM DT binding")
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/soc/qcom/qcom,rpm.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,rpm.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,rpm.yaml
index 10956240df0856a4241d6032d3aff7d447af9ce6..3e8d99cb4dc368ab6b31e3e60eb5f7e082cd312d 100644
--- a/Documentation/devicetree/bindings/soc/qcom/qcom,rpm.yaml
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,rpm.yaml
@@ -36,6 +36,13 @@ properties:
       - const: err
       - const: wakeup
 
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: ram
+
   qcom,ipc:
     $ref: /schemas/types.yaml#/definitions/phandle-array
     items:

-- 
2.39.5


