Return-Path: <devicetree+bounces-258176-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iCaSN2GHcWk1IAAAu9opvQ
	(envelope-from <devicetree+bounces-258176-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 03:11:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EDAC60BD1
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 03:11:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A93674F5E9C
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 02:09:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37A3C36BCD1;
	Thu, 22 Jan 2026 02:08:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Y3e+qvmO";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WA+1cW2K"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E607136AB4C
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 02:08:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769047731; cv=none; b=CoI1QVOiAF0t9f5hIRB/sF6El+Wh3oZwuDOe/LDdd8K670gpbcu2x3J/rJhMydodgzIc7znrUH6/n1z4baYEI00944AJhprO7o/mJbbZH2wRaLg0bcsYWfSG5ZsPoy2pb3fi0PrLkGtGYo6VOx49kWNGn2fWoRqmGz8P81gxOfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769047731; c=relaxed/simple;
	bh=x79EOx0VHbHe/nWXls6UDtNS83yDuFtih92LzPbC2MY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qyh+5kVE/6oYPtoxFtN82bKtKTG2LYSO+FykvvGc2umrOYl5qpLHSoNRpFKqZ50XpZfteviufiBWb6TQWxcy/55xiNX625p/JqkF2tsLiJ6VP9G+q6eSRqMeaZCPga7WJasVdKaBh/Ucx0/rYUNAJaTJbE6C9zjL0GODHW8pN/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Y3e+qvmO; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WA+1cW2K; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60LMrRl41407419
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 02:08:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TjPxjq1G/MyM9wZuLe71IZ2aZxQ93j8UibxFtFmopSw=; b=Y3e+qvmOABrmij41
	JOMJ1xcI+z1A3PEf7mUNHEKZWXIPEe4/IiERPan8DWauvLF2k1MoWg+njmRNjGgb
	jQsFTGM70UEKDihd6rJP5arUYXQR7ChJMf+VR94CgDg4XYMhMInwSKJD3XbVwIb7
	gXdGmQt0J7Uvu3UmkrZFa/pyNp3gqsTfWvW+nMaNybfSvTawpKuGDLL7W59xGkRw
	ddSyJlnMLvD21mSuH8RhHbzEt3Eg3khAYdZY/vSY/4c1ZPXLy8PW8n07ybGns/8L
	NQB0ABAbLzb8+8NlwQqlDBgxJf5Uxuhe9vg3KKBZzWHr3zb29nO9xo8JITwioqe3
	sypJtw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bu802rf7s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 02:08:47 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a76f2d7744so3497055ad.3
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 18:08:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769047727; x=1769652527; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TjPxjq1G/MyM9wZuLe71IZ2aZxQ93j8UibxFtFmopSw=;
        b=WA+1cW2Krg54MltkiuZ3jvD2M7/El41UWAH3OJVp5Dn8wXD5WcYBvd50/wPe86dybZ
         oR2vOSQzZI1ia0ViyX3UcSSYXlcTAuCSmU6IUl4eodYfR8D0CKPw/PbfsJIKrZf47L6T
         b6Z3FSByLNRvFzR7dBMrh48a00HHc6aDmoX3tFTdLt2I2pkMQJGN9CW6OGyDf66UO/N0
         UOjPspHdazz81bPR3iunSKbDBY53xnLYkhGvhFhJVYMKrOBiNIkGAyTsrlg2W4vcFMvj
         3FsRuzIQwV+3C1youPP597MuJxVksukIUWHu/Sh4S0WmTKaqbqbA+VMonD+UhyX29rVI
         keNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769047727; x=1769652527;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=TjPxjq1G/MyM9wZuLe71IZ2aZxQ93j8UibxFtFmopSw=;
        b=L+S0S3jc5imkfpwtLpum1trUj57t24EnZZbdX2tPHoJveIba0TcaAC1iXrizHBplaI
         hX6Xo38vk0drcZ+a3wMi6UAVKFVALt2sBjTBNJDQ8ZtAbL+ePZ76dvxcb+H1et0hfiOf
         afUUwPMr+w7qqnKo/BvgFdBi0NCLIKmEw1tPw1D2C3p9CSi/VVVIC5pA00q92TD2bPyn
         OA7V/KiEjKkJBsC13le46n2vEiLcoXWdpO8RHx7XqSN3NQURZJKg3hh4raPoJ/0Jz9Eg
         /oUTMBAjFsUtbg+OJVOlsTd3gXn1OE5mFILtN5LwJjIFpLCtajT6doTjkgycAEpHbILy
         qQBQ==
X-Forwarded-Encrypted: i=1; AJvYcCVYCru3qSnnZTSCO1gXA9twvwc/1ak89U1RiK+UbFLlxmCfccsBzzpfgqgrBvESd+fEwrhExuf22Pgq@vger.kernel.org
X-Gm-Message-State: AOJu0YwUQxHgNJdFZTTwFuYh4fRwLdCCQERGOaP6Zsz60rE2S2S3tD1A
	PF5kTJWyqCUTJcWSjU9hIJZXxZell4OBRbSGOPcCuqIKBrpouXp5EnFg1Ce09TDdjJX5C+gLMSF
	1itAYWzJtTDFN+ELWaRTwOXHvTvmf7ZEKeNfPrGPkd3tf609HELgpIXo4sPrTfM8Y
X-Gm-Gg: AZuq6aIbOqztt1/9a3AuL04MJtDu9GJ315p98sx73PlfSO65QCzzjRdXrbUw6e4RldM
	00ceOczJnrcpZ2Chauo23q80/48KvHK3IPL5ns/7+mddsMsyxDTrAOanUID09qi6XT8bkFm2rg1
	OVHPOUdVHP6X7/MzJigb4VN7vxAxvpeG3mzMtobUYjBdyg/RR8EC96MDe1KNicLTQb0u7JwEfUu
	E1xIv4W4/PzctDDwHhSYKyiZTTsnSJZDCAv8TFE03G1v7cKdah4vIo2LYg84Sm0V6kex+89CK5g
	VZ182Jy2dtJ3GvN1vWRM6/ZLkFvGct2AkMnzSpo1fmo92tX0YxEP+YH/b4R8SGEAmGcJlIl3wr+
	2ubWRpGQUTr8JXYx0iIn1lfLVcNCQpnwAWPImXMlv830snzS80HsURLeLpT07Apf+9qDuXyJ0
X-Received: by 2002:a17:903:2b0f:b0:2a0:8966:7c94 with SMTP id d9443c01a7336-2a769336c65mr63150935ad.20.1769047726740;
        Wed, 21 Jan 2026 18:08:46 -0800 (PST)
X-Received: by 2002:a17:903:2b0f:b0:2a0:8966:7c94 with SMTP id d9443c01a7336-2a769336c65mr63150565ad.20.1769047726186;
        Wed, 21 Jan 2026 18:08:46 -0800 (PST)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a780a4631csm49710305ad.18.2026.01.21.18.08.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 18:08:45 -0800 (PST)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Thu, 22 Jan 2026 10:08:14 +0800
Subject: [PATCH v10 1/8] coresight: core: Refactoring ctcu_get_active_port
 and make it generic
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260122-enable-byte-cntr-for-ctcu-v10-1-22978e3c169f@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769047715; l=3769;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=x79EOx0VHbHe/nWXls6UDtNS83yDuFtih92LzPbC2MY=;
 b=yaflaOS4YWqXOYMcpMUjHpYf2iFkhRxjAfa9CSFqnu4+U3hr1I9kbq3e9zZPFVsc1VebrCeJO
 db5p1pJP5dNDiY+FWpA7zei6q1qBqYzNNcXPMJk/fyYkJ/NmJKZ+lAU
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Authority-Analysis: v=2.4 cv=TcWbdBQh c=1 sm=1 tr=0 ts=697186af cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=qQZ2XtAyJf2dEkEvaVsA:9 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIyMDAxNSBTYWx0ZWRfX1XN2Ipu9xeo1
 wXNCTdBFSliWV+sbTyn/UC9eQB9MaIadkCPLL9J21qrTQ2Hl/4mJ0F2tlBMac1iTnBjqi6qpHrw
 SHZNhtd5957D8y/aU11QVG30ipJ3DMkI8D1aHOWVZIaV4IyPzpctno40PVUuq0QKQsfB6nFR7Fv
 /n11Wuaksf6P4+37IUNnPHgsMxHgayVrCh7gjA7avHWEcyJDIMIGLblHpWlJFj9g8qmsJjzGPQv
 94h/7zIF1JV7B9W0hUVkUlW+mk8m/3PRmkY+JJDxMdLrRtBqpK95Jyozp3xBtWIA+JwE9wor6Xf
 ftCabXWzHQDF1Yh2Zg6lyWN8Iol+gtMFXpfuMVaet3dPFCRcS6uYjADRynrqvY8rN3dfwzijWVp
 oVnJ7r5ICrV9nfn27SilMzhApHGfhD43s3EPWO1Y4IAGmgSufcsScI22l7DQJtQUWohNkrbGvxn
 JReAYjoBlmchE7a4fAQ==
X-Proofpoint-ORIG-GUID: b_FQaW3lH8mM17mKl61Ntn7wHNWovMmL
X-Proofpoint-GUID: b_FQaW3lH8mM17mKl61Ntn7wHNWovMmL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_04,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 suspectscore=0 bulkscore=0
 priorityscore=1501 clxscore=1015 phishscore=0 impostorscore=0 adultscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601220015
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
	TAGGED_FROM(0.00)[bounces-258176-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,dfw.mirrors.kernel.org:helo,dfw.mirrors.kernel.org:rdns,linaro.org:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
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
X-Rspamd-Queue-Id: 8EDAC60BD1
X-Rspamd-Action: no action

Remove ctcu_get_active_port from CTCU module and add it to the core
framework.

The port number is crucial for the CTCU device to identify which ETR
it serves. With the port number we can correctly get required parameters
of the CTCU device in TMC module.

Reviewed-by: Mike Leach <mike.leach@linaro.org>
Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 drivers/hwtracing/coresight/coresight-core.c      | 24 +++++++++++++++++++++++
 drivers/hwtracing/coresight/coresight-ctcu-core.c | 19 +-----------------
 drivers/hwtracing/coresight/coresight-priv.h      |  2 ++
 3 files changed, 27 insertions(+), 18 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-core.c b/drivers/hwtracing/coresight/coresight-core.c
index c660cf8adb1c..0e8448784c62 100644
--- a/drivers/hwtracing/coresight/coresight-core.c
+++ b/drivers/hwtracing/coresight/coresight-core.c
@@ -585,6 +585,30 @@ struct coresight_device *coresight_get_sink(struct coresight_path *path)
 }
 EXPORT_SYMBOL_GPL(coresight_get_sink);
 
+/**
+ * coresight_get_in_port: Find the input port number at @csdev where a @remote
+ * device is connected to.
+ *
+ * @csdev: csdev of the device.
+ * @remote: csdev of the remote device which is connected to @csdev.
+ *
+ * Return: port number upon success or -EINVAL for fail.
+ */
+int coresight_get_in_port(struct coresight_device *csdev,
+			  struct coresight_device *remote)
+{
+	struct coresight_platform_data *pdata = remote->pdata;
+	int i;
+
+	for (i = 0; i < pdata->nr_inconns; ++i) {
+		if (pdata->in_conns[i]->src_dev == csdev)
+			return pdata->in_conns[i]->dest_port;
+	}
+
+	return -EINVAL;
+}
+EXPORT_SYMBOL_GPL(coresight_get_in_port);
+
 u32 coresight_get_sink_id(struct coresight_device *csdev)
 {
 	if (!csdev->ea)
diff --git a/drivers/hwtracing/coresight/coresight-ctcu-core.c b/drivers/hwtracing/coresight/coresight-ctcu-core.c
index abed15eb72b4..78be783b3cb2 100644
--- a/drivers/hwtracing/coresight/coresight-ctcu-core.c
+++ b/drivers/hwtracing/coresight/coresight-ctcu-core.c
@@ -118,23 +118,6 @@ static int __ctcu_set_etr_traceid(struct coresight_device *csdev, u8 traceid, in
 	return 0;
 }
 
-/*
- * Searching the sink device from helper's view in case there are multiple helper devices
- * connected to the sink device.
- */
-static int ctcu_get_active_port(struct coresight_device *sink, struct coresight_device *helper)
-{
-	struct coresight_platform_data *pdata = helper->pdata;
-	int i;
-
-	for (i = 0; i < pdata->nr_inconns; ++i) {
-		if (pdata->in_conns[i]->src_dev == sink)
-			return pdata->in_conns[i]->dest_port;
-	}
-
-	return -EINVAL;
-}
-
 static int ctcu_set_etr_traceid(struct coresight_device *csdev, struct coresight_path *path,
 				bool enable)
 {
@@ -147,7 +130,7 @@ static int ctcu_set_etr_traceid(struct coresight_device *csdev, struct coresight
 		return -EINVAL;
 	}
 
-	port_num = ctcu_get_active_port(sink, csdev);
+	port_num = coresight_get_in_port(sink, csdev);
 	if (port_num < 0)
 		return -EINVAL;
 
diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
index fd896ac07942..cbf80b83e5ce 100644
--- a/drivers/hwtracing/coresight/coresight-priv.h
+++ b/drivers/hwtracing/coresight/coresight-priv.h
@@ -155,6 +155,8 @@ void coresight_remove_links(struct coresight_device *orig,
 u32 coresight_get_sink_id(struct coresight_device *csdev);
 void coresight_path_assign_trace_id(struct coresight_path *path,
 				   enum cs_mode mode);
+int coresight_get_in_port(struct coresight_device *csdev,
+			  struct coresight_device *remote);
 
 #if IS_ENABLED(CONFIG_CORESIGHT_SOURCE_ETM3X)
 int etm_readl_cp14(u32 off, unsigned int *val);

-- 
2.34.1


