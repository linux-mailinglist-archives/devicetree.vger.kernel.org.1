Return-Path: <devicetree+bounces-258179-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6DY0Kp6HcWlaIwAAu9opvQ
	(envelope-from <devicetree+bounces-258179-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 03:12:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E2AC60C0B
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 03:12:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6DBAC4E4948
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 02:09:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32C8136CDFD;
	Thu, 22 Jan 2026 02:09:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LmvrmMfS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YUH+VOe3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C6C36E46C
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 02:09:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769047748; cv=none; b=KxEfk3bBTELav87hlmKqC19CCpFN3WtKCUzMXiI/ftztCLEeLXrwJBWXUyJN+SGR3UBueCf/2BJtq9lEgPmm+e8IWu82Ien6Kn7T0/n12tQ7icARFGgBArZYU895mhfC+hWnxu7FptLO2WdPMj1l52bXgK3QmSCSpYKL4c4alFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769047748; c=relaxed/simple;
	bh=1Yd4/OeyiYY49Es4IJlY73zV9yzGJi6c/ilE5vOhlX0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=oNy60rImJGU3MLNnozxM/Ov/ag7OtYyuGgcS10vIhClVw75R9jXcb9eMuxNCoUA9/SqkVZxNzgXFJfVdzH5bt5g4J7Rlvh+7h3/FiQPomXj3/kY5GMwQZArQbe1FgL4CnkcJfSGkPLB3P1bJdCuRZCxz1e90sFR874BGW07Yibg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LmvrmMfS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YUH+VOe3; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60LLNU4v788889
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 02:09:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rDoLTMZ0B/5YJB6UPqg6ddrMGqlIPrOwvKMKnhBl/fg=; b=LmvrmMfS2MrkO5Yr
	D9+fraziqK8OC/qlIsjMNuADn9dWfkkC/pM2MR++/zttxhAaynddedc0enbKgUUe
	JceSPg4vGN66jYll6F7yD5c30ldhuuaothl0H2z0HzsQvu0F91tLmqBm4cu1fYCi
	cpWWSTC0PV0oHFUDwPDVRX9FfHCqWvGjkZ6VcYMytwnquZKpwB1Bqwx0FXkFW2xZ
	gf2Z867zNFZD86ovIPzrodVdBhrAKC5+SgoyFohX6MnJVttQzwWGrdEK8GSLswaV
	bHmaChElXYpRJ3NZLpGHzvySZDAY4lT+aq7HzuTFNeqC4l8OrCya12+sEgau67vp
	+JinXg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bu6p1gn2w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 02:09:03 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a0a0bad5dfso7973715ad.0
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 18:09:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769047742; x=1769652542; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rDoLTMZ0B/5YJB6UPqg6ddrMGqlIPrOwvKMKnhBl/fg=;
        b=YUH+VOe3JIulcmvvwISTIERe+wIjF/kyHRDk+6rxoaTfeTY3h4exep65BPoioXlT86
         BM3vE7HnI6hJf/nEiEMxjgW33JU1NYuf6/cV15iTrO4jnmrkEBZh4DBKpzxV6BxQv7hS
         pz4ijmaTfAKzjOhf3Sf1zt+sefy+ZPLKFe5fU3QzHo1XlPp2mfR60vjV/gMwpTo3Qff1
         jKZp5WHq4TXSuH3dI+Y+mBPY6l8kWWj3uMmmWVQeYKCxhTwrC5oEKJczwOLc9QeLGWRw
         hNcNQfJDe/KUWQ1jgk2vNsgp6lLTsAvSwWoa5rVQvKVRY1M8f357YBxMsH8z69DdkT5J
         4wkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769047742; x=1769652542;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rDoLTMZ0B/5YJB6UPqg6ddrMGqlIPrOwvKMKnhBl/fg=;
        b=L7dtL2utNCT2tmxHA03zqFDS/wjyewak39OmPvTxwd2edyfn5/6WKI63tjuRnFdEQ/
         tIbTXYez8EHvZmAxmCYfAdVkmt/52ZqTV5xqScwcpY2EpBnu8v7Xi6rGI/5x45mYzj7a
         zcJv7/hFqVkAwXRGKxHlsIpF2MM6rRQ595xNofpgawoIB7WppVTjWBInn8UEJAikPIIV
         ho8jNgEOgREkSMdz7tKqQLh+uR4hfL73lap/2JrH0eYWFLcaRTLkwfreVaSsq50xjBvs
         Dp2R48kY7c3MPuQhIs5rXakG3tcoIIPE52XhlvBHMksIaF90Lh50JeEWkj+fJwcQx8s9
         nKUA==
X-Forwarded-Encrypted: i=1; AJvYcCW1F7BQTf4cDy91LiSGldjIC+EgyI59mAiG9jtcyvRLxPMxxrnMczYik6fezynDqTDSsBc8UU9sAZpp@vger.kernel.org
X-Gm-Message-State: AOJu0YxYElqxBLpPUifon4gH8NOtHuMKHyx2WeH0o74+0unjNWO2CFuK
	kBzDPkx6sSUA2yympasJSNni9J1agEDg5Fi+heaEHO5FWSvCKIStqbGdh/xHbL5iIy5Q113uiT1
	bYpwDYZ+JK94Zgxnm1hdQ+Co8rOtnWlfy3IIyYixq0rZHK9BtcvkjuLT1UtXSzPuL
X-Gm-Gg: AZuq6aKT9mwUkOZMeRWMCl4YPFEI0o3LsUzAqbqR+kqcjQ8XZdw2CcXiC9mGk7QOhiI
	AOOCCjtSMwsSShxZJkDXsifbWajuXrEbY2127wm7YvoikHzRgHZsOWojdK2XNcH9fmbKjazjxVX
	pElp3aErkwTNnJ6hkuPvQ0q1zQaQnoyFv1KnIuzgGDv69/1Oa2Fl1rnPJs9/bZ9uExjtGALI2c8
	/esPtpJUFgA0eb0Y3c+U9gNyAf+Q5tkMizl1hqXONLfpudb+WAw9O5UP0HYcME6NVvg/7r9boSe
	ZRe8xaTQATI7eWbm3ahPZYvBrdxhjkcSHqgatwFgIL1YSWP1q73Qw8O5U+qxd6jHYWJul4tkgvG
	gIwp4lUGRsLie9hJNnb9zwgzUFc+ZXNPI1l42DR1Ep8yCU4ATWDc5BDsgKKTsb3QRN6B6QEcv
X-Received: by 2002:a17:902:ec8e:b0:2a7:5171:921a with SMTP id d9443c01a7336-2a751719312mr78653625ad.54.1769047742018;
        Wed, 21 Jan 2026 18:09:02 -0800 (PST)
X-Received: by 2002:a17:902:ec8e:b0:2a7:5171:921a with SMTP id d9443c01a7336-2a751719312mr78653315ad.54.1769047741481;
        Wed, 21 Jan 2026 18:09:01 -0800 (PST)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a780a4631csm49710305ad.18.2026.01.21.18.08.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 18:09:01 -0800 (PST)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Thu, 22 Jan 2026 10:08:17 +0800
Subject: [PATCH v10 4/8] coresight: etr: refactor the
 tmc_etr_get_catu_device function
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260122-enable-byte-cntr-for-ctcu-v10-4-22978e3c169f@oss.qualcomm.com>
References: <20260122-enable-byte-cntr-for-ctcu-v10-0-22978e3c169f@oss.qualcomm.com>
In-Reply-To: <20260122-enable-byte-cntr-for-ctcu-v10-0-22978e3c169f@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769047715; l=4412;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=1Yd4/OeyiYY49Es4IJlY73zV9yzGJi6c/ilE5vOhlX0=;
 b=DTMOiYD2h4vVx6W7jK2n596Ajp+2RBJ2ATsqrncV6tq1QOz6iBHg/9UDdHvW6nYw1ldjPJNES
 MDZgoyGPZoICgwR8/fUlFokUpybl7HsS3KUdGcqsENSUfvZyFr37SVJ
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Proofpoint-ORIG-GUID: vJ-NPlij5hICLcm2trMa_vR4eoo-dtDV
X-Authority-Analysis: v=2.4 cv=N7ck1m9B c=1 sm=1 tr=0 ts=697186bf cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=-ozbsww5GKt6_lkPIaMA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: vJ-NPlij5hICLcm2trMa_vR4eoo-dtDV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIyMDAxNSBTYWx0ZWRfX0eygYSPf75Qa
 HHVBhyh3xgbwTE1Yj1wVWMskqAHO0HDSii4nLaA7POFGP6qGqrsQf0S7kAprCUMAcQpOQ6DDyUw
 +Kt08uQ7g4JEKHq9bWiZ11GA6ORaInDK7HBX7yvRygXmtXeMThSq9zD3SKjwbx5JcXmh0FxeSfG
 qKJZJv5WsL9o5jzQWkKJFR6UVMEXSENoDu4Io0KMXMal+hvQ0tB47DtQtgfHaXokkptNstVm19A
 edPuHkY1OQPynYYSrLJBbgs98X8aeRhZSPsdNjI6+v8mgbcqfwwyCjW23cpWfpUVgNDP6Ui8zkk
 SlgfmLkcFLMmy6oox62Xh5dCZXaQM8KC4Y0UhlUAIbXbNI76EWTmQUhU7C4mByvuNmnL3fN+jXu
 vbdVQ9yF7ynQ2Z5hQttZFT/7GTErQYJVqmGkthOnlgqctDo1/hXLsfSvfu4nN1azmEOQ4yQwvS8
 YbRRRpEt9dwd7bHg0yw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_04,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 priorityscore=1501
 malwarescore=0 adultscore=0 impostorscore=0 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601220015
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	TAGGED_FROM(0.00)[bounces-258179-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:helo,dfw.mirrors.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1E2AC60C0B
X-Rspamd-Action: no action

Refactor tmc_etr_get_catu_device to retrieve the helper device connected
to the TMC ETR based on helper_subtype.

Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 drivers/hwtracing/coresight/coresight-catu.c    |  3 ++-
 drivers/hwtracing/coresight/coresight-tmc-etr.c | 32 ++++++++++++++++---------
 drivers/hwtracing/coresight/coresight-tmc.h     |  3 ++-
 3 files changed, 25 insertions(+), 13 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-catu.c b/drivers/hwtracing/coresight/coresight-catu.c
index 69b36bae97ab..d3972619cc96 100644
--- a/drivers/hwtracing/coresight/coresight-catu.c
+++ b/drivers/hwtracing/coresight/coresight-catu.c
@@ -334,7 +334,8 @@ static int catu_alloc_etr_buf(struct tmc_drvdata *tmc_drvdata,
 	struct tmc_sg_table *catu_table;
 	struct catu_etr_buf *catu_buf;
 
-	csdev = tmc_etr_get_catu_device(tmc_drvdata);
+	csdev = tmc_etr_get_helper_device(tmc_drvdata,
+			CORESIGHT_DEV_SUBTYPE_HELPER_CATU);
 	if (!csdev)
 		return -ENODEV;
 	catu_buf = kzalloc(sizeof(*catu_buf), GFP_KERNEL);
diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
index cbbb15648fb7..16a4562533d5 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
@@ -844,28 +844,37 @@ static const struct etr_buf_operations etr_sg_buf_ops = {
 };
 
 /*
- * TMC ETR could be connected to a CATU device, which can provide address
- * translation service. This is represented by the Output port of the TMC
- * (ETR) connected to the input port of the CATU.
+ * TMC ETR could be connected to the helper device, which can provide address
+ * translation service(CATU) or data filter function(CTCU). This is represented
+ * by the Output port of the TMC (ETR) connected to the input port of the helper.
  *
- * Returns	: coresight_device ptr for the CATU device if a CATU is found.
+ * @drvdata	: drvdata of the TMC device
+ * @subtype	: helper_subtype of the helper device
+ *
+ * Returns	: coresight_device ptr for the helper device if a helper is found.
  *		: NULL otherwise.
  */
 struct coresight_device *
-tmc_etr_get_catu_device(struct tmc_drvdata *drvdata)
+tmc_etr_get_helper_device(struct tmc_drvdata *drvdata,
+			  enum coresight_dev_subtype_helper subtype)
 {
 	struct coresight_device *etr = drvdata->csdev;
-	union coresight_dev_subtype catu_subtype = {
-		.helper_subtype = CORESIGHT_DEV_SUBTYPE_HELPER_CATU
+	union coresight_dev_subtype helper_subtype = {
+		.helper_subtype = subtype
 	};
 
-	if (!IS_ENABLED(CONFIG_CORESIGHT_CATU))
+
+	if (subtype == CORESIGHT_DEV_SUBTYPE_HELPER_CATU &&
+	    !IS_ENABLED(CONFIG_CORESIGHT_CATU))
+		return NULL;
+	else if (subtype == CORESIGHT_DEV_SUBTYPE_HELPER_CTCU &&
+		 !IS_ENABLED(CONFIG_CORESIGHT_CTCU))
 		return NULL;
 
 	return coresight_find_output_type(etr->pdata, CORESIGHT_DEV_TYPE_HELPER,
-					  catu_subtype);
+					  helper_subtype);
 }
-EXPORT_SYMBOL_GPL(tmc_etr_get_catu_device);
+EXPORT_SYMBOL_GPL(tmc_etr_get_helper_device);
 
 static const struct etr_buf_operations *etr_buf_ops[] = {
 	[ETR_MODE_FLAT] = &etr_flat_buf_ops,
@@ -913,7 +922,8 @@ static void get_etr_buf_hw(struct device *dev, struct etr_buf_hw *buf_hw)
 
 	buf_hw->has_iommu = iommu_get_domain_for_dev(dev->parent);
 	buf_hw->has_etr_sg = tmc_etr_has_cap(drvdata, TMC_ETR_SG);
-	buf_hw->has_catu = !!tmc_etr_get_catu_device(drvdata);
+	buf_hw->has_catu = !!tmc_etr_get_helper_device(drvdata,
+			CORESIGHT_DEV_SUBTYPE_HELPER_CATU);
 	buf_hw->has_resrv = tmc_has_reserved_buffer(drvdata);
 }
 
diff --git a/drivers/hwtracing/coresight/coresight-tmc.h b/drivers/hwtracing/coresight/coresight-tmc.h
index c9a82ff6cd00..7690a70069da 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.h
+++ b/drivers/hwtracing/coresight/coresight-tmc.h
@@ -471,7 +471,8 @@ static inline uint32_t find_crash_tracedata_crc(struct tmc_drvdata *drvdata,
 	return crc32_le(0, (void *)drvdata->resrv_buf.vaddr, crc_size);
 }
 
-struct coresight_device *tmc_etr_get_catu_device(struct tmc_drvdata *drvdata);
+struct coresight_device *tmc_etr_get_helper_device(struct tmc_drvdata *drvdata,
+						   enum coresight_dev_subtype_helper subtype);
 
 void tmc_etr_set_catu_ops(const struct etr_buf_operations *catu);
 void tmc_etr_remove_catu_ops(void);

-- 
2.34.1


