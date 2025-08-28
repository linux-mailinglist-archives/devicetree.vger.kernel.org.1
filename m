Return-Path: <devicetree+bounces-209988-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CF537B39C82
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 14:12:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2B59F7B63D5
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 12:10:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E9703101A3;
	Thu, 28 Aug 2025 12:10:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="g7dE6MV3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49BF83101DD
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 12:10:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756383029; cv=none; b=h2lHGt5yYr3BevsBiEE2K0DQOcoA+UJeWKqlUgAKGogRXIytvBZ5xWicqGtqmjFEcMwIm59AzuYYYzqPykPZZh+k5pqZMnomdZWZFsAb+unMVXVM2LxDsIYxS54JMAIUUsy+9rxEWlC5EXXdqHNpvkazPlru6yfTeqO8TObXCqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756383029; c=relaxed/simple;
	bh=ocglQCinQJSbwG+WjNdC7ufk+jP1Ksb5I3ifJFa2Wm0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QmqYS2Xyc2KMQ57LyqiEhNX63o2xiHSCp+nUC6ebeB0yCnSyY//zDK316tCBFzPCJoWWcQ5VEjUq93R+gjM+LizScUbPoOcNnWe39OYHlJN5rhsZDLkD6hrS803bLH12rYtgLxcnlwfOLuMmjGv0kxiMWLgLVEFRrOdRe/4J7tA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=g7dE6MV3; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57S6N7PM023046
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 12:10:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Uo/dTPnL3NKP/2wFJT7E7eWnhiOWnpWY1KrKMQaPEls=; b=g7dE6MV3ggoTZjY4
	MsDh3VF0FWkOIk41LyGUXRSu48mwdp4XieP/6Siw/kdIratYOLs4EP56Pd9QjriY
	hNqGG6zsVmk49YVNe8S8Gyyk/DPKik3mLqCilEldvQzX4ZFDmvKPmFGS+7Jut0es
	QghJoUyG2G0zg8tI+plC0TeclshKizbqWeAcWFYEGgWm9pTSgStX4JMw638zAJeW
	fAsPMqwbc+sge+QG61sSjxTUvS3MKikqepI0qf0cUNF6ipIaH4HmJmPNk5+ZEKfp
	u3+0hr2aWANn1ibgo6b46diy7uKtYQ8ojEtMlvkITiid/lSDaN/pStlC3U1hQo1+
	vk4YcQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q5y5qwvb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 12:10:24 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-327706e0642so1596862a91.3
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 05:10:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756383024; x=1756987824;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Uo/dTPnL3NKP/2wFJT7E7eWnhiOWnpWY1KrKMQaPEls=;
        b=UJPufuoEaaAlYp9+tZBZN2Ks48cDnh5XDdiHE8XE3qSG7vt+4UbNuN8HbbV5hegZ4D
         yVzt0DVxp8d3t7trsWGb4xJIJ7/Nra2ahHO0BwBw+63jSVKMJSv3NVHFO0G70xysWhFO
         X7tMh7enVtsdHVJRjY1to+PAuK/Cm937SgffaEpsLgWk1v0MAzuCpm7wAyj0MrpAoLWu
         jLqCZPc2mGUAb2b/iBOV7LX5E17pYJgqEC3QxK1IwI7ReD7blcjn7LNczWADQyGltgsa
         BC1dBpVRJyJpCWrISYKAwmsvUC4OP/ZKUtgNcArqcpRF7MdJQiEr4v3zW1ma2JFpuYFT
         +QwQ==
X-Forwarded-Encrypted: i=1; AJvYcCVK+9Cs2FTUqguXXuPX338KdHkFQJZg5dwFqLwbsCxkz66RypM6kskRC5Ifi7d96chKLnZma288Ki2/@vger.kernel.org
X-Gm-Message-State: AOJu0YzPpY1IlCSQdVGfChIjHUerIhrrrA3mjwi4e2XZtEuYkjW2eFf7
	aV9yZPyQQR8U8Rjt0OanELsmmYh958k1MzzUsrBL+vkkQ1g3aYK8PwdV0r3eO9AHF/sLupjksi1
	j77O8aWFmnCX4iRgTqb4rWsGfZoKluMxPWsesk1o3DL28mnwEP4ipC+kB8W2yJpPq
X-Gm-Gg: ASbGncvr3357iotQnYMQZa/qnInkErg9DoGmlhOXQ46rlFQ6l0EY2Rlf/oIOiC7gTtc
	LOoeOKawt4yFR7NGRGL6yR7X6KWg56+u3tkncjplVu3NQxD9zAG67KxrydsVPhUx+UvBI+adQ57
	NBHd4Q6mPLtSTRO3h+/T9kziy2SM6Lu9W+kw4zCmo5QxaQHc1XVEW1XQaTQhpzZp4DP6BZxaTq2
	bWMohZIhTPLAoDo1uReW987R6P0N4vRqhtSxYtIiZbeBwLA4ehdZNYu2AZlFY0IPXJzAZVcGEgD
	KIg8aMahfpaPtPethEovBP7dUPifSzLUL2jgZWNoPh8AK+i5On+0R/U82xuOzIfc8gwSLRRsG4U
	=
X-Received: by 2002:a17:90b:3901:b0:312:1d2d:18df with SMTP id 98e67ed59e1d1-32515ec131emr29194058a91.23.1756383023639;
        Thu, 28 Aug 2025 05:10:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHNKDnXv3VfiyIL/dLNdbQShCWmdXMnoh1NjI//DlD9thMPONtr7h73EWWWnVXj35nDWc1eOQ==
X-Received: by 2002:a17:90b:3901:b0:312:1d2d:18df with SMTP id 98e67ed59e1d1-32515ec131emr29194004a91.23.1756383023137;
        Thu, 28 Aug 2025 05:10:23 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-32741503367sm4019070a91.0.2025.08.28.05.10.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 05:10:22 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Thu, 28 Aug 2025 17:39:00 +0530
Subject: [PATCH v6 3/9] PCI: Add new start_link() & stop_link function ops
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250828-qps615_v4_1-v6-3-985f90a7dd03@oss.qualcomm.com>
References: <20250828-qps615_v4_1-v6-0-985f90a7dd03@oss.qualcomm.com>
In-Reply-To: <20250828-qps615_v4_1-v6-0-985f90a7dd03@oss.qualcomm.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        chaitanya chundru <quic_krichai@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Jingoo Han <jingoohan1@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: quic_vbadigan@quicnic.com, amitk@kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, jorge.ramirez@oss.qualcomm.com,
        linux-arm-kernel@lists.infradead.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756382994; l=1557;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=ocglQCinQJSbwG+WjNdC7ufk+jP1Ksb5I3ifJFa2Wm0=;
 b=pxhYVvJXh/UXBUsVF5XTmsLGQfjmqo1e5DxSbdAs39s+USdn55QFDV0BESSrK0o6aVHORtqyK
 EE+SzMqwjJ0Dv2FXwVIXXRbESJ5BySph77mF+5fYo+BhF+I7pmcsk7Y
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzMyBTYWx0ZWRfX7k0J5ApzgVdZ
 19fHCZi0NLjJAWpeSfXlv7rxqlsYBGgY1KwDEg7tF5+CGQIv9RbOR/AJ5Yr5c+ZL4ZFFAEUtNyu
 Lu2JnMgm0bMQFd1DHyzgIBe5IaYcQWjuoG0qhhn7sD6oVdycp5t3Grcp+3N7Mm1pTWjHOvmN7kl
 IHZuG0kY50Jv7TYOuVIFal2tF2f+9NwucqMsWH9AVo4Jhbkxkpf1jYVNQuQ5evZPSekoeFgIGLZ
 Dw4JWDTRpOJKJCG/tsF538nmk6/qPUc/PlCUsmKoW3cGRke0cCmWjgT7mmbE2nMDZWokozEG+rG
 PIdf7S76b+BraC+VkKZy32FXdlS/fia4zeZlTDE8+/jDdPtEUF6xD+CACknwNS/3GKrsHtcLrGh
 aNnLTlmk
X-Authority-Analysis: v=2.4 cv=Lco86ifi c=1 sm=1 tr=0 ts=68b04730 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=Ocqi7cVID08-S0eeb-IA:9
 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: Rg4GC_jt8J8k_9Dc_MZEcm_Hze5wWjO4
X-Proofpoint-ORIG-GUID: Rg4GC_jt8J8k_9Dc_MZEcm_Hze5wWjO4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-28_03,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 clxscore=1015 malwarescore=0 spamscore=0
 suspectscore=0 phishscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230033

First controller driver probes, enables link training and scans the
bus. When the PCI bridge is found, its child DT nodes will be scanned
and pwrctrl devices will be created if needed. By the time pwrctrl
driver probe gets called link training is already enabled by controller
driver.

Certain devices like TC956x which uses PCI pwrctl framework needs to
configure the device before PCI link is up.

As the controller driver already enables link training as part of
its probe, the moment device is powered on, controller and device
participates in the link training and link can come up immediately
and may not have time to configure the device.

So we need to stop the link training by using stop_link() and enable
them back after device is configured by using start_link().

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 include/linux/pci.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/linux/pci.h b/include/linux/pci.h
index 59876de13860dbe50ee6c207cd57e54f51a11079..848db224c49a630a33535d162b7049c37c50da5c 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -828,6 +828,8 @@ struct pci_ops {
 	void __iomem *(*map_bus)(struct pci_bus *bus, unsigned int devfn, int where);
 	int (*read)(struct pci_bus *bus, unsigned int devfn, int where, int size, u32 *val);
 	int (*write)(struct pci_bus *bus, unsigned int devfn, int where, int size, u32 val);
+	int (*start_link)(struct pci_bus *bus);
+	void (*stop_link)(struct pci_bus *bus);
 };
 
 /*

-- 
2.34.1


