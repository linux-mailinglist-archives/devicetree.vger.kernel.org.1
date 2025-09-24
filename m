Return-Path: <devicetree+bounces-220953-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD9CB9C97B
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:33:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2427E1BC4375
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:34:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D38232BEFE3;
	Wed, 24 Sep 2025 23:33:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jCuRNqUU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4715E2BD580
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:33:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758756807; cv=none; b=eRh9frOc2ypxiWDwdaMj30yGujg19eRojD1+8vzMuJagQUGThvEOgImlpsExZ/nCzQPFIq9DwralbIkDMc+Jf2gcxmKvV4RGwqGkbgxrKIhmm75Z1IOq9oiwNeoHWY2RnAXWH6wp6HTFHZv+d1jKsh2FLGi7/Zhv93iojUKpFAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758756807; c=relaxed/simple;
	bh=tlF/XmDSlCSzHpDbYIYkAuUDBatLs6VY5lZmH+8tSdw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=qbQGmt61z9pbAmehvLGjPIhXnzZt3rI6M5i+qifUXTZ7/ElsfeeMDnuliH9EYK2SEkETseU9TP/OJbLeloCxa36jYF951edsw0MFwmWIVuJyPxabnf6STJvCmkSBjZQ6daHm5pRDFhpnoM5Dz4qnkHQmWMJYr04AZSSJWeE9wtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jCuRNqUU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCiEEZ024230
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:33:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=VNIomdy5vQZBr0Xb1zY4tT
	/Acpu4g0XVUwXNo3bXGx4=; b=jCuRNqUUMjb0jv51pmB8cl8BDgQTKqHaV+MSVh
	voWepDXGh7ziPfsJsEKLw8cf8ckByRtvSAITRASobY7Rp+K8OquQQaO8YVgIAXw7
	SE7KoVv0UD8q0q3nmHnH1PYxAFoZwWw6lFzFzOS4Xrs1JlQFFvQRhioBlSzHbQir
	/5Yk6TnrO5U/Qj+w50tkFgR78EyE1p58UP1oJFC+xMT3Q9MiGVnh6OqNv9AtcVzk
	+zZZRXdFujW3s2tBEVxsQShnhWIaiTLxlJcrwmfLpsBHIxUcnB3ALO/f3+nis5Kh
	fKw2uQP9VQk99PGliSU6wISuLZFrOXulKYmQwDyQ5+T8sn8w==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bwp0d2rr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:33:25 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-32eb18b5529so392944a91.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:33:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758756804; x=1759361604;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VNIomdy5vQZBr0Xb1zY4tT/Acpu4g0XVUwXNo3bXGx4=;
        b=UghjBTQiOIx1dNCnMlbBNvMGwgqU7V6JXNkl9uSK93ZJ51J9GIn1aCeGFUS+fQFUAh
         t1YSsEpHSVizecLgQXMnaO3496B1FVaVvw3yq+uVkPVw0EEOhcjbtxJ+izDtCtDfa+Vj
         8jg6RH61c+4J0/lWXGgCr9jKjhHhjKJx/obElEe0b8+K5PjEvYUcUKutmJzCMElu6yZU
         YYhXZVXefm5X1BsZRcnnDk9r2s0xwP4QdQQ+RdtCu7AXZLZ82lFbM23lZi49IKMkxBKQ
         dNzn+MAqqPDQi7Dx6ZrOmQ7ly+L920oHzRlHHN/FviW2z3/cRv1uZtEp2fbshLKH3wY+
         hXGQ==
X-Forwarded-Encrypted: i=1; AJvYcCWYgfKCgeQDFZJcSncus0wZ66ejEjeZ31+Byv/VVIDFMUB+PTGyuUoRgQpacO1JQ1vObBx+Hft3JniU@vger.kernel.org
X-Gm-Message-State: AOJu0YzIdDzICK1arHUAceiuAFgpmogj4ksT3qQuz0KUWWXw3adfSIsi
	SSdHnp6KqqwFHszcHCrAy8nM4lnkdXIQjEeCh6eF8JXEdFO1hIwqtg/VKISBdNqN7x1/Y5Jj3qa
	/2ciSBy2NiGGN4cNAoj+opfiyJJBxtae+hgVDa9duRGPw8KUf27XZdn3dgbVZ+EmR
X-Gm-Gg: ASbGncsSyDRQ8boRzzYMjac2FdIkmW4ho+NE/NZR4JGbcVtEi5O1NQEkWP379EcDmYF
	p68tcsSy3rYGYqXBV6YzC1cRt4jgtwHBns1bhEW60JzXS/WTL+WtGcKHkDNMPUauK+NvEBw1Y1t
	HqHgN8zo/+Be0SBEZo9+D4Ag4RF3dAutk5noBs42DFQUuUxcCawfeB9nLNxOjjBmDFuw94XSPc5
	mf6g29R3Zp9xDzOrHMT1B3tqOLuladT94QSqPBqa4eXR8RZ0E5mjfnv/o4UnchUA1UPNcBfa4PD
	4RKEnNoZYoIZfbsZAKQJzN86hx1dS27dtoTOuDD/0lwbLtmpu6rBFhSJ3Tb8AcDs4wVwmreVQkA
	+rmaXDMebEsEuL9M=
X-Received: by 2002:a17:90b:17c3:b0:330:7a11:f111 with SMTP id 98e67ed59e1d1-3342a300367mr1473532a91.35.1758756803649;
        Wed, 24 Sep 2025 16:33:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHdtlLUNGJJSlyqnknrbjF3ipSmmLDcYIbOKelFSeVIJvhkvC4jn26Ddrkbxi9be3pwqyR8oQ==
X-Received: by 2002:a17:90b:17c3:b0:330:7a11:f111 with SMTP id 98e67ed59e1d1-3342a300367mr1473516a91.35.1758756803192;
        Wed, 24 Sep 2025 16:33:23 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b57c53ca107sm392911a12.13.2025.09.24.16.33.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:33:22 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Subject: [PATCH 0/6] Add PCIe support for Kaanapali
Date: Wed, 24 Sep 2025 16:33:16 -0700
Message-Id: <20250924-knp-pcie-v1-0-5fb59e398b83@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALx/1GgC/x3MQQrCMBBG4auUWTuQFgq1VxEXyfSPHaQxzIgIp
 Xc3dfnB4+3kMIXT3O1k+KjrqzT0l45kjeUB1qWZhjCM4dpP/CyVqyhYcphCFklpBLW8GrJ+/6v
 bvTlFByeLRdZzsEV/w+g4fuHf7elzAAAA
To: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, Qiang Yu <qiang.yu@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758756801; l=1250;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=tlF/XmDSlCSzHpDbYIYkAuUDBatLs6VY5lZmH+8tSdw=;
 b=GhjB8yFSJhE3XlM7FLgPQU2mx4t683odAMUdhaUPcxG1u0zlAsRUbnig06Uw5wi57WJUJm3AK
 VABUOcz9YyuBnBBGiNns9LLItEdxBIUGRSTsNbmFS1JSSZCmADYc5i3
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Authority-Analysis: v=2.4 cv=KNxaDEFo c=1 sm=1 tr=0 ts=68d47fc5 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=xicjnEbRADQpFcw3uD4A:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: YRXcDRiD26DyNzPDUywHkOQZCQipMLG2
X-Proofpoint-ORIG-GUID: YRXcDRiD26DyNzPDUywHkOQZCQipMLG2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDEzOCBTYWx0ZWRfX8ptr3Vr0zmyg
 nR4hvfouHPtPLPyZW4TIE2mdkREVTCjUQlXj4iudjT4tDVZQEF3x+swD6CcSpALi4w7gr9yJ3JX
 zx2rqcrT9ziKIf66mHYokiXhIuynvsN3DRPBO4jbM+1fdLjA9KDLGy3faUZl+sK+YK2wTEHxij8
 KlFjF+8pUaeZyDx4o3OyIfx6yE/PBlTngmbrnfY/1aLqTPvXfiab2Nsc7E6/ZJLQ882OEO9UPKl
 h4FkaQgfUem16FbTDKO3LRUuXGpgFNT7jHuyGlAAfuasDBXVT7ua+tUCxK14yaFnvYPp9VeXNy9
 yThlGYpk0jo61my8ih8eXbHitxHnAfuebQE4Uxy28S4DJoe0RANbPeIII8A3iSs7Elb+TXb2eCv
 +pIuoG1Z
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 clxscore=1015 phishscore=0 suspectscore=0
 adultscore=0 bulkscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509230138

Describe PCIe controller and PHY. Also add required system resources like
regulators, clocks, interrupts and registers configuration for PCIe.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
Qiang Yu (6):
      dt-bindings: PCI: qcom,pcie-sm8550: Add Kaanapali compatible
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add Kaanapali compatible
      phy: qcom-qmp: qserdes-txrx: Add QMP PCIe PHY v8-specific register offsets
      phy: qcom-qmp: pcs-pcie: Add v8 register offsets
      phy: qcom-qmp: qserdes-com: Add some more v8 register offsets
      phy: qcom: qmp-pcie: add QMP PCIe PHY tables for Kaanapali

 .../devicetree/bindings/pci/qcom,pcie-sm8550.yaml  |   1 +
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |   3 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 194 +++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v8.h    |  35 ++++
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h |  11 ++
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-pcie-v8.h   |  71 ++++++++
 6 files changed, 315 insertions(+)
---
base-commit: ae2d20002576d2893ecaff25db3d7ef9190ac0b6
change-id: 20250918-knp-pcie-cf080fccbb5e

Best regards,
-- 
Jingyi Wang <jingyi.wang@oss.qualcomm.com>


