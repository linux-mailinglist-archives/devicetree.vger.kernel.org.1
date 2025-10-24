Return-Path: <devicetree+bounces-230782-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 12C66C05AD0
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 12:51:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C64213B8FA7
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 10:51:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89FF931352C;
	Fri, 24 Oct 2025 10:50:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="V41pqSPV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08CFA311956
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761303036; cv=none; b=GfzFE4amqVXTuI0L3+Km6yU1bNl45vY+EqQ6UOsY7XOJEy1n/wsUeNVas06b8JLEBxwgdjMrFxyQKMJIDlKT7YW/HDfIfDIBqV2nDMCXIJyvyW7OXJtt04tRVhuHpDteV4A8zeFrrC1M8RisR/36mbNYs1lPU4A4D3M/J+pKLPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761303036; c=relaxed/simple;
	bh=qu/qZ84NtOyTE2o65+l21YiQTuV5u82Zwl1GWs6QyCk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Xeb6jl/3gbjVDR1MP+MkJl+WJpWUwSR27GtZk7wNcPrM44vh8T+3JcTLKeSmju/aYiNrcZ/xTzpg7/dMe8DePib8hdh+8NYO/XvFhAj81l6zZmoJepEIO9HdxKIjWZbTKiepDlRH/8mEabM88rNRJ+GH5FqIdy4XGTe6WZmQ3kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=V41pqSPV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59O3FUwD003660
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 10:50:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=i/X+r8xYyGm
	fOqiALmId+62Iz9MHQaRcdFd88kOBYm4=; b=V41pqSPVKaXoXjtMlp0T1cYq4xz
	VXb5tk5ZvtqRmtMiHZ3hxVm9/+anfq+CS2hDGqmKfkYDctWuNVYdDYdaMNHj5mtG
	sEr95BZgVStmw6TQaQtBrPO5kp79QnHmtRfF6fHjRX9Xe6KOGGmwka4Go/1CefEC
	EGS1bSq0as+ZOOXsEP58OyVgW+b+LKYKu7gvWsLmGcyykWpIfYEzgb7kV+CCw9mg
	vU+g39laIzGrvDgZ2023l1kTiqHMrMwC9JtbDy+4Yg2wHO+ktfQaU4gn5oAmDT7+
	OxIkdEfwAGSqSjB15WnupD5l1SeswbGVcGApC/mVcpfc/OEVKx9GmwO8rLg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v2gebrc1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 10:50:33 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-290b13e3ac0so16883005ad.0
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 03:50:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761303033; x=1761907833;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i/X+r8xYyGmfOqiALmId+62Iz9MHQaRcdFd88kOBYm4=;
        b=v8UtBDcjcPZItIEUjii1kFcFeYwx/dAa6c6/hx2uyumxV660mwdALj5d0DfpToj/e4
         4NjiLrxy78Cms2yDpJEO3m/LBDqTdTbQMtSBuYeOMlNOr1P16veBM/yq4/a/9XDxZ3nw
         O6qoFtQxEfrUv/yXs0t8mhDX1yFa3kF0pQseQVXXLWCq1Ulb3LfcJhIdbYRiCZjkaisC
         hpKHnuAkPwqoTw04DMVy1ch4MTXLBj7siutgqEH3hB1GVZpDRLlR5ivCJUwikxzateqW
         3WBA1K9S5L7ft30ZejRVCJL/Futc93ZYQ5ZQOjhMV7Rgrk5HvnQLyDmEnqYr6zebUZNq
         Q4LQ==
X-Forwarded-Encrypted: i=1; AJvYcCV5AKF3/NipB6LkzMwmwxAkzTM2dJV+kb+rS8Z6UfVH3xCcJ4GjrpWg7BQQog8zMHTAI+36rNuZw0o8@vger.kernel.org
X-Gm-Message-State: AOJu0YxOj07CsFXJ88fZiURixcSlF6PCaUhaS3B1f9iaJi55QBl8DGrD
	urKilLa924PT5ASzRFaFSNLJZ0UegmE2kHxPHrZWLY/DfcAtpEAoevcjK2OCWjHMD9qQ84t0pGT
	c7foheocoKStc4hctjISx40TZcJV5auMzUkfwqNbeTFcpBRUCegBovMlUUIZGNKrk
X-Gm-Gg: ASbGncuf9fT4srMaSUvcjfYfown33hFUHAkpygV8S8cUh8QgwQ4nxtK6J7AFL74TJ/0
	URb2eS96p/6psfl8OOPSSKn5JdYsHfA0K2KgP6kATz7qH9wXFJ1anIrVtU9FV2JmbL2b6JwIxMT
	tCBNBJ3GzzkQ/3mZrHHQzgEgyYW+7Ou8G7r7iYYhLVHRGD8B3vwlwxThP8UFCh+mQNBi1Gw/TGr
	uEiwSYvBZTPU4DIlagLEUGFyQFs2M2cRjItG5/AhKDtkw0UE4YOqP8mU6gffGygGjT5tVqs+dD2
	qneQKSTtMlZgkOrFpfvPYey2eIKrozedkr0+Qgq5+F2yFuExUNb5QjX6oI5/Hbn4fnfqQKe6T5d
	/4yk2qgTwi7kAyL1ZjW55XiX1JRIqPheNNYcn
X-Received: by 2002:a17:902:c942:b0:290:ad79:c613 with SMTP id d9443c01a7336-2948ba3eba5mr25935245ad.47.1761303032559;
        Fri, 24 Oct 2025 03:50:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGtXYlwjMr6Gvf1ckzMeyuRRuHXM2bM6pczkChDOcs3/EJcn5nHuQCPbO1tRPn0r707vCS2zg==
X-Received: by 2002:a17:902:c942:b0:290:ad79:c613 with SMTP id d9443c01a7336-2948ba3eba5mr25935035ad.47.1761303032135;
        Fri, 24 Oct 2025 03:50:32 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2946e23e4b3sm51236775ad.103.2025.10.24.03.50.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Oct 2025 03:50:31 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Shazad Hussain <quic_shazhuss@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH 1/2] arm64: dts: qcom: x1e80100: Add missing quirk for HS only USB controller
Date: Fri, 24 Oct 2025 16:20:18 +0530
Message-Id: <20251024105019.2220832-2-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251024105019.2220832-1-krishna.kurapati@oss.qualcomm.com>
References: <20251024105019.2220832-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMCBTYWx0ZWRfX53q4wKoxTI8u
 1+TiiO+7M+VQQotWgKK5qmzLWAGNZ7MrfZATLufHHayrkvePsj1SRU7BxBpsoey80FmwEm3L18p
 3lH5SdSIetXkNXMCO/kXz19qGt0pKRaQbGyOsda+cwRRZhB2prJi81WdBFj++WoyPDC+KyMr8zC
 /dsP6VMWKaE9Lx3+qsU+OzVSgY6xIeoZ5LF+iAfQiRg8VIhehe2CxOSzuOSUSHGaoEKsul9+AXx
 YmKrgYAVftLgRTosgee3K7kGw5dvDJKA6URhaDuk/wHb818VxsggxGqYrOdSQmKUSGpIXDmkns1
 MU2wgROv8JrXosgfZt9raIAzz9//z+e87SbxkjufjdsujGX88B1g9tCafEYydZVOgtEFX6bJ4z+
 q3smVZho4uFwozxakCsHa2mWWP9UyQ==
X-Authority-Analysis: v=2.4 cv=KqFAGGWN c=1 sm=1 tr=0 ts=68fb59f9 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=iNHPuiuMtRvPBLkl12UA:9 a=NqO74GWdXPXpGKcKHaDJD/ajO6k=:19
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: js_HH_X-bLQhIhNYNH-Xzz5DwtM_G91j
X-Proofpoint-ORIG-GUID: js_HH_X-bLQhIhNYNH-Xzz5DwtM_G91j
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-24_01,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 phishscore=0 malwarescore=0 impostorscore=0
 lowpriorityscore=0 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180020

The PIPE clock is provided by the USB3 PHY, which is predictably not
connected to the HS-only controller. Add "qcom,select-utmi-as-pipe-clk"
quirk to  HS only USB controller to disable pipe clock requirement.

Fixes: 4af46b7bd66f ("arm64: dts: qcom: x1e80100: Add USB nodes")
Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index 633b7402ae84..087465f028f5 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -4949,6 +4949,7 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 			interconnect-names = "usb-ddr",
 					     "apps-usb";
 
+			qcom,select-utmi-as-pipe-clk;
 			wakeup-source;
 
 			status = "disabled";
-- 
2.34.1


