Return-Path: <devicetree+bounces-179394-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E82AC0188
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 02:50:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 084E61BA0283
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 00:50:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D45A23010C;
	Thu, 22 May 2025 00:50:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XbInCwiL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A6D79443
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 00:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747875024; cv=none; b=SWa1ozdc6oE62h0GrZyP+ltFbSGt/IzgLCun0j91nnB2jTaAB4vikc3pMlnfrI+D5u4QM1qlIwIYq8XuUjeR4G9BSZUYInbgEPKLcg7C1/KAALVrCFIbFVfQmNpnBtQpppo3bgxIFQCvQ9AXq+rrz6pQsIWfIpcBfWUA2kxCI8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747875024; c=relaxed/simple;
	bh=k3JhTZ4oyNVLHV3cW10MaQ8mQWndnZLQ9kcF1MbS1Ek=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Vqlu+R+0QAFVAVCU2DjbDsAky2DMoT/wVItdvH2KJBUgoOJ/5Ak8zOsm5rhzz5MK4wedOm9JDTXh6rL9FOpRN3vZMp+WmaJRIwQRgKam/4UZT9DRnpKy462wxbXr5mjxjHSBO4lPupNCGUEAxrax2nU2x09mKOdsSXqp8of8anw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XbInCwiL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54LHsKSV031715
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 00:50:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=kvRFDBllkI5WXFVFf+HSLljmJBeNY0/grsh
	Lfzg/HAk=; b=XbInCwiLaw5FbYuTgsfUO55FRgp7zLfXoNFGVnUPqMcgQBV+9RZ
	TIwb3zf2fBGt+GWQfxVVLOOu+NlMwQIAVFs3AV/w/3QKXnUS3Li6WGOivDex2PkO
	c1diajuWERm7EuFwxNbC18xzisWYBc98PhfTrOvUF672qijXYikL2EwI4s9B0HCP
	f8xgimnBDdSDNVzHlusV4ujGHIY3j0Vi2+9dVgsgGnANBeMs4jbK2WPlIYya357M
	MV5VHa+wg3jxJVOyBsnWGiOJDSypwSjh2mXBLmwvieTz/DFgNdI5oIAKw+hP1ASs
	WMBPiDno93xuSGStb6tbBrn785HPwx25CwQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46s8c234na-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 00:50:22 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-231e3cfc144so51797205ad.2
        for <devicetree@vger.kernel.org>; Wed, 21 May 2025 17:50:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747875022; x=1748479822;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kvRFDBllkI5WXFVFf+HSLljmJBeNY0/grshLfzg/HAk=;
        b=ERTCgiSgGO8vw2cnCyg9P5k3YPfbZVrOaWzZwA/lsoQA6gWzGZLtImBNzr7CX94ZQ8
         mMJJsZ+FDOJwGjpKqduuEu06EiWo8Evq1rydsrwmQ1pWlp/4BNNcKBjWVKUYBlWjsMLB
         /3MDkG3X9MO/kFgoSt8PouknkK9RmbvIrumkDn1MKh2Tp2V1yaZ5ZcITDfUbtLPZWoIj
         GXFYh/Ktt8DRZX5+pLzz0rPHMXY6X0c7ZVnT/zhobW6lLX9QCpOS7sSVsCi1Q5J2vcFf
         xsNp563/px2hvFxIN772LHBDOC67IASzeypX8j+IejXXD/wFUy7CYqZp4RsOh+J4nwT7
         pcRg==
X-Forwarded-Encrypted: i=1; AJvYcCXTZ/VxJwzInj4vNf1lmQX3qMe97AxBoHZ9QUJc+Zx7SLSLi5edw0gfRwYygYy+6jTr7ExJicw2/d9N@vger.kernel.org
X-Gm-Message-State: AOJu0YwFGneamr4H0MApBE0Bezq37PMUnv0Rjwj5uohEXq5aTinu2j66
	+MddX7gv+DP+6fBxKvQLXXbiA+QCmjwJ9lnMuAUx44CHhhQPLyratH4uxVzFiQRWBZNNEhD5jb5
	QBNqwoHKHHSQFe9SHg8G7Ybm+evKUppLizQhpwff1uXdI7+MDdX2VsPH4BU8vc4kM
X-Gm-Gg: ASbGncuLKCXisAw0MpbXp2smHlssvstV9H+7/te8Kg/Dr6biu7KTatxUgWAS9Blc3Bb
	lnAwWK4FFwkEmFmtrabOIyOkGxCLefY23+Qdwt+IOykvl83uVtygzt/ZYExXJtaXfMdw6SeMnAJ
	z7iM9ofqA0kTc+e7J8/hApF3pWsEA1WXgHblGqdlhtHP4hg3zBfsG6SAJkr++stKRFenUuN4+iw
	+spvD1K6048jKCwZ/4UJj3YdQWSNUlKWdsLQKwrgRBbchKRl/oZGqgiIShjLpCq1Tx584DruN8X
	tVf+9BMFq7x27ERK3tsz+r1KnCkVqd+O2TWzfKTUNQsdBi2XmTFiCeA97K6r1Il2+QaR
X-Received: by 2002:a17:903:18d:b0:220:c4e8:3b9d with SMTP id d9443c01a7336-231d4596b26mr286881445ad.37.1747875021538;
        Wed, 21 May 2025 17:50:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFD+durvrDcArPX+SKuH0fS4pfVmA3tYTRltQovIt+W4dSZ7RwU718rsJer/fx40VKW6UJMpg==
X-Received: by 2002:a17:903:18d:b0:220:c4e8:3b9d with SMTP id d9443c01a7336-231d4596b26mr286881155ad.37.1747875021141;
        Wed, 21 May 2025 17:50:21 -0700 (PDT)
Received: from jiegan.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-231d4afe8b0sm98325955ad.89.2025.05.21.17.50.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 May 2025 17:50:20 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: qcs615: fix a crash issue caused by infinite loop for Coresight
Date: Thu, 22 May 2025 08:50:16 +0800
Message-Id: <20250522005016.2148-1-jie.gan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIyMDAwNSBTYWx0ZWRfXzIvaHIGCbzFT
 QxnmbH5YCUM8/M/ED49ssHZ42xUaDpY64CYBsEZoTDDMbX9O1r5GY5ONxuUTE3t+EZpV1qCEI8P
 k1FKzvmh81LmXIZ4k1cpb8oR3yJ/8RMIvs6+cp7lIJFGYnfiKfyYZoiuvOEA2FeplZFEXYcQSan
 65i3zU2b+zxqNO8b5dwRlA8Ybjo7O6QthiFi0g6WtCRrpM+s2881/UN9XNkM21a6lMTvswze2WQ
 SDkRg6YuCYBx6nfcCmfOqB+pibcT3UjTpW/BKR18xGyk4dbr7qu20iJRlwcDtE6AZBFEavvkq+F
 F6yuTO8H7Hbkcr2uLbBW1UbI6oUE+z+w6lwOe9CCrbJwyh5t+C11LHNqs6VD9FyV3Ho+reGJ7Q6
 5bCKsGWLG+vFnTsOoNYvgcfv0weuWfL4CUMKgIXMVjYCYTvE2wNdBeuUReExdx8lifbs48Pt
X-Authority-Analysis: v=2.4 cv=RIuzH5i+ c=1 sm=1 tr=0 ts=682e74ce cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=435hUyIJdIdCWuEgtuoA:9
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: 6g-NY-sMkBplZlbslnXWziVutW5fLVB-
X-Proofpoint-GUID: 6g-NY-sMkBplZlbslnXWziVutW5fLVB-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-22_01,2025-05-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 suspectscore=0 malwarescore=0 bulkscore=0
 mlxlogscore=999 spamscore=0 lowpriorityscore=0 mlxscore=0 priorityscore=1501
 adultscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505220005

An infinite loop has been created by the Coresight devices. When only a
source device is enabled, the coresight_find_activated_sysfs_sink function
is recursively invoked in an attempt to locate an active sink device,
ultimately leading to a stack overflow and system crash. Therefore, disable
the replicator1 to break the infinite loop and prevent a potential stack
overflow.

replicator1_out   ->   funnel_swao_in6   ->   tmc_etf_swao_in   ->  tmc_etf_swao_out
     |                                                                     |
replicator1_in                                                     replicator_swao_in
     |                                                                     |
replicator0_out1                                                   replicator_swao_out0
     |                                                                     |
replicator0_in                                                     funnel_in1_in3
     |                                                                     |
tmc_etf_out <- tmc_etf_in <- funnel_merg_out <- funnel_merg_in1 <- funnel_in1_out

[call trace]
   dump_backtrace+0x9c/0x128
   show_stack+0x20/0x38
   dump_stack_lvl+0x48/0x60
   dump_stack+0x18/0x28
   panic+0x340/0x3b0
   nmi_panic+0x94/0xa0
   panic_bad_stack+0x114/0x138
   handle_bad_stack+0x34/0xb8
   __bad_stack+0x78/0x80
   coresight_find_activated_sysfs_sink+0x28/0xa0 [coresight]
   coresight_find_activated_sysfs_sink+0x5c/0xa0 [coresight]
   coresight_find_activated_sysfs_sink+0x5c/0xa0 [coresight]
   coresight_find_activated_sysfs_sink+0x5c/0xa0 [coresight]
   coresight_find_activated_sysfs_sink+0x5c/0xa0 [coresight]
   ...
   coresight_find_activated_sysfs_sink+0x5c/0xa0 [coresight]
   coresight_enable_sysfs+0x80/0x2a0 [coresight]

side effect after the change:
Only trace data originating from AOSS can reach the ETF_SWAO and EUD sinks.

Fixes: bf469630552a ("arm64: dts: qcom: qcs615: Add coresight nodes")
Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs615.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
index f08ba09772f3..b67c1f8a1118 100644
--- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
@@ -1902,6 +1902,7 @@ replicator@604a000 {
 
 			clocks = <&aoss_qmp>;
 			clock-names = "apb_pclk";
+			status = "disabled";
 
 			in-ports {
 				port {
-- 
2.34.1


