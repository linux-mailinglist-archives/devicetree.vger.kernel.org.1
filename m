Return-Path: <devicetree+bounces-272707-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cKNTEQdvrmn8EAIAu9opvQ
	(envelope-from <devicetree+bounces-272707-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 07:56:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B3A234892
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 07:56:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 756783071F2D
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 06:52:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC5E0366577;
	Mon,  9 Mar 2026 06:51:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XakMq7Bq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="d5NszAVx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B25436605B
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 06:51:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773039117; cv=none; b=GAZtoIb5T5Uby57OaOWrdit906RZqHx/uR0GMvg4KD/TOYqj0iWvk51rqFkqxmlJ/6+VZzd22pi5AglP24RgPv5PlLQTFDRDc/1snH4QqEUHHuVSUSFkdorHyy9sO60mVwin8V1rkLASyVDaH1RLr5Ak2rpFCJLzeEWGqwQxeDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773039117; c=relaxed/simple;
	bh=CrLGv5edH+UZPIk9+prSCn/qT8iVjWiDSBnsGzRqcxE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=J+Wu28EMY5ADOG6/r9s9DsbwTHwszlzGGDrXkN4/sSwtJpkzmBT7NzudOeIJrepl2z3vvKeg0DmgqNV8XP+TtEQ4vo+AR6dIgjXqYrf/aFoEhRqr47VYOY86/bk2zw4fjADCzFOmYZAYifDVKdu7G+bT1crVBZXrXIjghb0UWxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XakMq7Bq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=d5NszAVx; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6296KMDM1977221
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 06:51:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=aiejSc4X5A/
	gorkmczOj6dnKqerAsQHN9lH+LChbOlI=; b=XakMq7BqCmC1gZPEOQ7zm7b79F/
	2VrsLN27za8MrpO7f83tVypuG/BBYQj8akbSGCXvfQH1VIjwe4cob2itf6hr52WV
	zZu4u0dNA5rcEs+x2i9O9sb9ezIrFqpkodyJnIZMJamSkkPvxz74053g5yNnT3lI
	qXkN5jmXGXe8huhPcn5vzAYNXWGmkZezB3UUrOwL8ZlLuhURXlVAuZgUZd6qCgOP
	gi+w82RKvz3tKKthOX8ZGRaQR2jqeGcnWEYf6W8Sohd1KYEx1EyF1JECk0HRoJ6W
	WkGMZzV2IiAqqRMz2vPtUZ8P47oPXaotjmh+slQ6HnrfGkvUf+j4gK7f1rg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4crc83c6w9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 06:51:55 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd781c0d90so902721485a.1
        for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 23:51:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773039114; x=1773643914; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aiejSc4X5A/gorkmczOj6dnKqerAsQHN9lH+LChbOlI=;
        b=d5NszAVxs0IWtEik9sP+g+EI9nwy64XB+7P0xnt4tTeaa8L27Ylq5votEIAAiqE2TA
         v1majHdpO8iKNRK3bvyU520F0iXebqSw3r8oNfXyUVd3AvbEnbq1vIJvnoojwV2eDTPO
         rggxyU7+9ww3Yi9a1pRMpwki/MRm1fwSIt/4jKNnPhQKP/0m4VIvDRwv0S2LsUmezle7
         m9qTf8vVK6FBN+5AXNgqx4akqj3JI1wyMGkciTwdzAO8Aig8dw87dhEYWGIdV4lWsfkp
         mMzpOzmJJulXTeP8iQbBBUIGLwPX/ydjDOMpXULQEyje2iFdWjc7Q2g055Tq9fxtA2z0
         4KQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773039114; x=1773643914;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=aiejSc4X5A/gorkmczOj6dnKqerAsQHN9lH+LChbOlI=;
        b=sUVsZ2mjQhhcqJfhSj6d5bq7HK/p8GlsL3EtC5ZdYEXXpTLVGO6D2sl4Y9qiwqtJMT
         yKxGtUFQIL/lfoUhEisRg3HnRwEwPaAM7ZdSqE9Lzv8PVrObqgZCJQEKNiPUJpMwVS2A
         +qlxvJSnBT+uuywVySlNt2iCbzyh1TNtV07n7iEmZOmTHVEsi6MU+hKrDAUsxBa89CPl
         xGN+uxnb72G+/Wz+x+Zr/V181C9ivFVY9trgufLIFFxD9KFUW5fq4HV5JMw7CCzSVdsW
         wfO1POMsJavcNtfgsxzLPAceA9/nnAxN4lkAQ2Vi/0Jx9d1d2WEgJpruTLcb91Vtai//
         TpPA==
X-Forwarded-Encrypted: i=1; AJvYcCUOrr81w/2JIFsgT0X3W6n2wiHCcsCcyxCRKC2muTuBmq6I0Mnr0WrwBvkR817BYYD2C/poYrdhuQLl@vger.kernel.org
X-Gm-Message-State: AOJu0YyH0NXtcO1cG1hj1ceS6hiVY2IB8cVYYoWxrJtC0XI2UEYtz+IO
	4ceanYg3tnsyfdfGXOYfWjWxwYGyiZzd8I3DM/P3ygFDMRk9O7yCb4f/UK+xZP4/5WvyfIxH8UE
	69t/N3amd5vkhOfizPacPkCj+VdYlZtYJ8nGTF0ncjpUKmTVB49wp7gvNj7D0BtbG
X-Gm-Gg: ATEYQzyaKhPZy0JehewR7nnnAbaehIR3Ii7b8Ln5oWcg31stbx3zsiBsFRLd9voQVwm
	pBYIZDz+4BYXKT8ZP//bOfL2U8njuDN+kUdsj/j+XHfK/yHvjJR/sKOclfDSFolF5GYKkZOCsq6
	M19m6wg8Cot7NrOZkjbvQyOdz3nIa2vA/H3w/sWom4YOPvggaamNVLqtbJfmaXlp0H1djm9Mcef
	GLsHDwblAI+oO+95GhkjcIIMIUMXotPXM9MEgN+sCLSaasOMd3o0wsu9kiiG3wae+U0ysa4t90P
	5nQZzl2q8wkcEJ5s7fQuklTocq3mll1cituvDNSkWl32WItWVEfv/6hu4mrNzTkOr6RwC/rxiXK
	T0qbu9wvX4qWM89Fx3ohaSJMTuCwJsnWCgAoIKngqk/nenKeJlSO8Sfw=
X-Received: by 2002:a05:620a:4408:b0:8b2:e3c1:24b7 with SMTP id af79cd13be357-8cd634e8fe6mr1713296285a.29.1773039114463;
        Sun, 08 Mar 2026 23:51:54 -0700 (PDT)
X-Received: by 2002:a05:620a:4408:b0:8b2:e3c1:24b7 with SMTP id af79cd13be357-8cd634e8fe6mr1713295285a.29.1773039113964;
        Sun, 08 Mar 2026 23:51:53 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48529f01997sm80449975e9.14.2026.03.08.23.51.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2026 23:51:53 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: mohammad.rafi.shaik@oss.qualcomm.com, linux-sound@vger.kernel.org,
        lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mailingradian@gmail.com,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v5 09/13] ASoC: qcom: common: validate cpu dai id during parsing
Date: Mon,  9 Mar 2026 06:51:33 +0000
Message-ID: <20260309065137.949053-10-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260309065137.949053-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20260309065137.949053-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=R9UO2NRX c=1 sm=1 tr=0 ts=69ae6e0b cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=FTFSxu1yF2iZ1NjiFwcA:9 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDA2MSBTYWx0ZWRfX7jgblfmSn528
 aaCZGGtOquh+nR9nqgqnHpsuWAk+mp6ss/pyrzRTy8iqCSB7ootx4R8C/atcNIVQ6WBtDcZcj1Y
 om6VvIfRizNvpKIwxaYDl+v7gxv/uX0OYUnjey+nYG1Y5tbvXx6eBmHjvCDGJ36f5c3aD9jwjHz
 GcpqasPO4ugtRQJ4yszubrXKdVxTvzr7dZxxWoUI2jXZX9pWqLfK9PXEHmJeKz2B5x2B5xfQHip
 fTHHNfgCaSNIT6JhIB2bGk+d5l6L9zNdXIdG4RY0bZcB6hZPMnWvSUr5bEd0cKDA4kbY55fdrY8
 pO1dc/26oNMXOWUFge2UCCrEAE++KeJc2Nl2YDezsXTDtv2fLStu9nREiUF1/biUZ7iVacKTzRX
 gAfn80xYbqlQNeEn2cuAfLHPs5pcTtgOKPRegnjNQQeBC/lJjIF532uMaWOU45aH35EGlibjFJq
 enAeRRf3wS4K92V5VLA==
X-Proofpoint-ORIG-GUID: 5F8L3GMCrCav-la3-Nz6nny38Xjquq0B
X-Proofpoint-GUID: 5F8L3GMCrCav-la3-Nz6nny38Xjquq0B
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_02,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 lowpriorityscore=0 phishscore=0 bulkscore=0
 adultscore=0 priorityscore=1501 spamscore=0 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090061
X-Rspamd-Queue-Id: B8B3A234892
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,vger.kernel.org,gmail.com,perex.cz,suse.com,kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-272707-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.997];
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
index 7ee60a58a336..cf1f3a767cee 100644
--- a/sound/soc/qcom/common.c
+++ b/sound/soc/qcom/common.c
@@ -120,6 +120,12 @@ int qcom_snd_parse_of(struct snd_soc_card *card)
 
 		link->id = args.args[0];
 
+		if (link->id >= LPASS_MAX_PORT) {
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


