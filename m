Return-Path: <devicetree+bounces-247727-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id F4015CCACDF
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 09:12:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AD9C630568AD
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 08:11:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73B3932E732;
	Thu, 18 Dec 2025 08:10:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fi2Ewbik";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="enqHYcgb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 463D9329C7B
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 08:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766045455; cv=none; b=o7ahIcrka+h8hj4f6v3ZXG/Cv/XE0yoKrsB2v5GiR1OKedDOAJjoAdWzr2EIUdLbxeLTD261IEuaSM34y1nzvaEKxnygyHFB2q30qJnBfUSW2Jt9uo+7lQdAfIddugyWFoLHN3Uk1BnxbIGeSIzkmKxDxtJ0j58E8XROZ6FHC7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766045455; c=relaxed/simple;
	bh=1g8pF946hN6QW1p+2Y+2RyrV1bnSaFCc0AvdfQQfoFE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aJIr5psGj6aBOxJ5IuvwkkL+fdQEO6DiQJcLksWPOr3aT7ZE4u9swYxyw5TSWf540y3C1flP0ucpLErbJAGAlbjwg1XowJ9tjqHEuPiq+62xdKoLF/MGhuSgkKZ53glMdSU0uxeUt8obHNFVn9yk1W1Fmy+CSO2n0i0cDfslyN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fi2Ewbik; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=enqHYcgb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BI1YeLc813882
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 08:10:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	obNSaSTOOTPVE2brVhtt4blNBM8SFy3K9RGAeqq87XA=; b=fi2Ewbikq3/Mbbl0
	DKmXEo9g4DTUc/lsviEfjQRXOHLJbavYYNECF+gsgjdTVzqjYeDmUlTzMfuW3To3
	X1ALz/LJ3QaQiaKkxZN1p9z8opMuQgoG88b7yxOTK8GJH/bzm6UWn3JwJtwc4Jv2
	MOLpPqAoiuOIOhZFEiCCrzhW62OANxQDSN86Yedo3f/w7oRrCHdEDjITMG4xb3B9
	C19W+kQCvcqbKezSWrRCjtgPDiOsaiYHEfLOF3uFR3aPMVCLAx49zT+9kCeq3gcr
	eJ63SMcOYR7advV9rQOmilgs8uPyqWyU/Qx6KrTzoAQNfCkaCrrrxcU7F0Y8F2kX
	WseAtw==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b40v7a5uw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 08:10:51 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-bdced916ad0so714892a12.0
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 00:10:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766045451; x=1766650251; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=obNSaSTOOTPVE2brVhtt4blNBM8SFy3K9RGAeqq87XA=;
        b=enqHYcgbpePDrKCSOkBw6n/shItGK+UBXIhSoCFBGp6tP9tQ/sM/sXsZKNsE7C15Pl
         pd1UzAmty6iNs84lnsloyqMrz1CoI2UKb2eu2Kfu5ZlieofR+qPCv/cCjC2fYl1asDAR
         k2uQh/QaVKhMJ6UBV46L2EMlrYWbEkkXjCF+lwlmasV+oU+HONc/AhLyP2rit0NjCCJj
         P/knm4/FKXEw4/6IRQ/jRrb2UnQU9c6+V+QLQT4niR5c2uO1i5NCm0CocEbEov2b1a4p
         QfKQOnNUa0mlYUbAvRv4JXDOYeYO0b3RUX0DrmRS2zuq7ColIAUee6kKymTiFPxLz+u5
         XJpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766045451; x=1766650251;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=obNSaSTOOTPVE2brVhtt4blNBM8SFy3K9RGAeqq87XA=;
        b=oPENBqCZJfSUnirpKu+LyXK08SZRhivxb0m0T1PVWTGWNZp2J+m1Azak0Z0LA6qoYF
         FSvqhtMmOHuSC+ter/TedRzUdIGLh4xqv7vs609ZlcU7/seFn2XI0AjUZ6FrcInjn356
         iStpcvrws6j4c8sqweOVdFwriebgCWtxQKr1RkZoFtgkmOqKRv+5pKTL3gkZ8SiPIVs8
         Smu8pNvI2WeviOySsAQS52YcCj6gjalbPl+prSB//p6BDNnyEcgK7TIrdd5CFISuA3tb
         h8PntWubFdznM1haONN1soNLTsN/5eJM1zDIV/EWlbl7SESa7TxJVIJGI6Nzur4yr+UK
         SNRA==
X-Forwarded-Encrypted: i=1; AJvYcCVVyfPYlUl6BCOCz+VNTod6qwa5d52ue7PBxctJdGjQq5tClIWZHHC5k+jUYf3+Cxi2OWyluphvIth2@vger.kernel.org
X-Gm-Message-State: AOJu0YyThfod15HhYBR0FhkgySE5M5BYCtsNFhZ+/8LEqrR9FR/q+XSh
	jDFihLpqOvsrg4DQSWvcFO9inQ9gCuaRqXv5/wMJ/pYMn3AZA+R30YszyMiGCoXctKQcDXET5Rb
	OwaCH0DQCgkumIG+KCMGcGskD0teUmD5UZ2D9LhB7LAnCysht2bPqN37gMypYWwxc
X-Gm-Gg: AY/fxX60dlxSRjOsf1boZNQ3IDPefiWm/7mkN2dUokw5iJxpmrqfgrgO7KbuWce0szD
	VP8GxSmYjyUEdCpAm2+tkgKNX+BBcoblxUHfRUbSZ0mDYBLswTJYQ8u0t7C/K5D4Mnb9JzteD4r
	qKLxaDGeYoaTDxNyrRueeipS0y2VuAbJINh9QbMWbMj2eew1Xtusw7v48Jz4sIBEBp5vSmNEobZ
	dvw07vzo6/7O/1LeRfgMaAX25yK1lj984PNxot9MuCxyUMIUI3sEK9nyLU5D/Kg/TXMfGUetu78
	RCsTeI8wC3CcQX3t3RyVI1V0l2gD/4/1U3mQhlKQ1ryuwtLJumpXo6Ss4adMsl7LkvbxAME2TPH
	tutN9Os4OjLIgAsRxvN6ipM/pKLwzw+KmJOKadT1OpJ5rKKC3MIq8ja0oThzQL+sNWV8=
X-Received: by 2002:a05:7301:470f:b0:2ae:598e:abe8 with SMTP id 5a478bee46e88-2ae598eaf3cmr4491215eec.24.1766045450735;
        Thu, 18 Dec 2025 00:10:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG//Ua7KzwxbW7K7yQH3IjKB6SQcK/rZ6YvZkRgVKeAv1W0+e6EfSeQeXBeDYpI+5c+wNI0NQ==
X-Received: by 2002:a05:7301:470f:b0:2ae:598e:abe8 with SMTP id 5a478bee46e88-2ae598eaf3cmr4491181eec.24.1766045450152;
        Thu, 18 Dec 2025 00:10:50 -0800 (PST)
Received: from hu-yuanfang-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b04e58d423sm2564824eec.6.2025.12.18.00.10.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 00:10:49 -0800 (PST)
From: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
Date: Thu, 18 Dec 2025 00:09:48 -0800
Subject: [PATCH v2 08/12] coresight-tmc-etf: Refactor enable function for
 CPU cluster ETF support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251218-cpu_cluster_component_pm-v2-8-2335a6ae62a0@oss.qualcomm.com>
References: <20251218-cpu_cluster_component_pm-v2-0-2335a6ae62a0@oss.qualcomm.com>
In-Reply-To: <20251218-cpu_cluster_component_pm-v2-0-2335a6ae62a0@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Leo Yan <leo.yan@linux.dev>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: kernel@oss.qualcomm.com, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>,
        maulik.shah@oss.qualcomm.com
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766045439; l=5305;
 i=yuanfang.zhang@oss.qualcomm.com; s=20250814; h=from:subject:message-id;
 bh=1g8pF946hN6QW1p+2Y+2RyrV1bnSaFCc0AvdfQQfoFE=;
 b=WalzKq5mo+m1DDBa+j4hcG65FGQtoJ3y4iK+EaoBGFEl1Vw118qcQjkGDdZHOm1k6i33ttt5x
 1kKC8wGvW7OBjHIQk7Fy4CY0PWitDwlSVzZ8QiZKiX/Izb0Z5cmPHwy
X-Developer-Key: i=yuanfang.zhang@oss.qualcomm.com; a=ed25519;
 pk=9oS/FoPW5k0CsqSDDrPlnV+kVIOUaAe0O5pr4M1wHgY=
X-Proofpoint-ORIG-GUID: eOBgnibs_Fizb4ZKbnoICYCzhe8tmSuG
X-Proofpoint-GUID: eOBgnibs_Fizb4ZKbnoICYCzhe8tmSuG
X-Authority-Analysis: v=2.4 cv=f8JFxeyM c=1 sm=1 tr=0 ts=6943b70b cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=ArRTHoG_oAt2a2GmjD0A:9
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE4MDA2NiBTYWx0ZWRfX2bIJSj9SF1Xl
 8cvucV63ALPIBSdQIT8IYPgw7y5Y70zglHeQvoEbZGNDMwKTAkrXmDyL/PxZtHXotsduatiTvab
 sqIB46iLuTuAvcHsOducFNJkzlG5fbge0jb7+mfL0PWKHLsown8yLxi69PbouNmzOX10qJpMafk
 dx3NrHCAAjbZalSU39ow0HqN1EWxpt+wZI5rez3hjg0/ZqqKNoeFo5sq7Ng0pRVXgdrtz4KSKaC
 R735b18gHNKQDNVTbkkHQB0WPV02UdbCdcut6iiREDZX8yC4ZDGtRc6yuIu0wdX6Qy14g3FiCZo
 Dtygg2JncE/LSV78Plfdybb1mVEStR3JkvejMO+7NzTJ6i/aYjsqrotHUy7WsDMVJ/Qdi8EmnOZ
 CTNLiVNJRdJ3wA+0OlCxvQgB5/RtRQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-18_01,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 clxscore=1015 suspectscore=0 phishscore=0
 impostorscore=0 bulkscore=0 malwarescore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512180066

TMC-ETF devices associated with specific CPU clusters share the cluster's
power domain. Accessing their registers requires the cluster to be powered
on, which can only be guaranteed by running code on a CPU within that
cluster.

Refactor the enablement logic to support this requirement:
1. Split `tmc_etf_enable_hw` and `tmc_etb_enable_hw` into local and
   SMP-aware variants:
   - `*_local`: Performs the actual register access.
   - `*_smp_call`: Wrapper for `smp_call_function_single`.
   - The main entry point now detects if the device is CPU-bound and uses
     `smp_call_function_single` to execute the local variant on an
     appropriate CPU if necessary.

2. Adjust locking in `tmc_enable_etf_sink_sysfs` and `tmc_enable_etf_link`:
   - Drop the spinlock before calling `tmc_etf_enable_hw`. This is
     necessary because `smp_call_function_single` (used for cross-CPU
     calls) may require interrupts enabled or might sleep/wait, which is
     unsafe under a spinlock.
   - Re-acquire the lock afterwards to update driver state.

Signed-off-by: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
---
 drivers/hwtracing/coresight/coresight-tmc-etf.c | 87 ++++++++++++++++++++++---
 1 file changed, 77 insertions(+), 10 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-etf.c b/drivers/hwtracing/coresight/coresight-tmc-etf.c
index 8882b1c4cdc05353fb2efd6a9ba862943048f0ff..11357788e9d93c53980e99e0ef78450e393f4059 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etf.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etf.c
@@ -47,7 +47,7 @@ static int __tmc_etb_enable_hw(struct tmc_drvdata *drvdata)
 	return rc;
 }
 
-static int tmc_etb_enable_hw(struct tmc_drvdata *drvdata)
+static int tmc_etb_enable_hw_local(struct tmc_drvdata *drvdata)
 {
 	int rc = coresight_claim_device(drvdata->csdev);
 
@@ -60,6 +60,36 @@ static int tmc_etb_enable_hw(struct tmc_drvdata *drvdata)
 	return rc;
 }
 
+struct tmc_smp_arg {
+	struct tmc_drvdata *drvdata;
+	int rc;
+};
+
+static void tmc_etb_enable_hw_smp_call(void *info)
+{
+	struct tmc_smp_arg *arg = info;
+
+	arg->rc = tmc_etb_enable_hw_local(arg->drvdata);
+}
+
+static int tmc_etb_enable_hw(struct tmc_drvdata *drvdata)
+{
+	int cpu, ret;
+	struct tmc_smp_arg arg = { 0 };
+
+	if (!drvdata->supported_cpus)
+		return tmc_etb_enable_hw_local(drvdata);
+
+	arg.drvdata = drvdata;
+	for_each_cpu(cpu, drvdata->supported_cpus) {
+		ret = smp_call_function_single(cpu,
+					       tmc_etb_enable_hw_smp_call, &arg, 1);
+		if (!ret)
+			return arg.rc;
+	}
+	return ret;
+}
+
 static void tmc_etb_dump_hw(struct tmc_drvdata *drvdata)
 {
 	char *bufp;
@@ -130,7 +160,7 @@ static int __tmc_etf_enable_hw(struct tmc_drvdata *drvdata)
 	return rc;
 }
 
-static int tmc_etf_enable_hw(struct tmc_drvdata *drvdata)
+static int tmc_etf_enable_hw_local(struct tmc_drvdata *drvdata)
 {
 	int rc = coresight_claim_device(drvdata->csdev);
 
@@ -143,6 +173,32 @@ static int tmc_etf_enable_hw(struct tmc_drvdata *drvdata)
 	return rc;
 }
 
+static void tmc_etf_enable_hw_smp_call(void *info)
+{
+	struct tmc_smp_arg *arg = info;
+
+	arg->rc = tmc_etf_enable_hw_local(arg->drvdata);
+}
+
+static int tmc_etf_enable_hw(struct tmc_drvdata *drvdata)
+{
+	int cpu, ret;
+	struct tmc_smp_arg arg = { 0 };
+
+	if (!drvdata->supported_cpus)
+		return tmc_etf_enable_hw_local(drvdata);
+
+	arg.drvdata = drvdata;
+
+	for_each_cpu(cpu, drvdata->supported_cpus) {
+		ret = smp_call_function_single(cpu,
+					       tmc_etf_enable_hw_smp_call, &arg, 1);
+		if (!ret)
+			return arg.rc;
+	}
+	return ret;
+}
+
 static void tmc_etf_disable_hw(struct tmc_drvdata *drvdata)
 {
 	struct coresight_device *csdev = drvdata->csdev;
@@ -228,7 +284,11 @@ static int tmc_enable_etf_sink_sysfs(struct coresight_device *csdev)
 		used = true;
 		drvdata->buf = buf;
 	}
+	raw_spin_unlock_irqrestore(&drvdata->spinlock, flags);
+
 	ret = tmc_etb_enable_hw(drvdata);
+
+	raw_spin_lock_irqsave(&drvdata->spinlock, flags);
 	if (!ret) {
 		coresight_set_mode(csdev, CS_MODE_SYSFS);
 		csdev->refcnt++;
@@ -291,7 +351,11 @@ static int tmc_enable_etf_sink_perf(struct coresight_device *csdev,
 			break;
 		}
 
-		ret  = tmc_etb_enable_hw(drvdata);
+		if (drvdata->supported_cpus &&
+		    !cpumask_test_cpu(smp_processor_id(), drvdata->supported_cpus))
+			break;
+
+		ret  = tmc_etb_enable_hw_local(drvdata);
 		if (!ret) {
 			/* Associate with monitored process. */
 			drvdata->pid = pid;
@@ -376,19 +440,22 @@ static int tmc_enable_etf_link(struct coresight_device *csdev,
 		return -EBUSY;
 	}
 
-	if (csdev->refcnt == 0) {
+	if (csdev->refcnt == 0)
+		first_enable = true;
+
+	if (!first_enable)
+		csdev->refcnt++;
+
+	raw_spin_unlock_irqrestore(&drvdata->spinlock, flags);
+	if (first_enable) {
 		ret = tmc_etf_enable_hw(drvdata);
 		if (!ret) {
 			coresight_set_mode(csdev, CS_MODE_SYSFS);
-			first_enable = true;
+			csdev->refcnt++;
+			dev_dbg(&csdev->dev, "TMC-ETF enabled\n");
 		}
 	}
-	if (!ret)
-		csdev->refcnt++;
-	raw_spin_unlock_irqrestore(&drvdata->spinlock, flags);
 
-	if (first_enable)
-		dev_dbg(&csdev->dev, "TMC-ETF enabled\n");
 	return ret;
 }
 

-- 
2.34.1


