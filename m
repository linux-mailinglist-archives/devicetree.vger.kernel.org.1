Return-Path: <devicetree+bounces-278322-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OEatBtphvWlF9gIAu9opvQ
	(envelope-from <devicetree+bounces-278322-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 16:03:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B16E2DC410
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 16:03:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 222EB306E4D0
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 14:51:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B3873CCFAA;
	Fri, 20 Mar 2026 14:49:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ex6PhGk+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Io7oFoAK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00C113CBE76
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 14:49:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774018181; cv=none; b=N2p4R6e7z+azhcWFm34F74q19ZBBuIqbleGoeyAEQayVXFyUDfAz3s/K6DC41s0/yk3bnOa8T5ZiHuAmwWORrSze/Jidu/pms1umr7DAy8tN9Hd2tT/pHB5jufJtcnm1/vLEED8bAlm9fuO+kE0skoCtKq6BIQAQDw3HORNE71Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774018181; c=relaxed/simple;
	bh=CrLGv5edH+UZPIk9+prSCn/qT8iVjWiDSBnsGzRqcxE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=llqTYZ//cCNNJLNwYeKm/jus2AbicYHuFXc7mQ0XankzaUsrXmmKrQeOB74vXibg6rb5VLLWjn77VJlSQw/FDO2SNsBJpTJxXQOYToX1P7BsDn0cmSthV9tECF7D9EbXs2cGvvwWmKrB3wgsnzpbJUYb9Ka/ULGknfKbqKE9l5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ex6PhGk+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Io7oFoAK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62KEeiY13557827
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 14:49:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=aiejSc4X5A/
	gorkmczOj6dnKqerAsQHN9lH+LChbOlI=; b=ex6PhGk+hwkp+aQgRMUmR5edSIB
	o8qn7Gs3qrueSo5JgvUnRz2j2EDDPyX3BE0mw4RYEA2WuboBHzAZxnRNH8kEQOzJ
	n5Z5+jO+bRGylLE/T0WqAxKZIoPH6ZUcfp6annnBc8NrI9WpHiNSzgHQae0I33+6
	8LJgu0PBwiwB56goJ60GKOcVIXHWQa7tRLVFhAKN4khOL9QAslNEMgyq7F555zHG
	buofdsGRAAEsm2GROmCoOWOcxhMkqVu7dDGcUtpYSMJ94Q/kuhwSbYIN8quYJgp9
	jT2aeuATUnmv6/Kw22rdmlTym++RsboAiDneha1yJSKHGffRlB42YYwwe0Q==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d0r1gtfp3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 14:49:38 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-5091a96f0bcso23282131cf.1
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 07:49:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774018178; x=1774622978; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aiejSc4X5A/gorkmczOj6dnKqerAsQHN9lH+LChbOlI=;
        b=Io7oFoAKu7Y6dwrMzHPKnd+EEjgpoPhGOyDBahhiZK4xzBId/IbFa6SIEdi5YvYy//
         4Zo4xeGeHt+2Ci8YIRE7Und7+sXbSr+FZkHFpjRApLG+kbf0XZdXUJ1zDFjln4Eu5aqk
         ly3zZeDftFyO3Vi59R5krKI4lGWY1f6nEMsB+K29npNc/pO3mW2zcDTedgLpGJjDCrQ5
         xpwT4AQLHpkopiUUeFWoeRCb1ZsowbWeogkeSSHdytYbCEj1bFLe/p2XtcpKEuemB5hs
         p2ti1QeADz4lTDS3rb0lEUp586E1tYpOYSJqvvk0bXRJymxxQGuv0tU76xioe51yHgCp
         yj1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774018178; x=1774622978;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=aiejSc4X5A/gorkmczOj6dnKqerAsQHN9lH+LChbOlI=;
        b=WvbeTJLfSrig/wzGsTeExpGydaR4hy5L1OD2bQy1HkQyPkLDzQCZPeZREkM8wGANLZ
         C7B/jc0XPVSxV0lvem4ADB00Uc5hxVOfGeBjTi4S7kWEPx4eUamBGrg6cczNMl1MuZIo
         kJlYq1thzgxOuhtf95zo0hZOAiK7QZlSrw1nsVYCTmaAMZijP7ZmF6cD4l4AKlfIcwe8
         odSVua6m69gj6IC4yR1DNik5wdkT9e6VqNWQtyCV17pOkudPXV2VXRsX7C4/YSwN/Y8q
         MsIqqhslEOGKVo7XkeZVzssQ3AAcqz7gvbe8aRjGQoL3J9qxcyoqrAPpiITSvLjRsnLw
         QJiw==
X-Forwarded-Encrypted: i=1; AJvYcCUKe2qptzOjjrSYfGr16CV9Y7/BrytwHst1Qn4Ar5CPlZ+xZxhtOxz9Lmia5VQ+6g5qHPUDDEvUw7Ij@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6SoKSz9bkc8ueu/ilAvtHOXntJp1LneX9kNWnhKnl8p64AgYf
	PDtyOWdqNTnyE7rUI4NNjp2hFruPR8FecVZIeRlxKiwsWf/MUpC/1EuJwlbmm1Mnxf9sHHnR5eK
	6V9V0xuWVHtgtoXX/lt2co/wyd2+qCv83U9WkHb65vk4ERu8GyN6vSdQPxuBQILdK
X-Gm-Gg: ATEYQzz5/cYscC6BWomUB0FF1FydCnanIobYVunD0xfdxAxTx1PuYDyzKTnuqJ/fo5M
	6NxGZ4ayv1dJMo0ucBJVWrSYCzNMk8kBC15gUbxiIKpz6ztuA4gDf2W6YDoZwCvqODVKS+9Q3ef
	t2rfy4ouImoVt/B+Z1FgeQPhV8MejpT+kQ3jfSdFXyDwSuXELmoZH4fI+CxAWlA0bPYVBnqH9bu
	pWuFyrIwta/Cc/2+E/zt1i23hKpeTyBf4dJsRWaiOBNS8xeb0DhmiwgByDbZE1mtDjoT7RGwuke
	/9+jfZRTzjM8YE0X/u1nmSMgD9xioYxEM4GL+kljNfulx6tPCRTQ3i8dgf+W7Ib84pNPMVExzZC
	ZXq1jp/4XhbcmO1Vf3b1zIYrQSkqosVRIfhqTOuGEUCy4vcNqGvMUICs=
X-Received: by 2002:a05:622a:2c1:b0:509:1568:1f16 with SMTP id d75a77b69052e-50b375d4d49mr45800621cf.71.1774018178265;
        Fri, 20 Mar 2026 07:49:38 -0700 (PDT)
X-Received: by 2002:a05:622a:2c1:b0:509:1568:1f16 with SMTP id d75a77b69052e-50b375d4d49mr45800131cf.71.1774018177827;
        Fri, 20 Mar 2026 07:49:37 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486ff109b95sm47906825e9.1.2026.03.20.07.49.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 07:49:37 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: mohammad.rafi.shaik@oss.qualcomm.com, linux-sound@vger.kernel.org,
        lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, srini@kernel.org, val@packett.cool,
        mailingradian@gmail.com,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v6 09/13] ASoC: qcom: common: validate cpu dai id during parsing
Date: Fri, 20 Mar 2026 14:49:14 +0000
Message-ID: <20260320144918.1685838-10-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260320144918.1685838-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20260320144918.1685838-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIwMDExOCBTYWx0ZWRfX8ORL1/ZNVJ3o
 cVUywlBHU0nEEtMJW9XU12lyxaONyxUlRu9HD0d7m6T6VmkzND7RuWI6EhPUs3Q6T3hEtMKIbYH
 r4YvBJ67c6MRkIKFJzmUChpuqK7JRbl7jnpQieIKUpxyGcdawzFCr7+lZSUD95xcpQbMFz1yTE9
 SKEFrlQsy6XEKJ3d/tzV7nsEoXLfMms4pMKfKJgSKzb403oeQsOZVL6cZw+K5BOcqKy6JvhAc0t
 K9ufSgdZxMwU9KPM4723BSAqKv92f9V813cwFJI96AavfnIIvxDklgnneup4avyj4WL8pxQ8MeG
 FfHrqrE0MXfqGoC8J9uKeDYukPcdOJRmLkW54zDUOl2fTFlpU1bFt3UJ5j9QNV7ZvAUrBsapFav
 XToizYKTYkrnGWT5QeXHtjqPGlFLpkKollf/CLuTTEIlTnFjCsiOkqktZ34xUMUN/TXosg/g58c
 kznzGDyTi3QIZyfzKdQ==
X-Proofpoint-GUID: F-ejtz1wRzr97hBKO4P0ORc60rX5S7kc
X-Proofpoint-ORIG-GUID: F-ejtz1wRzr97hBKO4P0ORc60rX5S7kc
X-Authority-Analysis: v=2.4 cv=Y/D1cxeN c=1 sm=1 tr=0 ts=69bd5e82 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=EUspDBNiAAAA:8
 a=FTFSxu1yF2iZ1NjiFwcA:9 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-20_02,2026-03-19_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 priorityscore=1501 adultscore=0 lowpriorityscore=0
 malwarescore=0 clxscore=1015 phishscore=0 bulkscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603200118
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
	FREEMAIL_CC(0.00)[oss.qualcomm.com,vger.kernel.org,gmail.com,perex.cz,suse.com,kernel.org,packett.cool];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-278322-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.968];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1B16E2DC410
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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


