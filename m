Return-Path: <devicetree+bounces-221155-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A8E8DB9D963
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 08:29:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5102E2E085D
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 06:29:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D7FC2E8E04;
	Thu, 25 Sep 2025 06:29:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UF8p0t0o"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E06B81C1F05
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:29:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758781745; cv=none; b=SM3+aSNTFdrSJaSV4RaktyybW46ODJ0NkhWuqGDbAlXi3YnId7o7rxAf29XbsNGFGGruV3IqxzdF7p4ZuUKMpL7kZ3uk3ehqm/3Kl9yrteYLX779MHkF4kew9VqWFzMduO4rMQ5P4fafLmIi0qKX/jc/le0+4hiy4wqg19laG/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758781745; c=relaxed/simple;
	bh=PmOpw/EYlFkARbCMNbiM/N6wPtAmStKVwZu0bN0uBRI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=M8SIGOgha6nJSghn0JRkPLaztiMA3b6Zr5bcL0ZOH3uY5VVRbteVYG+xoZ0layusoPd/0hu6BgglPa9BALwjE4N7JfRJSva1dvcKjrUThEbk7m/WVAGvRe99os7htgQ36uTLz3U+rX+Do08vRYXW304fYrKUiVOfROWmNA9MaRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UF8p0t0o; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0HiYu021499
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:29:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	syumanWrZUjcI1O0TLXpaU3G8S6LULiW8Zo6+Nj/zZI=; b=UF8p0t0ocvyoPbV9
	qWJSKLFyo/uCn2OzOdcxX6qpu4AQakYpYJGc9PDFgXR7ccMMfYZDl25eL6DKBOh1
	CYdbscH//jYbP9Z1vzg6C1xmC/89GglNgo7xT55HwLKLyET/886XNz2X0a1ytl9R
	33Lfm+um4rbXxhyTNOdLXEzp5PR0FsQA8sodPsIlhD9q7qVs23sn+a457pc8FzfM
	2Yr3Rk1mfJ7IpVih1ufTelCoc8U7cw5AnZNrvaTKGmFpuUulmegSOfsn134QxbkT
	N1jKwGwMbaZ0il0RCjSYHOdWVxrU7E+H+SVuY9TvhieMH2efO3oRKD60v8+rr76M
	ewo22Q==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49budaejxb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:29:02 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-780fdbbdd20so630225b3a.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:29:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758781741; x=1759386541;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=syumanWrZUjcI1O0TLXpaU3G8S6LULiW8Zo6+Nj/zZI=;
        b=gsrO+wbQ4O455EC6W3jJpYQds0AqnKhb0i75PY+Og/koEpe87OVyWZILTFtPLzeTGb
         YcKo825RwKY6mSY8l3/mpv2YDTFcGmVIsFvyCcoV9gwzhhGlGBx9NoCOVGB4Eu5T70wP
         +5Uiz8MoyFO2CGEJC5qx3TylGvtciu2RKzDGIuOgQD2DH4MxIRyn3N+1R7pxPD8qQUv7
         jNwDFnl075dJ4B65WCVkDb5YDUPP2EEvlwyKBaqqKLwy9feTRrsYYoJmeXi18evwpzwa
         6ne+9cAXeiQMzzVmNIEHVvJl0l+LH2n2IqIzulwuyAKGLe5kCBAphMIyWWDg9TaUSNTh
         iwhA==
X-Forwarded-Encrypted: i=1; AJvYcCW00ArHksFd+MI7VlLBurQdhZwqxsnCR/CKTAo5iMh1JSbNRrIpNNAhmFxlJ8ElFbFR59ZaBvXz3c5K@vger.kernel.org
X-Gm-Message-State: AOJu0YyrL9tvJls4y6wwKJiMQScMYA7gqHEX22mTae9sseEULzp4jmB8
	vPCABY32gP565/+GsjXBVkcsA8A2m1aB5mnQoXHuB6uDKXa14TJu9v/vxBTtpUItQxKL8M0dFq3
	qv0O39NFIewsRYiyBQDI6vuHBAlw1h4MrIzv/SkVIFu0BfqchamGAy9nSjFCy7/U1
X-Gm-Gg: ASbGncsRZR8COVZ9rcGQ2Ts+7uoRdlnmVurYSsKuKvOXu/Kx/UDZHYA1BS+Byasu3kR
	p0Y0CPvCVmgH2kqO7NjlVwTQHwyziKQEwgrOJQ00lChcWQhHziQsN63BP4MLHQMum7zMgdF+n3E
	GgJFyEYuc+n0xXLHKxmMseatrCx6P3tWK2TVB7LlQbyi71rKi8m1sbnNz7jdQ821SQJQLWoN5GT
	eSXRkXgFKfPhQot5HUkRGLoXHijnYNzyuF+7/FdSDH/MgbyYowJnlsiBgkbuerK3DfXUmrfxZZM
	DAOZmoYIAleSRxIVMN/rWqmWGhj0QF5z9EiJ5orT08+nV4HzHd9zhEd8e2QQJoYkSSdHewbFEii
	3wjH57SjFBazqL4LMoFa9fp7FL9joYhW3lE3OMnPEjXpqZjDUla7kgQ1K7hxa
X-Received: by 2002:a05:6a00:4654:b0:772:823b:78a4 with SMTP id d2e1a72fcca58-780fce2cc33mr2678453b3a.13.1758781741221;
        Wed, 24 Sep 2025 23:29:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHf5M3AmpXjWH3ZY4yFT1pbvy9PyWNjSVRiqBempmGBotHIOY10SAhH6iTuflkNvEtRrydS6g==
X-Received: by 2002:a05:6a00:4654:b0:772:823b:78a4 with SMTP id d2e1a72fcca58-780fce2cc33mr2678434b3a.13.1758781740750;
        Wed, 24 Sep 2025 23:29:00 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7810239136dsm952962b3a.5.2025.09.24.23.28.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 23:29:00 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 11:58:07 +0530
Subject: [PATCH v2 01/24] dt-bindings: arm: qcom: Document Glymur SoC and
 board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-v3_glymur_introduction-v2-1-8e1533a58d2d@oss.qualcomm.com>
References: <20250925-v3_glymur_introduction-v2-0-8e1533a58d2d@oss.qualcomm.com>
In-Reply-To: <20250925-v3_glymur_introduction-v2-0-8e1533a58d2d@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-GUID: h4OKXpcN1JHND0sM4bnas0kvWnaH7Mzh
X-Proofpoint-ORIG-GUID: h4OKXpcN1JHND0sM4bnas0kvWnaH7Mzh
X-Authority-Analysis: v=2.4 cv=Yaq95xRf c=1 sm=1 tr=0 ts=68d4e12f cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=KVNckf8Hb-gWPUCTgC0A:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDExMyBTYWx0ZWRfX+zI6MZTJ8gAo
 TMNIDJm0nBhE7rUp44Csb/DLKJZpei4GOvSh6m6xGoCB6sSYp+QMSv+5mRo93ZM8G2bLNxUuaaN
 C5Bf5fR66KqK2ykPWmJpvT8l8JapLNKkemxAQNZhYXTydnCLgWnd4H/qRPomPB+kXuANFEoXizc
 cj+Q/61XfRjGeX7EqFVWSwHZhrFuslOYvBzJE/LczxcdBSLjLPKRx0VdpKVxumRTVaxaVZf4QrH
 eL3OxC2bvCeLrEbkdRmFm/gZFwOio68cw2LWEaGAPey54CT5/1l5G78ExsOXwFbCNpPxXugyzOJ
 y7aW0d+07k9Av3gEnlhJw7PKDlf1FHodgccMm/FAE91f2e2E6/sg3rR0GpwGHHHvRG2O1rS+hc4
 PNuE0B7P
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 phishscore=0
 adultscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230113

Document Glymur SoC bindings and Compute Reference Device
(CRD) board id

Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 18b5ed044f9fcc4d12f4e3baa001099b6e154af7..b529a8e097a35c10e0008124467d8f6038071308 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -61,6 +61,11 @@ properties:
               - qcom,apq8084-sbc
           - const: qcom,apq8084
 
+      - items:
+          - enum:
+              - qcom,glymur-crd
+          - const: qcom,glymur
+
       - items:
           - enum:
               - microsoft,dempsey

-- 
2.34.1


