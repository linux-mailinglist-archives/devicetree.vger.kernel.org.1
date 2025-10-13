Return-Path: <devicetree+bounces-225939-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D553BD26DD
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 12:03:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id F29A64E16A9
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 10:03:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63B242FE068;
	Mon, 13 Oct 2025 10:03:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aFWBKVds"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A81642FA0D3
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 10:03:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760349827; cv=none; b=RLxihXLkdUhI7PZl0BZ2KWUW4/PbPQfy8RYZwzBYMmIjR3FflmvR9avjHkkh8NfGXLuQlHDwtFFMT4p+l4gTqMZQZfj1i1/x6/3WAT4cOphmexPMC13UMhrYnRgiADL7wiZwlqlzM8vuF5HysXs8qww8PmPEwwtHbZV4wXdn09o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760349827; c=relaxed/simple;
	bh=Ei6PA3g3q24dAZqaUBEWojlEHM4dcLFS6hLuwlUwwCQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Ve9u8X2WkYBuH9xCvRxnC5hJ1Rb0fJlgZNaACsq9Kd77UbXqWiYg+XzC1U8/APmzE/4jovP221qiEUuPs9BJLIFFyHCk/hf6JN+p7dY7NXu7WqfjfQaTJbcUVLWlfUSdyvo85Ryp5hszSqzQ2OaMW7CX9q4RvI6H21z7lEG4G0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aFWBKVds; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59D2nJ5Y021533
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 10:03:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=6YRXS6ipBhlQ+K37juxhKB
	f4e2ks9vU8ljk4kcnPxL0=; b=aFWBKVdsoqJq4UrOEy3hoF3tURiGy1mGl6BOR1
	w0sNguk0nNjCD1eqALVxsMqrQeYNc2mKDKKVHxRGKxtM4Pt0YW0wclICCyY8l9TB
	cs0CcMiOjMqSGar60PtQDXBY2keV/7wbZ1CyFSJMwHnCvyqTiresdQf5Td38dgM3
	PJqXyIXpHN9O6pJMErRyOLkIJNGnbEd4eyiYN+cS3+KLK7xzATFIqt9DFXixBDCQ
	EaDPdH4bid8Sc1qLw+ctxuVYJNsEo5NH3ceKzOwqDJTKT5WtQ0/bg4zDD3bKFtKN
	zDaguK/VBd+fJyUYFTSCPeZEmUp71GoylmZeHlZBdG0sJ6ug==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qgh642vs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 10:03:44 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-77f2466eeb5so7594657b3a.2
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 03:03:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760349824; x=1760954624;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6YRXS6ipBhlQ+K37juxhKBf4e2ks9vU8ljk4kcnPxL0=;
        b=X1Pghho9ALWv8vR8hF6YszXitr6ChV9XvZbxiwmRuhwZ3LZd/IrCOl0QXPP4369+VH
         wokno07FWGoZC8ngM6JIgSVnkMGZfvtGh3QqjnaEVp0uoepSS5hQ2tMxF0aKZX6VaSuj
         Vv86w+drMBMhWxTY0iziixO2+Ut6+4CgOFMT9+tE1EjZmBhNSKsqlVq5jjYLGNfu5AuM
         scyRpHTMZtKM7tY+AU73VeIM/cNCLlEEuVFaTC02+bwmmyT+eZEBy7sC99DrcQ7DFegN
         uy4reyfz/CIGT+xMQb49sJ7kUQR1jsB5ms47boit/F349/m0O5gDSGBodPdcaQ8IHtxb
         SjJw==
X-Forwarded-Encrypted: i=1; AJvYcCVouRFMIWWqWPFgj/LaCf24tq2gTzGyEKg/0hhqW3JJOpz6eY/WZOv+Jj8YOfdrPlBD8aNGgZZMBRe+@vger.kernel.org
X-Gm-Message-State: AOJu0YweichXYsZB23cDeYljgyNpq6eMkfdDbBQBSackvBnlQjL+0mq3
	Yuzo/dbM9TMsAkmYFoIhRuGdzfsfE5xxvWNI2bd9W63pEZMJLTTI8Fz36Xq+X/0Dv2vFA2G6ZUR
	KLWnnxYOfbIZDGL4AO4746Ko2kGDQy/Ui/D8/s4rY6X1CwuwRqjq11IC8ZVI6kAeZ
X-Gm-Gg: ASbGnculxCJ2RQSJOb7187pDtCQn2y0jKYjckjhasxwUlK0nMiIQnDGKJxWAWKq4fxe
	f8lrQV9wkHbL7dlyeEybffhVT+AqzQeD5QChwgsJ3PJEtA8rnDeUmjIg7lLtpT5bMYPSTZexim/
	YLIfYk9d7uP07rd7VZccSwMcAJetYmf7rPKHsnUZHKH8RH7hIEO5H0Q+WrWmcTWfjzjtuwV0gCN
	96HubuZSZ9RP6BEv7/9HynbrCNbooN2B7P7gISzejx4E9kF7A7xZtNqaP+PAbTws9Z76tNRyhSn
	oxIby5oKOx/QpiZ2UIMzxr5FT+2p3SKX8jMz8gY0vHPlij+aaQQf3vHyFe+SoAff/FY=
X-Received: by 2002:a05:6a20:244a:b0:2fd:a3b:933d with SMTP id adf61e73a8af0-32da8541ca1mr30984338637.58.1760349823620;
        Mon, 13 Oct 2025 03:03:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE1Q/kwFAiD6RAhZvidKQboO72b1UY1lEUg3fF/y94ZV8hYjl/I3O0Fs0UJ38flG6eycX3aPg==
X-Received: by 2002:a05:6a20:244a:b0:2fd:a3b:933d with SMTP id adf61e73a8af0-32da8541ca1mr30984277637.58.1760349822883;
        Mon, 13 Oct 2025 03:03:42 -0700 (PDT)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992d5b8672sm10981657b3a.69.2025.10.13.03.03.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 03:03:42 -0700 (PDT)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Subject: [PATCH v5 00/13] Peripheral Image Loader support for Qualcomm SoCs
 running Linux host at EL2
Date: Mon, 13 Oct 2025 15:33:04 +0530
Message-Id: <20251013-kvm_rprocv5-v5-0-d609ed766061@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAFjO7GgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyTHUUlJIzE
 vPSU3UzU4B8JSMDI1NDA0Nj3eyy3PiigqL85DJT3RQjk2RDEwPzRPNkSyWgjoKi1LTMCrBp0bG
 1tQAqw7H9XQAAAA==
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760349819; l=7074;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=Ei6PA3g3q24dAZqaUBEWojlEHM4dcLFS6hLuwlUwwCQ=;
 b=Tl05bXSaLKxi5KNZBKmaY3oKMPMH9HbUCk9Hj2ABC8Z1+O57VnPEH2mqqlZ25YKUMX8YoG1Ew
 RLadSbdSG36DNgNO8er68Mt1SdhHVIKjWiqTfPPHvAlzR995yikF4pG
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Authority-Analysis: v=2.4 cv=H/zWAuYi c=1 sm=1 tr=0 ts=68ecce80 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=KKAkSRfTAAAA:8 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=ub6GwUUsmU9i4wFGv5wA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22 a=cvBusfyB2V15izCimMoJ:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyNiBTYWx0ZWRfX35TkH09GNCOP
 KVKsqACqfk0ns8G2qeQIleSAaGz1GmwaUTkr70ci5YuqEmfKr53BhrKqJEIvdc83/Acv74bfdQx
 zDmzI0VK017j9z8G83lV4EHGvzAiSR9O7QVX4yb69CfOZQOFxBiaQ4mw8q09EzYYW79OIK8ubVF
 d4uqO4UawiKauChElZNaEPY1CGeHSA/mTHNx+8cUV6jnfpdGGzaqJi7wo3AC/ILsABIU5tJggCI
 m1IejngeXq+mT68+O81g4JVxFaDMv7oWaoFEuqUx2ow53wjv0x3BUGDuq0hzkq9BJHAnLHzXDyC
 tYymviPGPF3s+905sJW/NdvN9dmeEU0sCfLOjpeDzXyDKjyrRVLdWkv6d4iTO9AOe336M8zLWjW
 m9Pq+5gRf3u+NO/osV8dWL1ZVlde3A==
X-Proofpoint-ORIG-GUID: F7-B192qcONiPUM-BmPReGn8odIGgAqB
X-Proofpoint-GUID: F7-B192qcONiPUM-BmPReGn8odIGgAqB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 priorityscore=1501 bulkscore=0 malwarescore=0
 clxscore=1015 impostorscore=0 spamscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110026

A few months ago, we discussed the challenges at Linaro Connect 2025 [1] 
related to Secure PAS remoteproc enablement when Linux is running at EL2.

[1] https://resources.linaro.org/en/resource/sF8jXifdb9V1mUefdbfafa

Below, is the summary of the discussion.

Qualcomm is working to enable remote processors on the SA8775p SoC with
a Linux host running at EL2. In doing so, it has encountered several
challenges related to how the remoteproc framework is handled when Linux
runs at EL1.

One of the main challenges arises from differences in how IOMMU
translation is currently managed on SoCs running the Qualcomm EL2
hypervisor (QHEE), where IOMMU translation for any device is entirely
owned by the hypervisor. Additionally, the firmware for remote
processors does not contain a resource table, which would typically
include the necessary IOMMU configuration settings.

Qualcomm SoCs running with QHEE (EL2) have been utilizing the Peripheral
Authentication Service (PAS) from TrustZone (TZ) firmware to securely
authenticate and reset remote processors via a single SMC call,
_auth_and_reset_. This call is first trapped by QHEE, which then invokes
TZ for authentication. Once authentication is complete, the call returns
to QHEE, which sets up the IOMMU translation scheme for the remote
processors and subsequently brings them out of reset. The design of the
Qualcomm EL2 hypervisor dictates that the Linux host OS running at EL1
is not permitted to configure IOMMU translation for remote processors,
and only a single-stage translation is configured.

To make the remote processor bring-up (PAS) sequence
hypervisor-independent, the auth_and_reset SMC call is now handled
entirely by TZ. However, the issue of IOMMU configuration remains
unresolved, for example a scenario, when KVM host at EL2 has no
knowledge of the remote processors’ IOMMU settings.  This is being
addressed by overlaying the IOMMU properties when the SoC runs a Linux
host at EL2. SMC call is being provided from the TrustZone firmware to
retrieve the resource table for a given subsystem.

There are also remote processors such as those for video, camera, and
graphics that do not use the remoteproc framework to manage their
lifecycle. Instead, they rely on the Qualcomm PAS service to
authenticate their firmware. These processors also need to be brought
out of reset when Linux is running at EL2. The client drivers for these
processors use the MDT loader function to load and authenticate
firmware. Similar to the Qualcomm remoteproc PAS driver, they also need
to retrieve the resource table, create a shared memory bridge
(shmbridge), and map the resources before bringing the processors out of
reset.

It is based on next-20251010 and tested on SA8775p which is now called
Lemans IOT platform and does not addresses DMA problem discussed at
[1] which is future scope of the series.

Note that there is a regression on booting KVM on Qualcomm SoCs after
commit efad60e46057 ("KVM: arm64: Initialize PMSCR_EL1 when in VHE").
A fix has been purposed here
https://lore.kernel.org/lkml/20251010174707.1684200-1-mukesh.ojha@oss.qualcomm.com/

Changes in v5: https://lore.kernel.org/lkml/20251007-kvm_rprocv4_next-20251007-v4-0-de841623af3c@oss.qualcomm.com/
 - Replaced minitems with maxitems.
 - Addressed comments made by Bryan, Mani and Konrad.
 - Fixed some of highlighted issues in v4.
 - Added a new patch which removes qcom_mdt_pas_init() from exported
   symbol list.
 - Slight change in  v4's 5/12, so that it does use qcom_mdt_pas_load()
   directly while it should use in the commit where it gets introduced.
   Hence, reordered the patches a bit like v4 5/12 comes early before
   4/12.

Changes in v4: https://lore.kernel.org/lkml/20250921-kvm_rproc_pas-v3-0-458f09647920@oss.qualcomm.com/
 - Fixed kernel robot warning/errors.
 - Reworded some of the commit log, code comment as per suggestion from Bryan.
 - Added support of gpdsp0 and gpdsp1 and disabled iris node.
 - Add R-b tag to some of the reviewed patches.
 - Rename struct qcom_scm_pas_cxt to qcom_scm_pas_context.

Changes in v3: https://lore.kernel.org/lkml/20250819165447.4149674-1-mukesh.ojha@oss.qualcomm.com/
 - Dropped video subsystem enablement for now, could add it in future
   or on a separate series.
 - Addressed most of the suggestion from Stephen and Bryan like some
   remoteproc code checking resource table presence or right error
   code propagation above the layer.
 - Added leman-el2 overlay file.
 - Added missed iommus binding which was missed last series.
 - Separated qcom_mdt_pas_load() patch and its usage.
 - Patch numbering got changed compared to last version

Changes in v2: https://lore.kernel.org/lkml/20241004212359.2263502-1-quic_mojha@quicinc.com/
 - A lot has changed from the V1 and a fresh look would be preferred.
 - Removed approach where device tree contain devmem resources in
   remoteproc node.
 - SHMbridge need to created for both carveout and metadata memory
   shared to TZ in a new way.
 - Now, resource table would be given by SMC call which need to mapped
   along with carveout before triggering _auth_and_reset_.
 - IOMMU properties need to be added to firmware devices tree node when Linux
   control IOMMU.

---
Mukesh Ojha (13):
      dt-bindings: remoteproc: qcom,pas: Add iommus property
      firmware: qcom_scm: Rename peripheral as pas_id
      firmware: qcom_scm: Introduce PAS context initialization helper function
      remoteproc: pas: Replace metadata context with PAS context structure
      soc: qcom: mdtloader: Add PAS context aware qcom_mdt_pas_load() function
      soc: qcom: mdtloader: Remove qcom_mdt_pas_init() from exported symbols
      firmware: qcom_scm: Add a prep version of auth_and_reset function
      firmware: qcom_scm: Simplify qcom_scm_pas_init_image()
      firmware: qcom_scm: Add SHM bridge handling for PAS when running without QHEE
      firmware: qcom_scm: Add qcom_scm_pas_get_rsc_table() to get resource table
      remoteproc: pas: Extend parse_fw callback to fetch resources via SMC call
      remoteproc: qcom: pas: Enable Secure PAS support with IOMMU managed by Linux
      arm64: dts: qcom: Add EL2 overlay for Lemans

 .../bindings/remoteproc/qcom,pas-common.yaml       |   3 +
 arch/arm64/boot/dts/qcom/Makefile                  |   8 +
 arch/arm64/boot/dts/qcom/lemans-el2.dtso           |  41 +++
 drivers/firmware/qcom/qcom_scm.c                   | 394 ++++++++++++++++++---
 drivers/firmware/qcom/qcom_scm.h                   |   1 +
 drivers/remoteproc/qcom_q6v5_pas.c                 | 165 +++++++--
 drivers/soc/qcom/mdt_loader.c                      |  42 ++-
 include/linux/firmware/qcom/qcom_scm.h             |  35 +-
 include/linux/soc/qcom/mdt_loader.h                |  22 +-
 9 files changed, 598 insertions(+), 113 deletions(-)
---
base-commit: 2b763d4652393c90eaa771a5164502ec9dd965ae
change-id: 20251013-kvm_rprocv5-d24c1407a7c9

Best regards,
-- 
-Mukesh Ojha


