Return-Path: <devicetree+bounces-206133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C076B2B99B
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 08:38:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F2E8E18838CA
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 06:37:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01A3826A091;
	Tue, 19 Aug 2025 06:36:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EyEyXonY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56A332222C0
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 06:36:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755585400; cv=none; b=udVc6pqnrwDsoDPr4KZ9rnt3+gAIIfW5scrlv41o2YzbTy50MYm8Cm/5WF7iyNst9DQYJ2N8ZU/+YTPoWdBihUNZTOJba5FyViSuJBeIjtJBI1W26Unixa0IlB92r+pQL9Fpb/QzGf137iQns28sc6NbA15rco+778MJpeFZEyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755585400; c=relaxed/simple;
	bh=8rX82cXmDkiy7mxoulbCd1tP0xA4NYjLb7c/ZyHx9wE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=V07bjgUE/NW/ODPEP+alnZXEFngVYG0EGegBTNf5eX4e4p2DPTSZjQrUF+P7e69WL+3f+XYiL5OVGCurTjY11ZHWw9ETlLQgh8uIIt5R4QqOth48M6MvYOZt4GuSKZfoMNqSb41Y7XUehi/jdcWP4cRm62PQD8PRQztqCelsJso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EyEyXonY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57IJvcoS027314
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 06:36:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=BNDtdStOIIki9xxSs9/BB+
	Gr6oUDaLjPxhFCW+eeQCc=; b=EyEyXonYYSs6oBIqd3Ln5w1LpBUuXayPhDojXS
	NG3ErmNfjJRADyOdJxZpec0t5sgSYnVXjcmQgssv+XIKCSo6Ktz4xCY4FYYpWLpu
	dfHqSkicd/mXXWD+b+RotNQ3fkTpa0caLH/YBCZg4RPJ9VFIJJJi3EzNjn1l4wWr
	e+s4Z4jn3jHVDXotpBwc9YkwHda1nXxTyBzzWdsYK6g64gt54bhYSR9kA9ALF3EO
	wkwoGgh+/aV32Zxy6rY3iP2jFQHqOQMaqULtUc1AnYiFQtK8rDg3ZTFYkwu59T6A
	ADSgjhXywDifKfwj50jTFX9sg3FlAJQye+dlNtvgJ39sA2LQ==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48jhjyffrc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 06:36:38 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b471737c5efso3745908a12.1
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 23:36:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755585396; x=1756190196;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BNDtdStOIIki9xxSs9/BB+Gr6oUDaLjPxhFCW+eeQCc=;
        b=i8CGah8BgrpfxtimpjtWYhTGYMC+E61g1A/UNBBaTXq8W0de+7kCwA2VVHorobNi/O
         f1zPQfAH+bJ0D0BcYceU7OKmSyBo+rGoGIHw1q3S3GvbMhKpIMxAjHFljQVF71K/pqtj
         tCnv6JJ7H4MEW3lW64Dcr38h59jKf/AsDVFKcbyH5NoSZeZxNS0DEmmxnSGE650s+fxD
         iF60leynHtMtmEvm6GHbIQMOn/P2kQFIfjGwsaioGuZrjMJ1iKFKLlZ7GTQdlko4349T
         Vn82zOv2566kZfq1mIPOr3yh3xWWJp3yPxHOBRc4iwmUBzVdV9QKeKHY+2S1P/L7GXPZ
         lrqw==
X-Forwarded-Encrypted: i=1; AJvYcCXybCLu512j+neUO3xGY+1zuhq6bVGOw+embPwSZJ9mYoGZDN6JII6jMqvBmKaOpyXPliqmN8B87c5g@vger.kernel.org
X-Gm-Message-State: AOJu0YxaPCAZwOtPWZwbwXFaHNyXEFlse2gCRqW9L8iXi7Qx4gfA6aoX
	72O1HgNxN37w9C6YzzhdPHuXzTKX8o5GCRMKJ+/+UsgZHwe1Fo60gU3+BBttcXMaANgD7prPSss
	Imscu5W3nq5wNkZF0K7QnJ5vC67tzD/BdeUoWozxqeHEMYiQFiWo6DuYt44Ow4cCN
X-Gm-Gg: ASbGncvEyrbUHkXjoPHmRwIHmynS6skgkAGP/IzE3b9D5hAgd5ZSDUwPOVk5eZkkJje
	CdpspzbWeYAcwew0WLPtQbXj06vGFGZi/xQDHvt3z6mBD28IT+RBk4D8kWWSYlSRwXU3IUH9qgj
	EeJ2Hcr7iefI5yLlBpqxSoa5AwYak/1uq5hQy1troTyBA/7o3q3obqnHEKLQ5LMI5DMj5/nb9ZU
	t+iIVe7U1dZwcAZQuG6g6buUN8rDgyg/ZZL7Ejb4YcDNM2xvFfCL8bzO4Rjjie/nBgCqNBNiwRI
	ZtugKXvj/PZt3EETzoajiti0MqI2sxrRI/2h2Z/UdhkzWYSJRMT4uvpg8ncy/V9jSVRwCoCmaWS
	WbQOPhDDlmzukrHag8+P48T+llqzeKQH7Bw==
X-Received: by 2002:a17:903:1a0f:b0:23f:d8e4:ded2 with SMTP id d9443c01a7336-245e04fa7ecmr18015845ad.53.1755585396139;
        Mon, 18 Aug 2025 23:36:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH7x2rlLjLEjoY6XNFKv6eIKH4qPemYI90LbCuQyKWX6k4A4fAbmZ2rJWHEIcg7kMoDk+m1Xg==
X-Received: by 2002:a17:903:1a0f:b0:23f:d8e4:ded2 with SMTP id d9443c01a7336-245e04fa7ecmr18015545ad.53.1755585395617;
        Mon, 18 Aug 2025 23:36:35 -0700 (PDT)
Received: from yijiyang-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2446d54fe38sm98120455ad.135.2025.08.18.23.36.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Aug 2025 23:36:35 -0700 (PDT)
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
Subject: [PATCH v4 0/6] Enable ethernet on qcs615
Date: Tue, 19 Aug 2025 14:35:55 +0800
Message-Id: <20250819-qcs615_eth-v4-0-5050ed3402cb@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAEwbpGgC/y2OzQ6DIBCEX8Vw7jaCP5Ge+h6NMYhr5SBWoMbG+
 O5d0eNkZr6ZjXl0Bj17JBtzuBhvJksivyVMD8q+EUxHmolUFGnFM5i1L3nRYBhAopC5KMpe8ox
 R4eOwN2uEvWrSrfIIrVNWDweCKk0X/JV0OH9pLZzxM6uncTThkVhcA1yLgh2owfgwuV+8ufDYi
 D4XHIjZnK9gySCFXuW5LGWRdpV60og2Vt8Jzep93/9hUL5Z8QAAAA==
X-Change-ID: 20250813-qcs615_eth-9e294256f913
To: Vinod Koul <vkoul@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>
Cc: netdev@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, stable+noautosel@kernel.org,
        Yijie Yang <yijie.yang@oss.qualcomm.com>,
        Yijie Yang <quic_yijiyang@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-5bbf5
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755585387; l=1876;
 i=yijie.yang@oss.qualcomm.com; s=20240408; h=from:subject:message-id;
 bh=8rX82cXmDkiy7mxoulbCd1tP0xA4NYjLb7c/ZyHx9wE=;
 b=aePfqudwbcAPoG0PPnBbU0FLS0s8F7btntlHW3vUPmGfocAQIUpjWpRbyjMfijPe2uqxhVKJY
 McDY75ufw3tBmlF2fvkzXQ/MPEjYHaStCQJMuO2NDkjLw3U+Y3RiqW5
X-Developer-Key: i=yijie.yang@oss.qualcomm.com; a=ed25519;
 pk=XvMv0rxjrXLYFdBXoFjTdOdAwDT5SPbQ5uAKGESDihk=
X-Proofpoint-ORIG-GUID: 4TLdlu9io-Atfn2Ior8fiQgQWL2aMinA
X-Authority-Analysis: v=2.4 cv=ZJHXmW7b c=1 sm=1 tr=0 ts=68a41b76 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=EUspDBNiAAAA:8 a=wApU7nzg8TAj0S4BVTIA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 4TLdlu9io-Atfn2Ior8fiQgQWL2aMinA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDAyOCBTYWx0ZWRfX3U0AoczRp0QC
 X+HM9t2DtgO8zo4AFVLUFZl/J9dgJPhO34xCiBjrI1P0EpkU/rYQ3e3LW8rIKvFDPzdJtnBcWQI
 +UxgPzc+tqlnouJy/S7QLPjme5PZ0z9CDx7gonfvteYrKe6HmDdqoIQzIBnSYXJUdNjwu/eY5Pd
 Si/AkkqCnqC5dCOjTOydCw5zi3RKj/x3khEJtT6r+b7F9KT/DJbu76OHqY6sdTMUnL9LcKE1D3c
 i1NQe+r4noZvxeUgZh6wa4FTS/rtFHtxOcfJxMs9jjhnBiyFfgTAjQ8GrEfAYOZywqFfXTFibag
 6IOILWSZHkGMWHaWD2H4spDkjCOtTgbFTR7Nm1o6VO9zeLj0YXrp7pF3ILfxVu1TyCArb9AaMXR
 N4c0lsl5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_01,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 phishscore=0 suspectscore=0 clxscore=1015
 bulkscore=0 spamscore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508160028

Adds device tree nodes and EMAC driver data to enable Ethernet
functionality on the QCS615-RIDE platform, supporting all three
standard speeds.

Switches the semantic interpretation of 'rgmii' and 'rgmii-id' in the
driver code to match upstream Linux kernel definitions. Updates the
device tree files for affected boards—QCS404-EVB-400 and SA8155-ADP—
accordingly to ensure consistent behavior across platforms.

Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
---
Integrates the thread:
https://lore.kernel.org/all/20241225-support_10m100m-v1-0-4b52ef48b488@quicinc.com/

Changes in v4:
- Change the phy-mode of QCS404-EVB-4000 and SA8155-ADP to rgmii-id.
- Remove the DT binding change related to the phy-mode definition.
- Update base commit.
- Drop ABI compatibility and update the driver code accordingly.
- Link to v3: https://lore.kernel.org/all/20250121-dts_qcs615-v3-0-fa4496950d8a@quicinc.com/

---
Yijie Yang (6):
      net: stmmac: Add support for 10 Mbps and 100 Mbps Ethernet speeds
      net: stmmac: Inverse the phy-mode definition
      arm64: dts: qcom: qcs615: add ethernet node
      arm64: dts: qcom: qcs615-ride: Enable ethernet node
      arm64: dts: qcom: qcs404: Inverse phy-mode for EVB-4000
      arm64: dts: qcom: sa8155p-adp: Inverse phy-mode

 arch/arm64/boot/dts/qcom/qcs404-evb-4000.dts       |   2 +-
 arch/arm64/boot/dts/qcom/qcs615-ride.dts           | 104 +++++++++++++++++++++
 arch/arm64/boot/dts/qcom/sa8155p-adp.dts           |   2 +-
 arch/arm64/boot/dts/qcom/sm6150.dtsi               |  33 +++++++
 .../ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c    |  28 +++++-
 5 files changed, 162 insertions(+), 7 deletions(-)
---
base-commit: eb91b04da2c3ac17e4e67079e455fba4bfd1b4f0
change-id: 20250813-qcs615_eth-9e294256f913

Best regards,
--  
Yijie Yang <yijie.yang@oss.qualcomm.com>


