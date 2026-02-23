Return-Path: <devicetree+bounces-267260-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id INlWFJr3m2lI+QMAu9opvQ
	(envelope-from <devicetree+bounces-267260-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:45:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0801724DE
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:45:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B15CB301F5B9
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:45:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30614349AF8;
	Mon, 23 Feb 2026 06:45:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MPLVNK4u";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bQfWaJN0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB2F9344DA5
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:45:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771829115; cv=none; b=FYd0BRHAENktG93MGI585nXkh/MyC2DYHxeRg89Gd6GL8xY6/S0exUzbj2YaDywi/YP1Bl4H6h8WG3nqUEstsP2BtZsHZYehK7dwmIGqxNNBifCyhKyrGqzcn3/c0mgjaw+c5Tc8bQ7Eez/dclh6Tk70kYDSxCmszWi73ErWuwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771829115; c=relaxed/simple;
	bh=fR8lvHhL4oSY/n5eSl541nai+feNwPd8lhB8kmyGxEU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OoovRhW7XjpyoPRYxTTYjcqwnW17xYS7Kd7NaUbVVEHfiTaGVG5ec6oqJKzKxE5f9v95xuLz+5YFThQ2neia43eyELu+iUMW8jMxXildxbSlu5l/W3IsbSSbKBpKMfskK4RdBbgrk2DyjUwj+MaQVD0Vgbdo2d5diSy4IgZOi1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MPLVNK4u; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bQfWaJN0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61MMY8ei1159320
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:45:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ovOi7Obm+BV74hN+gFqooWA+6V4qnwZ8iCgfUiGKqmo=; b=MPLVNK4uhQ9LU3oF
	L5YSilKvKcCmYwwZXCZNdCPFrtDF3oBtAydmYJw2ID8mu4802EMGXWPFR37rcgvt
	Zvq61XT+Xv8yEhiLnS77GA3CzicxdsDix/HU4cNXbynmBhb2hzArl1osU1tWWSFO
	lTqpayni2Du3dOa6JlbGSBWwUICTVXB7CqsDN2oHgMqyxGRhynIjZNfmLa4Of3RT
	j53dgtzGOfAuSUL7wYqWp9djTkCMHNCRnR76q1AFBmdMgu9F1JfOp/n1tYn/ovW5
	F2tWaI8sJC7rimKNAPOP92mlWGlXlKmftCK/xV/pEuPV9x5YvfrCSYivigmcVoZO
	6vzMYw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cf603kp2x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:45:12 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-35678f99c6eso2766942a91.1
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 22:45:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771829112; x=1772433912; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ovOi7Obm+BV74hN+gFqooWA+6V4qnwZ8iCgfUiGKqmo=;
        b=bQfWaJN0BbO1xFd8dtufPs3/YfGFBvWVRQfJREvo5ejN+8d212rNZz0Q8GoRyjAvIn
         imc+EIdINGPUpEilh+Bl4sryspQnKr+Q6b1o65MJOrLLFkndO03sJ0MjPX1rBJxalNpT
         3BDXs/R/7GVJ9p5Y2LEBz34BVAYWsr9Q5kXedt2TV/Su6bTvvSY9GDnQD9ghQpHyR3+8
         PDhKcY8pc/HubZiKkJkTkfPLLNgyV6KCsakAGXBsIxgIdZdS7WO3E7dAkE9s7B7lx87d
         F6m4FQW+8abLxXAhMPSdv/wWt7PcaNcIl0WvhoJmW/cNyL+7gfZfnblNM4hi7Oal+jvo
         lqrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771829112; x=1772433912;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ovOi7Obm+BV74hN+gFqooWA+6V4qnwZ8iCgfUiGKqmo=;
        b=L7dhyOPuEveGMoNHSBM2gUn2VvSJo5yg0UQvHG8EvZYl75SeCTLQHW3wBniznhaZD/
         0xwIR4G+zk6TRLpDAqpt3GJBDCDtP47lIhrzyy2VX65N8lt3EYWl8ipv5Eca4CTtHpMi
         80sDAZO1zyrU8TOql3cflxzaP19eDrLG3iMcSMDi+1BHEYHomIwo3EG3iIiQn42MmGUI
         oOJA0mqCQ/rF5HCCuN7CnKOtASYIzXJm6DvsA1nfMhM4CyzGsePEv9d+Gtnj2gwM0H09
         w6dqSyAwZSpV+tYXJzsVeksmcckfv7a+2QibZSr3BG9CFxdrQ7QTRx9zelur4vizmuDc
         Ff2Q==
X-Forwarded-Encrypted: i=1; AJvYcCVJTDqisFvz858auSJVfDFQKVAgjMJVWX7Jro2G/qSh03xKxuAZQMJVxG1gQR4z8lyDWRaOf1aUFKMa@vger.kernel.org
X-Gm-Message-State: AOJu0YzW6pNe/kwuHstgZwNdWBMbLTMwLd26plKGcEjCZGLLJqOs4shZ
	jAMWWqhtyPDAo2YHl7VWM6Q78yfwzUSJaihHkzsXF68A58rc5cGjddc8K+fLKIETZ8eGWM1B6YA
	tmZLjzjHITVh6IOO/Bo7Ai2hF2DaMRYon+whfg5toSegiBO21F1MVIggWRKDKKeU0
X-Gm-Gg: AZuq6aL1lnnKADHfkI1xbE76updYWTj5WC0QNJG93c20+cQqVDw9KDQh9QMuCrmUJCk
	mbnmKUy3XxGI8MaqFWlgLxBoQXe4INJBfc3YE5hTFZiNvw3Ywx3Ale505ricS45IOzxifVuwXwf
	LmLMju9dWN9Db7Kj2eH3T1j43/hE6Z9Gi3ZtJUFiR9DqZesIOBnzDV0r1a0A29AoijYN2KaQPix
	vZWMw/UxXEetAe2RzeWs8GJRutqHuwJ3Xd/QuttES/aOBL830gw0LUhaRsLhinaHP6zdjPxW6gZ
	cWw9M1haQ+0xtamOUUCVGplvKlPxzMLhYMsdPhsEhwzNLsb560hZnzdCtUqjMd0k2E5PEU/ZO8P
	WUWSQefV8ANun9da2eC7HuRP4avJ4RRWG0VPt4wuGZpfbnw5yAtO694uw048W9B0sm/fSToBWiA
	HHAVF9KUMc4mBq
X-Received: by 2002:a05:6a20:918d:b0:38b:e7a3:9d17 with SMTP id adf61e73a8af0-39545f8b3b7mr5728355637.49.1771829112144;
        Sun, 22 Feb 2026 22:45:12 -0800 (PST)
X-Received: by 2002:a05:6a20:918d:b0:38b:e7a3:9d17 with SMTP id adf61e73a8af0-39545f8b3b7mr5728335637.49.1771829111648;
        Sun, 22 Feb 2026 22:45:11 -0800 (PST)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c70b71839d6sm6483993a12.6.2026.02.22.22.45.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 22:45:11 -0800 (PST)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Mon, 23 Feb 2026 14:44:38 +0800
Subject: [PATCH 2/8] coresight: tmc: add create/clean functions for
 etr_buf_list
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260223-enable-byte-cntr-for-ctcu-v1-2-042fb35bd37e@oss.qualcomm.com>
References: <20260223-enable-byte-cntr-for-ctcu-v1-0-042fb35bd37e@oss.qualcomm.com>
In-Reply-To: <20260223-enable-byte-cntr-for-ctcu-v1-0-042fb35bd37e@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771829096; l=6164;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=fR8lvHhL4oSY/n5eSl541nai+feNwPd8lhB8kmyGxEU=;
 b=uKDG7hCuKtaBtw/peRApH7rv7DLycTy9TzsIu7InQl620hTm7DtJfiAgUqwvyMjC0iPtMCqFD
 PO1vXtX4ehKC+WpBAUXC12qHVjta+Na+bwaeM3TG4uG9wePExyakbQK
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Authority-Analysis: v=2.4 cv=XbWEDY55 c=1 sm=1 tr=0 ts=699bf778 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=pN8Znu5onTEf3dnVCfUA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDA1OCBTYWx0ZWRfX6kI0QV21e61A
 0bdRtsrQ3J4UCe5JEDplXKBYYcwoww84dEueQNxcieMC6xOZaNuIsnF/Bs94ZqlBgf4FhaEQjfk
 0u8XbbEbZ9DHn9GywB2OWz1Xl4ZNn1yg1vjSUf3GYH8YOcfLxhBasCMJvRhMECvRZ2UmQ2h3yM3
 QtX9Go0DER3vd4u5HkasyBMBU3BaWvTRpBXeVaot0k4XGYUkGISjgSf4XH7fTrHjzRM5caaexav
 T5BwB8VvVx5DfSlStYpGkO7Mh0o63CH2CiaArSzc4H6d+jw7/yBDLF2bTLxq1kGnLzkNZroFXvB
 tObGPqrhyPpcWQsu3uQ53dip2E43eqfLggRMi3T7GwqdqFeMJ0F3GiFh/CMlqTHfFTUfA7y+9+/
 kFQuv3CE9hKm4YThgwN5520SKmVuyle3s8xv5zBlGBL2xXUpLUoc+cKxmJ6GMPRXIRMv2GB82Jp
 lAZ9Ky0Pgj5Cuix5ylg==
X-Proofpoint-ORIG-GUID: 9EyxDmrQwqZJcGAj7kRUeJpAmj9C1mQo
X-Proofpoint-GUID: 9EyxDmrQwqZJcGAj7kRUeJpAmj9C1mQo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_01,2026-02-20_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 malwarescore=0 phishscore=0 priorityscore=1501 adultscore=0 spamscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602230058
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267260-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,linaro.org:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6C0801724DE
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


