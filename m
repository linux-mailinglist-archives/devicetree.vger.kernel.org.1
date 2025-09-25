Return-Path: <devicetree+bounces-221129-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 39E6EB9D612
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 06:26:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DC9502E7B54
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 04:26:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 120822E7179;
	Thu, 25 Sep 2025 04:26:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Oh7kkAtM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519F8280037
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 04:26:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758774378; cv=none; b=A2XlAjwAAa8UFD60007ltyEQk0ZAB/mPt1ORSdMDzugEMNxOpDEJZdYBsxSZrCOU9jAY8MosFLs0xO1CYDJKyuwzclTA9/LR6PmVOhqkA1MKi2Ls1A8lVZxn8uUUwbVACIrMTyOzp02BKN4tqR8N5GC7i/7/AfCLW0eL/QrbtF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758774378; c=relaxed/simple;
	bh=KwDml+VKamZoZ/8NLyiv7Z5OQFPQYZ/pI7BVR0nIL1A=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=IXTWYUwzLEgqNBQBr7Td8nMJGfZ8pZjmX7lPwaiKJo0cJyLWx+vvyzhKn3PZcy/PsmAkpqu6BNRvgoyBqGLT/1hgszjLzPkWBMGc7cMtfNEhT/nlmxWg4EnEXsolHKQ2L3+rZOJVjTI52dmVn1lSxXk/b30eulcY1GFraWCKHsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Oh7kkAtM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P1Gpum018069
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 04:26:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=QzN0PbQqJiRihO18yohAMqtH7hCDuoHFkrT
	iBWkA/eM=; b=Oh7kkAtMuA2p0mtB2ggp8lAeo0Ukgqe8k2OkRT2rgazr1YERwHS
	rRtIIpbDDaxRFMjYBf703u37Mpu9FxFbKy1FjFHjhg2frNlrR4ByIIIV8BDxQe2w
	kZV87qe9YhLs63w3Im4JJPAfSy311E0BD6E9J2LAvR99NhXIKXdXqPxI1E037PJs
	56hZSgmlM754c7bbbhZN/MY5tCeIZhuru3LEYnkUcEy8c4FrToTIz5Q3Lijxx3RF
	21HSDb+4FO/bw0z57/75Rl0veZdHyPmACbeEJhaSW0BAk02W01HYq4GLxBMJRwQM
	JNPhx/hTpKshKurEdt6dZ34wnKC9BhPVPpA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3kkapu2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 04:26:15 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-3324538ceb0so892404a91.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 21:26:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758774374; x=1759379174;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QzN0PbQqJiRihO18yohAMqtH7hCDuoHFkrTiBWkA/eM=;
        b=tK1qboEe4b3ZK6XxahPi+Cl46kPXpw3tCrbExM969WO5pPM3mMEr8mFRACJ5P+TpME
         ixUG7/An5ss3RUTgEgBwFfy/upWUsm6I8yUIFSXB00SkXUY9G2DDKNgQJuvM3BXz//GS
         iL1zADqZgIKOYKGoo0Uyu2j2O83ZxePfX4QfUBUpIFfnQPyBOOj35st3SJDXcS3rlzWD
         9o7uNXduPyjGVOb9eSZd6zy1v/EBdVWEB9OKvcUJmXr+S5uB71W54/Fnp4d14Vb5dzxb
         hnAVayBvOqxObv/9ImkLG4+b5jVb6hcHEpgeAXazMFMawJ1hWg/wcTUI8797EcxA21iZ
         Kf9A==
X-Forwarded-Encrypted: i=1; AJvYcCVoTTGV4NgOv3Saqi/Jzoum8bwl+aeIa4vRq1gTZqSxuWT13r9Ude0vyLG8Ia7IVbb52gTXAZIQkCs/@vger.kernel.org
X-Gm-Message-State: AOJu0YyXqzDLjlh8nvzt1SEdhGpet1dARcySVk3OqkbzIco7NRtWfJky
	cp49oEJ0K+tTRHPc0jhm/NYtKCE6K+73Fsg5zS3iwqsct4TgMcsQM1Pi7zb4SCGCmXFMO0sojSL
	Hs8hyta1LXGRhHTEogKjIxwvvcCDIlF0MCTXVhxyUjM9CzKCTByLXtiEdyRXH6F0nCH0rhB6V
X-Gm-Gg: ASbGncvT4DdI4N6+mNBZtlo85m/DfZL3YZrx6OfdRJyssU9gA/IaRojhT4kPl7rsPvK
	zyGsUMQbFmbRqCusTziUQHKBjGNDX+KUEPGq+YVillt26stkcyBS8NEE51aQszPapNwKXxhCHbr
	DWjYDjpMp2xJHAvzWoo3S2VhaCvVRJ1TKcGC0XupfP9H0LzPSnbAo3yAa9TAIkmq/bMixHLumfb
	Vh+OPhOWIbh26gUKYVt+BOQx78yrhMswDb4owWmHT38q1WI2WCMEuMAjaQ5VB2w2PW4mU1/Dujl
	7IvbiHmuHfzQn2uKJDlHred3Mi/AnfQ5Py70GJ+XkC+c/xwWpd4U6wtqFEVVrCi23K396sQMFsn
	Y
X-Received: by 2002:a17:90b:4a92:b0:32e:e18a:368c with SMTP id 98e67ed59e1d1-3342a257491mr2000812a91.7.1758774373698;
        Wed, 24 Sep 2025 21:26:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHUZUnSW5Khp9aZB4808Uo4zwgcJwfbzYwCHapgsYczaALl4fGiBeUPgfY1PG8zJwA2k8HfPQ==
X-Received: by 2002:a17:90b:4a92:b0:32e:e18a:368c with SMTP id 98e67ed59e1d1-3342a257491mr2000784a91.7.1758774373311;
        Wed, 24 Sep 2025 21:26:13 -0700 (PDT)
Received: from hu-vdadhani-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33474b1f455sm738211a91.24.2025.09.24.21.26.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 21:26:12 -0700 (PDT)
From: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: mukesh.savaliya@oss.qualcomm.com, anup.kulkarni@oss.qualcomm.com,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Subject: [PATCH v1] arm64: dts: qcom: monaco-evk: Add firmware-name to QUPv3 nodes
Date: Thu, 25 Sep 2025 09:56:05 +0530
Message-Id: <20250925042605.1388951-1-viken.dadhaniya@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: YuV8VG5Z2tWns0HbuGdAgSaqEjxehbRt
X-Proofpoint-ORIG-GUID: YuV8VG5Z2tWns0HbuGdAgSaqEjxehbRt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA4OSBTYWx0ZWRfXz2Ay/l92Idjl
 avCRGAjOVeSAi7yK2svaeYFZ9fyaGqxPJVQKtJfhDi3fi+ZYaus5jDLxlbE4QZihK+PN5/UCRjk
 TO144JrNLFyuEWgtTlAaZ+0J+pGnM/Q3uZN/ayx1yFIFeLCi3+p8hDUwYFVjywnRY0O95GQY0nC
 SL9pzRsTQ00fgmVA8yDD2mzpeVXrZpVJcD7BR79PJBM/nok5w2G47U1sUENZ2468gqpBYBa2CBz
 4GXkbx62wgW5URcsbxMF+lyUUhL1rrpc8OqkukcOTNAcQ5KYCXJzSLY4TQAeyaQhnbEmVN7+kf4
 zgRBFzKZKX3wF/0d3aoWJDrTMQF4vGwek+GiwGPtCaIsRiVmMHflRDysYkQQd8DkLvTs9HkmFja
 iVp4cK8l
X-Authority-Analysis: v=2.4 cv=BabY0qt2 c=1 sm=1 tr=0 ts=68d4c467 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=8rlZebuS5uYMG-XfLoEA:9
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 phishscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 malwarescore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220089

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
 arch/arm64/boot/dts/qcom/monaco-evk.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/monaco-evk.dts b/arch/arm64/boot/dts/qcom/monaco-evk.dts
index e72cf6725a52..d566737ee012 100644
--- a/arch/arm64/boot/dts/qcom/monaco-evk.dts
+++ b/arch/arm64/boot/dts/qcom/monaco-evk.dts
@@ -401,10 +401,12 @@ &iris {
 };
 
 &qupv3_id_0 {
+	firmware-name = "qcom/qcs8300/qupv3fw.elf";
 	status = "okay";
 };
 
 &qupv3_id_1 {
+	firmware-name = "qcom/qcs8300/qupv3fw.elf";
 	status = "okay";
 };
 
-- 
2.34.1


