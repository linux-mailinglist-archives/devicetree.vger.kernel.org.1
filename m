Return-Path: <devicetree+bounces-229623-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 849D4BFA526
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 08:50:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 0F98434E572
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 06:50:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE3F12F28E9;
	Wed, 22 Oct 2025 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="D1ELDRyR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303002F25FE
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 06:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761115834; cv=none; b=h4KG1hNraD1MuD9YqJaaZUXIeYHM0hR5Bg7ZBC8RiCaPyl6y+DYVemjqdkU2+6af+Uy+ITsnNG+A6p2+mvmSDWSXdS3BknJ/BNGIFS3tos0ECZO1FyI5e6Qo4VBnpSyGi633P6T4FumMXPzrt0IOcV2Sw21zKdxxGPDDkVhz6IM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761115834; c=relaxed/simple;
	bh=dHwbnnIKcEmXux6j+twsIaUTpCe2SsqCuU8ezT71GME=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=e05t58e/FYWyL5VUVznoRgyaNaVCBTHv3aTfNvZLblPnDzKju2nLusql+PfvgblWkYcu7fz7dRWy+rRM1MhBDWqjNqrdL0HyeeynxC3bNYwHsB4g7GpsdgWrF1DDdi772Iit/fHnskalV+i6/j54Yws7gM/4Vzm4fZG4CBayx4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=D1ELDRyR; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59LKfIcR012332
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 06:50:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=TpWvVvMsWw/TXnHm2inwaH
	jVIdOxicoQL0Vl8v2SQis=; b=D1ELDRyRMGAJ+JBQZ9Dul0hWmoNjtIQDeIfDF2
	re9bY6S5FiISlRsmn06lP8QgEIsehNrtA6rMHac/DZIYF6sm5x2qtXqDNyzCHoEQ
	mBHRwDD+CJsHSFJji/FM0il+1bfxsW3lrI5LeHYuBxQqXetLrgIl5rd/6FxFr5IQ
	IZKR4v+cBm7PSY7Pa8t7bVVfgf5Dh7I0AJKzIQZuKjhbwVeupeuF0t8aq3yStqHz
	pQRacyPjdATe30qkdxweswV85vZOKeJziBFhdfTHzU/8zEX6sCFU+pNUXnniZKRX
	uaj93mkrExt744BA9Yli7QbYHzYXLCfZkQ0U8TOX1fy2n9Yw==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49xhe0hdg0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 06:50:32 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-32ee4998c50so5313910a91.3
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 23:50:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761115831; x=1761720631;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TpWvVvMsWw/TXnHm2inwaHjVIdOxicoQL0Vl8v2SQis=;
        b=GvjOAGm0cp70pP2kEaiyiqnR8qh/IAc68Iw5VyiUSh6kj6XMyX9/mpx9SEBr5APEAU
         sTR77EVPQfXHk5lDNNwiOoFVfGzhEoFnNuCTvTsllp+N4lQc32dJJkxZt+dk0t5ksNyf
         g43FAi4h2TJfKAD2gYpuyY8RvQnSoKPQaUETsL2oPogWY2iiwTLfito3kvadcf/9U1Xt
         q1r1E9p0g71/I8Wf/sNrs0xej6On2quPj5IR/dZTgopJfwZmZmN32moPJIYld1sVSiuN
         PEqN9uUPdJwXzcUS7lYJx2MQNPQMsmTy6IRI/UpxxyXSfxKk00WiDY50NKlWyPaqzso9
         eOFw==
X-Forwarded-Encrypted: i=1; AJvYcCXsnEiZKAAOMuB87J5Zkwu1gBu/2mkdOgM1C4OzOKf0n0f/9zkfArBw+75aPlCJ35HGnMEKbu/zZAtX@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6e4By3nlMHj2GS/7gUBSr/aUmEKt7HQOc1ah6ndCVDGvDzX5B
	CSfB+y6WO/VotHPqEUabz75RTuVUfsR7B5GiNETJ1uN/Dkv9b8EzkCClW9Egw/PggE6ABD+EmbB
	xheP11sfjwnt1GfxIB7ixWQwlSF2Bjyn1R8vdEAifK7jB759OwKYbPQiOQyODdRG8
X-Gm-Gg: ASbGncsc9WVCekqz5x83/X8TYsXl3IgFYPlJBNipWgDJk493val1Z4gDDT40vYvPC1b
	VechQh0TPJ7Jyc05x0YCTBTnbStUzLnQjbjoHg2B+dGZq5+FKNsDT/6M76K/YzZ6fy/CaiJdzvj
	Bl4VzulFS1FBnHcnonUh0o9walVts19+MY45YvDSpuvKlZBEPGawlpAPoi3ru92fixMl1z+bpMR
	XJsBwpbbCI0ybdzbJJu6iPbRKWi9pfsq8WIs3iqW4vZ1h72rRh7U7ykfVA50WG9Ho/EjApjQ1B9
	/4dtw4F522tdQdgMWm1mu4V7sKonI77hv5L20U55tMzDMOvzLnrVLC/AcwyW/phtWnfsyX+k7vw
	9yjUZXinLNc96r7aQjf/f7+Sk/JLT/QYnPy5DvthrOOx5v+M4eQ==
X-Received: by 2002:a17:90b:2e46:b0:335:2823:3683 with SMTP id 98e67ed59e1d1-33bcf953e72mr26873445a91.9.1761115830918;
        Tue, 21 Oct 2025 23:50:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFCqxMzgEngcnVzPVoHm05YTCFCOmPRtrDaj8ggmV4o9Pc8i12sCZU1TJJyWgcLhxekgKAJrQ==
X-Received: by 2002:a17:90b:2e46:b0:335:2823:3683 with SMTP id 98e67ed59e1d1-33bcf953e72mr26873421a91.9.1761115830493;
        Tue, 21 Oct 2025 23:50:30 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33e223e334fsm1560285a91.8.2025.10.21.23.50.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 23:50:30 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Subject: [PATCH v2 0/4] phy: qcom: Introduce USB support for Kaanapali
Date: Tue, 21 Oct 2025 23:50:26 -0700
Message-Id: <20251021-knp-usb-v2-0-a2809fffcfab@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALJ++GgC/z2NQQ6CMBBFr0Jm7ZC2AQRX3sOwaMsgjdJiR4iGc
 HcLCzeTvOT9NyswRUcMl2yFSItjF3wCdcrADtrfCV2XGJRQpRRK4sNPOLPBWpKuO9NVZ1lBsqd
 IvfscpVub2GgmNFF7O+z7tFW7Njh+h/g9/i1yl4+0aFTxTy8SBRa16ZveWFsW1TUw569ZP20Yx
 zwdaLdt+wFOEruVvAAAAA==
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>,
        Melody Olvera <melody.olvera@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761115829; l=1391;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=dHwbnnIKcEmXux6j+twsIaUTpCe2SsqCuU8ezT71GME=;
 b=vgQFFSJm7L85vv9QLTjpskzDXbpxwOizvvDKDTXMdfoGpMol/v2rFFBR5Syqv6LNYy6aDq/Il
 N/8Z6XJJM35B8fghBeh8iC7CqzkQhwKOPPD8seG72VPfwW3GQ+d5We/
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIxMDE2NyBTYWx0ZWRfX28B14rC+QQw+
 zUK1V2gwmgh1wnmZsDr3vPOo3sfB3v4jvycJLGhGp7/obPjbAnFToO+WUNaayACiOEwdbY0KjeP
 t1Zq4lh1NddLXZfPzasGua3te8afsN/q5+8L2E5a0jLZWY1+unMvOSCeqlJxuR4V7WpatIiTmIL
 Qp7SZ4FJK8bQP0zss5tKs/fWQesR8QqVMZEIx/DOUj6xPhIa71QtXn5uMriEvYN+1TaEqEb3qM3
 2YttUhrJS4V3uDFn4jyZrumeplbDV1yvhvSMZDLQzHjx/Bpr395y3iEZHuQ/o6pAggrnTT+MM2e
 u0SIDxXfxuOJW5B09FJF7ku4GaB3xpUtatnIAANtGnK77IcA+RSnum8G0C6rP2Y8gXbNCo75Naa
 uEMHgdf5JbrBdnNBxjdByTlQkHJhAQ==
X-Proofpoint-ORIG-GUID: YxJUvfFOxKXK3owWKQ49UlwvASZ90yqa
X-Authority-Analysis: v=2.4 cv=WYUBqkhX c=1 sm=1 tr=0 ts=68f87eb8 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=751tZ-0Qz6C-U5i-0qsA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: YxJUvfFOxKXK3owWKQ49UlwvASZ90yqa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 bulkscore=0 impostorscore=0 spamscore=0
 priorityscore=1501 clxscore=1015 malwarescore=0 lowpriorityscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510210167

Add support for the PHYs and controllers used for USB on Kaanapali SoCs.

The usb function depends on:
https://lore.kernel.org/all/20250920032158.242725-1-wesley.cheng@oss.qualcomm.com/T/#mb2e1260cf266638a56c04bc793f5fe9ed1b3b79d - reviewed
patch 4 was picked from:
https://lore.kernel.org/linux-usb/20250527-sm8750_usb_master-v6-10-d58de3b41d34@oss.qualcomm.com/ - reviewed

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
Changes in v2:
- fix author name typo
- Link to v1: https://lore.kernel.org/r/20250924-knp-usb-v1-0-48bf9fbcc546@oss.qualcomm.com

---
Melody Olvera (1):
      arm64: defconfig: Add M31 eUSB2 PHY config

Ronak Raheja (3):
      dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add Kaanapali QMP PHY
      dt-bindings: phy: qcom,m31-eusb2-phy: Document M31 eUSB2 PHY for Kaanapali
      dt-bindings: usb: qcom,snps-dwc3: Add Kaanapali compatible

 .../bindings/phy/qcom,m31-eusb2-phy.yaml           |  6 ++-
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 54 ++++++++++++----------
 .../devicetree/bindings/usb/qcom,snps-dwc3.yaml    |  3 ++
 arch/arm64/configs/defconfig                       |  1 +
 4 files changed, 39 insertions(+), 25 deletions(-)
---
base-commit: aaa9c3550b60d6259d6ea8b1175ade8d1242444e
change-id: 20251021-knp-usb-81ea8dbd6716

Best regards,
-- 
Jingyi Wang <jingyi.wang@oss.qualcomm.com>


