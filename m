Return-Path: <devicetree+bounces-220926-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 37364B9C7FB
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:19:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4E66C1BC3CB2
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:19:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16F372C0296;
	Wed, 24 Sep 2025 23:17:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Un/iHv9q"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42183284B37
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:17:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758755840; cv=none; b=roQ6nTZyj1HVIJFgg1Hnga6gfORNRPOwHqVwA/45rCe+8otgnhBl1zr+3Zg/YWA3pkruuLmsd2ujb6ZHLQO6xSfKQH3gLvQ4uoAqQsM+ujpkWZdujih1QsVjiXrP2nK+yv6FhvHnJy1SNa16Q7aFWjpQbt4Cfkl6duN7QU0xA3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758755840; c=relaxed/simple;
	bh=mE1+3CLovmhMxOumYf9eLxVXoXcka3cTkc4cvMTqs5c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=iT6D9U31FxgIfXIfPG5aEtxtO82Lw1jtA7w/89MT3cje4Cj7C4fA0kHcwKRJ7c17sOMa5Ld7EnHIV2SUVGHYBERxjSk9w7HzKKd6TyPbEWT6rBrMLn5r0NPn7z3t89Yy2J65qr0zqBSC0CFrE58596TdynRBXKrIoHkAIzs7BF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Un/iHv9q; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCu4OT018033
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:17:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fL1iTJl35+Y6wpcATqxUjntgyMB0y5qK/pwRJep+00g=; b=Un/iHv9qQJKOrxnK
	Yx3Dzp+WMw9TBH06ubyVHv1oSacsi1HPro/P+eDngszIuEjXfMkPbtYYA6ieWqdi
	/2fT34Rk6iKSZ4hTSR6rPmAW8s7Md/toANW+xiScNlBiN0f2DUI4ye8IU2Yzmrks
	Wef2bMDd/e8p/THLiAUKq8IRWjv2Y41xdfL4fzC4jwoK7oXvMBmqeQN+cB1lAynP
	W7my18yic9bd8txaeLu36ek6Uv8pLcMMGtV7x3eb8o6RnHJSsOI/G9LmzhQEa8sN
	VXEIw4w///M8ACEROXaABhUs1VwZhzo2LfWUu8XEpKZJxcnajJHOFUnle5ruYbCP
	9zrNYg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3kk9yb5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:17:17 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2699ed6d43dso3319985ad.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:17:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758755836; x=1759360636;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fL1iTJl35+Y6wpcATqxUjntgyMB0y5qK/pwRJep+00g=;
        b=l4Uc82JSqthcXCkIm3t/I8jkQ18Fh0uuPsn/p8qjr1qbyGIlMWUE+i7PMLur+XyByF
         lreOK60/MBgQaty1Blaley15n039jZ44Ra6DmuBqjrj/FlfRPa2IMSwmRrn5/LCXXJlP
         nadJ2Kp3w81tMPfECtfdFY+rFoWLR0Gc0/1blSBjiI7qnSkW4TLqYTLTatzirdy04bx3
         zgtAGqyC30p132FqXfltH9BE4uurropmadkWn7fNqm3fwQx9NieSyBMwiPqI8mo3W0sj
         3NjUzAhYVXlKDHBNfZCofCRKYBpvzJqcx3Mco90JGOJzXFLbTuDXG3IZ7QKBx6TigWdv
         T2NA==
X-Forwarded-Encrypted: i=1; AJvYcCVwi3XMCNyG21heMsIImJw7orENYlmkHbbnChF7Cp3wA8FD73NQVHgmHANqW5vS1UUhv57EUI+1mw3n@vger.kernel.org
X-Gm-Message-State: AOJu0YwaUwNm+vNBl2EyL+hdoPIq7clxTUlNkFvYF1A2M1XTwMsxNi/O
	PLF28SZ/WZcYPGoL9DKwUWAKDkbSWdHEwMDhL4135is5H8ObjcsSCK8XNVDhAGlDlDQ0oN+VCnW
	g7k28vd8GIh2ucXW753ZyCaIiqcyavokaptDrT/ciVzdKwHjuzQNUJKlXV/3UmYQD
X-Gm-Gg: ASbGncu1Wl+E02zAQ+COZCj7AjHPrTaNng0ANJVAT8LEsJCAHu1RyXu5x0D3QdkXLuk
	X+xnX9jIMxnxW5LNPM8RywCLFZk/9C6XTTs9azGov/fHmliN8JoJdrAmRWO1AN7tF+uSZjuLNee
	QEU3fXRqurI1dFatvMyWdJ9zeXljCemYpdwrqkLVrDQrzSwQg8Y32w4vc13iha7PJSNteR1YdFV
	l8Y0kUVdpwXdM8x7iB44fLmi+IYUyqrqghc94VvG0rSr3JVqcHW+jKGb4gdadryyjYa1p/2Oo6P
	/1Sv1yP+Ufbx4OhjzZcZlF4cL4+5U0sEBaeqVU1Xnb+0OFujCbCKIl7X53KtPqlxNdbi5164Y6U
	gf1FRYoYNr5mQhxc=
X-Received: by 2002:a17:903:19ec:b0:266:2e6b:f592 with SMTP id d9443c01a7336-27ed4a374a8mr16357775ad.25.1758755835982;
        Wed, 24 Sep 2025 16:17:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFMT5fZm8NtIhfLw02WJm5zy2gw5isSV+jZJC2QoWnR3r1EDadpHa6RYWSYUdxzPv0//VQJJw==
X-Received: by 2002:a17:903:19ec:b0:266:2e6b:f592 with SMTP id d9443c01a7336-27ed4a374a8mr16357475ad.25.1758755835541;
        Wed, 24 Sep 2025 16:17:15 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed699cbfesm3892125ad.108.2025.09.24.16.17.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:17:15 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:17:07 -0700
Subject: [PATCH 2/3] dt-bindings: power: qcom,rpmpd: add new RPMH levels
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-pd-v1-2-b78444125c91@oss.qualcomm.com>
References: <20250924-knp-pd-v1-0-b78444125c91@oss.qualcomm.com>
In-Reply-To: <20250924-knp-pd-v1-0-b78444125c91@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758755831; l=1196;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=7MsdLOhfuwnAQv9zjXruuy5kHSwIw5C2aX2uOydY54U=;
 b=9kH6KAMx5wPqYM08+ActayQIaqK6Yhb0nhOKmVwC9vY4C6sdJgxCJvnCDx8FBeuiI92p3Dvhu
 fOrb1DG0XhkARq01IVPf3oH2CnsDt8oqaMyo2MaKVLtfZdsZeY01Vra
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: c8j3Mwvf5y4oAV8B-uN_PaSGfYqYErOK
X-Proofpoint-ORIG-GUID: c8j3Mwvf5y4oAV8B-uN_PaSGfYqYErOK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA4OSBTYWx0ZWRfX3B22jnuK1V2i
 1wBhY+D1+QnebO/jKrNQt6omxt1opAcCl2Htbofp95gZZaLQfQCOYg1XyfcaVE9nOOEsvQaxTz2
 AmhZYDLyHC++fQrWKQUD5iOLZG5qjd66l8+VHTfhI623ie1avQ29Deiy054AM6icK5fW+ykBnbC
 zOHMRw5aECTtqYOPLhM7tuspJ6pBIlYJL2s2zjm2WN7FLa+JMw9/tut3zDEq0N28yEPKrqxTXW6
 K2/OezzPm0Xz+KoEc9HWNMxDD8FNEkVPe8QC2TKQIsKZROcYnNen6OkIV6vFwci5AmXSYXcRtQe
 QcX/2pbP69KCS44JDLHBaidSc0DNQAHxYOfInDnyHSp7LmGQZLNELUNgGLKIFoxDoYVQBHu8ir1
 rJW6Y4Oa
X-Authority-Analysis: v=2.4 cv=BabY0qt2 c=1 sm=1 tr=0 ts=68d47bfd cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=IiiVuqObk_426pyfg1cA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 phishscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 malwarescore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220089

From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>

Add constants for voltage levels: LOW_SVS_D2_1, LOW_SVS_D1_1 and
LOW_SVS_L0.

Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 include/dt-bindings/power/qcom,rpmhpd.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/dt-bindings/power/qcom,rpmhpd.h b/include/dt-bindings/power/qcom,rpmhpd.h
index 73cceb88953f..50e7c886709d 100644
--- a/include/dt-bindings/power/qcom,rpmhpd.h
+++ b/include/dt-bindings/power/qcom,rpmhpd.h
@@ -33,11 +33,14 @@
 #define RPMH_REGULATOR_LEVEL_RETENTION		16
 #define RPMH_REGULATOR_LEVEL_MIN_SVS		48
 #define RPMH_REGULATOR_LEVEL_LOW_SVS_D3		50
+#define RPMH_REGULATOR_LEVEL_LOW_SVS_D2_1	51
 #define RPMH_REGULATOR_LEVEL_LOW_SVS_D2		52
+#define RPMH_REGULATOR_LEVEL_LOW_SVS_D1_1	54
 #define RPMH_REGULATOR_LEVEL_LOW_SVS_D1		56
 #define RPMH_REGULATOR_LEVEL_LOW_SVS_D0		60
 #define RPMH_REGULATOR_LEVEL_LOW_SVS		64
 #define RPMH_REGULATOR_LEVEL_LOW_SVS_P1		72
+#define RPMH_REGULATOR_LEVEL_LOW_SVS_L0		76
 #define RPMH_REGULATOR_LEVEL_LOW_SVS_L1		80
 #define RPMH_REGULATOR_LEVEL_LOW_SVS_L2		96
 #define RPMH_REGULATOR_LEVEL_SVS		128

-- 
2.25.1


