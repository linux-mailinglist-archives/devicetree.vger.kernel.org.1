Return-Path: <devicetree+bounces-227043-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F535BDE163
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 12:53:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 736884E42EC
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 10:53:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81C1E31B81E;
	Wed, 15 Oct 2025 10:52:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gJZmaZBA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9CA931B12B
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 10:52:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760525565; cv=none; b=nKd3eMoKTPGiwAJy3Autj2J0drj0n9JXNHP78kv0UMaFwkMUjb1Wsc+wQoJ6rkq/T3wIaNXQbJMIoGDEJZkLCBXGOrUhc3z48oMQo1sogVFd+a11eu6sPLNRT7c2qyKTdOqpqtOZ7MExB+/JY9o5B8+yyzv2Hp27p01ydFpx4qU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760525565; c=relaxed/simple;
	bh=Y5LyX6PJ1GD3uD+R+2AEMxivi+xn/rlk6F2KU7UMJY0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=aohnsZoHcm1ojF1gg/QODdYzKzyPLJtvH+R7zu5BpLwBPWn81hvGTu7iEsweNe7xJHNRkuMR37Tm6LXJu/jy94ll+Thr/Jd50FJrHaCaeOdhP1swu3KrUmkLL+U3qCTiY0+9hGVUJyB4zP9XFi8MVim/8zxocTj0YQ4XxEVj+uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gJZmaZBA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59FAiJPV004236
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 10:52:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=k9PbxovBlxrUjezeEpd7O/eFhPRSiN/Zb6u
	iJB34q1U=; b=gJZmaZBAECOZdX4OBHW8phSoOckeebvGiLPE47xEUswBrXoDrxi
	b6LOrD/C1n/OJQ9UGINb88Av2Wq19Wp1Gmisl1doKodEHiJ9Or9vwXDkB+7oxIYA
	ToLVHSY86++7P5dl0ayPL6Fc9QfQjnQO7YLl+lC5bEkRRZ8b+pkr7sP9p3kQ4xu5
	f8e31IqnDyvnWCWRY91uhzqbObHiGS+YRRMb19XxYa42Iras16tVfxc1SY9WykhI
	BFZi4pgtaNpuoTo9u5H97oWcfzCOOWMGfIvaNH0Cxq3vvXJmyDUGaaL384C3J9d1
	A3OEjKlBHkbUeoC/aTxa2kXUfGPEpbbeZMg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49s6mwpdnv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 10:52:43 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-29085106b99so12923245ad.1
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 03:52:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760525562; x=1761130362;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k9PbxovBlxrUjezeEpd7O/eFhPRSiN/Zb6uiJB34q1U=;
        b=R69m7gElRGNSxBcCMVjVLQj7Htd6iL/T+3Js3nSAJOIn0mPWNXc7hue6VvREGWzldr
         aFRm6C2+b9zsGMgcepxs1FbHnqSn9uYh6mgUjUlUE3RZBI4DWOZJ1w4GC0YQHOK8N4nT
         FIKCC0rADxM6WYWSnvygiFKgl3l1hd/pfXyJzzsX5Ap/qiIzGepupH7dI+tyndIQAKhI
         zRk1CAo3YTnT4/FSGk8L4ycuEHVaoGPh0tfjlIr6sYJ5kLLFCK8kR/Zl32vgpPuFRomi
         9dPXowNyRW52JtdYblY5PtaF1rXZLo0SmZgr5Y1agEGvnWviNVIPNl9H353SgenE/D92
         vGhw==
X-Forwarded-Encrypted: i=1; AJvYcCUIDJY5+zMHC10F17lmTwIOO46L2oIzWTf/ii7NQoePcBrXYPWa2xR9T5a1fBMJdo6UCpLX1Ao5OqV8@vger.kernel.org
X-Gm-Message-State: AOJu0Ywj42W2hD6G/rzHLupYTkQXYdngtMmd6u1KK0Z7uTZOJrowDy8k
	+tlh1gOiXJdMV92dCb2HKvgpgsiK/WoXxIERRejlLWrX9veo/reCnrGtPN+EtqJWNyijVN7gh4u
	miWyz7lfOcB7kEaMmWtIfDG6aH/qwNyy4n2NlwHiNSFTYsoOiiPSs+KQlBEqOgiWG
X-Gm-Gg: ASbGnctsYom5JZn+uG5DlDEcpM9e3imvotGyVyME1e9c2MsGMhHmFnYrv7NasRsd94D
	kCmUmG6W0MCtEEYD1aMH/yfgVXnuiDvZRurqSZn0VbHfp0pHP2unL6wy2Tu8Y9NNC9sb+RLSS93
	YJJsL1nytyTNwOjhSeP8MoNR2xZfKjQrkLuYXVTA4JZ6XP21D7Jjz8cwZ0ryP0kAdpBoHUZBtna
	zRXdRFJhFl5VvajZ9nuusL/ejM3V7CrrCcis0olnuObDvkdlvYj38wtZhZyviMGKvdTXmyHVNwM
	8a9H6CAfx770LZpAypzWs1OmBGE1XH5RecMeBHCBnZlPxJzSBgdR8HN96ZLNSlZ951q19wcYmuH
	QUg==
X-Received: by 2002:a17:902:d50f:b0:278:9051:8ea9 with SMTP id d9443c01a7336-290272dc4a7mr389734285ad.40.1760525562378;
        Wed, 15 Oct 2025 03:52:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE76E2sByiIAnOsggbeIzExkPPfnSUMEgRXKGy27ERy8UgzUuEb0yq2Re9PDGuc1b/JowcGew==
X-Received: by 2002:a17:902:d50f:b0:278:9051:8ea9 with SMTP id d9443c01a7336-290272dc4a7mr389733895ad.40.1760525561919;
        Wed, 15 Oct 2025 03:52:41 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034e20f8csm193698385ad.49.2025.10.15.03.52.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 03:52:41 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Arnd Bergmann <arnd@arndb.de>, Nishanth Menon <nm@ti.com>,
        Eric Biggers <ebiggers@kernel.org>, nfraprado@collabora.com,
        Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v7 0/4] phy: qcom: Introduce USB support for SM8750
Date: Wed, 15 Oct 2025 16:22:27 +0530
Message-Id: <20251015105231.2819727-1-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDEzMDA4MyBTYWx0ZWRfX4bz7SZBSfN5r
 ss6w9/0YRuJ9ly0BvGRPyey26owoQjJirD3EOR/QHeLxr2vId+wh9VvVmTFbgzT1Tbl/pFX8cuS
 qbTYsoPOFYTQGNki2UxIhbh2J+T0XBkx8vRG2a63/K6JqwWa9SVDpf6wkaFoHsQ9ELMSR6I16ZQ
 5Vi2FT1RcRaMiJegu35PLWc+UVnRQK3XEKB1RVM2yWpo346wkAtxgcj52slUQkxYtsLAzIbc00s
 nmXu0r54RM29kq9ATkv9ZpGvKQrbG3MlaZizkh53AKkTnl/OrF9G2Xi8Uyz7XE5Qz4KFkGcQTFw
 DW7ycvftm/81Uc2fJs9L/ihSW0WlPurb/In8sFN+xKsg1qKULm1cbMdQBv0SclU1QkUzeQ0lore
 Hh0R9Z/BUiaKgqBhc3zSWNEHcjO3bQ==
X-Authority-Analysis: v=2.4 cv=Fr4IPmrq c=1 sm=1 tr=0 ts=68ef7cfb cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=UZ4tNvspqRR6S34ExfcA:9 a=GvdueXVYPmCkWapjIL-Q:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: wwOljFpakNdE8Jsv-WE75eFRZ38DdjaH
X-Proofpoint-ORIG-GUID: wwOljFpakNdE8Jsv-WE75eFRZ38DdjaH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_04,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 spamscore=0 phishscore=0 malwarescore=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510130083

Add support for the PHYs and controllers used for USB on SM8750 SoCs.

Version-6 of this series has all the binding/driver/dt patches acked.
But only the phy changes have been merged. So this version is an effort to
get the Acked patches rebased and merged.

The usb patch has been split and sent out separately.

Also, although the phy changes are merged, kept the cover letter subject
unchanged. Hoping that is not an issue.

---
Changes in v7:
- Rebased on top of linux next
- Split usb patch and sent out separately.
- Link to v6: https://lore.kernel.org/all/20250527-sm8750_usb_master-v6-0-d58de3b41d34@oss.qualcomm.com/

Changes in v6:
- Change readl_relaxed/writel_relaxed calls to just readl/writel in the readback function
- Updated languange in the defconfig commit to specify SM8750 as a Qualcomm SoC
- Link to v5: https://lore.kernel.org/r/20250421-sm8750_usb_master-v5-0-25c79ed01d02@oss.qualcomm.com

Changes in v5:
- Removed refclk_src from the QMP PHY driver as that is no longer used.
- The decision to move the TCSR clkref property from controller --> phy
node was made in v4, and the refclk_src was a lingering change that was
meant to be removed.  CXO is the parent clock for TCSR clkref, so CXO
clk will be voted for as well.
- Relocate the SM8750 compatible within the qcom,dwc3 bindings.  This is
to take into account the change in clock list.
- Link to v4: https://lore.kernel.org/r/20250409-sm8750_usb_master-v4-0-6ec621c98be6@oss.qualcomm.com

Changes in v4:
- Made some fixups to the M31 eUSB2 driver
- Moved TCSR refclk_en to the QMP PHY DT node
- Link to v3: https://lore.kernel.org/r/20250324-sm8750_usb_master-v3-0-13e096dc88fd@quicinc.com

Changes in v3:
- Split platform DTs into separate commits.
- Fixed up M31 eUSB2 PHY driver with feedback received.
- Reordered DT properties based on feedback.
- Rewrote commit message for enabling EUSB driver.
- Link to v2: https://lore.kernel.org/r/20250304-sm8750_usb_master-v2-0-a698a2e68e06@quicinc.com

Changes in v2:
- Added new QMP PHY register definitions for v8 based QMP phys.
- Made changes to clean up some code in the M31 eUSB2 PHY driver based
on feedback received.
- Added bulk regulator operations in M31 eUSB2 PHY, to ensure that
both the vdd and vdda12 regulators are properly voted for.
- Removed external references to other dt bindings in M31 example for
the DT bindings change.
- Split DT patches between SoC and plaform changes, as well as the
PHY subsystem Kconfig changes when introducing the M31 eUSB2 PHY.
- Added orientation switch and port definitions in the DT changes.EDITME: describe what is new in this series revision.
- Link to v1: https://lore.kernel.org/r/20250113-sm8750_usb_master-v1-0-09afe1dc2524@quicinc.com

Melody Olvera (1):
  arm64: defconfig: Add M31 eUSB2 PHY config

Wesley Cheng (3):
  arm64: dts: qcom: sm8750: Add USB support to SM8750 SoCs
  arm64: dts: qcom: sm8750: Add USB support for SM8750 MTP platform
  arm64: dts: qcom: sm8750: Add USB support for SM8750 QRD platform

 arch/arm64/boot/dts/qcom/sm8750-mtp.dts |  24 ++++
 arch/arm64/boot/dts/qcom/sm8750-qrd.dts |  24 ++++
 arch/arm64/boot/dts/qcom/sm8750.dtsi    | 164 ++++++++++++++++++++++++
 arch/arm64/configs/defconfig            |   1 +
 4 files changed, 213 insertions(+)

-- 
2.34.1


