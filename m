Return-Path: <devicetree+bounces-225940-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9352ABD26EC
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 12:03:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E6C0E4ED3ED
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 10:03:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4E9B2FE575;
	Mon, 13 Oct 2025 10:03:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LpT0O9Cr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FCF82FE071
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 10:03:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760349830; cv=none; b=ZQaFMhzxY0FHcl1iIfbpSdLyhMJP0UAC67dE0vM4Vm2hHmNWLjuz3yWudccMoDbJdI1wOuJl6XtS13YRZuI0pODWev7ymiIl5iqcKaJvPm0GL6KkYzIuEjrW3KL2k3KXpQmUvqZUgzPD3qswyUMTfVsoa8yIJkiki0dRrS+D5vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760349830; c=relaxed/simple;
	bh=5S7bewqa2P4aC46GNTPc3Wfn3h92qyoaFLzlTIsn9fM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=et/FbP72yPtw+6cxVjqn6UeJybgJh07amNDM3LrxMCf7hhhYxjWYSp4k/HmGwPmha7w9q+I5qUEApEBCrLjI/rFWOG36IwyUn8vhWyPBqhOwuskW2G2R7XvPJv/AEms3e0rjkCRCJwKHtfdqdRbZZ4bJJRsSJIz+jNPld27zHp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LpT0O9Cr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59D2o2nV001858
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 10:03:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PFM8hA0K00Qfpbxy4GnLDAkU4MBb9gQY5AMWZmJe2JE=; b=LpT0O9CrPnTcFYzj
	8MbWgTkgPBtL0IbGY4HUZOsmlSYkjD3PYjqbe7GlAF8E7SuRVg5EZi0U4etnqVRu
	EdS0nRYbMSeSP144N5YZQix+HAxYv4w7boXYndPT+gihSqhSQLdVrAEytnjh+i4v
	CELYvkaSly6H6NqnS0cCg2XITSL1oWiGR7qoAqMWHuKySmbnIb+8Ai/b69LftVj9
	hlBXnWsyLnAaBQaDOvxQbsewIaTF59d/+h0knD1kM5aJxaFvanzEsom+nDJaF9if
	ALdtlbWMX3YBAFf2/dackKeF/qOhj+Lh8K0s/7s2MJwwxSw+ZkczcI78hX6tycwb
	eqmZXg==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfd8v6dy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 10:03:48 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-77f64c5cf62so5489394b3a.2
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 03:03:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760349827; x=1760954627;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PFM8hA0K00Qfpbxy4GnLDAkU4MBb9gQY5AMWZmJe2JE=;
        b=pnHDKLLcNJFHw4fhnwyvqb8LTUQA2e7Iuyzm85ieMS0DZfdBEagvJuvJ2VXMq3IEeH
         6YUp2HN+bGxaf/wnmfFIyDiQ63Tru9cg/F/5udvEEq2to+EI2negxgZtHih/4fe0t73f
         YW48Q9cBeK1UwsIBDzdb9X4eohXmRszcsJU/NY5l7jaJcjwuHAGtMLy/Mt1a+RBIFJTv
         lx11x8rJNsAlHVPuktBig8k2auECA7I9A1b6wvSqQKC/jAO9KLkBEt4g3jcANDY4L0Vp
         eRhpWIczUbUEbHOxMtcFHTDThh9bO6N0YZUnbGJNME5tluEhDSsaZm3uDB1ED6UEQzTa
         4rtA==
X-Forwarded-Encrypted: i=1; AJvYcCUIo+1SESdmPOQiQBK/994dvtApKqVWiJnhjFp9QWUuEv7zW/tL6Ye7h8PFPd03YD8JiKgpg1vIs6KQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwhFu5aKP/e2y8mBcUX+QR5cMS+tBmprmhFCYivnN8y7Ac+7l0O
	vhUz9pVP9p+vzKykNy/0pmOtPslQxDSizmkSiLS6ypVFPhiaTPYAgpXsRrw5askbo0m3GetPMS1
	Oma0w1/NKggKJVrZFdvl01f7JUHkzEqNmzXRJ1Ab0ScKjeqwIRosWBhAp5Aa9DNsl
X-Gm-Gg: ASbGnctzADnrPirXZ/SAPXx8w7JI3dCPf7TXHA0JlGI29M4RXGo0pSPhLVm8xQfMabj
	VDxPbA5s+heP3MbNpN/QBWOjiOHL0hXrMLXKdjxGMcxLTwrMUNfhr1j+F1SMEB62R0OFWFKmypA
	HSX6q3YWoSiczf1SoVTFkfV+sFbkde4G+v0GoSGaEGqmwMddA1ytM68lY9NM3haqlQbyqfc7/ul
	NDBHd0QUrxRZnZkHVvdjw5yILxxC1iOgA/MtHIE+YcPqynFEKQ9ipD52e5a/JI/rnSAum7xvA6O
	DunBXy6PsYPdl4xddvDUX8BPTr+5ruDSAPVS0ZQPDlN91oYZcXQZvNJJoPRY54Lsy7U=
X-Received: by 2002:a05:6a00:194d:b0:76b:d869:43fd with SMTP id d2e1a72fcca58-7938743fc00mr27742307b3a.18.1760349827331;
        Mon, 13 Oct 2025 03:03:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEYhj8mqzvfx+Gmm8tmdtXN1K43jbXhwEsbYRoGFXxfSqXL1HtAguoQA9+KufJW5UnX9e4VnA==
X-Received: by 2002:a05:6a00:194d:b0:76b:d869:43fd with SMTP id d2e1a72fcca58-7938743fc00mr27742259b3a.18.1760349826760;
        Mon, 13 Oct 2025 03:03:46 -0700 (PDT)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992d5b8672sm10981657b3a.69.2025.10.13.03.03.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 03:03:46 -0700 (PDT)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Mon, 13 Oct 2025 15:33:05 +0530
Subject: [PATCH v5 01/13] dt-bindings: remoteproc: qcom,pas: Add iommus
 property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251013-kvm_rprocv5-v5-1-d609ed766061@oss.qualcomm.com>
References: <20251013-kvm_rprocv5-v5-0-d609ed766061@oss.qualcomm.com>
In-Reply-To: <20251013-kvm_rprocv5-v5-0-d609ed766061@oss.qualcomm.com>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760349819; l=1163;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=5S7bewqa2P4aC46GNTPc3Wfn3h92qyoaFLzlTIsn9fM=;
 b=fjwKLRv6UEHiLGsia3ENpOQwDD/Zvg1ps7kKLeEGJYX81++6k8WJg8nxjIF1Z9+vVUXDs3/qI
 fai2B1PgWs5CMbdbTLtJ7yGde6RfpDrovbb5w4N0tqOFiNerbKTmY3R
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Proofpoint-ORIG-GUID: MwjAcrE5ERcqeVlK9U1KFYItotTvlZe9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfXxKF9VulPm2mb
 eZHZHJJxW0b806KJZF2BrPhqFZPRwhZqvMx4RtdYi4eO8s1j+3B/DHJHPzeJtwQH63cORHm1oBC
 OzfsaVKq8nq/1txM/mHSb0bl/N36lKxufKfJvWjqCV/z3fw6kHEfUGEWls7MbnEVkfqAoCrXSdS
 Xmd42ZcWE0l9T+af7yNbhD63kPwKFTjsN5oZggh3Q6YFnGXxd7ax5lWJlGUe6SgrZZ3mrrxZpue
 F7w1pKIctlSVlXZym93x0vyqdtqp+UlArtwg5IBRINKblMf8jAW2Zllv4rHPLuNkpX77F0h7N7L
 4CzZQTlqwiuVZviPmawfRN1IhJt+wz4/+8I/aO6dtOmw+drT3yZUv6KHfoBCzZK/I8zlYCpAmfO
 na+xakYt0nSZdPG4IZGFATv30FYB1g==
X-Proofpoint-GUID: MwjAcrE5ERcqeVlK9U1KFYItotTvlZe9
X-Authority-Analysis: v=2.4 cv=PdTyRyhd c=1 sm=1 tr=0 ts=68ecce84 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=vdhzk_XxDewY554Buq8A:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 clxscore=1015 adultscore=0
 lowpriorityscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018

Most Qualcomm platforms feature Gunyah hypervisor which handles IOMMU
configuration for remote processor and when it is not present, the
operating system must perform these configurations instead and for that
firmware stream should be presented to the operating system. Hence, add
iommus property as optional property for PAS supported devices.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
index 63a82e7a8bf8..68c17bf18987 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
@@ -44,6 +44,9 @@ properties:
       - const: stop-ack
       - const: shutdown-ack
 
+  iommus:
+    maxItems: 1
+
   power-domains:
     minItems: 1
     maxItems: 3

-- 
2.50.1


