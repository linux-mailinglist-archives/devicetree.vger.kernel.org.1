Return-Path: <devicetree+bounces-206309-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 71FB4B2C048
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 13:27:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 79FAD7215BF
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 11:25:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CC0B32A3C8;
	Tue, 19 Aug 2025 11:24:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="W9oHRvTt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77D24319844
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 11:24:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755602698; cv=none; b=GUDAlivdSMI1AbQgbktUUj5DpyTq1hK2j08mEGjJnyzUR06r8lqyiVBrvVBe6L5HjtSg3ql6zp8iHy47t8xsGdJpx0YXJ094pfpde+GtLw3VGrXWNcXIOoVkojqhDineOcxJdRQDv08ioS6MxvlCu2un+cC1A2QmUAkhMN8DHn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755602698; c=relaxed/simple;
	bh=6zGIVoal0q1Botl1VrYUPSYwmCr3+hWouKhB2YpO84o=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=bm54lIV4X86wyq6hEC7XGHaIJqYwu1SuWx1MCm+xBP5oT2esulzRaHVhlfOJNvcAcii2WEHznweh4IHmS0PcsZc/H4Mr49e8/xZnjXydGigJJtPz9tDUJq6/cWS0jgyQwYglK0Poljy2dobsQD1+CDDnjcCQm/4blraxwsRmwg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=W9oHRvTt; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57J90ZBA021776
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 11:24:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=mmPPYECpJdniiIZqR2aXWP
	AwT4Rm24Nd+HZ11KRhT8I=; b=W9oHRvTt8uLxKAGbPXN08GDLzdqu/mjzDGufQJ
	rIFitht4rBwe7Y6x1pSQJZAFiWHOvl7LRZdv9NgfS1M7/8orI5gUknYxEqc6v1R/
	dPt4qILlHQaOauMKgeViv4RVeufMPwp5hzcDDfGmY+xaLWbIvtkXbzBTyt+QE8CK
	AJHjtBilr3VNxICglf6oLnloKimv7FGY5CzBoBRgNROhCVK3nkxNLGkJUBxh8XBr
	MuvOhHw/yo8y0gsh4ierhPFFZGOc+8OiXOtNcmPgCsdFCCjevgewVu4G0uCLQ4kT
	2TZKChrsjivlumhfu5Sljg5nLLLHz1ulew1Erq0AttCziRAA==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48m71ck1bg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 11:24:55 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-76e6e71f7c6so2031188b3a.0
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 04:24:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755602695; x=1756207495;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mmPPYECpJdniiIZqR2aXWPAwT4Rm24Nd+HZ11KRhT8I=;
        b=J8dlRNdvslC+FKUmrI5VeQ1sQwrZAULBy3RjPoK5iro/RxErp/tyJTF8dbKppPiQeQ
         2viDi1zlBZOEHColFzD93o/U1Y0ZkSTXEhilsOmCNIRfrM+agIFF8TewyQTOQZIDcN1q
         IBKuIGba7pphOQDKX0yLIbjmEt4CjsQJx1i75vesaUCFvu11dUWCdfV/zbfVWyIXCS1j
         Gzl+SMMdFIze0ZYjWQ27igpYowFMNYlJfsWlm5eDCNgQF5T7X4wkhRufuPhtPbfIlAwu
         vBCeQHvNwMPPrI6MTWdoYPLcpUS3GecHSJLYFuAgq7R4B5tCTP575H/MxODbCeRHYJfQ
         8Xhw==
X-Forwarded-Encrypted: i=1; AJvYcCU5X7idjyl7zTadpHqyUyuXZB6DZWRTbznFKtGQRFyn6fFVlnIR0/r2BB/BVHGA/lRa4biEt6coTDoH@vger.kernel.org
X-Gm-Message-State: AOJu0YyNS0DBXIr7VX0XPKiqambBeCwjtr8W7mLV/OS9ocFJdRSoFLqw
	X5l1X7qwXe/10+Ct37wegMBfMuXKGOKZ20zK/kR6JSrwaMU/+murzD/lQLyGlK0eD/eDMwQ7hf8
	SpEcuoHnbb7nH4Pahydmj8OUQRbkJ+iKX0EVepLaIPIxlckrmLQNO/mKCWhfdSKQPccwNA5gh
X-Gm-Gg: ASbGncuLmlveStN0QSnHnaz1qhnvxPHf5JTxEZbsIuXjYJ09VpWILV/jzHPRke8/2XT
	IALvvaan+7kqTZCDD4mmNgnslcIdDWsJxCafCKfykxPSSdftbzlY1+W8EYQqfBiQYhVjwZ78PM8
	0B5RN/o41nK0T3M7ZkHhF1EXw4pojDg/hG9DIHfC043a2BfurlsCC3VLxj4/5g9RlMcB15B+j94
	UJYX/hFFBcjSjuR0JoXdaY6gNX+JCrpoAmm7BtLtgC2C0AUyaL7KCzBA596AbN6mtk6gzBiJmL4
	pmpucxwghB04Jpv9pbGeo9Gf+CZwvM/nESdlbkPCjDuLez3R3nPcuaYKaHHlOHY=
X-Received: by 2002:a05:6a00:2409:b0:76e:885a:c33f with SMTP id d2e1a72fcca58-76e885ac5damr489793b3a.29.1755602694585;
        Tue, 19 Aug 2025 04:24:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEo2FKVWfTalrVTaFqonY/khI2UvhvcmfSITHtf6jcpXrgRSuC3eXlIiNMR+dXPOyrG104avg==
X-Received: by 2002:a05:6a00:2409:b0:76e:885a:c33f with SMTP id d2e1a72fcca58-76e885ac5damr489758b3a.29.1755602694138;
        Tue, 19 Aug 2025 04:24:54 -0700 (PDT)
Received: from [169.254.0.3] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76e7d4f7cdfsm2202258b3a.63.2025.08.19.04.24.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 04:24:53 -0700 (PDT)
From: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
Subject: [PATCH v3 0/2] Add OSM L3 provider support on QCS615 SoC
Date: Tue, 19 Aug 2025 11:24:45 +0000
Message-Id: <20250819-talos-l3-icc-v3-0-04529e85dac7@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAP1epGgC/02OwW6DMAxAfwXlPCOHQJJy2n9MPQRjIBOUkgS0q
 uq/L90qbRdLT5af311EDp6jaIu7CHz46NdLBvVWCJrcZWTwfWZRYdWglSdIbl4jzAo8EaDRaMz
 JSSIj8sk18OC/fnQf58xDWBdIU2D3T4I1atkoXUqJICG4wyf+dOXsxvEWJ07p9r7GWG67m2ldl
 jKPlzzwtufE9Pvhr7AtXn0KNorZDssCdN2hT3BooF6hIq51Z1V76Kesc5HhafepLWpFiqQZkCw
 21la97Gprpe0k2sbUxmmbN0zi/Hh8A8LpVowyAQAA
X-Change-ID: 20250819-talos-l3-icc-0760779a1cc7
To: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mike Tipton <mike.tipton@oss.qualcomm.com>,
        Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-ORIG-GUID: Y69ncAmYYinT455wYURKVoAYR4eygOWD
X-Proofpoint-GUID: Y69ncAmYYinT455wYURKVoAYR4eygOWD
X-Authority-Analysis: v=2.4 cv=IvQecK/g c=1 sm=1 tr=0 ts=68a45f07 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=s6kIS7z8NO5Qz9EtXoMA:9 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE4MDE0NyBTYWx0ZWRfX8LZ4P9a+9RTX
 7EZOwMC02a+5nehrCR+qvnknFq8bmw7CLVB1VpeFyr677Ml1Gw8TYZDwn0nvrb7udShe+nkZitR
 TEaKY6kjj7C6QKP+mNUfji6nBq0bAKILdyy8gSZlEU9lmTBuCSIan4/Hw5eTlo0d4jwW6f2oH/T
 iiEZ+J1VFrFg+u9HhKHruiyhT74ohKScX2RDGvzWtO6cKbGv6LcamCJnI3qGtm1RuCtdUBdbbAE
 kuLigNzdXhLxABslHo7d1uMaSpMBVg2BMoP7c73sjZxC9SEdn/zG7Zal1DwfL7TEAURCgDuLiR4
 GymLj5wVYLco6cuDSfOWqAnDGiPy3fyJcU4AHp5cpAQfe0TEtvq8JcTpuPTF2epROIxeZDtyO0i
 iqmZwJ4/
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_01,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 malwarescore=0 priorityscore=1501 clxscore=1015
 phishscore=0 bulkscore=0 spamscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508180147

Add Operation State Manager (OSM) L3 scaling support on QCS615 SoC.
This series has dependency on [1].

[1] https://lore.kernel.org/all/20250814-qcs615-mm-cpu-dt-v6-v6-0-a06f69928ab5@oss.qualcomm.com/

Changes since v2:
  - Updated SoB sequence [Dmitry].
  - Addressed review comments related to reg field in device node
    [Dmitry].
  - Updated the commit text as per review comment [Krzysztof]
  - Link to v2: https://lore.kernel.org/all/20250804061536.110-1-raviteja.laggyshetty@oss.qualcomm.com/

Changes since v1:
  - Updated dependency on cpufreq patch [Imran].
  - Updated SoB sequence [Dmitry].
  - Link to v1: https://lore.kernel.org/all/20250804050542.100806-1-raviteja.laggyshetty@oss.qualcomm.com/

Raviteja Laggyshetty (2):
  dt-bindings: interconnect: Add OSM L3 compatible for QCS615 SoC
  arm64: dts: qcom: qcs615: Add OSM l3 interconnect provider node and
    CPU OPP tables to scale DDR/L3

 .../bindings/interconnect/qcom,osm-l3.yaml    |   5 +
 arch/arm64/boot/dts/qcom/sm6150.dtsi          | 148 ++++++++++++++++++
 2 files changed, 153 insertions(+)

--
2.43.0

---
Raviteja Laggyshetty (2):
      dt-bindings: interconnect: Add OSM L3 compatible for QCS615 SoC
      arm64: dts: qcom: qcs615: Add OSM l3 interconnect provider node and CPU OPP tables to scale DDR/L3

 .../bindings/interconnect/qcom,osm-l3.yaml         |   5 +
 arch/arm64/boot/dts/qcom/sm6150.dtsi               | 148 +++++++++++++++++++++
 2 files changed, 153 insertions(+)
---
base-commit: 43c3c17f0c805882d1b48818b1085747a68c80ec
change-id: 20250819-talos-l3-icc-0760779a1cc7
prerequisite-change-id: 20250813-qcs615-mm-cpu-dt-v6-cd303ce46b83:v6
prerequisite-patch-id: 4b94c7a005b2dec7b172b82451c1d7c0d155b4bc
prerequisite-patch-id: 7952264a4038f09c49fe4a5f75c7bfdf26d2d04b

Best regards,
-- 
Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>


