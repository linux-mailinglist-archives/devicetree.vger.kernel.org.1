Return-Path: <devicetree+bounces-226319-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 06B0BBD7111
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 04:22:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9A7D84F1E59
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 02:21:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 172693043DC;
	Tue, 14 Oct 2025 02:21:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DAcJC8AI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8154B3043D5
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 02:21:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760408505; cv=none; b=KGKifdcWWHfY9byZmfN/F4cuXMSreh4WUXrVQkAc6K6rr/O3Qste6Unr2K48pldpw2blRZuZ56GzCa9NWLzjb9Kpj2vfZrR++9MTK2kXWIwc59/MSjAkj7QG5jnjkezWqriRuCWgnL4/vs7hVvCj6pAXFjoFkNfA1tOUWJWjdq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760408505; c=relaxed/simple;
	bh=7P/Mjb/RILrSyr86CTC8+aPwM0m8i+WFJ1L4pDQSCEk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=sBNXOyj75xRCxFxzE9We8RuCttTSQSrfP8D1f/oLbO9IIjcG79P4bEfb95bh8D8SfTg1ViYSh6V+5WSq0iRmYm5v9Xh3mwX2jj6CRkywMExmKt9DrwUReV9XohgmwYpzT7qfT8urCSKs49SBfWZ8Uh7g5ODJZPoQSOn+Gzn3SSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DAcJC8AI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59DHDEd1019078
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 02:21:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=D9Ft7XtSCuw
	tEHNJ8fyMK9A5/LjPjLdSBZAdJsVq9gY=; b=DAcJC8AIpKBLtcJSKkf+Z+snwjh
	iIVvqflE96867iaz+kXN+eTzkes+vLxOtxjNBF6P0rYIoPesIrsmEprFakdJDLoa
	0AgxDkMmzskGXEWdhcBk/v+mGpy3oLzei0/qwahxPfnyOhANzyQZH8wIsBoD+W/9
	M02/Egy9B0vZIZ2nt3uN087gPsEfzaUD2k5PwZATAMLozOzfRovaeKZmrlVGIfqE
	oirisjFKEZcnkMLt35IZ5bjCZCRT+xVW7Ie472uDYMZM7FpNExaw2usliNjwvQWt
	2Grs6clWhgPB+KDttGF3nDV8pqzeAlfhhUsIgY+x0YsGgrmc/6o9u/W3cQg==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qferxu23-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 02:21:42 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-32edda89a37so8650360a91.1
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 19:21:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760408501; x=1761013301;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D9Ft7XtSCuwtEHNJ8fyMK9A5/LjPjLdSBZAdJsVq9gY=;
        b=IqQ0Gs1w+edMM9pXcDS81mq2s5R3VbtAgcaGW0w6L4zZpVvFT8WC7ZsL6fqTIJITwh
         DHqukyw6X7ixndABuqHgGp4RMVGZx3AzkjW+0lpk2NjGbJDBqyR1wFmoWkIjD6skBwUK
         JAW0XV4AR7XZ3jalJDwInaECP7XAdUNbqTrhNbMZzKiTBS97rrmRpBeKQNJMLfoEjMeD
         Q0xCYeYd939RbKHO0Q16tsEkjYk2CDmBVIgUyFuBKPbMMh4qljUoNoCzio9/AFR7e/gm
         9w+RCPAkwYdQ0fxqvuJGoeDizsfY2k7cNYai/jIkfBW6BxZB8lbVymfn7s4vH3TPCEty
         ihlA==
X-Forwarded-Encrypted: i=1; AJvYcCUSOjkXamAOVGEfy7j1K2WG/h1SNGYDCWL3kNegEZZOniprxt0sHwAdOKyrKO0VK6rHqUzFMhQ+5dxn@vger.kernel.org
X-Gm-Message-State: AOJu0YyGE/rcalHFzRJsPbie3DZZ7AMEkQ14WARVW8qZUhwRzGF6ZcJ8
	G+uwdkWD0umYFz6Lzjwh3TWzek/FApBkUwWT2Xn6cFOQ8QG/Fj4SGXEjkKYjtYSkogYbL/gDcgx
	qcG+LWxhU8nV+px+Z6cMseL/bOqgZQ9rSjlaGVDj6t9lu8r7fVeByBzlgdGMPj9hF
X-Gm-Gg: ASbGncsAvFwJlz1qoI/6lJs7e3/hga2+yVddMUVva5aQWjv4pB3BlRuerN8mgMwFPQG
	qnRe0e+yXVwTPG1eYTIGPg2MvELYOsj5Mnw7D+wfvKxWbJ3atUDIfhhPIgAfC3S20lsD5D/7YBt
	i5sdCcpvNMZ5r4w+uR+/GcHfgb9TDP+qYHmraWH0Q5nNwId09GHJwzbMDQwTC17B4H2AKGJ36Yx
	CKE3m85JOt+DiEdUIfIRYcUsvvygrXEyGNpP61DS91gTTCC7A+m2Zj6KuIOkpU+NW0iRZCRDrkR
	tPFS2KrM8XtPmQJ+o1/KUnqZ5yuTlFbBk+JunS7Pivg3LMFNHFujBcFkvDSZtLouVhlxKaTZIO1
	28g==
X-Received: by 2002:a17:90b:1652:b0:32d:d4fa:4c3 with SMTP id 98e67ed59e1d1-33b513cd9damr30188451a91.31.1760408500799;
        Mon, 13 Oct 2025 19:21:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFZaeDbQuCRtuJqKS6dnyGZ+CH6r1Kps2oEH5rhJK8P72l5hXvpds7qoUKbRUfaNCKF4WTfTw==
X-Received: by 2002:a17:90b:1652:b0:32d:d4fa:4c3 with SMTP id 98e67ed59e1d1-33b513cd9damr30188416a91.31.1760408500320;
        Mon, 13 Oct 2025 19:21:40 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33b61aab6c1sm14006978a91.13.2025.10.13.19.21.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 19:21:40 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH 2/2] arm64: dts: qcom: x1e80100: Fix compile warnings for USB HS controller
Date: Tue, 14 Oct 2025 07:51:21 +0530
Message-Id: <20251014022121.1850871-3-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251014022121.1850871-1-krishna.kurapati@oss.qualcomm.com>
References: <20251014022121.1850871-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=R64O2NRX c=1 sm=1 tr=0 ts=68edb3b6 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=klVtoc-wQiETt9k0NaEA:9 a=NqO74GWdXPXpGKcKHaDJD/ajO6k=:19
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: 7JschOKeGH3ZJZXNQB2MZvsUbC2SVYJw
X-Proofpoint-ORIG-GUID: 7JschOKeGH3ZJZXNQB2MZvsUbC2SVYJw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX9TGXuDFG5Tb0
 EC5y3/kRaiimWfKPgI/R6SDJnntcMmz++gTCFQW9nh5QuFI6z4+xHsteNHoq1IhhoJXcuKQi2Yo
 n0VDqNmf+z77D7AKsPKsQJUHRghehmM+rzUTuRmlWVRuWGLoZgGe2JcicSKk4P9qjRYmmd3MEqy
 0ivK39d93Cazy+CSByAP2PAgqXuskjuIJT+anU2+6SjTEL2Qd5QlmHaQataAdEUz2JGgCcjfpz0
 eeabeRV/sBSbk6oXw1TgUywz8NDhx9qJVMVheMGuxA9/TyKqDI0zPNPBLZ2qXVDLJECyBh1t3zx
 6Sx+lST4mg5i12bPF48OTugKcIFJWrnmxqQiipmtAF12VzNnLrseYvda/srB+LNVpH5r0gS9a8k
 6hF4cYlqkPYoRb/MBuqEY6Kx1SvX4Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_09,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 lowpriorityscore=0
 priorityscore=1501 malwarescore=0 adultscore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110018

With W=1, the following error comes up:

Warning (graph_child_address): /soc@0/usb@a200000/ports: graph node has single child node 'port@0', #address-cells/#size-cells are not necessary

This could be since the controller is only HS capable and only one port
node is added.

Fixes: 4af46b7bd66f ("arm64: dts: qcom: x1e80100: Add USB nodes")
Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
Note: This patch has only been compile tested

 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 11 ++---------
 1 file changed, 2 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index 56f787a8d821..f66764299290 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -4926,15 +4926,8 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 
 			status = "disabled";
 
-			ports {
-				#address-cells = <1>;
-				#size-cells = <0>;
-
-				port@0 {
-					reg = <0>;
-
-					usb_2_dwc3_hs: endpoint {
-					};
+			port {
+				usb_2_dwc3_hs: endpoint {
 				};
 			};
 		};
-- 
2.34.1


