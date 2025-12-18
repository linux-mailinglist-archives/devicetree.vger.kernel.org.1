Return-Path: <devicetree+bounces-247729-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A50CCACEE
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 09:13:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6E4CE3064112
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 08:11:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7857F32FA3C;
	Thu, 18 Dec 2025 08:10:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VpV6A/re";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AM9YhEPS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364EE32E145
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 08:10:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766045457; cv=none; b=WLcIDooCEiq31+3SgA5M+YAlgnfR/qx40fhzPArtC21Vw0fpbe9I6gmjn2ZFoj7fOzbuZhEROdI9EZoD3fj+mLxQMJXKZmjH+RvlTVj1NRwFaNKSd+M/mr6MUAerGddg3GY+OM+BvIMy+D/OTvBSwuO+SenD2nVBf68vZqp+V0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766045457; c=relaxed/simple;
	bh=IB9YQIjoTl8ZOJK7bPPU9ZsiC7//VeDVaYjoFiQJcPE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hXJ1E5x2id82P/eNDMwQIqt6ivJXzrECwpWIneO4ck9929VGvaXSgECHi/YNpDq29g4eaJv1wdW0YF0ZjguZ06m52XWw7kMGXWaj0mPWqIcS8UYO0+Tr3mrIzYFcZrbgAT6EqUtF0TIG3ZYd4OWXQsHBusfB2mWS5YknV2BUEfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VpV6A/re; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AM9YhEPS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BI3ao6v754949
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 08:10:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6gTdyh4ezqxD0vBFXnAxPCcE/QYPv9tIPmuui16gpC4=; b=VpV6A/revRiIIl+/
	NQ/DxaoinM/GeEKH76trAlesoPufJxG20NH8PHvoFAr01peVL6A6vZViW4rnU+Bp
	9+0O6eybI1zCh01DREQoCJH2lfUyZjV0MwNTHuP+F0WtDWiHgrf1mENatvllDMk7
	3lmbxLpJcSv7N+/RN4f/sQAb5J3qFvhKZqJGFMWQ8aPDJdb4KZfzcjiJn0RzvCbB
	lnOHg2WUtFZ8xvhf91fpcof1KGBRHXtB6F6TqcMAdIzGoU2vhG7irGHhySr+TbWp
	ygSS5Rf2lBreAx4domOaYm8ng3pYyTLZTihqOeZlpeRhROzXTbeuOjY5+UipJx3m
	4CPYTA==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b49v0rpq0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 08:10:53 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-be8c77ecc63so578490a12.2
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 00:10:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766045453; x=1766650253; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6gTdyh4ezqxD0vBFXnAxPCcE/QYPv9tIPmuui16gpC4=;
        b=AM9YhEPSwOlpRYDSUtv6TYm0BOjdJiniBCDN38S6hhIqhPrmTl5a34ZZQxUWFcx2DH
         V0fXm2Xj6ReSdkrp7TdzEIA7C/HWUEs6sWUJlxqoT9ZWY3jILsIBaJs82peqtcdgZyci
         uhaKFfW0LAnHbkjz3gvuFDQ09kLs4DmiCVmIcD7zOU56b47nAkI7FeU+Ee10WJJxrqN8
         AzOmW7BRix+JqHHAZLr9XE+iiA1q+i6Dm66/KALvzYUYTXvRb5kNZKeP/7M67lAsGIF2
         JvJDovHV89VsJ/GayAuhvg8Xov62/epn6iZTQrmGeYhNlCtODDTVgDSq8QHrQLxTHZ8o
         kdsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766045453; x=1766650253;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6gTdyh4ezqxD0vBFXnAxPCcE/QYPv9tIPmuui16gpC4=;
        b=e3ruFOuqsBFvnwk6nzeIaXH6TSQeeXKINZ6oQj14apjoBF09uqTDPgTH/bhiWRj6XX
         bRlDDHZVbtGzFTTAax60zAR5OaTJ/69EFGZVEZIthv0S0EDtfB2DaW3kn8PdipkwWLwG
         NW3aJg4BDbM4y4tHlH/Jv3JvB7raLpd8YEPKKOpCM+sku9BLGB6RrccV9IqGC4M+j6Ku
         De59fTDBCCNwayHVJOn+NEiJ3RGRAQQxSrJaAuh4blU4b5O6s7B6zdW6FZ8BWwmDB47o
         XpxDoRqtCT4NbQISnx2OjIP5yhLYtrbLdu/9n6DVeOtbpN/S1q17EI9LQKSM4kvrLN/L
         5Q7g==
X-Forwarded-Encrypted: i=1; AJvYcCWvrkiFpe6awCZZgwQMl6VdCXW59ovtDeClsUZOTPa4HLuqAI1Elthbdvv63byrqg7y/WcfSxmCjALP@vger.kernel.org
X-Gm-Message-State: AOJu0YyrBHX3nT9lqFnHq8M7dy8iwtDS+Ol0tRtGKmT6ZMtWh4q2sgoi
	+JgFQtFpPS+Dvw2kerMr5U+cLG4LffVGJhCth+uOKhlriBES/J1Jmh4QO+JyubNIo4nIwwgqBin
	tatohhFV6FbnnJBLohi3uB0/qxxK2Pa4eNGNkbNy0MULgFlqjdAl8/j3GvX9V9PXZ
X-Gm-Gg: AY/fxX51V849G9umCAUOReifkJebOqNIguvowMJBnQA1JocrCIJm3uHjD9hEsny+1WR
	OY11yoe5dR1vfgaZ08CIoRPSRxcMc9pMiGMlBXfgcpuw+ezYxJuUnDgcfWfHwlyS68mPOg929AG
	EGCllaTHOxdmlb7Ov0rUCesies0GGr8jVhb2FJn+uXfrFshOVaArqW/cocmYfhMaW1fpBpsWkKP
	gy837K9rDNpydzw57pDBrTs0JG/8ucVF2PZUg6ckGN+ElSzKWWLmxJyN61hOfdQFduVAOzzQfMl
	ZxfSOB1mnA2KqtbC+ed3/P0IZ1+9nlGNaFDZQZ4j2rzdXNeiaGDsY8OpMDwxtlgOm8GO70VrYE7
	PzaTmBanIEeP9DJfJrNbPVRPc9AeCmvAR35yqrfFBeAD0uQSaGwEGi0O6fuICapgMztE=
X-Received: by 2002:a05:7300:d216:b0:2af:fbb:97d6 with SMTP id 5a478bee46e88-2af0fbb9db4mr3375388eec.42.1766045452463;
        Thu, 18 Dec 2025 00:10:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGy6O37P7HcdZeyhdXCt5nCSuOfsjpbYAlMSKZnHn47tlAEdu/BEZdw077Uc0D8iY6mjzDk0w==
X-Received: by 2002:a05:7300:d216:b0:2af:fbb:97d6 with SMTP id 5a478bee46e88-2af0fbb9db4mr3375353eec.42.1766045451916;
        Thu, 18 Dec 2025 00:10:51 -0800 (PST)
Received: from hu-yuanfang-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b04e58d423sm2564824eec.6.2025.12.18.00.10.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 00:10:51 -0800 (PST)
From: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
Date: Thu, 18 Dec 2025 00:09:50 -0800
Subject: [PATCH v2 10/12] coresight-tmc: Defer probe when associated CPUs
 are offline
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251218-cpu_cluster_component_pm-v2-10-2335a6ae62a0@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766045439; l=4877;
 i=yuanfang.zhang@oss.qualcomm.com; s=20250814; h=from:subject:message-id;
 bh=IB9YQIjoTl8ZOJK7bPPU9ZsiC7//VeDVaYjoFiQJcPE=;
 b=UImHFUGLEN5dtzF1iBXsV0IkphcLBAir0d5O1DosY6wiCmPvKT6KcI1es7/TAxBzlwuv7XkaG
 R94jgxoUDKfDMBnuRFGitFAmzSSyqiGLo7ujkx1OpONeUaniOhZUYMz
X-Developer-Key: i=yuanfang.zhang@oss.qualcomm.com; a=ed25519;
 pk=9oS/FoPW5k0CsqSDDrPlnV+kVIOUaAe0O5pr4M1wHgY=
X-Proofpoint-ORIG-GUID: sl0rceQ8xREdXvVRVJFMXHzM0BGLdHiZ
X-Authority-Analysis: v=2.4 cv=Q/HfIo2a c=1 sm=1 tr=0 ts=6943b70d cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=fD5cxDGOUVrWaoTO3WMA:9
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-GUID: sl0rceQ8xREdXvVRVJFMXHzM0BGLdHiZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE4MDA2NiBTYWx0ZWRfXyJdOAoUh0qVm
 /6Yf1a5aUmmo7vAYZ7UUtr+OK/aN2o2cnUR7zcXKpJpfxCIpUJOeGCkPFChLaILX7uIy36aHJxn
 o5TSBqJjewkEzT43zgQrVa+LhVwmn3PV6wrUNGzLuCMYaHmmP9wz0cc5z17rFNWmDzmSfAecvJt
 LjTJwtUoxIAabQIfjC/smWAF5PtWvF4EMBPQgrpM76RGhbYv1/lB4aHt95Yu0qeVWwA1Zg81fdH
 thHdSbu/FitcGu5IMEgkkANToGwEvOxsEFF4v20Sk8SwguAlh6vft8Eb65aFgwfr+TnqUHq4y3u
 eNn/q+tQWuff788gZv2CP5xEzOLCjRElyPPUMoPGXQbJHdiobJwJDiOCJc0IGuwSwz3eIoNgXbg
 20Ry5RFu/nJCcKhbK6FypDc+uScYKg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-18_01,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 impostorscore=0 bulkscore=0 malwarescore=0
 lowpriorityscore=0 adultscore=0 suspectscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512180066

On some platforms, the TMC driver may probe before the associated CPUs
are online. This prevents the driver from securely accessing the
hardware or configuring it via smp_call_function_single(), which
requires the target CPU to be available.

To address this, defer the hardware initialization if the associated
CPUs are offline:
1. Track such deferred devices in a global list.
2. Register a CPU hotplug callback (`tmc_online_cpu`) to detect when
   a relevant CPU comes online.
3. Upon CPU online, retry the hardware initialization and registration
   for the waiting TMC devices.

Signed-off-by: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
---
 drivers/hwtracing/coresight/coresight-tmc-core.c | 59 +++++++++++++++++++++++-
 drivers/hwtracing/coresight/coresight-tmc.h      |  4 ++
 2 files changed, 61 insertions(+), 2 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-core.c b/drivers/hwtracing/coresight/coresight-tmc-core.c
index 5b9f2e57c78f42f0f1460d8a8dcbac72b5f6085e..9182fa8e4074a7c9739494b2f5d59be2e96f1d3d 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-core.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-core.c
@@ -36,6 +36,9 @@
 DEFINE_CORESIGHT_DEVLIST(etb_devs, "tmc_etb");
 DEFINE_CORESIGHT_DEVLIST(etf_devs, "tmc_etf");
 DEFINE_CORESIGHT_DEVLIST(etr_devs, "tmc_etr");
+static LIST_HEAD(tmc_delay_probe);
+static enum cpuhp_state hp_online;
+static DEFINE_SPINLOCK(delay_lock);
 
 int tmc_wait_for_tmcready(struct tmc_drvdata *drvdata)
 {
@@ -1027,6 +1030,8 @@ static int __tmc_probe(struct device *dev, struct resource *res)
 		if (!drvdata->supported_cpus)
 			return -EINVAL;
 
+		drvdata->dev = dev;
+
 		cpus_read_lock();
 		for_each_cpu(cpu, drvdata->supported_cpus) {
 			ret = smp_call_function_single(cpu,
@@ -1034,11 +1039,16 @@ static int __tmc_probe(struct device *dev, struct resource *res)
 			if (!ret)
 				break;
 		}
-		cpus_read_unlock();
+
 		if (ret) {
+			scoped_guard(spinlock,  &delay_lock)
+				list_add(&drvdata->link, &tmc_delay_probe);
+			cpus_read_unlock();
 			ret = 0;
 			goto out;
 		}
+
+		cpus_read_unlock();
 	} else {
 		tmc_init_hw_config(drvdata);
 	}
@@ -1103,8 +1113,12 @@ static void __tmc_remove(struct device *dev)
 		misc_deregister(&drvdata->miscdev);
 	if (drvdata->crashdev.fops)
 		misc_deregister(&drvdata->crashdev);
-	if (drvdata->csdev)
+	if (drvdata->csdev) {
 		coresight_unregister(drvdata->csdev);
+	} else {
+		scoped_guard(spinlock,  &delay_lock)
+			list_del(&drvdata->link);
+	}
 }
 
 static void tmc_remove(struct amba_device *adev)
@@ -1215,14 +1229,55 @@ static struct platform_driver tmc_platform_driver = {
 	},
 };
 
+static int tmc_online_cpu(unsigned int cpu)
+{
+	struct tmc_drvdata *drvdata, *tmp;
+	int ret;
+
+	spin_lock(&delay_lock);
+	list_for_each_entry_safe(drvdata, tmp, &tmc_delay_probe, link) {
+		if (cpumask_test_cpu(cpu, drvdata->supported_cpus)) {
+			list_del(&drvdata->link);
+
+			spin_unlock(&delay_lock);
+			ret = pm_runtime_resume_and_get(drvdata->dev);
+			if (ret < 0)
+				return 0;
+
+			tmc_init_hw_config(drvdata);
+			tmc_clear_self_claim_tag(drvdata);
+			tmc_add_coresight_dev(drvdata->dev);
+			pm_runtime_put(drvdata->dev);
+			spin_lock(&delay_lock);
+		}
+	}
+	spin_unlock(&delay_lock);
+	return 0;
+}
+
 static int __init tmc_init(void)
 {
+	int ret;
+
+	ret = cpuhp_setup_state_nocalls(CPUHP_AP_ONLINE_DYN,
+					"arm/coresight-tmc:online",
+					tmc_online_cpu, NULL);
+
+	if (ret > 0)
+		hp_online = ret;
+	else
+		return ret;
+
 	return coresight_init_driver("tmc", &tmc_driver, &tmc_platform_driver, THIS_MODULE);
 }
 
 static void __exit tmc_exit(void)
 {
 	coresight_remove_driver(&tmc_driver, &tmc_platform_driver);
+	if (hp_online) {
+		cpuhp_remove_state_nocalls(hp_online);
+		hp_online = 0;
+	}
 }
 module_init(tmc_init);
 module_exit(tmc_exit);
diff --git a/drivers/hwtracing/coresight/coresight-tmc.h b/drivers/hwtracing/coresight/coresight-tmc.h
index b104b7bf82d2a7a99382636e41d3718cf258d820..2583bc4f556195cd814e674dc66f08909dea61b2 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.h
+++ b/drivers/hwtracing/coresight/coresight-tmc.h
@@ -246,6 +246,8 @@ struct tmc_resrv_buf {
  * @supported_cpus:	Represent the CPUs related to this TMC.
  * @devid:	TMC variant ID inferred from the device configuration register.
  * @desc_name:	Name to be used while creating crash interface.
+ * @dev:	pointer to the device associated with this TMC.
+ * @link:	link to the delay_probed list.
  */
 struct tmc_drvdata {
 	struct clk		*atclk;
@@ -279,6 +281,8 @@ struct tmc_drvdata {
 	struct cpumask		*supported_cpus;
 	u32			devid;
 	const char		*desc_name;
+	struct device		*dev;
+	struct list_head	link;
 };
 
 struct etr_buf_operations {

-- 
2.34.1


