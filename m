Return-Path: <devicetree+bounces-221196-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 82EE8B9DB32
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 08:41:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1CCBD3BF51C
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 06:40:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E92CB2FAC04;
	Thu, 25 Sep 2025 06:34:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="L0yzl+HM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6973D2FA0FF
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:34:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758782058; cv=none; b=prtkLEwbtSK3K9yZi2U83cqP/rhBkwmzLYA4GZrrnRkBMDSHn84bfOrPjcfEWLvlC1x2eaZJOums7vgQG5c2Xn5+qjXyDdZgULuQxgmYgkOJHwioGF6qU2u38TKD/i0BnLHmiLNDb7p9fEE5NRg/vuhdm+5K/sxYZsq+MYWHPKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758782058; c=relaxed/simple;
	bh=E3B3ByaBtuMatGnp2Pcxduj29OzySduOTeUAJyaDEsI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XqHj4IevBF3NQbJqARTMjS1nkwV0CUr+dF5sJe2jD8sNiwRU4EwAU8WJVkSQcndx8DGlSrkCmvUMlpm4zBl+58p9ay/7PiolmZ85rZ9/DY+vqKASZl5qyBGWgTsVuxKKSS18xlRWldI+9v/PFkzV9V8vzdJ5+ETiE9aOkaX25ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=L0yzl+HM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P1VD2o002776
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:34:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GcCj/e9tgK8s4kiIpVDjeJ1bIplDWEorF8EPo+A1CcA=; b=L0yzl+HMC5givkPa
	/QcVoLS57VY32cGX91AKDGfP6VG+vN1he5Q+tvXOjMpRGyF5J0ELf8En6QKylDgy
	Lz0IpocL5qPvg5DbdCTRSXKL7aLW8DIMrosSySSTjR+LVFDWoYS2eIpqt2cbrHl5
	zfHwzPmop3YKlx9qcZzN8oqXhk4Me4lJ3o7+bTDndbmWsSf3ViQx3g8OelmLxDII
	IcZ343Cu52WLYUniprLkYLyAbBijgZsTnTERImdrQSviBKlvZqegOECmEGE1zUbh
	qnpm2rvT8jb7Yt7Z8WMRsB094pM4lDInKURtUW2dDZVX0zns5sOibrKdPsZkWp1c
	XzvX5w==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bajf1jtr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:34:15 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-252afdfafe1so7185505ad.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:34:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758782054; x=1759386854;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GcCj/e9tgK8s4kiIpVDjeJ1bIplDWEorF8EPo+A1CcA=;
        b=vi9Qo82oeNlliP2htwZcqivYBfMv6qYUQTyguh7UIxuWNZrLAdd+aOelRtkSUZR5Hr
         1mmTW3R2ld5aAyYvZcJePcNoaGr8n0mgxLjhqMcwZ7gbesWg69YNIOV3GHkXqTfELT90
         LEcEyrS5sNDwYyfeZX4MUg/Ztr/QOp9Iv5TI5GER9rz6ekFf1P+WdkOUANUNZmDr3NWT
         EpRFyt0UzhtMtHynxY4xkqCmi2dNuM/0lx/J1ljkEUEc+k3Pwy9VnqKlfD7D/E+9v6OM
         0o1ZIjyeJ9THRA7uQLzEeoHeG3gOHlg6lUBT2Dn8TwwTQ7NDehHH2xhnEsKZkmA933ld
         iEDg==
X-Forwarded-Encrypted: i=1; AJvYcCUxfDmyeD/YbHN2xbtjo6LRAOdU/mCkf0kmDB3BdwJaUatoXUS6S6+/wSrrxbcKOGqTt0LP0pmNAhOj@vger.kernel.org
X-Gm-Message-State: AOJu0YzqvBDsvk+Vob3VhzMMrIiLKF8WegSVnVOO09Aoea4CnNSoTYsC
	gMIaWAUuRoOxffO6skfmH+QjXmjDoqmOKqoMnK6aK5eoTp8hDu8wsFa6A386zieHbTzwlnon+xO
	TJd+TdQCZop5zuzmlB02ueyBWthfmL93QtUnGFCInClDs38AC1dk2SF7gbYWNK0W1
X-Gm-Gg: ASbGncviX5rxEaPtWhkhq3PPNGaX4ixWiuKi9xPP3h6fxreCz4yQpk3LRDvwg70QzLP
	9aQkqKVk9marsQ/F2JNZzMalkVQGFrfTR/3+AvdH1UuAW+0gPTbkOQ3SuiQPfNQqDAA+k9+EXrR
	erLb0ijQ3Z36kkxjz6me/9TT2Hs2JVaJfX3su3NjJb3Wr9q/A4JfwjycnFfVdS1MAudmbhAIWCH
	qLQ86W380oe8nYu9/YsoMeG9zJCHb6FuIlFLHG8bjgGEtVpHgBEud4khWTUd7nd231ebAgI6Tp4
	kuFapYH2AIFCBBcqis/+SdyYkNlI3wwEf/iz54GgQJm7YqfqCXNO8NwyCv0GALMQg98LbhA9iqi
	yBL3crqETcpcLbnqmi9UjUi5Mld3ljUPnclCjEUMa2KGPPk22pxcZ5eu4XlY9
X-Received: by 2002:a17:902:c94f:b0:24c:7b94:2f87 with SMTP id d9443c01a7336-27ed49d0885mr26649265ad.14.1758782054498;
        Wed, 24 Sep 2025 23:34:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGUFPSqP6cvwwCq5peM3jwv6x/ZxYdMlwDMExGKphwKYahwrK3QF28j9pS1kOEgdaF4UmDIyQ==
X-Received: by 2002:a17:902:c94f:b0:24c:7b94:2f87 with SMTP id d9443c01a7336-27ed49d0885mr26648955ad.14.1758782054066;
        Wed, 24 Sep 2025 23:34:14 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed671732asm13793515ad.49.2025.09.24.23.34.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 23:34:13 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 12:02:25 +0530
Subject: [PATCH 17/24] arm64: dts: qcom: glymur-crd: Avoid RTC probe
 failure
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-v3_glymur_introduction-v1-17-24b601bbecc0@oss.qualcomm.com>
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
In-Reply-To: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-GUID: dNxaw9eqs7OJLisPGajBcn5X2e2tJoGd
X-Authority-Analysis: v=2.4 cv=fY2ty1QF c=1 sm=1 tr=0 ts=68d4e267 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=zkxicyaTBexjGtpFqaYA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDE2OCBTYWx0ZWRfXy7Tkq1T7dbL7
 yhmiM76l0ypJ4eiWAm+d4XUnUezsVCNp0O/3MEqDqr3aUCdNa2RJGyHB+SbZSHftMTN25hWJP3h
 Uku2lZVos+2SqYHI8344X0x20zOQgjYVnNhxg4pCBEXYHABqEoepR/ZQUbuTT/FRDk51l1YCleR
 7b8AB30MkIU/VMmbjAR8AhU62fBiUzkrlecrbXBGvOKoGXbfsNkscbZxr4ExhLMaw+hjjufzkgS
 v+L+LGI50623koJw/IVcUKW2D6ZPwxxkt1LUQxb0iTnhnvxFARIRGrmhwBfF1tat2AgVb8jxanN
 +mCHDlXfMD/Z7qDqNSoQpGptbqhrLKebHDtlYqkEWn1U9xtLcNn139Xfowjp37II+jBHlB0DYO8
 HO9YEs2R
X-Proofpoint-ORIG-GUID: dNxaw9eqs7OJLisPGajBcn5X2e2tJoGd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0 impostorscore=0
 phishscore=0 bulkscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220168

From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>

On Glymur boards, the RTC alarm interrupts are routed to SOCCP
subsystems and are not available to APPS. This can cause the
RTC probe failure as the RTC IRQ registration will fail in
probe.

Fix this issue by adding `no-alarm` property in the RTC DT
node. This will skip the RTC alarm irq registration and
the RTC probe will return success.

Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur-crd.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
index d6003ae515e37049fdf17d6b604b974dc8e9fbbc..b04c0ed28468620673237fffb4013adacc7ef7ba 100644
--- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
+++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
@@ -429,3 +429,7 @@ vreg_l4h_e0_1p2: ldo4 {
 		};
 	};
 };
+
+&pmk8850_rtc {
+	no-alarm;
+};

-- 
2.34.1


