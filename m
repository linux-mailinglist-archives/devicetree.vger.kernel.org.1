Return-Path: <devicetree+bounces-202642-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B8CDB1E4C3
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 10:50:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 37272726145
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 08:50:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85F86270571;
	Fri,  8 Aug 2025 08:49:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YRt7yuXw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ACBC26E6F1
	for <devicetree@vger.kernel.org>; Fri,  8 Aug 2025 08:49:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754642984; cv=none; b=VupVr8q1S2Ja0rzuDLrOS8gkarb0XeJqZXNnprzjo78wZTs5gjK92EmDVrVtNHosGddCOdzAH0jlpdyrlNdqXBA1xxd97s9/oxILUNdq6CZWN+yc2F0Kz+u5tAXE1sDg1RB0zn/0IK6/om18l/TbGd9kc2/EHTEA3Ut07us1mqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754642984; c=relaxed/simple;
	bh=xLcisQUmX1kKWJaAAGMAi99CaZ3yNW/4jd6IUN4d/Tc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=b03+jlISc+tX+L+5YOArhu/TTsBYvlIRA062O2seq6wEPGhTifA7KkQO4HrIaWCDdwqM/vwGSuwP7tfY0PaZD+ZMwjuH7OfmY0txZqdzBsqL3FsgX9NXaw2ru9rJgUgkFomIMBDP/nuaIYplxxefS9Qis78OcZcbK1+Q10f9dDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YRt7yuXw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5787Xswk025098
	for <devicetree@vger.kernel.org>; Fri, 8 Aug 2025 08:49:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=XAMShpBw6gl
	5ZzER3GWo8lF+QTIMlJwqOkE02a/mRys=; b=YRt7yuXw82QzPl4IJvpIKdkofL7
	z3CM42yL42QspFG0Kgrp8nKnudsAJtAsxSVMhkKaJogyZPt0fGqb0RPNeUbKGBL2
	Tvqavjv7WQRWn7CXOOZeBx1Cd+twKEjVkzh0ULcj+AkLjZECCJYEZes3XketblQl
	BjgcwBJqdMzsDWtrm6rINxFEb7MdpMjtw6/dcZfEYDYSfYm1BO1sOyEg2RKzxokw
	8nqWGyDrpywoqw+D0nG6RHrUwLCPixu6paX9ubQr3HTSld+TuGcV8Q5Ukknzt7Lw
	W760uqySBQ/KyH/STYnBBEovvM6C2aQdaQP8fyRQzwn1/Lw6gSmg7ObpiJg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48bpw1h8jv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 08 Aug 2025 08:49:41 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b08a2b3e83so52080341cf.3
        for <devicetree@vger.kernel.org>; Fri, 08 Aug 2025 01:49:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754642980; x=1755247780;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XAMShpBw6gl5ZzER3GWo8lF+QTIMlJwqOkE02a/mRys=;
        b=c9J2cOy4aKCtjasNtMYnJeoicTDhH5LqhPPlfTyF1z2tKoMwDsR2iG09Osp+DjLLiz
         v/MmdOEQKlTeM2Y6geg4u5m/oYSNPBXf8H4tMGsbfDq3GR44mMq/X/tNs6bCFlJ9MqZ7
         ZidRfdakTLbXhC8Wp2IqVW+HTk87yzrrEDZty42ibj/rThllrXjjGCGT2WXAH7371+yf
         uWSOzQ5tPY5w9YsB0KBqYkcPYCOSnTiql4+eF6MM7284n5sPrs13xuTfyubkj0Xt7bqr
         PmIC+StamCmZSw/zrcPVc2Ffyfiq7oO3rrYIUeU2fTv7fY90vz5MobqH0JcSZKTwye+R
         vtGg==
X-Forwarded-Encrypted: i=1; AJvYcCU8FjZDsHM3yrRjcvLxggYdsdUkqLFAilU/arhWVHSjX1c6GCOsXL+Zbqm2K0chUaM+ks7zImMHjj5R@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4aEiyKCd9XILWgczlWQdChNdnn9ta/iqLWbnL92YAMgASFq/w
	q0q79Tk1XNFSBvegtATJMyEPm7XilFGI9sITviKI6KaN1fsSfzE93850U2pWhTSZ4wMjhssQAiT
	lUzNZNtf8buSO8hw8tizgm36lvIyLzcVtZVyx2P6N+FDRRd3+4Y6owPyUPH5HSFbR
X-Gm-Gg: ASbGncsWYJVcqPNqGfC4wOYVrcedeKXr6xVMV5So//O1gkgiXcGiYS1WitOHHHm1jiQ
	ovNvzmyEl+3OB2xqt35/2fyOyS288VmbJvGAJ6N0W66EmVHRTRovfoD40myeaBRXxIw8BO5C6Qn
	TKx5bxpmAR5IkxL9gmKQRCPNJ7G9AsrBfNuawAAwmkwIx04O/qGeUZtj78XAVWsakNC7XjgXwGB
	O+Adbxr8rHCGlNWSdZ1TEFx8+/OykaBH9d5M0mA+XOF+HB2AtQ+lZzc3FDQqemgWIrW9jINHDGR
	Xz6LiVTz99Vz2PctUFAmr/nwUqLk25a3l2A6a40FSG9Dty1QcUi1b95Ml/7kJ6UV/lT41JI0c5g
	3/YLfHTgRs0pW
X-Received: by 2002:ac8:5f09:0:b0:4b0:8ac3:a38b with SMTP id d75a77b69052e-4b0aedd84d1mr38143581cf.29.1754642980404;
        Fri, 08 Aug 2025 01:49:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGE1yvscZAyrj30Um8VSEKm9PRcWAu6Pq/VWK93bOJfUynOJWNM5xox1ieq0bSmcUwi4Zfucg==
X-Received: by 2002:ac8:5f09:0:b0:4b0:8ac3:a38b with SMTP id d75a77b69052e-4b0aedd84d1mr38143201cf.29.1754642979951;
        Fri, 08 Aug 2025 01:49:39 -0700 (PDT)
Received: from trex.. (205.red-83-60-94.dynamicip.rima-tde.net. [83.60.94.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-459e58400f5sm122904295e9.2.2025.08.08.01.49.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Aug 2025 01:49:39 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
To: jorge.ramirez@oss.qualcomm.com, quic_vgarodia@quicinc.com,
        quic_dikshita@quicinc.com, bryan.odonoghue@linaro.org,
        krzk+dt@kernel.org, konradybcio@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, mchehab@kernel.org, robh@kernel.org,
        andersson@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v9 8/8] arm64: dts: qcom: qrb2210-rb1: Enable Venus
Date: Fri,  8 Aug 2025 10:49:23 +0200
Message-Id: <20250808084923.1402617-9-jorge.ramirez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250808084923.1402617-1-jorge.ramirez@oss.qualcomm.com>
References: <20250808084923.1402617-1-jorge.ramirez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDAwOSBTYWx0ZWRfX4eRhGdAtvHgY
 K+CV9NXMd/3PgXZ7neYjTGAEloC3r9D97HJLdWSeuybIPuxq55q/d+dZuNnDPg3CljDXYInYrU/
 orOMznp5VrKT76iMz9eolFOaB66U3zjzTcnhG1Q7hZCf/HGmK3CMji5Rr4CHFurr/CsQtj1ezX/
 wRkIkFdQHwknu+yW8yB8cDWXgoPDLTGdqYupaEFXCwzFKX3auOxGgph86gSHElHvuBfXh9C1PUx
 oUH7vHcQONH7eLbrY3lonVLNhq+y0FlLFnA5xDlP4kCliJticBixOdOslxm8GBl+ND7fQF5kRvb
 FTyyfO1enW8HljX8kLSLRnWhpJjgCHqoLkWMtz+n5VWZ09IMEF4pzMseViAH052WCXakVhf8u1x
 QhrKNxhL
X-Authority-Analysis: v=2.4 cv=Ha4UTjE8 c=1 sm=1 tr=0 ts=6895ba25 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=Rr2dNH5/fcnoRoBmcVUeRg==:17
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=Qms5JgQ9tnEuTiNUcoUA:9
 a=kacYvNCVWA4VmyqE58fU:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: 1LNakTAbN-9_PIHSbmy_3_ZiJn8j1Tvu
X-Proofpoint-GUID: 1LNakTAbN-9_PIHSbmy_3_ZiJn8j1Tvu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-08_02,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 malwarescore=0 clxscore=1015 phishscore=0
 bulkscore=0 adultscore=0 suspectscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508060009

Enable Venus on the QRB2210 RB1 development board.

Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb2210-rb1.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
index b2e0fc5501c1..e92d0d6ad1b8 100644
--- a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
+++ b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
@@ -698,6 +698,10 @@ &usb_qmpphy_out {
 	remote-endpoint = <&pm4125_ss_in>;
 };
 
+&venus {
+	status = "okay";
+};
+
 &wifi {
 	vdd-0.8-cx-mx-supply = <&pm4125_l7>;
 	vdd-1.8-xo-supply = <&pm4125_l13>;
-- 
2.34.1


