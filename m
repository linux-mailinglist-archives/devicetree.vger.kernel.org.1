Return-Path: <devicetree+bounces-159869-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 203A7A6C74C
	for <lists+devicetree@lfdr.de>; Sat, 22 Mar 2025 04:01:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8C9613B9749
	for <lists+devicetree@lfdr.de>; Sat, 22 Mar 2025 03:00:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC736126BF7;
	Sat, 22 Mar 2025 03:01:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oz442kMH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D3A83C30
	for <devicetree@vger.kernel.org>; Sat, 22 Mar 2025 03:01:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742612463; cv=none; b=uECJXn8WSDoHDEwMDnYM8gmC4jkzFyxl3rRCxBe7Vw4aY35Ni1A/hmxrsLMWtG72Y4jAjK95IJKfQBm7FOezTQR3LuhhGzcCqJDISalFp2Za5I+0MFT+UwVKPZQkI2SuHH5Tui+61U68+r4+WMJPp5WxO28XEvCKC+Ae156lUZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742612463; c=relaxed/simple;
	bh=D2tKhsnh5blEs1DzxESH8PuoxLuQUcwxdoQUv3qaSes=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=HugQ470/5PLELcEsX7cY6sRjIisKs/kaTBJDL1h8ds7RV71xPefvWlRjlyGsgUDzL+jQEk9GB988stzdNTHx2AFjeP3As6/bu2Pinddeo+vDmJ4ov06tpGcYG/a+JShDTV1IeSk68l/Nu29dmCL9nF/hNDeUTcbsYSmcYsTsLJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oz442kMH; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52M295cX001573
	for <devicetree@vger.kernel.org>; Sat, 22 Mar 2025 03:00:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=45l1ZobZw4y01GQbJ+7dHv
	3dvZvMcBPrHhQAvT5J3Oc=; b=oz442kMHvVXkJZvee5mfxVjJso3J54uIZk55Px
	c2fE5OSRoWUlbMySgetHlcTifm9PcpaB/ut/Qn0H6z6NoOfeErX2WUmxrupQzTgN
	9bzvDrU0vs1is1SB/OKpGnW8YPH4xlphopwXxicOmehCpUcFhUxHH85PZnicuiOQ
	Z/pHiOKttFatSnKBmFUFTaWGVfWvDhebGSsJd7iKkcUm6eJ3KRqIxgTXoX2xD1W5
	3MzOzMXlq3P+W4sbPIREGWIRJhJwM+rARpHkjV8p+bf47Z72kyXLyjmSlbV2yHyQ
	ZayM+NlHU3ecVTCh/gcPUJ9MEPO6C/XsACoXgAlTQPh+GzWw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45hm5ur1yc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 22 Mar 2025 03:00:55 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2242f3fd213so38580305ad.1
        for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 20:00:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742612454; x=1743217254;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=45l1ZobZw4y01GQbJ+7dHv3dvZvMcBPrHhQAvT5J3Oc=;
        b=oCQJ422atD0OYbP7bh77lfdLODR2J/Yia4kqjmSKd82YdgRnwRO2xGZvz5WcwGxOLR
         9UD2bb+euT07PXtDnsGWd93Bm4vBSEt9/I8k8LdFlXzUiYFHMZOJXjFtqq6Xuvg+SfZQ
         XUKxfxB5RsSQYxnQ2Qe3J6Q4RBdCMsuaxtKmnzpeD39co9nB33CGb0anVrhGkotYsd2a
         DXeX+mON2mVqkfihu28fO3Qw1TjBmqmZZfhkXwQNxlgEoU5rizMQ3kXwW8ls2tkU7llV
         s0M+uQYCERRH0Xkv3TpycUubRph9RWuZC/r84KRmHZrD+mQKhfatu/lyp9cfekN6lJRg
         vUBw==
X-Forwarded-Encrypted: i=1; AJvYcCUaKV04zwYktVN59kpodkF2RMNV4qeE70qJqYBUYdXx+FqM1/t+HeIGL3q3/6zLomBOeizRTmZZY/JY@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4L51Jz2sOYuslzuoedeR1vmU+W/WTDVknLVNuBnyVZ27IEzB7
	c60diBnPfl2MSZVyxe7GqaeWrBfYd97DalMQRDEQIDutxRM91zAV9viM+aLhxbNrCjCTGiWDn2N
	AJV5uUUI6l9Vqt5ktzItM2oxYYEc/YiL4ktZbEFWeyEqVf/gl+PCC78vyH964
X-Gm-Gg: ASbGncsdFapQRpBrTyzTAQkTEAsQXfAE+E+F+4VKU1DftF2rJUQZSUyVkggHOH3Znk7
	SDdamYFtmCSgr6q5P+uSFZ5+9K5cCPeR5rUPBc+7PXCjaxgIwu/dVhWlzkRXZHBEye8lRyv75zq
	XjcrAB2dogsrYjxxRrfoH1hNMQqmHbBPOwQfNRT3aH4TDIWjJ8zbPNNlpGyIEaLB6zElLwZXbhR
	7AbJu6UrMu4UPvzJ6RUIaXO7w+p1SsO2P1dkBy4d38XezPAYfhqz9liJEP/K7UHtMLoEA6lW09G
	k2SFfyWgsBJjIcyUXieisrs6JzWTJy7juh/FsSHSONn1fDuyexY=
X-Received: by 2002:a17:903:230d:b0:21f:4b01:b978 with SMTP id d9443c01a7336-22780e3fd0amr89679475ad.36.1742612453912;
        Fri, 21 Mar 2025 20:00:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHBADbA/BiJ2KUptzSGE9YUS7Mrp55bPo27TPCAupYlKvoFhOyVK1tzDeO0MsmBE5OxI9NSbw==
X-Received: by 2002:a17:903:230d:b0:21f:4b01:b978 with SMTP id d9443c01a7336-22780e3fd0amr89679145ad.36.1742612453478;
        Fri, 21 Mar 2025 20:00:53 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-227811bdca7sm25859945ad.137.2025.03.21.20.00.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Mar 2025 20:00:53 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Subject: [PATCH 0/3] PCI: qcom: Move PERST# GPIO & phy retrieval from
 controller to PCIe bridge node
Date: Sat, 22 Mar 2025 08:30:42 +0530
Message-Id: <20250322-perst-v1-0-e5e4da74a204@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANsn3mcC/2WMQQ6CMBBFr0K6tqRTaK2uvIdhUeogTYRiB4mGc
 HcL0cTEzSRv8t+bGWH0SOyYzSzi5MmHPgHsMuZa21+R+0tiJoVUAgTwASON3NXGqFpZDfLA0na
 I2Pjn1jlXiVtPY4ivLTvB+v0W9KcwARdclEYjFlg6UZwCUX5/2JsLXZens3Y3qZDiV2rAKtmAU
 Xst/6VqWZY3q7xq7NYAAAA=
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1742612448; l=1971;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=D2tKhsnh5blEs1DzxESH8PuoxLuQUcwxdoQUv3qaSes=;
 b=m+tnttuLPxhnC1XkqDBZWqQRtRT13nzgk233MVPGSRvb1MMSvAc0yhjhV4Y0Mcl9DHuUFt2+h
 Xzn9+R07kj2BrbbRdcNQwlH4yaWV91c4M6FLuv9n7TrRvvM+Qx+EGwx
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-ORIG-GUID: fKKHeNd6zT2UJtCyyIYNrn0RAacASn56
X-Proofpoint-GUID: fKKHeNd6zT2UJtCyyIYNrn0RAacASn56
X-Authority-Analysis: v=2.4 cv=AJKH5mlP c=1 sm=1 tr=0 ts=67de27e7 cx=c_pps a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=KRKipztoQesxEaMeAmMA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-22_01,2025-03-21_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 spamscore=0
 clxscore=1015 impostorscore=0 suspectscore=0 lowpriorityscore=0 mlxscore=0
 mlxlogscore=852 adultscore=0 phishscore=0 bulkscore=0 priorityscore=1501
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503220019

There are many places we agreed to move the wake and perst gpio's
and phy etc to the pcie root port node instead of bridge node[1].

So move the phy, phy-names, wake-gpio's in the root port.
There is already reset-gpio defined for PERST# in pci-bus-common.yaml,
start using that property instead of perst-gpio.

For backward compatibility, not removing any existing properties in the
bridge node.

There are some other properties like num-lanes, max-link-speed which
needs to be moved to the root port nodes, but in this series we are
excluding them for now as this requires more changes in dwc layer and
can complicate the things.

The main intention of this series is to move wake# to the root port node.
After this series we wil come up with a patch which regiters for wake IRQ
from the pcieport driver. The wake IRQ is needed for the endpoint to wakeup
the host from D3cold.

[1] https://lore.kernel.org/linux-pci/20241211192014.GA3302752@bhelgaas/

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
Krishna Chaitanya Chundru (3):
      dt-bindings: PCI: qcom: Move phy, wake & reset gpio's to root port
      arm64: qcom: sc7280: Move phy, perst to root port node
      PCI: qcom: Add support for multi-root port

 .../devicetree/bindings/pci/qcom,pcie-common.yaml  |  22 +++
 .../devicetree/bindings/pci/qcom,pcie-sc7280.yaml  |  18 ++-
 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts       |   5 +-
 arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi     |   5 +-
 arch/arm64/boot/dts/qcom/sc7280-idp.dtsi           |   5 +-
 arch/arm64/boot/dts/qcom/sc7280.dtsi               |   7 +-
 drivers/pci/controller/dwc/pcie-qcom.c             | 149 +++++++++++++++++----
 7 files changed, 174 insertions(+), 37 deletions(-)
---
base-commit: 88d324e69ea9f3ae1c1905ea75d717c08bdb8e15
change-id: 20250101-perst-cb885b5a6129

Best regards,
-- 
Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>


