Return-Path: <devicetree+bounces-244192-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EF99BCA256C
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 05:44:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 61A42307B4CD
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 04:43:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8ED55302149;
	Thu,  4 Dec 2025 04:43:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JtV66JXT";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="j0kNjrC5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D34E3019B0
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 04:43:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764823399; cv=none; b=KTB+cpTewjTBLmBXIMpUCV7W8ycQ8NF14GljHNJ6JRu6DHWEC8io8erM6bnqKTL0SF07pEk2io6MnqetiPRAsF+/uA15loG6Dg5a4g81jQubt1EiK/APAotc8AZPCldbYST7qi80dRatm1dna8MPacgXhd8WGnTBHySvzsQTVY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764823399; c=relaxed/simple;
	bh=/fUCilk7cQkDDYH/V2caZpg8zsP8hHAk09zzZjiZ0fA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ua+4DiVhADl0HT7EidpZoPHJGG9CItlu+FGuSH8h+RrCQ/JPHuZBsJrncH/6RPXsfnFEMnae/BIviMsisSbTWVS6tIcCGLnu4+NZStVqDA3iJ8Dw6UJ+raIxVaPVa4ec+71g54p1f1K6AZSq9tINslgjWabbUZU7WpPA1CB95EM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JtV66JXT; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=j0kNjrC5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B3GPrXM2662799
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 04:43:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DyVbL0I8/PiNmAYsEUhziVGRGMTqi8AJFMbIQqrrco4=; b=JtV66JXTL6+DwMiS
	gFUiG+0N2j0I1ASgwOYIcV0Wb3m5m+UCzon3ruyAyy4V2MlCnfeWxZxzZdPBce4L
	KIPNBfzK5n1688iel1P5r6qFGx/IJIS5m/Urm0HdTYRNss5QhWwBlaMLcKMRZKNW
	pzQIhBmGolpFNtT2+aITZFKdPrmzoVrSs+nBJzI8nU226+AhUrYzbTh60RffRAVU
	3rBBBJjVrBG/6iSRPfunIaHfj9dn9i0Nm8Viz42Riarbdf57myDcmep2ovcN05jb
	6S9tD6MooerlLtfoMxRUIrVUhIp2D+Zs1RBUHsdc6DuT9YtZDG8gO9SZLOG9S0Go
	8nCwiw==
Received: from mail-ot1-f71.google.com (mail-ot1-f71.google.com [209.85.210.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4atrpphxjy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 04:43:16 +0000 (GMT)
Received: by mail-ot1-f71.google.com with SMTP id 46e09a7af769-7c6c91ba9caso941772a34.0
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 20:43:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764823396; x=1765428196; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DyVbL0I8/PiNmAYsEUhziVGRGMTqi8AJFMbIQqrrco4=;
        b=j0kNjrC5H16QwCy4q3HsyRSHWoXyRLUY6zSSJTT4gwYTPXWzE7fS0Xgsu6EAVAIqxc
         bBeqvTx/bU2AyCBaPloGZWUCV1WB0Ev9zf8FDE6tgnrJxmUBTERrS8WHHYmcvPlou643
         uKYkE8Rg58kvYV1qeNRREFFEMrSnjxGBI/EyoSPwR0k8oIRK0+YArbDQh0vd9nPxUV7e
         1T4zVWyguQVLyuKvRh7uh50ti/s3ZkMBlixo7T596tIDqu1W04KeJ00QsDwKzWsGR8rb
         vTA/BLosyD616+wLPLTGtsveu5yUqcCrnHZhr9kXzh6FstC50/wTJwOceG8R6VXjk5Oz
         +ubA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764823396; x=1765428196;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=DyVbL0I8/PiNmAYsEUhziVGRGMTqi8AJFMbIQqrrco4=;
        b=TyeydKZmBqp8x7pbJMG8UVFuLYZ925bzPjjExVoUrIl/WBPEn4RqrC6qxkCvGDZ2GI
         CQJs1SrAHtfpR/yv1lSUejmnNgCC6vVm4PjZ6NSFiwEIr6xbJeC7XwISRU28cN+fHXgz
         aMCQzr5OCWBgcntpOReAf2hSXoyChIxNbfwEgZ14e5+wjHb1lpK4ZVtuexWLfuIOTpqF
         b5FerOmc5NUIf+UiltO95Fq5+zwl0g8mPg90qVxKXPZgUYIFmyX+6mnVetdP206kdgAJ
         3kHAKpT+iT/XrAMBbv+fak+H9fPv/efk+L4yb2ZesNYH/imPFYGqBAmh95YRnqHN9tS6
         SSgA==
X-Forwarded-Encrypted: i=1; AJvYcCUj/iQPYsW2TIvKVWKZNxUILHF8cuLiytK5HMMsmIq/GhSOEhOCRtjL0j1VYo53bFUgXS4c8UtrTPgc@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3r4zZHgb8G6lZSKTxVIgR1Gwcxz3QsZ8v6PgH0RMhF+73JHST
	ouqtsBXBAXuOA0B3GT6vIschx0rLYlhiBwgGrIBCqHxbM2FLdFdF9ZmX7b8ByeXgqIncC6L9R/v
	4kQZUEew8POMJXyTuNrFvsbohpQ1WTgUglYbLNWPjlrZH05Oo72rVbWJDweTpCd2z
X-Gm-Gg: ASbGnct2eqn3K82osam6/vszUTDMrZAReMkthz3PfocM2B9TydA4MBRKjTU62+yyz+6
	bnBpI1Xz3D/T9jvSh232Z40kqXd6abI2lzdec8DBcx8XLPys2rOCIBlUFz+0czo0sPY2CcWs6XB
	Vjd9yrJEZ5at9a6oP56lniyCjBpqPrqr6c0NW33xqXeQ3Uf8ys9cn84K8I1nABXnbUDED3GQR07
	VozBXJRrkqEBykI958SotE3zfEv4hAMuUgVpRed0JX4V2ALrcwx63Ej1RfEe88MgiqI/CqB+VGr
	1tyy5IDqYD4PXFhKP5MqJpk8XU09m9dHVfjCGQNcPtYjmzEhM9u5Z8AI05ucuCtV1Vr5luqttDQ
	hOgjNSlJTJJVm3NlgiCPreUYz5NUpQm8QzG79XkpraoCP97/Xb0xxilOV3WVJtwOKCQY=
X-Received: by 2002:a05:6830:254c:b0:7c7:3402:7d74 with SMTP id 46e09a7af769-7c958bc917emr1125157a34.18.1764823395714;
        Wed, 03 Dec 2025 20:43:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEZP/3NDRQei8kQL3KCmSFfEUVMHgJ92YmH4XT/+PP8EIUTQ7u2U4tUbdi+J8gvS9I63UYDQg==
X-Received: by 2002:a05:6830:254c:b0:7c7:3402:7d74 with SMTP id 46e09a7af769-7c958bc917emr1125129a34.18.1764823395281;
        Wed, 03 Dec 2025 20:43:15 -0800 (PST)
Received: from hu-yuanfang-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-6597ec5b35csm213766eaf.7.2025.12.03.20.43.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 20:43:14 -0800 (PST)
From: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
Date: Wed, 03 Dec 2025 20:43:09 -0800
Subject: [PATCH RESEND v5 3/3] coresight-tnoc: Add runtime PM support for
 Interconnect TNOC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251203-itnoc-v5-3-5b97c63f2268@oss.qualcomm.com>
References: <20251203-itnoc-v5-0-5b97c63f2268@oss.qualcomm.com>
In-Reply-To: <20251203-itnoc-v5-0-5b97c63f2268@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: kernel@oss.qualcomm.com, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>,
        Leo Yan <leo.yan@arm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764823388; l=1738;
 i=yuanfang.zhang@oss.qualcomm.com; s=20250814; h=from:subject:message-id;
 bh=/fUCilk7cQkDDYH/V2caZpg8zsP8hHAk09zzZjiZ0fA=;
 b=FEFBDYaolHBmEgF36vCAMr6q9LSGePgwYZGFK3ro7c5/wZXSyVHO7L8dWIU7HgUo49Yyz3hAM
 74vz4B2hZjOA7Dgf4YAqOTsHF+R5pWbiMNJQNcB0gOABIUWvbQchKth
X-Developer-Key: i=yuanfang.zhang@oss.qualcomm.com; a=ed25519;
 pk=9oS/FoPW5k0CsqSDDrPlnV+kVIOUaAe0O5pr4M1wHgY=
X-Proofpoint-ORIG-GUID: WtE2rctN8HlCnye3gusP3lTBi08ZRbsG
X-Proofpoint-GUID: WtE2rctN8HlCnye3gusP3lTBi08ZRbsG
X-Authority-Analysis: v=2.4 cv=L+YQguT8 c=1 sm=1 tr=0 ts=69311164 cx=c_pps
 a=OI0sxtj7PyCX9F1bxD/puw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=7CQSdrXTAAAA:8
 a=qearADheJa7ujHrKWl4A:9 a=QEXdDO2ut3YA:10 a=Z1Yy7GAxqfX1iEi80vsk:22
 a=a-qgeE7W1pNrGK8U0ZQC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDAzNSBTYWx0ZWRfXzBnl/RVfOIZK
 OErvglTO3H8wQfF93Ol/SAkQk5h54x6inqpqp27A2qo7XellaxMHSQ9gS/krHiHwPNzSPDmQpST
 wRU9G+7fSm39uo4aoWnGrYqbKAARdG0MCN4edfdpl2ZZfX2ge4PlxUwTAqUth5iDmj8WwtbE5EU
 gqLo4VZsgwc3oRDoENiTpyXdeOHny0VFeiFupdoiaJUsWqo5AJCxvNZVXLAmpO7e4u3/yvCWhCH
 Dw6tCvS5y8q5xmzMgseCsDQ9VsujMOrZhSzkSUDG0BPhIdxLewc1BpYYCD0WmEIkQdt01oyYdAU
 xZXJ2D+iMPiRnVl7J4rqrEtEUayzZOinZtOnz3yRDKMa8NS73n5MZUaGs2mWi5hZx1X5gMZY+3e
 4FaTeevZP/4sBajCt4w7Qsl7ENVe5g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_01,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 suspectscore=0 clxscore=1015 impostorscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512040035

This patch adds runtime power management support for platform-based
CoreSight Interconnect TNOC (ITNOC) devices. It introduces suspend and
resume callbacks to manage the APB clock (`pclk`) during device runtime
transitions.

Signed-off-by: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
Reviewed-by: Leo Yan <leo.yan@arm.com>
---
 drivers/hwtracing/coresight/coresight-tnoc.c | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-tnoc.c b/drivers/hwtracing/coresight/coresight-tnoc.c
index 5be882300d79bc0173aa6a19d7da1d48c4aaca9c..2c5370497076536bfa868f0d80db775ef242968b 100644
--- a/drivers/hwtracing/coresight/coresight-tnoc.c
+++ b/drivers/hwtracing/coresight/coresight-tnoc.c
@@ -301,6 +301,28 @@ static void itnoc_remove(struct platform_device *pdev)
 	pm_runtime_disable(&pdev->dev);
 }
 
+#ifdef CONFIG_PM
+static int itnoc_runtime_suspend(struct device *dev)
+{
+	struct trace_noc_drvdata *drvdata = dev_get_drvdata(dev);
+
+	clk_disable_unprepare(drvdata->pclk);
+
+	return 0;
+}
+
+static int itnoc_runtime_resume(struct device *dev)
+{
+	struct trace_noc_drvdata *drvdata = dev_get_drvdata(dev);
+
+	return clk_prepare_enable(drvdata->pclk);
+}
+#endif
+
+static const struct dev_pm_ops itnoc_dev_pm_ops = {
+	SET_RUNTIME_PM_OPS(itnoc_runtime_suspend, itnoc_runtime_resume, NULL)
+};
+
 static const struct of_device_id itnoc_of_match[] = {
 	{ .compatible = "qcom,coresight-itnoc" },
 	{}
@@ -314,6 +336,7 @@ static struct platform_driver itnoc_driver = {
 		.name = "coresight-itnoc",
 		.of_match_table = itnoc_of_match,
 		.suppress_bind_attrs = true,
+		.pm = &itnoc_dev_pm_ops,
 	},
 };
 

-- 
2.34.1


