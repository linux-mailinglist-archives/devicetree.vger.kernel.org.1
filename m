Return-Path: <devicetree+bounces-234684-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 371A1C2FBB6
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 08:57:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 38EB43B10AB
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 07:56:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53C7D3101B4;
	Tue,  4 Nov 2025 07:56:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CedXUFer";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HUrUx7WC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4BE430FF33
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 07:56:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762242992; cv=none; b=YYD2GdseDnnXPbsJam5QeyayiinhVIZ+7stJxWCPQuem497joALA9dT4oJUWHJRRe2WbP1M0TFsRKpMSeSGtHJXXygrjJD4asu+yKJEnAeeHMvHPvLOCLokyFM87VHN7CekoI6xa7ZlBNyuJOm6MRNCnFcNvwHW2vrffobqkskc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762242992; c=relaxed/simple;
	bh=p+zbtUGK0NYTNokcjJ8zTL3xu8AjoyYRhWwRjHzQ+QU=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=MWiFVqQykW/DhxT6KTLhVVsh5lruuCms7SunzoaP4TXpg8m1Yd/lqsZewdqodi3PDGqrdkzEHeJAFXZrQZnOukmEradfamDY8xo0CRwk0RN/9uAuYSA8Ojx/2zVjZxuRQmtusX39m+5GxtHPog0xjjuE8Xq3caSFhdIJzoSg4xQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CedXUFer; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HUrUx7WC; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A438hY43658791
	for <devicetree@vger.kernel.org>; Tue, 4 Nov 2025 07:56:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=P40lz858sWn65cRyy7V02k
	KrFpLfqVO/bb0U8wLAIZU=; b=CedXUFerewoX+Y99bVm1vHIgtMRSPgG6cRNv21
	zV9qwZfhEZYEafX7hNzkxAFpywf4dso4lqJIYCj7pVnQTArVcCg1rMrop/neGymi
	lgSjALj7lBHlE/BGuOzowM58cigZ61ssfIkIPfl5qrMenpG+HAyP1j09Q4imhsZu
	CPytwhIr8SluYUuUq9ImKI8+0BetXAVb3P+RN54DLlV0LgVmOS69doKx+71SGnPG
	wB3EzppK3gCAia6pRK+cviCAOupGG1IqMnVkhLrXUA3+e9IQwV37laiRLEZTkDBb
	At0uUIiKjYFJ6gwsbrX3N0bzZvgmHOtwg2oLa2psCKUkZFIg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a70gea4cn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 07:56:29 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2955f0b8895so28387665ad.0
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 23:56:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762242989; x=1762847789; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=P40lz858sWn65cRyy7V02kKrFpLfqVO/bb0U8wLAIZU=;
        b=HUrUx7WCqS9zY8UpKBfDsQh8OHV5y+T4/M69rB2Ra0kI4PZKe9VeeaYdA53KvIkB7A
         R1UBBui+EsNISxVAX9KCGxGRWjuFO2ob9V2qTf3OSuxTsFWosDfPZI77NCAMm0bGb7Ac
         /jmNLG6Q34vXy8twhdX9j6CXKsqFGVt4Sl+4JB15GL+SOHw79yRfbZDr7TTvKAPn+Yaw
         VMNyJOZ1xJOgQIIzIU2TvbojQ735YtkNMb5q0BV1a0/QJU4oPK1HYNCVZTP4pyqufHnl
         YaBVDBAXDilyvr0wy2U+Uqzk/kWAxcFxpn5zNKGqz3DYzO/0ts/j4/5tr/cWCUTdrAaF
         teqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762242989; x=1762847789;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P40lz858sWn65cRyy7V02kKrFpLfqVO/bb0U8wLAIZU=;
        b=ipNyt9u1Fpg+gbYr4FC2XyJyD0rkugQDTrNTjG/J+80q1UG+8VFo1kNI2jcVrjOZRq
         EXccHKq2PI2FIA/iasiLs7Lw2jSA/q+6gIoCezymQ9vEGNQ+J/nNAmrUIWBlHKHGwf/X
         UQlMk34bst9v9w7t98IWurJeXDrmNhH/5zxEFa6ypsGvNb2WQrl5qrDmSoxstHt8VrKn
         5FFaFPuXnU52+/ukeg31P0A1A93O3lNdouBktGKgyxgBazfHVp3tSI7OvwfC1LlRdWlc
         8Of1moPjmRXfOfADjdP54Ek3Y4zu/l9n/ViAe9o+lC0c4I9hAY4kDJBA+OIYLYhQCC6d
         OQKA==
X-Forwarded-Encrypted: i=1; AJvYcCWTExjA+KLZsmVCF+BwLWRedZxspUYe+e5XmcCMJZsw8LT5rHYh6BFlFPCqrAvc558bSPluRgBddykJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwUk8NupuUVnScDZUxNBusSSCLNG7BdLU9PX4V2ZKVEeB9vajGv
	XwCpAtGpfyYbMahehLta7apu7XfepnXxgs+eZvOEcKs+qscsAq1l7NCCNnXx4BL58H39Jgk7x5C
	vmpS21SuLSiuI+AlSLqMOkKYUuXXCiR6CnzUcJcIUo+qZpw9xu2PCBID4kovEETCEkNXXVQmSWl
	DzAA==
X-Gm-Gg: ASbGncv4HmGZnPoHABO0oW9ZSAuPU75NduaRWe+k4U6taTDmZW1pwqYygOsak9wury5
	vSzIgcLgW6hxA4JGrhRk1wyLWPQTsXVUR9pORpQDPAvBg+uDbTZ1zbGmx3a5kQrowXveK3J+LaY
	6j/vusbjfcDfQv1MXsZZu1pV4mKh7lH2hhuq+L/UI4b8LIpEOL43pASd4dH6FtC4s0wHWIbMr8E
	xLlC+HE183x1FB++5EtIoFizoAnqoqkDiccdWH2bGEcspt60pnqO9P0fGnAUY1pRyoT5ndlEf7n
	RzMnghV0Ls1lqPp29Hf2hBaAfTtDlWZGghofar56X18KomzKHmb4AfaukBi9auW6o1Y9HOeIAJJ
	mfwQ0t36tfzkhR81Q2KfM/go2/g4G4DBbZW3A0LzBYD+0uA==
X-Received: by 2002:a17:902:cece:b0:271:9b0e:54c7 with SMTP id d9443c01a7336-295f93ad584mr36879925ad.11.1762242988740;
        Mon, 03 Nov 2025 23:56:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH/E8qvGcCBdYLa47PSuXxXLtlO6bjm4wEtNyl3gjXLQFDuqqzVXOnKbSdRhjf+fG7eP7e0Xg==
X-Received: by 2002:a17:902:cece:b0:271:9b0e:54c7 with SMTP id d9443c01a7336-295f93ad584mr36879555ad.11.1762242988172;
        Mon, 03 Nov 2025 23:56:28 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34159a16652sm3627951a91.20.2025.11.03.23.56.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 23:56:27 -0800 (PST)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Subject: [PATCH v6 0/3] Add support for Glymur PCIe Gen5 x4
Date: Mon, 03 Nov 2025 23:56:23 -0800
Message-Id: <20251103-glymur-pcie-upstream-v6-0-18a5e0a538dc@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKexCWkC/x3MSwqEMBBF0a1IjbvAROOgtyIO/Dy1QO1Q6Ygi7
 t3g8AzuvShABYG+2UWKXYL8toTqk1E/t9sEliGZbG6dMXnB03KuUdn3Ao4+/BXtyh1ghtKNDtZ
 QSr1ilOPd1s19Pzy/LhlmAAAA
X-Change-ID: 20251103-glymur-pcie-upstream-bee1d45f5e21
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>,
        Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Manivannan Sadhasivam <mani@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762242987; l=2257;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=p+zbtUGK0NYTNokcjJ8zTL3xu8AjoyYRhWwRjHzQ+QU=;
 b=5Vx34pD5tfyo2MUO9Q93MvRLw2sBgJbbxu5WtqHtd0o/+5MpxpAzN6xN5WieqffiOxq5NYFi7
 CVRPzBVcYVNB1U7vWtnT9XSi5g6gwjVm8SzrfXPNB9U2W9ZepHL3Cqd
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-ORIG-GUID: e1813fnwk2hOk42NuTJtARrhWo_b8WSe
X-Authority-Analysis: v=2.4 cv=bqBBxUai c=1 sm=1 tr=0 ts=6909b1ae cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=k0-4wGrbkXk5owfNcNwA:9 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDA2NCBTYWx0ZWRfX7ltyp2G7yatK
 FIFc6Uvkj+6c4+8nGamdcU6xlxE5BaUz25RSmIKgM6VqImfLeWGmooLwXrVNnXUKtvsGJ+5Jh9w
 koBwRlM/aEHJJUUysaj3j773heTFT5os+vjc2+ZLcdYbqtWCxzohMnrkM2mPbgRK80/3tHDzXaj
 awwmv3M0UF8pm9pIRBd8n7NMYDek9cCg7cb9wleCy5ODnsm0XHqrqJCLIyNW89UvsLM+6boJruS
 aqluoAqbIMwtEH4vM9ipX1VppEUJx2xUXE5Gin9t0vj5moxnj+SyYUDpL8cebn+ofK9DfyyUIqx
 pjov7FfYCv13OxuSMKSpMa0p4yCjoOr2bDmpvXM9ZsBnsJ8hLoVDexETa0xlUiaW1dcN5xiXDLr
 TlvxmkPE+LmEERMxsJJ03ogDw7YrWA==
X-Proofpoint-GUID: e1813fnwk2hOk42NuTJtARrhWo_b8WSe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_06,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0 malwarescore=0
 impostorscore=0 spamscore=0 priorityscore=1501 clxscore=1015
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511040064

Glymur is the next generation compute SoC of Qualcomm. This patch series
aims to add support for the fourth, fifth and sixth PCIe instance on it.
The fifth PCIe instance on Glymur has a Gen5 4-lane PHY and fourth, fifth
and sixth PCIe instance have a Gen5 2-lane PHY.

The device tree changes and whatever driver patches that are not part of
this patch series will be posted separately after official announcement of
the SOC.

Changes in v6:
- Rebase patches on 20251017045919.34599-2-krzysztof.kozlowski@linaro.org
- Remove PCIe Gen4 x2 support because Abel has posted it.
- Link to v5: https://lore.kernel.org/all/20251017-glymur_pcie-v5-0-82d0c4bd402b@oss.qualcomm.com/

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

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
Prudhvi Yarlagadda (3):
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the Glymur QMP PCIe PHY
      phy: qcom-qmp: pcs: Add v8.50 register offsets
      phy: qcom: qmp-pcie: Add support for Glymur PCIe Gen5x4 PHY

 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |  3 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 32 ++++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v8_50.h      | 13 +++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h                |  2 ++
 4 files changed, 50 insertions(+)
---
base-commit: 0688945f3e5f85f64c7fc9157223f92e0fc5cfad
change-id: 20251103-glymur-pcie-upstream-bee1d45f5e21

Best regards,
-- 
Qiang Yu <qiang.yu@oss.qualcomm.com>


