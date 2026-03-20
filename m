Return-Path: <devicetree+bounces-278325-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CE8yFw5ivWlF9gIAu9opvQ
	(envelope-from <devicetree+bounces-278325-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 16:04:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C8B82DC44D
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 16:04:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3733330E7596
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 14:52:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3E2A3CEBB2;
	Fri, 20 Mar 2026 14:49:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PIf+Gxh6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eTO1L5oB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F02C23CE4BF
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 14:49:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774018188; cv=none; b=Gchk0bDbmMQKMjkA1TXz+w7GwEoriex08xKX/j5slH1W2/QObIlNI8gLhSUL6QqhOC8eH8myC/oJVbO2DjTjNLsHSN4Vtc8OQn9KtbNgoFp0H3IxL0LOLzBoSfn9B+69OEdqxrYKxYYz8yK39PYS0Wy7KjOIsTDzebHcc2U6uIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774018188; c=relaxed/simple;
	bh=PuJFamBh81bE/Zj8ZHvJy/U5gL5zjKCwi4dfSJ851vE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TC2fBweVVpTFOI3xm+S2QME3FJk82dt/mcUHss4Jl0KW/qCeVMxui2Gfi3J/HyFSuo8pR/NgTHqw0tkdWyIpNvBBV+sRT5Qp6o91wtXD3rSu4gjudAUaOGDJPf1n1uNIv43znojY/MwHHuVjTm+G88c2Xqu1XBbVKcRYIskY6/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PIf+Gxh6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=eTO1L5oB; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62KEbLBd398385
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 14:49:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=fSPCBd3T5A0
	bZHkS+KsyEWqVlhqEkiuzb7wl/h6xEi0=; b=PIf+Gxh6gReVtKCx/XaMei+cyOk
	LJsr9T65zMiFuTVilv11nxNflIQB/S+xoMTnH1s7SVGLjvv3pEJ0qpcOcLoXJjrp
	ozt1eDEWaS4ciOIIvE5YtmS4ENiTpoLHVYhYg3/ruZfV1NCBVeth3pwjhLty9elm
	2lPhfd9tdN/+89mJOBlQSJh/nnDCXIncEDp2LgDDDhggrJ3YH/oHjn5treRfyFkq
	XU8p/X1iWkv60/w6p7sDkcFpfNzeAw7XIzmTVekPdUZMjilEydb1QX8SOeMM9Ib8
	ZL4aFqcBzigQgDGknyXijPoDlfjbGEsdBjkE9gSequHbyxivfF2PbWb3eLA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d0k083pcd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 14:49:44 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-50925fed647so153626971cf.3
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 07:49:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774018184; x=1774622984; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fSPCBd3T5A0bZHkS+KsyEWqVlhqEkiuzb7wl/h6xEi0=;
        b=eTO1L5oBU5VlS79m9WxCcqTnF45y6Gbg5a0cQdSECq3ZX8pbyUq7dXFjdex6KG1ylP
         9NkJwf2ADxz119p2W419UhevvX1TelcIcz70tXrBiYZtmvR71YSE0tzk7z7HnZn/wLdS
         KumlYylQTm6aMKpjzixDf24SaJU9AiOVgWc1gRpNkFE/Yj83Jij8ajro+d9ridXkZ1Da
         fPApmAAA7Z/2kyp6/jqkGvfhwoEgIRjzdhZc9N+KEmK33F29PwM84oikr3lsIzIuP8pC
         BzsJJ7roRwNPpamPgftDZELqktn4ep0dj1rXtHp4n0JwWjkIxui69c7dWNyra+8goMqO
         O6Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774018184; x=1774622984;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=fSPCBd3T5A0bZHkS+KsyEWqVlhqEkiuzb7wl/h6xEi0=;
        b=D5kFciv6Ua7GxiLndzUtMC8h1It08R8hbrlGAC8MRBuCiP5pusJsJldFqCrfB+KsEu
         zcUyDEtk6PhlIu77QtPLwM3DNtRRD73+vszSRMOicQHIFlv8jjbW+NCQwkObsinqbcG2
         TRg/NSaXhtQ3x/ur8ZG53rJE7FILLbANUiDxCcOH6Nz1/tNWuebJc5zmowuwPE+iLr59
         XXGcuwns83+omoDKgOBTWlWLx+S70HA5zn/6LhCp+Rygpc75uDM3sODFx/l6yBGVTDuL
         ttDuXd0yv0aZWQmBYLBP/Rl/ln3xtlnhfC/MpkzRTxB2udB3vWx4pzJGbjFBQ9srY2fG
         Xl/g==
X-Forwarded-Encrypted: i=1; AJvYcCU1sNmEagoI49cYr5DSKQlej4jIuEMBsyEaukG5/UqBahEZDd+6HyCXJS2/mn5WYFITWnrioJ9UW2Tt@vger.kernel.org
X-Gm-Message-State: AOJu0YwIqPQANJUuTR2DYq5VImGMOjy7+8USfTrwdYh7qXCTZseFeGNR
	3GYWez9iTelJjqnNiQjsMCofMb3ziVgjcQE3q8L+4NnRHzEEr8rnyzJyYqWUZgH+8HIAYQqPKd3
	zTQJBTJZbkkbm71E98kTzZ4btmgpNGeo8eCm3NVLCRtv0ledfLx8IKBYegYZiEejB
X-Gm-Gg: ATEYQzzPqMMpo5AAWFoX9Pjo5W7CBdcHe31ri9A4EH9o0MTQQdEV8Xswaa6IcxACIMK
	VWTX3rbu5Gu4yXHQISNRSAK1Aye2urB1RNaAZR169VL5Gc0dK6Nzp439pp4KqTjGvSFFnFEXOlN
	Aepy+XmQ++s6KtBX7kEgcigVptYHDMVu5QDzbPSwsKfLxRA/pbONnCN4M1nBreLddy/O+BkdJmR
	a9nTpX6sWjZ3nfQu+6u26n5etx1aq+J9XjxnZo+uDk7FgxuYB4jPgsrnc4QBEDEqTaHvovCdf/r
	2zd5qB2qgr2EETjO/TE6CmWEUhKqiX33+34cArTnQoxbjM+Cd0j95lcEUCEUdUkFGLLYVAwhOlq
	PW4yTSKt9fVHEu+xoH3VMvqMpQsxGqGz6qDuwZXiYpMTb58jMOwAvug8=
X-Received: by 2002:ac8:5a8b:0:b0:509:2997:b929 with SMTP id d75a77b69052e-50b375b02ccmr43326101cf.67.1774018184285;
        Fri, 20 Mar 2026 07:49:44 -0700 (PDT)
X-Received: by 2002:ac8:5a8b:0:b0:509:2997:b929 with SMTP id d75a77b69052e-50b375b02ccmr43325601cf.67.1774018183772;
        Fri, 20 Mar 2026 07:49:43 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486ff109b95sm47906825e9.1.2026.03.20.07.49.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 07:49:42 -0700 (PDT)
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
Subject: [PATCH v6 12/13] ASoC: qcom: qdsp6: remove search for module iid in hot path
Date: Fri, 20 Mar 2026 14:49:17 +0000
Message-ID: <20260320144918.1685838-13-srinivas.kandagatla@oss.qualcomm.com>
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
X-Authority-Analysis: v=2.4 cv=MYhhep/f c=1 sm=1 tr=0 ts=69bd5e89 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=Ll4dbTg5roZnn8cDlSAA:9 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: lNDvZX35uJC0CoVDQu0jaaTdY3Jd4Qjf
X-Proofpoint-GUID: lNDvZX35uJC0CoVDQu0jaaTdY3Jd4Qjf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIwMDExOCBTYWx0ZWRfX0zp2M4XKAjgK
 yKiad1oBewDE4Pfm2Dtg8PHpSocci6aTebXLgUrUus4x+rwV4wEiJPLIkUSK4LRCgPWeG9lnDzl
 FPI2Xno4vXMAkEcuyNXkmNHTopYAIX9dMEBsMuWb0u90xNsnqfX23j6XEUqU1deV2lJuCveOnYT
 YIk98H9KkOOfJ1ycB9V+v0VJwDyNMcMdKvnBflbvpxkQWLiqGrCn87EJL2Xc4o/obTj38jS+AFA
 2YN0/yCGq7TuYZC+wj8MRCbnohUaXCo3lT6fG35xQtTGK5JYZZ5ppVgA8ojJvNJbMmIVBF/njKD
 opCl7Vx12G6x54D137Ryt0d8CfAONc4zb1+a+Vt6jfCydu1VpnJurjezXpzOJk81n/IMoZmK6sE
 kteEkKjXA2sO69pX4VDMzEWBzsIrV7g2ncRW06bndzxn4qbVEUfUK2UvZ6zLVYmZOQWqcZotIgQ
 bIKedF9OJ8X5+j4BJMg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-20_02,2026-03-19_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 phishscore=0 priorityscore=1501
 lowpriorityscore=0 malwarescore=0 impostorscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603200118
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,vger.kernel.org,gmail.com,perex.cz,suse.com,kernel.org,packett.cool];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-278325-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.970];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5C8B82DC44D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Remove searching for Shared Memory module instance id on every
read/write call, this is un-necessary if we can cache the shared
memory module instance id per PCM graph.

Add new member to graph struct to store shared memory module
instance id to avoid searching for this in hot path.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 sound/soc/qcom/qdsp6/q6apm-dai.c        |  5 +++--
 sound/soc/qcom/qdsp6/q6apm-lpass-dais.c |  4 ++--
 sound/soc/qcom/qdsp6/q6apm.c            | 14 +++++++++-----
 sound/soc/qcom/qdsp6/q6apm.h            |  3 ++-
 4 files changed, 16 insertions(+), 10 deletions(-)

diff --git a/sound/soc/qcom/qdsp6/q6apm-dai.c b/sound/soc/qcom/qdsp6/q6apm-dai.c
index 292be457764f..86d6438bd9fd 100644
--- a/sound/soc/qcom/qdsp6/q6apm-dai.c
+++ b/sound/soc/qcom/qdsp6/q6apm-dai.c
@@ -355,7 +355,7 @@ static int q6apm_dai_open(struct snd_soc_component *component,
 
 	spin_lock_init(&prtd->lock);
 	prtd->substream = substream;
-	prtd->graph = q6apm_graph_open(dev, event_handler, prtd, graph_id);
+	prtd->graph = q6apm_graph_open(dev, event_handler, prtd, graph_id, substream->stream);
 	if (IS_ERR(prtd->graph)) {
 		dev_err(dev, "%s: Could not allocate memory\n", __func__);
 		ret = PTR_ERR(prtd->graph);
@@ -496,7 +496,8 @@ static int q6apm_dai_compr_open(struct snd_soc_component *component,
 		return -ENOMEM;
 
 	prtd->cstream = stream;
-	prtd->graph = q6apm_graph_open(dev, event_handler_compr, prtd, graph_id);
+	prtd->graph = q6apm_graph_open(dev, event_handler_compr, prtd, graph_id,
+					SNDRV_PCM_STREAM_PLAYBACK);
 	if (IS_ERR(prtd->graph)) {
 		ret = PTR_ERR(prtd->graph);
 		kfree(prtd);
diff --git a/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c b/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c
index e904066484d5..006b283484d9 100644
--- a/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c
+++ b/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c
@@ -203,7 +203,7 @@ static int q6apm_lpass_dai_prepare(struct snd_pcm_substream *substream, struct s
 	 * graph, so sequence for playback and capture will be different
 	 */
 	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK && dai_data->graph[dai->id] == NULL) {
-		graph = q6apm_graph_open(dai->dev, NULL, dai->dev, graph_id);
+		graph = q6apm_graph_open(dai->dev, NULL, dai->dev, graph_id, substream->stream);
 		if (IS_ERR(graph)) {
 			dev_err(dai->dev, "Failed to open graph (%d)\n", graph_id);
 			rc = PTR_ERR(graph);
@@ -240,7 +240,7 @@ static int q6apm_lpass_dai_startup(struct snd_pcm_substream *substream, struct s
 	int graph_id = dai->id;
 
 	if (substream->stream == SNDRV_PCM_STREAM_CAPTURE) {
-		graph = q6apm_graph_open(dai->dev, NULL, dai->dev, graph_id);
+		graph = q6apm_graph_open(dai->dev, NULL, dai->dev, graph_id, substream->stream);
 		if (IS_ERR(graph)) {
 			dev_err(dai->dev, "Failed to open graph (%d)\n", graph_id);
 			return PTR_ERR(graph);
diff --git a/sound/soc/qcom/qdsp6/q6apm.c b/sound/soc/qcom/qdsp6/q6apm.c
index 9d4cbe29cf94..c874dae53163 100644
--- a/sound/soc/qcom/qdsp6/q6apm.c
+++ b/sound/soc/qcom/qdsp6/q6apm.c
@@ -411,12 +411,11 @@ int q6apm_write_async(struct q6apm_graph *graph, uint32_t len, uint32_t msw_ts,
 {
 	struct apm_data_cmd_wr_sh_mem_ep_data_buffer_v2 *write_buffer;
 	struct audio_buffer *ab;
-	int iid = q6apm_graph_get_rx_shmem_module_iid(graph);
 
 	struct gpr_pkt *pkt __free(kfree) = audioreach_alloc_pkt(sizeof(*write_buffer),
 					DATA_CMD_WR_SH_MEM_EP_DATA_BUFFER_V2,
 					graph->rx_data.dsp_buf | (len << APM_WRITE_TOKEN_LEN_SHIFT),
-					graph->port->id, iid);
+					graph->port->id, graph->shm_iid);
 	if (IS_ERR(pkt))
 		return PTR_ERR(pkt);
 
@@ -449,11 +448,10 @@ int q6apm_read(struct q6apm_graph *graph)
 	struct data_cmd_rd_sh_mem_ep_data_buffer_v2 *read_buffer;
 	struct audioreach_graph_data *port;
 	struct audio_buffer *ab;
-	int iid = q6apm_graph_get_tx_shmem_module_iid(graph);
 
 	struct gpr_pkt *pkt __free(kfree) = audioreach_alloc_pkt(sizeof(*read_buffer),
 					DATA_CMD_RD_SH_MEM_EP_DATA_BUFFER_V2,
-					graph->tx_data.dsp_buf, graph->port->id, iid);
+					graph->tx_data.dsp_buf, graph->port->id, graph->shm_iid);
 	if (IS_ERR(pkt))
 		return PTR_ERR(pkt);
 
@@ -604,7 +602,7 @@ static int graph_callback(const struct gpr_resp_pkt *data, void *priv, int op)
 }
 
 struct q6apm_graph *q6apm_graph_open(struct device *dev, q6apm_cb cb,
-				     void *priv, int graph_id)
+				     void *priv, int graph_id, int dir)
 {
 	struct q6apm *apm = dev_get_drvdata(dev->parent);
 	struct audioreach_graph *ar_graph;
@@ -631,6 +629,12 @@ struct q6apm_graph *q6apm_graph_open(struct device *dev, q6apm_cb cb,
 	graph->id = ar_graph->id;
 	graph->dev = dev;
 
+	if (dir == SNDRV_PCM_STREAM_PLAYBACK)
+		graph->shm_iid = q6apm_graph_get_rx_shmem_module_iid(graph);
+	else
+		graph->shm_iid = q6apm_graph_get_tx_shmem_module_iid(graph);
+
+
 	mutex_init(&graph->lock);
 	init_waitqueue_head(&graph->cmd_wait);
 
diff --git a/sound/soc/qcom/qdsp6/q6apm.h b/sound/soc/qcom/qdsp6/q6apm.h
index 5cf538397841..7c646ffcf956 100644
--- a/sound/soc/qcom/qdsp6/q6apm.h
+++ b/sound/soc/qcom/qdsp6/q6apm.h
@@ -99,6 +99,7 @@ struct q6apm_graph {
 	void *priv;
 	q6apm_cb cb;
 	uint32_t id;
+	uint32_t shm_iid;
 	struct device *dev;
 	struct q6apm *apm;
 	gpr_port_t *port;
@@ -113,7 +114,7 @@ struct q6apm_graph {
 
 /* Graph Operations */
 struct q6apm_graph *q6apm_graph_open(struct device *dev, q6apm_cb cb,
-				     void *priv, int graph_id);
+				     void *priv, int graph_id, int dir);
 int q6apm_graph_close(struct q6apm_graph *graph);
 int q6apm_graph_prepare(struct q6apm_graph *graph);
 int q6apm_graph_start(struct q6apm_graph *graph);
-- 
2.47.3


