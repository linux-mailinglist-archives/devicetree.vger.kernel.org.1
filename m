Return-Path: <devicetree+bounces-267281-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iNjnFlD6m2l5+gMAu9opvQ
	(envelope-from <devicetree+bounces-267281-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:57:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C2B1B172714
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:57:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 23A283036092
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:56:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6060534A79A;
	Mon, 23 Feb 2026 06:56:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kuS4Z3VD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QsjgRBk6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEF0434A795
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:56:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771829788; cv=none; b=OtFdZqYzpGlW/Eq65y1mGH5of78vu7vK4f7lZkLbmrBVwccYdM1iCBntkc/UElNkrd2qlZR2fhzX+0eQ+GJxSebpUqZXY+Wp5FseU2GREaTx90WJCxN8hbEmWLILVKgwzC9pKQI5sdthSA+RnT3G5X/jBpJXZdQj1qdRe7Ty7Sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771829788; c=relaxed/simple;
	bh=fR8lvHhL4oSY/n5eSl541nai+feNwPd8lhB8kmyGxEU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JGQrxbrL3e5Gwon1US7rF96NBd6bY/VtlQGWEfKNPGx5kSL64tO/3I/QU4pj6kfHKr+CuV0+h6yugYJ0viQMSrqlbmr8k7/x5rXblmS7v5GuuDzste5EErreyPDcdjNjrnQwk2UbWhj3ZNeGbYYpds8DY5RO7PIljz24ZHXavZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kuS4Z3VD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QsjgRBk6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61MKHfPc3300426
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:56:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ovOi7Obm+BV74hN+gFqooWA+6V4qnwZ8iCgfUiGKqmo=; b=kuS4Z3VDVKCT4T9+
	nswne+i8IhKxmzOfGol0A9lEqecjh/H1sZ2WJsquferkgFOAMoX5Ca6ys0Mpt63l
	r15Je5qvEl7DsU52E1FYxj/+exWPfYAy57vHCI/fgJdfMFizFOxOrOlaMnuNfSJm
	yxYkwnlDPSMY0DgV9Is0x+5BLhUJN1pQ5AVv5+NJ8PL4xkey/4dZkXo/00G18/6x
	PN5V4cn60hzOndj6NHNsSKOLf0x5i4w451RVq3F2z36cLxic11NAt5mBtNDWU3eB
	ltJ40Vo/cj4jHIzt66Skef+1PWsaJzTBECTh0k8u0bWvDyjt++aNGOYvKL5fF4jI
	PS8hbQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cf5u8kpr8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:56:25 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2aad60525deso313186425ad.1
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 22:56:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771829785; x=1772434585; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ovOi7Obm+BV74hN+gFqooWA+6V4qnwZ8iCgfUiGKqmo=;
        b=QsjgRBk6pjHrZ4kZydoF8PrAfX8DST90bncIlSy4AYV7ioXop8vNGhKqL6QFhmH9/n
         rH0hbiDAX6gLguQoP9KoN7jRYmkcGB5+4zNDc9YHSrwBgqtdWqiTQYIlDtlugdikekwe
         CT5cZWDnGl2O0Ybbpw+KrPN8QBdAu5X6V9u5bXU6+UN5S9w2XpewVSVergALTKdQrl+L
         Cx2E565j8EuHDhDOHZHn9JKeJHPE+Md7Vm2qSI+ZLD5fAZGe1KIefo0yEAM5jyDtvL5c
         9DStk5S5xMqzWAE6qMLLU0OiY+u+j5urGNik/w9Bx9MNwfQF5iwEjLdrElM1Q36zZQbE
         QgbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771829785; x=1772434585;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ovOi7Obm+BV74hN+gFqooWA+6V4qnwZ8iCgfUiGKqmo=;
        b=MEa/BtNCpiTV7vxXwMj+QHVTfoMmsX62rpg+TPWW+CIEMr5UDp4pw+Z1QmbzuldcUm
         1NIfWDZp2GjBD6VIV+K4ym0U+WgYdLOGSyRpeKyxOoE76fD1Kqiyk8hCOtPIBoHq9h8G
         ugf7ntiCqhEyoXEYoH6JHmeaK8mncEAZuFnOxXSGVcpAGSpfD0/zHZfM/O9pB9qshbDK
         L/+MdOarETeatagkcn/aPQyVY/xgi0Jx1iwFTVTkNjTslO8aKTlKMCdSF9i4h1Rmozlq
         FMHAgiezfIGn8QVnlXAAM+fDDidt6DoI6xrYCCLqdIgqfi7yY/QbI6lWlqSxPAzM5yFa
         OHyw==
X-Forwarded-Encrypted: i=1; AJvYcCXo/wNV559GcR0tXvHlygou7DxLgLz5s24QOA9pRfq9HaCHzlAF9pRi2fqwNUay2F5b1wi7BXVQWxuZ@vger.kernel.org
X-Gm-Message-State: AOJu0YyQG62egYMafSIczRt1Tya2pZ3r5ylfVwj1Rs9v8EkvhTEDmKJt
	i15RNf0CTp6KGf/7hRmbiOq5NBc6Y/h3y5kWibq7BuSmiTU9fXyZb48P6nonZw4kICfAeZoagjH
	MBnwucOENPv1WWFclWZo4vXJuJr5iLphaygIQtqNnk7INl3IKazRs7r6tf98of1fN
X-Gm-Gg: ATEYQzwuOMfRFLZefaauEusSvrUmfgN0ExZ1ARxobpQcVbbrk9xtymw2Fe2KQ5L+rgy
	Tl99bSoDBK1lj84RR83OoNK23BduVKz53SAT3rdKaRKZwI4KVjB5hOLfXFSnHQG9yP5IEhRg6/K
	7afFFes/GfVhBRjstckOHNCwhGFuyfipvatJZ9ThzQllJSqaS4xGvszYjBTYQCLVaRprIo85voN
	qBdVrdExwrLqJGHB3lAX/2sQDkAgdoA+nAnAVR0r6UvZskUhjS5NRUv4Pj3EdQ6fdbDo2ue8BfK
	Txf3M30mcUPe6/7Jj9SOiP8XWcsuo/2KM3WoRuZ/pD+IwDKU8Jno9P+zqRbxBrZR0D1yY6oqn5T
	dO6ys4Q6Gi6ZB1dM7mAF1K+dFv9TYpw3VfB2TKVFP/zJqT6ROf/jmdXaDDOwqUUGQC6EiIc3hC9
	Fj3NukrTeZdU1k
X-Received: by 2002:a17:902:f68a:b0:2a9:2942:e15d with SMTP id d9443c01a7336-2ad743e2f1fmr71818465ad.5.1771829784699;
        Sun, 22 Feb 2026 22:56:24 -0800 (PST)
X-Received: by 2002:a17:902:f68a:b0:2a9:2942:e15d with SMTP id d9443c01a7336-2ad743e2f1fmr71818215ad.5.1771829784230;
        Sun, 22 Feb 2026 22:56:24 -0800 (PST)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad74f619f8sm62249225ad.36.2026.02.22.22.56.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 22:56:22 -0800 (PST)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Mon, 23 Feb 2026 14:55:42 +0800
Subject: [PATCH v13 2/8] coresight: tmc: add create/clean functions for
 etr_buf_list
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260223-enable-byte-cntr-for-ctcu-v13-2-9cb44178b250@oss.qualcomm.com>
References: <20260223-enable-byte-cntr-for-ctcu-v13-0-9cb44178b250@oss.qualcomm.com>
In-Reply-To: <20260223-enable-byte-cntr-for-ctcu-v13-0-9cb44178b250@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>, Mike Leach <Mike.Leach@arm.com>,
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
        devicetree@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>,
        Mike Leach <mike.leach@linaro.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771829766; l=6164;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=fR8lvHhL4oSY/n5eSl541nai+feNwPd8lhB8kmyGxEU=;
 b=TAasXX83LQMCDwpga9xn06zrx2OoGZ2NngshkxWMFt8//DaX67J1pXx4PXUmtHwqDy374Amms
 e1JXTevSTNOAkkHxIt4ga6716mNRdc4HbZbCMQgS2pUGjPECOovKf4N
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Proofpoint-GUID: UXdtmwBR-J646qS96BHLawQSUr03BFWr
X-Authority-Analysis: v=2.4 cv=cJftc1eN c=1 sm=1 tr=0 ts=699bfa19 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=pN8Znu5onTEf3dnVCfUA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: UXdtmwBR-J646qS96BHLawQSUr03BFWr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDA1OSBTYWx0ZWRfX/t2pxqLcdeva
 FNdd48fBAv2AeSye5abV084KAD/QxWpQiHN8kSw6ZxduiHODWveBFJj38AbLAQc8heuQdr4NUKo
 hvI9f9tgZzYl0KQbNRqEXjUEpb/sWEAIR2cMci4IRNXVXllRxRqPhOoPkpgX/nZY002WGoJ/RMW
 GeKzZiG6/LDSg7FXUtlhQaKAMQ211Au6re6rs70FncSfxYC15D0Nrms5t/Om9Fii9stRfK5TAda
 sWQ8PHpDohx38kj6ZKtw4JgeI2Nzqh79VtiTQRYUtxzYDVD1Ac7jSDdoYSZ5/i9DpiKX4N7ww5S
 oJH8Mcb3xcCafngE8TZ6E/fQYAlcfa+HLxnC9dhqZJZSJuoQYWvzREJtYDPwzeUQD8QfBPicOLN
 8gRTtEO/s6SVtpjRhCEqUSPVego39bXfzHNIqFbPryQDTH8f2Wk66Psh3JxapnwYg4fJqr/OIFa
 lydMSI+i0LU74036ogQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_01,2026-02-20_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0 clxscore=1015 malwarescore=0 suspectscore=0
 priorityscore=1501 lowpriorityscore=0 phishscore=0 impostorscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602230059
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267281-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,linaro.org:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C2B1B172714
X-Rspamd-Action: no action

Introduce functions for creating and inserting or removing the
etr_buf_node to/from the etr_buf_list.

The byte-cntr functionality requires two etr_buf to receive trace data.
The active etr_buf collects the trace data from source device, while the
byte-cntr reading function accesses the deactivated etr_buf after is
has been filled and synced, transferring data to the userspace.

Reviewed-by: Mike Leach <mike.leach@linaro.org>
Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 drivers/hwtracing/coresight/coresight-tmc-core.c |  1 +
 drivers/hwtracing/coresight/coresight-tmc-etr.c  | 94 ++++++++++++++++++++++++
 drivers/hwtracing/coresight/coresight-tmc.h      | 19 +++++
 3 files changed, 114 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-core.c b/drivers/hwtracing/coresight/coresight-tmc-core.c
index 36599c431be6..1ea255ffa67c 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-core.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-core.c
@@ -840,6 +840,7 @@ static int __tmc_probe(struct device *dev, struct resource *res)
 		idr_init(&drvdata->idr);
 		mutex_init(&drvdata->idr_mutex);
 		dev_list = &etr_devs;
+		INIT_LIST_HEAD(&drvdata->etr_buf_list);
 		break;
 	case TMC_CONFIG_TYPE_ETF:
 		desc.groups = coresight_etf_groups;
diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
index cee82e52c4ea..081498162011 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
@@ -1920,6 +1920,100 @@ const struct coresight_ops tmc_etr_cs_ops = {
 	.panic_ops	= &tmc_etr_sync_ops,
 };
 
+/**
+ * tmc_clean_etr_buf_list - clean the etr_buf_list.
+ * @drvdata:	driver data of the TMC device.
+ *
+ * Remove the allocated node from the list and free the extra buffer.
+ */
+void tmc_clean_etr_buf_list(struct tmc_drvdata *drvdata)
+{
+	struct etr_buf_node *nd, *next;
+
+	list_for_each_entry_safe(nd, next, &drvdata->etr_buf_list, node) {
+		if (nd->sysfs_buf == drvdata->sysfs_buf) {
+			if (coresight_get_mode(drvdata->csdev) == CS_MODE_DISABLED) {
+				drvdata->sysfs_buf = NULL;
+				tmc_free_etr_buf(nd->sysfs_buf);
+				nd->sysfs_buf = NULL;
+			}
+			list_del(&nd->node);
+			kfree(nd);
+		} else {
+			/* Free allocated buffers which are not utilized by ETR */
+			list_del(&nd->node);
+			tmc_free_etr_buf(nd->sysfs_buf);
+			nd->sysfs_buf = NULL;
+			kfree(nd);
+		}
+	}
+}
+EXPORT_SYMBOL_GPL(tmc_clean_etr_buf_list);
+
+/**
+ * tmc_create_etr_buf_list - create a list to manage the etr_buf_node.
+ * @drvdata:	driver data of the TMC device.
+ * @num_nodes:	number of nodes want to create with the list.
+ *
+ * Return 0 upon success and return the error number if fail.
+ */
+int tmc_create_etr_buf_list(struct tmc_drvdata *drvdata, int num_nodes)
+{
+	struct etr_buf_node *new_node;
+	struct etr_buf *sysfs_buf;
+	int i = 0, ret = 0;
+
+	/* We dont need a list if there is only one node */
+	if (num_nodes < 2)
+		return -EINVAL;
+
+	/* We expect that sysfs_buf in drvdata has already been allocated. */
+	if (drvdata->sysfs_buf) {
+		/* Directly insert the allocated sysfs_buf into the list first */
+		new_node = kzalloc_obj(*new_node, GFP_KERNEL);
+		if (IS_ERR(new_node))
+			return PTR_ERR(new_node);
+
+		new_node->sysfs_buf = drvdata->sysfs_buf;
+		new_node->is_free = false;
+		list_add(&new_node->node, &drvdata->etr_buf_list);
+		i++;
+	}
+
+	while (i < num_nodes) {
+		new_node = kzalloc_obj(*new_node, GFP_KERNEL);
+		if (IS_ERR(new_node)) {
+			ret = PTR_ERR(new_node);
+			break;
+		}
+
+		sysfs_buf = tmc_alloc_etr_buf(drvdata, drvdata->size, 0, cpu_to_node(0), NULL);
+		if (IS_ERR(sysfs_buf)) {
+			kfree(new_node);
+			ret = PTR_ERR(sysfs_buf);
+			break;
+		}
+
+		/* We dont have a available sysfs_buf in drvdata, setup one */
+		if (!drvdata->sysfs_buf) {
+			drvdata->sysfs_buf = sysfs_buf;
+			new_node->is_free = false;
+		} else
+			new_node->is_free = true;
+
+		new_node->sysfs_buf = sysfs_buf;
+		list_add(&new_node->node, &drvdata->etr_buf_list);
+		i++;
+	}
+
+	/* Clean the list if there is an error */
+	if (ret)
+		tmc_clean_etr_buf_list(drvdata);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(tmc_create_etr_buf_list);
+
 int tmc_read_prepare_etr(struct tmc_drvdata *drvdata)
 {
 	int ret = 0;
diff --git a/drivers/hwtracing/coresight/coresight-tmc.h b/drivers/hwtracing/coresight/coresight-tmc.h
index 319a354ede9f..57d8394d09b7 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.h
+++ b/drivers/hwtracing/coresight/coresight-tmc.h
@@ -208,6 +208,19 @@ struct tmc_resrv_buf {
 	s64		len;
 };
 
+/**
+ * @sysfs_buf:	Allocated sysfs_buf.
+ * @is_free:	Indicates whether the buffer is free to choose.
+ * @pos:	Position of the buffer.
+ * @node:	Node in etr_buf_list.
+ */
+struct etr_buf_node {
+	struct etr_buf		*sysfs_buf;
+	bool			is_free;
+	loff_t			pos;
+	struct list_head	node;
+};
+
 /**
  * struct tmc_drvdata - specifics associated to an TMC component
  * @atclk:	optional clock for the core parts of the TMC.
@@ -245,6 +258,8 @@ struct tmc_resrv_buf {
  *		(after crash) by default.
  * @crash_mdata: Reserved memory for storing tmc crash metadata.
  *		 Used by ETR/ETF.
+ * @etr_buf_list: List that is used to manage allocated etr_buf.
+ * @reading_node: Available buffer_node for byte-cntr reading.
  */
 struct tmc_drvdata {
 	struct clk		*atclk;
@@ -275,6 +290,8 @@ struct tmc_drvdata {
 	struct etr_buf		*perf_buf;
 	struct tmc_resrv_buf	resrv_buf;
 	struct tmc_resrv_buf	crash_mdata;
+	struct list_head        etr_buf_list;
+	struct etr_buf_node     *reading_node;
 };
 
 struct etr_buf_operations {
@@ -447,5 +464,7 @@ struct etr_buf *tmc_etr_get_buffer(struct coresight_device *csdev,
 				   enum cs_mode mode,
 				   struct coresight_path *path);
 extern const struct attribute_group coresight_etr_group;
+void tmc_clean_etr_buf_list(struct tmc_drvdata *drvdata);
+int tmc_create_etr_buf_list(struct tmc_drvdata *drvdata, int num_nodes);
 
 #endif

-- 
2.34.1


