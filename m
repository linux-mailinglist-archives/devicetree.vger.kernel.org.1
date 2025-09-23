Return-Path: <devicetree+bounces-220493-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 604BDB96C46
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 18:11:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 933E119C5E80
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 16:11:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6763A265CDD;
	Tue, 23 Sep 2025 16:11:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ItMpgK5E"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE522609DC
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 16:11:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758643879; cv=none; b=ock+eStG0l7Awb1ynRucRTPDPdGDZSJNS59NHuAMXDySMv/R6UiOHCyHT3FWZYR9GnM1bPJFXNM1iMv1al1gxDEclyiKf/4fxrTlqKUyvMncEuoy+7rxo0bg3oDZh7eAsF+hqw2pWSl73Nlw2x15QaXp5amIIGi5VdxMxPEBogk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758643879; c=relaxed/simple;
	bh=S4DCabmUgx7wjr90gBdV2xwMP4UhxJhIHvHJUN0oTwA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=kA+NhFksalSD9FIuOPwiwRVTChft3H/2sDD2FOVp38E76q0qCu4XdRFFToelFuA1h6nrNe+CZk1xPxmETP3VJQ/Ud9pc4XtlxVfD3kwP2l2F2r7CXQm8moQ6J1YWtUywcV/gvT76DIBmW6cGuqj96Zr+Oi9OOsVZKgswknCZBow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ItMpgK5E; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58NFCJvb026283
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 16:11:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=gXXsKXWMrsrDa77n53dShpXPwdnJeODNX87
	cwfB/X0E=; b=ItMpgK5ElJA1rzXHuvX92lzLJX1qYK58moE+OG+55xJtEIdNsXh
	79TLrAVXpNC4aEsW0AudBc8nJ53ORbf5U6gOqKRLr0Xn7xSptnCx5dsOpsw+m+UX
	SZ7coVyOHeo4yP3ku2TpwRX8zB6E3ABkLPNEi9thJ0gbEgT5+ttODNBRV/NV2E8l
	BUoddyml667eDVr8cAC98GHSk3h/hJTCHwpjsp4sJKR5SzZXgC9j0jOAWbBDJK+c
	q9BUjHR8KMNm0SgKJV9UBC0doC+5PH4u6dhidxKWCGXwhvxcYFL/6NFP1mwbjkmL
	2OrrtmFbQmG+6W+efq4p46U7Tvd96ZnOr4A==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hyeshsx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 16:11:16 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2681623f927so55582925ad.0
        for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 09:11:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758643875; x=1759248675;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gXXsKXWMrsrDa77n53dShpXPwdnJeODNX87cwfB/X0E=;
        b=I2P50/U6/vatPSGVC/67UVVkxKopbgtJKsiGde1rH5tzhzxFdeFkl1tqU8g86RlfsW
         K7Z+uPszYSnRwt5xnUVjbJC5r5Gr0V0UKOKRmFNRSwi6U9GPS8dQ8fCuTnOCOpoklnhN
         f1N/04WQTSomr3iM30SK2QB4+kxlxj3yRiJSl4zZR0fFo55uqB4LRVwDwUIdmeeehoCI
         w+5oOFW2IZAX55Yd7QCsdQ8A+7O3PEyE1in2WguDrloC1uD3aDfwhevTujnPcfNuRe1H
         zr0MTeHEQe8rc9kbA+uLJ5yDC4Gp6/huWugmQWEEahoOeTcMB/rcBXDhCfhayuP5TZ5U
         3uDA==
X-Forwarded-Encrypted: i=1; AJvYcCVNiA8aMq4SaqFax2WVqjMf4ndrKHsWfiqsjJY8qoe/V/ABbfjyXxnbGsHySTv92StGa88cevbJnR6c@vger.kernel.org
X-Gm-Message-State: AOJu0YzWywYcKoD2wJEVhE7joz4lUnHx6yy1etr74i4MKvx33rYUyNyg
	hYbp7bN3jjDrA+s+Vo5lnut0cLW1D80QMaagugmx8xd4MU+oZbBgaqart3d4v+UgwpmGbv4pAqZ
	9yBsc7bB7ZFwIG5ECiP9CXfcPclpjh1MLHPofn7W25uZoR049kJln2aiiY5pL3Kb/vBUbG37v
X-Gm-Gg: ASbGncu8I8Vzs/RGNfQH3lKzLkF+yRhlbONBTvogsRv5iSKYZgI1gjWJWAdti8pb8VZ
	LBS/fRRq1dZJyJNolJ7BO5hP0S8EFyDbZgCu5IKwLJ1qY2vJKJ5fjPifPnpHj0EjS+Lzb1R4iU4
	jAzrRiUGSYEI8BAdPS08MUYFa0Pg6OlJvpvfcFXPpu0hrBk1HOfRZQ4zVWzqPCj7/jy3KPlSKZE
	8yKGMfr2CrS8X5MLoC04fe+lvEGCoMJaTY01FBVAMFfbX1QCUEI+rW+j78qOjT+ErF38jGWnMqF
	mdJSUvgSqOZkFh+SBWQ9FoO63DV3yCktzmwd8+h8ATD59teVfrXXliHbcoo1ChmMd3DLohflULi
	Y
X-Received: by 2002:a17:902:ea05:b0:24c:cca1:7cfc with SMTP id d9443c01a7336-27ccaae76b4mr38001845ad.59.1758643874813;
        Tue, 23 Sep 2025 09:11:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEcgDc1k1R7cpq+knm9wZ1c7VQL4r/SXF4203S/1vo1F+pemSrTnIlVN5YxWckIRKZQ3VmD4Q==
X-Received: by 2002:a17:902:ea05:b0:24c:cca1:7cfc with SMTP id d9443c01a7336-27ccaae76b4mr38000965ad.59.1758643873541;
        Tue, 23 Sep 2025 09:11:13 -0700 (PDT)
Received: from hu-vdadhani-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2698033d2a7sm162680525ad.132.2025.09.23.09.11.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Sep 2025 09:11:13 -0700 (PDT)
From: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: mukesh.savaliya@oss.qualcomm.com, anup.kulkarni@oss.qualcomm.com,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Subject: [PATCH v2] arm64: dts: qcom: qcs6490-rb3gen2: Add firmware-name to QUPv3 nodes
Date: Tue, 23 Sep 2025 21:41:07 +0530
Message-Id: <20250923161107.3541698-1-viken.dadhaniya@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: hUJC3Oy26K4piKIx-wCXS2T7yxk6URi1
X-Authority-Analysis: v=2.4 cv=YMOfyQGx c=1 sm=1 tr=0 ts=68d2c6a4 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=8rlZebuS5uYMG-XfLoEA:9
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwNCBTYWx0ZWRfX9YMLlWexVIUw
 y3wd9zbeECog7h+D18698CRr0ZiY9H1jzx1SlHJAGusOOdZsBqnBtgJVlWfujMkQ05bT/YnsENr
 kFUddBAA/C04He09GTzz8FPv4Iavh5GoRRvVFH4zSE/ipOhjAlCPVHSKjwacM2griwGYVfTQviY
 RL9kqoAJVW8vzL6dtEiX58UR2URAMeK5ri5ga4x8vjzfXvU9OwS+mPidkrIHbqs/0KU3cbvo3mZ
 yZM9dN9wngPR4sYL1Y2UrgZvBuICEpPoSxCSXy7sIYngFgXXsyqFDLIfYtEt1lfpuivUN/2Kf4t
 8CoJZZ9nNg4Se+lCqFQsnO/uy6OtZVT4SrJwbUgyWz/fT4E8T3G2HfwANHBjm08w362ML9fwwOX
 m2J4Cxzg
X-Proofpoint-ORIG-GUID: hUJC3Oy26K4piKIx-wCXS2T7yxk6URi1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-23_04,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 adultscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 suspectscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200004

Traditionally, firmware loading for Serial Engines (SE) in the QUP hardware
of Qualcomm SoCs has been managed by TrustZone (TZ). While this approach
ensures secure SE assignment and access control, it limits flexibility for
developers who need to enable various protocols on different SEs.

Add the firmware-name property to QUPv3 nodes in the device tree to enable
firmware loading from the Linux environment. Handle SE assignments and
access control permissions directly within Linux, removing the dependency
on TrustZone.

Signed-off-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
---
v1 -> v2:

- Updated the commit log.

v1 Link: https://lore.kernel.org/all/20250923143431.3490452-1-viken.dadhaniya@oss.qualcomm.com/
---
 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
index 18cea8812001..4e361580ddf1 100644
--- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
+++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
@@ -1009,10 +1009,12 @@ &qup_uart7_tx {
 };
 
 &qupv3_id_0 {
+	firmware-name = "qcom/qcs6490/qupv3fw.elf";
 	status = "okay";
 };
 
 &qupv3_id_1 {
+	firmware-name = "qcom/qcs6490/qupv3fw.elf";
 	status = "okay";
 };
 
-- 
2.34.1


