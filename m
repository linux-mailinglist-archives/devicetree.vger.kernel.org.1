Return-Path: <devicetree+bounces-171018-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F38FDA9CFF9
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 19:49:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 14B801BC3D06
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 17:49:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F97A21FF29;
	Fri, 25 Apr 2025 17:47:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Xkr3egGP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62AB11C1F05
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 17:47:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745603249; cv=none; b=GgYS6JWlYYXiFKeMYLMAvD660k+LFt6FdYLSZAJ2GlhMLdFANBoNjjzXRnKoyTUZQmUFoNjg4nw8YtBG+540BmgCj90DoMDAvHEhFFwz9NjeueS3Twr+2YB43PwE/phSEHbpGLqjrTaZj8NpZfSF5Wi28zFZUo5Qhnmv3rXhx7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745603249; c=relaxed/simple;
	bh=rGO8ljRJj2lTMiYab3pEL79ThIPqrqw2LC84J1Wlwas=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aJVCM0HybDzHtuCnuilibepzLoID/rt4W39FFOh3PV8tETnwKXxgz3RvyZI8v46SFKVo0bnZCe5upTAWYkZor6f2uowDJzul59DVTBuuP4rMlJbJYZ6KHIwJ9jRSGPciu3TsXm4DwBGZoRJut1IbnYBbRWuL/V5SlTBrF4wmU68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Xkr3egGP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53PGJxoL032126
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 17:47:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	L8yxRMa5j4oUptRKWHe6HWZoaMIYXuESwxb2I3uAvtU=; b=Xkr3egGPvQBMqfvZ
	sHfJnV7mOhh9cU8rDpnIyogIh5trcjpGubkLRxGW6stErGedhZciMiZf3SzO2grS
	l9RQ696ISHdprxMvlgXp12YInFEXFWmCP9AqxUOPAhMSx5Kslc4Cj6bb4BKeTmHt
	I0LP3aLbpYOtkZqFHgxfV4rIEO57oAPRUBRFLp41+kLLdqt1n/bjHP3xrP2Bo9rE
	hBGqKvHszSrOA4DcIf/mctY1ytr+0iHf4031VExvKaDyWrgyQemGhsU5r2pJCsDA
	qAw8QTSwnJMWGr94lmcALuRsOqppXmbg85a5p/7VSdYjLQwT9qcfoTeZToBApM42
	Bz9vmw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh19r8t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 17:47:27 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c790dc38b4so454829585a.0
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 10:47:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745603246; x=1746208046;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L8yxRMa5j4oUptRKWHe6HWZoaMIYXuESwxb2I3uAvtU=;
        b=H0r6/6IbPFykia0nxTPCiFA41bwOWooJ9Z2eARYnpZv4Jiaq8KdA+hryfbB5/hsKDS
         RtjQ2+mpHGSCBcTr0QWmGTNMoOwNtmngdAkHVNrl/sVu1uNezq8lTyDr4R+7mK6w4uYY
         Nh4l7GycHwWv4GJDXs0ydFuyeYYd+VxPg4CV56MBuxEA/3f7jNwa+BAGISV5Q2Oivuuf
         Jvu0M70iAoMj2hRKoWD1TS2X1Hcg4nWdpo68PrUSafhUAGZDXYQedRjVRYcbW4tMfOkG
         S6fTNNsrAv4KKU7NremxiBL5d1iTI09YwRJLYrEqCJXz1CzivOAU6QWoK1HmWbztJYX0
         8i4g==
X-Forwarded-Encrypted: i=1; AJvYcCWS8bUQ7KaeiRqkWM/8OLG6gr0HXiKOHkeH9pj4Qd8Az9h5ZUbdXwxygkf5WiujfO5lppOhVs8ok/k9@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3Yb8MR9uHiFZRZI88sUv10CJI9JW5VFbCau3vE7IVB6GIXScO
	ReLs/GiF5Yz36WTWZT0uO4MW4nzq0utHHGlGDfFMV/ZF+0qij4OrfsFONgmDD1GCg665turICJW
	Gf3iT6Nk1ZVcf5tVE1GthdvSr4yvozBh8xSOlF3HQNyhJ9Zq/fzlk2LQPI1yv
X-Gm-Gg: ASbGnctVgVkDR0cSEE80zQxHGkzuZNKPqMW6krTfvvr0cqrYOf7FRe/m822p+xcjNQ4
	za8NiLwRQefE9yfa66bk6P1LJmlF3JVIIbVs48d3saBqdN6yoq/QzODo24QXepCXhjXexPDnEaj
	1dH7mqbjifBPjD4aKICblqVMHS7HeDCCm06wABnxUVoXHjNVAFOcvmmXcf6dKagvs/wgOdrUifE
	muhM44pRmcUNsadm7WifzZgalZbFk5BdH97IJFBD4kwGjgaon2dh6fxFkpIY1d3QH388Z6OTYgf
	q2NXe+s7O7zORlGHiJaNf0c6ZfmqcJ71LaEHR1b0yyMg3BXrdzW5v4HddiEeduU7Eo7ThxerMxq
	MFA4RbEIK8vClEySDevV3Acq1
X-Received: by 2002:a05:620a:2806:b0:7c7:b570:e2b1 with SMTP id af79cd13be357-7c9585c34e3mr1115672485a.7.1745603246429;
        Fri, 25 Apr 2025 10:47:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEyO7skjdxEitddsiiY5N9GZywVEp5UO6PuVT+RDOkZj0UhA+nqJkEF2t1jDX/OPZY2TrG84w==
X-Received: by 2002:a05:620a:2806:b0:7c7:b570:e2b1 with SMTP id af79cd13be357-7c9585c34e3mr1115669185a.7.1745603246100;
        Fri, 25 Apr 2025 10:47:26 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7cb3bd4asm673193e87.84.2025.04.25.10.47.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 10:47:25 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Fri, 25 Apr 2025 20:47:10 +0300
Subject: [PATCH v3 10/11] ARM: dts: qcom: apq8064: use new compatible for
 SPS SIC device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250425-fix-nexus-4-v3-10-da4e39e86d41@oss.qualcomm.com>
References: <20250425-fix-nexus-4-v3-0-da4e39e86d41@oss.qualcomm.com>
In-Reply-To: <20250425-fix-nexus-4-v3-0-da4e39e86d41@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Georgi Djakov <djakov@kernel.org>,
        Lee Jones <lee@kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Leo Yan <leo.yan@linux.dev>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=918;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=rGO8ljRJj2lTMiYab3pEL79ThIPqrqw2LC84J1Wlwas=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoC8qbH6ks4F2IG+geZ5nLFwIQL5PdUZWUhGgvS
 bsECHmZTLeJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaAvKmwAKCRCLPIo+Aiko
 1W81CACQKxfSv9/Wvb30KQhe+Zl+zbWPGvxuxRYx+QZjGBjGlV/G5PTEoRk4Zun3MN2GndY6+1e
 mkHqQybOLnPd/UaztNZPBj8yYPjC4KLEYzL2ftMjk4uU2Ytjuiq4/RI23IGqgFN5HqhdeOhluFW
 GB8hEnBc6FQBDM85AJ+pZmR67gt8249s0UYMW3YJwH+90zd8x2VzUE0055ywB8k9HIUmzlSsMjZ
 8kEZ3O5+fOHj3iAU79FiGZloQdwzcrFZ/3A+c6k3RFDLK4j3ZyNbH3V6zUvSEcDK8JiRpFxm7RJ
 5586h8evUzfqCB92ud4/C8JvIPndzud9uhp3vVGfXeKMlLcV
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: 7LlLiKyemDBgbhB2uKqTs37qL3DwYgbQ
X-Authority-Analysis: v=2.4 cv=OY6YDgTY c=1 sm=1 tr=0 ts=680bcaaf cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=p_EMIZExALG5VSdhSekA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: 7LlLiKyemDBgbhB2uKqTs37qL3DwYgbQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDEyNiBTYWx0ZWRfX37yi9YTCOmY5 jQni7IbYdq22x8KgVfhWpnM7RcjLY7uF14jEDPm/w/FNBpWc5lKIzdec40Pxlt2dEt187hthIeC sXV0A8N6JPG2pPDgOq75ZzSCry0mLLREBx698tpzUVjAnkzxfbmX/sKB2S/4U8vlwVwPTD/JZG0
 HhSHAiZ4NXnuz/RrJoK91ICHXt5RlUgrYna2/+v+KbBb7EF3Jmq2/oarrxevy+O+3FG8i9PFf82 XEx9K13EjZ3/omhmIXWvUaZkxyOvB2e+S0PypEIjeYKkN7CIIUlA7/e2l0ntg52EbG3oVFloSq7 fcJm6CKdM+8ynxAE29Rnx9vqTHb5a71KPb0Up5JBWK5MbhFCzcL2kU28F/sIqJn2lbLcRxeZFk4
 DpxwoXKBPIxAwXD1DiN0fhRj1TOyTzFzhoZrMdSDDNy0EICMMaPoUz3p29aTmOXIllfdzANX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_05,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 lowpriorityscore=0 suspectscore=0 mlxscore=0 clxscore=1015 malwarescore=0
 mlxlogscore=554 phishscore=0 priorityscore=1501 spamscore=0 adultscore=0
 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250126

Use new SoC-specific compatible to the SPS SIC in addition to the
"syscon" compatible and rename the node to follow the purpose of it.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm/boot/dts/qcom/qcom-apq8064.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
index a5aad4f145dd368aabed44cf520ffc037018b37e..b6533630e347c8fc5e3f0791778cd05760b3f3c8 100644
--- a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
@@ -402,8 +402,8 @@ saw3_vreg: regulator {
 			};
 		};
 
-		sps_sic_non_secure: sps-sic-non-secure@12100000 {
-			compatible = "syscon";
+		sps_sic_non_secure: interrupt-controller@12100000 {
+			compatible = "qcom,apq8064-sps-sic", "syscon";
 			reg = <0x12100000 0x10000>;
 		};
 

-- 
2.39.5


