Return-Path: <devicetree+bounces-245625-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DB614CB35DA
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 16:51:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DE625300B68A
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 15:50:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05DA825F98B;
	Wed, 10 Dec 2025 15:50:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TRFis1JM";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZQv3Mkdd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52AE7248F69
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 15:50:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765381848; cv=none; b=B27lmJoH5SN6bq93JQI13NuWM5EAHuJQ/gch82cCa6Bas1n+tl6PxYidLxY8MUBc/g8haOJiDOPYRJMeK+UV7KCclaIJI49j1x5snx53WNfmR11yUtC/yCf7TNSuieCb4JCfGSx/ifEXi6BM9bJLGkbzKhZMeIYGjL+7SFiUCds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765381848; c=relaxed/simple;
	bh=CJC+DROpqAY4QNQLhqjy50fvpKfrxA/OYyGOujEXapE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=XswQ34N+D0N60RF+xDOqhgJGWO1CzQzg4VAjd5qwU5NIYNRRTtJohwMWDJ2BwENz2qoW5jDcKskt/3rI6QHz2eL9+1kzFZ6f7HlhHbieG7nExsAMwke8YFBHfRltdkcTlQ7SxMduWk7ryK0Hk+4Uo+SptrW+ngtC7fK93yTms5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TRFis1JM; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZQv3Mkdd; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BAB6IG22419772
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 15:50:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=NulxUS44q4FBpIRfW4Izyq
	Bq6K6Z/xTMYm+Fsi6EhJ0=; b=TRFis1JMuMahG2Hl5jQPYLG55r+f8IJlvE4fL1
	tqu+xd557fAczCjPJ7cx3nVeSREsds44EWlYHRT43aPxAduRq5O6bRGWo0ulitDp
	ga5PZ385yBcklLbBDdzbP7L6j9+2LVx6L1X+fkBKTfYdddvjRrB/N+TWWxjoswg7
	qHxn6p6sVG9ejGfiOiOsJQwBveW1lCPgPs7Tgs+sssu59LBpw5256HxmerAeLoTr
	ilRqp5pxUzzbo/k98blqNBAW3IpuTQzM5Ye5rV3IgWkyUj5zwoUPdGvp/kHBUiha
	LUHfEg592gHYY/JB3ctMirC0pI3M5kruCvsk0gHtEqHLZSxg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ay7pp0v0a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 15:50:46 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-297d50cd8c4so361145ad.0
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 07:50:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765381846; x=1765986646; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NulxUS44q4FBpIRfW4IzyqBq6K6Z/xTMYm+Fsi6EhJ0=;
        b=ZQv3Mkdd7OVeVco/q2GjpZ3Q2Z8nm6guM1ri7YAVoqYp+cAr9viRKS/U4VHWQXEnyC
         Ox0XYU219oZWQmZof48/6jIqEVSjlXVtYhB3iPxVbeZijcgD78WoabFOa1oBEoDoThFp
         DcX3hRXcs4PUnV8w+RDJF7aJHNAzDBpXUqrDstaDmybWG5vi3hFu9v+t0aPRc3VkY8Hf
         b2JcbJ2kgZPlKEoenElTs7ZJcm1Gn9QJBtQAErwkFZRu50GM4Ifv8m43nh4bTNMK71Py
         OwjGZOgRze7YjHraqdpm8M1guu/KmxCxkHuxLk+FEQ9vbShlSSoThKLO4L8Lku7u3hRC
         epxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765381846; x=1765986646;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NulxUS44q4FBpIRfW4IzyqBq6K6Z/xTMYm+Fsi6EhJ0=;
        b=J5/Hka+wk+D6DqeAvjhiFQMM7tsovvNSs7hv6lKvBd1CO5RGtDPa1DpnhXTl36JI5Q
         TmuOGsBbtc3fisTzN/IX2Duc5J3SPKiwbX3g5RIFygv3RHkaoquopeVys4/odBwSCQBo
         rIPcD/lLjs5NkgvvW6J8FlIOk57blgPSNG63gMX9zv95NocFqDFboeNVyRu4xybApQl8
         gi6rlv34Y5G6N+UvIih7H9gHiiK1EZODtlCMvBWaZK3swMTFrWsb2vMIcwXz+M+VH+8j
         1zKIYtFIKr5lfO37SppeqpvWeM8JfsNbu5YXzUk7gXxIcjTa9+VBlqrAR4kGqX4plA5c
         qwtA==
X-Forwarded-Encrypted: i=1; AJvYcCV0YkrSAg74tjinL6Csq/K77faA0avMmTa/fa1LginO405aVSlooMQ2z6EZhwBZvB7T9orQOZzLVoyy@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7kVKFxAPfZg4szfGxbBAMs4d8bSIAnc9q/tt2yLB5P/SAxVQf
	oXPXccbtvJRdTL8MYmc2X3/R9UmbiEu1DqdztLBlcLS7ByBCFLF6HXxWfCxiEExrAC3FONztNyD
	uJI5wnutIXjZg1BbBNCs4eldHBIrupxRZrKtbgXtMjjKCuyoyRDcAMdVkZOPpsDq3
X-Gm-Gg: AY/fxX69oG2+YtzVXoQL6n7wcu7kgfLChMquwKUwnp7RuZzqbfI8WUoz0Z6ipxOdhJO
	MEqsaNz7wxRVUZfRMm2hcHIeb3CKoE+8VjNOXxnSMEu0eiciW/j7DhRNiJrXKypNsRogA1KBd/z
	jmtfbqQ0vHztmRs2A9wl+o0S5QyF4NYRvsNusJhsmYzW8ndH/oSstoW6217QKbfX9HEXf2aAGGC
	6bXXBQaXC7cYXPMoGexqJa5+XkWzrDjnG9Dd3tIW/IlK20rKzApuSkxJ1WXzaCcZhUhY8ir/ZeX
	r8E17VrAd63NpkyEdhL/UOGoHCQS5h46O5NtUzXx7DsRn4CUz8Qft9JR4UKTyctjO1YEj4PlMgT
	gcTr+E7wyBLvMow2Dn0Ym/NvGqVb4+kzfW9YgXpjZ
X-Received: by 2002:a17:903:2392:b0:27e:ed58:25e5 with SMTP id d9443c01a7336-29ec2336e12mr25888285ad.24.1765381845692;
        Wed, 10 Dec 2025 07:50:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG3gH+i/zHIlcdt8+wxcqRZ+TZJ5GPY3sj88E5SWloC3HC6s6uzsDjv2kRl44b/Cx/Ft4XdOw==
X-Received: by 2002:a17:903:2392:b0:27e:ed58:25e5 with SMTP id d9443c01a7336-29ec2336e12mr25887885ad.24.1765381845124;
        Wed, 10 Dec 2025 07:50:45 -0800 (PST)
Received: from hu-rdwivedi-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29ed93e470fsm7780175ad.41.2025.12.10.07.50.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Dec 2025 07:50:44 -0800 (PST)
From: Ram Kumar Dwivedi <ram.dwivedi@oss.qualcomm.com>
To: mani@kernel.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
        bvanassche@acm.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, James.Bottomley@HansenPartnership.com,
        martin.petersen@oracle.com, ram.dwivedi@oss.qualcomm.com,
        anjana.hari@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH V2 0/3] ufs: ufs-qcom: Add support firmware managed platforms
Date: Wed, 10 Dec 2025 21:20:30 +0530
Message-Id: <20251210155033.229051-1-ram.dwivedi@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: MY7xJMfUeBeux982upONDDbctZNDXBi4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEwMDEyOSBTYWx0ZWRfX1d5Oo99sUG3D
 7oz6r9HV0kRHKYCc6GRIZIPj/s+6kWeMLBK62hRRAOi+dnSXvc/Mci+wCBokdFMojlrFfHUQdpm
 kz4uFzq9SzftVQm9wYP2mmRTwPCMQQihbDsLglNEBLvnJYDrDLM7CUuPxLAlRJWAqD4BCCO9Qyq
 NayMzGO7MCqfPsyhd6qZHpR5/qM9oCC7WxwD0ZZv1P1vpPQkLSSB0nmASTsuwkiW+DEs3VOuaPR
 U2U9mHjq2EWPF4dhlCpvSlQpcBqy+jvAvojuVsJIDltav0S6qYS/Xt048Ok5vHm/zDVeG7vIa3Y
 9p6c91FAUgZgX+GcyCRABSoeDuQ4oPCR5GMQV7O33xqGiDDFPzEnlPoP9DFaE1hpeKzn3Ql8jyl
 eKpV8lbBKsCcET4dRphvRp8ieA338w==
X-Proofpoint-ORIG-GUID: MY7xJMfUeBeux982upONDDbctZNDXBi4
X-Authority-Analysis: v=2.4 cv=WaMBqkhX c=1 sm=1 tr=0 ts=693996d6 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=fUx3pPj6L392ZWVjOsMA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-10_01,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 impostorscore=0 spamscore=0
 priorityscore=1501 phishscore=0 bulkscore=0 adultscore=0 suspectscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512100129

On Qualcomm automotive SoC SA8255P, platform resource like clocks,
interconnect, resets, regulators and PHY are configured remotely by
firmware.

Logical power domain is used to abstract these resources in firmware
and SCMI power protocol is used to request resource operations by using
runtime PM framework APIs such as pm_runtime_get/put_sync to invoke
power_on/_off calls from kernel respectively.

Changes from V1
1. Updated "dma-coherent" property type from boolean to just true.
2. Switched from QUIC mail ID to OSS mail ID.
3. Added Acknowledged by tag from Dmitry for patch 1/3 
4. Added Reviewed-by tag from Manivannan for patch 1/3

Ram Kumar Dwivedi (3):
  MAINTAINERS: broaden UFS Qualcomm binding file pattern
  dt-bindings: ufs: Document bindings for SA8255P UFS Host Controller
  ufs: ufs-qcom: Add support for firmware-managed resource abstraction

 .../bindings/ufs/qcom,sa8255p-ufshc.yaml      |  62 +++++++
 MAINTAINERS                                   |   2 +-
 drivers/ufs/host/ufs-qcom.c                   | 161 +++++++++++++++++-
 drivers/ufs/host/ufs-qcom.h                   |   1 +
 4 files changed, 224 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/ufs/qcom,sa8255p-ufshc.yaml

-- 
2.34.1


