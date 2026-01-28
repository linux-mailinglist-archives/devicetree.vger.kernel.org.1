Return-Path: <devicetree+bounces-260245-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kA8wKxHNeWmOzgEAu9opvQ
	(envelope-from <devicetree+bounces-260245-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 09:47:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 247879E56D
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 09:47:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7B7B13017FBD
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 08:46:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 061B53385A0;
	Wed, 28 Jan 2026 08:46:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ckm6s4os";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JE52M7X9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96E672E2665
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:46:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769590011; cv=none; b=rF/XgVCCGO3FhU7Y9R1+UGlG3t6mJTbxkANY1kPAF7BgeL/XBoOU7MaMBUwHuk/2W8OOkuG45RayF/FU67JUGMNxJVdGw4uB+aIbdWvgk8qDoTxBBkORDclWwHHC9PLKnXXgq4JuUsgYLpoxtEmE+zSmbPefzoN+xJeAr84ncjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769590011; c=relaxed/simple;
	bh=HRWGogkSiHy+QJi6EM67FXTpuIKksxP63f2OUF86h10=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=IYW1+f19P35k8Wg5NhnWjxp9VzSrR05Ax8JjYhVOfqVENQL66pDNCa0s7VhFHMgtnTzdmKyO2HNlTLOE1pDilubs7vNDeXuHaSdy2bksWyRqYF/GsRBVR8CDE6sawAQpiTtc/2Gpk8DW7hE9ddmpv0lLy0vqufvRo+gZa1rAQOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ckm6s4os; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JE52M7X9; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60S6jYZK2942478
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:46:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=hY9hL2IizyBWMbIQRXnyE1
	ImG2q26W3C317pRVUUTqY=; b=Ckm6s4osztYLxzLe5cLt4K23dGX9x6moUMayNz
	7hNXF0CsX/Rg20QFFDqeupM8AxneSzCzzmwRgpZDxOj85pJcJfgClDWmpJv1uMwB
	0wRH+9fegnffKdChT2J1wsJfZiV9510e7dpbBngPzKD/xadsLk2DU6DJ6vKqH0YZ
	XE14+i0u1VzPpVGdFy2pOyUp4ovwqugCCmC6WMJQ/V+pUQkmtpDia7CToX796i1X
	V2KDwesomailY32uUJAoVNEwShk/Sxq5iwtDYZl/M0is4HS6wei8a9/gR11EcjRh
	haNEHAdXc2vF/pSe9NnPipVZKRYk31TLEJaydB6zhnmfZ8iA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bydfk0cfm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:46:49 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a07fa318fdso61474605ad.0
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 00:46:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769590008; x=1770194808; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hY9hL2IizyBWMbIQRXnyE1ImG2q26W3C317pRVUUTqY=;
        b=JE52M7X9aTet/q97+N2RhR1wX343qILNkYvdURmJtelaQkxDg78PtQajwOMLBrJx0D
         fg0aVKCt6Tw5ONXq4XCBwepICK/CV9CN/EK0mkvHoot1/VttJIcgibpGTDvL0FCdby0W
         0L0MiGoUSbi+DamsP8B0Drm7HXb4Soud/DUi9WIzKISI++AfknZLnCVTb0XTzaBXds/Z
         OkDZYorDvvm9CMHqaR/viLxLYm/Q4Jz+37tT7I2QuCP3PBk5EF2rKxuljyaYPT5OqhlD
         l5vPfsCy+1rFVeQtQRXSPTNXwPsVGI6alPKVaPNE7J+p0kU60TIvIdZ2PBatN8xdGMZY
         Z4eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769590008; x=1770194808;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hY9hL2IizyBWMbIQRXnyE1ImG2q26W3C317pRVUUTqY=;
        b=EtHV++ga4QiSa7Z/s9L1KmB6kpd9pd3k7AZdedqZBeSSVq5TOcM5bVV+TGEJS2vJsE
         N/DrynZDjqJy9qPTF0cMpDTerDFmxioM7ZhgbZYy7hkfsb+JgJ0dWcDxiC5cfYmTUbPd
         GB3LlsM3ws6ie6Sj6oJkGe6nfQ3Gf73ku1vlnGnZlzEMfuehWBQ6rswuuwM3uTa7BFHm
         +TV3sRJ/B76yPpzTzDVpomdMvBd5ySF/GAJHUVtYM8y+wX29YMJHxyokVQ6PvqOdJQq3
         wzsdueMsDsL1xXBjxsfQz+DaRcImVpBv1Wj97Hul/vpVxrIOSzzoaYH+gSs3+AyR0oQd
         NRwQ==
X-Forwarded-Encrypted: i=1; AJvYcCV/EZ4xcRI9e/HAc1fGGmGAZaCMLpGtB9CuYuYQLWr9bDvM+kgnqIXvnwjVqhqpwHFVwnN5/UOfcfHI@vger.kernel.org
X-Gm-Message-State: AOJu0YynlLpbvGBer8U5g2HuUnb5k5IvLNxW59NPwevmdnYC4fPNPhkK
	vTu1T4/Nj7nsaBacLLHwuRp+Q5T71lxI0q3NRXGM+Iv/x+CIOf+LTVgf7rtS/JlX1kbb7t4fqY0
	qZNIq6CA4PSJR1BI3Pc6rJdatBFxoyyoSw+eWEy8T1HhXpTZpQFzg3Z7dJgy7ycXv
X-Gm-Gg: AZuq6aJYl6UseRkDIs0v6oPoBwnSNreF4FEzxPlsGPlq5UKr1FUu36JPfpa21axa11T
	06WigG8voi0/Dpncy2qBRxXPutpvyfu/6WNz4oa3GmZC6Qs8wjUPPAbPI2MVgmwgG//agy1hyLq
	Gs/L3IPIiX77uILAmz0ETLjQiaWf0Rgs7sQ9QZmWKkZDJaFh5MGK90YoUPiu4rwTgnPbStezvJX
	gNVCMayP42pkvNHlN2z8gch8R3QcYJ1ZJdL+yAIMPaY6/R2AFqO86eFra5rxDK2NZAsgjMwD5i0
	v8R0feBMXdEvMVrfqptyT3gmChX1UkJ0Jut9EEweCIOljLC/uFaDdg4u2w9a64nR1Cg7H4tlUNx
	Oltg0qpwPdYkuj7COr0hnmYZHF1PUIAsqgo0Vz17L+2TmsPA=
X-Received: by 2002:a17:902:ea01:b0:29a:5ce:b467 with SMTP id d9443c01a7336-2a870e0490bmr49886785ad.54.1769590007977;
        Wed, 28 Jan 2026 00:46:47 -0800 (PST)
X-Received: by 2002:a17:902:ea01:b0:29a:5ce:b467 with SMTP id d9443c01a7336-2a870e0490bmr49886505ad.54.1769590007455;
        Wed, 28 Jan 2026 00:46:47 -0800 (PST)
Received: from hu-arakshit-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b4c3b1esm16263075ad.63.2026.01.28.00.46.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 00:46:47 -0800 (PST)
From: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
Subject: [PATCH v4 0/4] Enable ICE clock scaling
Date: Wed, 28 Jan 2026 14:16:39 +0530
Message-Id: <20260128-enable-ufs-ice-clock-scaling-v4-0-260141e8fce6@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAO/MeWkC/4XNwU7DMAzG8VeZcl4m21lNsxPvgTgkrrtF6xpoW
 AWa+u5kQ4gLsIulvw+/72KKTkmL2a0uZtI5lZTHGtv1ysghjHu1qattCKhBJLA6hjioPffFJlE
 rQ5ajLRKGNO5tBHYSeqfce1OJl0n79H7jn55rH1J5y9PHbW3G6/cLBsD/4RltnRbfMDJE9vyYS
 9m8nsMg+XTa1GOu/kw/JtI9k6rJLPGBvG9hi3+Y7ttkQHJ3TFfNDrq2cRRi59tfzGVZPgG1riG
 7dwEAAA==
X-Change-ID: 20251120-enable-ufs-ice-clock-scaling-b063caf3e6f9
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        Neeraj Soni <neeraj.soni@oss.qualcomm.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org,
        Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDA3MCBTYWx0ZWRfX7WIdLX77PPav
 25sj7lZ3nNhvJ9kXaRynXxaPi+b/w53bTFhYnFcnrO1Tal4sqA02i1AixC2SFMR8Y4cbGRHEk9Z
 E2ojUwqS0e+PhK1WhD8jZ+ucIBY7qEUWjdRLZbbIlphQ2b4wPN5HcGOz2xMOO6JHYbt5ZUZVJRi
 8qDXXTmaXQuYkpi1slD4yFYQDkQl08bpmgc9Y5Ul6Wxd6L9aTXxOnijTcDpqhuP02QNeOXecExH
 2a34uwE+4iHAaHjjNRd34DKDxhvQ0uebSOrJes/EgjtcgOsN9dTlIb7lwhze0m6dPYMH+NVmBC1
 1/fmDZifFgYELR22m1x84at1CHE8b/ItFIEwm9lRVMDz3oe0HSa+1K15lpRZ7u7bOSc1QVEdn8v
 tZ4k5Kwq4VQYdvBoS9/qh46B2eEmWK3G1GzTNaBJBs51MFFiZi0ad3hEEKh6w+ac2kxIvWoQdmP
 tr0LJOVBHvJChy/2sOA==
X-Authority-Analysis: v=2.4 cv=XfWEDY55 c=1 sm=1 tr=0 ts=6979ccf9 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=Lsz1E_LYmYg3FmW8_BQA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: 8Dg7g3ekXc1gjPi17z0vFBmeRRmug2gP
X-Proofpoint-ORIG-GUID: 8Dg7g3ekXc1gjPi17z0vFBmeRRmug2gP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_01,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 impostorscore=0 phishscore=0 priorityscore=1501
 suspectscore=0 adultscore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601280070
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	TAGGED_FROM(0.00)[bounces-260245-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abhinaba.rakshit@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 247879E56D
X-Rspamd-Action: no action

Introduce support for dynamic clock scaling of the ICE (Inline Crypto Engine)
using the OPP framework. During ICE device probe, the driver now attempts to
parse an optional OPP table from the ICE-specific device tree node to
determine minimum and maximum supported frequencies for DVFS-aware operations.
API qcom_ice_scale_clk is exposed by ICE driver and is invoked by UFS host
controller driver in response to clock scaling requests, ensuring coordination
between ICE and host controller.

For MMC controllers that do not support clock scaling, the ICE clock frequency
is kept aligned with the MMC controller’s clock rate (TURBO) to ensure
consistent operation.

Dynamic clock scaling based on OPP tables enables better power-performance
trade-offs. By adjusting ICE clock frequencies according to workload and power
constraints, the system can achieve higher throughput when needed and
reduce power consumption during idle or low-load conditions.

The OPP table remains optional, absence of the table will not cause
probe failure. However, in the absence of an OPP table, ICE clocks will
remain at their default rates, which may limit performance under
high-load scenarios or prevent performance optimizations during idle periods.

Signed-off-by: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
---
Changes in v4:
- Enable multiple frequency scaling based OPP-entries as suggested in v3 patchset.
- Include bindings change: https://lore.kernel.org/all/20260123-add-operating-points-v2-property-for-qcom-ice-bindings-v1-1-2155f7aacc28@oss.qualcomm.com/.
- Link to v3: https://lore.kernel.org/r/20260123-enable-ufs-ice-clock-scaling-v3-0-d0d8532abd98@oss.qualcomm.com

Changes in v3:
- Avoid clock scaling in case of legacy bindings as suggested.
- Use of_device_is_compatible to distinguish between legacy and non-legacy bindings.
- Link to v2: https://lore.kernel.org/r/20251121-enable-ufs-ice-clock-scaling-v2-0-66cb72998041@oss.qualcomm.com

Changes in v2:
- Use OPP-table instead of freq-table-hz for clock scaling.
- Enable clock scaling for legacy targets as well, by fetching frequencies from storage opp-table.
- Introduce has_opp variable in qcom_ice structure to keep track, if ICE instance has dedicated OPP-table registered.
- Combined the changes for patch-series <20251001-set-ice-clock-to-turbo-v1-1-7b802cf61dda@oss.qualcomm.com> as suggested.
- Link to v1: https://lore.kernel.org/r/20251001-enable-ufs-ice-clock-scaling-v1-0-ec956160b696@oss.qualcomm.com

---
Abhinaba Rakshit (4):
      dt-bindings: crypto: ice: add operating-points-v2 property for QCOM ICE
      soc: qcom: ice: Add OPP-based clock scaling support for ICE
      ufs: host: Add ICE clock scaling during UFS clock changes
      soc: qcom: ice: Set ICE clk to TURBO on probe

 .../bindings/crypto/qcom,inline-crypto-engine.yaml |  29 ++++++
 drivers/soc/qcom/ice.c                             | 112 +++++++++++++++++++++
 drivers/ufs/host/ufs-qcom.c                        |  17 ++++
 include/soc/qcom/ice.h                             |   5 +
 4 files changed, 163 insertions(+)
---
base-commit: fe4d0dea039f2befb93f27569593ec209843b0f5
change-id: 20251120-enable-ufs-ice-clock-scaling-b063caf3e6f9

Best regards,
-- 
Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>


