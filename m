Return-Path: <devicetree+bounces-147033-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 496EEA3719D
	for <lists+devicetree@lfdr.de>; Sun, 16 Feb 2025 02:45:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0E1081892E58
	for <lists+devicetree@lfdr.de>; Sun, 16 Feb 2025 01:45:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 041D1D517;
	Sun, 16 Feb 2025 01:45:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IFBbSwP+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12F242CA9
	for <devicetree@vger.kernel.org>; Sun, 16 Feb 2025 01:45:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739670339; cv=none; b=WdJljHZ3snV09uzKl1kUXueVy772QlZ4QCvoZqW37xAtZHgMiK3wrg8STaWbAKd/cLaEAmvS3EPxYKdem6kuatHQ7oQbToPIPvtI+R5iFh97omdaJiJlxvOxwlvFDb948r8fS+LfzWjwvlNxMM72u4cTB8lavO/cM4a195dJZSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739670339; c=relaxed/simple;
	bh=6d/C0OzP206Bfx6ax3rRPN3TPah22XiTEZpdfRfQaV0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=eCIMpXhMuSgAxUyfdXDm1sMoaRXSmwdOLeyZ0KyVegkX7va/2wIYTqSt146AShuLbpuVyawjql9nwrR1OEfQ/WZjVE13Y3kCIi+kcwgEW1C8jlT/kDhLwTKp4j6uR5bEorO1SVAUcbVumDPniOyvfgfLIUldytchKutB2onTYrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IFBbSwP+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51G0lmXU031567
	for <devicetree@vger.kernel.org>; Sun, 16 Feb 2025 01:45:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=QChqI6vVHRRW6C7u3A4HFPKyjHOOONIPmTq
	BbAmlM34=; b=IFBbSwP+L+TKBLOwDGTSfMR5We3MsKpzulNpXwSmmpszde/zIOm
	Q8atyutJnYwGXXt5ApAhqftF4z3CgCIRxqaY4ffma2ANRT2wy/VpyT2ARs5t3vJf
	aVQCycsROPe94dL9Dz37E7CF0ZNfPZ5HyD0ICHeO4zWWN9UFkyB5CKQ9oaOSwMnz
	baNoZWcwENPE2huuhp7qJSzqnXVzKMBlg/pZygLUzuDyyJQ6hk1OZUQPJpTq2vrD
	GAdTggzkFcElz/AbFews+Q/PPuLkXeJWxyPayXAPdLyHrnuTWqM3z/VRssjLnUYN
	FMiqu6+jWjsEV2jndKlSmjhAbmhl4uF0MlQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44tktf9b1j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 16 Feb 2025 01:45:35 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-22119b07d52so4623735ad.1
        for <devicetree@vger.kernel.org>; Sat, 15 Feb 2025 17:45:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739670334; x=1740275134;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QChqI6vVHRRW6C7u3A4HFPKyjHOOONIPmTqBbAmlM34=;
        b=gc4pYFq6aenK1DrrbFFY+n/ea7N60RACBZWuop7isoQGeiu/h4d7dQgEjBplgVHnFI
         BgOjR4fljbBljq2my9hWYftWpqiTd2qj2ZVgh8ZANU9nYRjZ5H0W+cPqP+H+B69Kz7jm
         l3Nc+c5jge93AWgABVyTPC+qhmc2tve33+/Atczw3AJegQL7ndSA+ti3MtAfkLG8YuiZ
         +PCY2JXDtT7pD91OTAdBHFpLfRBg85vuMKe4U7nF2kDzxA51Jf1E7EP1+zk6d666QyzG
         /0RsDDTFwrf1jSg4gN8fuWuXQ9aMw9KEJSvTxS0Ska/Xqr01Fc8+AEDDnvdGJP5fOU3c
         2uHQ==
X-Forwarded-Encrypted: i=1; AJvYcCWkPOiW9vUc+S41ROdwkGk/dZkFk1GFN+L89fsfcJh8LPgiNr0B7IXxYbgFGwH+fJfHcdKfG4Y9mE16@vger.kernel.org
X-Gm-Message-State: AOJu0YzJDFTVDAySY4rKkyiZStD83BTM40eJtpRka2MOlbTWQKQnbMeW
	0B+0lCIk7NQGi55ze75TNDzy0YQ+UfbchV6MIJ1LyOMd7VekyiDEcVKLoBSlRO5HMPwP8zaddVX
	D5+hNNHTkNnUh1q9jWFKfmgjClAbShunVn4av0l/KbeLLYGNNzCY1xR+IWHsy
X-Gm-Gg: ASbGncvyKLd7inwgGLE4mu9uSeM2+HBFrhKCbmFairvmhdstqQz2Jn+dvuQXuLN+wcF
	2cqaJt1FaG4en9ITh39F0hNgw3C+oirysZXMqHjv8JW2grsERNRueppIZyVKmxssFpOLYrORLQ3
	Whzik0xn9IDagZDMo2sJ85oya5ETjdOcyWMt3wYAYiGq3Ho1Xkv3Kmcnhcu/9V+bhzWxHGdfOXy
	CRIhv+Xv95CKeyMEMcIsvKHfvDWzW7eKmV/7u/O+YpmWJwmPd8puAGurMDF4NnN9TiuviUeUoEP
	E8y+paAE8j0SdhVFAMBku+NrCA/3p6MNEjslakoK
X-Received: by 2002:a17:902:fb45:b0:21f:89e5:2704 with SMTP id d9443c01a7336-221040b1427mr59927795ad.34.1739670334384;
        Sat, 15 Feb 2025 17:45:34 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGk0Wm6pBDN1zI1JP/eN7P464Mszuon80WKDa6iniNlFdMaUXzJp9MDPJ+nFawzsFqmexnMJw==
X-Received: by 2002:a17:902:fb45:b0:21f:89e5:2704 with SMTP id d9443c01a7336-221040b1427mr59927565ad.34.1739670333991;
        Sat, 15 Feb 2025 17:45:33 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-220d536455esm49896955ad.74.2025.02.15.17.45.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Feb 2025 17:45:33 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
To: andersson@kernel.org, robh@kernel.org, dmitry.baryshkov@linaro.org,
        manivannan.sadhasivam@linaro.org, krzk@kernel.org, helgaas@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        lpieralisi@kernel.org, kw@linux.com, conor+dt@kernel.org,
        linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree-spec@vger.kernel.org, quic_vbadigan@quicinc.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Subject: [PATCH V3 0/2] schemas: pci: bridge: Document PCI L0s & L1 entry delay and N_FTS
Date: Sun, 16 Feb 2025 07:15:08 +0530
Message-Id: <20250216014510.3990613-1-krishna.chundru@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 3wLtbI-ZhKi0bOfl62zjkZWyWSnpq0v-
X-Proofpoint-GUID: 3wLtbI-ZhKi0bOfl62zjkZWyWSnpq0v-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-15_09,2025-02-13_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 clxscore=1015
 lowpriorityscore=0 spamscore=0 mlxlogscore=999 impostorscore=0
 priorityscore=1501 adultscore=0 phishscore=0 suspectscore=0 mlxscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502160014

Some controllers and endpoints provide provision to program the entry
delays of L0s & L1 which will allow the link to enter L0s & L1 more
aggressively to save power.

Per PCIe r6.0, sec 4.2.5.1, during Link training, a PCIe component
captures the N_FTS value it receives.  Per 4.2.5.6, when
transitioning the Link from L0s to L0, it must transmit N_FTS Fast
Training Sequences to enable the receiver to obtain bit and Symbol
lock.

Components may have device-specific ways to configure N_FTS values
to advertise during Link training.  Define an n-fts array with an
entry for each supported data rate.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
changes in v3:-
- Update the description to specfify about entries of the array (rob)
changes in v2:-
- Split N_FTS & L1 and L0s entry delay in two patches (bjorn)
- Update the commit text, description (bjorn)

Krishna Chaitanya Chundru (2):
  schemas: pci: bridge: Document PCI L0s & L1 entry delay
  schemas: pci: bridge: Document PCIe N_FTS

 dtschema/schemas/pci/pci-bus-common.yaml | 12 ++++++++++++
 1 file changed, 12 insertions(+)

-- 
2.34.1


