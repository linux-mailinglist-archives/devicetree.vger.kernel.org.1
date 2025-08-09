Return-Path: <devicetree+bounces-202921-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DEE1B1F3E7
	for <lists+devicetree@lfdr.de>; Sat,  9 Aug 2025 11:59:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8627456577B
	for <lists+devicetree@lfdr.de>; Sat,  9 Aug 2025 09:59:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F203325394B;
	Sat,  9 Aug 2025 09:59:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Lu7jw/XP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F53724A047
	for <devicetree@vger.kernel.org>; Sat,  9 Aug 2025 09:59:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754733584; cv=none; b=sZG1e7GD5/1SzI1i2j9Ryhzuf9axxsvP+8gzL6PT1SMzWZbLRUMlrpDsh35vnqOEvhrjDrp0jwGIcNqPe+16Zp3xusgPJUObVMEh+Lg8JPrrehfp5G+sZ9VZb+sR3f/Wqb36pDnTd0J42pv+b+xdtaKcf43WSLRWaFVT0Q3wtX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754733584; c=relaxed/simple;
	bh=JIqajmtdSDWh+9JO6OyfRjiQd6jzxj/V/KzTUJ+HkCk=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=GjYqDvCnb8+C9Vsr2rYcLprUSYJ0IDcG3Uf1BS0xV2TJIQWYXCO1sUgcIDfsHdo+Yum09D1wdz04eUdFtSxvw+ESjTfMaRO04274Hk1Y98CdSG0pVTFBt0ML2UPdf36TdLPSdvXRw7imDEZpjZklplPzOWIaDGU7d4xLgNqkA5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Lu7jw/XP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57991943004656
	for <devicetree@vger.kernel.org>; Sat, 9 Aug 2025 09:59:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=B7gs4hTFxwH3YxsLcB4ZaC
	WQf1OGFUcKEqvS+jFTsFE=; b=Lu7jw/XPWg7RLTTozBNo0HtL/TVmb4SwI0piM8
	gSRonfPmhQoR7sPrDXPZbjqwfHjtY4En7YoMZhIBiysmCH/XIpm2KIbl6RKlvNxi
	Xv65f/iCzUbeqNudrso8TvwUSC7cehM3qy4B8Dn1NJohz2pelR5lbakgJBcsL80r
	hWBcJFx5WeevTIIZIuY76oSQLDZUyy55C2QoLi+Q92JO00T63vTfQgf5b9LD8zRt
	0zHlDBqeg7f/fXqIWqVYPX50AzaWMGeG2W4QstFaeCtz5d0tU5f5LELPu0t6lRM+
	WDfV5NaAmYrEtul1czWLVsJQRhSeBBboDQoUPse9uuLKtn8A==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dw9sghva-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 09 Aug 2025 09:59:42 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2400a0ad246so23358095ad.2
        for <devicetree@vger.kernel.org>; Sat, 09 Aug 2025 02:59:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754733582; x=1755338382;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B7gs4hTFxwH3YxsLcB4ZaCWQf1OGFUcKEqvS+jFTsFE=;
        b=T4buSkSkPj/qSc9l85O7v6FohxNr2wZcnPuZqnqiFZlTQkIQkOMTTAYuOOYQvWBCy/
         dhYgmHKM1OOuLDElqvngz4swp422yQcYFjYgHsFZWpbB2QOymkDFoig70CCW3EeCgsRP
         PTgvKl4uWm9Sf1Q4VTLRaGwykm8f36W1sUZ4DjKW/IshhUzGzBeOc6+rGQxX0ks6Pc7u
         qZ5YGCFZkIbbDaMbFLCNuPie2NFpBZR8rCSEYAcoBT6z62EZyXKZ5dsPFQolRWnMfM2l
         nuy0EvNSrHtDn5bfRHBtRUxPM0jG8bwMSeSxStgb1TNa5flpYyKwLzYQItfVEOEBedZr
         uRnw==
X-Forwarded-Encrypted: i=1; AJvYcCXgYp9QIRlMZ4679OCCkDgGgvP5dXIX2MdWJ3uAAgS4TGJ/msP8uBM5EoDKnoD8LdPBU+fKs+/h+k7O@vger.kernel.org
X-Gm-Message-State: AOJu0YzomIPmPCdsvJmFJDGGWtDh0k/Ptif5X0DepR1rGzachhouDEPr
	ufSpXWYf54/C1FPbD1sfj4FC5or4+mWG5rHiIDea2aMGMKS3afSC0v/NrSp+GRfO99PegZ8r7KZ
	tsdStpC3s88wP+83pvcegI5rYFusltwn5RFwiv+o5pi6b0yCsuZFieoMnf76EwDFN
X-Gm-Gg: ASbGnctDGWvESp8tTgfCzt8FJyGf7/qJgUqD3AepiU1ZmL0zTeDlcJ5NtxDraxQbifE
	b8tCQTAhJ3FajDwfBS68k4RYd2q0rjuRW2kQjjl4AGE5cF+gLC4urUhixM1djmy7LZSY9ckOwAQ
	/HtEBTqn/JT2UEzprk330wei/wWG2lABoR69/Q5716K2USlLIxxLzx4veQq+75JF5V5AjjrLv9h
	8Q76XWv/AHjrZtYJX7wolb/cXXEBgFAChUt3C9cFkw8CD4xmWejaxiKra1sO8VaJGOTCF5+usZQ
	gTjiDUTLkpLn+geXhYPRbrnGuakDfx75f675Xlt4X+suSx3tLVW6O0NLkkXQfjR6KoQeuJX93V4
	=
X-Received: by 2002:a17:903:1b26:b0:240:41a3:8e0d with SMTP id d9443c01a7336-242c221775bmr95568475ad.36.1754733581850;
        Sat, 09 Aug 2025 02:59:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEGFCSZuzVmsIIkf+AYK0rGcOQzWTHIlpDNibLokhgE5KNUVYtisa4qZXZAAwYsaBSlgc6/cw==
X-Received: by 2002:a17:903:1b26:b0:240:41a3:8e0d with SMTP id d9443c01a7336-242c221775bmr95568245ad.36.1754733581394;
        Sat, 09 Aug 2025 02:59:41 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-241e899b783sm225962845ad.133.2025.08.09.02.59.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Aug 2025 02:59:40 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Subject: [PATCH 0/4] arm64: dts: qcom: Add PCIe Support for sm8750
Date: Sat, 09 Aug 2025 15:29:15 +0530
Message-Id: <20250809-pakala-v1-0-abf1c416dbaa@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPMbl2gC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDCwNL3YLE7MScRF0j00TzZMOUlKREC1MloOKCotS0zAqwQdGxtbUA8H1
 EqVgAAAA=
X-Change-ID: 20250809-pakala-25a7c1ddba85
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, quic_vbadigan@quicinc.com,
        quic_mrana@quicinc.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1754733575; l=1194;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=JIqajmtdSDWh+9JO6OyfRjiQd6jzxj/V/KzTUJ+HkCk=;
 b=kDfkSZaxVXL0BFqDK8S9gzh227+Pn8id/z2GPwjJZrxbfe93CFqWxDBD7D9RZDsM1iUFNsP04
 7q+h23qTyusD9aQK8FP3LRAoKYb7XIl5TY0tqmuRqWdN8x5wcw9+aHD
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Authority-Analysis: v=2.4 cv=J+Wq7BnS c=1 sm=1 tr=0 ts=68971c0e cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=KRKipztoQesxEaMeAmMA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: ASdiH8_WHUObZPNyfXEXwskBMH-0pZPH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAxNSBTYWx0ZWRfX467Itc0ygEX2
 U/RqgFMieA6JO2k1vTuxpljMNr/5B+05lRWkIT5a4pKmOxkpuMl2X7zUVXXKYJ0pJyJVrxV78UY
 8QK1rq/STRMSx/WhX+ZfJQs+2dy6ou0RuexY1p0TsGhE7BTbOgYexP3yA5iMVnAUdq0H3QC//C0
 ubBr3sGEjPdJRYq0WzDUNaQ+rryoGrbzGVgh8GPjVKeysvc60xN/wa5oEt9LqahfrNYGYvjpLRG
 GNiYzyvnGn5zVXpMrvoMWeoOfp3XCOpF4ebnqnS3YZbJf/doXeCO6tN1lr7jx+EpX0LbMPHZJbF
 wxQ9RnaPy3KbpiL27HmYmloBQerABa+5j3ZpOKCTyqqXdLDqk3SnXsGLHSR8kjpr5dqyfx+BqTU
 L9XgF4Iq
X-Proofpoint-GUID: ASdiH8_WHUObZPNyfXEXwskBMH-0pZPH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-09_03,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 phishscore=0 suspectscore=0 spamscore=0 clxscore=1015 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090015

Describe PCIe controller and PHY. Also add required system resources like
regulators, clocks, interrupts and registers configuration for PCIe.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
Krishna Chaitanya Chundru (4):
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the SM8750 QMP PCIe PHY Gen3 x2
      phy: qcom-qmp-pcie: add dual lane PHY support for SM8750
      dt-bindings: PCI: qcom,pcie-sm8550: Add SM8750 compatible
      arm64: dts: qcom: sm8750: Add PCIe PHY and controller node

 .../devicetree/bindings/pci/qcom,pcie-sm8550.yaml  |   1 +
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |   2 +
 arch/arm64/boot/dts/qcom/sm8750.dtsi               | 174 ++++++++++++++++++++-
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 149 ++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v7.h         |   2 +
 .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v7.h    |   4 +-
 6 files changed, 330 insertions(+), 2 deletions(-)
---
base-commit: 37816488247ddddbc3de113c78c83572274b1e2e
change-id: 20250809-pakala-25a7c1ddba85

Best regards,
-- 
Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>


