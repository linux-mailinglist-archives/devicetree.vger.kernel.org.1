Return-Path: <devicetree+bounces-220951-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B7135B9C95A
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:32:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B6E021BC41A8
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:32:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61C122BF011;
	Wed, 24 Sep 2025 23:31:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="E9OInPVp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A69442BD5A7
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:31:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758756707; cv=none; b=WqzDTsoZWf+tFhUOvO4SKoYZoIhvaN5RaW76yLBGy+Xvogxd1O0vx63EU1RAodfdnC9k3AsodGbIgV1FLd9y9ayjpnFgtP7eGzEsKW8N9U43aABeehUXTc20ZJdYEb7TQu6Sj46STnO9wm6ec8pEVjRigdx1uBQhcxiRzi8FY9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758756707; c=relaxed/simple;
	bh=gv4bignPwPIvaLzxZMl8aYlpvlEaasjWbVN87G69RMg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=T6l/KoZUTdG2xKv36ogBR2gtydS36Lz3sI+CnrcJFrFkzP/fdkOj+PnD2fnsZvD8gVjYV8hGbJtNoU14HTIB4AsY1nXPeWV1pQE2Bz14dEB+V2CznfY+nnHd0VQb11UkIPLab6nkR0eCtYQ27DceHPClLJR8OldxPEZsjvhlaPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=E9OInPVp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OD0OL3029044
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:31:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HEbGfgEgVvyLWvUpMV+kJZby48hk/Aw+XecnjFL0cVI=; b=E9OInPVp1+b8GUmk
	LPOodt5UvSANcift7Qe13bTdwszJBUhfSnRjYr/rwFMahuUJHZ8Nb1gQNZgB+WAk
	HALobXGa91zYNVguiA2MEqIOR3E9m5DQJ5Y2d8M8MZeJGCLkCz7Gm6FfivBCTnee
	/k03shzzefbHuwMWmGz+Q5bjvNp5T7s1RfodNX9CQ2ONATR31U5/Dqp0Qlam6q0M
	9sB/B1GNADPOK+JpyargEDRgyCN6dqrij0Uj0jS3PVkPLEYrXHS2XnqveutHDEf4
	cDoCF883M/DI8QzOWbN0YPyXJQCuAFTTTfzz4DY3NuV5vSBje60uHBBBfXYKgCbL
	0bXeXQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hmnxcsv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:31:44 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-252afdfafe1so3473315ad.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:31:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758756703; x=1759361503;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HEbGfgEgVvyLWvUpMV+kJZby48hk/Aw+XecnjFL0cVI=;
        b=XVLKuMXGhihwJsLK/3trWHPWEcsomKAhlDlZxDgYSuwoH8gUGblfMuLlLo80JOydT7
         LQsPAzShSsqHwtFLYBUZalIKKFeMnwnjryl/NjQTnnYveMhMPsABwa7WDCJhvHMOORbb
         mYphSe0tarIf4Q4q8DwTVWkDcfBL5ZVIN+hC67V/zQhsnfdeIWH5KwLeztqFj/9WWlPg
         FBMzK8ubqbmSdKwsxo7VidtyylszQahMIz9gmwtLDNE3BLTjVx80J40txWt0qPjFhpMW
         J2c5I6bb/o3T+uPiUVkhsxUwjljce+OfWYJlohWoF3v4HvRXmtk/8lTQpWI4iYZjUY21
         lhYg==
X-Forwarded-Encrypted: i=1; AJvYcCVg7COdb7oBfctKVb0gnAPxOv1JNmd3pNLIpGYlIkbrW99ndqtzwFk3fWEDEbYsSN1OSYvzjqCHfJj5@vger.kernel.org
X-Gm-Message-State: AOJu0YxGZU5P591RO1qZAKKj158OxuWE5DPaL8f2Z/xwbVGfKUby+6IQ
	Lbf5yNGkPeuvhm9oZ/ywbtHjhDXGBZJ5EEv6/14OhY3TWd+cODoolVcqfM2l5Oc4Uy3tiDEzKzY
	Jg5uAHxSPev/Ucp+saq0fYrnT+v04uR1QYUliDifGdwd5MwIINxd4YD3S6yl0sAni
X-Gm-Gg: ASbGncvnawxpQxXeDdBOuf6+c/nR9E/OTC6PrAIViW4M1AFm9MZ7fp1NurKkpC7rZcf
	gWEuQKNOciexoVkq4OYfugPmLfHrRSVVi0nDckQy2MXa79JcbPwMOnCPm5BZxsUQqO2plXwclfR
	pW89EdDLbV5z9eIsk8YRapZc38iBGVXR0xCJLyfbMnM/CwxYOjkK4/Gl4EN0PlKfmGDyqNfy+Gb
	sPouHuDOh6NiG5UBiOxkwQHTGl4izxA1QzAPOuwgm+DEH42kG+0WQjgdNJg0pCpRsQPiSrZRsEF
	v3AGmcYsu+GlSNO7Hl5myCd2Gm3l4NWbDN2SJvLCfkZbr3pWYn9/5e1wCV8J2IwuHSOU5wGLQoV
	CPmytXucmFxri7WY=
X-Received: by 2002:a17:903:19ee:b0:24f:8286:9e5d with SMTP id d9443c01a7336-27ed49e1bcamr17500365ad.26.1758756703354;
        Wed, 24 Sep 2025 16:31:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFaUXn+8eqPQxI6je39tc7Vwbt4iRDRLI9jYa08ujNKrkWdzuejeRqpiM7dEQS8rL3qk5wBeg==
X-Received: by 2002:a17:903:19ee:b0:24f:8286:9e5d with SMTP id d9443c01a7336-27ed49e1bcamr17500135ad.26.1758756702873;
        Wed, 24 Sep 2025 16:31:42 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33474f14e4bsm194322a91.28.2025.09.24.16.31.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:31:42 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:31:37 -0700
Subject: [PATCH 2/3] dt-bindings: soc: qcom,aoss-qmp: Document the
 Kaanapali AOSS channel
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-soc-binding-v1-2-93a072e174f9@oss.qualcomm.com>
References: <20250924-knp-soc-binding-v1-0-93a072e174f9@oss.qualcomm.com>
In-Reply-To: <20250924-knp-soc-binding-v1-0-93a072e174f9@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Robert Marko <robimarko@gmail.com>,
        Das Srinagesh <quic_gurus@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758756699; l=876;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=gv4bignPwPIvaLzxZMl8aYlpvlEaasjWbVN87G69RMg=;
 b=z+xjsv2LTRuhcyCyzpFHffbo5dJqfD4D1fV5G/YKRcoDNhu2yffmXqKweYfyRtfJ+OOdE/B6p
 gF8Sj0VDZtfD2mbsBvW6obaK4UarsGywnJpNSk/6pD66uqLHceMy31r
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Authority-Analysis: v=2.4 cv=YPqfyQGx c=1 sm=1 tr=0 ts=68d47f60 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=yNaZ28o-uhmfSKpOO1sA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: sBNL6Eh1cb4v9WPwjpAtRE3fsIyDnS1O
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwMCBTYWx0ZWRfX0B/D4UzeRYY8
 wvpp+5sDcr9IJpnKwEiKbXHjtKZM+eVX+zEMzgo/v1hIOCgyqNjiDe782Ta3QD0O92dATVoguE+
 TlSrOY+rY9bKQ6EXQ9YunTjFFitAkoy489X4NFBsb8+KN4xd/ryX9xtUHDdBQ6SUs/ywcfERfH/
 f+vjRxLr6KDmwCF/7ufWli62/9BzxZzXNi78ReG1KmxSgykHVN/2bIv+t0Ildk14YHSNb58prAd
 58yKyYWFtYxfWWfuK6YcoLogEUQGB8IF3N8g32RDYmX8JOKRahoPHwcND/WocTTPcSE2+vK9f3Z
 fwDr8eksrxfdaAO7BVwX1/KR9srMuuL383nq15nJn22s3OGBgiRkrHnFl/DOmnq+DqkymfUfEgH
 IPHxVS1E
X-Proofpoint-GUID: sBNL6Eh1cb4v9WPwjpAtRE3fsIyDnS1O
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0 adultscore=0
 clxscore=1015 impostorscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200000

Document the Always-On Subsystem side channel on the Qualcomm Kaanapali
platform for communication with client found on the SoC such as
remoteprocs.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/soc/qcom/qcom,aoss-qmp.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,aoss-qmp.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,aoss-qmp.yaml
index 851a1260f8dc..57aa819939f0 100644
--- a/Documentation/devicetree/bindings/soc/qcom/qcom,aoss-qmp.yaml
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,aoss-qmp.yaml
@@ -25,6 +25,7 @@ properties:
   compatible:
     items:
       - enum:
+          - qcom,kaanapali-aoss-qmp
           - qcom,milos-aoss-qmp
           - qcom,qcs615-aoss-qmp
           - qcom,qcs8300-aoss-qmp

-- 
2.25.1


