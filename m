Return-Path: <devicetree+bounces-209201-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 144ADB35326
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 07:18:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5475B7A821A
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 05:17:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DF7A2D1F40;
	Tue, 26 Aug 2025 05:18:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AH2uWj3A"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE08A1A239D
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 05:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756185516; cv=none; b=YZe3uGcGJWutOc7JDocTRMJTPqUAR8OP7UeQXWlvv+mYG7Tmbev8uAPMrhw8OiN8UIbcX76MYjoHK4S1DDKWa7+loryF1X7hE3TASjk9KId2trm7DhGvzZtvwvnhIeKhIJI3s9Foon23Vy1StcWEFzFhbBsdJXv7aCmvFgk+QnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756185516; c=relaxed/simple;
	bh=vlIwpMdPLzbszsLDUE4+FJfpWc1+VEt9tIvX90Lc+30=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=ThH2gxLvbPuEtGVhmlyOf0ROqpbIYhcdH5mIpVaJx4O0X6rGJXUa36j6pD4MPb7gaJGmZWv7V00Dw24hhL7iadxXaHiAH/nY08YZZUUSqcIIQsSHZHkCFRm31Q1pSoW+IGkk3iKgXndOv4nJPMNOF0Im6Cyw3TgOCfmMTeF1DPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AH2uWj3A; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57Q0rrws002835
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 05:18:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=2vsPhyKBqG+IBewEtmHLJo
	hfftWb+4Dg3ZClfwqwBQM=; b=AH2uWj3AsUXqsfQ9CHE3rUMsJRLP6TjvIt5RW5
	7gJxkvCYE8uNT5h6V4K+VAen4WClM4AcRMf4qlHI4DV9FEfBji66EpcuTyNPQtKn
	yMrrKbWItE5QSrrkZm1y7GwnQz3oBDjN+0D6mh3XYTnvVE9pxPoMA/wqugwrf3IV
	vbJTNp5c3Da2VQzyXaxA9Fb8/sOwmmBCoqqd/u3ikMBfV9CMOurqWSoJN6v0VQqw
	jjnyed6mhXC2ZimLNKcTkQj4BHdgBn+P5I9oS6ERPYEUXM9V/n2/koFs6q7YGg1Y
	o3wRNklyQAxWoS3lH7Zh0U5kwn3QroqCpYJUEX9Yez66KixQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48rtpesuy8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 05:18:32 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2461907278dso48975465ad.3
        for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 22:18:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756185511; x=1756790311;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2vsPhyKBqG+IBewEtmHLJohfftWb+4Dg3ZClfwqwBQM=;
        b=Ku3uFS7CaIjaocOqYxuohG/AqIc4jTPHAfLR6w9gURuRMyOzt84yYr4fBT9wU8X0QU
         jfuu/WbTR+epJLeKXdEjpqJPUET5UvjMeyAopPZB6j3HBF4d4LfNVLjx/G+cFx2x9PoY
         5nillnBwaL9XtIx8RVvvFvo5RpYoy2s5/C1u7YtbcDoOScAjP0rvZaPYR6s8/ezZT5+L
         5vp/eXEU5lEK6rACbMwXd4WVlrDdKpNmbzMfSH2nTRZnqNU4frDRb3/sypyo4+EVFGuG
         YK0AJ4t9QpbZ/O6VnxcCLXiXnyhxeVL3WN1W43O3k9nw0bC4kRWzBYGZZtj8/mReMdg6
         0uGQ==
X-Forwarded-Encrypted: i=1; AJvYcCW+shBx/9nU+ni7dN9ZcCaX+VfjePWz05zNNvQNEkSXzW/Pb8h+xmatLsk3ccmRfxI7QfeEso79rjip@vger.kernel.org
X-Gm-Message-State: AOJu0Yxrl1UeDkMlx8Deitv1ftn9Dpl+7QNAiLz9drDTPd08OKaleDd2
	8iqHuqlg4pMPH1z7M4ajTrZz90nIkO1zWiCluNCopl9YU5lJ4pmDf2wutGwo/43D3uF77rpubKe
	LAsW8wDnyVy2wCAROu6Vby74ABLDDQ0lQdxANNqZwln8TQwS9nXyeUd9C1giITLem4KFSCW07
X-Gm-Gg: ASbGncspBtIrtX3j4CogKPo4qbzQelU/H1RdHCF7keyjY9DFXO4ieOEmn51cUxsoAyP
	O5h9sbffONPVJdDUidTeg5CVWXacjh/w9KnGkkZYBacvF2q9wP0aeAxWFk6OXVBE9qSWkcwIJl9
	UlhdSZT0ZpGfr3sdNT3FDPqyFNYR2iDfv0U4g1LLXCby2Kvzo4vSUv6ULopZqP8nYGIRa/4wvCx
	LqH4Wl0e7EeXrbdMuDRblv0NORod1pDNuvxE7+TKP/odsWgGYbeWmuNKOZeSY7feGKjpN0sg4ax
	cpjIYOXMZChJJ73neB3XDYivXiZKWkCarK4SI+hqfPgiVhcctQUR9YDjeM6JEYdgbjEjWkCATTY
	=
X-Received: by 2002:a17:902:db0c:b0:242:a0b0:3c1f with SMTP id d9443c01a7336-2462ee0b27dmr189012715ad.7.1756185511507;
        Mon, 25 Aug 2025 22:18:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGh6SmRROLIr6PMOz1PXF4cr/CmjrIyVmNC6hvrLBZh8ZNDcT48YrclMSup6MtV2RwVhMvgVw==
X-Received: by 2002:a17:902:db0c:b0:242:a0b0:3c1f with SMTP id d9443c01a7336-2462ee0b27dmr189012375ad.7.1756185511073;
        Mon, 25 Aug 2025 22:18:31 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2466889f188sm84348085ad.146.2025.08.25.22.18.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Aug 2025 22:18:30 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Subject: [PATCH v2 0/3] arm64: dts: qcom: Add PCIe Support for sm8750
Date: Tue, 26 Aug 2025 10:48:16 +0530
Message-Id: <20250826-pakala-v2-0-74f1f60676c6@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJhDrWgC/2XMQQ7CIBCF4as0s5YGiGh15T1MF1OgdmJbKqNE0
 3B3sVs3k/yTl28F9pE8w7laIfpETGEuoXcV2AHnmxfkSoOW2shGnsSCdxxRaINHq5zrsDFQxkv
 0Pb036NqWHoifIX42N6nf949ISkiBXa/sXh0KhJfAXD9eONowTXU50Oacv54v/WGjAAAA
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756185504; l=1290;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=vlIwpMdPLzbszsLDUE4+FJfpWc1+VEt9tIvX90Lc+30=;
 b=0KL+6x8TGQEUpYJvqY3iP7+9EiYO5OHNdo3h8C2d3xI/A7u5IucNW+PqyxEKSkGSKdoxYvNTS
 VfQB9wQxqcECRS59Ps24xjDDVMDDAnOl+9daRomBfOlTaY1dUeBmR0y
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-GUID: ITyrzZq8oHIHa1Fqtq7yTbh5b6CzwzMH
X-Proofpoint-ORIG-GUID: ITyrzZq8oHIHa1Fqtq7yTbh5b6CzwzMH
X-Authority-Analysis: v=2.4 cv=Hd8UTjE8 c=1 sm=1 tr=0 ts=68ad43a8 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=qIbWdXD6M1inJYch3NYA:9 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI1MDE0MiBTYWx0ZWRfX69+M9Xz0cvrr
 6elOXGyyoKGYmMqwl3R9Cj29f/osUXwGQvPlHpiH7m0fX5NYDQfBgSZ/ti4RJQdNlUZ2Zdl+3kb
 yY7e3y5Vv1FF8jw00FPvCk3nXi8PdvyUhv32P+6XCRhI0t2soDnbPszeyAjpUwgWMi2j/H4+/ZD
 1wLpjNwMQ5VXMia3P+rQ+WlcZwLE++KtlFE8AFMBE4FZ/FfCVsd+YIVAPMCXEu0DunSU8X2ZfKp
 5oszPydRTx0hdfayxGgrZgAik3s54salJ/3VYmkWz35t4AgSzFWdYLoc/hhZka2/4Ju7QmpdOiU
 NezgSSYWXjJ7s9c9dZCsiqQawwTkynPgddDUERkBkm1rzy6JvtDBmRM92LouaojcYIzh6vqWzWE
 PrJPvY//
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-26_01,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0
 adultscore=0 clxscore=1015 impostorscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508250142

Describe PCIe controller and PHY. Also add required system resources like
regulators, clocks, interrupts and registers configuration for PCIe.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
Changes in v2:
- Follow the x1e80100.dtsi pcie node description (Konrad).
- define phy & perst, wake in port node as per latest bindings.
- Add check in the driver to parse only pcie child nodes.
- Added acked by tag(Rob).
- Removed dtbinding and phy driver patches as they got applied.
- Link to v1: https://lore.kernel.org/r/20250809-pakala-v1-0-abf1c416dbaa@oss.qualcomm.com

---
Krishna Chaitanya Chundru (3):
      dt-bindings: PCI: qcom,pcie-sm8550: Add SM8750 compatible
      arm64: dts: qcom: sm8750: Add PCIe PHY and controller node
      PCI: qcom: Restrict port parsing only to pci child nodes

 .../devicetree/bindings/pci/qcom,pcie-sm8550.yaml  |   1 +
 arch/arm64/boot/dts/qcom/sm8750.dtsi               | 180 ++++++++++++++++++++-
 drivers/pci/controller/dwc/pcie-qcom.c             |   2 +
 3 files changed, 182 insertions(+), 1 deletion(-)
---
base-commit: b6add54ba61890450fa54fd9327d10fdfd653439
change-id: 20250809-pakala-25a7c1ddba85

Best regards,
-- 
Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>


