Return-Path: <devicetree+bounces-226355-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6FEBD754D
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 06:55:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id EF7764F76FC
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 04:55:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBB0E30DD38;
	Tue, 14 Oct 2025 04:55:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PVaUtJPx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D31830DD27
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 04:55:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760417710; cv=none; b=POOC0CUVavz5DRZ98iKFWC9j7pfsmrH4PDM3uh2oletp78eEuJNN82C5P4KTFlRYA4L7djamExZKO3W7HomSm4v0Ii2bjh+TCO7mEPh+NG6hT0SDSjdMYk6eM7CIEvn6pc9Tb/Ys2YuD//9epH/jBn+BTC70+tcnOPIvw5sNWrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760417710; c=relaxed/simple;
	bh=WUwD/+EOVA0PudMw8JrBaGqxsgVvBRhjfglghU0HMKk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=MWy2lPV6YHj6pz7dwK1fznsH2ZFYBw3Yl9X5f1EQD4llrTImLk+e+MdLzXme/I61QQlQQ+yuvdXDt+7ZPc2jKwbzZ4ADCMNwVM2QN7CKFiCkGk1n+DarVEQ3uDuuQPkmU7e0yVbefyBKJyYgBSy7JnWxOrjLKfOyP1plzenIYLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PVaUtJPx; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59DHDF9b006416
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 04:55:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=pdYxO6YX8ObCG67nQOGWJK
	rMSPspmfPvmuJK/4LnsRI=; b=PVaUtJPxaExRN52z3K2yAmHWa8f8qbDiICyn5H
	OHs+thoo5s6yxTXn3ZI1oUyPGqbaeIYQZmWDNvRG52JFJwQK/XgZZohAXdgQtuJs
	EfCUy3TuJGEwjhFxzdAyjEejvuvhg0C/+oGM11D8yANSz16p6PEgmX1XGmo9rVT5
	+zSN26e6C1GGW7ipMf165wergj0pD9LTegRvfSpToJj6gcIawzuFwa+5WKN9ZF+X
	ZoCv83Q8yjWFAm4S31b7KLzoZNZtVDEoI1TW/0Ei0W/vl7W8GDoFkpowq8a/Yx6R
	lRKb1tmwfOcwf5Qe2sfvZsZqrG4lLfzoaYsFYjBDOX0+SuvQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfa87643-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 04:55:07 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-26e4fcc744dso56956205ad.3
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 21:55:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760417706; x=1761022506;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pdYxO6YX8ObCG67nQOGWJKrMSPspmfPvmuJK/4LnsRI=;
        b=F99oT8JzU7Wi09h4n0Q9tJsRCXlPjst+ccLMD+xSgZjA5mUTnezqih2yfIXeomTYBm
         M1EEjtzSIk56ieFEIYLbb594MxsWff13EYYKGjYn51PqaGGgqHy2mzdgJXLNm/dCqG3K
         lfEfjmmva+H7lYyVc2RfBgipFTeNq6AiDFCzZIkr9iMxlXHhvXimquccM/B6/EKbHmEu
         sR4ScBpg2lUITCeMPhXEzCVWYMClZX5U6RcuvbVriMUCZtqkFca5CMJP2N1m5uW21UE5
         ttURs6ZdGyI44/dD8vDdNNindoWSLEpXr5fbj90DGPBOoZmdz8tDpKaR2lZccIiK1AWf
         BskA==
X-Forwarded-Encrypted: i=1; AJvYcCUxEV0aIvzAd87TkhPTRZMDiHMithdbQOdejHbIP+9L0DW8H1LI/F2Y+qWg9YfHmQOhD+QEXdCGTxAZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yywr7Pxjqo7HFrp0Ih5Q86ouYWMBKj0qCnrp0aB7KSPrh+nYWF9
	zNL1MIno4TrYXPNu+BVhc95qUx79825IumgODrT00CwaiQsaBrxAx/gwlP33VBv/DzOm4G+D46E
	19Dz5J4m4WVt9wOZkNHvMmdRccLdlfTrh1ZkRszqTsTMaEf3DAKF0Ir/Mv3HdbkKy
X-Gm-Gg: ASbGncsdeT7V14IljgZESPUXuxELY/KMixc/XYngqRi4N/z2stVxO0qhyzGm6mu3XOC
	fsCej8eTRSsWbX0GCrJchhKcx0KJzKAskqVo/Z5ChGLooZFNJelOQPOPfM8/B2LOaktjghdv/KW
	Bk8+wru3/vSXaSbJKDOSRPe3yAtpedXydZoyVKBh9SPInEtBmA1+nQQdAjZCYJhbdR29Bk50+zo
	Gbz+pgpq3d7DXtlnlhLL51PPF9IJe/FYu6V6c0ly58xV2pphqK24wp+AD8mjIFmny+hsModnm0V
	Px7tNGTFgU8aZH3XrO3Zz5zlj8K+kQHB6sza0LtlBmrm15d0CJ3A6KLHkJQMd9CB/feduvUSn5s
	2+8vR1hH18anWKMWvRFO9i9ARNiR8Bc1Ik/WxcBqOX9FP109qsZt/aJe4GJ5jgXBMpyv1Gv9v3w
	I=
X-Received: by 2002:a17:903:90d:b0:286:74e3:3889 with SMTP id d9443c01a7336-290272f93damr297467995ad.55.1760417706394;
        Mon, 13 Oct 2025 21:55:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFLnUO2n6BsedE7/JplPFRWWo2eaoT7e42RrdmkV7uobutfCESg29gEQ1ugpJHjGY2FHAz9nA==
X-Received: by 2002:a17:903:90d:b0:286:74e3:3889 with SMTP id d9443c01a7336-290272f93damr297467655ad.55.1760417705944;
        Mon, 13 Oct 2025 21:55:05 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034de6e2asm151295105ad.23.2025.10.13.21.55.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 21:55:05 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Tue, 14 Oct 2025 10:25:01 +0530
Subject: [PATCH] arm64: dts: qcom: ipq5424: correct the TF-A reserved
 memory to 512K
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251014-tfa-reserved-mem-v1-1-48c82033c8a7@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAKTX7WgC/x3MQQqAIBBA0avIrBvQyYi6SrQonWoWWWhIEN09a
 fkX7z+QOAon6NUDkbMkOUIJUylw2xRWRvGlgTQ1RhuL1zJh5KIye9x5R6K5s7r2mlwLhZ2RF7n
 /5TC+7wdKC7B0YgAAAA==
X-Change-ID: 20251014-tfa-reserved-mem-22b9403d02c7
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Vignesh Viswanathan <quic_viswanat@quicinc.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760417702; l=1137;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=WUwD/+EOVA0PudMw8JrBaGqxsgVvBRhjfglghU0HMKk=;
 b=NZNE1gv4umCd6IBXb76jKwzZ0abJF2ZpzbQqzMwOS+gaI5qHUnenxr84pUQMfRUpS9140bUN9
 g8PY/e3g6czAw34aeeMc++RfYBZ7crxFpF3O68NYVy61HPR2jGQRyPr
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-GUID: HK0A-TtjfmYq_GldiUpnyw2xAK0R-hLv
X-Proofpoint-ORIG-GUID: HK0A-TtjfmYq_GldiUpnyw2xAK0R-hLv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxNyBTYWx0ZWRfXwQZ5oaEyrhs6
 llIEb9h6kxhmuZpIyZI1OwM/4glV/cH7LT1mMVWtcKgyOgqiBtp071x/skREZW5CW0ZVeecQXZZ
 A1yYdMhtp5jfE3pbasWs6oBNzgrt7rOgHaFDMCmlmoa27kaTCOa6M+oVSu+RMidOGDVXQTyEzAx
 pYlLeSlyWHhrNz9v0xUcc8NbgVK2ZdZBVWFu6JI9e/4vHOgcCtuu10HoxaGi/NLPRMcIp2Ns5MB
 T3FHTqEQuuc6x0IzrhUFaeyvbZ5wFRCPmj+LvmX1irDhWg4aLX4iiFv9vROMoJyq8vhGHqHFbT3
 LRaXnta73Pcg0kMfLvhqsFC9mvBpxyE4YvJolHz7BWNsSq5oJyNvKJN6D6QbLvke7cnRj4SFAKq
 zNnsuvinGwckNt8K68s8Lx1SHtBtnw==
X-Authority-Analysis: v=2.4 cv=JLw2csKb c=1 sm=1 tr=0 ts=68edd7ab cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=2F3ENMXdm_gDBiIvekQA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_09,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 adultscore=0 bulkscore=0 priorityscore=1501
 impostorscore=0 suspectscore=0 malwarescore=0 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110017

Correct the reserved memory size for TF-A to 512K, as it was mistakenly
marked as 500K. Update the reserved memory node accordingly.

Fixes: 8517204c982b ("arm64: dts: qcom: ipq5424: Add reserved memory for TF-A")
Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
Bjorn, this needs to be pulled for 6.18-rc as well.
---
 arch/arm64/boot/dts/qcom/ipq5424.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq5424.dtsi b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
index ef2b52f3597d9bf218ce7b73d8a65e6745bb26d5..227d5ce2975151c60f6c57cd11cbd16679ec2d0a 100644
--- a/arch/arm64/boot/dts/qcom/ipq5424.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
@@ -213,7 +213,7 @@ smem@8a800000 {
 		};
 
 		tfa@8a832000 {
-			reg = <0x0 0x8a832000 0x0 0x7d000>;
+			reg = <0x0 0x8a832000 0x0 0x80000>;
 			no-map;
 			status = "disabled";
 		};

---
base-commit: 52ba76324a9d7c39830c850999210a36ef023cde
change-id: 20251014-tfa-reserved-mem-22b9403d02c7

Best regards,
-- 
Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>


