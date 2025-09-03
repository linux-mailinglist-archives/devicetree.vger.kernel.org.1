Return-Path: <devicetree+bounces-212088-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D48C0B41C49
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 12:53:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4E98A1A87728
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 10:53:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FE252F549E;
	Wed,  3 Sep 2025 10:52:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="T8VTzRgq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1E992F4A0B
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 10:52:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756896722; cv=none; b=jK5N5MP8noOHz0VxVkCr3aSL+gVldj/mHHGHhRZBXMasNTDMgBwkqYu+QubOqaoDc2rBz/9QWIskVIAjffEZWl6IgflLe5YgzTLPqtr+ghx0VOkRTHSmOMkwtMU9cMNbOzh7hwJE0DB+W9BfKUDcgcRSZ6Q1kqcTwR/eonWbCzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756896722; c=relaxed/simple;
	bh=VIrhsiNa2vsaeZ1k3ntWoV6MHVoV4myiEa7z/FRWSEo=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=hA7b/1iiuRxN8LHbcIigeUXOBbotl9jEMtlW9U9T5RYB6LFK+rTZ4pVCDJk4rgR4PM1gyoAS93KhKgKhXB7rH9LplAvWibJY6+XTbFnY14mYu1E6WZJXf/4wvTEZXEN+mTYsjaP6aczrV6p88I4J/doN+fMwAXFfZTUeI/J8VhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=T8VTzRgq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583AD9MI010160
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 10:52:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=AuGzt4TeA4CXIo9s07UyKO
	KVTB2srtQOh5AQE0kyDtE=; b=T8VTzRgqsAf7XJTCMUTYjxZjjFWann1l6bvWZH
	NV/v3TzcDghOenfNZCd3/EtxGriSMR27u+vJrL8uFoA5HiDFyPLvS19Uqvvyk7RG
	oPStLznYEWIrt6lqsEXS4LUtQ55E5FpGIzDSxfoUuRmcEqqU/G++tOquFaUGOjY0
	vKoNlX/qHyqAlPF+88FpjLub92ZaYTvoLdCQ9PneVIm3VG7j3rnmyhFjrz2iqj+5
	AKHpe/w3iFmNMg+wsD6Iltb/KWDNHfxavxGPn0hpyv1j/nB5HoRSFQHHKX8Yd1qr
	HBQF8qEmsJxYoqk2IPTWGJwwKk0Ep5dhinEVZ5eiM6+nEXnw==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48uq0ekfud-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 10:51:59 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-772642f9fa3so799144b3a.1
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 03:51:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756896719; x=1757501519;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AuGzt4TeA4CXIo9s07UyKOKVTB2srtQOh5AQE0kyDtE=;
        b=UMj0BMAptpnxN9UVdRgTZr6o81NO6nqIhWwCKZpIP7VCQmWwmHrfvZp1niWLIb+SFu
         Ewj3oGI1/YuBvaOOS1wvXKSMicXPby3ouqKEBvz+B8RJb+d/oIu6wYjNSX14DlgHhn9K
         76IivABlD606NrBC5j0eFbPkfDXsoC1eCnhOG8O2wGxQaHX8mMcylECmcM461+stYpxz
         BKg4Qi3O6TputRFpKXNaLlIdDjV27+iCuVqLf44RxBurk1qTjFLVy9VyeeFGGyuM0jvU
         /RPvmddEuerx4ApBG12agAIzzK0tAmzMagdjR0KPYxIdAGSa82oQ+LdWwfzMmRZ4VwWa
         rC2Q==
X-Forwarded-Encrypted: i=1; AJvYcCXmqRaBlqj51wFdLvlLtfkZLorfHsrVaerPkOPUsKKN55XyZ02Vr4xUmJIpGKID0lwokWk1LCk3poMt@vger.kernel.org
X-Gm-Message-State: AOJu0YymP1ofNW0nR8R1Guh2Qsw0Z2y768/pQNgS7CQJx9M2v2lED0Pu
	8I0lZXDSkVNKQ/m8KjdEhjTybzq9JOev/3UqXz4M8ROjJhrLSY0q6cqVS8gdgfrNI2IzfB7/yxQ
	6wHWcBXUZIlTy/M2zMdU/VX2IRMVzeS3pa9oQXJ3/V3lfMqDZbHsh6Jf9VPXdWNRr
X-Gm-Gg: ASbGnctEc4j0NRFYmxc7b7PzDlfFZSfNZ0MozDhvAYk9ZkEBO4no1ggfL1UBXRlEFW1
	9fLd5h8Xe7NigPmurdb/YflG40qR9ufTcMbw3BjryXFjAW0f83lx6ZJzQsf5PSPrf23hnmpRBrZ
	CXT41txFasWbyPuB2VMEqwoyl5M/lD+1tDfa2vDRmwYoXoOmYdz4OtIinnJ0L2zhGHme0SKJp7w
	gnLbiqu4so2r3UEw3Dv+6evuuQvvjjxO1f3Ty+oZPHYTIUGbAzGUH83N4blJ2O920DsO9plz/oB
	SrL2n1gBBfGLIkZKAUAT3YFSZia2Gh5ognjqcMPft4v3U+1ZrNk8A6B6us+GSURCHfKrvIqdMLX
	gRxk5FccGEEqUdHGoaNIGx9NwShdIhNTrUEsGnoXg1rzAKuZWkKZgFQpa
X-Received: by 2002:a05:6a21:6daa:b0:243:78a:82d0 with SMTP id adf61e73a8af0-243d6f7eed5mr19379554637.29.1756896718964;
        Wed, 03 Sep 2025 03:51:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEYpy4jYuwABbWQzckgRjVB1sF0n4XCgpnffXeTo8HUfejSLGlPIG1I7hfiHapfrtSD/xCQjQ==
X-Received: by 2002:a05:6a21:6daa:b0:243:78a:82d0 with SMTP id adf61e73a8af0-243d6f7eed5mr19379520637.29.1756896718466;
        Wed, 03 Sep 2025 03:51:58 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-329e3a6720asm4856888a91.11.2025.09.03.03.51.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 03:51:58 -0700 (PDT)
From: Fange Zhang <fange.zhang@oss.qualcomm.com>
Subject: [PATCH v8 0/2] Add display support for QCS615 platform
Date: Wed, 03 Sep 2025 18:49:27 +0800
Message-Id: <20250903-add-display-support-for-qcs615-platform-v8-0-7971c05d1262@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIADcduGgC/5XQS27CMBCA4asgr2vkGT/DqveoqsiJnWIJSIghK
 kLcvROSKiy6SDeWZhbfP/Kd5dinmNluc2d9HFJO7YkG97Zh9d6fviJPgWaGArUohOQ+BB5S7g7
 +xvO169r+wpu25+c6G9Cc9hcaj1yaAA5lJVWsGWldH5v0/Sx9fNK8T/nS9rdneIBxOzYUCFBjo
 5wb5dwoCS3nxgBccBUbDwWEKgTFRnDABQFYf+iApKGzMlamqZwpJk2+aIjrNUma1KgxSq+hiZO
 mFg1BrNfUeFtwVntjjcAwafpX08KCW69p0py2hXUu0ufpSTOL5v6jGdIMeh80SOete29z3p6v/
 lC3x+OWnom3Lzza9bwlvgBbyxBdU9T+D/7xePwA0bF6Z8ECAAA=
X-Change-ID: 20250903-add-display-support-for-qcs615-platform-36d1823b34ec
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        xiangxu.yin@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Li Liu <li.liu@oss.qualcomm.com>,
        Fange Zhang <fange.zhang@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756896714; l=5336;
 i=fange.zhang@oss.qualcomm.com; s=20250714; h=from:subject:message-id;
 bh=VIrhsiNa2vsaeZ1k3ntWoV6MHVoV4myiEa7z/FRWSEo=;
 b=BfxbEBpxJGsxBD6ND81sdBv6FWQe6wyi7tYHUTCAtxzfWxgMV8SMpZ959TI/OEQErmJEmzhQo
 gd9J7LFmw1VA3VlnGJoXeYvhfpLkfPBnJTC3TIgk4B7X2rRFD9oikSm
X-Developer-Key: i=fange.zhang@oss.qualcomm.com; a=ed25519;
 pk=tn190A7bjF3/EyH7AYy/eNzPoS9lwXGznYamlMv6TE0=
X-Proofpoint-GUID: n81jMqgLQ50-WTxGTUytf3KSqi8-ZPGJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAwNCBTYWx0ZWRfX6ClolajgnPP2
 Wz2ahdoH/Bej5Vb9XE1TX+9PLUo5prsk/xLyK2osnXTBPeMsrDOxRnBg6J5bGQ8PtErzdGE5tY2
 K2W4b0l3NFIuVmERIHS0u8AbE5g3PjKoM9j4H4nPWk+GtOaHMmyK9s6EZTcajngyeT4HrRA6BDs
 q91P6xadmjNANUgsANok1sJSatdY3T4AMfDkyM+WrWUREMZK24+sbCvKU+apPQOTEwCfX9BxbtC
 +0gkhsEo9ywBfFPVB4NkpCoIIEKx+qAPzfPMxGy/T3v140ApTN6QVeXC1hU6CBFhMZqmpi0iOz0
 fupNtLKPK6OJv7D7f8aWUuxGxN7NDU9z2av/2KTw5IsvaXuqJ+PzL3cD9qNDRCwfK3TpXsFZxhc
 cvFC3FAt
X-Proofpoint-ORIG-GUID: n81jMqgLQ50-WTxGTUytf3KSqi8-ZPGJ
X-Authority-Analysis: v=2.4 cv=ea09f6EH c=1 sm=1 tr=0 ts=68b81dd0 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=V8LYnBBswV6p_PwH02AA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_06,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 clxscore=1015 malwarescore=0 phishscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300004

1.Add MDSS & DPU support for QCS615
2.Add DSI support for QCS615

QCS615 platform supports DisplayPort, and this feature will be added in a future patch

Signed-off-by: Li Liu <li.liu@oss.qualcomm.com>
Signed-off-by: Fange Zhang <fange.zhang@oss.qualcomm.com>
---
Changes in v8:
- Rename vreg-NpM-regulator to regulator-vreg-NpM [Dmitry]
- Link to v7: https://lore.kernel.org/r/20250827-add-display-support-for-qcs615-platform-v7-0-917c3de8f9ca@oss.qualcomm.com

Changes in v7:
- Added anx7625 bridge supplies as fixed reulators [Bjorn]
- Change gpio to pinctrl for io_expander [Bjorn]
- Change vdds-supply to vcca-supply for mdss_dsi0_phy [Bjorn]
- Remove "wakeup-source" for bridge@58 [Bjorn]
- Link to v6: https://lore.kernel.org/all/20250818-add-display-support-for-qcs615-platform-v6-0-62aad5138a78@oss.qualcomm.com

Changes in v6:
- Add qcom,dsi-phy-28nm.h header and update dispcc DSI clocks [Konrad]
- Change mdss_dsi0_phy reg size from 0x188 to 0x124 [Konrad]
- Remove assigned-clocks and assigned-clocks-rates from display-controller [Konrad]
- Remove gpio header [Krzysztof]
- Replace legacy `interrupt-parent` + `interrupts` with `interrupts-extended` for display-controller [Konrad]
- Update mdp_opp_table clk [Konrad]
- Link to v5: https://lore.kernel.org/r/20250718-add-display-support-for-qcs615-platform-v5-0-8579788ea195@oss.qualcomm.com

Changes in v5:
- Drop patches 1–7, which have already been merged upstream
- Rename dp-connector to dp-dsi0-connector
- Rename dp_connector_out to dp_dsi0_connector_in
- Rename label from DP to DSI0 for dp-dsi0-connector
- Rename anx_7625 to bridge
- Rename anx_7625_in to dsi2dp_bridge_in
- Rename anx_7625_out to dsi2dp_bridge_out
- Rename ioexp to io_expander
- Replace legacy `interrupt-parent` + `interrupts` with `interrupts-extended` for bridge [Dmitry]
- Replace legacy `interrupt-parent` + `interrupts` with `interrupts-extended` for io_expander [Dmitry]
- Update interrupt type for bridge [Dmitry]
- Update interrupt type for io_expander [Dmitry]
- Link to v4: https://lore.kernel.org/all/20241210-add-display-support-for-qcs615-platform-v4-0-2d875a67602d@quicinc.com

Changes in v4:
- Add dp-connector node for anx_7625_out [Dmitry]
- Add missing qcom,sm6150-dsi-ctrl for dsi-controller-main.yaml [Krzysztof]
- Change VIG_SDM845_MASK to VIG_SDM845_MASK_SDMA for sm6150_sspp [Abhinav]
- Change DMA_SDM845_MASK to DMA_SDM845_MASK_SDMA for sm6150_sspp [Abhinav]
- Remove redundant annotation from sdm845_dsi_cfg [Dmitry]
- Remove redundant blocks from sm6150_intf [Dmitry]
- Update mdp_opp_table opp clk to correct value
- Link to v3: https://lore.kernel.org/r/20241122-add-display-support-for-qcs615-platform-v3-0-35252e3a51fe@quicinc.com

Changes in v3:
- Add reg_bus_bw for sm6150_data [Dmitry]
- Remove patch for SX150X defconfig [Dmitry]
- Remove dsi0_hpd_cfg_pins from ioexp [Dmitry]
- Remove dsi0_cdet_cfg_pins from ioexpa [Dmitry]
- Remove tlmm node for ioexp_intr_active and ioAexp_reset_active [Dmitry]
- Remove qcs615_dsi_regulators and reuse sdm845_dsi_cfg [Dmitry, Konrad]
- Rename qcs615/QCS615 to sm6150/SM6150 for whole patch [Dmitry]
- Rename qcom,dsi-phy-14nm-615 to qcom,sm6150-dsi-phy-14nm [Dmitry]
- Rename qcom,qcs615-dsi-ctrl to qcom,sm6150-dsi-ctrl [Dmitry]
- Rename qcom,qcs615-dpu to qcom,sm6150-dpu [Dmitry]
- Rename qcom,qcs615-mdss to qcom,sm6150-mdss [Dmitry]
- Split drm dsi patch to dsi and dsi phy [Dmitry]
- Update yaml clocks node with ephemeral nodes and remove unsed include [Dmitry, Rob]
- Link to v2: https://lore.kernel.org/r/20241113-add-display-support-for-qcs615-platform-v2-0-2873eb6fb869@quicinc.com

Changes in v2:
- Add QCS615 DP controller comment in commit message [Dmitry]
- Add comments for dsi_dp_hpd_cfg_pins and dsi_dp_cdet_cfg_pins [Dmitry]
- Add missing port@1 for connector for anx7625 [Dmitry]
- Change 0 to QCOM_ICC_TAG_ALWAYS for mdss interconnects [Dmitry]
- Change 0 to GPIO_ACTIVE_HIGH for GPIO flags [Dmitry]
- Move anx_7625 to same node [Dmitry]
- Move status to last in mdss_dsi0 [Dmitry]
- Rename dsi0_hpd_cfg_pins to dsi_dp_hpd_cfg_pins in ioexp [Dmitry]
- Rename dsi0_cdet_cfg_pins to dsi_dp_cdet_cfg_pins in ioexp [Dmitry]
- Rename anx_7625_1 to dsi_anx_7625 in ioexp [Dmitry]
- Remove absent block in qcs615_lm [Dmitry]
- Remove merge_3d value in qcs615_pp [Dmitry]
- Remove redundant annotation in qcs615_sspp [Dmitry]
- Remove unsupported dsi clk from dsi0_opp_table [Dmitry]
- Remove dp_hpd_cfg_pins node from ioexp [Dmitry]
- Splite drm driver patches to mdss, dpu and dsi [Dmitry]
- Link to v1: https://lore.kernel.org/r/20241014-add_display_support_for_qcs615-v1-0-4efa191dbdd4@quicinc.com

Signed-off-by: Fange Zhang <fange.zhang@oss.qualcomm.com>

---
Li Liu (2):
      arm64: dts: qcom: Add display support for QCS615
      arm64: dts: qcom: Add display support for QCS615 RIDE board

 arch/arm64/boot/dts/qcom/qcs615-ride.dts | 150 +++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/sm6150.dtsi     | 182 ++++++++++++++++++++++++++++++-
 2 files changed, 330 insertions(+), 2 deletions(-)
---
base-commit: 3db46a82d467bd23d9ebc473d872a865785299d8
change-id: 20250903-add-display-support-for-qcs615-platform-36d1823b34ec

Best regards,
-- 
Fange Zhang <fange.zhang@oss.qualcomm.com>


