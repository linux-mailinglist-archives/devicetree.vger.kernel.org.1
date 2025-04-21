Return-Path: <devicetree+bounces-169130-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E6AABA958C1
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 00:02:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1DF3016DDF6
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 22:02:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84BFD221FB2;
	Mon, 21 Apr 2025 22:00:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="L6WRdDE7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39BC6221286
	for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 22:00:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745272845; cv=none; b=dKgQBp9nWTBaKUFyPWK781PAcZPLUMJhP21yC21FbezDiLFivBPWGAvWaH/pwu+yz+vUIY9QoGtE/NquR1vay0bW4eVvTIPdzYX0fsXF7xCxQjhDgVhAF4a1XKRcS5f3LeYFQxX/Y180wgMXbzCs9eLQAPmYKm+GAMggK4E2ywM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745272845; c=relaxed/simple;
	bh=/pdn7VV26vHsdyRwPkDqqfr5a2aFBupKx6kIrHY3wNI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pjbp84svzpkyVExRMlGgMV6we9/F82qGn65Ml27gmDoV0xj/0EK64zT6Sg+EaLovxablNVN1QzactRmQO+Si8WSW2jry0SACFM3y6vkBSQJn37vlkDFE1RccNDBbRyjstFDtodsTI0sNM1uaTycPB5GSWrMdDXSj6/hd4CMKJos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=L6WRdDE7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53LK3qUe021089
	for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 22:00:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uazp880WP4oSz5grWMsfUwvLFejN9KQ7Ij/wBd9lOUk=; b=L6WRdDE7droB3o9E
	B04i06qODKi7BaJnrV5JDgmzyap7qPuQpEledEvraihkC4zlBRCKs8FY5w1OSveE
	VxIh27XA0rRHsCENI8FTGCeNxi2gRIsWhoOCIS+cFgl0TGXvRomDcQalPnbvivEJ
	cCUTxbFKaMmoOd2N7UHBtc/5a8d6/0b+hKsV5InABEigbyb+mRL/hYxfUI8tt86S
	MuzTQawzDnGrZVN9zwmP7O2uZrwP8GUEJ3NlT0xmcGmeBJq7TWtkS19z0FJ2+7Rt
	f65X3v+bN/ElDmRcYy0V0AyvdrEc6DK5P+LO2ZgtHOm1/os+Arj52zwyYTufFPCA
	VeVZ1Q==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46416qwkg1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 22:00:41 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-736fff82264so3331561b3a.1
        for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 15:00:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745272831; x=1745877631;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uazp880WP4oSz5grWMsfUwvLFejN9KQ7Ij/wBd9lOUk=;
        b=QIK7lieyTW/rp5ftPwZprbShDOI5NV7larIUPLI3tXvXs44bgIoMDpqfQ3Tgje9Jv/
         rm+yPwAUeYT2BVsTBVjCnJuqmxpUazrX4nvXs/0WUgXeato+cpeKzmEmFr7giuuBK6Do
         pnr32UWdvWCdJcb4qy7C/m8tdvVRyEJfQflo9up0kfAolGdliTzI6yj80JeEV9EgLfqb
         5aUByLkk+rWmdj0fdr1CTE+kcGg50YF1WfuNIJNFd4/OZHcGuGcfNWelUQ6tMT1g5v+a
         eCICw6yS8W6qPvN56TDdi7NsuMbS3S8iqDnd0j+XIyyXZsN9h7rhiwjR+0cA+zamyhPY
         4ySg==
X-Forwarded-Encrypted: i=1; AJvYcCX+ocYM8Qq5Gol1BPEsEF+Umfq6Y4M1O1Y5E5CqkH/V+4RjNdVmmz3mFGsvudZL76zEOAJtTMy1dB9n@vger.kernel.org
X-Gm-Message-State: AOJu0YxWxF0CFtf90g0Psw97NchrlRsmMh9Sc5inF8jf6fV9EPVnh0rS
	i4+bl1txku1TQTj+ObQF59IpRvVlGUyUq1XcyJp3AxchRdV7erYhSFHEpteVOo5NB/2BCZ/R5se
	qvO5+lL6Awz7zqpatLBNQPlR0Vl3Lvdh/+qjboc5HAPU38I8/gkLWfU5/B9E1
X-Gm-Gg: ASbGncuUdN87spE1m+beC72wCduX1VbJ+GoExK3RbET38OU+agWSOykMtpQwnA3saz/
	g55nmLYGesW2sG9+so1SaC+UWqjKUwG/gMXCGCKO7dtxJAjndM+C6KAsXyARpKomjkH02E1hZPv
	hlfVlqbthez/PgUbLTtUz7NhDSlytQRvVCy6AK6JDyK6vibmZ5vjQBEY9o05DgyECEKoXroGnLp
	W06ZBEqi+jneX9Y3Dpj7rJcyvUrqXzrIdnRIKBRQCGbjdQOhTTTvC/t7c4UetNl3gJz7FS0ImsX
	0OpeXXFmfFuUgzMlZBW81L5MX0+7PHKJFnH/0P2Sl7oeDtDikAqpVhSm5RsENbrMz1I=
X-Received: by 2002:a05:6a00:3a0b:b0:736:b400:b58f with SMTP id d2e1a72fcca58-73dbe33a010mr20742291b3a.0.1745272831517;
        Mon, 21 Apr 2025 15:00:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGd2JaFZ5xayiBayYrxFjaq77QJEeo7B+ROQTO4klSPnHDNhSnBxzHPeGDowAOPB7q2goChHg==
X-Received: by 2002:a05:6a00:3a0b:b0:736:b400:b58f with SMTP id d2e1a72fcca58-73dbe33a010mr20742217b3a.0.1745272830983;
        Mon, 21 Apr 2025 15:00:30 -0700 (PDT)
Received: from hu-molvera-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73dbf8c04c5sm7107917b3a.24.2025.04.21.15.00.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Apr 2025 15:00:30 -0700 (PDT)
From: Melody Olvera <melody.olvera@oss.qualcomm.com>
Date: Mon, 21 Apr 2025 15:00:10 -0700
Subject: [PATCH v5 03/10] dt-bindings: usb: qcom,dwc3: Correct the SM8750
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250421-sm8750_usb_master-v5-3-25c79ed01d02@oss.qualcomm.com>
References: <20250421-sm8750_usb_master-v5-0-25c79ed01d02@oss.qualcomm.com>
In-Reply-To: <20250421-sm8750_usb_master-v5-0-25c79ed01d02@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Melody Olvera <melody.olvera@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1745272824; l=1135;
 i=melody.olvera@oss.qualcomm.com; s=20241204; h=from:subject:message-id;
 bh=/pdn7VV26vHsdyRwPkDqqfr5a2aFBupKx6kIrHY3wNI=;
 b=OAqbWj2tMbT4LgbPTEZ+OhAfWcf4RBdXsny37UizI+Wabc/Oo8AxHA53vPNaePdUIDjUrBa7P
 7DF7jHYD2JyAUiE6QUvCqENTZL2NqByI0QPi/nizK8adtYPYXfTumae
X-Developer-Key: i=melody.olvera@oss.qualcomm.com; a=ed25519;
 pk=1DGLp3zVYsHAWipMaNZZTHR321e8xK52C9vuAoeca5c=
X-Authority-Analysis: v=2.4 cv=N7UpF39B c=1 sm=1 tr=0 ts=6806c009 cx=c_pps a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=Y21Hm-oE12uJT_c86xsA:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: BDY9FTPt6lZdqXIIpZ9y4ojKBCzpVA9K
X-Proofpoint-ORIG-GUID: BDY9FTPt6lZdqXIIpZ9y4ojKBCzpVA9K
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-21_10,2025-04-21_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 phishscore=0
 mlxscore=0 clxscore=1015 lowpriorityscore=0 priorityscore=1501
 mlxlogscore=450 impostorscore=0 bulkscore=0 spamscore=0 malwarescore=0
 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504210173

SM8750 does not require an XO clock in the dt as it is the
parent of the TCSR refclk_src, so move the compatible to a section
where the XO clock is not required.

Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
index a681208616f3a260086cff5a28dc23d35bd96f9a..ccf4f505913b0eea12e7cd58958b43013451f46f 100644
--- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
@@ -216,6 +216,7 @@ allOf:
               - qcom,sdx65-dwc3
               - qcom,sdx75-dwc3
               - qcom,sm6350-dwc3
+              - qcom,sm8750-dwc3
     then:
       properties:
         clocks:
@@ -355,7 +356,6 @@ allOf:
               - qcom,sm8450-dwc3
               - qcom,sm8550-dwc3
               - qcom,sm8650-dwc3
-              - qcom,sm8750-dwc3
     then:
       properties:
         clocks:

-- 
2.48.1


