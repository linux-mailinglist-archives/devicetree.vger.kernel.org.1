Return-Path: <devicetree+bounces-234079-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D980C2840D
	for <lists+devicetree@lfdr.de>; Sat, 01 Nov 2025 18:44:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C2CE6421E28
	for <lists+devicetree@lfdr.de>; Sat,  1 Nov 2025 17:44:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBB732FB0BB;
	Sat,  1 Nov 2025 17:44:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="i6LfQ7wx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="h+UQglXi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A7F7277CA8
	for <devicetree@vger.kernel.org>; Sat,  1 Nov 2025 17:44:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762019090; cv=none; b=VW/UYS9rirms8+FVLUxOM60qq4mQWU1KCGcw69HiKs1/V4JKujIe4mKFZdfEfIfNXSnJHaQIq07Zn4wZyNoTas2dIDl1Qkzuvissudf3O74bxPe13jvOj3Ov0aEAoXImkGztVveNiA1y9pTbaG1eXb0eOfTyWiwuCSmQYrPu29U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762019090; c=relaxed/simple;
	bh=vLiQWEIVRFJZgxk0/HwWEmquOpi3TB1UqDKG+aPt2OM=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=XRXsGpWe9MQ8+LFoqKtwi3IMJq7/rxer8kU7v3rY8WbQL6pTvPP5LgbicNqV/jl7FWobPaoL6BiSGt58SQvHzHeKlunehUfFV9WRszwJCzNVZq07pjKlCi0gD7d5Cmk+1bekK8MSUUJQpO5jku82fX/vgm5L/USaD6FP+PNuVx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=i6LfQ7wx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=h+UQglXi; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A1HSiUh2045618
	for <devicetree@vger.kernel.org>; Sat, 1 Nov 2025 17:44:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=X/+zhIB9FQRuG9rnSq2AsAoUOQRRcQA9e8E
	qXCfXMIM=; b=i6LfQ7wxoWQ8OgFpUPHU3SKaioC9APUQowL5M2C7SP4UItAplBT
	WJY/QVMRUOToU2PKZv/09oUPBWw2ni7k5LSsU1dVLEbSprWFAqSwGWQ8HatLkVyn
	qDRqwVKPYUI3umtK18kEDk2WVgz+4/xHyHQ4Ga79jWo7NtCqDgI4zFfYB23qYZAY
	58l/JsfxW7V675O6AkAJ0Ss5sZGgeJ/ahxbCyigCLd28I1TMEoCjLkoFSoPVic3V
	4J6GuFPr0FWrF56lY3aARJ7bOBO+f5X9uRHiE93DcZuIxu4dikJkaYoIymKX6Gbv
	qODCYbmSD5xnzB4GTw6raHSUcYD1x2t1b3Q==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a5bcm0vk9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 01 Nov 2025 17:44:48 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-33baf262850so3750014a91.0
        for <devicetree@vger.kernel.org>; Sat, 01 Nov 2025 10:44:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762019087; x=1762623887; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=X/+zhIB9FQRuG9rnSq2AsAoUOQRRcQA9e8EqXCfXMIM=;
        b=h+UQglXi5FfVeSI1aGMsrt4aNACQA53ihzg0LI6CAPDiyHVpTZvB8mXKoVOD15cHJM
         bOEvWj7GS9R5ZYub9Le4OhMCVEhOZPqCTGvicP/4Ecw5q+1vW9t/oVUYv1GTBOGB2Ji+
         AJnzrHjLXJ0CqB31/h1x755xs6Bx/DGQX1CsEigUy9BZxKR1zbNy0lorx34eFpJTP0Kt
         AKZwq+GIb++dpNiqnGngjr1b/DFNvu7ms+3BsWxqSkdn2N/+1Xh9mmBmDTnFrxg3/s2Z
         MZOHtIJ9f2TENj3RKynFDHhRy9h7xbHxDpxrb4Ptx+GsovEFu0fH0c6Ow9zbV6FSBrhN
         9WgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762019087; x=1762623887;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X/+zhIB9FQRuG9rnSq2AsAoUOQRRcQA9e8EqXCfXMIM=;
        b=snqgSt75l1M4ptbKg3XvSMeOl1LwOc9GjYUyycAzNiOuPesK3M04b+YQ0o9PCP6vTO
         fGpdSauROpiaKwTkjR/iWwxZR2NNXHJyhcMiX83Kw6PBpc482Az0kpi3Qf7dmo5uGkZu
         yS+RHLthiwo2W1vF3feeGDvC/hrvic+gqcl09b2CjvrUc4bUAa0Ru7j4X4XWGlyZ1hnm
         uL35/gGVkCdTJScIzv3exDm4BMEZ35zojM6/O6/tMVjNd5N4vPmOtKttetN5usQGAi6Q
         fB+4XBG8Dhs1WvFrlVODzNMvKGezCtrACENhjzL8hasb16hkDKBcCB/RePa4Ol6syvtw
         2FJg==
X-Forwarded-Encrypted: i=1; AJvYcCVzVNKxOodobjkcJa1SM0IJZVpzeyRg80yFV00BVt8ahS1rxOWly2EsEs2tMeL9b4w3AO4hJc31bmsb@vger.kernel.org
X-Gm-Message-State: AOJu0YwOOm6CH8hD51vr6TFeiyoX4nQDDEd9kLb2tGF4f9s8jzPJTLLD
	ZMojwAGGV0/JEw5GMbOgo5FBd4+mOtDFo1XchRtMMo6ZV6g0s+MloMETUO5vyaZFbF4KJPGmjie
	CKWjbEGuQT5fPgHfEESqHKeIw4NQN3UiNGuGgAye5YAlij4HFb5DcL4fvESw4m9dg
X-Gm-Gg: ASbGncsr3Ypber4MBAFm81xRe8B0wHQ9aJme6chZZrlFZShqD61Iz3ELo7bqri9yL7V
	uEETcTEDss+YknODD2QggZlTgU9qd/Fwd87xnyexKPaQpYkBhW/D8JzyuEyQ6RXKiy6asFwRWw8
	RRVztuxo/YpymJnM69aNkBGHZqprxjmIMDTsXje/nwKYTzgZuW1AjM2qsOcMmkjTe2uZpaCtDhQ
	KF2KmPTngYUPtNeMDkTDOCgSuKBflScvM5ng1zFFdU85tvgD6elDAZpLuSKhefNeB8b+TDawBV/
	2gzx94GjiAXE9XB06NlmXr71zo7d1kUghRxhPVLMyi6pnFYmYjLteYcWERnGmcSOWvhEHdSGryX
	Q0vli3YUh5FBwl39k2TiU2Xs19iY28NrAWIS3
X-Received: by 2002:a17:90b:56c5:b0:336:bfce:3b48 with SMTP id 98e67ed59e1d1-34082fd8a01mr8835465a91.9.1762019087337;
        Sat, 01 Nov 2025 10:44:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFR5LoDv82yndP5lM6/yXVpvqLE5akU/VcIDSQGBfSky1Mh9I+PN6s3PUOaEvBXj5wM9y0VmQ==
X-Received: by 2002:a17:90b:56c5:b0:336:bfce:3b48 with SMTP id 98e67ed59e1d1-34082fd8a01mr8835444a91.9.1762019086787;
        Sat, 01 Nov 2025 10:44:46 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3407f24ee93sm2793393a91.9.2025.11.01.10.44.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Nov 2025 10:44:46 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v11 0/3] Introduce USB DT support for SM8750
Date: Sat,  1 Nov 2025 23:14:34 +0530
Message-Id: <20251101174437.1267998-1-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAxMDE1MiBTYWx0ZWRfX4lZwdnCHgQ/v
 zZv0y2ySoehUQ8CurqwIhXkGdLW+bCnlCqe9qHghuB0v8zli5UdFxSXGMijfnx1O4Ld5mygpsGE
 3k6s7x73USZ9xyQtkTPG1wjwOJ/SbcSyYy2tvrcNbx8q3C4CkyuHHAZRUl/a3OCGe17PYtC48uQ
 aMSEUCSdqNmwLcl8QcUHmj3XAKYx/b0PjRiwbQI1unEOgIVSifr9lAWRM90kKEhr1CIIGvt9z8S
 vCIumOX0cVF/3jo6mikuQgr7ciJ5JP/lKSj6229+KrJp9brZqwetBCMWGpixDqI+0ZcwYDV3k6C
 3FZzPrIStEG/6SbXUujLY5ebsOqeT6YFJx8HzMBBC/K9q1DuIImTfLdXX1EvuaGvZDcMbmjowuF
 4QogZMeMngErq9lq7DxZTc84CIHlKg==
X-Authority-Analysis: v=2.4 cv=EszfbCcA c=1 sm=1 tr=0 ts=69064710 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=hjxnLiisKRasYILsxJMA:9
 a=rl5im9kqc5Lf4LNbBjHf:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: DjG5xb1mwpCAenpAW8AGf2SBd_UdKaW5
X-Proofpoint-ORIG-GUID: DjG5xb1mwpCAenpAW8AGf2SBd_UdKaW5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-01_04,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 priorityscore=1501 spamscore=0 phishscore=0
 malwarescore=0 lowpriorityscore=0 suspectscore=0 clxscore=1015
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511010152

Add support for the PHYs and controllers used for USB on SM8750 SoCs.

Version-6 of this series has all the binding/driver/dt patches acked.
But only the phy changes have been merged. Version 7 was a rebase to get
acked patches merged. But comments came in to use flattened bindings.
The v8 for usb bindings patch has been split and sent out separately [1]
and it is ACKed. On v10, the pmic glink changes and usb role switch
support are added while addressing some comments obtained.

Defconfig patch has been resent by Jingyi on [2].

---
Changes in v11:
- Fixed commit header in QRD patch.
- Reordered nodes to be in alphabetical order.
- Link to v10: https://lore.kernel.org/all/20251031123354.542074-1-krishna.kurapati@oss.qualcomm.com/

Changes in v10:
- Squashed pmic-glink changes from [3] in this series.
- Added remote endpoints between connector and usb nodes.
- Added Jishnu's CDB & SOB tag to credit for pmic glink changes.
- Renamed "usb_1"  to "usb" as per comments from Bjorn.
- Added QMP Phy pipe clock in GCC properties as per comments from Dmitry.
- Link to v9: https://lore.kernel.org/all/20251024151521.2365845-1-krishna.kurapati@oss.qualcomm.com/

Changes in v9:
- Updated commit tags (Removed Suggested-by of Konrad andadded his SoB)
- Confirmed with Konrad offline before adding his Signed-off-by
- Updated commit text in patch 1/3 as per suggestion from Bjorn.
- Link to v8: https://lore.kernel.org/all/20251022084052.218043-1-krishna.kurapati@oss.qualcomm.com/

Changes in v8:
- Using Flattened DT representation.
- Removed obtained RB tags since the code has changed significantly.
- Modified Author mail address from quicinc to oss.qualcomm.com
- Link to v7: https://lore.kernel.org/all/20251015105231.2819727-1-krishna.kurapati@oss.qualcomm.com/

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

[1]: https://lore.kernel.org/all/20251021050954.3462613-1-krishna.kurapati@oss.qualcomm.com/
[2]: https://lore.kernel.org/all/20251021-knp-usb-v2-4-a2809fffcfab@oss.qualcomm.com/
[3]: https://lore.kernel.org/all/20250113-sm8750_gpmic_master-v1-2-ef45cf206979@quicinc.com/

Wesley Cheng (3):
  arm64: dts: qcom: sm8750: Add USB support to SM8750 SoCs
  arm64: dts: qcom: sm8750: Add USB support for SM8750 MTP platform
  arm64: dts: qcom: sm8750: Add USB support for SM8750 QRD platform

 arch/arm64/boot/dts/qcom/sm8750-mtp.dts |  73 +++++++++++
 arch/arm64/boot/dts/qcom/sm8750-qrd.dts |  73 +++++++++++
 arch/arm64/boot/dts/qcom/sm8750.dtsi    | 161 +++++++++++++++++++++++-
 3 files changed, 306 insertions(+), 1 deletion(-)

-- 
2.34.1


