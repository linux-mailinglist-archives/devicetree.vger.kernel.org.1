Return-Path: <devicetree+bounces-197729-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D71CB0A74F
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 17:30:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 912C25A6202
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 15:28:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 004AC2E3AF6;
	Fri, 18 Jul 2025 15:25:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SQD2puhO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B1BF2E339D
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 15:25:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752852348; cv=none; b=XUTAq7SuIYgLUP31578BYEcYLL0C+2bNy6PNACkN7596eg4jfFre18PPvXCqJIZ6owEzY6hRFRK1xIKDUJqdL3RyGp9hWQEJSzpFCKCXoAp13MO8fZymWzekdWvEW2kAIl1BWAIp4NNbMYrgqg/N2B/FIQ5/PcO/SvWQJXUcuT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752852348; c=relaxed/simple;
	bh=BYnRfHJaDXvngWQZ3OYnZquLXtcmhMchLJCEZgpFfwM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=F5iOiRtzzXr3Ino+NezDMRXKU+bB0JlLXp0W2mIAOO1VIJ+95iU4XzwxpvvSmf3kgXYE3vsnOkOHxUbH85dnMaX+nJQGxGhFZGrWFmBj/UVVeXl3xMRu0355an5bINVYxQEd3+XuQQFhkNfX1GevIogurcyXr74jwDYXlY5cYj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SQD2puhO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56I8tPwG007424
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 15:25:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zLCM3cPYa2rzNnUypN3ITU/Q8s6JSMH9shGW4VoUJnI=; b=SQD2puhOK5hYvHhP
	3m+kgEzTNt2zEAG5djlAKCSk2ort1Qs40rzc2weRzj3oEtdy3ynZE8hNPd1yzfV+
	VojCdIjit9zamhyevcqf4qRdertGB4stIQlIpAk3FCbuvGm0BdrIDFWSKwYcMTBZ
	7sjzU6CYrBdQ/WRv594UZqiRAQ1PxueZKZX9dypAB3mp/SynGz8MZWTtqi9KfBch
	vyPwia/7rH7uRdagmbOOYCMwd7xxWWf4Ys61waiO8x1LZ+8MC/vKHArDqroiOUqX
	D0pl7T468Cs6SNvXXguHkDT0i8NizttdL/lZ82ST/fK0+FX2MYY7eQYblMEmkGMv
	rwS6Ew==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47wfcad7x7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 15:25:46 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7e093bccd5eso340718885a.0
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 08:25:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752852345; x=1753457145;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zLCM3cPYa2rzNnUypN3ITU/Q8s6JSMH9shGW4VoUJnI=;
        b=ctrXGAXlgKGzF7kORLJ9S7fGnLCBfo/jkLey4HaTH1rUhhtTS23tDqHNL8ZI/DFgQx
         kxgCNSBiPEPhaf2Xi/PV6DSY1MPqUCNRlumP5RiopOOIYZzlgeWEeEjs1qgHn2vsosWQ
         Sta0V49+LvGDl13yEhCJsDCD6buG+GYYXHoeIqDYJ8LjdycHeAiweiZiY92mZgw0WfEk
         jtAPVmC0PxegoybE3l22XnojAod6jyeKZeMP+/uvPuJxtb+nOPJbMPbPyValCLcVQkQP
         KYbouk9whYI/1LnVJGPc4xFMuXF4bS3Zli/pA1BIJ2f49z71BdCxxQJEHJ8Igtif+Gx0
         UB5g==
X-Forwarded-Encrypted: i=1; AJvYcCWfE/MzXc0wq6Sqer5xAweYPk82fwnBCadQMOWvfzmXmOvQWUJYRkHAmmemKtVci6yV/4fzQl8FUNVt@vger.kernel.org
X-Gm-Message-State: AOJu0Yyy+aEyG8sCq3pLjXtwgdhzNUmOzjjN1UJX7bqxv4ailsm1m6/r
	Zu6STQuNm44szsDVMA0C3Y5d4Yt3llknDd1HunFIQA7W1R9tt/4mprI/qUP5p4YzUEsvrfyk9DU
	CxdE687EfnoH8vQJcNoplbwi9CjFyE8w0CCH7ZiSAhayfvIRdGEsicrgrfetm89AZbPJuIgDZ
X-Gm-Gg: ASbGncv/HrgSmAGO7dfpgexRupYY3Mk+HX6MvMGF1F6l6tKErnYcqliOwYkiblwYnWz
	XgpBVVI0PLp4jEWkdk0Rbri+xhAhoG+8mJTKZ08soYgyCrC5c4kbJ6TIuCOh4uHTdgClNtOF6fi
	FymOk5bZfDvHcw2oWqvPLv57pEN8fW7IyUanSE9ju8Ouw7zZ7vvRdjiKtS+F6oiNfz4mPy4Lqs8
	cw+6FZQT0McvVsixTMEVAVMlfvvwCA3gSf5GJoACqhr7rpGuXqbZs35D55ALDmvDMaNf/1TVa95
	vkoX4zN8A2hP6vzvhNsY0GpblIJMS9Ouy/v8rNotDU4woUVb13TKhDVJXWmPkW6hAwm0GQxPeyB
	fRQQbdYFek90UX0JM++qmp858DdzDq2/44r0Dbanlgxgm8lRogyAv
X-Received: by 2002:a05:620a:27c5:b0:7e3:31f5:c8e6 with SMTP id af79cd13be357-7e343636bfbmr1621485685a.54.1752852344788;
        Fri, 18 Jul 2025 08:25:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEuh+0AlxBLgPmVe3eyjw7k7tHsmQTFMsVPrzZnfI81Th8/7Z3gjsDWeTyYmw7opS9dxnkB2g==
X-Received: by 2002:a05:620a:27c5:b0:7e3:31f5:c8e6 with SMTP id af79cd13be357-7e343636bfbmr1621472785a.54.1752852343300;
        Fri, 18 Jul 2025 08:25:43 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-330a91d994csm2466821fa.84.2025.07.18.08.25.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jul 2025 08:25:42 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Fri, 18 Jul 2025 18:25:39 +0300
Subject: [PATCH v2 2/4] arm64: dts: qcom: sm8150: use correct PD for
 DisplayPort controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250718-fix-rpmhpd-abi-v2-2-0059edb9ddb3@oss.qualcomm.com>
References: <20250718-fix-rpmhpd-abi-v2-0-0059edb9ddb3@oss.qualcomm.com>
In-Reply-To: <20250718-fix-rpmhpd-abi-v2-0-0059edb9ddb3@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Ling Xu <quic_lxu5@quicinc.com>, Dmitry Baryshkov <lumag@kernel.org>,
        Tengfei Fan <quic_tengfan@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1054;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=BYnRfHJaDXvngWQZ3OYnZquLXtcmhMchLJCEZgpFfwM=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoemdy3oXmWhQOnHxAtoEM3RXwiGDR8sLb1FD5J
 6HfHxafFKOJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaHpncgAKCRCLPIo+Aiko
 1fOHB/0ZGrjmxUXurqUnj45Hy/MLUKJ+hr7LBSN5QGm59MsGeHJd9SYnvXICto8fFjYmPCJOjYm
 rHYflZ5ZxHRQM6Yja8HDZdYe3swJmPobdNzaU1vJgUWMIcr+6oZ07HUg5VpqhJDqHxsSnbKrw8p
 bbf9fNME8tbNwvnj63pZiKwdILpPWP8R6G2Kuccke5fIX/05ga8xYJ59J5fai7U5aTMb5NEqeiX
 IxnMDsKcciC63SI7JzObOwjCsH9dFa+kF985gnlUey2s36D8NsmjdKdTlokJU/EgQHr/Cg+45xP
 uTOjRaA1T9Jbp8+k5IAD1fWVrbA0y1TzRZe1vZf+Bosx0QV/
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE4MDExOSBTYWx0ZWRfX4J3U73s+enTw
 FxNIjXXL/2BRSQ6QZRruJIdHXw8Bf0+TmobZagk/b7X95uyy6G6VwgE8fXVAXJ1jORdihK1agTA
 EnTqDXa6s8vja+YoOcYx2AMfQoFiCeqbFVH7/Y5aBPoNO+N4nCfMvmvNHYyHEj4LXWdkBMRpMRm
 +80WZEr1yXm29cSUr8vQKHxCwq3xAwY2Xu0BHKS6PNvo9ejVpaTTkYgSkDVImCiyekIYExkEuyj
 pzn7ecpR2uhsxtwcBL4grHDhOCWH78IpKZgYErK9OuFcacs1jFZFf2SSevHIibNo1PKOB7oECjk
 7d+/s75gXw7q/aCAt9lS26oU3+xJFLXcCDbzbtFMdVGGoa5hQIMTnMDhKMBjoSLx59jtkk/3CJs
 CVppWxNH6Gm5s54M/uoGhJNXt1tvhSp5aIqdAUFxWLuUrmUezrNhJmej0ni51nb2CEyYRXle
X-Proofpoint-GUID: CBV1QVCZ1SYUKZeP-RcjFXeR5p7I0x9j
X-Authority-Analysis: v=2.4 cv=SeX3duRu c=1 sm=1 tr=0 ts=687a677a cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=7pnVX8DWB20M0aN1Zv0A:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: CBV1QVCZ1SYUKZeP-RcjFXeR5p7I0x9j
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-18_03,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 mlxscore=0 priorityscore=1501 bulkscore=0 phishscore=0
 lowpriorityscore=0 mlxlogscore=718 impostorscore=0 clxscore=1015 adultscore=0
 suspectscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507180119

Commit 5dd110c90a50 ("arm64: dts: qcom: sm8150: add DisplayPort
controller") specified SM8250_MMCX (= 6) for the DisplayPort power
domain, however on SM8150 this indices maps to SM8150_MX_AO (= 6). Use
correct indice instead (SM8150_MMCX = 9).

Fixes: 5dd110c90a50 ("arm64: dts: qcom: sm8150: add DisplayPort controller")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index abf12e10d33f1ce5c74e3e9136585bcb0a578492..4b347ee3244100a4db515515b73575383c5a0cb7 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -3908,7 +3908,7 @@ mdss_dp: displayport-controller@ae90000 {
 				#sound-dai-cells = <0>;
 
 				operating-points-v2 = <&dp_opp_table>;
-				power-domains = <&rpmhpd SM8250_MMCX>;
+				power-domains = <&rpmhpd SM8150_MMCX>;
 
 				status = "disabled";
 

-- 
2.39.5


