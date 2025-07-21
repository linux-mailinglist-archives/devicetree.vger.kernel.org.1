Return-Path: <devicetree+bounces-198343-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 035F9B0C758
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 17:18:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4FD674E4EFF
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 15:18:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F36D2DE213;
	Mon, 21 Jul 2025 15:18:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DAiCgRJw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6AD32D838B
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 15:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753111104; cv=none; b=VewBYSfv2QfN8a1xl6r5lWuOuZfrQ0AbmANguVqPwqHDhYg6LF6zFV/h7FyxoPW2gRssmexZm02RBoons75TCKPj+3q++as6D+mPJa7DHSq6cJNqnelsoE3vnPnix8BGXNmTHRiafbH4qM6waRai8+kmgbuOrsQw6nW8Est8Sgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753111104; c=relaxed/simple;
	bh=SXL92SK6RLnjeu4TR611q3PmOYh1uO3csbhddbYMOKU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=V2/Sy5Ih45pjHbTUdWQlYk6Lzmx2F1YIDbA0Q06rWZXsVwz4X8p6F8vVScOu0SD+IQpOuh44SYk6uPyjVZ7jhqUlKOfEAlr000ir63IPQBr1i9t6oaZgsoCgWt0QeZDl+DYxEoThB+2DWAM5uCcN/pIRPKZsQO2NVoMHFlTJ9OI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DAiCgRJw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56LEevhd012558
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 15:18:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1BdmigYJpjrB18BbkMDFazSUEuKPPs8PoGZmiojEMqI=; b=DAiCgRJw2OwUoLBo
	xejOmvcpDQLO32S7cxefoMsenyKV6lyVx3Mgr+0bXGlUDkurKUXh3a9TpZ0bTpVQ
	k+2hMswXU+uio/dDzKepfL0Ae3Lwyvvn2lTcW+vVpGmTH20vO7vrrZQ2Wq6rSU8H
	tO4kqDkizXuo87O8miuGQZab/fegso4cuYYGnqWnSh3ub6GjRdIbShDSR8YVWGgo
	Tfys32Rqf0/dnLVlpzxsOyorWJv2xB3duHLxsGLwglfbp7llmCbBLPZLP2ljmbeD
	XaFY/I8bu4ksT8QxSAIOnPA1awLGBEmoiWzSt5OOqskUPLy2A0yC01BZO7IEPrIh
	SrKZlA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 481qh6g5hj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 15:18:21 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2349fe994a9so35696755ad.1
        for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 08:18:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753111100; x=1753715900;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1BdmigYJpjrB18BbkMDFazSUEuKPPs8PoGZmiojEMqI=;
        b=VAtBrTNXQWk8yo/BMeZYxHL5cDv7JlAKgHswkLjH5JcnG+jI/1tLFNv9P/wE+JMNIa
         CABoT6isVt2Rjlefj3UPA1X4oddV1S8A6E5pYFwRUBqtDptWVLUy+g2YJl0k3RgBYb6r
         Y4YN0GPAeKEaBRvkSPfcKOErVmkjn6JeDLLhsSn1BKyditHWVD8ezNXiL1XFChEjmRjy
         PnklrisXxj0y7MZ8rqFZw0iFDORnjnVZ4zHZt/4oWPqN8uq7DBah//xFl/OWTya4R5Fu
         3b9wPnPDN43p6q0FKKf/rV7ts55udLH4ffzgedZvYwfhiC9b1kHw3ME0tNNO7NTTUkgq
         6peA==
X-Forwarded-Encrypted: i=1; AJvYcCWtewzmnMVHXBPENVCP3EL29PmIqtNnePmyJ0SGFm/DA8++NVBKe3dUwuMSqiIPzkvbOsSCgTuNjrW9@vger.kernel.org
X-Gm-Message-State: AOJu0YxSjF9UMrD5AWl05qVct74eV2zY5Uz/2XO+SUMUzq31M/r8ThKa
	cauC+4O7Ty6/aBDbuZ424zjbbescXcnJBeECCcehnjsH+bmF7hickzwJ+T3boUfzsZ8EAkpS1BF
	/KJqLeGGCrRNyOQVJ28ojpQlDeH+1tBMYpQ6rb5+MsG2s5oj+C2LesEG5w20VND8R
X-Gm-Gg: ASbGncsf4bI9/VeTczy0eQrxv4MJljZwcccoMsnbUUXy9sdSkw+kv7NBTx3eRDxjmMb
	DLxq11Nmt4j56wZfDG2toOUaHgYqub2Li2BJqx5019IWZ2VBEs7FMJ4W08QHteg4nC5DrKQL5ow
	WUocsEuLHDvbaNosLs85BUb+ioOGCNQXkqHvWgezPY6hWTgITOg72vc/iamWA+zNryr7FKAIi2O
	3CZBInj1beOOO1Q2Ah0KYsSQ2Bzh5PBVLaiWrJr1Tmv6QZdjTt10yAHva3VAla26Vm9BgQwjzRj
	4Y1rIw8zaX59ZUF7EeKmhbVN1Sz1mCJk6A==
X-Received: by 2002:a17:902:ccce:b0:235:f143:9b07 with SMTP id d9443c01a7336-23e25684c62mr307165985ad.5.1753111100275;
        Mon, 21 Jul 2025 08:18:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG8ugeT+tg1rObYeMWRAE4o7TCFabu2wYnT3Pq2XvXvsVUV+/A6SbpWkAPzmNqqOT48gw/5Cw==
X-Received: by 2002:a17:902:ccce:b0:235:f143:9b07 with SMTP id d9443c01a7336-23e25684c62mr307165455ad.5.1753111099767;
        Mon, 21 Jul 2025 08:18:19 -0700 (PDT)
Received: from [192.168.1.17] ([120.60.76.1])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23e3b6d22e4sm60329335ad.153.2025.07.21.08.18.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Jul 2025 08:18:19 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Google-Original-From: Manivannan Sadhasivam <mani@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Anup Patel <apatel@ventanamicro.com>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Marc Zyngier <maz@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Danilo Krummrich <dakr@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>, Arnd Bergmann <arnd@arndb.de>,
        Shuah Khan <shuah@kernel.org>, Richard Zhu <hongxing.zhu@nxp.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Rob Herring <robh@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Frank Li <Frank.Li@nxp.com>
Cc: Niklas Cassel <cassel@kernel.org>, dlemoal@kernel.org, jdmason@kudzu.us,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-pci@vger.kernel.org, linux-kselftest@vger.kernel.org,
        imx@lists.linux.dev, devicetree@vger.kernel.org,
        Niklas Cassel <cassel@kernel.org>
In-Reply-To: <20250710-ep-msi-v21-0-57683fc7fb25@nxp.com>
References: <20250710-ep-msi-v21-0-57683fc7fb25@nxp.com>
Subject: Re: (subset) [PATCH v21 0/9] PCI: EP: Add RC-to-EP doorbell with
 platform MSI controller
Message-Id: <175311109182.25848.8880954995049551501.b4-ty@kernel.org>
Date: Mon, 21 Jul 2025 20:48:11 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.2
X-Authority-Analysis: v=2.4 cv=CZ4I5Krl c=1 sm=1 tr=0 ts=687e5a3d cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=5oemJFBbzWj47VPNxq3P8A==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=FZZ2ILZgcEXfV6c6dVwA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: 2ljcSZt6vf7FoHiAbSMaBcevAMGxEVYG
X-Proofpoint-GUID: 2ljcSZt6vf7FoHiAbSMaBcevAMGxEVYG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIxMDEzNiBTYWx0ZWRfX6KLrPOOQxVv8
 6rzwc1a9fJx34xSngPHNHOhKA8aLptfNQjxcfejmdrZ3yjF8cYmBTk26QJkDmWvyc00Zsp14/rt
 2zluxQrN28HCUnrnYCa+VZWrBQXvPm53bt8sUtqCQSrEYxTVNjBEzICj6cPAco+Of7P7chGw+VI
 qHokxVuwEoQBQ8S8kwQ3JMxhxkWF894INI1b4FBWG8f9D1oJZ+Kf/ncP830UVRsfN0LxLzy/EKk
 KaUX+a7K3k/94ijlk+UwHh0xptZ8NsqQUKdwoWFGPi4lb/HMbJrRBwT499yOa/s6C0bDqKLp83Y
 SyI/CznKTFbjCYpwwYXpg9q7ylpqV6qdJxr+PY32zOzrycQtRp95yoZd3/1/lcafvuZDLEEw09R
 g6Isqcu7x4lW7pxML46NuaDdc4ZWhbJ8FNupjr8XbyyAsMsqIxbdxz2BEyzsJx/U9ssMQ3vh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-21_04,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 mlxlogscore=813 impostorscore=0
 clxscore=1015 mlxscore=0 lowpriorityscore=0 phishscore=0 adultscore=0
 bulkscore=0 spamscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507210136


On Thu, 10 Jul 2025 15:13:46 -0400, Frank Li wrote:
> ┌────────────┐   ┌───────────────────────────────────┐   ┌────────────────┐
> │            │   │                                   │   │                │
> │            │   │ PCI Endpoint                      │   │ PCI Host       │
> │            │   │                                   │   │                │
> │            │◄──┤ 1.platform_msi_domain_alloc_irqs()│   │                │
> │            │   │                                   │   │                │
> │ MSI        ├──►│ 2.write_msi_msg()                 ├──►├─BAR<n>         │
> │ Controller │   │   update doorbell register address│   │                │
> │            │   │   for BAR                         │   │                │
> │            │   │                                   │   │ 3. Write BAR<n>│
> │            │◄──┼───────────────────────────────────┼───┤                │
> │            │   │                                   │   │                │
> │            ├──►│ 4.Irq Handle                      │   │                │
> │            │   │                                   │   │                │
> │            │   │                                   │   │                │
> └────────────┘   └───────────────────────────────────┘   └────────────────┘
> 
> [...]

Applied, thanks!

[3/9] PCI: endpoint: Add RC-to-EP doorbell support using platform MSI controller
      commit: b537ffe0eb2ab458f20ec135cc2b565c63a2ea00
[4/9] PCI: endpoint: pci-ep-msi: Add MSI address/data pair mutable check
      commit: 1f2ed78e43abb9ac0856a82867f64d472368a832
[5/9] PCI: endpoint: Add pci_epf_align_inbound_addr() helper for address alignment
      commit: 1c2c5f9855a5cf4617bcda721c22dbd3345f06a1
[6/9] PCI: endpoint: pci-epf-test: Add doorbell test support
      commit: 5d4da5f8092e5a77ae371ae1112283b59790ac22
[7/9] misc: pci_endpoint_test: Add doorbell test case
      commit: a1a293e709a4ec0fa2e4253993a4b75f581c6cf2
[8/9] selftests: pci_endpoint: Add doorbell test case
      commit: b964b4894fcfc72e7496cf52a33cbba39d094c5b

Best regards,
-- 
Manivannan Sadhasivam <mani@kernel.org>


