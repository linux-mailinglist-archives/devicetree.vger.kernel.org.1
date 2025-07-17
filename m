Return-Path: <devicetree+bounces-197333-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 079D0B08D82
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 14:52:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E094518966C1
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 12:52:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDFEC2D8DC8;
	Thu, 17 Jul 2025 12:51:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TXv1jUaG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373B52D8789
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 12:51:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752756707; cv=none; b=TcpqkarNHRlPuQ60qXAttp3K4z8SVb//8c+X/Ltg3VKYQ6tHf4U4Vml18Qi6xSfuRNVB54LVaVAW+9rtSl60BfTclRLVuSHpdVufUW1SD9qyLQaV08UdL4oog/boOT2M9lgmcwn1cy8GOujuczHRmjizLqOqGEkIy5ueycS6fVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752756707; c=relaxed/simple;
	bh=avnk6sc8EHSeOS7ES2prPQK2MQlrFEYK/e/4co5pN+A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Vs4JelvK1uc1V+GJZkHS0zriVTiuN0PENxokjMtmf8rMcEiAVUyOQ44OrABaFNmEMPfGEczRL+75+/kANd3baNtz8EqYSLi0xYwCJWWtGZKJmyZGXrqtaP8ggijWsCzzDXeCLrLqiEQrtkRQXt+cslr+af9RerQj0X75IlwjT1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TXv1jUaG; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56HCEgNp007306
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 12:51:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9bzr1TaVGkOfJPBjDfmJ+dlX1XuUnIuMJk+rn5ei2Ok=; b=TXv1jUaGkMiw9z4n
	dxZrogRMLuA3TH7hSzGhmTxCMnpUsev5v6AcJxADvMStX7hZP2R86mq+jNWlAqKY
	aQ02xK2QZxM0KoEOtAvTPlAR+ExADu+01B7/wDDgWSBE2K2GaRxfClZPrfC6Ewlf
	48bHAH2kr2E3TwY1yG1pYEra0TPlmHN3vso4p00HgY85m7uU8aLp8oGL43kKCJP0
	n3rhrN7Q+vDvmI9IV0mCXXfN2COryDoDLVyRkqGRv16DLdjvOKo2486cWKqlIQ+c
	aaMnfS1lxn3LCvlpAql6isu75Bicl88AMKze6lrY0dPUwO5W4ZjmtLeETxWnoJzi
	PrTQCg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47wfca8v7h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 12:51:45 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7e3452c060eso74321185a.1
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 05:51:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752756704; x=1753361504;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9bzr1TaVGkOfJPBjDfmJ+dlX1XuUnIuMJk+rn5ei2Ok=;
        b=WVlVzrKF5N+w6683kgjs6CK0F/spOWVDA9F6NLQaKgfqgRUDwYQ5RZiH1Fx/v+E9r9
         805+6f54IN/hpbBxKR70HoZnjne1tFgFKjVt+owOteMmXboJIJI5UYRCnFrUYiQHefEU
         uGht4GALIBOHBrC6EsDPsTxl7IhGDiPDFfOkl44FL8+p9kEyRJgjAxz6QU3kVM1Nt4tT
         sc8z5xZ18uAlWZ//hWzjiIPe0T8bQITRFRy67Z2UCuXzLMMwZ3Je8vVreqAYfX0uhqNR
         fDHjf3j5IuP/eGTbTSWubdo/CPUDG8gmWC0GQvIDUxUUCCf1hyluKMP4iVIBjZqEHMpi
         PNUg==
X-Forwarded-Encrypted: i=1; AJvYcCV8qC/M/Xyjaue+cTR+YVfX2yu8RmeIBRfMI2QZr7zSAfvgUxDLaeRi+LjXBV/DUagHcT90reaXyhqU@vger.kernel.org
X-Gm-Message-State: AOJu0YzWIEF9hZbR08qGB5PI7yiD71K6U6oS+hvrN9xYvixfhEsYrdFY
	JpOUOvKK7nJfesPVKTVZkEvGhmBRJ9RWJgx6A9ycSptvyZQeXw9UElTz1E8PtO3xU7xyr4f9BEs
	dgnTrYDsH+m0jxQQrvZQQiEJnwv9tN+SY0A1i4fkbyVEeMZ1dxvRTFD2qfc+XSYhD
X-Gm-Gg: ASbGncs7Z8iBeA3MFeLiq4w6VzbMD7F+UBJmKdP6W0iZylX+/YCoALkxXP9AeTSkdjl
	chHHRL+w3gKhih1xA4zgFlerQNA8I4KsESeclpDsTOJv7n8k8tn8XR8ttxYn++gYp4XTszD63Yl
	HLnImwoYh+Jm2WQEG6xkxxEIYADHdOo03qU8g8c7l2w6N0ZwTOfP9uASdbGnKwvehgMwqEp/+xj
	7e+IUjC+I67EXti5IxBMC0rf7UnyhsGBfBZEvn323xBLsIBNOZwM3yidPcQKoGkgTIKP5dexMe6
	GcQo2kVbp+Mt4PHfi4tnvFUepDv1usCgyOH8sPbY0MFugdyy+kChpqcsT+IvdkXShncrJl2YVxk
	Nn2ouon9/1eaE9XUYkyGRdSbiCC3eYJY4SCNLuD9nXIdjWIMd+odJ
X-Received: by 2002:a05:620a:63c3:b0:7e3:3836:b2e2 with SMTP id af79cd13be357-7e343617261mr981666985a.48.1752756704297;
        Thu, 17 Jul 2025 05:51:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFBrP9UwwmwMrpp19kw5Ud4uZADb4Qpf7uPsYlVY6B9Br5gnf+nzoh6J5bkwRBddYMkvgY8XA==
X-Received: by 2002:a05:620a:63c3:b0:7e3:3836:b2e2 with SMTP id af79cd13be357-7e343617261mr981661885a.48.1752756703651;
        Thu, 17 Jul 2025 05:51:43 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5593c9d08fesm3032872e87.126.2025.07.17.05.51.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Jul 2025 05:51:42 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Thu, 17 Jul 2025 15:48:19 +0300
Subject: [PATCH 4/4] arm64: dts: qcom: sm8550: stop using SoC-specific
 genpd indices
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250717-fix-rpmhpd-abi-v1-4-4c82e25e3280@oss.qualcomm.com>
References: <20250717-fix-rpmhpd-abi-v1-0-4c82e25e3280@oss.qualcomm.com>
In-Reply-To: <20250717-fix-rpmhpd-abi-v1-0-4c82e25e3280@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1098;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=avnk6sc8EHSeOS7ES2prPQK2MQlrFEYK/e/4co5pN+A=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoePHYGkw/Rph590C+UEwl4DnZrUOVRJn+NeX96
 gfPgIBO3pyJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaHjx2AAKCRCLPIo+Aiko
 1aY5B/4ktrdchoWj/19HvXv1ozvYVpbwr8rM1boFE1OPTarm6mFCOYCl+Fxu3Xwc0LjF+67NNk+
 eRVihFkq7YPWJmVPEQhjOieEtalR1r6hMDGCwm10nBBdbxD5fyxUeUgawIpDAYz4yNnTCQC2/ya
 e5DFpX93SZV0rXO6b1wiX2sB7E/0x0KDnhwLYEvDYOCGivZSkYxcDbTAYjOnWpXj9gSSHq833rx
 DWx9/OOlyEtYa1GQa2mX8jTSPqeWBHiCr3XOHiu+LeoStGdkEu0tVv3Al3AvVj6V/NdIs6x2/xL
 fKuRO4YpGrsx3gxqttwbw/hSiGOWVPA0dumdcNpJBr1ci5j9
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE3MDExMyBTYWx0ZWRfX8VmHQ2T5gB0H
 kw2ZMIHNmimTaQ0lNbAeZwwq/2TjXyPhjkofAnxWGRATlkYc/T2sgRulzMJcDaFRFobEk2Ipp3H
 LPCUrICYMl2BpezKz+I5fy0oIiqeYHwqyv3lcUPFLF+XBJUjbdgo0Jk3NLnDOYvQes+M8EHjTTy
 0sfquCOsUu8gkFcjbfexXixa+CdSSnGV4bUrenoyq9wG2YlqNVsjh+CFVX0KY4qKI2BXIZ02SoU
 XPb20ed3x0IHK0xuggm5SNmMIBl2+UwBbrURfvL+q2fLW3H7ZwGWIZzOtH4aESZldhZ4l4faZNB
 BG06Dyu3hddPJ7/UC0eitkf3xK4I0sF5TpFfBKdCMTeh9lq6FLEi1owbGFufjWBJUfIVmoR6n28
 /2sKym37US4BZ3kDtWNmqNZ7j948SqnNtB5GDTSEQvJa/xbM3VSSbJRSyv/xZq8SEVm+LL4m
X-Proofpoint-GUID: QlxbNQpoJShKKPqY73eyhVJbug7SJ-xp
X-Authority-Analysis: v=2.4 cv=SeX3duRu c=1 sm=1 tr=0 ts=6878f1e1 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=e06P08YCo0CmzbESZgoA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: QlxbNQpoJShKKPqY73eyhVJbug7SJ-xp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-17_01,2025-07-17_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 mlxscore=0 priorityscore=1501 bulkscore=0 phishscore=0
 lowpriorityscore=0 mlxlogscore=745 impostorscore=0 clxscore=1015 adultscore=0
 suspectscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507170113

The SM8550 has switched to RPMHPD_* indices for RPMh power domains,
however commit e271b59e39a6 ("arm64: dts: qcom: sm8550: Add camera clock
controller") brought some more old-style indices. Convert all of them to
use common RPMh PD indices.

Fixes: e271b59e39a6 ("arm64: dts: qcom: sm8550: Add camera clock controller")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index 45713d46f3c52487d2638b7ab194c111f58679ce..a4ca06679c2f1eebacdd5938e380981c1b17925b 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -3623,7 +3623,7 @@ camcc: clock-controller@ade0000 {
 				 <&bi_tcxo_div2>,
 				 <&bi_tcxo_ao_div2>,
 				 <&sleep_clk>;
-			power-domains = <&rpmhpd SM8550_MMCX>;
+			power-domains = <&rpmhpd RPMHPD_MMCX>;
 			required-opps = <&rpmhpd_opp_low_svs>;
 			#clock-cells = <1>;
 			#reset-cells = <1>;

-- 
2.39.5


