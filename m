Return-Path: <devicetree+bounces-259386-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wO5+Ilwdd2lDcQEAu9opvQ
	(envelope-from <devicetree+bounces-259386-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 08:53:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 31C1485150
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 08:53:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A6FE8300B18B
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 07:50:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2CC2315D32;
	Mon, 26 Jan 2026 07:48:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GrO8H3fh";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Q7TzqVdy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9490E31328C
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 07:48:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769413737; cv=none; b=U6UonDli9+pm0cBFzKbw5iz08ntE6amJ4XQAb/qL5kTPhP8YC86JR/sPMITs4tZK8hwrxZ559jgOfVAQb3V9iIVC1ZPs/OPYls9ejV8MQX94QmKsuHuLPdytNJSD3QwhTJTyNZLEBMgfBN4lhmN70doboWfFxHygw2PqrgpUo70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769413737; c=relaxed/simple;
	bh=fYWi6it3rCCr65Id+LeC8mkX1SDe4sDJPpCZSTfEuGI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=giy7UwcFYAjLbMff66J1wnocWBbfRghqAV1TZyXmOMs6N0snD6Pqx0LhOHU3fUfD05+Ai0ZHHnrSUDtsllz/3HUUtaLcAl+3hXspocgdvx97b3lw8UObgrYPZa6YsaxgII6f9HXniAi2RrTDe2lZdH7IL7mg+ooaJtJwpl10D7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GrO8H3fh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Q7TzqVdy; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60Q5UJEm1019092
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 07:48:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4gIye7UQNPbdPhV/Q1vWHhs/KIv3bebvvJhc2HVhooY=; b=GrO8H3fht2IipknQ
	sSKyAl4IYQHxY1pMQQDatJPvob3JTF3HImBr4ENW1yC2sXQvP6lzZsC2Gx9aaMQP
	pkHVjwQg0iBU6Q7Gl8KVU+VfDXn3nMF/GZ4ZiW+rjhKMhkC5ZSindFIf0dpiF9M5
	jzBDt18AejB1L6MkudfIr9Ky+IaR/Ze+aMumJfIMGdtV4mLkgrG8FcJGA9ohIlUY
	WHscgldAL7WDUmyTY1WvnnL2/w4GZ3tVRCyx+eI55O/ZOsjzeInNsu+g363lbIAd
	UwoYhcec6B9tR7/QzKoPql/WC6tmi905gd66h7BoF15wnvNrdAhiV4NO9u+OJvfM
	owMHUQ==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bx26809h0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 07:48:54 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c56848e6f53so2457966a12.0
        for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 23:48:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769413734; x=1770018534; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4gIye7UQNPbdPhV/Q1vWHhs/KIv3bebvvJhc2HVhooY=;
        b=Q7TzqVdyydfy9M0h8XrRNWPfU1I2GTBLamtXs1zWMMid4qDvDd5chMMA6fDKZKy9QT
         9rzN9PncmgNQnlf26lmQsEZcjHIK83vS7yk/Jplmu7yTP7ZxPy2r0SB8JbAlR9kqJzIm
         Z4/nmCr0UQ4F8Ze5gFIO32VX1pGBrvoVSVgRgs0B0xWqpIqTvo5mIDHuuSLGEqIZKa20
         tA1tSayFVK5VupMFYCQEgvETCgmg6dk8FEZ4CZSSD5x14YsILoBTAZipHCTUbdcml/1H
         06c+VFIgGkTV1SdLmnMZwLlZTJJfxyS0plV+LHAHbEidaGFQxjEwNBrDoABGCeFIHU3A
         exlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769413734; x=1770018534;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4gIye7UQNPbdPhV/Q1vWHhs/KIv3bebvvJhc2HVhooY=;
        b=lbItRp4ThcvxgK4O9ydI3sXfowy/q66xdKrjxO98P4xrs9qWQmeU6knjV/fkqNWrUV
         7/TIeB0Snnrk4Ax4duRHPKT+6LqMiAisk4fdx98TsU9a3RXShN10sjX5OJPSGaKXKZai
         q4JcisdowcOL3Rho7wKTJlYzPJQGdr6iTpnNRFwWm1yvvp2qD8KGs1MgpTfrqMYxRbEO
         OFxCdE8Aw3NZndJseJh3PBy/RGKZslr2zD5ubwHxRTrf5UeUalPf+xpOfK7f5p7KcrXK
         10ENICQpHGqOvSpIVZzT6a3N9cIs8D22HQozoEW/EZOg/tttrQaMvd5qnxqNV50BDSEn
         dFVw==
X-Forwarded-Encrypted: i=1; AJvYcCUjH9qd4KnnMBvh8etcAQKUnYS5CpvZCO0T7oXyJKQRYLUmLLV5MCP129s6541lVxaX58C/rvt1Oq0F@vger.kernel.org
X-Gm-Message-State: AOJu0YxsWhwB3/9UdpcV3243JZGJFuenDoVqrn3F9ZkvXpWuqS1DTcpD
	HC8S/RFp2pd6pBtxzzi1mcxxpq0QEsL5mX9dCssebx3ceEKSuCdjh7P341ntag0MjGmg5iY0d4q
	dSQI6VVWSHn/04PB5NRgOj/TB4GsGi+qif94Q5VoMqETTDocyy18/88ckKLI2zKgZ
X-Gm-Gg: AZuq6aJ3AwadcRgf/lUReSa2zA+UR1CbVGmgblKdI1X9dXzflf41XRSeCpb2wFsIMzO
	CZYTyif17/bErrszMqf6q4RxyzhvQDWGunyxvT4gadyzh37oAq9f1m3db6mzJBH+XtHOMfXwgaa
	EayLa+Zwxhwvt9j5D19bBEcLPMda4UfFut3gzLnvi3cmH5w9swXNoTYg9P3FZ4CAqQrel9Mtgy8
	Rh+CaU64JXHQz6KECJedUM5ZL43hRPnZGk1LPDFdYXV02sZeRGtOKpCjluHEfQ4PIDYkNCu1rmW
	R+byJvfv3gbqfnSoA+X/Od/rDqEP4g8RwSm7NWByYDKYbgXzfBUcv+9tNOzpgVuIpWWb5wMaEfQ
	TCYhfcvBjuFZzgrqhasZ7MZQIVN+0RYFsgxEbuMNCqbFM136ARXBZ9S2UexrUjftJkjapMDTV4J
	+C
X-Received: by 2002:a05:6a00:8d94:b0:81f:995d:6cb with SMTP id d2e1a72fcca58-823412d9289mr3296081b3a.36.1769413733964;
        Sun, 25 Jan 2026 23:48:53 -0800 (PST)
X-Received: by 2002:a05:6a00:8d94:b0:81f:995d:6cb with SMTP id d2e1a72fcca58-823412d9289mr3296055b3a.36.1769413733496;
        Sun, 25 Jan 2026 23:48:53 -0800 (PST)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8234fd9a5a7sm1223418b3a.63.2026.01.25.23.48.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jan 2026 23:48:53 -0800 (PST)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Mon, 26 Jan 2026 15:47:56 +0800
Subject: [PATCH v11 4/8] coresight: etr: refactor the
 tmc_etr_get_catu_device function
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260126-enable-byte-cntr-for-ctcu-v11-4-c0af66ba15cf@oss.qualcomm.com>
References: <20260126-enable-byte-cntr-for-ctcu-v11-0-c0af66ba15cf@oss.qualcomm.com>
In-Reply-To: <20260126-enable-byte-cntr-for-ctcu-v11-0-c0af66ba15cf@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>, Mike Leach <mike.leach@arm.org>,
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769413705; l=4412;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=fYWi6it3rCCr65Id+LeC8mkX1SDe4sDJPpCZSTfEuGI=;
 b=UJnXSFL79huFwDQeeINc5HmqIQvIG4Wua9f5RXCBnj2KI8WFg7dFFU3bzJbZunIagSjnxh6Bo
 WobJdmWoxbXDUSqzioewnFE2oO4k9VVDYNQElrobh6S6ekOCGvUzSVu
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Authority-Analysis: v=2.4 cv=bIEb4f+Z c=1 sm=1 tr=0 ts=69771c66 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=-ozbsww5GKt6_lkPIaMA:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI2MDA2NiBTYWx0ZWRfX7nr+9UWpmR50
 EPuS5LomicvNEUrKyhwKDTuQhI+LEBKHvOPOEaNs0Q9AdMaAAwfWQwZNsKRq5QVWHT9nS6k8erv
 oAOm49XOy7KJG/IVHgftih9XukzHtzwLc/fOp/bGsnRBoM7FuvayavdWQvqHes0Q6yzVOr3+TXN
 8DoXTYNXkrh/y4pQRXobhFiavExQIflHoaJKz3S5WSoQSbyxQ4rY7rjzJpUKdmMlnb+6O/agKQg
 zpMvolzI3ObkExT0LmVq4Cb1QZLL2nYOSLAJ8/VJi5PlDIuytdJXRsJ+JjnO9Ke4ni/HQVrEfPa
 mJg0MysSyUAzmMNzMJgOeB+3n0of73Waf7gS1QeOSSz5l1sZm1q1xgpfCILuULyh3ciB9njFxLB
 p0hOZQOXd3Avf8tg8I3ZLVkQ+VpljnIFJgCj1eX3IjrB1Kyi+4gihHRtYO1e16060NcNkBo2MXL
 PSvWW7hKWkGPlqIOkQQ==
X-Proofpoint-ORIG-GUID: KktE2NLqERUovmFwR9S_Pw6QST6ssAVY
X-Proofpoint-GUID: KktE2NLqERUovmFwR9S_Pw6QST6ssAVY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-26_02,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 lowpriorityscore=0 malwarescore=0 priorityscore=1501
 clxscore=1015 spamscore=0 impostorscore=0 suspectscore=0 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601260066
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259386-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 31C1485150
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
index c780f6d5dede..e573503f2edf 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.h
+++ b/drivers/hwtracing/coresight/coresight-tmc.h
@@ -469,7 +469,8 @@ static inline uint32_t find_crash_tracedata_crc(struct tmc_drvdata *drvdata,
 	return crc32_le(0, (void *)drvdata->resrv_buf.vaddr, crc_size);
 }
 
-struct coresight_device *tmc_etr_get_catu_device(struct tmc_drvdata *drvdata);
+struct coresight_device *tmc_etr_get_helper_device(struct tmc_drvdata *drvdata,
+						   enum coresight_dev_subtype_helper subtype);
 
 void tmc_etr_set_catu_ops(const struct etr_buf_operations *catu);
 void tmc_etr_remove_catu_ops(void);

-- 
2.34.1


