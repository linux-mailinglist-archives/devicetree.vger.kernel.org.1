Return-Path: <devicetree+bounces-186438-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F01ADBD0C
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 00:43:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2363E7A7F6A
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 22:41:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88047221FC9;
	Mon, 16 Jun 2025 22:43:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="U4NdQ9fu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97DEE218E91
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 22:43:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750113788; cv=none; b=J/V9DQ7KOihuLC+sk3B/OBM8EB/bwiAsx9dyS8C6p6bbk6iY2WDKrtdzbfhvLn8SIq6yPjlGLPyWlHSQkpf6djynDhPsE3iS0yGVq3wGc4xuyQV9P5oOR5VTEFwMnXnuCbl8S5FJsK+zFehXAOHBVWZYpoCj93ffUkDhAfSoggM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750113788; c=relaxed/simple;
	bh=zomONDQ0Qx37OkiETP/pnDcvQTypzvtXen0dGdSn/YE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=hgku65EYKdndAk0HDHBme6y5suePM7y2gRgBvxrxaGJVP5nqbwBMzyUMHEegg2k9Fff4dNyuW1MkcsuwpdDgHMqH8OhEcK57/BxoZewsxgUhOaW7Sx3cNBIK0+NRqMJDhxTlTvCk7hWWn8iP74sixlvAEoY5sC9JN7mv9ymZGoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=U4NdQ9fu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55GKB4uL028698
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 22:43:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Xl/pk5AyXw9fWHquf+0bmU
	vgDIjx3jfKKP6iywcs/MU=; b=U4NdQ9fu+E1DUhB3+8fo5hzxXo8K8KkYEjIN8l
	ir+jT8ES00JHeEZ7BHv3GSu1hNK+0N/o3wXIrIYUrrrpPbrb81jW7hC8DTsuw84J
	D8drV/JYvWKj2d4VAOELGqaOAPZi5NR7q3BlI5TkZgXHmzxFlgD2Ofz+9FbajAW4
	92jxibIpjuBozG3DkV0hv6lRYdi0FcUmA4XmA3aJvlbNv+T33WaXLlWofCktqLlC
	5MGDtAfWoG//TvZp2Fz4zHE1DRWAeXDNLfJQ401/yO0ZRJiUzvNSvj2zYaIU2Ltq
	F3nHhvkFSs9hr/MJUU29v3ePzGaqwABXowgdN3rm7lklRPQA==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47928me0qx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 22:43:04 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-747d29e90b4so3843514b3a.0
        for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 15:43:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750113784; x=1750718584;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Xl/pk5AyXw9fWHquf+0bmUvgDIjx3jfKKP6iywcs/MU=;
        b=RQQOvsTbfLN98uLcCzRj1XVGboPlD4TQqDdAfrD1hljSdlmIldcPaEkTkN857jL15q
         92awdwvpbeeKmmShqQ8eBuN4SD5v4iWYSDDqQr+H9ybhTabafeMCks+jemGhfZx3/2OO
         tD8LkrLG3+8ldDLuDEUhPn1ls0JvpDsSwZwERz0ujdnWP697p3oy0ck9yg/S2Rr+tT2B
         NP1P3JAxKLN3LTKkeg/xD6+kcYVLncyhYvvSDKhFzsN256WbpvquxieHrEhs0996E1vG
         Xgats0x4TdMKgRwR0FOLDMrKPnsut6zaCRFoi8sS9dj03BlgYZBlQwRJXbMqg2hNQrAA
         EgNA==
X-Forwarded-Encrypted: i=1; AJvYcCXPTtOZiYH0ypSwKzINzxztS7lc0KffDQpnDlB9wCuPLXek+BFqVZJq+3GnEhkLkirbLhlt/yKwT/j2@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7nmT/HK4w61HYxwjP6aVuEzFZsk1PSlFp2CIkoICSTuq30NbQ
	H8wTYwjKMTi2ZP7Z+FAKMDFrgj/2wtk5KJYt+eErVKcyNUdiL2k2B/OUhzcIJOeMO3RThotiCuS
	gKi8ki3KpcvrKNjndx1g4wr+dgFJD5aYN/np0G5tug02lFGH5HILsDwVRqTp4B8IT
X-Gm-Gg: ASbGncu8l9OUJERcmlqxRmwcTrg40p7i53vt6VWaPCgwLKLCBN4Zhrf/03gnB4Eq1QG
	VZGZL8DcneA52DC4F83904eKYlU/sA+NGWdTND8K/3wXqEjfQv7KKwM4okmgu4pZaSNquSdYCpo
	Fc5oS6MFDYvPYK3tYkutKiVZsjd5t5zEPICZIl0iCbj7XC/QCrlryKEzbKUz5cy5xhfD9E6H3xt
	DhAicvsKnhxjcneknaZfCyLOTwbBDD5Npl9oKkbEfOJeLkBbxQbfVrxtdCPxZCjvijw7gCknQpP
	jD59EFaBds/k1YgFCdAuibGFIe/L+xTP/PTfwunCZW8aRxSe0rtauwzWTp4O4wbCLbRDEquN
X-Received: by 2002:a05:6a00:10c8:b0:748:2ff7:5e22 with SMTP id d2e1a72fcca58-7489cff1950mr12695011b3a.10.1750113783753;
        Mon, 16 Jun 2025 15:43:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH9UV9wLQcUsY/aC3vfdnxVaPe6n7TpuExyAehf70xpQMa7h1OtnP3qBq8I+prIqhHmzBkG7A==
X-Received: by 2002:a05:6a00:10c8:b0:748:2ff7:5e22 with SMTP id d2e1a72fcca58-7489cff1950mr12694993b3a.10.1750113783346;
        Mon, 16 Jun 2025 15:43:03 -0700 (PDT)
Received: from hu-mrana-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74890083029sm7405077b3a.81.2025.06.16.15.43.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Jun 2025 15:43:02 -0700 (PDT)
From: Mayank Rana <mayank.rana@oss.qualcomm.com>
To: linux-pci@vger.kernel.org, will@kernel.org, lpieralisi@kernel.org,
        kw@linux.com, robh@kernel.org, bhelgaas@google.com,
        andersson@kernel.org, mani@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org
Cc: linux-arm-msm@vger.kernel.org, quic_ramkri@quicinc.com,
        quic_shazhuss@quicinc.com, quic_msarkar@quicinc.com,
        quic_nitegupt@quicinc.com, Mayank Rana <mayank.rana@oss.qualcomm.com>
Subject: [PATCH v5 0/4] Add Qualcomm SA8255p based firmware managed PCIe root complex
Date: Mon, 16 Jun 2025 15:42:55 -0700
Message-Id: <20250616224259.3549811-1-mayank.rana@oss.qualcomm.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE2MDE2MiBTYWx0ZWRfX0UDnxFWXw6fp
 WuOQVLI6z4qF30g9lAIfgNJuYeSWIlrP0SsSKhINwDiAK4crHxCEp0iKuSGCa9O1vdxnUnAJwfB
 A2b0I0glGWTztGffRpr2k1OeI/gK/jlDhRXfadlYIKjcjfYtz1y09+oylR76wHTKhBP/H7helMM
 fjhJQVMt/6naLz2WSfr9eiQW9KA+BNGzwFeP2lxF73256WU+TGgOSjZeBSuJ/aqGxLFsH7OOQbU
 j+9rBsfUcn0Hi2p6DSjC6jJocBtHFDeye1APRgbfQ7S7mrba3hTTGGKNy57pe8AxgKon2UH7xka
 N5TnCaktQP4RSqVYLFsbm82TpDHnt7DuUoiXEzSjMinnoclz1tkguneZK5gi9UwOPugHqXZiAAA
 a3Eun8cM91YwpiD2WCt2kMmA+VPqB7Y2XunByRDPM/XNJGvgjyv8iR4rtthkJzHg8A9DWRbv
X-Authority-Analysis: v=2.4 cv=fvbcZE4f c=1 sm=1 tr=0 ts=68509df8 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=cBYbKlKiy6JW2YU5ZBsA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: fU2fH73u192EFgy5alnQw89RIAHRAXI8
X-Proofpoint-ORIG-GUID: fU2fH73u192EFgy5alnQw89RIAHRAXI8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-16_11,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 bulkscore=0 priorityscore=1501
 mlxlogscore=999 phishscore=0 clxscore=1015 mlxscore=0 impostorscore=0
 adultscore=0 spamscore=0 suspectscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506160162

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
Changes in v5:
- Rebased changes to v6.16-rc1 kernel and updated proposed changes to accomodate new refactoring with pci-host-common.c file
Link to v4: https://patchwork.kernel.org/project/linux-pci/cover/20250522001425.1506240-1-mayank.rana@oss.qualcomm.com/ 

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
  PCI: host-generic: Rename and export gen_pci_init() to allow ECAM
    creation
  dt-bindings: PCI: qcom,pcie-sa8255p: Document ECAM compliant PCIe root
    complex
  PCI: qcom: Add support for Qualcomm SA8255p based PCIe root complex

 .../bindings/pci/qcom,pcie-sa8255p.yaml       | 122 ++++++++++++++++++
 drivers/pci/controller/dwc/Kconfig            |   1 +
 .../pci/controller/dwc/pcie-designware-host.c |  38 +++---
 drivers/pci/controller/dwc/pcie-designware.h  |  14 ++
 drivers/pci/controller/dwc/pcie-qcom.c        | 116 +++++++++++++++--
 drivers/pci/controller/pci-host-common.c      |   5 +-
 drivers/pci/controller/pci-host-common.h      |   2 +
 7 files changed, 269 insertions(+), 29 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pci/qcom,pcie-sa8255p.yaml

-- 
2.25.1


