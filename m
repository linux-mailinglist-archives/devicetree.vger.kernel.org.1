Return-Path: <devicetree+bounces-220858-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E6AB9B853
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 20:38:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 25AEA1691D7
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 18:38:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D433031B11A;
	Wed, 24 Sep 2025 18:38:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LMAa7bno"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B5331AF2A
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 18:38:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758739088; cv=none; b=NyhRzPX0EaeGo14DLKNymzANO7NaT+u1Llxsd/6Y/o6u70xIdlUv9MwzQjE2dzTTifmBZaYbWzrNLYxt59wNH+ac80TPGah70gKeIByG7Rr+fqtpeqtsOwAtM3Sg7kNNB29oap4FYhapiK/ktnmPb/T99sDpWf2SKhTA+8BQ6d0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758739088; c=relaxed/simple;
	bh=mBFH8HBfqW22uJUINYJENu8VktqxDzTFaEQMWWeNb7E=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=sJgV6KQUDs5G5P0D5nJ914XShCLB3JiAfsBfK8UzJLXttfM1gAx1YQ2XwZ90NRB92Jj03xc9mg9CR/ikjwR72J9xPn4FEc/8+ZvvuJprUG9Y8nlaEnHCkq7tlNroWAibeyn+6XPCrzvAx4uO3kx2Y7qzelAcb7of6oXMxPQmEYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LMAa7bno; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCmi1W018449
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 18:38:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=/NakND+TfYX
	aLShyyTMVoDpCY/wzwExv9wBqupV4OwQ=; b=LMAa7bnoQg1w/P1Pw18MSBMN9mc
	AJhL3AsN58DCGER4VlDoLObg0fXayRL1kLzcvWIcHolmEJs/edR2iYgjhK92Jjih
	CDVUlal4/RVxEjofTUSVP3PFuuMFmo+IQ6OdrxaHdyYbVf7eX3XgulT5vKPNKFN7
	vIGjU1s7Od6XlcJje0Zn53cZ5SLur7JaGKehdIXgjagToa9a14YBGrw3b6pGTzLN
	tPKJRVr7Z3bplh6yvt0fVfL9A5rP82xuVn30LZjuYy9CBKBR09SwwaHccyjsQOyF
	nIJ89AjrpTVpnYlebkVVxXCayQ8sU5N6nQW3dDx8OtchErxXB2L5IScXpiw==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3kk9cch-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 18:38:06 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b55436fff66so70235a12.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 11:38:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758739085; x=1759343885;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/NakND+TfYXaLShyyTMVoDpCY/wzwExv9wBqupV4OwQ=;
        b=egjJhHhFuUAvnExjDwBiCp5as56u0Fzo1ua5z5G+0k+8TKSQM061Ba9e/7IJ4/bOjU
         +lfj3JmmdfNshFTsSb68niEl9b1EuNSOpz8UFOFq4gM+0Zee3lYbE2gO+kVP6lw4w85m
         hRAfnyBTz1iAiBWgbKJOj3X1iiALkBQ2lc50N9mB5bah3UkE7DAs/Z0T3ND4Mvu1+7U8
         LMn+6F88d/sOK7ArANeQX+bYUITJ0/RS9778P6Zvjn/Dd+zFOEv72vLVF1OpM4HYH+Et
         Shz41urwJYvuSiaNLTb1opvdCrPTQPh4D9f1647IWt6J1ExWPjd+lXolWIc4I8d/qbLi
         ycJQ==
X-Forwarded-Encrypted: i=1; AJvYcCX0QiiizadBJRj9QEGH5yx/xUFrJ9d1Bl1d5aBGZ9v/EHlnF4ATMRK5b70XI/oa8iTsl2ADvwm5jLEw@vger.kernel.org
X-Gm-Message-State: AOJu0YxkNBsbFxRumMQ2MMhesYqW45p1I9ivBo8T0edRU076Xngdtjlv
	cRQMX9NWmstfYE2114m3XW1iE8p4oRk39FLDCBGQS7uOSU2iFVoLMsnbi2ij0wPF5E8osa9e4uo
	stx7+BChQk2VlzyTzS25pCd1RmFtqON2tbJil686YYvNsOp4hvFABCfxsMCcbizHc
X-Gm-Gg: ASbGnctt1o0b4t10YGOYC9JRAFOlY6KRtmusBdu9Y5+x5f3Fdk+T/rRp9iUjTD9qYFC
	odnB+YwksPG6WxJauXYBPiPHSf/mFVAA8fkbqjxtMdlU1H/pXt3TuxRCq0cqcM89PCEDsocqucQ
	6332oVUkp9ndBzLNNTQ2NwxX1jfdoNc8FKBVFLDpwplhgEapsan2kb6NlhVwFiqubeL1CJMhoHM
	q4/AY+u161gV4tUtAQBImLJokh/cZY5bS6+OtiF2WJEkaIrxzMkRomHHnR4MbEh5F9h1nCooFZo
	ejfQQJqc/ywsWSpoPik3Of93HeW7bKyAB9ZBTDVsyIpMvdzB/ZesM4AJsdXkdN0rAuCnqvC5z7f
	sH1OtNrYcNlxMqMsW2fX+y118j6a9GCaIZuUF0FhgPVKB9tIgx/NX2eE=
X-Received: by 2002:a05:6a20:2447:b0:2d9:b2ee:785e with SMTP id adf61e73a8af0-2e7da45fdb7mr675808637.53.1758739084977;
        Wed, 24 Sep 2025 11:38:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFu6mDes8yvj7I+bjPl9snWfmZNJZ0/XQrsak+gbcpzmtWRDO1fd+YneD8ujyEQDYBhSr3haA==
X-Received: by 2002:a05:6a20:2447:b0:2d9:b2ee:785e with SMTP id adf61e73a8af0-2e7da45fdb7mr675786637.53.1758739084602;
        Wed, 24 Sep 2025 11:38:04 -0700 (PDT)
Received: from hu-sibis-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b555adca754sm6523412a12.16.2025.09.24.11.38.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 11:38:04 -0700 (PDT)
From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
To: jassisinghbrar@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, mani@kernel.org, andersson@kernel.org,
        mathieu.poirier@linaro.org, konradybcio@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-remoteproc@vger.kernel.org
Subject: [PATCH 3/5] dt-bindings: soc: qcom,aoss-qmp: Document the Glymur AOSS side channel
Date: Thu, 25 Sep 2025 00:07:24 +0530
Message-Id: <20250924183726.509202-4-sibi.sankar@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250924183726.509202-1-sibi.sankar@oss.qualcomm.com>
References: <20250924183726.509202-1-sibi.sankar@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 7LjuaNq3gfa4zVu7kYKNyQGtimtNuwbC
X-Proofpoint-ORIG-GUID: 7LjuaNq3gfa4zVu7kYKNyQGtimtNuwbC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA4OSBTYWx0ZWRfXwGI6rWBzsANk
 F0ZNl+26Uo9P4U6VEYeqozvLnbKlK4a96gdqq524aN+2iFLAs+WXVIL2gV7bLpPiFN9d15mPU3+
 2FigVkPIHUUuHO69PTIfcBz0lAiCIUQLhsxv1tNT0nA0LJEfA5Ov2dsOaF25CzujdX+Ra1JwRGv
 EPjXy+7cuPscELAobzBc3aS7PibbdrGMRWlsDo9U114rzPRwTXSiPY1SiGTiSE+J8PBLHNNAMFo
 C1sNVT41/vXejRkO4MdekwdnFokvj/qYtjbyqfJJ+HxH/xt47OAMfqZ9sj2xMqAtHYhQtjw9rIa
 qIldELN3isnxyTOGCXACdNnX79ZtZkELR1kkHLHud3ONVy+dnMosrIMNi/A+I5RU7pSEM99wwpM
 SZjKp6U8
X-Authority-Analysis: v=2.4 cv=BabY0qt2 c=1 sm=1 tr=0 ts=68d43a8e cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=44w1v6iwfB5DCniY308A:9
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_04,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 phishscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 malwarescore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220089

Document the Always-on Subsystem side channel on the Glymur SoC.

Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/soc/qcom/qcom,aoss-qmp.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,aoss-qmp.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,aoss-qmp.yaml
index 851a1260f8dc..bee107bf7e81 100644
--- a/Documentation/devicetree/bindings/soc/qcom/qcom,aoss-qmp.yaml
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,aoss-qmp.yaml
@@ -25,6 +25,7 @@ properties:
   compatible:
     items:
       - enum:
+          - qcom,glymur-aoss-qmp
           - qcom,milos-aoss-qmp
           - qcom,qcs615-aoss-qmp
           - qcom,qcs8300-aoss-qmp
-- 
2.34.1


