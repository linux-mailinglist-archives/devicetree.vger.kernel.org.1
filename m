Return-Path: <devicetree+bounces-219601-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 69280B8CF37
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 21:41:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 42D281B2085C
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 19:42:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 281A9243371;
	Sat, 20 Sep 2025 19:41:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="W573NwvO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6114A23E356
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 19:41:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758397309; cv=none; b=KQ3CMZ09ibVJ1NN0SfDKolmlYlchK9IvWQsn40ykiiOqRkW+yN3D10bEcQyOoR3jM0uNH6VkwYv/JDqCjbEA3Y9JJ2bX3lmWbIzR+hyMzuXBfRVVG8bFksaD8bZwk2WggynyOtflBaVwKJgHceTY4rktR1DLJZEKTWEY0XXO3wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758397309; c=relaxed/simple;
	bh=K2OyxdO7ubcOPTwnuaRk/c9sNPk7E+gpfFWfYmyPSeE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=RmA5Gz24XEe7r4VCllhAVc2ZmeF2lKtkIieb+Bs561jJ1x9+jj7q0eMPIicx1aNZV5Ryw71ENjNmtnwuqV0tkw2pwRdu2VjcpIBlCRPc2Zjf8uEXIjjwn1zw95Ng7xXndMrPnzzJINKLZHuqiCaM1q27IuSps6eB8LBVoXLyrDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=W573NwvO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58KJKVTX003215
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 19:41:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=fT06xmtnl6rWFVbfZrdV6V
	rMvIkSRrsGT4Wh5dam0ls=; b=W573NwvOrOFVDcb0FRVhxB8Ud3ZUb7iFZwtKAD
	BZI7b4pjywkrAe9mAMVfm48vALrzemRydiQry66WDLidsQbG01yn+NBYCpWs51Zc
	mbKa13Gqizz//Xm55tK62rpF0xUfmwyDQX9WIrO/mtbtLqTHjnxp90tf7EmQbzYO
	T3GcnZidQKJn2UF/zpdttzoM3Do3V2LYS49tz5sYlYW+rBy/wD/JGanlKk6jtxG6
	Gzy+EPAra7LbnlG20khWvuL7o37e7SmonCBkbLaQegIFkEP8VD0R8DmYFTILGbUN
	ovx9iUJTRPLkQTZIP5IJpbd5d450cu2Sl7NwHWSJnUdHCOBQ==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hmnhg9n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 19:41:46 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-77615793f06so3057818b3a.0
        for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 12:41:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758397305; x=1759002105;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fT06xmtnl6rWFVbfZrdV6VrMvIkSRrsGT4Wh5dam0ls=;
        b=usE2OMXH4TDFw/9dN+27EPVTI/lDhKxd26wYhPQWkhKGQh+u6b0wgrO0D48TPnpiof
         DruMRy/eB//7N34wzt08GLtNpaPLbf6a0OYvR7Y4gZpzR9Rb5REYWi9wznBabA3Gp9U0
         okNmQ4ASyu4a8y/ZbGG4BdUv0ncaUELdLG4nPibZw8ezk8oOxe8khoT8nT2wr5bc55bm
         nZDGsXmiZddLLCAcDZ3Lk7AN4UMCnl2KnfuttT0gXLi1iKfGJGXShlvMeqoKS3GNTpFF
         GlkgUPCND14Yoesftia4naXFHHLw2HW8xNJp/yToMUgkfeQrBwzDXjV0FiRShIw//cqi
         bKCw==
X-Forwarded-Encrypted: i=1; AJvYcCVSERlGWF1D1YRnmJC4QaQrYFOs3qLAMnewcbzmWcJcu9EwKyLePR1sBcQpPtfkHznBaCW7w3ujGeEp@vger.kernel.org
X-Gm-Message-State: AOJu0Yzq+utGyFgKzZau4cKHshHH60+G7PEUcyTq0E6bC4P3y/eguXoq
	TlJvhjmufYw/d7y9w/LEKuYXVClAPxxnjlGd3MeUHA1RS14Bl4ZSqAs1N6jLJnfqR1LupdbuY+a
	6/q5zLSL06EYK6Wxslb88xn31/yob2EE1YuOSY0Ku98WXtGhLq/oZPOZ0Tahd081K
X-Gm-Gg: ASbGncvve2f5AxJ/8m7twGIrhCt6AZ5gE36Emp70+NTD7SiRKKNouUAZXdvPrFdGTW0
	F+bwKcdwFJfZVTq7hMi8fQos6e+BwiB0Ixq1NmP4m8y3ttxTM3aX14BHHummO81/rMnRz4kmVYf
	lLbQGDHDLYCdBUjh6Aw04CgPLoz1u76I7X2ouVXgWPe3AJ+q0PjkgznhyjP3+iOs6oYktTr0ewh
	z3jSr5Z2ADaFXVXyqkP6FvBEOrYqnJddH2VUIsWTJrIb4YzARAaccnpYjJcq6rFwdbsKZw9LVOv
	2xnRdmMKxXROH4VUqICmYy5FOJigeq2yY6d1TdPjiTI1iK1A5fsUGWYlkxT0IOoaSwA=
X-Received: by 2002:aa7:8892:0:b0:771:fa65:ae6e with SMTP id d2e1a72fcca58-77e4e9b283fmr9779088b3a.17.1758397304472;
        Sat, 20 Sep 2025 12:41:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEVBpwzcISySMoRxxhSW3bqAQjfkkmpHz+UKOp5LWSOH0BtJkY9TttWmnrSMnElGO3I9VQqkw==
X-Received: by 2002:aa7:8892:0:b0:771:fa65:ae6e with SMTP id d2e1a72fcca58-77e4e9b283fmr9779059b3a.17.1758397303977;
        Sat, 20 Sep 2025 12:41:43 -0700 (PDT)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77f2c8aa554sm143767b3a.34.2025.09.20.12.41.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Sep 2025 12:41:43 -0700 (PDT)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Subject: [PATCH v3 00/12] Peripheral Image Loader support for Qualcomm SoCs
 running Linux host at EL2
Date: Sun, 21 Sep 2025 01:10:58 +0530
Message-Id: <20250921-kvm_rproc_pas-v3-0-458f09647920@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAEoDz2gC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyjHUUlJIzE
 vPSU3UzU4B8JSMDI1MDS0NL3eyy3PiigqL85PiCxGLdFFOLtFTjJAtLk6QkJaCegqLUtMwKsHn
 RsbW1AAFePm1fAAAA
To: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.14-dev-f7c49
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758397299; l=6066;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=K2OyxdO7ubcOPTwnuaRk/c9sNPk7E+gpfFWfYmyPSeE=;
 b=oTq0EA+J851yqjgWugcghVLyhbBc/9uMo0h6d2YorWDNXrLOeSkR/DeNihp/ezF1AbN9OTjVv
 Dz5n0K6ZRk1C1ZEky0HI+DBUl0qIt5yXeMOB+8aS0YvbFiiIHokHR56
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Authority-Analysis: v=2.4 cv=YPqfyQGx c=1 sm=1 tr=0 ts=68cf037a cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=VEXWNMxOzYjbEOQZ4E8A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22 a=cvBusfyB2V15izCimMoJ:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: EetY_fSc20pHGjAkOlp7HwR9XMIVjXHT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwMCBTYWx0ZWRfXxfXHLR93Hx+4
 SBTVlk+VUhQKgCtfCk/+aYnydV1z8/jwiKReQaLR29HjKxxRkuZBjPSzRk9aaN25TKZBcvvGnId
 Ci4ps1tRwzvrn6CwuweKfyy1KK5ylEyLeQrYug+4H8X5C+V3mAAVI0BElWIuIuoDGBr67unA1Uo
 pR5p4wq3+EJzTuISlm5K4T+lnYPU1PM+NYVA5uDosZsa+a7Ll8aK0utdcs9I/9ZVG7Wk5raaFib
 hCrVYcxJNcEgtTRB1AmXzcuvYruH6ybIA6Mq+LvVtpscb8xC23O6uomcog6IDNTKp4VKmdoNopG
 bwcODc0ieHUaJxULmVkWtQLgOOt3jXPtHhRSZj2xuKBKvHV07VsWs/yII4YUwifubFaagDYhqp0
 s3ci7sdi
X-Proofpoint-GUID: EetY_fSc20pHGjAkOlp7HwR9XMIVjXHT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-20_07,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0 adultscore=0
 clxscore=1015 impostorscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200000

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

This series has dependency on below series for creating SHMbridge over
carveout memory. It seems to be merged on linux-next and pushed for 6.18.

https://lore.kernel.org/lkml/20250911-qcom-tee-using-tee-ss-without-mem-obj-v12-0-17f07a942b8d@oss.qualcomm.com/

It is based on next-20250919 where above series is already merged
and tested on SA8775p which is now called Lemans IOT platform and
does not addresses DMA problem discussed at [1] which is future
scope of the series.

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
Mukesh Ojha (12):
      dt-bindings: remoteproc: qcom,pas: Add iommus property
      firmware: qcom_scm: Rename peripheral as pas_id
      firmware: qcom_scm: Introduce PAS context initialization and destroy helper
      soc: qcom: mdtloader: Add context aware qcom_mdt_pas_load() helper
      remoteproc: pas: Use PAS context awareness in smc and mdt functions
      firmware: qcom_scm: Add a prep version of auth_and_reset function
      firmware: qcom_scm: Simplify qcom_scm_pas_init_image()
      firmware: qcom_scm: Add shmbridge support to pas_init/release function
      firmware: qcom_scm: Add qcom_scm_pas_get_rsc_table() to get resource table
      remoteproc: pas: Extend parse_fw callback to fetch resources via SMC call
      remoteproc: qcom: pas: Enable Secure PAS support with IOMMU managed by Linux
      arm64: dts: qcom: Add EL2 overlay for Lemans

 .../bindings/remoteproc/qcom,pas-common.yaml       |   3 +
 arch/arm64/boot/dts/qcom/Makefile                  |   7 +-
 arch/arm64/boot/dts/qcom/lemans-el2.dtso           |  28 ++
 drivers/firmware/qcom/qcom_scm.c                   | 414 ++++++++++++++++++---
 drivers/firmware/qcom/qcom_scm.h                   |   1 +
 drivers/remoteproc/qcom_q6v5_pas.c                 | 187 ++++++++--
 drivers/soc/qcom/mdt_loader.c                      |  19 +-
 include/linux/firmware/qcom/qcom_scm.h             |  36 +-
 include/linux/soc/qcom/mdt_loader.h                |  15 +-
 9 files changed, 607 insertions(+), 103 deletions(-)
---
base-commit: 846bd2225ec3cfa8be046655e02b9457ed41973e
change-id: 20250919-kvm_rproc_pas-d58fe3b894bb

Best regards,
-- 
-Mukesh Ojha


