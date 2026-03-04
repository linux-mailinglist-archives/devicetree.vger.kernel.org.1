Return-Path: <devicetree+bounces-271042-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GFytH98vqGlPpQAAu9opvQ
	(envelope-from <devicetree+bounces-271042-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 14:13:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 842A420028D
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 14:13:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 37E6F3034B2B
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 13:08:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9548D39FCAB;
	Wed,  4 Mar 2026 13:07:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hTwiyvl3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bXJqEWZO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CD343914E8
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 13:07:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772629658; cv=none; b=uqpVc6+GfOIZKl+KZtYNaM1AWLUB3U8Sc4xhQWlCTp8DCCe3Z7I5UzrpeGyZxh88YlipeZyMX3CkDqegTKO+FmPt23Zn58mPkYxYUKS83JEu5Jheyz54nzK8zoCj6OPw5L+O6PpEsxebO2EZwEveXAZ1jDxWaut0oXlCrbp2tnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772629658; c=relaxed/simple;
	bh=sljgOhpaU8wHMtLfJBiR4fUV3hNt3/HmvH6kZPwy9as=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mGl21a58e0rOu4G9SwK32Kwi8HoGXcetNwLZvjG2KMpZApvsQg+uMJRuMAhsv7GiE0Ypq9Yqm95/Ql3Ui1heIHls8s2lkCOuw5zvdhTWeR2i1G2M30/HqnhfljNMtzw2PCRL4WhFESZRuZCUDb7Vn6EF+g75a808/VRguOlvt1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hTwiyvl3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bXJqEWZO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6249spAK1213639
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 13:07:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=79Hssidv5J9
	yhS1Hc5RwtLaxh/YVdwsl6nwkjjN6Bow=; b=hTwiyvl31OaC7ApzylVMWQsVubV
	4U6Z/UUXpDl3dlYAyeX8nkLZ1MWamba3PIqec9PNZrFX5gOgns3kfstv0zqNYS2N
	C+OS+Ucb09yIWW0ZtyDMe6ZO4lmwZevL0NNhw3FN88M4tjfb1tqY2/IiQ0JVCMKy
	lxJcz3XAGhATaNOtLGkvVn/CJIpLkHcTRKu7aNy7g7vg289pk6k3rxUGbGL9SYxj
	2t45hNWNB9+OZw2b7U7JyYCrtYI9FsSABfOHz31+rA2l7JisWyfXtiHFcTcRhuH5
	8rPJCFq4FFRJWDkIOVRzyZRSgCpVJMSFJUAFNZrc2ugmAQm7zGseXVKvbYA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpjh5rhpe-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 13:07:34 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb4b8e9112so586081785a.2
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 05:07:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772629653; x=1773234453; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=79Hssidv5J9yhS1Hc5RwtLaxh/YVdwsl6nwkjjN6Bow=;
        b=bXJqEWZOrUPtHVzbhThuN+hC0UkabJC8eq/YHGvX06d7G1lubZGVFbgtt2PtljN28t
         sbPGF1Yk18YtPT+xHEBMe8bFKDHON6vd6XRLpNEnwrabjJOdJCdn/pZ/xfmbZ1fwzJd6
         /xO8PPCMlmsT3H2WGSRk0loREy7440pgyA7gRjg2K1WA0OPuczVu+6pxOkmp42iBn8ie
         JUZsOO4sNVp7y+rbv9ISwydfzTXxLsVJ0U7Axed74HZJeBklSrHANckqrIr+X0chxRy8
         PtxUL2j+DCIPFyRajfL/a4kiubblYHUX85kEs8zsQeaEdW/+i+fWcFTX0qH4F2egHTiY
         Wvdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772629653; x=1773234453;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=79Hssidv5J9yhS1Hc5RwtLaxh/YVdwsl6nwkjjN6Bow=;
        b=a/cFjczztcYRcVERooPJWhqrmB9cFFYTTPtOdZ58DrKEpQfL2KeL116BtotEkPPgcx
         yjA5CWbunicKa+vyzDUkXx3NmWEjjnqzM1iEvonwEr1tVlEBmwGMZ8v3yE5WEmk+blfc
         /QwHMzWCS0PHb1V8mX1oVGGOvIGtOuYo+W0GyIcgcQYMw3o0+iX3ttOweTKcUn3yJaY4
         AP+Ku7tPvyPC69OjuJlTlDwTfi74R9faIHv//1xpFKpKuNXk8h6/guX+8QtsDJsd/Wkx
         qrGLAGoT2MDmEejZ6gMEr+CzAEJC/sQlyfqSL8PjVxDvfAD5RQcQUfuEVf0e1W1uzRFy
         FGrg==
X-Forwarded-Encrypted: i=1; AJvYcCUX29WVzPrD44KmgEVDOh++pEoOfz2IODKKzc89uxu3dsgkWrbPfY5znvMIsgL9PD8RXaeNmSs7rJ23@vger.kernel.org
X-Gm-Message-State: AOJu0YzLBOEDK7X1UlJjZ8DpCeTh5K2kV6NUmwNPvy8D/9jNwua0mUg1
	zBJI5b88SYhi/E8C1W9YK7+EyjfLTwXTAX5VbMdFgIWsNJa/OUY1gN9tprt4HGyd6NQwZw4AscB
	kK0vpEIjADuPJ7hpACoMFoJzrNmy5u7rdZSabr9KYCbjl9KBzbSmaV2PScb7xGcOLuJQEbzKg
X-Gm-Gg: ATEYQzxGu37q3LbivP9MlfgR61f2WxpR71HA2Y+5wtvf9UluV9IMnvR7Uqa7tCJ0+x5
	1wNpVCnkyxb4WDIRYbIeOC7yod6BMdwnar4/LjvD7WSS8ZbpIIhn0cQXCiHzdB7En3hsJ/0g+yx
	i6zgBhD0iRQvTIfoFmsxR25+lXv385AhnBKL3zWWAEa4Lh46uYMbKxgCw2Tn2ZIRLndJaa/lAuN
	y9QKDNCXpVQex6JfWHcAJiu0JagLvTlLN6ohq6RqoSY0QgPV/i+ZxY+/CHniyNPFvDVz5PsXImz
	HsBXls4kvLd7qoM/1SX2AjLcpmRCqMJ6d3sEfeMzGaRj/OAI0Jn6ZoIghBSR1ndDXU3RrgRCFbX
	SpXmuACx94QcPnqUsPpo+Tq9ScoGMhzzh1g4aXZ18CQD2fg9LuC5d8tg=
X-Received: by 2002:a05:620a:290d:b0:8c5:38c3:7cca with SMTP id af79cd13be357-8cd5af0dd89mr216107685a.31.1772629649921;
        Wed, 04 Mar 2026 05:07:29 -0800 (PST)
X-Received: by 2002:a05:620a:290d:b0:8c5:38c3:7cca with SMTP id af79cd13be357-8cd5af0dd89mr216096085a.31.1772629648720;
        Wed, 04 Mar 2026 05:07:28 -0800 (PST)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485188122a6sm49969745e9.12.2026.03.04.05.07.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 05:07:28 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: mohammad.rafi.shaik@oss.qualcomm.com, linux-sound@vger.kernel.org,
        lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, srini@kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v3 10/14] ASoC: qcom: common: validate cpu dai id during parsing
Date: Wed,  4 Mar 2026 13:07:08 +0000
Message-ID: <20260304130712.222246-11-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260304130712.222246-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20260304130712.222246-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: ifcJxBaEFE7_P0NboQ8S8h2eKjLX18IV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDEwNSBTYWx0ZWRfX8O077zF2LWnZ
 3hGPZ038Qp1ihmy3xUSpAhGYNAtDIrnX3L2l2SSgR5ytP4r6tN88+PvPLihVfCsC6AKFQR27aKF
 2kEA9CpzDzVfK0rfKOv1QGW8Xwu06voaxzIaI1jqSdn2Lqs4ryU+wPgWGbxN+ZIk46Z1Xw+8/kF
 x+KZcBVOe6hqviMXBuLdfW8/pbBExaIkJBi9eN3xpKq2muyvRamtW6bYj5h+mZ7HEWPDFkkdi17
 FTsw+QR83ZDU98zvUOHF0BeiX1P8O2IzUUwOLwUDdhCt/5gBvvdIn/buaU4+RFkgbM1FNrHpqG9
 OppPxkkTpngujWbqqI4DQGf1F8WsqDt0O35wYRpHnqyWFeiaZHuY6jzfTnk0BnhNHe/2jraSULi
 Dovxl6chmymX1rLr3+MXA87vD9fwluQW8xUtprXS4l6LLJZQkhnb/zZ4uoJzNg65P+etbFaYJYw
 DBmFY2PTK09cyospWSQ==
X-Authority-Analysis: v=2.4 cv=JK82csKb c=1 sm=1 tr=0 ts=69a82e96 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=EUspDBNiAAAA:8
 a=FTFSxu1yF2iZ1NjiFwcA:9 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: ifcJxBaEFE7_P0NboQ8S8h2eKjLX18IV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_06,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 impostorscore=0 priorityscore=1501 malwarescore=0
 clxscore=1015 bulkscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040105
X-Rspamd-Queue-Id: 842A420028D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,vger.kernel.org,gmail.com,perex.cz,suse.com,kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-271042-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

lpass ports numbers have been added but the afe/apm driver never got
updated with new max port value that it uses to store dai specific data.
There are more than one places these values are cached and always become
out of sync.

This will result in array out of bounds and weird driver behaviour.

To catch such issues, first add a single place where we can define max
port and second add a check in common parsing code which can error
out before corrupting the memory with out of bounds array access.

This should help both avoid and catch these type of mistakes in future.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 sound/soc/qcom/common.c      | 6 ++++++
 sound/soc/qcom/common.h      | 3 +++
 sound/soc/qcom/lpass.h       | 3 ++-
 sound/soc/qcom/qdsp6/q6afe.h | 3 ++-
 sound/soc/qcom/qdsp6/q6apm.h | 3 ++-
 5 files changed, 15 insertions(+), 3 deletions(-)

diff --git a/sound/soc/qcom/common.c b/sound/soc/qcom/common.c
index 7ee60a58a336..878b42babcc3 100644
--- a/sound/soc/qcom/common.c
+++ b/sound/soc/qcom/common.c
@@ -120,6 +120,12 @@ int qcom_snd_parse_of(struct snd_soc_card *card)
 
 		link->id = args.args[0];
 
+		if (link->id > LPASS_MAX_PORT) {
+			dev_err(dev, "%s: Invalid cpu dai id %d\n", link->name, link->id);
+			ret = -EINVAL;
+			goto err;
+		}
+
 		if (platform) {
 			link->platforms->of_node = of_parse_phandle(platform,
 					"sound-dai",
diff --git a/sound/soc/qcom/common.h b/sound/soc/qcom/common.h
index 1b8d3f90bffa..ee6662885593 100644
--- a/sound/soc/qcom/common.h
+++ b/sound/soc/qcom/common.h
@@ -4,8 +4,11 @@
 #ifndef __QCOM_SND_COMMON_H__
 #define __QCOM_SND_COMMON_H__
 
+#include <dt-bindings/sound/qcom,q6afe.h>
 #include <sound/soc.h>
 
+#define LPASS_MAX_PORT			(SENARY_MI2S_TX + 1)
+
 int qcom_snd_parse_of(struct snd_soc_card *card);
 int qcom_snd_wcd_jack_setup(struct snd_soc_pcm_runtime *rtd,
 			    struct snd_soc_jack *jack, bool *jack_setup);
diff --git a/sound/soc/qcom/lpass.h b/sound/soc/qcom/lpass.h
index de3ec6f594c1..68b71039b981 100644
--- a/sound/soc/qcom/lpass.h
+++ b/sound/soc/qcom/lpass.h
@@ -14,10 +14,11 @@
 #include <linux/regmap.h>
 #include <dt-bindings/sound/qcom,lpass.h>
 #include <dt-bindings/sound/qcom,q6afe.h>
+#include "common.h"
 #include "lpass-hdmi.h"
 
 #define LPASS_AHBIX_CLOCK_FREQUENCY		131072000
-#define LPASS_MAX_PORTS			(DISPLAY_PORT_RX_7 + 1)
+#define LPASS_MAX_PORTS			(LPASS_MAX_PORT)
 #define LPASS_MAX_MI2S_PORTS			(8)
 #define LPASS_MAX_DMA_CHANNELS			(8)
 #define LPASS_MAX_HDMI_DMA_CHANNELS		(4)
diff --git a/sound/soc/qcom/qdsp6/q6afe.h b/sound/soc/qcom/qdsp6/q6afe.h
index a29abe4ce436..0b8c3ec1315c 100644
--- a/sound/soc/qcom/qdsp6/q6afe.h
+++ b/sound/soc/qcom/qdsp6/q6afe.h
@@ -2,8 +2,9 @@
 
 #ifndef __Q6AFE_H__
 #define __Q6AFE_H__
+#include "../common.h"
 
-#define AFE_PORT_MAX		137
+#define AFE_PORT_MAX		(LPASS_MAX_PORT)
 
 #define MSM_AFE_PORT_TYPE_RX 0
 #define MSM_AFE_PORT_TYPE_TX 1
diff --git a/sound/soc/qcom/qdsp6/q6apm.h b/sound/soc/qcom/qdsp6/q6apm.h
index 7ce08b401e31..5cf538397841 100644
--- a/sound/soc/qcom/qdsp6/q6apm.h
+++ b/sound/soc/qcom/qdsp6/q6apm.h
@@ -14,9 +14,10 @@
 #include <linux/of_platform.h>
 #include <linux/jiffies.h>
 #include <linux/soc/qcom/apr.h>
+#include "../common.h"
 #include "audioreach.h"
 
-#define APM_PORT_MAX		127
+#define APM_PORT_MAX		LPASS_MAX_PORT
 #define APM_PORT_MAX_AUDIO_CHAN_CNT 8
 #define PCM_CHANNEL_NULL 0
 #define PCM_CHANNEL_FL    1	/* Front left channel. */
-- 
2.47.3


