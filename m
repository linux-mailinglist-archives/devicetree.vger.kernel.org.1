Return-Path: <devicetree+bounces-226850-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 85631BDC318
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 04:44:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8783342447D
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 02:43:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1668030CD9F;
	Wed, 15 Oct 2025 02:43:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Rqpar8CB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63CEE30DEA4
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 02:43:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760496214; cv=none; b=lgW1bdLfpqgC1EZsQcLVSJbPyWTVVUZkJ+taToc1AP6MPpYwwKo9wpCGSvGixoxuhmpsauDj99qVkSAmVmj5CFnmKZzxALaB0wuRkMS7PmZm0HEuNCdLCGd5c1pxDmwEdhalic3lkIXildrd0r4CGA0Tu6OCuMMKgVTgutTJn1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760496214; c=relaxed/simple;
	bh=0rVwPwb2voVzOHTKavO0nQGcp9y2IoeMgD6s71JHxRk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=KQPhxGVZqN9lZqqjVBh0eI1j+0XbBdB4lacqecyYp4f07T2Cg97W1jeFONDKUXML3jCkOaKZvp2Hxv3qZ6BxZXR83MD/78dfNxGxNVJDFBC38oNNSPGzw5uwvvlm2VuqiRhhm5gMzkkz0lfNUVJdeluRpEGq1l2FbzM1aiLyVzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Rqpar8CB; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59F2dIqP020364
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 02:43:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=a8Qod7OOqEkFq+EpdIzWVZ
	NCKD/5SirXFq15HIYfIa0=; b=Rqpar8CBotbS2mYoRyKRjxjSXXOw69dFCHbDYK
	1Ag6n+cdgcKt1M4cX9Qq9yOnqfbUPeZ68WbA0CYxk35Pscz4yO1oIBTr5KEnAJ0R
	h1TR7kXPs7gUvCqs797FUfzhVVO58f2CHZ7MOSbtOM0cqPOgNFdzpTmXY6XXPMlL
	Cxou2uR3zUiLDRRJtgBrL8et5zA6Gmz2IJeuAZozxvE/Q1AX8sgURcmQcfVqPEjp
	ZDKxFk4JeMSKUzhit7yywQuEJCIHpFdgodoNbwtSng+AvnAmh4KRKSbddNfiKfOv
	gOjpJoRQmCJOfj6bxJ2pUWS1p1AXrlYLIO8Tfvwmbv228y6Q==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49rtrt7qan-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 02:43:30 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-28e8d1d9b13so102940665ad.0
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 19:43:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760496204; x=1761101004;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a8Qod7OOqEkFq+EpdIzWVZNCKD/5SirXFq15HIYfIa0=;
        b=DEmqKclGAFiYooLxHjuTmeMsaO/p2KjAKFaQkHmvubfuG54YBjJFy2yEHvocfz/IIb
         iuRGZcGx4U/+RmPzDC6WgJ4kXXEDuDWxbicIy8u4vOI9S9Xn2DkSS5W7C+QAFzh1oGj3
         9EHn0Km9+gdAqgJjuCyAJi2Rs28xdqHtu/8mJAUNKQ0GBctuQEjh+RFDZILL7V+KD17J
         cI9N96VtS03kqf4Ff95WBfyPHKkGJwPo/Yrwu9bc6/mbsh+TLs475ZNeyfWSjqcSS/PJ
         5rUNukMT1X32rHWBbQc3YKW5/29OQLRVIwDcVMBDQJVhnGm79yhzz12FKG/85H8WbSzx
         XHrA==
X-Forwarded-Encrypted: i=1; AJvYcCUjjHytHB2d3ShjwFM5IDVLjTOWkCD7IQ7eqrtQCtts8QJ7uYO5tj2NvQyyAYZ3BExBhEPTziDq0Oid@vger.kernel.org
X-Gm-Message-State: AOJu0YyNTybL7oDEZl92mBr1Sbf7jS1AXsnDEihDqvNiEMTnnJOPEvKD
	LZJ6Mxm3wCpXbNj+//v49sgaq/XR7DBiozXcRrJ0pbECbBxxvbeghP7aSVqdqpQ4t9Z3TCM+gOS
	cP5UBIb3ZQFPrpPBe7XPT6DXEwq9XmZA8CSiSzjH7PAZUTT5zWHpu5qL3WPmqaVTe
X-Gm-Gg: ASbGncscwmu8UfdzoNbt3kiDMvPRfdEphT1hO+Ow7meKOvpkf89odVA4/Gw3k2h/Cd5
	xJzW/jg2zNZfaw2DB3fcQhF2VXJWsCws91s42rEj4fPlZ/eYRMYqTeR9SnwYlVs6WrMVU+LOfJP
	R917Ku/QyaIsmfYdMZclzWJe+VED3j3GH5ZulVnb4RvuNNInZ6tP/MvayN0MLS0L6YL0k0Nrsev
	KBkwpJfjAYiS7BT2PM7E34p2xaFYFDBr/w8piYKjQ+dUGY/rAs2R5Q+HUR+d/PsmdrrVL8mJo2H
	FYblZ5eNZtmWqhMXsqQTy5OlMIwbmHA9UJ5NunIDTCc4Ln7mfxaR7c1fXnfmZpoGJTjSqtHEevw
	YxTHF6EeG2bKkz19Fs18=
X-Received: by 2002:a17:903:244c:b0:27e:dc53:d222 with SMTP id d9443c01a7336-290273713c8mr317468545ad.44.1760496204327;
        Tue, 14 Oct 2025 19:43:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE42hE6or4x2HxX7l7lKxe4Bot0TYcL2n/exI1bwf9/Tnqk7dDhc/fzZnCyrUZVLqkIz2RJDQ==
X-Received: by 2002:a17:903:244c:b0:27e:dc53:d222 with SMTP id d9443c01a7336-290273713c8mr317468295ad.44.1760496203842;
        Tue, 14 Oct 2025 19:43:23 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034f366c0sm179219505ad.94.2025.10.14.19.43.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 19:43:23 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Tue, 14 Oct 2025 19:43:15 -0700
Subject: [PATCH] media: qcom: camss: Enable setting the rate to
 camnoc_rt_axi clock
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251014-add-new-clock-in-vfe-matching-list-v1-1-0d965ccc8a3a@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAEIK72gC/x3Nyw6CMBBG4Vchs/ZPaJV4eRXDok6nMBEH0xI0I
 by7jctvc85GRbJKoVuzUZZVi85W4Q4N8RhsEGisJt/6zrXOI8QIkw94mvkJNaxJ8AoLj2oDJi0
 LfJceTo7nC5+uVEPvLEm//8m93/cflrJxg3QAAAA=
X-Change-ID: 20251012-add-new-clock-in-vfe-matching-list-25fb1e378c49
To: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-ORIG-GUID: vtejNXdB2oZyMXBE3J_zfqqHzuEC1iqI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDEzMDAyMiBTYWx0ZWRfX2zBKPigfJYW0
 GQXsyun8aLHbRc4wUy/gv/iHvQReNTzj0QPA4yvFVELRRkaOXso64nbrof0eNUgwBr2Zs54Gl27
 i5zNkn71c/80Yn8ME2olW2Hykw3jQOl/xodBZyLIIByvt24Bkf+9x17uQmFVJhpYBoOZ2Fs7O8j
 bjXqTuZLoolqSgWOxlw2SisG8Uf9uprmsgeVfF5yQcJq5lT5NMcMta+ldmmewEKHAQUgrsZ9hCP
 DYK5ZVscb+gsoO1r1MPThi6ymek+F9whP3Id9v1xyv2lyKFpfEFnfclPw/W7znm6R2iCexVHj6l
 GbexaSTLayyuLuY2TE/YMi0MN85IX/k0WuPMM0pRG5Ps0r06yXC73fK5bl/VjfiB/mQQGyq2bne
 Yb3G1PoIBYnX8WXH1eQ9kIGMBNeMtA==
X-Authority-Analysis: v=2.4 cv=SfD6t/Ru c=1 sm=1 tr=0 ts=68ef0a52 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=F0hiWKNqIihWguCrtJ8A:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: vtejNXdB2oZyMXBE3J_zfqqHzuEC1iqI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_01,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 adultscore=0 phishscore=0 lowpriorityscore=0
 bulkscore=0 impostorscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510130022

On hardware architectures where a single CAMNOC module is split into
two, one for each of the real time (RT) and non real time (NRT) modules
within camera sub system, processing VFE output over the AXI bus
requires enabling and setting the appropriate clock rate for the RT
CAMNOC. This change lays the groundwork for supporting such
configurations.

Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
This change lays the groundwork for supporting configurations for
hardware architectures that split a single CAMNOC module into real time
(RT) and non real time (NRT).
---
 drivers/media/platform/qcom/camss/camss-vfe.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/qcom/camss/camss-vfe.c b/drivers/media/platform/qcom/camss/camss-vfe.c
index ee08dbbddf88..09b29ba383f1 100644
--- a/drivers/media/platform/qcom/camss/camss-vfe.c
+++ b/drivers/media/platform/qcom/camss/camss-vfe.c
@@ -914,7 +914,8 @@ static int vfe_match_clock_names(struct vfe_device *vfe,
 	return (!strcmp(clock->name, vfe_name) ||
 		!strcmp(clock->name, vfe_lite_name) ||
 		!strcmp(clock->name, "vfe_lite") ||
-		!strcmp(clock->name, "camnoc_axi"));
+		!strcmp(clock->name, "camnoc_axi") ||
+		!strcmp(clock->name, "camnoc_rt_axi"));
 }
 
 /*

---
base-commit: 69a67cb382f428c6dd8ba63e44cd2c59cb84f736
change-id: 20251012-add-new-clock-in-vfe-matching-list-25fb1e378c49

Best regards,
-- 
Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>


