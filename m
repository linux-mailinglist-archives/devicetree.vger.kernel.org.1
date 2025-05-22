Return-Path: <devicetree+bounces-179387-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B501AC013C
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 02:14:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C8F7A9E5CB1
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 00:14:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29CDD2F41;
	Thu, 22 May 2025 00:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pTEmUFKZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60E1433F7
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 00:14:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747872874; cv=none; b=IrlVSdxDlC0RDSNXM47g6AGT9mTVofYejE4E+n3DhtEeBVcIH632ZQ9TTtU+j3LdxrKBJU1HREwH06WeURL1P9UGkLmrRRdbJuFpZIocgIy4DRRP4hbeNlhPlChVECFo3aqawCLod6qihiyu26Q0rkzZsENUxF1xUl95FdkV1CQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747872874; c=relaxed/simple;
	bh=edI79B8W9Irv6D1Or/1dXWMUP7gTvkZpR+yPWqgr8yw=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=dztaj1t6a9rPzdoOLBP3XjuT0a8s07bvfSCpDI1oo4EB3rTYZYrw8Loa+lerNsH/Ww75zSaoDA4bP3DxdJyS47o/a6LUg8R6NrN3IzWOXSCbdzq1iOQ6mF8aZEMNAyL8PX4ZBUOiSvcx0OPTo9u52LcOVQd97RpeMZNPptbP0JI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pTEmUFKZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54LIBWPX016599
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 00:14:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=U6xp5AJ7VB4CMULMF+Ti29
	p5yTPqf1Xlc13Nwd3PO6s=; b=pTEmUFKZZhGpFmKQIspbFQtX0awNsuG0P54Ays
	RToo8idkHFxb+ZdB98waPAkSvUxPgKYTWTZMBroLxu99wOG4Rqh0vjP4vML4o6FC
	v2XgRey2i+hLuaO+sC6yZotcNzsV7P+IE83RsN5z8jgBNOrbLoj5fisWsxB8i7M2
	TYgG8CRYmQcA4Bg88IMb73OYmd/g6nmW2eXnlBaElSwJQup3wzMBGRhmlXOzGBQP
	ZLgSmb3M5jYqr/Ywv0/qPaFH7/CpQhifMCjMqitH7J9LJCXxNmvD5/pQjOtuaQsY
	qxHY6HdzlJXmzQxwj4O9b2lESbfRzW0Q+9QPfKTm5itLUdFg==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwf9vhgb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 00:14:30 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b26e120e300so6873299a12.1
        for <devicetree@vger.kernel.org>; Wed, 21 May 2025 17:14:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747872870; x=1748477670;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=U6xp5AJ7VB4CMULMF+Ti29p5yTPqf1Xlc13Nwd3PO6s=;
        b=l3JoWVK8y7rmQoVZ9J6GXzHgv7oTIpyOKJ1zF9XwHAHjDC5mojBwmmCbsnc2a7Y5dA
         6+GYs3bcv2crMTa82KvdHOQZPC4i5Z1t7hghE7ZdVv1SYgcENtHxoSEzwCnSBg8yG6qJ
         +REPu9EQK5PZuQaItRlmxa3em/A2dRScbJXoeeDqqmiSSuOD5vEDsCNmQF+GIYnimnmL
         YEESQDxwOxUPsD4J3nWg1W6BmcXCUc0nVarNJyKmqUL+qyvVemVxzRFg4TZ7Qkvtay1M
         T7gOUXd3HNw8ZImGukDrh7qhwRFpmWfR929By81TygYnSTvssLUp77JPdQPPXDQ1Drw1
         jTcA==
X-Forwarded-Encrypted: i=1; AJvYcCXG6ihzEa8HwWcu5ePZkEY/vTWLvwy3h76CykWJhY3Af+C+sK70K+t5Do/XGhDUbkWniEZPafHfhZld@vger.kernel.org
X-Gm-Message-State: AOJu0YxnpoWXWvD9IZiYfSPLSCkdYoDly4vzvdIzvNI0ePFv5r4XENtW
	oXXs9YDsBWa9jbLWnXuE+ZKNIrBCQ3fVjkD2e2gMIEDoyN/+QQ/DwvH8RdnvVQYjNnsfprnm4n3
	tFtIR7TI+dUBIIeFIuTFsfiXdgOj3C+yjswY/iNWUgA4IWEAgiisZqzdmP0dCtzpv
X-Gm-Gg: ASbGnctmx1quoJUeqJmHN9oAyXk4yHhqfUpiciclyDb3CkoKGOGMkYjWyhAFeBQ0BM5
	y85CfGecw/SLscdlYLkRL78qlNJHJ/vJH7t0oTTvEcTJMpUQKbW/H2ZG0ZCigzvcIo4/EU6HBEF
	axcfdQmv1W3vAQ7vVP/d5jNX3wLrhkAvGUHPIwbp/6IhbUG0F1yjTMvfCKbBLTWzyMUaVqCTtF3
	ExFGkKqKfPYeIm6BLayGRhD3R+pxLgTG374FMfTMhVJOXTlyY1c1uDSyNrEE5iqsf6gag3aiiR1
	nb81+XCHbEnhNt5T22cR2uOegUO7mkGkRUkMAnqr0ktWMaN4D29l/ovZPZk4wA==
X-Received: by 2002:a17:90b:2d83:b0:30e:9349:2da4 with SMTP id 98e67ed59e1d1-30e934931cbmr39908454a91.12.1747872869550;
        Wed, 21 May 2025 17:14:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEsweHC9ULxBh7eoovmC9696yOI/sWLnAKPkFynD6DNFZsIc6w2B5xdRvsEb7lreF2Ds+Dspg==
X-Received: by 2002:a17:90b:2d83:b0:30e:9349:2da4 with SMTP id 98e67ed59e1d1-30e934931cbmr39908396a91.12.1747872869055;
        Wed, 21 May 2025 17:14:29 -0700 (PDT)
Received: from hu-mrana-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-30f3651611bsm4617101a91.49.2025.05.21.17.14.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 May 2025 17:14:28 -0700 (PDT)
From: Mayank Rana <mayank.rana@oss.qualcomm.com>
To: linux-pci@vger.kernel.org, lpieralisi@kernel.org, kw@linux.com,
        robh@kernel.org, bhelgaas@google.com, andersson@kernel.org,
        manivannan.sadhasivam@linaro.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org
Cc: linux-arm-msm@vger.kernel.org, quic_ramkri@quicinc.com,
        quic_nkela@quicinc.com, quic_shazhuss@quicinc.com,
        quic_msarkar@quicinc.com, quic_nitegupt@quicinc.com,
        Mayank Rana <mayank.rana@oss.qualcomm.com>
Subject: [PATCH v4 0/4] Add Qualcomm SA8255p based firmware managed PCIe root complex
Date: Wed, 21 May 2025 17:14:21 -0700
Message-Id: <20250522001425.1506240-1-mayank.rana@oss.qualcomm.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=V9990fni c=1 sm=1 tr=0 ts=682e6c66 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=GGYVUzGw-MCdzQFq8EIA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: Z23DCxnXZsT1CRPEQeeLsNtHrPrOhbqW
X-Proofpoint-GUID: Z23DCxnXZsT1CRPEQeeLsNtHrPrOhbqW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIyMDAwMCBTYWx0ZWRfXwMijGfRaGnVI
 2xmbFZ7iGtKKK1xBVXwch37RjgRp8Ear7/m1E9m6kA859WtLVBX9ikEbORZyccghpl8T9iDsKq+
 nrdz1UyvJinJXDw3QxK8etUQgVScP1mIQXPOTE9wB2Ok21vjM0eHrMZE6g873tpaCZBQtVUpsm7
 gvcuvdmxDZeUCJWZnToeSowDhyKhBmZnbNYJN333+F2eTX/n/Pa+eZk+cMfKBT16fQAsPkuODlt
 PDdlGUwIZQb4mH+uq0jwYfnPBpNaJXQCOuiqYNvjycoBs6VzY+ulLdiQeWILGif1n8WiCsQcCyD
 +OBN53bB/rt1LQke2mxGf6h8VZTGMFCvzUWwpj8He+dZ5wSWCr4MF0OdNKplgJdifTkKzLemWAb
 sKCwJk0Gmp4tKB+xm/GVH+XToL2jjZH/iifQbcOGXCE0BE6E5HemwpqITId1sF/dZh8tLWPH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-21_07,2025-05-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=997 bulkscore=0 impostorscore=0 clxscore=1011 priorityscore=1501
 lowpriorityscore=0 mlxscore=0 spamscore=0 phishscore=0 suspectscore=0
 adultscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505220000

Based on received feedback, this patch series adds support with existing
Linux qcom-pcie.c driver to get PCIe host root complex functionality on
Qualcomm SA8255P auto platform.

1. Interface to allow requesting firmware to manage system resources and
performing PCIe Link up (devicetree binding in terms of power domain and
runtime PM APIs is used in driver)

2. SA8255P is using Synopsys Designware PCIe controller which supports MSI
controller. Using existing MSI controller based functionality by exporting
important pcie dwc core driver based MSI APIs, and using those from
pcie-qcom.c driver.

Below architecture is used on Qualcomm SA8255P auto platform to get ECAM
compliant PCIe controller based functionality. Here firmware VM based PCIe
driver takes care of resource management and performing PCIe link related
handling (D0 and D3cold). Linux pcie-qcom.c driver uses power domain to
request firmware VM to perform these operations using SCMI interface.
--------------------


                                   ┌────────────────────────┐                                               
                                   │                        │                                               
  ┌──────────────────────┐         │     SHARED MEMORY      │            ┌──────────────────────────┐       
  │     Firmware VM      │         │                        │            │         Linux VM         │       
  │ ┌─────────┐          │         │                        │            │    ┌────────────────┐    │       
  │ │ Drivers │ ┌──────┐ │         │                        │            │    │   PCIE Qcom    │    │       
  │ │ PCIE PHY◄─┤      │ │         │   ┌────────────────┐   │            │    │    driver      │    │       
  │ │         │ │ SCMI │ │         │   │                │   │            │    │                │    │       
  │ │PCIE CTL │ │      │ ├─────────┼───►    PCIE        ◄───┼─────┐      │    └──┬──────────▲──┘    │       
  │ │         ├─►Server│ │         │   │    SHMEM       │   │     │      │       │          │       │       
  │ │Clk, Vreg│ │      │ │         │   │                │   │     │      │    ┌──▼──────────┴──┐    │       
  │ │GPIO,GDSC│ └─▲──┬─┘ │         │   └────────────────┘   │     └──────┼────┤PCIE SCMI Inst  │    │       
  │ └─────────┘   │  │   │         │                        │            │    └──▲──────────┬──┘    │       
  │               │  │   │         │                        │            │       │          │       │       
  └───────────────┼──┼───┘         │                        │            └───────┼──────────┼───────┘       
                  │  │             │                        │                    │          │               
                  │  │             └────────────────────────┘                    │          │               
                  │  │                                                           │          │               
                  │  │                                                           │          │               
                  │  │                                                           │          │               
                  │  │                                                           │IRQ       │HVC            
              IRQ │  │HVC                                                        │          │               
                  │  │                                                           │          │               
                  │  │                                                           │          │               
                  │  │                                                           │          │               
┌─────────────────┴──▼───────────────────────────────────────────────────────────┴──────────▼──────────────┐
│                                                                                                          │
│                                                                                                          │
│                                      HYPERVISOR                                                          │
│                                                                                                          │
│                                                                                                          │
│                                                                                                          │
└──────────────────────────────────────────────────────────────────────────────────────────────────────────┘
                                                                                                            
  ┌─────────────┐    ┌─────────────┐  ┌──────────┐   ┌───────────┐   ┌─────────────┐  ┌────────────┐        
  │             │    │             │  │          │   │           │   │  PCIE       │  │   PCIE     │        
  │   CLOCK     │    │   REGULATOR │  │   GPIO   │   │   GDSC    │   │  PHY        │  │ controller │        
  └─────────────┘    └─────────────┘  └──────────┘   └───────────┘   └─────────────┘  └────────────┘        
-----------------
Changes in v4:
- Addressed provided review comments from reviewers
Link to v3: https://lore.kernel.org/lkml/20241106221341.2218416-1-quic_mrana@quicinc.com/

Changes in v3:
- Drop usage of PCIE host generic driver usage, and splitting of MSI functionality
- Modified existing pcie-qcom.c driver to add support for getting ECAM compliant and firmware managed
PCIe root complex functionality
Link to v2: https://lore.kernel.org/linux-arm-kernel/925d1eca-975f-4eec-bdf8-ca07a892361a@quicinc.com/T/

Changes in v2:
- Drop new PCIe Qcom ECAM driver, and use existing PCIe designware based MSI functionality
- Add power domain based functionality within existing ECAM driver
Link to v1: https://lore.kernel.org/all/d10199df-5fb3-407b-b404-a0a4d067341f@quicinc.com/T/                                                                                                      

Tested:
- Validated NVME functionality with PCIe1 on SA8255P-RIDE platform

Mayank Rana (4):
  PCI: dwc: Export dwc MSI controller related APIs
  PCI: host-generic: Rename and export gen_pci_init() API to allow ECAM
    creation
  dt-bindings: PCI: qcom,pcie-sa8255p: Document ECAM compliant PCIe root
    complex
  PCI: qcom: Add Qualcomm SA8255p based PCIe root complex functionality

 .../bindings/pci/qcom,pcie-sa8255p.yaml       | 103 ++++++++++++++++
 drivers/pci/controller/dwc/Kconfig            |   1 +
 .../pci/controller/dwc/pcie-designware-host.c |  38 +++---
 drivers/pci/controller/dwc/pcie-designware.h  |  14 +++
 drivers/pci/controller/dwc/pcie-qcom.c        | 114 ++++++++++++++++--
 drivers/pci/controller/pci-host-common.c      |   5 +-
 include/linux/pci-ecam.h                      |   2 +
 7 files changed, 248 insertions(+), 29 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pci/qcom,pcie-sa8255p.yaml

-- 
2.25.1


