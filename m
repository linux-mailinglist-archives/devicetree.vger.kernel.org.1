Return-Path: <devicetree+bounces-258182-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sHfwLeeHcWk1IAAAu9opvQ
	(envelope-from <devicetree+bounces-258182-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 03:13:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 716AF60C71
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 03:13:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3738D828688
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 02:10:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEB1937FF7B;
	Thu, 22 Jan 2026 02:09:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KIgsA6gf";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="biZ5pFSe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA6B3346B0
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 02:09:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769047767; cv=none; b=U5hjPL5nDTRjCcrrThVS6DM8knnKS6sSkr9BfAjKkXakK4imDHGoT1ta7F35PFmz7N44rLZjfqRnlTvID0t4BaL3tAsdoEY9QOnRZcPfqwUc0G0Fwpd/KYgjTykTAub4hFp+gARbyTGPGXQePZJNTg7BGGXNgUMTVOt/Bzky+lY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769047767; c=relaxed/simple;
	bh=Oy7z+jq/TjNetJ2Zgz+w8FIQKCJz069QL66/p8AMAm8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=T9acam71rZPnG2SuQwQKKb4J6hEt4FjnEB1O+FB8pzbEDCCFRbHT/itrh+y9EwKflCil0nu/MML4qlhUbX6r+u64ojzPywNV7NL9APeQhoniOGm4+Rd5cw4bs76ZUrgOpMsVsXrjGns8ijFBbldO9Tgh6RoXgyUr1/fP/RTERk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KIgsA6gf; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=biZ5pFSe; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60LNWYPM646775
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 02:09:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Vt0RRfM8pFKfBxD6jKeqJVSWMlwtbL7pwYs+oCiP02U=; b=KIgsA6gf/++GLgnp
	yOzQIrL5u5xTxvm6RuyMuCAtvzKPCIybMa0Ia6ipu38y5fCfcfQaELKBAWTAmsDc
	1TEZDvmNYem/9SdNrZSz+tXTDWqIHqDVdd42FRBr0b3KUHsVG1gjBgG81HXBDz3e
	UifqyGIQxwmbccWNhp7omAwQiunrOPMZf0ME5Gvzgk7z8kmIYsUEf/dZyuePp46V
	EDiPu5QWgvBHtHNiRmGOlH4uq1oK4ew3Agc5DPIEavlcgTGV7xTYeduqHJhoca6F
	eEVIQKWDGlZS9V3MS1jilDMj2t9KZjOawMJjHFX/jvr6Xb4yLxEQ5LfNCifivwNy
	hu4CZA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bu8j9rb03-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 02:09:17 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a79164b686so4622815ad.0
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 18:09:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769047756; x=1769652556; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Vt0RRfM8pFKfBxD6jKeqJVSWMlwtbL7pwYs+oCiP02U=;
        b=biZ5pFSejzpNyHAhmxfHLsfzYmj7egpwQutE5jjXop/f+sQG1JezcCzA8Jvr/9oNmW
         V3KdVJ54Fy1GIPkzGjwTKLNfuX/IejICBlmJU3ozlHVkfZMlF9J8hAm7XJeu9r02IF0w
         zU3T5uQwD4tHqhn+FsXXx2pYK2nCSBDfcR0jcq2iYcBFcMOTDSPgBuvRc0DdU0U8b8Jn
         DM8FtonONZ2zqoVgvSV/ynroff6tTKW1YUY2O7ZpnOnik4wyYklcJMD5lgoPlbCy19Qy
         ctLaRea3GxoUClOQ/2K2M8hEKiylujHyxPCYtCjfo11TaP560Uf4VqZsWSfCVj+KMUlD
         DWww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769047756; x=1769652556;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Vt0RRfM8pFKfBxD6jKeqJVSWMlwtbL7pwYs+oCiP02U=;
        b=m7YwyrjG7iuQM1E4aBYMCs8FVIU2uqJRO+vgAjo169H59QmeWFOmlkyYMTQVrnP1XU
         qSVKkbepsVTohVy/bSaHLP8W0HhkJMBuZYGsyBrjwtzQv/Fz3dXvq7eklIpJZZhuM8m0
         dbVaCyGDzvqy0Qiom4n5AfjGP9A08jjX9AORm5ehl74MaQ6yKAu0y6s4Soyt8wcNObU7
         X4A4dSdLoB36R9UXZm+Y5JqDVdKoHqWXRGAGJ1knzRN5/wKNGbXQlL/LC+/Rk3Y4Ob2T
         zyxPLyBdefz76CzJBid0Efz76t9EZWkbqjt3xY4NGPzUJCZwBnYpa44oCFOgZkY7SoSQ
         rGtg==
X-Forwarded-Encrypted: i=1; AJvYcCUUwdYSgDdticvG6TF9voNRBtC5Na8HS7xaWXAqwlRVLWKsqKJFaGqNrTQPSBiaDKKg+LWiqrpTPApf@vger.kernel.org
X-Gm-Message-State: AOJu0YzlEeJIDi0Un4nLH+QDZvCRAugKIqpsZjDe5RVQLgofzXxX67LT
	YbvX5Mjb1QPIbMfvj1071wpPOIFddDaOmN79DQmU4g/CMWkhLBqGQS5+FYIKXUQ4gR5it/ve2S3
	7Kof1c95o0aWd3Lr2vx8zFvZ6jO+YTw7FeMWo2t4XozYdw8wtkBths7aQl34Djv2j
X-Gm-Gg: AZuq6aJvdo26JZYCyvLe7wISWRiIV8oikATd/eKjN6s6YWCLioio8odlvj0Miqfcq7M
	wxI85dFeO0kq87uAcQBmPUPAkKqhwFWXsWduPEUzgjmaw5F4V+ZKoMIGCygL7PkaKwy48rpc90L
	Sf8OcwbuL/kYh4c1qZA+h6EiP9LON25iSYmVjjYYvq1IwETyWjz+zHtIKzeUxfBekrLXACabdDf
	h4Udqs9vFWf/08eAoTXoHlmQmLVnmCVEJFqPgVLPhDVGZbHc3fVUkoi5HvQl0KUeMpO2OWDEJH3
	yy8iUhKcuO7P24n4BWeWbqVQtM30wrA368yUuOq75C9oeIHm3EDG5Pt5S8HpnMr1o9JLwfvG8y1
	wkj6M8u66vQInKzqIgXT4tKIa1OYSr83WMuoa9U1b+RRzAh2xJoeaYnmXOb9ENBgJeB2JiqT0
X-Received: by 2002:a17:902:ea02:b0:2a2:f0cb:dfa2 with SMTP id d9443c01a7336-2a7698f854bmr65695035ad.13.1769047756519;
        Wed, 21 Jan 2026 18:09:16 -0800 (PST)
X-Received: by 2002:a17:902:ea02:b0:2a2:f0cb:dfa2 with SMTP id d9443c01a7336-2a7698f854bmr65694615ad.13.1769047755874;
        Wed, 21 Jan 2026 18:09:15 -0800 (PST)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a780a4631csm49710305ad.18.2026.01.21.18.09.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 18:09:15 -0800 (PST)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Thu, 22 Jan 2026 10:08:20 +0800
Subject: [PATCH v10 7/8] coresight: tmc: integrate byte-cntr's read_ops
 with sysfs file_ops
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260122-enable-byte-cntr-for-ctcu-v10-7-22978e3c169f@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769047716; l=3605;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=Oy7z+jq/TjNetJ2Zgz+w8FIQKCJz069QL66/p8AMAm8=;
 b=zE/jK9UyRQbvKpqffm83KuM46KoAYI0VPJL922Np2j6tW1PMB3kyKxwvTMB133OMVD6OegYk+
 SqkWTifXQahDLNDYnWSxW4vIOOKm8qRn7epsNrqh/MCR7f8AqHpK8iV
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Proofpoint-ORIG-GUID: 8d9op-N9rE6cyXe3_2_2A3K2G_VSZPPE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIyMDAxNSBTYWx0ZWRfX1PqZbJTV4CJG
 DGkV/sLMQNd8aFMPR10CuNd8obuorn/4aciurnv0NsSdwXynwIy2zSBsF3rLGsJid8R1NI6rLUK
 VplnH3305ZYWXinJA2wTnTYE3wmmh7nTAg16i5XdtWL99DG32NwgcVLXXu5fUr9AMGfXQuoqD6F
 lvjmE4xn7lne2EBd8zPS9nsjOP+KU6tu7SlQp9dsUlyYqBvOnP6RK47HTYvllMCLChqhw6+p2Qy
 GFJQzYQnN0InHb2up97dSGwK5dINve5fLUyt5WrWfHhXV4UdzusCXTR6xRJTM3zTQ5UJ5j4v2sd
 cEqUHnO8Ws4EA4Uz0B+Z/KRQA5dHEwsVIoeWUBiWeFnmClvfD2Al23f8XFQF46qeNZL12/sTFOF
 RBUSfYpxGGxOi7CBds5VT+6/YLw+AbGtx7r5TBiZ+eKqLMNvMTywLajsmGtsZ1ySdZlyFCryDu9
 /6Wf7OyJH/lg0Un4UzA==
X-Authority-Analysis: v=2.4 cv=U4CfzOru c=1 sm=1 tr=0 ts=697186cd cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=i2GxayCjj04of9N-vEoA:9
 a=+jEqtf1s3R9VXZ0wqowq2kgwd+I=:19 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: 8d9op-N9rE6cyXe3_2_2A3K2G_VSZPPE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_04,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 spamscore=0 adultscore=0
 suspectscore=0 bulkscore=0 clxscore=1015 impostorscore=0 phishscore=0
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
	TAGGED_FROM(0.00)[bounces-258182-lists,devicetree=lfdr.de];
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
X-Rspamd-Queue-Id: 716AF60C71
X-Rspamd-Action: no action

Add code logic to invoke byte-cntr's sysfs_read_ops if the byte-cntr
is enabled.

Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 drivers/hwtracing/coresight/coresight-tmc-core.c | 53 +++++++++++++++++++++++-
 1 file changed, 52 insertions(+), 1 deletion(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-core.c b/drivers/hwtracing/coresight/coresight-tmc-core.c
index 8b0397a77e57..5e74f33f6a23 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-core.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-core.c
@@ -31,6 +31,7 @@
 
 #include "coresight-priv.h"
 #include "coresight-tmc.h"
+#include "coresight-ctcu.h"
 
 DEFINE_CORESIGHT_DEVLIST(etb_devs, "tmc_etb");
 DEFINE_CORESIGHT_DEVLIST(etf_devs, "tmc_etf");
@@ -228,15 +229,47 @@ static int tmc_prepare_crashdata(struct tmc_drvdata *drvdata)
 	return 0;
 }
 
+/* Return the byte-cntr's sysfs_read_ops if in use */
+static const struct sysfs_read_ops *tmc_get_byte_cntr_sysfs_ops(struct tmc_drvdata *drvdata)
+{
+	struct ctcu_byte_cntr *byte_cntr_data;
+	struct ctcu_drvdata *ctcu_drvdata;
+	struct coresight_device *helper;
+	int port;
+
+	helper = tmc_etr_get_helper_device(drvdata, CORESIGHT_DEV_SUBTYPE_HELPER_CTCU);
+	if (!helper)
+		return NULL;
+
+	port = coresight_get_in_port(drvdata->csdev, helper);
+	if (port < 0)
+		return NULL;
+
+	ctcu_drvdata = dev_get_drvdata(helper->dev.parent);
+	byte_cntr_data = &ctcu_drvdata->byte_cntr_data[port];
+	if (byte_cntr_data && byte_cntr_data->thresh_val)
+		return ctcu_drvdata->byte_cntr_sysfs_read_ops;
+
+	return NULL;
+}
+
 static int tmc_read_prepare(struct tmc_drvdata *drvdata)
 {
+	const struct sysfs_read_ops *byte_cntr_sysfs_read_ops;
 	int ret = 0;
 
+	byte_cntr_sysfs_read_ops = tmc_get_byte_cntr_sysfs_ops(drvdata);
+	if (byte_cntr_sysfs_read_ops) {
+		ret = byte_cntr_sysfs_read_ops->read_prepare(drvdata);
+		goto out;
+	}
+
 	if (drvdata->sysfs_ops)
 		ret = drvdata->sysfs_ops->read_prepare(drvdata);
 	else
 		ret = -EINVAL;
 
+out:
 	if (!ret)
 		dev_dbg(&drvdata->csdev->dev, "TMC read start\n");
 
@@ -245,13 +278,21 @@ static int tmc_read_prepare(struct tmc_drvdata *drvdata)
 
 static int tmc_read_unprepare(struct tmc_drvdata *drvdata)
 {
+	const struct sysfs_read_ops *byte_cntr_sysfs_read_ops;
 	int ret = 0;
 
+	byte_cntr_sysfs_read_ops = tmc_get_byte_cntr_sysfs_ops(drvdata);
+	if (byte_cntr_sysfs_read_ops) {
+		ret = byte_cntr_sysfs_read_ops->read_unprepare(drvdata);
+		goto out;
+	}
+
 	if (drvdata->sysfs_ops)
 		ret = drvdata->sysfs_ops->read_unprepare(drvdata);
 	else
 		ret = -EINVAL;
 
+out:
 	if (!ret)
 		dev_dbg(&drvdata->csdev->dev, "TMC read end\n");
 
@@ -277,6 +318,12 @@ static int tmc_open(struct inode *inode, struct file *file)
 static ssize_t tmc_get_sysfs_trace(struct tmc_drvdata *drvdata, loff_t pos, size_t len,
 				   char **bufpp)
 {
+	const struct sysfs_read_ops *byte_cntr_sysfs_read_ops;
+
+	byte_cntr_sysfs_read_ops = tmc_get_byte_cntr_sysfs_ops(drvdata);
+	if (byte_cntr_sysfs_read_ops)
+		return byte_cntr_sysfs_read_ops->get_trace_data(drvdata, pos, len, bufpp);
+
 	if (drvdata->sysfs_ops)
 		return drvdata->sysfs_ops->get_trace_data(drvdata, pos, len, bufpp);
 
@@ -300,7 +347,11 @@ static ssize_t tmc_read(struct file *file, char __user *data, size_t len,
 		return -EFAULT;
 	}
 
-	*ppos += actual;
+	if (drvdata->reading_node)
+		drvdata->reading_node->pos += actual;
+	else
+		*ppos += actual;
+
 	dev_dbg(&drvdata->csdev->dev, "%zu bytes copied\n", actual);
 
 	return actual;

-- 
2.34.1


