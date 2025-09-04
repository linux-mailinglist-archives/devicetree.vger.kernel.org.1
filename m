Return-Path: <devicetree+bounces-212537-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D640B43241
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 08:23:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C779D1C2223D
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 06:23:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81D26265630;
	Thu,  4 Sep 2025 06:23:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="P5j2/8Ub"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E93E225A328
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 06:23:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756966998; cv=none; b=I7Oc0prPtwfkPCzPD/6t4CdgUvYCop4YIJ7Mn1tPNVCbChGZDDjc8SaK6/ESAGNzOzVePhFURLDxtNCNt/E5iuj/nxB3SOHnq5W3h9RHvM0j7vXh4XLWp3oM5P5qpXhPpWT/Ot/PK6L0Kq5b5HOQSQ18Wu4EIHGlpZSTi0INbbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756966998; c=relaxed/simple;
	bh=A64x7+BNXYv782ni3wGjbjBf2GE5tylgSfS7zkngzrU=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=JSzckyNf7cKlzMrpLsKQ4NSF7hfmUDDZ/T3AdZSZwIpe9oHXlfimXTxh9whM2112EvR4A4ngA+79u8MbazvfiKolQyeZBtAbDXqdE84dEgHYCmTxMvM9ILeGGSZL0FPWomFyba+pEFEApWF4pY32Qil2W057gisbEeZhMxdabmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=P5j2/8Ub; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5840iZmS007700
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 06:23:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=8mnxwcogrBs5wXZPmzs5x+
	48L88qADEjdwSP1+OP2Ic=; b=P5j2/8UbZ+fDsvGa+8Wzu+18b5PWMRIDoJ1SRO
	RHVKUbPSgwv7QjvmvBqhOt73odjVyT5A04tWn5GAwVMpJTaBWFlNnvMLF7a7W77P
	hz5m/alBTx9+LmA3iaJ55UXovkROxqxYqRtKrj6N1jHCBTLIhqZP9eGKj70Aao6s
	i1DX20eH+Ykl80xQzZ6xguRts89otj39/raJOLGGEZxsuHhlMOuUnVHDmwRkXzDC
	poCkCqd0VQTvX2+PHcB4W4cCZ7WG/rMHjFzvg11vvveOVorofhnTJ8EzPe9hTRbM
	qokYsXdZ5iDLvZ15iHyMZshaYrkqmQWPJ0cMhcdIQkUPoOSQ==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ur8s6fc7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 06:23:16 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7725a76dcb4so1313371b3a.0
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 23:23:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756966995; x=1757571795;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8mnxwcogrBs5wXZPmzs5x+48L88qADEjdwSP1+OP2Ic=;
        b=f2JXmCrhYH5VowRpTHqYq92fHtRIrEGNEvyOj+oxuB6Grzpa12a59+sKwb6zJSV8ot
         2xxIPUvIwI4P2HTsgycy6391vtWOwGFI4QE0Y5lbfc9m50+lB4lMjhe5HBTzTqr7+SIW
         0LbYVhoUeaZl/oGBv4EIQKHotcb/OGBF9KpmAdbt22VLVjblXA3iTd3NbgVKaPQ5mwVl
         Lo6H4twAVNCUZJRUtth4nDzA7SKQfhO3LWMKAfMVhMgkWg60DLI6+jDB/f0zqMqjmkPg
         EAyGQsnMveb1EWlMsoJ3ISDGKzdNjxUGsdqg4k2Iy+4maF6x0RKMxkQqVX+bfcEVPtc0
         yTGA==
X-Forwarded-Encrypted: i=1; AJvYcCVRngSQRsf7/Szkbor3wFwUmakGPNJLGKP7q4g5yq2ZjPo6Xbg4CVmCO43Z/JzytKY4D5mIO4S3nvTI@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5QJ98hiUH79FmjDuG5WiTeekRVLW3TAE2kmRdUfCYECa80o11
	htxepguLFBtlf1MGeXaA7k1FRh+3gkUYyhmKDTOtfICaTnfA0iVrVcW1qNDCGSbxBGNfGFJ+Nn2
	w7xgWbqXfoEKKutIP2FwYCR4sCPVU+HtHMNX/RJBwZcpf5Q8HQSl7aSlFTIl8gdm2
X-Gm-Gg: ASbGnct75p+8/Z7rbt15N+DpNL4Rwisd5fgOHea4jdwT3WxXA4IopH/MHUfxDlZaKwu
	aDIp82PIEz8/KWGdGp9GCaIN5dEoWPxIfurHMvcgTNd+rKQqoexrvkeEt8/z1mwdvE+Ywf/4x1e
	K8j6P/zo2WeD+d9yvd6E5g5VQxC753NfwANwuFTtb3emcb0iT3UeUjsSSjcrsI8bmA82HgdEwpx
	TnMG2npHe7NaNepjXOzxAsXALv3Jp+7e5UO2FJgttYXN1QOpuOCp6b+Bov8X0xqyUg6AXLZcddy
	rjyOAG2O9VN0TgDX8w8eg9fhwb+xbrLc9a6d3Lr9sPkZyn+XNl7eXXIeVp7LpGHgdviDocqbh/e
	18hYKzV9KxRHy+DA=
X-Received: by 2002:a05:6a21:6d8a:b0:243:d1bd:fbac with SMTP id adf61e73a8af0-243d6dfb77dmr24913284637.7.1756966995202;
        Wed, 03 Sep 2025 23:23:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFlqYG4j4tCAUQjllJWSXIoBHjaLsyGVsWcC+ZkPeWO4oTZkGeYNcQReC2fOyY0NlmWHVGzCg==
X-Received: by 2002:a05:6a21:6d8a:b0:243:d1bd:fbac with SMTP id adf61e73a8af0-243d6dfb77dmr24913253637.7.1756966994711;
        Wed, 03 Sep 2025 23:23:14 -0700 (PDT)
Received: from hu-wenbyao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7723427c127sm17120911b3a.62.2025.09.03.23.23.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 23:23:14 -0700 (PDT)
From: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Subject: [PATCH v4 0/4] PCI: qcom: Add support for Glymur PCIe Gen5x4
Date: Wed, 03 Sep 2025 23:22:01 -0700
Message-Id: <20250903-glymur_pcie5-v4-0-c187c2d9d3bd@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAkwuWgC/33MwQ6DIAyA4VcxnIcBBhp32nssyyJYlUTFwSQzh
 ndf9bzt0uRv028jAbyFQC7ZRjxEG6ybMOQpI6avpw6obbCJYEKxignaDeu4+MdsLCiqwRSl0qV
 udE3wZfbQ2vfB3e7YvQ0v59dDj3zf/oAip4wyBYWQleJVy64uhPy51INx45jjILsX5T9DoqEMH
 vhZC2HKL0ZK6QOfhwR68wAAAA==
X-Change-ID: 20250902-glymur_pcie5-bec675b7bdba
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        konrad.dybcio@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756966993; l=2136;
 i=wenbin.yao@oss.qualcomm.com; s=20250806; h=from:subject:message-id;
 bh=A64x7+BNXYv782ni3wGjbjBf2GE5tylgSfS7zkngzrU=;
 b=h0WX++anw1r4++tGfxwRySxcmOfq17vKXcxaWu4NTzGiCweIF+C3zdU52Ej9BLOfwpmisYL8k
 zxXXbwVobu6DTD4B5D6Fss26SLI9vduVky2/yeeCTyk3Xl7ip6DosNb
X-Developer-Key: i=wenbin.yao@oss.qualcomm.com; a=ed25519;
 pk=nBPq+51QejLSupTaJoOMvgFbXSyRVCJexMZ+bUTG5KU=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAxOSBTYWx0ZWRfX/Aw5eHHa7jPs
 OVh7EyyFoeOzEs+CaoH8vfysjiD0PBVNMzJ+FUeF1tr6ONCk596S/ax7xpLeYhnCV4sLpbWRfMT
 N45b0lKc4ereiNXw0T7kMpSpYJ3SeF+ve7zuTK4brLwMuda69ivq0tq3ZJEMys8OoV5fVySVlj7
 fLdJBnKBsj5p9/KZ82y3wyxPQoQetRGgCyD+Z9X9Qc6BKjlrIk7uuWqTzH6NcfuYQ9WRIoAj54J
 5uDQ/nI7/BduVVoLi4cipQ2J2gmSUa8Mj8hlR9OqL9PxPt0Ul0/tx7LP8DTFhIwxSOh457ukIy5
 TZp9MDUUgaFoeZnCuJ0+Ex841uEueGasJMkp8DAEO7+LS+6Vfd4IBYD04A7UlH+As5BRV35iEkw
 1oFYZId3
X-Proofpoint-GUID: 96SMCdvWvZAAmrkzM0RpYHrpv_9Um6eh
X-Proofpoint-ORIG-GUID: 96SMCdvWvZAAmrkzM0RpYHrpv_9Um6eh
X-Authority-Analysis: v=2.4 cv=PNkP+eqC c=1 sm=1 tr=0 ts=68b93054 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=TkXPrYfmiUOmToh-xYcA:9 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_01,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 priorityscore=1501 impostorscore=0 clxscore=1015
 suspectscore=0 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300019

Glymur is the next generation compute SoC of Qualcomm. This patch series
aims to add support for the fifth PCIe instance on it. The fifth PCIe
instance on Glymur has a Gen5 4-lane PHY. Patch [1/4] documents PHY as a
separate compatible and Patch [2/4] documents controller as a separate
compatible. Patch [3/4] describles the new PCS offsets in a dedicated
header file. Patch [4/4] adds configuration and compatible for PHY.

The device tree changes and whatever driver patches that are not part of
this patch series will be posted separately after official announcement of
the SOC.

Signed-off-by: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
---
Changes in v4:
- Rebase Patch[1/4] onto next branch of linux-phy.
- Rebase Patch[4/4] onto next branch of linux-phy.
- Link to v3: https://lore.kernel.org/r/20250825-glymur_pcie5-v3-0-5c1d1730c16f@oss.qualcomm.com

Changes in v3:
- Keep qmp_pcie_of_match_table array sorted.
- Drop qref supply for PCIe Gen5x4 PHY.
- Link to v2: https://lore.kernel.org/r/20250821-glymur_pcie5-v2-0-cd516784ef20@oss.qualcomm.com

Changes in v2:
- Add offsets of PLL and TXRXZ register blocks for v8.50 PHY in Patch[4/4].
- Link to v1: https://lore.kernel.org/r/20250819-glymur_pcie5-v1-0-2ea09f83cbb0@oss.qualcomm.com

---
Prudhvi Yarlagadda (4):
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the Glymur QMP PCIe PHY
      dt-bindings: PCI: qcom: Document the Glymur PCIe Controller
      phy: qcom-qmp: pcs: Add v8.50 register offsets
      phy: qcom: qmp-pcie: Add support for Glymur PCIe Gen5x4 PHY

 .../bindings/pci/qcom,pcie-x1e80100.yaml           |  7 ++++-
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |  3 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 32 ++++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v8_50.h      | 13 +++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h                |  2 ++
 5 files changed, 56 insertions(+), 1 deletion(-)
---
base-commit: 356590cd61cf89e2420d5628e35b6e73c6b6a770
change-id: 20250902-glymur_pcie5-bec675b7bdba

Best regards,
-- 
Wenbin Yao <wenbin.yao@oss.qualcomm.com>


