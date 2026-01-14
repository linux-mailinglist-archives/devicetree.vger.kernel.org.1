Return-Path: <devicetree+bounces-255219-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D37D214B7
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 22:18:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 740153003FC2
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 21:18:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2B393563ED;
	Wed, 14 Jan 2026 21:18:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iOpn3RCK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HzWVe3xM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6B830ACFF
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 21:18:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768425484; cv=none; b=UpjL2B1gfxf3CbWpHnzDF/w9IWAmO0wZyzyx4uOL9kJ464SZUcSzoHhkyg3AknIlJRM8hxOwLh6ukR3JdvVzh4Li5/ONBbP3f4JvxyNixnKYvaoRCiTMqeJsNA3dAiVS2HLDcST7awUZBiGaixI0esaAqbbGHjpQJ+N7myPz9d4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768425484; c=relaxed/simple;
	bh=B96DTjA/Qkfjdv8J23q4DrvKTZtLIXFU6ouxOW8qoG8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=UDmGigwq1wpC7SBZZjI/F3E97sC09EeAYnVcupsxe0JWb+GDy/hlJAURD8S7BCB45auLn6JeiQMZh/zzx617ZT7xj2c8KQxSoHPPg/O65cXtcP2XR/slOb8RZZlznPCD1bZU0jRxFa2hejUedKRVGlk/157uNME4zRWHb3r83jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iOpn3RCK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HzWVe3xM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60EIDsrj3460914
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 21:18:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=gO19S1BttVvttNQrkJqOaoLa4T/6SpEQKjT
	PCRL92oU=; b=iOpn3RCKjp6r8+idZD1YxZuRZJg7DW2m4EC9U4tIc12h1HQQmLa
	AwoZx190JYij9TVqOMomaUHw5AVjTe0AjO6vv8YXD5jokQHuO/BM4wrxO5JqtKwp
	ly4P6Y0YfUl/Ngfr53xZncasBW5RauGeVXvqo9hYJKGNMNvYKQjdWI0sD3vTski/
	1SBZjVmEijGGYwqXkZQ59aEtlU6C2OdjuvFer1pzuhHpDxu6nxnV0gmPMzYPoQx1
	AXXSkUD+wkZuQ2p73Ywpem6LtwuaecOZcGFovvuhhti//hm63F44Q1TU3RJ6JBQ2
	NHtr2w+G+HBUZXKv/9KvSrRFkBFqSefaoug==
Received: from mail-dl1-f72.google.com (mail-dl1-f72.google.com [74.125.82.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bpg848gdm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 21:18:02 +0000 (GMT)
Received: by mail-dl1-f72.google.com with SMTP id a92af1059eb24-11b9786fb51so1241858c88.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 13:18:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768425482; x=1769030282; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gO19S1BttVvttNQrkJqOaoLa4T/6SpEQKjTPCRL92oU=;
        b=HzWVe3xMDc463PACwFn5uZBSs90QXxbYaUTGBez4+WmReO+ar/RORGGIAniyOBQi0x
         YW6jRdy14ATcgwuv3lg0/hWDv4b2WWTXP/npL8VmYAg5UHFZ5vBcnspvESatyHYu8iBf
         HQ3dVgyKyYGI1WWOizHp7u+sr3yF3Z/sj1HVzl4CXr+NmM04TN61EFAtSLlja97iHEYH
         81Bhu6tV0Pcwf+uS8ObfB46S/UhPohTLUfk6cVokj6C53GuBV0QCNCxV0j75OIxIBIaL
         tZbzUTeMgiZrG+csYvIXpeCpmGeixnasfi/zYy8P/qRe99w26ecVxUB0m+//8RUF8pjm
         f3Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768425482; x=1769030282;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gO19S1BttVvttNQrkJqOaoLa4T/6SpEQKjTPCRL92oU=;
        b=a9iys1fyyuB8i/p4tFpSXIeT2mmkxTtSkOUn2bqVODqN3t86sSWrPrc9AgDz41tcd/
         o7TL8ouwuYFK7d73NivmemRi8xAr8xR+dCG8NmAzRJZKy1iksxKoJIjswYgZrqp4LpSC
         LxmoWgaY6VQwynpjmfnxBrjVfCenxE0LEq+2R0wK4xeH3Jdkjdjn3hTor0zfD4gPKSjq
         4J9h5cRHcew/8u2VZAW+tficVBjWr02OVKS9RBY2NRb/nSzrTUlm1gSr14Y1dETfrt9s
         2ZhIL041b1yky/GCc+iN4kvHa70ggKEssnoBi95y7i5DPkdMywYwpgk2WvWUAoy9VShr
         rhsw==
X-Forwarded-Encrypted: i=1; AJvYcCWq2OVcX9n+10Z7qmfxEDVo77no9wrd8lEEZDJrnxCmJ/vIfBuXyZZWRHenENViof7upss2s1W/Bnmw@vger.kernel.org
X-Gm-Message-State: AOJu0YwsaA/2LtCS+tDsoZY9GDzJY5qTllowYCG8yJTML4qT2D61KqP6
	Z1DPuKpohixLQYza6E01GtWFPltacsohptoVqqTxndY51QSPlQgt90BtwTO1+eTfoBgpy6PADve
	/XY+mNHU9kDyUsYqWSbeDn2fHqm7TsEDQEA21iRRTn9T1rEiEEcknTssO4BRxbN49
X-Gm-Gg: AY/fxX76jDUQzWN3gDOjh3WtsLOG9Q2H+wztJo54ZAsASkJwjEmQ0hbApRhNOGsIhIs
	ty5zeLvjPzkfC8Q0wHjJUsits/P2IHNvoAZd9Ab/9sUMjuSflOiv13KLGtOQTgIn1l4E6mvy57X
	3ai2HbDHBKzcdntAg7gBhbtVaJrsMe2oozR/7UrpxcX1SkDCkHDnhaWV2oJ6aSZHRdqUGugdpoY
	gyluncjpIrgaY05x58fnp20FXF0yoWthb3E2HRKOqxp5ACDsToG7ATASUNE9mIjPhXUz2mNjwRt
	QGObbNljKiUnH001GU1ZFc/CvNtubaGx9pFUjhNL3i1e4ahfgXbmKVGJ7ajDqvVe8tEODO0qmLc
	NwXOgjf58PmGh457O68xff1RMR6IV3jd1CzBZPzByiB3uj/49OBMpmdQgTusxZkyyhUxxR3b0
X-Received: by 2002:a05:701b:2706:b0:119:e56b:9590 with SMTP id a92af1059eb24-12337704afbmr3993582c88.21.1768425481771;
        Wed, 14 Jan 2026 13:18:01 -0800 (PST)
X-Received: by 2002:a05:701b:2706:b0:119:e56b:9590 with SMTP id a92af1059eb24-12337704afbmr3993558c88.21.1768425481148;
        Wed, 14 Jan 2026 13:18:01 -0800 (PST)
Received: from hu-amelende-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-121f243421esm32167118c88.2.2026.01.14.13.17.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 13:18:00 -0800 (PST)
From: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org,
        heikki.krogerus@linux.intel.com, gregkh@linuxfoundation.org,
        abel.vesa@linaro.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
Subject: [PATCH v4 0/4] soc: qcom: pmic_glink: Add support for battery management running on SOCCP
Date: Wed, 14 Jan 2026 13:17:55 -0800
Message-Id: <20260114211759.2740309-1-anjelique.melendez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE0MDE3NCBTYWx0ZWRfX+ds70l4a8w1c
 laDkzZ8fK4a2kEou096yCDbyXR1rrTnbf/bwdv5jx7Q5VuuOVTZXaDUIz0Lz1G6SvfJW0+evY6z
 viTUK4BParI+iCs9qrOx8tALqIENRpwZs5QK0GQ3IC8i8aovCsOxHNcaMfVCEO7SmAXyA4FkKPn
 R6DL/mY4AxN/VrLsG696a+ssLQYDJBvXTQmw2ZYiQfVugoqc6wrfov8DDM3LT0duVNJoHsfqnX7
 iLA4cBvDuDvmR5dh9CHKjte20O1KbDFlXEuaQwen6TzY47t15y8BVyCl/rhyfNXJtWz9RSbRr9K
 vRDvIMbMEwuHmo29GqmkwLnY+BE5BV65jWA8GHlFrtju6Wv3ureMmsQVmb19kVyN8gRjh0ot+j0
 bsjPuv0dt63Gwd/CF9wHUjWBT8OS7RTKI95v2Y0GLTBtzK8qsKXAAK8f9XL6ev+J7kV9bg/soRp
 S6vGRqPa6wEKMLVZgbA==
X-Authority-Analysis: v=2.4 cv=IO8PywvG c=1 sm=1 tr=0 ts=6968080a cx=c_pps
 a=bS7HVuBVfinNPG3f6cIo3Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=qMsUIMY-mLJ0Ph_xJfoA:9
 a=vBUdepa8ALXHeOFLBtFW:22
X-Proofpoint-GUID: qaA-Mzo8m6XnJaSRnQLbZunhhRsk8vUN
X-Proofpoint-ORIG-GUID: qaA-Mzo8m6XnJaSRnQLbZunhhRsk8vUN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-14_06,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0
 priorityscore=1501 impostorscore=0 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601140174

System On Chip Control Processor (SOCCP) is a subsystem that can have
battery management firmware running on it to support Type-C/PD and
battery charging. Add support for devices, such as Kaanpali and Glymur, 
which are running battery management on SOCCP.

While at it, also update the compatible string for X1E80100 so that it no
longer has fallback on SM8550. 

Changes since v3:
  - Added "dt-bindings: soc: qcom: qcom,pmic-glink: Update X1E80100 compatible string"
    and "usb: typec: ucsi: ucsi_glink: Add support for X1E80100" to series 
  - Corrected bindings dependencies
  - Renamed pmic_glink_data structs
  - Link: https://lore.kernel.org/all/20251217055655.638594-1-anjelique.melendez@oss.qualcomm.com/
Changes since v2:
  - Updated bindings dependencies
  - Removed qcom,glymur-pmic-glink compatible string from pmic_glink driver list
  - Link: https://lore.kernel.org/all/20251027212250.3847537-1-anjelique.melendez@oss.qualcomm.com/
Changes since V1:
  - Corrected bindings dependencies 
  - Renamed pmic_glink_data variables
  - Dropped "soc: qcom: pmic_glink: Add support for SOCCP remoteproc channels"
    since it was applied from its original series: https://lore.kernel.org/all/176157405464.8818.5887965202916918883.b4-ty@kernel.org/
  - Link: https://lore.kernel.org/all/20251017003033.268567-1-anjelique.melendez@oss.qualcomm.com/

Anjelique Melendez (4):
  dt-bindings: soc: qcom: qcom,pmic-glink: Update X1E80100 compatible
    string
  dt-bindings: soc: qcom: qcom,pmic-glink: Add Kaanapali and Glymur
    compatibles
  usb: typec: ucsi: ucsi_glink: Add support for X1E80100 compatible
    string
  soc: qcom: pmic_glink: Add charger PDR service path and service name
    to client data

 .../bindings/soc/qcom/qcom,pmic-glink.yaml    |  7 ++
 drivers/soc/qcom/pmic_glink.c                 | 66 ++++++++++++-------
 drivers/usb/typec/ucsi/ucsi_glink.c           |  1 +
 3 files changed, 50 insertions(+), 24 deletions(-)

-- 
2.34.1


