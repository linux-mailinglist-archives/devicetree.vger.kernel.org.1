Return-Path: <devicetree+bounces-245708-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A624CB47AE
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 02:51:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7680D3011AB6
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 01:51:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A12B9272803;
	Thu, 11 Dec 2025 01:51:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VewpZq0s";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fhEnFoBq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA20227456
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 01:51:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765417869; cv=none; b=pMvqXF6ALnvvung1EiDuyuCQ1ClDC0DJPVfdXacBOnIYx33wXBLVWzEAWkoRrYld3PpmCoVW7cUuXPsfUu2PqS1Fe1S3a8KBFRj9ZOrkBG6xNtcYRKWyab0xY3p6uLxSROYfLzZNRbuHYyXmWCidnUOnEr/I6NU8m/ZR0CH+FdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765417869; c=relaxed/simple;
	bh=bvsPud7Jn5y1dHQ3DPCIyrutcU2S/mnI1fd9C15vShM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=F0WJ1n31LXsYvgPTSuQKcO4fKYdfnbPqsfI7fUDwjj992fkJIB40lxDDxJYQS/fvQ/ZmTGiW6ON+eonCn7E8EVj6pFYTXDTVf7GMRU/6KMQ2toIHYM3jwqF0FezppqwQ9TonUtr8hMlsQmFMPpAqLh+vD4RmO9yZC39YCW8DuyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VewpZq0s; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fhEnFoBq; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BALPRhn4126900
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 01:51:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=vUKCCr/JRSbAQ7JX9vL/YA
	9WWtNvup2AA/NvXfFOzfs=; b=VewpZq0sgR8EPObHAtve6st2Md0yVCK6s2B9LW
	nOqdSOqKwxSzvNTeaEdGsDrA4rST+kSFTLTMLfu3c+9CSGYwba2hAmlXuo7Q0U7R
	XcTI81qLosRrBiVdo9mXRQoEY+QFsd2tDRCSfB9unV8hKDHLz5VSsNX4A3b2eUZj
	M3bRrpdDtc8bFZJpiFhfCMVypYvn7uFX3Tyov8UxmvKJ0vW7QeGXPxA5yuGZUicc
	r35la6jKesxZlli1YVuwE+CHfg858+NkRXgsJC1rbFWEuXxntHyUsmQ8J3Igx1yG
	WOOsMTDuF+mr9xQZAwQ9AuyehufvRXvHuv1A5bp95LXQzyZg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aybhp9sgp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 01:51:06 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-8885a6666b1so12311786d6.2
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 17:51:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765417866; x=1766022666; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vUKCCr/JRSbAQ7JX9vL/YA9WWtNvup2AA/NvXfFOzfs=;
        b=fhEnFoBq1mCtBzj/0MJmaytp655dfaXFF50zOGMKXvx2/SSIOgvnLgjt7tk1EA1Y0Z
         41/70WlTzmsFmhv3WYviUYQLFWD2j0bvdyN2tSTUmRSR24sB0oAeHjCuaWZq8Xjs/ckC
         Ygl/CCuU4owF1FwAOITDwt72zEcJwWQe+cTK3ILEOR69V/fniRolVqyevl+U0h69XdrN
         dZKEbkBMqocEfaN/lLxswGxwuSGVbf3kZ8vbmUocDwKCBPlzssIudVGNgIeUV0T1wFCC
         j8l3h+83xz1Fcy/xU49gaQ6XEdaYfbj3sSiY10SV277w/eoO99/fFTKrSWSUAulUA2R4
         0CTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765417866; x=1766022666;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vUKCCr/JRSbAQ7JX9vL/YA9WWtNvup2AA/NvXfFOzfs=;
        b=LmNsjvTnwkMsGtduTQl3AQcVE0ZdeZA3k7Qw6f4QcvfHZ43RoQ9xYpZZdSVmtmuExB
         xcSBTEmz+Hxcsi56gxQVhpzf7fWi4dL8RE4NjO+0XHenKS6kdSKcOGoRUUZ6JeA5CSRH
         SlVEZkYk1+n7j8dRyv9wICB1VCcSOF84RyStK3vD4m/iLH09ktarhtaINMOQeSURB9BM
         w94xLabHqS1RDJPww9T3JKlnXgj+FG6o6nnjkdZ4pBqZm/p/lH/0tl6G8FxFR8zYqA9s
         E7qWwmUuvFFSbF/rd/TkEeVjQkVH2TblogKN9cQGZWcMXDn5+D/iq5agRoTRm2+xz2GG
         nTJQ==
X-Forwarded-Encrypted: i=1; AJvYcCWWCUkGQtxrAwjsQjBU/1U8G/Tm1L052ICTF1pjUzy4NqUyHL9dcI1z7xAs3HkBuwB2AYTSUAnsxM5E@vger.kernel.org
X-Gm-Message-State: AOJu0YwyvlrO2+5cl5ZmJsxN9KWvzRrulToGYvSqU8r5WeEk5GuirsFI
	qSUs3fcwkdEM86wcdIakmcUYVrIQyqUXSxx0JErYuWB93505kmlL2PcZkxDdlj8UzLdKKLYLD7P
	qPmCQfxX++Ao2fRGIv3TXRDe8gu42+avfKTKeb0ble3FsQRIAa9GcVKp/h1oHDWkx
X-Gm-Gg: ASbGncvdU3qvAqFCNNKPp+LwjgLhdw51hTRRFvN/8va5XVRDMx8BijI/Lzf6AhkNUxE
	vW5fxtzqaFLqV6sMZ8L0LMBcXalIqvWU7bs8sy7wHwtuxI71eNsXGx8zxOchvk/G1Pn5nPHBYe2
	heb5F4FQy4b34r9Z7SWTeJ1gT+FV9aYInStw3wM5zduweinwXMA6NSNcMtTc2IYjr/tfnHA1+cB
	SNa7vGDmu8VrAyIP3WCqB3348GRGC85mKYqFA7lKFF9btEnQM0Pyizg8Mtd5/+jIVkSJopoT2ni
	vQt5OR8SJqjiQcX3nEwhIASKmA3YhlR2NO9dlkkVmj/lFfbEc+yUT1RLhIKK6OC6ftsbZvvvVYE
	+0vwjcOFRBBWxuH1jaC3DhM34lTAradEpDIK6e+LVzvaMcgboiaHgH1g7i6v9tuV63Rvh5gPlf/
	YKrXQKNV5mmJwtBLd8uAqbsXo=
X-Received: by 2002:a05:622a:514f:b0:4ee:4a3a:bd11 with SMTP id d75a77b69052e-4f1b1b4a0a2mr60602011cf.64.1765417866214;
        Wed, 10 Dec 2025 17:51:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF0tSVH5yC6RbeCAj3uM3eoDL48iaA6P//MfWrSYh+hezTH8fFV2NCWUB2W4vS2ZgUdPg8dyw==
X-Received: by 2002:a05:622a:514f:b0:4ee:4a3a:bd11 with SMTP id d75a77b69052e-4f1b1b4a0a2mr60601761cf.64.1765417865801;
        Wed, 10 Dec 2025 17:51:05 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-598f2f3efdasm402577e87.32.2025.12.10.17.51.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Dec 2025 17:51:03 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Thu, 11 Dec 2025 03:51:02 +0200
Subject: [PATCH v2] dt-bindings: power: qcom,rpmhpd: drop duplicate defines
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251211-rpmhpd-drop-v2-1-569e5e8ab34a@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAIUjOmkC/zWMwQ6CMBBEf4Xs2ZJuUxQ9+R+GA7aLNAqtW0UN4
 d9dSbzM5E0yb4ZMHCjDoZiBaQo5xFHAbApwfTteSAUvDEabCg2i4jT0ySvPMalOm711Fk21PYM
 8ElMX3qvt1Aj3IT8if1b5hL919egd1orpFfn610lJTqi0IvKuRV1TZfUx5lzen+3NxWEoJaBZl
 uULHophjrUAAAA=
X-Change-ID: 20251211-rpmhpd-drop-f0294c41256b
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2525;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=bvsPud7Jn5y1dHQ3DPCIyrutcU2S/mnI1fd9C15vShM=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpOiOGu1mKuxkcv+2Tb+XmgWZn/WG0gwxBh3AHI
 rBrTZRQD1+JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaTojhgAKCRCLPIo+Aiko
 1UWfB/4ma06uDyri+nQ9QgbWWO6etGVEQE1Ve/UiT9OUb/g0MT+2kXCdPzBlFwtnZpmy5NPdVyE
 8emqPXJHOcxK3VFMagT7cg8buJ22EjVAle3ejQ77EIBHYNCtQG9j47XaiqnjdB7nrNrvdd5wl02
 quW7fAB2bkDi6jwVul8jMCMoCgXu6bIZQwxc4xEO5Rh3PGxfEj0q82OfdO2+5Mjm3H/fiD+Mj5T
 kup3kem8UUYdbac7dl7lKjob1i7Bfzb9VUk2EC+8PFkFAyUk5iWdPdJ0MoGxq69sOh4POyormYK
 QwSMZLwooeiFmPpZ0jHo2hjp6UuVE/McFH19hKzxohXYaUST
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjExMDAxMSBTYWx0ZWRfX9QHsRJVrtxx1
 z5drkIPLrXyw5emrSJnkHPBjWH9v+HL57oafKW92Fj2DVU8WagUHC3UwsKny+4s/gTouFe3Ti1B
 RYQPBDJl6zNOFRHeQFNryIvV+oVNP5eMKSRYh3Rbo06PmQSkmYMTBQOMGtttYkw2cVkrdy/eTNN
 RpsIrv/cP4pdqYNV1QSqGF/eKp1CERZVgbnzzqGmKn1bu7dD0Xclcj9wVZdlfmlH3JroWBwc/cc
 xeXSPFj7QvUFWAiUkO2Qtklu6A3hgdGTGi3zBRQG0+0dhOM+gLI1qrQaG1u0AtHzmh3XKfoCuOS
 whMw5NrUCSPPpcLaSCJwPfhd1x+r0Kx+oe0oWXAw7WpNRQ3Qd8mHmt7HYg2v17JysPAyP1R6EwE
 RoGcphh85L8NG6J19JlVj0fYlslYhw==
X-Proofpoint-ORIG-GUID: 9-oOnWv9v1eGsJ8SENPMRsIwol6qnJS-
X-Proofpoint-GUID: 9-oOnWv9v1eGsJ8SENPMRsIwol6qnJS-
X-Authority-Analysis: v=2.4 cv=LJ9rgZW9 c=1 sm=1 tr=0 ts=693a238a cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=3Z3j2bVvPuJzJSmPKPAA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-10_03,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 lowpriorityscore=0 bulkscore=0 malwarescore=0 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512110011

In order to prevent further confusion, drop SoC-specific defines for
power domain indices for platforms which were converted to use
RPMHPD_foo indices.

Reviewed-by: Bjorn Andersson <andersson@kernel.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
Changes in v2:
- Split the patch to a separate series as all dependencies were merged
- Link to v1: https://lore.kernel.org/r/20250718-rework-rpmhpd-rpmpd-v1-0-eedca108e540@oss.qualcomm.com
---
 include/dt-bindings/power/qcom,rpmhpd.h | 58 ---------------------------------
 1 file changed, 58 deletions(-)

diff --git a/include/dt-bindings/power/qcom,rpmhpd.h b/include/dt-bindings/power/qcom,rpmhpd.h
index 06851363ae0e..b28625c85529 100644
--- a/include/dt-bindings/power/qcom,rpmhpd.h
+++ b/include/dt-bindings/power/qcom,rpmhpd.h
@@ -149,64 +149,6 @@
 #define SA8155P_MX	SM8150_MX
 #define SA8155P_MX_AO	SM8150_MX_AO
 
-/* SM8250 Power Domain Indexes */
-#define SM8250_CX	0
-#define SM8250_CX_AO	1
-#define SM8250_EBI	2
-#define SM8250_GFX	3
-#define SM8250_LCX	4
-#define SM8250_LMX	5
-#define SM8250_MMCX	6
-#define SM8250_MMCX_AO	7
-#define SM8250_MX	8
-#define SM8250_MX_AO	9
-
-/* SM8350 Power Domain Indexes */
-#define SM8350_CX	0
-#define SM8350_CX_AO	1
-#define SM8350_EBI	2
-#define SM8350_GFX	3
-#define SM8350_LCX	4
-#define SM8350_LMX	5
-#define SM8350_MMCX	6
-#define SM8350_MMCX_AO	7
-#define SM8350_MX	8
-#define SM8350_MX_AO	9
-#define SM8350_MXC	10
-#define SM8350_MXC_AO	11
-#define SM8350_MSS	12
-
-/* SM8450 Power Domain Indexes */
-#define SM8450_CX	0
-#define SM8450_CX_AO	1
-#define SM8450_EBI	2
-#define SM8450_GFX	3
-#define SM8450_LCX	4
-#define SM8450_LMX	5
-#define SM8450_MMCX	6
-#define SM8450_MMCX_AO	7
-#define SM8450_MX	8
-#define SM8450_MX_AO	9
-#define SM8450_MXC	10
-#define SM8450_MXC_AO	11
-#define SM8450_MSS	12
-
-/* SM8550 Power Domain Indexes */
-#define SM8550_CX	0
-#define SM8550_CX_AO	1
-#define SM8550_EBI	2
-#define SM8550_GFX	3
-#define SM8550_LCX	4
-#define SM8550_LMX	5
-#define SM8550_MMCX	6
-#define SM8550_MMCX_AO	7
-#define SM8550_MX	8
-#define SM8550_MX_AO	9
-#define SM8550_MXC	10
-#define SM8550_MXC_AO	11
-#define SM8550_MSS	12
-#define SM8550_NSP	13
-
 /* QDU1000/QRU1000 Power Domain Indexes */
 #define QDU1000_EBI	0
 #define QDU1000_MSS	1

---
base-commit: 008d3547aae5bc86fac3eda317489169c3fda112
change-id: 20251211-rpmhpd-drop-f0294c41256b

Best regards,
-- 
With best wishes
Dmitry


