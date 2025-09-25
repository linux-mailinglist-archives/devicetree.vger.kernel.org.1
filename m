Return-Path: <devicetree+bounces-221217-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3723EB9DCC3
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 09:08:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AEB1F1BC0EAF
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 07:08:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 284062EB86E;
	Thu, 25 Sep 2025 07:06:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="N32WQhdq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ABEF2EB870
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 07:06:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758783991; cv=none; b=ZroozwcppNmj2VVMKM+8R1KDKYiCSNC67PHWr0AL9vxm+U3Qw8DBv863Obf8dU6fhVxgcvvO6YIW0WSYcoV5gqL3hCvD5b37c9Iz7+hI+cd+APo/fUAYCr1fFql/tCyIioiQc7NprsZ2t1ztcoMaEjm3GTtjbYG6G3dCD7H8jWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758783991; c=relaxed/simple;
	bh=X4PFHrUfP0rzxFwmdjEfi+hC/7SrgdK5syWA8qItXag=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tGB17jw0rMbBdMp8bNqvsImoAk36QkWXkXMx9pqHKkOCXj2QcluXXqUUafJZNoLQ3Pe2bIdQfSAV1d97MGvpvtyF9nkCpYVfMX+4CB7CrxRKyW+v6zR2Dy7wCq26epFqbQjRHZOp8lnyvb9eImIXBSo7Y8iZLCzq2ZKhXU0nkTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=N32WQhdq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P4a86i026654
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 07:06:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sOHfeo7BhLeEryk+wi9AeSYQSxkknTWJ2p+RSrBRhUI=; b=N32WQhdq3ymRD3Zo
	i4qGopQmu+qbIGWgAlWPAKBRLjAyD+amd3AK1kTYO7nMAgcFZDLsIDafvzHyKRL+
	AmL7lroXwB35S+aHUKb5sZWzv80k0QoXCDw80ae4yRo/eNCh4FndPB+ruIHdK24W
	8NUkW13KHN6EdNYsU2fCynL4Hm5GTi1wk5ukRP2YBtIx/kbZqP5Q+fvD9hGpvRAQ
	Rxfbdo15Tv7AFRE+RBCWShwyLYRDxIZcpCmYrycuVAWHir6ylBV7SiB6yvdtWg//
	jIzaVumtPYmyYFoqoHWpQR2+YxIoh2gHBD4kMJAk8FACQ64bcWTrPfPf6A+ah0mS
	pxGqiA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49cxup0bxp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 07:06:29 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3253ba05aa7so174584a91.2
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:06:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758783989; x=1759388789;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sOHfeo7BhLeEryk+wi9AeSYQSxkknTWJ2p+RSrBRhUI=;
        b=hbxI2ZdQuCsEwuAdpjXK2zi/WtYy/lOf7gG+kEeEmUJRORUTzyTtsR69vWqvWiag6L
         7GuJt/V/pki+VPiQwYuY2r1vQ+wXnjS+4S/U6G8wFW/6cF2Zf3NVR6P0ufVzzGsCiuQd
         fWyooZB3r5C/HfxWNPAyLRw1cdwwjtLQNfcR8ySj6QcDKvdsI6n0a55DWd3pWXrgO4y9
         jOqFc7gi7ER5NdlQ72YOVudTsFo2aIDPFl6nSyka+e03bDhCYuH04Sz5AzaPrduJ5Jvh
         lm+I3ghNLQje0OAFhMtX7QiWcNFtgBQ2l4UPM1LuagS2WmOkhJ33t1NShaImghlPt0jI
         pfrg==
X-Forwarded-Encrypted: i=1; AJvYcCVhKBskRO8LgdExBdvhFhki/yTFXHp2IDodA/fTbI7BtN+dKO2e6envjzucCBvYH8fNvzY1mRjUf/aW@vger.kernel.org
X-Gm-Message-State: AOJu0YzmbixI6T2ANOhZVCKZeSmMsN0p1u/4ow6osVmRn8+nOGmoFom1
	mb50Ou6lGmuNrYhxP3rvexkNq6KmuvlhtOtGNmz9pSFSMS5uwrlPWm0OeodhVL1hAgjDqitFeGz
	mQixEdLMzbJxntawNCSJO6d/yafjTol18nBWbg0SO0Hm/9o7EAqwhzb4vR2aDkb82
X-Gm-Gg: ASbGnctiHXsw+2VxlP3tvjX2CSwXX0xewwFyv5fXq2Q1mK4kAUAAnmUJ7AtZGMXXa98
	G9P+7pINmiSX//JLtQEqveKD0VV3vZEPWavFdAdAAmzvhpS5cWkBfhG2RflMhcRDWu7MlCm6f0q
	Z/7lZiihBscDr6ytVLBb+9trHVKc9APMN6PI6I/cWhbK19Vqyz2poRhSSdPiwsrYZ2uvhMnYz8c
	V6TkD2cpTtBkIaQfedrN67X1NUlwjjacH25rMd4a9fmwpqa1ulCRvqLHT4EUNFODJ26bokBw024
	JtBx8sUuw/NWD9ZGTXRt6H4lNeSd8CcLglIGwYUsGTArItaUwzyjJ5GCorPkVFzUuwydpvs3mNw
	IP7L+41l/0pu9E2ZID50fGtpxG2YakVT9aa3c1FiiiO88QlXHQr+fwAjY
X-Received: by 2002:a17:90b:1642:b0:32a:8b55:5b82 with SMTP id 98e67ed59e1d1-3342a138dafmr1622731a91.0.1758783988697;
        Thu, 25 Sep 2025 00:06:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHFMPsmZvnd6dVbwELL53pC8yqLIr3147s8iCrXFpjob11Il+gTCOSC49HD8pbmJr5jpEtF9w==
X-Received: by 2002:a17:90b:1642:b0:32a:8b55:5b82 with SMTP id 98e67ed59e1d1-3342a138dafmr1622701a91.0.1758783988144;
        Thu, 25 Sep 2025 00:06:28 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3342a2bd584sm914253a91.0.2025.09.25.00.06.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 00:06:27 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 15:04:56 +0800
Subject: [PATCH v6 10/14] phy: qcom: qmp-usbc: Add USB/DP exclude handling
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-add-displayport-support-for-qcs615-platform-v6-10-419fe5963819@oss.qualcomm.com>
References: <20250925-add-displayport-support-for-qcs615-platform-v6-0-419fe5963819@oss.qualcomm.com>
In-Reply-To: <20250925-add-displayport-support-for-qcs615-platform-v6-0-419fe5963819@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758783910; l=1866;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=X4PFHrUfP0rzxFwmdjEfi+hC/7SrgdK5syWA8qItXag=;
 b=w15jBmT/se5LKcZFvbQZtG5NncJK6g9/eYBpM53QIj2XHBW23jnAJfjZfDdu8EV5FM/icrIMI
 BaasMjAbiAKAsRn7tS72IxN0cw52XUOulIwMc629p4TQfSAOO9IN5Po
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Authority-Analysis: v=2.4 cv=B4a50PtM c=1 sm=1 tr=0 ts=68d4e9f5 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=RloG_8Ug8mropJZ47ewA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDA0MiBTYWx0ZWRfX5w7mAF3G8JTk
 Ada5yZLbf51+QXi+/bSgCyJJ50DKJQ6H01EXCIFM56sNP6ankbizOZwX/3uYuCRqTJwb7uAj4mf
 oNB+vMGhjk0ozg4xUZM44po6Uvs2D+t/LRZMUDpeiheSyZrXT96q5mM9LhTWzqnYEz+pbyqZ4J8
 Xx8lcItqDfEb/td91DWic05B+HTyDNzWjY0j5xcDudbnNPt6yLr/UbTPARq2+pRgmetfk9Lwwy+
 bR+nlu5ZHpQo8VNN1OU9hiDaXm/niZyk2MrsrQv/fnOSaFN4zmRWxxVAbbhL23ZkwaqLF61xPfm
 lKiBeMllZEPB4eOJqWHgcFx/MfQslYPwHoIWqjIWvvssod+QU9OB+lxhSDqxrLEdm+dpxHaS8at
 vxgNwP4i
X-Proofpoint-GUID: 8-UnTvBoIc7sG_c_W3IjNPBKgwGYeINc
X-Proofpoint-ORIG-GUID: 8-UnTvBoIc7sG_c_W3IjNPBKgwGYeINc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 suspectscore=0 priorityscore=1501 adultscore=0
 phishscore=0 clxscore=1015 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509250042

When both USB and DP PHY modes are enabled simultaneously on the same
QMP USBC PHY, it can lead to hardware misconfiguration and undefined
behavior. This happens because the PHY resources are not designed to
operate in both modes at the same time.

To prevent this, introduce a mutual exclusion check between USB and DP
PHY modes.

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


