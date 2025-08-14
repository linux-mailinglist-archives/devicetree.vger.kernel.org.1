Return-Path: <devicetree+bounces-204576-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C8070B25FE7
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 11:01:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A2B351CC44D2
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 08:58:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A9072F60D4;
	Thu, 14 Aug 2025 08:55:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SaQi4MQF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7D2F2E9738
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 08:55:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755161741; cv=none; b=SAP4PhtEN5PF0b4OSyBI+NCPIcm+qM5oYv8QhLqilcYXDvvSYdMspicm9L7Ybnwu1OLXIoz+sfIKAvkedLw9k/O8giF4sw4XX4j1Ac/3Ck02YU8SZCGfjyGawTd6AcWC7SOKkP8kBFXse3haAhkNZHZ5+Zm1QXwS7bIFiW9xAjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755161741; c=relaxed/simple;
	bh=ABz3Vd7OpvnplNrnAFyorfBSQqX6Mgi/WXBpe8K7daU=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=uOCGDitb26t/Y0sf6e1IhuGY+8ljS5hfJxMBpzLrmMt8q+oS47rdx0c+AUNWf56l3XBgPXTBZT91SPLFjyhhQdmkRuvPmQM+JarmfSZPapttFi5Qp/HdtkfrPP7vk+xcnJ1UBrH0dpyETxGUJEgf7qnQWOonfJRyUMek5sPUogE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SaQi4MQF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57DMawsk023949
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 08:55:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Z6bU/P/DcW5rjBL2ocVNZh
	QGk5A0qHVsZ99X5Qj79p8=; b=SaQi4MQFOFJzva6TlAqabNkt7MktMWcd/dvjaT
	tAQF78WS/6jOZ3DIlUIZb1cO9CJRooEE4azlbKg6xCC4mMuGW+H2BeEAvFtTX6zX
	Fiq2Fmror9pXQq6/69xHQtb4ExiPzSAdxptBW15gA9yrZGeHWHIrtNef1poaFnZO
	oy9nhk20lYhXE3dM680LNcyydfcGTpBj9Np8OnhYaDkteRfHbOW/n1wPOrgZZqtn
	fgS7nHIHY++M0mkFKk5ogApiJPChLPZ6/xF4SAz4i9+WMYC9sNmaOYGL/iIgaDGP
	Xe3dPfjrGrp5crhQ4Syi68Wtm/V+F5zPxuCDwahAiyEnY84w==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48gr9rupb7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 08:55:38 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2430c5d4d73so21030515ad.1
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 01:55:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755161738; x=1755766538;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z6bU/P/DcW5rjBL2ocVNZhQGk5A0qHVsZ99X5Qj79p8=;
        b=BLQsB/wJrEJgaykKOWn6dFRSiA+KZOjaaKmC8a6N/Psxtc6X3oEZiY9+H35AvJgQsO
         ErYrHIPFC3tluN8A4SGdAVJso2OPzhjSOZSXDwvrBVGxINnzWKrH8MieqEnw27+t7LHZ
         TEBxVt+95z7gk+Vy5SZKnH/FSo6ceK72JMTtwIVuamQWMqhV3nQevxOHMoxT88qW1iNy
         WhMgh2pk+jJH/hBvCNMQvkTtTIJO/aC028NbXizJbBagMOVCcSHSHwDWZ538dWQJRGrX
         a0WgWPC1BJW3JRFuhmKpZMKo2rogU0VEC4goS5yzZay6zFJcRuDo6/kN4mCMGLlkx3nt
         JInw==
X-Forwarded-Encrypted: i=1; AJvYcCUPlvGGFK5ozPB+cOiy3J+C3D4Dm4PmEgbTXR/WvFaW4qjBeKIGUR6cCtxOSQJwbqfU1WdbyENIB2/F@vger.kernel.org
X-Gm-Message-State: AOJu0YxS2rGK5HBsVSbgZLWkThWPpQ2NU8aGpVc2kGEeJGhKerSxQQd0
	NinVsKNZCtzzkHZnzSOaxoPtXnFKjkJ9z8ub4FI3yOBMXXyjOS99Hx394eyTPF2iU4Kv81PZXsC
	CSzfFCqWlMe7mNmpYC1zP4ktStdw8hZr0TSnVfopXdgV3bgY0cGoIb3/WlDvul9xK
X-Gm-Gg: ASbGncuGwQ1BWld33HpjHzAg0Pu0UXss7Bc1E07wEyxyceAhul4c5iOOUE1AWEJ1z/g
	xsM8xPDIdyFLkIajFPQGRn83oq1PQ/PtruEY5VztAGTc0bleEeLhSShcf2Wyz1xWGtqUHlmXen+
	6NOTkLCaKVTfNaVTqEDSqULMQ7EUAbttac/Xpy5NsHvhpTFKVQj9/mfnGSGOFNTDKVfc+ZV/OOA
	LpNkQizDGpWnQp7Unb7qxwXJaJGxUCSrW9VSYrlZo6S2XV/xYM3OXbvb+DxByqOv6Juvj8EwcCC
	FYQpq41tvS+V/ND+fUA+EbPRIyOlky/hg3upKVFFvIpQfU+fydc9l9EFN7njugAQ
X-Received: by 2002:a17:902:ef06:b0:244:5bbe:acdd with SMTP id d9443c01a7336-2445c698b4fmr16683305ad.27.1755161738019;
        Thu, 14 Aug 2025 01:55:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEur2xKum80YQ9UGLP6Ek5ZnQ0Ukqh41egTQ1Is2+//viGT5AvV6ZOomCsMDLgTJqtiZEeIWQ==
X-Received: by 2002:a17:902:ef06:b0:244:5bbe:acdd with SMTP id d9443c01a7336-2445c698b4fmr16683075ad.27.1755161737578;
        Thu, 14 Aug 2025 01:55:37 -0700 (PDT)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-241d1ef6713sm345395075ad.12.2025.08.14.01.55.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Aug 2025 01:55:37 -0700 (PDT)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Subject: [PATCH v6 0/2] Add support for clock controllers and CPU scaling
 for QCS615
Date: Thu, 14 Aug 2025 14:25:22 +0530
Message-Id: <20250814-qcs615-mm-cpu-dt-v6-v6-0-a06f69928ab5@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHqknWgC/x3MTQ5AMBBA4avIrE1Sqo24ilgwHczCX4tIGnfXW
 H6L9yIE9sIBmiyC51uCbGuCzTOguV8nRnHJUKrSqLrQeFCwhcFlQdovdCfeFslppYkrO9QaUrl
 7HuX5r233vh9UokWwZQAAAA==
X-Change-ID: 20250813-qcs615-mm-cpu-dt-v6-cd303ce46b83
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODEzMDA5NCBTYWx0ZWRfX0EzzPAsXU9HA
 suG5+jJHVeLQQWKqNICR8cIsevrrUM+RPcn3k1s7tO9O5iThO2vb+oJfPmwAYcRaLebhNxLpyai
 vUVtCm3AX+awTUb7rLW08oGty31s/LW+BGW4E7TrNHL2dyxsPdAaeSOaK12zzid0+Z7BCIIh8af
 kqZLWx/f3KWsabNL23bnbE9p5qy4GxPmdt86RTabsw3Lr69tydnryd8OUgTHTR1ObrXgGW4flaQ
 pK2LQ9Cn9pSgx/fFIK6A3sqmbiwVZXibBeskgACwE0PAn02N2Fr7FigG+SGpBS9nK2Xv9V3NKsO
 HIOC5/wA8yai0/S2/jOODLwRAh43zGHfsYITUb3LwVTl27uW+3Vr4jsakGfx5b7E1y3+37ffOpm
 uNo5fT7o
X-Authority-Analysis: v=2.4 cv=NIrV+16g c=1 sm=1 tr=0 ts=689da48b cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=EUspDBNiAAAA:8 a=ukys1PUpxxTaYa5xlC8A:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: 6jbWbMVf1xPIjenr2ZWH5QPevhZE99BS
X-Proofpoint-GUID: 6jbWbMVf1xPIjenr2ZWH5QPevhZE99BS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-13_02,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 impostorscore=0 adultscore=0 suspectscore=0
 spamscore=0 malwarescore=0 phishscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508130094

Add the video, camera, display and gpu clock controller nodes and the
cpufreq-hw node to support cpu scaling.

Clock Dependency:
https://lore.kernel.org/lkml/20250702-qcs615-mm-v10-clock-controllers-v11-0-9c216e1615ab@quicinc.com/

Changes in v6:
- Rebase to patchset to sm6150.
- Fix the gpucc and dispcc device tree nodes for the dtbs_check errors.
- Update the author email and SoB to use the new 'OSS' email.
- Link to v5: https://lore.kernel.org/all/20250702-qcs615-mm-cpu-dt-v4-v5-0-df24896cbb26@quicinc.com/

Changes in v5:
- Update the documentation for CPUFREQ-HW for QCS615.
- Update the device tree node for cpufreq-hw to point to the new compatible.
- Link to v4: https://lore.kernel.org/r/20250625-qcs615-mm-cpu-dt-v4-v4-0-9ca880c53560@quicinc.com

Changes in v4:
- Fix the typo(removal of "") from cpufreq-hw node
- Link to v3: https://lore.kernel.org/r/20250612-qcs615-mm-cpu-dt-v3-v3-0-721d5db70342@quicinc.com

Changes in v3:
- Move the cpufreq-hw node under /soc {}
- Add the RB-tag on (v2) from [Konrad]
- Link to v2: https://lore.kernel.org/lkml/20250119-qcs615-mm-v2-dt-nodes-v2-0-c46ab4080989@quicinc.com/

Changes in v2:
- pad address field to 8 digits [Dmitry]
- Replace cpu/CPU in commit [Dmitry]
- Update the binding to use SC7180 compatible, as QCS615 uses the same
  hardware version.
- Link to v1: https://lore.kernel.org/r/20241108-qcs615-mm-dt-nodes-v1-0-b2669cac0624@quicinc.com

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
Taniya Das (2):
      arm64: dts: qcom: qcs615: Add clock nodes for multimedia clock
      arm64: dts: qcom: qcs615: Add CPU scaling clock node

 arch/arm64/boot/dts/qcom/sm6150.dtsi | 86 ++++++++++++++++++++++++++++++++++++
 1 file changed, 86 insertions(+)
---
base-commit: 43c3c17f0c805882d1b48818b1085747a68c80ec
change-id: 20250813-qcs615-mm-cpu-dt-v6-cd303ce46b83

Best regards,
-- 
Taniya Das <taniya.das@oss.qualcomm.com>


