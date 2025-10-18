Return-Path: <devicetree+bounces-228334-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 18965BEC38F
	for <lists+devicetree@lfdr.de>; Sat, 18 Oct 2025 03:33:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AE5DB421E76
	for <lists+devicetree@lfdr.de>; Sat, 18 Oct 2025 01:33:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D94A81DED57;
	Sat, 18 Oct 2025 01:33:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lMr1CVal"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22DC41397
	for <devicetree@vger.kernel.org>; Sat, 18 Oct 2025 01:33:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760751226; cv=none; b=cPbwFc30fSkHlJqIhKXgu+y1wLN5N+4EiBvX8MR9JVZaUlcL1pXAJsz2mVXU0J5zAQF2Xr1QPxbSat2RAJJHwNW5y4S83NXxPhnWgis4NIc/4+px/idpkwfdMAcgBsxjGEwNKoFhg6Vzo6Gv1v3pkC6OrXRlfw4J2ihEb8P81yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760751226; c=relaxed/simple;
	bh=9n2Npp64JjtwAgf393tgwa+BpFjxY3/Fbk9Q2T1oeKo=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=fG8Vj8t6gmOoUYvm9EPTOQuAVxmJgq/TYTA7fAd7b8t3SwAcVsm0YgXbtuZd8jNyYn0RHVTHdSd0sfAxIvFSRckwZsx/9yWb7QFUHLgi/2KZ1KVGqBIzQ8v61EyETo3EtExs8KZoF7rHRMdmaeUEdbdvN7R1IrEY95f5OeVD0yE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lMr1CVal; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59HJGHjT004211
	for <devicetree@vger.kernel.org>; Sat, 18 Oct 2025 01:33:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=rroNn6f0SE/dVbiqnfe2s5
	dd8O5NkJE6h1Gdc6f22SE=; b=lMr1CValIWq3Ru5jzla9NgQgrIODMG9+fvztZc
	EE3ABnSp3+ACePbdLB+8KZsYIp9ISdzXxCjd1ZsTzjTRvfynt0Z1FHGuTTMyD9Qj
	x6ImUWyfCEpUvS6IFyq3NTcqOHiYhG4/oLwiUNxVA3YvOK1B/dg/tOBeAxOlmIGv
	5rtiTwPL3dgZ9Nj+n++fpD7C8vlVe2XZFV7y36J5fv4ojji06THn2s3BIWK/hE5O
	6LdJa3R0BM3FGun4WPD8/0yatvKjR9h7VGx+DmdthDFUE9IGRhiiH8W+Z2dDxPW9
	5ewKy/RB9jkegRIGB87O7txXN30qWzukkI0xUDKqrfZxLltA==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qg0ce0kp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 18 Oct 2025 01:33:44 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-33baf262850so2553495a91.0
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 18:33:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760751223; x=1761356023;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rroNn6f0SE/dVbiqnfe2s5dd8O5NkJE6h1Gdc6f22SE=;
        b=V+7ldaSVgduMLmi5HGyBRbb30RwUYRE2rPavOoAZPHtU8z6TnIVooBdDSuaOAvD08q
         Xjh0tlYO/yt1jkxIeX7qhUXvrky1BUlsccLgq8H6RxSIhFmgJ1llqhOkRohZTE+0Qz0F
         zh84GgQ1ZQMq5AnNwAeEN4BGk51kytvwlJ2fCiBEYh9G0UfBb5Wzx9NtPVs+Hg+cyW8n
         t/hB3o5GXsQ9DiW7yT4dNYMY2EgfYaDxoGr1Me9Th3f1KW9acjtY1s+dC4coOg6p3Gs1
         WO2YkIvY5gXlEjsLGVcxGT5WpidvGaoFecePDr0rQFFwB2BfH5xuWXlIoFpAi0si4NRe
         0yAQ==
X-Forwarded-Encrypted: i=1; AJvYcCVbTOKUF/Pan9tBzsG6JH++XsrtF2U4oFcM0RwebY4xm0MIT1mgq6VKwLowSygBdN+io9hXzUeACRW2@vger.kernel.org
X-Gm-Message-State: AOJu0YwUlXvcqTjcUpEEDWvaBxzOehSB80AhkVD1EGkQtPkC5G3yhOZO
	oAE7vyZqrmRMY6846u+9VjgJSaIWuxjif58tijQrM+7d8sA/Lag2mgH5MAZc2DDM8EDWgZStJID
	9Qi4ZhP2HtwGY5PT7Bb/4hIXyV+++9PTfw+vrADgS2a1dNiU7brmi9zSZKMmkSOVS
X-Gm-Gg: ASbGncvKobHJjIBDDWidEnEDJq8n2F20GZRuAq+X92gtZTc0bGY0mP9Zowvg4HT4QEZ
	Ickm7HajIh6Oprwk9n3LnC/+ghlQ1wpnHF3XQo0RYvAlXXZZEAZ4VAl72qKSzaig1togMPegyvS
	6rbU16uSA2IOXaFDN5NBzASarj7b2lyMzRSqveQI9gCldVeUQzHeOAIhWIGJpERhYSeQYOuUO7r
	0t0IWhBdFvoAXePLJd1Bko521oG1R+/YmfNuOfg9dLTnfZe2mE/fAkUTWNrDPEsuieGocrMf8K1
	9Mr9a0DVLpfO+dqmUy+myggVLJlAKiMd/UkxCc4jrYa+wqAxXqYsI1TpAwFJXB7bvHNEqshLb8T
	N0LLx0T4wczvqQSs6iMJY8nczkX1qtQdWB53ayU79TM142w==
X-Received: by 2002:a17:90b:4c0b:b0:32e:d599:1f66 with SMTP id 98e67ed59e1d1-33bcf8fbaa0mr6005774a91.30.1760751223338;
        Fri, 17 Oct 2025 18:33:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHBIJRmb5oAlcn+6Y/ujWPTO6fLOct8GdacvPDO5zrGgxmmK2+JyQeUEWg8CVD/bDPkQNxCUg==
X-Received: by 2002:a17:90b:4c0b:b0:32e:d599:1f66 with SMTP id 98e67ed59e1d1-33bcf8fbaa0mr6005756a91.30.1760751222854;
        Fri, 17 Oct 2025 18:33:42 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33d5ddf16bcsm791695a91.4.2025.10.17.18.33.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 18:33:42 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Subject: [PATCH v5 0/6] PCI: qcom: Add support for Glymur PCIe Gen5 x4 and
 Gen4 x2
Date: Fri, 17 Oct 2025 18:33:37 -0700
Message-Id: <20251017-glymur_pcie-v5-0-82d0c4bd402b@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHHu8mgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyTHUUlJIzE
 vPSU3UzU4B8JSMDI1NDA0Nz3fScytzSoviC5MxUXQuLJBPTpDSjVBNLCyWgjoKi1LTMCrBp0bG
 1tQBXDzJoXQAAAA==
X-Change-ID: 20251017-glymur_pcie-88b45bf2e498
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
        linux-pci@vger.kernel.org, Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>,
        Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        Qiang Yu <quic_qianyu@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760751221; l=2322;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=9n2Npp64JjtwAgf393tgwa+BpFjxY3/Fbk9Q2T1oeKo=;
 b=B+wWdQtXBETqipJFLxgfTrTpxJSNE+uVsx8vFnqTU8vyV4TO9d3EOOZDoJAI3l1+MS0/4RBfd
 T/FyzfThbcbAc/qvmsj8Cy6DDdAMf4HA8kT/XaRvFVTyczlCuzVyCdX
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-GUID: 7tayJBazFjoW61BP4DZSTPQD6IEiYerX
X-Proofpoint-ORIG-GUID: 7tayJBazFjoW61BP4DZSTPQD6IEiYerX
X-Authority-Analysis: v=2.4 cv=eaIwvrEH c=1 sm=1 tr=0 ts=68f2ee78 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=tTp27qs2TqmI3G6P:21 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=lPERAFM6RZwBrWm71pQA:9 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyMiBTYWx0ZWRfXzao11m/8rLPN
 pIeDa2pDvNy7SujKRUA3DW0ofLQkPVCq0NAnfh7hKmycXpYvxb6cP1PUQq7cj5x2qfJITal6Y+B
 7bQUwse4Ov7k6CZpWo6t1Z+cKkRbvHc5OkSwgE0rUDK9xOn0ulPJxlS/oIiOiDf+koGjlVwr/+6
 GK5QUr01zfq1FOWS/P/UR2IwJMLiSvOUFY0v8/AgIRjucYOdZF9JbK86YSB/MTVW5FlxhSICDFz
 zLn4eQtHeMkYNqrtK31u4Xd07olgFeTEG4K6Pziu5kOb03YoZNBB6fFcnn1Tc2mqKNlilW4R+vh
 IdOUSQ+C31o1Iqk3OeNjinxMicIMwNeTuQb8vofsF8UrpDWPFusM3cF3ebypfvg/FpqV75Y4dX5
 zd6hgTUEDbtSitkgcfXpBVhHpoLhHw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-18_01,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 spamscore=0 impostorscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110022

Glymur is the next generation compute SoC of Qualcomm. This patch series
aims to add support for the fourth, fifth and sixth PCIe instance on it.
The fifth PCIe instance on Glymur has a Gen5 4-lane PHY and fourth, fifth
and sixth PCIe instance have a Gen5 2-lane PHY.

The device tree changes and whatever driver patches that are not part of
this patch series will be posted separately after official announcement of
the SOC.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>

Changes in v5:
- Rebase patches on 6.18-rc1.
- Add PCIe Gen4 x2 support.
- Link to v4: https://lore.kernel.org/all/20250903-glymur_pcie5-v4-0-c187c2d9d3bd@oss.qualcomm.com/

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

Qiang Yu (2):
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the Glymur QMP PCIe Gen4 2-lane  PHY
      phy: qcom: qmp-pcie: Add support for glymur PCIe Gen4 x2 PHY

 .../bindings/pci/qcom,pcie-x1e80100.yaml           |  7 ++-
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |  6 +++
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 60 ++++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v8_50.h      | 13 +++++
 drivers/phy/qualcomm/phy-qcom-qmp.h                |  2 +
 5 files changed, 87 insertions(+), 1 deletion(-)
---
base-commit: 98ac9cc4b4452ed7e714eddc8c90ac4ae5da1a09
change-id: 20251017-glymur_pcie-88b45bf2e498

Best regards,
-- 
Qiang Yu <qiang.yu@oss.qualcomm.com>


