Return-Path: <devicetree+bounces-150818-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 76B81A439D9
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 10:40:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2FED6188880A
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 09:37:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC8142676D8;
	Tue, 25 Feb 2025 09:35:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eNm5N69b"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76F492673BE
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 09:35:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740476126; cv=none; b=HAHz47wckh+/UIXRDf2HvSSHcMq95MPhLHng9zwwvIVXKGqVEb61nc4TlJVY9UuAjUDLWVsTP/gcfBN6AQLnUXyorVwfgJ6zf2HlN2URADIDT1rwTpcXWrsuyQUlpHYihXLYdJqWp4qqBPugZKlCse1QKLIVA2lSrVA+Fza4Zo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740476126; c=relaxed/simple;
	bh=O6QdMw9pPsUSonExw1v1X4uasyeeZLrOu/yWsY9TlUk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Ybj2M5vSWh3M1iuU/aJNMAu7dNmeB+HfxdOJEW9D+i1B6ny/MeQMOmixjk/9ZDKarY40tkPyIuqAjPs12RCJyCDBw9hztk2RWJSRnC3Nb4BXSIfvWyrOaopsgZmpS8KAiuocB9GXeavRUemHECTh3VbMqFdV/XGEFUVjwC4i24I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eNm5N69b; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51P8iYIF014595
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 09:35:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4aoaq0mjDOgIfsvFB0lVTIIe96cGBXl/hbTV2ZPb/9Q=; b=eNm5N69b5os5DY5X
	e+LeoRScIDgVKhf7EfRP8vq+aTAGREow7fMMROK7+gNMQOOioxoKjTj8pPPyOKIx
	ZGBeUqgwn1m3yHaj5OT+Pyxh6vu3CY5ZzIwpsDFvVIhS4YvhMgsS4fNPqWBEuQns
	hKu6n3f66OjMb8ubIQJnUXrxw0ywQYZIYnC+7jMlH9Ksn6y/rg1e+Vpd1DjBMdB5
	GFs+qjYMx4NMA1AAWdFTshA4CRPb4bF4bSENGELPl1IS5K1zeWvGB5U1Z3TLtS6u
	6Kdphgy7Nw1jKsHruG43KXq/ha33C1674IamyiSEsEMWDaiMC7ZPxge9u9n9xHY6
	RaA7rA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 450kqg4hub-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 09:35:24 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-2f2a9f056a8so11805240a91.2
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 01:35:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740476124; x=1741080924;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4aoaq0mjDOgIfsvFB0lVTIIe96cGBXl/hbTV2ZPb/9Q=;
        b=uByfgVTnX6H1BStNLePPX+zBl4sFAlfSEiUR++N1g1gPv8FPzDmxdoo4BpGfS9q7uO
         IC4RL1PeF4f76cUy1Xpxvz4QHfY0NLPMc1gOLGUpyLWa3YX/udxFXWyJtZ4s8EpGDNHJ
         Rcu1agrWx20dC3EX4K94oA76kVyx7jZCgh9fEWYhzQ2Ma603es3Cs++nRg6zSKYXybLO
         22mdwdUx14O/DGW7jW/JRuVJ2gqNh7kxTGlch7MWnXaqmEfwulqPso1xlLe5lUSXR0i/
         KEPkxq/ljk9UMxLILJOfrNnmjWAq9u5S2PiJgUwXLOhMR0rXBpADTyGF4H9iKOepJTFj
         Ckiw==
X-Forwarded-Encrypted: i=1; AJvYcCWljKEnl0uUJca+ar/viR97KjC72odOTmHT5zO0FUliv8GiznR0+wqDrwRsEgkG2wMpaa4+ga3C5s7O@vger.kernel.org
X-Gm-Message-State: AOJu0Yync7lTf19brLXjYAzt6kb+0GHVv0LNZ5lTQlSkwAMTVey2nHus
	7qR0b7+Vb0fTcPqBt8mWhZ42CjI5UNnTFGnTbW6rK6bArMqUSP0C+9ngv7sJenYX4zN66JJ3R/E
	5S/UL3okSDiWTzpxwJGhCwbELMonCx4G5N0l6KmW0PKlj9FggSn/BfeirlAhl
X-Gm-Gg: ASbGncvr4k3K07wWv38WSuMeOKWxOXDQueo8uM0v1KjRwqUubHpDuYvrVnLw1Zng/bx
	bzIbqKgVI4gd2pf0T807/m2ALL4I2JKkGajb9JybdVKB7zGztZh2YwNhVzqF2lPO8jA7coZrfNg
	yzXBdW5nNS0p17Uht3a/6W0kuBDAab2vlJ+PwepO6pP826lgiSkbU5NPEC8LKioJYrrEQSH1Zvt
	1nEouWaL7bHzkoWYBkRPohWPJo8qq61NbqO0AJe65DcVupc87pBaYsF+e/IfZM+rr65rffXjs33
	xmEQMXJrcmUkVm4pPztZSDFqPTpNFLC6OEZ0Ue1sdhHjk+Qh3h8=
X-Received: by 2002:a17:90a:d643:b0:2ee:8031:cdbc with SMTP id 98e67ed59e1d1-2fce7af3f27mr23590188a91.23.1740476123978;
        Tue, 25 Feb 2025 01:35:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEx8Q/7kpUvvQms6TaGdhGF/1FWj1acg1b6gZtuWR3LDxMd/AjBckVUsJULl3AKvVV8BfYDKQ==
X-Received: by 2002:a17:90a:d643:b0:2ee:8031:cdbc with SMTP id 98e67ed59e1d1-2fce7af3f27mr23590147a91.23.1740476123583;
        Tue, 25 Feb 2025 01:35:23 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2fe6a3dec52sm1080770a91.20.2025.02.25.01.35.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 01:35:23 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Tue, 25 Feb 2025 15:04:06 +0530
Subject: [PATCH v4 09/10] dt-bindings: PCI: qcom,pcie-sc7280: Add 'global'
 interrupt
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250225-qps615_v4_1-v4-9-e08633a7bdf8@oss.qualcomm.com>
References: <20250225-qps615_v4_1-v4-0-e08633a7bdf8@oss.qualcomm.com>
In-Reply-To: <20250225-qps615_v4_1-v4-0-e08633a7bdf8@oss.qualcomm.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        chaitanya chundru <quic_krichai@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Jingoo Han <jingoohan1@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>
Cc: quic_vbadigan@quicnic.com, amitk@kernel.org, dmitry.baryshkov@linaro.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        jorge.ramirez@oss.qualcomm.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1740476062; l=2266;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=O6QdMw9pPsUSonExw1v1X4uasyeeZLrOu/yWsY9TlUk=;
 b=b1gIs1M9+w2uwq8aKEXnUyCHK9+vOyRbRv5s4qKcQEAZdCgZPuRWhO+GdKlQIBt9b/Bn2pEXT
 uruNXKmtI+CCHawO8jaBl+e3bTGGIRKv6bJTzcR/Oz3rUUio2gnzg1U
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-GUID: 0bCsH2FAclIwCD36cKj62LDJkgQ1PGQy
X-Proofpoint-ORIG-GUID: 0bCsH2FAclIwCD36cKj62LDJkgQ1PGQy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-25_03,2025-02-24_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 suspectscore=0 lowpriorityscore=0 malwarescore=0 priorityscore=1501
 bulkscore=0 mlxscore=0 spamscore=0 clxscore=1015 mlxlogscore=991
 adultscore=0 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502250066

Qcom PCIe RC controllers are capable of generating 'global' SPI interrupt
to the host CPU. This interrupt can be used by the device driver to handle
PCIe link specific events such as Link up and Link down, which give the
driver a chance to start bus enumeration on its own when link is up and
initiate link training if link goes to a bad state. The PCIe driver can
still work without this interrupt but it will provide a nice user
experience when device gets plugged and removed.

Hence, document it in the binding along with the existing MSI interrupts.
Global interrupt is parsed as optional in driver, so adding it in bindings
will not break the ABI.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/pci/qcom,pcie-sc7280.yaml | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sc7280.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sc7280.yaml
index 76cb9fbfd476..7ae09ba8da60 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-sc7280.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sc7280.yaml
@@ -54,7 +54,7 @@ properties:
 
   interrupts:
     minItems: 8
-    maxItems: 8
+    maxItems: 9
 
   interrupt-names:
     items:
@@ -66,6 +66,7 @@ properties:
       - const: msi5
       - const: msi6
       - const: msi7
+      - const: global
 
   resets:
     maxItems: 1
@@ -149,9 +150,10 @@ examples:
                          <GIC_SPI 313 IRQ_TYPE_LEVEL_HIGH>,
                          <GIC_SPI 314 IRQ_TYPE_LEVEL_HIGH>,
                          <GIC_SPI 374 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 375 IRQ_TYPE_LEVEL_HIGH>;
+                         <GIC_SPI 375 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 306 IRQ_TYPE_LEVEL_HIGH>;
             interrupt-names = "msi0", "msi1", "msi2", "msi3",
-                              "msi4", "msi5", "msi6", "msi7";
+                              "msi4", "msi5", "msi6", "msi7", "global";
             #interrupt-cells = <1>;
             interrupt-map-mask = <0 0 0 0x7>;
             interrupt-map = <0 0 0 1 &intc 0 0 0 434 IRQ_TYPE_LEVEL_HIGH>,

-- 
2.34.1


