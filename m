Return-Path: <devicetree+bounces-197331-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 32CF4B08D7D
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 14:52:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8485518960E0
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 12:52:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06AB82D8382;
	Thu, 17 Jul 2025 12:51:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PsG65V6w"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83AB72D6406
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 12:51:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752756704; cv=none; b=GeOjSfGl3QeDc/5FfQ9s/bL01IVX4lL+qLd2DQJH3WwRLCtmFCuHANZAObdsxWEhmvp2SEVIp2wy8h8mK0j6/UScBvwxLJVkFhM8HLrB7NFkLK7U5N00Lg0Nj/jYtAnLQpbGrWlNlhVRqbilyZFZ7gEKdbAVCO5gT0AWrw8O7mY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752756704; c=relaxed/simple;
	bh=Qk88581FUbK4p/GWT/1ubaIiHrFF5OiDLZOj+m9H7N0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=huFYmVQywcfWuN6WHqVXUzfI93RyJpGyNGWbolCmvaDHL4GontC+VlZJZzazoicM++V/DM6ian3rbxVI/u2oJC0tY8QUlN8wSmbg5WiswgdnrxwLIzJUgk1MpPEHt4j46F/vw3/qv1UQOVMWX5Vy/TY4cHSFeGG7N+RFBnhPoqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PsG65V6w; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56H8XUwS029884
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 12:51:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+ag0zs7yTwyyT5N+EMenXhXzqVE+SS4xEpUuAzDVO08=; b=PsG65V6wEFHT6IPm
	o48eAmeB8Lj6kdN7731koAa1kQXbPrSiOYecI32tXsSuRI0EtWAQ4HxNkXwkOnuo
	sdGAWoBbvVGDKi1Ndr8rlX1bpRETmi3Ho9QtdSIHznlJuySlaHeZKwxWwzwSC9+x
	nM5yN5Wl5IXEOrdHD7EGpBUQi57JpbMeIsf/gVGaMvfV9OOox0YjEdyNVuPabtQ3
	VGVyi3zw5zvLdzlWYW59K9NrXeuGhgNZfmVZiaaeAoB7TJyTgiAVA3VasaqF+Hy+
	MBUkys69xiO9OAhiiG6YrxWk0z3Z0ZnsYq8vZDtYDT/oMc18J5bLbW4JzXO/Rq0S
	35+12Q==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47x8x7mh1t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 12:51:42 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7dabc82916cso156094785a.0
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 05:51:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752756701; x=1753361501;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+ag0zs7yTwyyT5N+EMenXhXzqVE+SS4xEpUuAzDVO08=;
        b=ACOWSo/avoDmQdI2DAJWYO+X60fZ5+tEPZOjd/HlYE0z+YNqyjdqhs5xZ0BsK4RnFk
         zQGrsEwJB6mTKF09W52gOvWD4SpXLf0gr2TwT2j8/lMgOH+xVgveFX+6QvRVJAr9cFma
         rMoDNVAUe7boxQjxwWG4PYti1rbAZ2K0w0dQviD7fOhITOrY7xT0/8Df4Vby+X6CqgVU
         GFrw14rAr8fnIL+KlAPgzqj99RSmuPgea5gt1F2d7bjh/CyOjIWf6EjJxyg9ufbtCadQ
         6seJEiDGrVfkvxIpvJ4gn1pxKlzjCaJOIQgLUazR4AtaBAzPYDjpdJ+oQNLUu3IObNXq
         jSaA==
X-Forwarded-Encrypted: i=1; AJvYcCUeTLUW1MzsZrpbhzy+R93BPZQGcznyAAb9j3RnLDAJcBxmlwKeKt5MhUnjD4HjWRrFYAvZxm6AJzde@vger.kernel.org
X-Gm-Message-State: AOJu0YywY4aSTQpB8qaXvfkXZBP5m8BGMgSqZQXLUTKp1k3Y7Id+rlS7
	ZlOrmN6Xo57MKN3rsXefeXxQouCHAm85pQiEOlw8834DCIWeJWdxDxiSj5sKSqpEBM0SwjAbh7P
	9cU6N3qh8DldaGfTGQ2nGEEQyrFb+FjelnRjTTSob0rT8l/wub0IA265pF8zZ/jxX
X-Gm-Gg: ASbGncvNV1fl7Q9r81a/E1Hm4RMA84wTPsA0s9X4nc07J5SwaoqfQV+1X1lu+8WotMO
	HAdYfuKHkbyOPo/BwWfyQbWohXig2IhUNC1Wi5jrIL9K99wA1iSLABu17rKIIfBCRTgPFaePrP+
	XQyGzg92XQaTTPrSGMft9rdMtk2+ciXrx2y50JlBo8iQ3hjYI4naP0oWEtS+ZhW4A5TEiUxY1NK
	UKNwgofZNtCeSCjaT4uD//T1qCjhUlQaVyuHmEW4asmfzHIZqM81u+EFzNL0lHbJHqsmFxecl9U
	gghRmYRwrzCOWlCUagRKbi6R4kvNCZegjtmjgemQ9vNiS/0By07oHH45oQm/n2FEcdavJPhCXIK
	kFvQTJh9IAXdylNDnpXPVHgRCzmRBmSPCEXPYgkwAPnhmOTcxFbPk
X-Received: by 2002:a05:620a:4043:b0:7e1:3b7d:f47d with SMTP id af79cd13be357-7e3430dcdf2mr953267185a.0.1752756701510;
        Thu, 17 Jul 2025 05:51:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEAW/ycmrqPsNgyexXqBPg1Pu66hl1sASOLgzQnKNXfesWd7tzOjSI3vKrBGgwJUilS9CaM5Q==
X-Received: by 2002:a05:620a:4043:b0:7e1:3b7d:f47d with SMTP id af79cd13be357-7e3430dcdf2mr953261285a.0.1752756701031;
        Thu, 17 Jul 2025 05:51:41 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5593c9d08fesm3032872e87.126.2025.07.17.05.51.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Jul 2025 05:51:39 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Thu, 17 Jul 2025 15:48:17 +0300
Subject: [PATCH 2/4] arm64: dts: qcom: sm8150: use correct PD for
 DisplayPort controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250717-fix-rpmhpd-abi-v1-2-4c82e25e3280@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1038;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=Qk88581FUbK4p/GWT/1ubaIiHrFF5OiDLZOj+m9H7N0=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoePHY2bOOJk2mbEXau2+C2+ZcIWKDu5MpHBmsk
 sgdKWof2v6JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaHjx2AAKCRCLPIo+Aiko
 1YVqB/9rBWWHE/LLyyqabOJnN7BAGnBze2DE8QPL8isgkc2l/3MVjr84qdsAzNJsGDVyEPw6PNq
 +IV3wuzZn8bfjxMGa7YZozSMz8Y7vXqwWA8JaUnCOOiRbhvDqmnb2Nh3XZAkv6f2InHseW+Zh4q
 DVzUhyNDLZ1xhJKqt8SLZzNIJvVToVbaPbQ4Rtyld3LHzKH9je+3HksixU+KV8TdF/jHiND/b1t
 WIpm/ROFnpajr2k/ohso0uPRSPYJtY+uv8F4Q/SbMJGD0sPJyeDhEF8r5q2ZS3DBgYpzbbbHHCS
 La0jvBpe5c3cDCiV4b/p48PJ4wjwmtlz8t9/tJCnDXGJvy82
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE3MDExMyBTYWx0ZWRfX+0EJDfyqg3f+
 QKraFkN3hGpmTR0+LfuG3uz9Agtm1tFkhfkLbdlUER/EAMpzPxOsrpdfbD+n1DQX8uJ8YQiWUfR
 b6LQqlSjb32+Aqs48U7u1bkwRDL+ZzR20UwXtS84B81HfxIePylQKiNNeZ+g53IB0Yy5Z6cgT2X
 DbsGS+ySp3Oik6tpl5kKIBn5n3xZSeqKHmyUdAYp+SES2VhvNypihBOijEnOsy7GFGZUyJfAU6r
 WzxW9rqcMYiozlbbLwVUAxt+AhttyIIl1crXlxPBZhM75+mc8zfeViN8JpynfH5USCyGn5VaKRf
 xifjVPVGs/UPYCFgvn7bqZf+3xtTAuaQNd3MBIKl0pF2OTTp1H8yYQw0vZc0kupQXYBwjiS7Luf
 cdl7rH2dR9h/Stio2YigZKlQYpbffgGmuUrD0ubwFwszCJlAFD/A4ptFIkOMQfz4cBMF7Zi9
X-Proofpoint-GUID: 1X-dHx1eIlVPoZcqjafUt6z3-bH41KnR
X-Proofpoint-ORIG-GUID: 1X-dHx1eIlVPoZcqjafUt6z3-bH41KnR
X-Authority-Analysis: v=2.4 cv=N9YpF39B c=1 sm=1 tr=0 ts=6878f1de cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=7pnVX8DWB20M0aN1Zv0A:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-17_01,2025-07-17_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 mlxlogscore=718 bulkscore=0 adultscore=0
 priorityscore=1501 clxscore=1015 mlxscore=0 suspectscore=0 impostorscore=0
 phishscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507170113

Commit 5dd110c90a50 ("arm64: dts: qcom: sm8150: add DisplayPort
controller") specified SM8250_MMCX for the DisplayPort power domain,
however on SM8160 this indices maps to SM8150_MX_AO. Use correct indice
instead (SM8150_MMCX).

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


