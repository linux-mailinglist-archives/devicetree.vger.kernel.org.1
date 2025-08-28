Return-Path: <devicetree+bounces-209848-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 76E6AB39559
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 09:37:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 50CCF16E368
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 07:37:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C74C2FE069;
	Thu, 28 Aug 2025 07:35:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hfUXVyXf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE1972FD7AD
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 07:35:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756366514; cv=none; b=Vkxu+xi63K5GSfUa2wco5FbWuH2q9WqfuR8N43M7VfoglBcQLeVCFm83Qe0qQl7j89yFskhLJOyKIi6EsRDVWG2EbNlu654hZ1DMxW0gxoC+eD29JzndhOxyK0u/xEVPbVLg5nHW2FvGcLRWboKlXmdFdUjm8gWEpuT7MMPRzSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756366514; c=relaxed/simple;
	bh=nfRxF5NGtqrSzfg0wLCafldDGtD2uBMbtfCRBPzXISs=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Zv1LJz4kHSm6EV/Ij8Sa+UdKfYpSVNPC0hVebtT8sAEI72SfN1ni4sY6ZAf7Faqjqfa2sBD89JItotma9nHirbZtS96isTmv27EKItctrsGDwJLWOksxOT6pxkN+BrhG3Eg16GY8UaIZkOTgRmvHeg3hvBJdSh8MS1QizeAmKbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hfUXVyXf; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57S5rJm4008130
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 07:35:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=UxDAHgpTpOhpjxbWGpIpsF
	8+wpA/NdIwnbq3kmWJ10Y=; b=hfUXVyXfawlS3PrVn5GawW10hs9AnkNTlLICzL
	qE5CzTF6l04LtzCPKmjZL8WN7ppYAU7Fp3tkdeTygueeXdmRn8yrRr0EgZE7ei6Q
	lxFcoIyNzsPj8nUn1LD7X5RXxfWzYtyUY87pPLE0yKu8WvGtA8uD4215kk+eQWFP
	gWKfvMdWCmcXXytRDtNxkUvOTzpjO7xEm79SXpohdIjSm/ECxr2YBAy1Peka3vvi
	A9L4sokDpwsqqn6zgFk1zPFyDxJvP8vGFssZ5jag+uIMUl+iakO12xOHmF69fQv3
	Rp8dNtMOTYh52x5TULeGZ5zWv3nq/BxT/Z2wUJ5hvzp/FHNQ==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48sh8anm27-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 07:35:10 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-77220823fefso60558b3a.0
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 00:35:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756366510; x=1756971310;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UxDAHgpTpOhpjxbWGpIpsF8+wpA/NdIwnbq3kmWJ10Y=;
        b=dadVDaLtv55hXjVzwxo55lkT/159ZdLTaaPastO1JMVxEKjAKiEXmKsgGFtJSZb3gD
         ricV1Od449dMfbX96+w2cftIteUKVw7NnSDeZt3Xwu5ah7kI7+h3RR1ZghvNk9hcNpIr
         bU2yekIB9teOC1YW9zCG4oWJ1/FMuO/oqqxdrKnLTexoQ0HtIBH0kCahD6boOYI0QPs9
         ZypKa1qSEY9scKbiFKd9QuQPHY4T8ftAKtpNqUqgrqzTU9JwsVmYhRLATinCmmlPD53/
         sY1y4+MVrK/MX0RWD/WNGHofuR3u2+9nmtlvkz2V/d6S7bnOheHuaO6AvKEGC0shvHbK
         h7pA==
X-Forwarded-Encrypted: i=1; AJvYcCXsgS1H1eOC/DCgE8GW2TQpYzfubE0YIOI0nPo8XsaOOSa0rONJOVeOuqXx1sWUj51BVlsxPXwhbqi2@vger.kernel.org
X-Gm-Message-State: AOJu0YyCKGMstLMVtctDtOA8UDxWUmovgt7d49V833OQ3bNAuj2x0Tjq
	IUh3K3wT8mDxsAoP8Q+zkgK/G2zwUst6Wg6mBU3OW07BYDQ9IcAVc67cGq2bdgq/RozCyMdAVT8
	wlRqPtMgD7v+JbaIfJtcCqsyD2gWMTqA/Z8G1Itw3fHniTqg7nA/v4yZuv6w/WcMk
X-Gm-Gg: ASbGncsZViuwg6BrOczwgQ8fqczkHLYBpQFEMVnhZcvZ4247nYGFrLD2pcY5AnKj0v1
	6Pw1+9NY9CBC/Z33joX+c7eD//nht8qyhOpZebkdB5OZ+L9rdw6y0gaaVzkSjFUSpnRk+xfPRe0
	f30V1jHqZCvLXE0zmwvzM/kH2TcJJJ3Fxe+V6IA8C/RV6gqrWdJGF66wv7/FfyUBxKqSQax6w6I
	thTMKg8TqDiKWD3EKTEELaN9i6DnuAoBaBSaW9shA+xkASp5UvDEd0Z8FCJ10wF5uv0GKcQA9aQ
	YNiOsuiutTt7rrM/gKcr/vqyVK+GkV1w//JxtN+mp7LyjlAYYKVUgr8kxk+NMBOjK9GbsjMLW/8
	=
X-Received: by 2002:a05:6a20:9189:b0:243:7beb:8424 with SMTP id adf61e73a8af0-2437beb8edbmr19770303637.46.1756366509903;
        Thu, 28 Aug 2025 00:35:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE8KJaQSZvxyS9mpzIUMG0blLe+SWobD6gLnmd7P+50PWKvT3W4yCjAe9vVKzztRe6tw8mKrQ==
X-Received: by 2002:a05:6a20:9189:b0:243:7beb:8424 with SMTP id adf61e73a8af0-2437beb8edbmr19770240637.46.1756366509328;
        Thu, 28 Aug 2025 00:35:09 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b4b77dc7614sm9605810a12.8.2025.08.28.00.35.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 00:35:08 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Subject: [PATCH v8 0/5] PCI: dwc: Add ECAM support with iATU configuration
Date: Thu, 28 Aug 2025 13:04:21 +0530
Message-Id: <20250828-ecam_v4-v8-0-92a30e0fa02d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAH0GsGgC/3XNQQrCMBAF0KtI1rZM06RJXHkPEWnSiQZsq40WR
 Xp3p91EUGEI/CHvz4tFHAJGtlm92IBjiKHvKOj1irlT3R0xCw1lxoFL4KAydHV7GEXmBVpjtSk
 RLaPflwF9eCxNuz3lU4i3fnguxaOYt98dNJAZYWUj0Uko1LaPMb/e67Pr2zanh81Vo0y8BJO4J
 K7Re2owykDzh1eJq4InXhFvNAdvCo6lFNvrLfzgKnHNP7giDkZ7K1ytlCt+XJ+m6Q31ITboYgE
 AAA==
X-Change-ID: 20250207-ecam_v4-f4eb9b893eeb
To: cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com,
        quic_vpernami@quicinc.com, mmareddy@quicinc.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Manivannan Sadhasivam <mani@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756366503; l=5373;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=nfRxF5NGtqrSzfg0wLCafldDGtD2uBMbtfCRBPzXISs=;
 b=L7J+dI+faUp/nAQMwdwLGe8DGzvO32BRkKBYbpuJABhKNmoOBQtyPXIpAGx/jAv/4KY4bFMrs
 ggla+6hpYmtDlXxaK1N7FBpw/daGBl2UGrzwd8D2w7AqXvMBXJVVBI1
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Authority-Analysis: v=2.4 cv=cLDgskeN c=1 sm=1 tr=0 ts=68b006af cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=eK1vwzyvm-k7PeNkGdoA:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI2MDE1MyBTYWx0ZWRfX/nODevTbRbEJ
 ryHB4L2dskBinc+9tdSERn74KUSZFII+I/HBUMDFbLezFAz1W54LRZKybpymCdnxGoFKe0FWFxA
 9luXoCPk/4z5q5TQJ4ZCCqwaGLIopxR9g7symaSgqkxVTLI8+frCo3/w4cM4CKtIaktKM++U1fH
 4yfOMs8n4hAPYXeMBAAeXmctzQOmBZMEI3qZUb41L10lsilBMZwUhiKjMH7MpWF1xgvc2wtC/bj
 h6jGB1STA1uR3cYyaFS8xxEUYuTo5SWl26huzBgMYK0l9zAeaiU3J1mVpkbzyLKxbFyCkz0UkAP
 x61UTVO1s9DKBYJ+AHzzA4AfGcHn0ceUtQXEvhC7wCfJoF/R6fONqUow4MObGUJtFvVub0Cao3t
 np6lhrYY
X-Proofpoint-GUID: 9vH-evrbQPkKasN3A_c75hoto_9aEwQd
X-Proofpoint-ORIG-GUID: 9vH-evrbQPkKasN3A_c75hoto_9aEwQd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-28_02,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 malwarescore=0 spamscore=0 adultscore=0
 impostorscore=0 suspectscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508260153

The current implementation requires iATU for every configuration
space access which increases latency & cpu utilization.

Designware databook 5.20a, section 3.10.10.3 says about CFG Shift Feature,
which shifts/maps the BDF (bits [31:16] of the third header DWORD, which
would be matched against the Base and Limit addresses) of the incoming
CfgRd0/CfgWr0 down to bits[27:12]of the translated address.

Configuring iATU in config shift mode enables ECAM feature to access the
config space, which avoids iATU configuration for every config access.

Add cfg_shft_mode into struct dw_pcie_ob_atu_cfg to enable config shift mode.

As DBI comes under config space, this avoids remapping of DBI space
separately. Instead, it uses the mapped config space address returned from
ECAM initialization. Change the order of dw_pcie_get_resources() execution
to acheive this.

Enable the ECAM feature if the config space size is equal to size required
to represent number of buses in the bus range property.

ELBI registers are optional registers which are part of dwc. So move
ELBI resource mapping to dwc. Also change the dtbinding and devicetree
to make the elbi registers as optional one. Having ELBI as the required
one is making the ecam feature complicated.

The ELBI registers falls after the DBI space, PARF_SLV_DBI_ELBI register
gives us the offset from which ELBI starts. so use this offset and cfg
win to map these regions instead of doing the ioremap again.

On root bus, we have only the root port. Any access other than that
should not go out of the link and should return all F's. Since the iATU
is configured for the buses which starts after root bus, block the
transactions starting from function 1 of the root bus to the end of
the root bus (i.e from dbi_base + 4kb to dbi_base + 1MB) from going
outside the link through ECAM blocker through PARF registers.

Increase the configuration size to 256MB as required by the ECAM feature
and also move config space, DBI, iATU to upper space and use lower space
entirely for BAR region.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
Changes in v8:
- Added 256MB alignment check for config space address (Mayank).
- Link to v7: https://lore.kernel.org/r/20250822-ecam_v4-v7-0-098fb4ca77c1@oss.qualcomm.com

Changes in v7:
- Rebased with the latest kernel.
- change ecam_mode to ecam_enabled (Konrad)
- change dw_pcie_ecam_supported to dw_pcie_ecam_enabled
- use FIELD_GET & GENMASK for reading elbi offset (Konrad)
- Link to v6: https://lore.kernel.org/r/20250712-ecam_v4-v6-0-d820f912e354@qti.qualcomm.com

Changes in v6:
- Remove the dtbinding and dt changes which make elbi optional
- Use non overlap region in the devicetree and in the driver ELBI
  registers will be overridden using offset of elbi from dbi start using
  parf registers (mani).
- Link to v5: https://lore.kernel.org/r/20250309-ecam_v4-v5-0-8eff4b59790d@oss.qualcomm.com

Changes in v5:
- Make elbi as optional and move resource mapping to the dwc (Mani)
- Make the changes in the code as we made elbi as optional.
- Link to v4: https://lore.kernel.org/r/20250207-ecam_v4-v4-0-94b5d5ec5017@oss.qualcomm.com

Changes in v4:
- Update the commit messgaes and do minor code changes like adding
  export for the api, adding error message( mani)
- Link to v3: https://lore.kernel.org/all/20250121-enable_ecam-v3-0-cd84d3b2a7ba@oss.qualcomm.com/
Changes in v3:
- if bus range is less than 2 return with out configuring iATU for next
  bus & update the logic of ecam_supported() as suggested ( Konrad)
- updated commit text and update S-o-b (Bjorn Andresson)
- Link to v2: https://lore.kernel.org/r/20241224-enable_ecam-v2-0-43daef68a901@oss.qualcomm.com

changes in v2:
- rename enable_ecam to ecam_mode as suggested by mani.
- refactor changes as suggested by bjorn
- remove ecam_init() function op as we have removed ELBI virtual address
update from the ecam_init and moved to host init as we need the clocks
to be enabled to read the ELBI offset from the PARF registers.
- Update comments and commit message as suggested by bjorn.
- Allocate host bridge in the DWC glue drivers as suggested by bjorn
- move qcom_pcie_ecam_supported to dwc as suggested by mani.
Link to v1: https://lore.kernel.org/r/linux-devicetree/20241117-ecam-v1-1-6059faf38d07@quicinc.com/T/

---
Krishna Chaitanya Chundru (5):
      arm64: dts: qcom: sc7280: Increase config size to 256MB for ECAM feature
      PCI: dwc: Add support for ELBI resource mapping
      PCI: dwc: qcom: Switch to dwc ELBI resource mapping
      PCI: dwc: Add ECAM support with iATU configuration
      PCI: qcom: Add support for ECAM feature

 arch/arm64/boot/dts/qcom/sc7280.dtsi              |  14 +--
 drivers/pci/controller/dwc/Kconfig                |   1 +
 drivers/pci/controller/dwc/pcie-designware-host.c | 145 +++++++++++++++++++---
 drivers/pci/controller/dwc/pcie-designware.c      |  11 +-
 drivers/pci/controller/dwc/pcie-designware.h      |   6 +
 drivers/pci/controller/dwc/pcie-qcom.c            |  86 +++++++++++--
 6 files changed, 232 insertions(+), 31 deletions(-)
---
base-commit: 07d9df80082b8d1f37e05658371b087cb6738770
change-id: 20250207-ecam_v4-f4eb9b893eeb

Best regards,
-- 
Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>


