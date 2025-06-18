Return-Path: <devicetree+bounces-187275-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 72850ADF50D
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 19:55:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6BE8818931FB
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 17:54:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AC882F94AA;
	Wed, 18 Jun 2025 17:50:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KLn/PbA1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C10BB2F94A8
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 17:50:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750269017; cv=none; b=PYcVLTCGd5pdT3DNt+vzYqM5ka1NBJNABNlYQUMJL1IDaez18PDl/5Rfpq/pVp3Y9Pupi/Ni4uAq12iiEuzZdUJ9/XKngW96TMF2/b4TMyizmOcOaMytOLE/iqhWhXMD4JggzKghmFxcL8BgbLyTrBLTzVicnA3ztLROjd79IR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750269017; c=relaxed/simple;
	bh=lfDD2QXHizWUOUackdjjGT5IKXMqfv7alla6JQhX4ME=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XS8UWsGDXGdYGYJPXOEX4Rh2VMIsEvCxNcZFLZI021AJzkFmOIBZu3irzjsrTA0cVnESXn655bJembAkmoo0BUvNnECK9X03tKLd+R4jevqndOeBBJH+Z+lAQLNqS9/xPcPYQEo4698Ocrm6aQAlcCOhmLBU7bESB7k5JKRC734=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KLn/PbA1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55ICH5vl013681
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 17:50:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tWwHy3Lkp73ob9Fzw3Dzl2RAH2AqbDJudN6Ojoev3Eo=; b=KLn/PbA1DoTOGsW0
	0D3anwe30AvgNN6UN8j/lu+AM7QoJ208U2kdnwEhpEpMipvhiI8AYeV2NadATb+V
	D2mTewkO5kCwwyFewqc6HLhs5DRUXuVlEOajOkbm3MQPB+GjoE/shz0RsDfRw9mS
	lzopX0F7duM8L/t+c7DjVh4YEvOzy3Ci1LWEJoVoZUP91ve8yPG0qZWozJFcJLlf
	LtdwjrMMZl8T8/C8ZYWuwUIUadmdui4qFYM4Aqj/504TYn6rLbwLMO4fJNr6dQcM
	AK6TGOumO6WDLwWgCkJeJhcpuzackHEOV7QlW6ReE8VK557MBc9w4Dbv8j7qPX2+
	rs0YMg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 479qp5uscy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 17:50:15 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c5e2872e57so1231228285a.0
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 10:50:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750268997; x=1750873797;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tWwHy3Lkp73ob9Fzw3Dzl2RAH2AqbDJudN6Ojoev3Eo=;
        b=HU8BXzeaE6qQephXRsJqUzUWkrqi8pasGpW3G2MT7WKIlrfwfdr0ynkXND3vs28so/
         zcyxKqWd2p3YawpTtxQMe0iuwwFPx6NyWhtyOZspl/m8KSPCcJCbB6zMUa8hF617yjaV
         eckyy0A87g/9Uo3L9N1ZZgA99++2zOwD2Me3mtdl2KDfnHwhQTW0TeLT6Or2wyvDz9Gh
         P276I7G3XfzBPOBwPFYVQhsTmJmo6qrlszykvkunU4u6i9WIhJQ5r7xR0ctdkkLJzXDZ
         ADZAuFji4dJRpVXHx31hV2QifENgPCrlm3SJhIwRda4EX3Ycicf0TR/9YsSkgFQkzIAM
         6gFQ==
X-Forwarded-Encrypted: i=1; AJvYcCXRAdnc4OsH++wcgGkoiTxUk/mr6Qhtfjbh4lL63DcxkIlv98+djbj9VR0WMoguJiAJJw8SlbMmyX1B@vger.kernel.org
X-Gm-Message-State: AOJu0Yx690Lb7xVlNa2RFpG8Yhlhok8/cIojoFdldmC/+giLUwBBd2rN
	3KmlQ/98ovXXO7SwACh0SIlyZfCQBTMV7w4bY83sGEAyCy91QfYYH+3EGuECh74FqAoWYR6hROx
	qGk8vvYm2VUK2uvC8rFvh7voDg7ATNDzku/3wC/96vy9Trp0i5/FjViybGSwWmS8z
X-Gm-Gg: ASbGnctjXTbi7VyJq5rj8ZHsj1RW+ByJEI9ce7mi29gNjk8FUHUn0Ir56UhSeYxS9nW
	35ltDX3bbEtHIEED5LTMDvw4AxPBtOFPpfxnATbuxWLz3XXx3CBf3KvPuXiw7YlfcdZypeibvi/
	YAQl1UwU95afEQwgWsL3gnKbDyNZN/iqMAlgi1bMc4i29ii7O2Ut7l5jYauAfoOdqWf3Q0McG11
	3fYFNWBvJINTgqnh2SZrQTNq1lvKkBK6WEN9K7tXgNKwlawzUD/L+RRXacGUYtlgo6mIxgFn4Y5
	iFW2cxOI1RlyG0LAsQksVlfbGmx5n8FI8zxRSvOryhQwXjKAiJ2HBd4FdXM6FYIvjpWYKqvtais
	6623p4zjAv7BRvfL9c6ZPjL8dw+Q2b3MQGos=
X-Received: by 2002:a05:620a:3195:b0:7d2:1a54:f646 with SMTP id af79cd13be357-7d3c6c0e558mr3239914685a.7.1750268997402;
        Wed, 18 Jun 2025 10:49:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGJ8jb6poGFVV6F7nCpJD19udVvjHcsMylPEnQlIw1RC5gDDZlxn5SXdq6NiVC76favetUMrQ==
X-Received: by 2002:a05:620a:3195:b0:7d2:1a54:f646 with SMTP id af79cd13be357-7d3c6c0e558mr3239910985a.7.1750268997000;
        Wed, 18 Jun 2025 10:49:57 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32b7b43a98esm2911131fa.65.2025.06.18.10.49.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jun 2025 10:49:55 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 18 Jun 2025 20:49:52 +0300
Subject: [PATCH 2/3] arm64: dts: qcom: sar2130p: correct VBIF region size
 for MDSS
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250618-sar2130p-fix-mdss-v1-2-78c2fb9e9fba@oss.qualcomm.com>
References: <20250618-sar2130p-fix-mdss-v1-0-78c2fb9e9fba@oss.qualcomm.com>
In-Reply-To: <20250618-sar2130p-fix-mdss-v1-0-78c2fb9e9fba@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1096;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=lfDD2QXHizWUOUackdjjGT5IKXMqfv7alla6JQhX4ME=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoUvxAVbrqbqI0kYsNshCkKkDoROrOWsCHDJBw/
 YeprufWKDCJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaFL8QAAKCRCLPIo+Aiko
 1Q0RB/4+ANzSYQzOdpkq4SzgI6yGHE1N30TAOErADixJS0Nrp5pV94L0zDF527fPuHXtljmVt03
 B2eUQOP04wSY6mjhcur/GiIvO5bEJl0BOavc0bn7gJ3Edr/6bg9lmLsqKZOJa52i7M3yW74z7M4
 SdUa/cAqAa0rfjYjgbVu8wnA/laxF5hyeQ39/HwO56WfpiB0rc/Exatem6l1L9+w30mXcb7MgWq
 m+O4pevSy1IKVyhETB06XQG+E9s1N3sUTDj49giulyvM09Sgw6seYV1slp7qdb38DrEbseMPUDs
 58KlVXAzo6HpfmE4S8GTTds9HtKyiM1fuNou0eASXf9tkU+j
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: 4LdatGvJpv6PKiEk4ueZe6qMwu-_l07B
X-Proofpoint-ORIG-GUID: 4LdatGvJpv6PKiEk4ueZe6qMwu-_l07B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE4MDE1MiBTYWx0ZWRfX5wJBwuC+DMH1
 x90t24FnzzcvqYJTO9QwrMGvW5G/CoclYQuHG4e2i45EM0Tmy0C+yUu4wPxI3pInlufGNJhCLiI
 5CQbTREp1T/UnVALM0hUPgLkBUn2D6uoUgE01RbiE5wchis+bSit6VEBepqVioUCx5rYTYLBGP9
 cCyPY8Lh9BjaWlASsPrMNfcQlXDnrW/BYXUjeeShhuK43MV/G6Y11d7WM/O7muAymvDrANTCfBy
 SNTX5CWSmixc6RlZCeaEe777qY/VdCCtGTjaxPJ4mZwocSZmm87FMgxW/+TdCyjJ/EuliVsL41G
 kSGcbASSAqG4VzXStaWV3VtBopbpLqL3Q97iPVRFPkWQoyYZGOPUCJeHIGSqHwONmaaGrpGQOaw
 dWPNCRBCq1LNnDo97iP2LQItNUDG63ajmFsP+N93cm0qCO4T7chqYoYFDSt/WPVVxjHLQxNb
X-Authority-Analysis: v=2.4 cv=fMc53Yae c=1 sm=1 tr=0 ts=6852fc57 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=nzbLNaof8OtCLlNVw1IA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-18_05,2025-06-18_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 bulkscore=0 clxscore=1015 malwarescore=0
 mlxlogscore=720 spamscore=0 lowpriorityscore=0 impostorscore=0 mlxscore=0
 priorityscore=1501 suspectscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506180152

Correct the VBIF region size for the display device on the SAR1230P
platform.

Fixes: 541d0b2f4dcd ("arm64: dts: qcom: sar2130p: add display nodes")
Reported-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Closes: https://lore.kernel.org/all/c14dfd37-7d12-40c3-8281-fd0a7410813e@oss.qualcomm.com/
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sar2130p.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sar2130p.dtsi b/arch/arm64/boot/dts/qcom/sar2130p.dtsi
index 6d7d4f05d502049dd6dc404317412c438b11d081..d9948360cc0198a768598f60302097e1143cf1fc 100644
--- a/arch/arm64/boot/dts/qcom/sar2130p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sar2130p.dtsi
@@ -2053,7 +2053,7 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 			mdss_mdp: display-controller@ae01000 {
 				compatible = "qcom,sar2130p-dpu";
 				reg = <0x0 0x0ae01000 0x0 0x8f000>,
-				      <0x0 0x0aeb0000 0x0 0x2008>;
+				      <0x0 0x0aeb0000 0x0 0x3000>;
 				reg-names = "mdp",
 					    "vbif";
 

-- 
2.39.5


