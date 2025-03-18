Return-Path: <devicetree+bounces-158575-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 42851A67500
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 14:26:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1094A160266
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 13:24:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1955520F06C;
	Tue, 18 Mar 2025 13:22:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hLi/SnNi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E93C520D513
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 13:22:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742304161; cv=none; b=CP1UpJvwtMidahNpVOO1+4KEUNN900boIHtTooBR3GHdZ2HPl3pbqhPbKLf93g9NKFqwdvWw5GDjHJ6Lt1/tjKiFZRfzlb3vcE0OmPdseKL6Vai6VF8W4zDzfXvfKNvSHjmbcoHkLhJpEPwSXSBxVML5f3ph79qyyOisHZe17eY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742304161; c=relaxed/simple;
	bh=euC9lx8IKVS/A4UdhCZ5+fvdurao8cR4qkRb3bHColg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=X4yHpYJ7mI1gDyz1YT7pYKtUpoWWj3pjZFx6DP5gdu2ubGvAppGZ3pd68zxotie5oZNEvy5U+44IKzo97ULVyn+bMmUY5XiYziBx14U9bpDik7dRoz981Rh43iYRb3pjBcYih03cscEfpwdaH0MducZsJaaNIHfoCmq0uKkdisw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hLi/SnNi; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52IAuHX0012561
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 13:22:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	n7IO4GSFLKL+RE89vjiv//aIMcE3MIuPp86OVbDzpdo=; b=hLi/SnNipXI9DgKB
	IRef0gKYJGkf1DaVVKyHOJ97drZXpJM+D4XKvKeE0oGZT1oGxAiDjFtwq1Kdq7CR
	HSbiWUshVDNUfxy4XqTykBY3LTYN0XHldgOH07fk98WpcturGnBoETEcM37ZskCc
	rju/gp6rD2BuyWxxVvzq3LvYgDyyX4e4M1WF/LuwHREql5UtY+QbhVy4Bmik8ZSj
	qwNFWG9Y/LQgCsoIcgypBjt4+A6jWYOHctL6h9oyElxTR7oP0mSOPt2WGNjT9nNn
	/4OCYlQXkpdZt1GrmejwK1vJqHOu0GODXxHk8K+Im3j2Dq3BGw8MaJYa0hqMP6Ed
	yjdPDw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45exx3209h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 13:22:35 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4770594a277so652451cf.0
        for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 06:22:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742304137; x=1742908937;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n7IO4GSFLKL+RE89vjiv//aIMcE3MIuPp86OVbDzpdo=;
        b=HdiA+JBmBVLB70Rnb9CoIwudVQHno2zuwbFHtIxuIes+sKjqQ6DMFKa2vRbeJI8O8d
         59vIO1t3GKqBquLksX1mFkzwvBBbGb2EDSl7+VsGLQgXUAFUUg8WpY1apaTEW2XMy/0t
         9KYUtrp93grsFJnY/Dqd19ACKrEOW3Nt4q9uQhsHxo9+wZEHWxPF9dPckjj2w7Lb+8NX
         ANnrJXA78j8bXL6FQF6V+qKlAU+9ihI2Y+LrXxghI3FNaGtzeMUnk2EH4gMhYOjc1LhT
         9euKSit4dDx/XBYa1cG4RqzazmNYFfLpChvjpybaSeCjeXOEr7uDdVSicJjET4MRGAQG
         I/Og==
X-Forwarded-Encrypted: i=1; AJvYcCVjpyu0+uSZMSpvq1nGBptm/mrvKTzHIOXpX7YoI3EnZvmbakriWxUqqfUgMQRI86pPs+u/gKJyj8t2@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8WugwGBZjE0vH35eIBymFRJR0eqxCBkkSHSi7/nboCBWz2sgD
	AqpZUWKMoWba9gjZDOaQtpVlyeuFevHIYlfq8GVBqzIYib+dMF1l7IuD7oJlNAvwFuXyEtRWEGy
	CrkDAoduGhn17GYOeCfwOCXnS87fo4wG7uF8HVRlaC2EH75faPu3CG2h6xId0
X-Gm-Gg: ASbGncszfZTDiARCxThJnvwhXq6nyE35bw9SCKHv5yUAc1q2qYgiUKGsZCD98QySLV1
	bYKPT0rtwqTxcdjlKycQoEyvYm4I40PQDjtLlc5RvHExOPJPw00mONZIzngkl7sGRsV0OwChjRB
	kgt3YlE66iaPXYMZa563pSn+Qk8J2ZWAe+mg+f8cnZEmts7NvM18heYy8WEeLgOVfaw5t/aH3Jc
	D9S7938SJiuAJaS+0w4ZSTpkISkXvdS/2mLa5tmhUnUWYukmPAS9oUSuCfNy496i0KkDtDSF1Pf
	qy+vAo1khxKitdTa+PnfHInaDSwGsR1thZh3zaRFtVk2EDzXF+MwbErM16rdIgyvtUJrUZ9VTk8
	WXfRPZOqOirCtFgTSnMceFqSOFvFA
X-Received: by 2002:a05:622a:5793:b0:474:fa6b:c402 with SMTP id d75a77b69052e-476fcecd39dmr48511281cf.18.1742304137583;
        Tue, 18 Mar 2025 06:22:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEKpVjZU2/I87t1KC+ZmwZYuLeZn6cRvCjLGhHZX7oBvEfdheyousKKIxayf6GNx8oPkiFQ+Q==
X-Received: by 2002:a05:622a:5793:b0:474:fa6b:c402 with SMTP id d75a77b69052e-476fcecd39dmr48511101cf.18.1742304137251;
        Tue, 18 Mar 2025 06:22:17 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549ba8a79c4sm1664831e87.226.2025.03.18.06.22.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Mar 2025 06:22:15 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 18 Mar 2025 15:22:01 +0200
Subject: [PATCH v2 08/10] ARM: dts: qcom: apq8064: use new compatible for
 SFPB device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250318-fix-nexus-4-v2-8-bcedd1406790@oss.qualcomm.com>
References: <20250318-fix-nexus-4-v2-0-bcedd1406790@oss.qualcomm.com>
In-Reply-To: <20250318-fix-nexus-4-v2-0-bcedd1406790@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Georgi Djakov <djakov@kernel.org>,
        Lee Jones <lee@kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Leo Yan <leo.yan@linux.dev>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=782;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=euC9lx8IKVS/A4UdhCZ5+fvdurao8cR4qkRb3bHColg=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBn2XN1nSWhjjLdnnXpPzLp1PCByMmTFxTcDQMxT
 coRRyEqPtGJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ9lzdQAKCRCLPIo+Aiko
 1Y19B/4oz0SL/S+qapQnn843C0bdimTThUshN1ijFu4oJQkCKffFEqAgetU1nZhHUhmeKcbCKDW
 2sLuRIW8bwouTGzUF8TknWW5JJkb+no5lAEVSnaYAeNE3VaZYdV0yz/NMYezXfs58JeGWoCC4e8
 s5SidFCWQe1cmq06LwCjhckq0Knb4UUUCGRdaoJn+qhIX2IJs/7eOuCDCufDsVfLqSnnvbLYBow
 NOV9CYr7L+oV0XyNDUl2o5amELlZ1HaDdMtTiQXCwSzO4O84HesESI3z5rC3D4nTBpEWqDR1u9w
 2vBt4hKxclxTvhfCa0U5VeSH0slZ/CPJhgMUHQfgqUkGCSoL
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=b+uy4sGx c=1 sm=1 tr=0 ts=67d9739b cx=c_pps a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=vGl9qbW8TQSvOBFUlmcA:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: Htj7mHu45IL-0OIqDhiFHpCoW8e_-YDn
X-Proofpoint-GUID: Htj7mHu45IL-0OIqDhiFHpCoW8e_-YDn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-18_06,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 phishscore=0
 bulkscore=0 clxscore=1015 mlxlogscore=725 priorityscore=1501 mlxscore=0
 lowpriorityscore=0 malwarescore=0 impostorscore=0 adultscore=0
 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503180100

Use new SoC-specific compatible for the SFPB device node in addition to
the "syscon" compatible.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm/boot/dts/qcom/qcom-apq8064.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
index 41f8dcde20819b3134c38dcb3e45b9e5cc24920f..a5aad4f145dd368aabed44cf520ffc037018b37e 100644
--- a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
@@ -1086,7 +1086,7 @@ opp-27000000 {
 		};
 
 		mmss_sfpb: syscon@5700000 {
-			compatible = "syscon";
+			compatible = "qcom,apq8064-mmss-sfpb", "syscon";
 			reg = <0x5700000 0x70>;
 		};
 

-- 
2.39.5


