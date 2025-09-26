Return-Path: <devicetree+bounces-221764-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 48C39BA2C0D
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 09:29:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 713C71C00399
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 07:29:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5470D29BDA6;
	Fri, 26 Sep 2025 07:27:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MZrHsPoM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F97129B8FE
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 07:27:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758871647; cv=none; b=Wu3JBvD8cfONM60KFAYjCpHhRxyjz8+joiWpl0nKHGUPE1Q2RtatnsNnTVH935deDnjvDOba4omAn9YLe6M/Uzglk2ZA5ODaGel2qrDjp+H9Ig8dnj1UdLd6CNwB6y1INrK4qTECQTnJXUyMk38hQt8w7xH9TBUkaJFnMXGxjPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758871647; c=relaxed/simple;
	bh=DPKLxEacqPPVPld/3Cw3ossBUvxFPG/ElRs6jI9aG+g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EkMErC6c7Dt3CSBRQ07rPAjLbJMNiGjC6aVbTC24KTPxydXWgx0EOB0n+SnMseC3Pj4H73WMElA9r/dsOawiRo7Et7r+H8kVBzk4tPVsxKc0XED+RZPc26CGSDk+fbsQkr43XOGUp6yZBm3e+LTQ8BYCqHZJS3OTzvw5GZ/24Vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MZrHsPoM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58Q70IMK008143
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 07:27:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BBnKAQHtJIUzOuuf/k4xFN6GQiHRN0JpTaejw5fAgk8=; b=MZrHsPoMJRf4Qv7t
	g/gyESw15cUBoBQ0NM7U0rvmGcaabIU1i9HsyOExSPgwZ1Y0OFNx93A0GNbAvuaR
	C7ahVwfEwmv2FxHxBhTza2NEKZ3uHzYqJbf5qOdFRcvu/q2y1nvr3qI6sf4T8paD
	JbYZyLtyU2abpbrfU292PyoBMkzcplJedsbXatYBZYPWY0qpN6CG8DuPmfJ60YNR
	ZybP9POnattamOTLDX53KBNx5nOEz6POTf2oG9L4xDuBoBiLkOv3RQt8OsAi9/N3
	KL/OyY1vw9KzgcIJrDLIOltl5Ksz5Yj6fThvRDApV3cfj20RFODrTIDLe9EjJLVL
	FFx2NA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0vsw39-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 07:27:24 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2696ab1bc16so4925945ad.2
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 00:27:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758871643; x=1759476443;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BBnKAQHtJIUzOuuf/k4xFN6GQiHRN0JpTaejw5fAgk8=;
        b=FIAwiTreK7uifopbxvc+l/gc9ET5WJo5qEjm27V2bfRLcXRtPnEmwQKPsfMAm8391i
         Xf9cgQHdAusl6etWw/lnDF5nfiY+4314rxhwOqgd9pwHJipbp9lMyOOSzVNb1zoRB/XN
         Ybp8i3mUmpm23tmc5eLBElwO3PkGILJBWLgoC3H+GjDKM6Bl/wXcG+14IpWF/Tt5sZnL
         6kjClObWbrkd3y2TyYvbn/aKdgwYt8k2WDFutbMe38TRwirJ3qaB+Oj7TC+cWdDCkSEG
         xcunOOmOTWYUVaTr8CFw7YSyh2hUEkUYx3amWLDugQbQeCa16Kx4vCHKJdnJzgRVu+l8
         cEgA==
X-Forwarded-Encrypted: i=1; AJvYcCXy72Q/c2dWdmyNrOXnFLUj6RlklHvzie+1+F5BN1pG5bX1RCtAlS743JHm8pV6JAj9wlTYfUKqp+NJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yyu2Ir32eQO8mcc7yxfTCZoRbtQkJz1lkH/9fQiCyVn+4dkdel6
	0FmNXFhszZg+JE58qiz1SvSlDavTQhDydYRiYm89YFULG2NPnTfbJ22kl2p+hfQ4/k8wrL0oqEj
	82KV2A4hOrdXuNQdOBqBs0tCU4vYLp+rQkO71IBV5nZumLhQUuEdhBptKiF5xLghD
X-Gm-Gg: ASbGncspFuyjTTX6tgipbR+GkPC/bsY/ODh0JKRzqwdU4QAuhGvr9IXC/xOY/Hn80e8
	V3YYGfnNUOSeNyJc1OkNyAHdXKwN0L9G0kQsKXTjc1NyEAFvS7q7lBeZQa1q7dDXHPrtD3sS0WC
	0e9xA1DpGqTuCyFGn4ASUrJ5dCig2jXrNgG1xS+32ScppkclEqfsUsjZttOiBfhyTjB0MFANK3e
	ZRypqyA5pNJfAbFZA4lkw/u+ptkoQCi3biT6hmXttnTkH53RzoFQ5H6yDWR+yn5x+8VjS5tUh20
	mN2xAZXGucfv3+Kgsr5MM7JRMweqDwmaIPoTN72cbDkeAMTMKGOLGGqOC0/idvNRXwLs1AnLyNq
	kIaFlHznlnE964zLqBRVnHrspqbDv5KlORW5s6ghrrLs9Sap+oCzYY7ir
X-Received: by 2002:a17:902:db11:b0:26b:1871:1f70 with SMTP id d9443c01a7336-27ed49df69fmr43571315ad.5.1758871642880;
        Fri, 26 Sep 2025 00:27:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHTX2igDAbPEs0gasTbZkRY3PEKRg6iD3OO1BbSDu+8oSgdmgCgwl1nIHEcronmpOxG6BZOag==
X-Received: by 2002:a17:902:db11:b0:26b:1871:1f70 with SMTP id d9443c01a7336-27ed49df69fmr43571025ad.5.1758871642379;
        Fri, 26 Sep 2025 00:27:22 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed671d8a2sm45117985ad.55.2025.09.26.00.27.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 00:27:21 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Fri, 26 Sep 2025 15:25:46 +0800
Subject: [PATCH v7 10/14] phy: qcom: qmp-usbc: Add USB/DP exclude handling
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250926-add-displayport-support-for-qcs615-platform-v7-10-dc5edaac6c2b@oss.qualcomm.com>
References: <20250926-add-displayport-support-for-qcs615-platform-v7-0-dc5edaac6c2b@oss.qualcomm.com>
In-Reply-To: <20250926-add-displayport-support-for-qcs615-platform-v7-0-dc5edaac6c2b@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758871564; l=1933;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=DPKLxEacqPPVPld/3Cw3ossBUvxFPG/ElRs6jI9aG+g=;
 b=LKwRqi1oGH1DuHLM7E16LiWfNw5DOeR+8o8s9eF6SZvkMm3iSdaWji+J524cD6f83xQZU7P4x
 jx9iHVmnqEvCOsMZMAFLUJLwoQrBPzoPBnQelsJeE52ZLRbP7VKfXfm
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-ORIG-GUID: jImyEhZmOxaHzCwFSzsrDjYPppdN3Fzv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfXw9HlrDpTnO0i
 I+0I11BvzlKQrzJsQjeRRv3vElWUm3+beZjKJpW/+WC4loH8pdpmAbSD76+8l2E8bRqw/7lRk3t
 Z4tJG0PHvW5Ys/dtu38hjvBG/fdRD76DQ4KhnrVsGlYPPKzQ2/qVMmh7FDQLZ9hNUOwMD3ECfma
 eGkE11PPZpn5HkY9lEokKeO1RA7NYmD/zrJsbqhGMNDOXUBMBKWFuGE7NqvhUl3ei+8ariKKdmi
 46fgfnS9Yqv8ziHhGKNMkdjgwH8bJsusiR+DhQLt4kkAMzTppTrtm4R/YRjDKiHf5K8zp3mi+9e
 YE1C5h2Ckcul6g0LeByFl1Bap01seISTspw0JuCwN+hLC5OPPtQmtQ/GrK3DcXYcqIn+Ac163gn
 qBNe23TJytV1L4i9wJR3M5At9zxQvQ==
X-Authority-Analysis: v=2.4 cv=OstCCi/t c=1 sm=1 tr=0 ts=68d6405c cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=RloG_8Ug8mropJZ47ewA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: jImyEhZmOxaHzCwFSzsrDjYPppdN3Fzv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_02,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 suspectscore=0 lowpriorityscore=0
 priorityscore=1501 malwarescore=0 bulkscore=0 spamscore=0 phishscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509250171

When both USB and DP PHY modes are enabled simultaneously on the same
QMP USBC PHY, it can lead to hardware misconfiguration and undefined
behavior. This happens because the PHY resources are not designed to
operate in both modes at the same time.

To prevent this, introduce a mutual exclusion check between USB and DP
PHY modes.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index 3580c19fd62e02aa373cec42e9f53143f39214df..d84bf68940043bce13565503bb34796e653adbb7 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -666,6 +666,19 @@ static int qmp_usbc_usb_power_off(struct phy *phy)
 	return 0;
 }
 
+static int qmp_usbc_check_phy_status(struct qmp_usbc *qmp, bool is_dp)
+{
+	if ((is_dp && qmp->usb_init_count) ||
+	    (!is_dp && qmp->dp_init_count)) {
+		dev_err(qmp->dev,
+			"PHY is configured for %s, can not enable %s\n",
+			is_dp ? "USB" : "DP", is_dp ? "DP" : "USB");
+		return -EBUSY;
+	}
+
+	return 0;
+}
+
 static int qmp_usbc_usb_enable(struct phy *phy)
 {
 	struct qmp_usbc *qmp = phy_get_drvdata(phy);
@@ -673,6 +686,10 @@ static int qmp_usbc_usb_enable(struct phy *phy)
 
 	mutex_lock(&qmp->phy_mutex);
 
+	ret = qmp_usbc_check_phy_status(qmp, false);
+	if (ret)
+		goto out_unlock;
+
 	ret = qmp_usbc_com_init(phy);
 	if (ret)
 		goto out_unlock;
@@ -726,6 +743,10 @@ static int qmp_usbc_dp_enable(struct phy *phy)
 
 	mutex_lock(&qmp->phy_mutex);
 
+	ret = qmp_usbc_check_phy_status(qmp, true);
+	if (ret)
+		goto dp_init_unlock;
+
 	ret = qmp_usbc_com_init(phy);
 	if (ret)
 		goto dp_init_unlock;

-- 
2.34.1


