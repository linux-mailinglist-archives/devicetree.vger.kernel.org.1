Return-Path: <devicetree+bounces-267593-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +PojJa2YnGluJgQAu9opvQ
	(envelope-from <devicetree+bounces-267593-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 19:13:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 53DC617B56C
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 19:13:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6DD4730BDB23
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:09:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D35133BBCD;
	Mon, 23 Feb 2026 18:08:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Se69yvdF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WTf7uKgS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ABFF33DEC7
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:08:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771870094; cv=none; b=RJaSUAHEFsLfTVsb7+S69v6pN3zWOoPYD70aa25tbR0Hec+XBwhrydgdawgBVl4G8lnz+yCMCo+CNzsaqY/ccKpqnKtg2frRqxdpfQOdH8PuFabPf97zcVbLT1EpBplXNCQ+jxvGkn+LN3jrQsWlqOaS/xLCrOzEAVhYQWx20Pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771870094; c=relaxed/simple;
	bh=NVZa3idAxwPxHPw+u7Mq1/ZN1mwjSvFYiQs8fkW3ql4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=X/5bUmGP0qKqYdSbGTBZ6kLeQmU6Vlbjes0R8PzPMofIzKJL+1SUyM8ZByUfsW2USUAo1UB5b9SBVHY0D49ewIMvS+OUz2TRbTZ0m5LMA0TMvF6WpnGhdkAgIwRyh6Ue6Hbtk18KFeJGU3A6dg6H0Fn/RvqZjGUfpSJfHWkk53c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Se69yvdF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WTf7uKgS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NHrHTR322186
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:08:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=n6CVcQhd946
	ciLSkWGVm71la6+p58QFjgnyvS3NZYhA=; b=Se69yvdFbUZOcHhJlaeb4AIgSA/
	D2rqqOwcDpIRcdCvC+JZurO7nNpAmlAMa1t2HnFOPkZ6gf+gVCI1U4C6ljkToFrT
	Fgbn8/8cm6nJB2L+s2AOf5yE60DbOCNn5lz4AAmrKow0jVokeF5SLdKHhQPN8oTC
	87yklamFVs71y4Rf0tDv0J2oulNOLLFSAlGSxChBXpvc8jmBKLFNA/TSFsdEk4F1
	kN3YnEPZSspcHI8YbBJNqvu8QOG5K+s9xcsMmlAjhMd68oz81EJvqA1OU8UbXx1a
	vMg/lMD7seIgz28xWdYOnjtaCZLG350rQILcaLPOqWKnIgaLMg0ZZBON3aA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgn8y1e7u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:08:11 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb706313beso657507485a.3
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 10:08:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771870091; x=1772474891; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n6CVcQhd946ciLSkWGVm71la6+p58QFjgnyvS3NZYhA=;
        b=WTf7uKgSR7fip+D+Hyh8ITnpXh2sBhnum4vU89hhNMbygyWAlQo9+66+pHHkQr9EZC
         aM15b84BTeKmSteuL7cfMmsQKxp6oXAFg39fKc605uV0qTkt04PknHuFx6kwvdgGgj/T
         0KTslzr1NnYWneANeck15oSZIdd+6I29GygAvCqkazb8HwAJFWRSnEp1hWREN87+jDee
         UvF+gJpMDhzLW16l0CkE7gFrpgyupBl2KklsoXGwzwqemzEr6zsvLKwdqOZ7kDwDOrNk
         fQ6dKbbzq4nWRGYDLaUVVfXKxUuUZVBXG3cHuqTBnVMk4b1HQDwr/fU7tmmLRiSB3x4x
         TuBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771870091; x=1772474891;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=n6CVcQhd946ciLSkWGVm71la6+p58QFjgnyvS3NZYhA=;
        b=vKX+c+/opvOtqC1e3HseLFj0WbJWPOm/wDx5D6kBKZ0OKX8KcmOe1hyEQZc/KHhlbH
         SsEze88XyhkKm1Sx43Qz1U4qu3uLtysssD4WWMUJleMHHeBuHUJtUtu5yHcb2SvyI3ck
         TjOugyUV4atZgIenLPfwqsPh8j98uX5nzNWMjDTWbfxXkUzIzw5V2uHbKZOreOAazwJQ
         q5iPjr05Vjc8yM+TPj18wTr7hRDWPsl7Q8/SVKDk4pSlVVdN+3TZRXt4o58vpPz3Uuaq
         O42CQVgldaIn4ypsim8GeX0YFeRtKqLzZ1OqMqdeiI13aWSTNgB9+jcCtHxgNyViODu5
         uh7w==
X-Forwarded-Encrypted: i=1; AJvYcCW1F3oqxapSJmttYnO8jZaNL+9B4pTcdpTBrS+KLx7MBSzlBJhVbwuKwHZdMREVH/xvUUZI9GlhSJnt@vger.kernel.org
X-Gm-Message-State: AOJu0Ywyr89+OjpB1ZAcGGM5SPJbhoDqflmYqHzYObjVCfzsp5t0rSHr
	9IaSMYeuZDbawICjAblHlRIhxbFObH0fmHTsx2y6oSZtJsjOEiLwVszmdazEw0pMa1t0sJgqhPV
	cyvFgnV1ZwEWry9GinL//SQBCGc1E4zgfBRBI9QIXE/xjesDTCDnHckAp5ZmWsBNJ
X-Gm-Gg: AZuq6aLyf8ZPgtO7cjjO/7BdONQY9p837Dcp3LGMMu2I8kbGt+ZQ6RsHNiG9NtuWoTw
	2ljxHbQXZqkq992mgv5kG5hoLrWXBHeSyYYLhWQ1fOB4RNtuoHDCZvnYCsWfAfXhZSVev87MATP
	5SYRnygfgawGyURK2zJ/HuA8t3siwMVcAZ2Uh96wdN0M9egzHzSUQHwhyeAcio9FGOn57M2TSsu
	NU1K7IW5UsoRwMlbW9A7dTMCTC/i8BgzeG52ie0IVp/vJNVJXiMToWYmeL58j4WzgrraJ5XIlV2
	jnPTBbjNUP6y6Ij1e8I7mXkI9nPyy1a2cyB4nxoR9mfItDrIc4RBXn8z2Tv23vmt6y9MPh6YWnC
	ZfoZK0A99/vfpvwg2GA0gAXoDRJPOx82On+FnNHLsUw6XBLQudwfphkk=
X-Received: by 2002:a05:620a:4801:b0:88f:e620:21cd with SMTP id af79cd13be357-8cb8ca8078amr1189373585a.62.1771870090611;
        Mon, 23 Feb 2026 10:08:10 -0800 (PST)
X-Received: by 2002:a05:620a:4801:b0:88f:e620:21cd with SMTP id af79cd13be357-8cb8ca8078amr1189368385a.62.1771870090046;
        Mon, 23 Feb 2026 10:08:10 -0800 (PST)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d401aasm20458574f8f.23.2026.02.23.10.08.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 10:08:09 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: mohammad.rafi.shaik@oss.qualcomm.com, linux-sound@vger.kernel.org,
        lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, srini@kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v2 13/14] ASoC: qcom: qdsp6: remove search for module iid in hot path
Date: Mon, 23 Feb 2026 18:07:39 +0000
Message-ID: <20260223180740.444311-14-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260223180740.444311-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20260223180740.444311-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDE1NiBTYWx0ZWRfXwj2VTrBbgc2p
 eAikVjCQGwBnIwFevPPpXSUV0IHpLw2dvyqhz/vAqquVrA8iTE6rp8xcOTqzuB7b67CCul43CtW
 ZpMVA38OyGryvMYijW7PEZhZFWdkaL5MFn4dUlV2t0k1dI7bcE52LB/hDzEB7jdSPEDuqL29rJt
 x6o11IReSzp/wYTxtlbQOz5wlhMU5v+gzcmpzIBt21IU0SMm82HymRhVaK9Ij0XBTGkpng3u1TG
 SGEaGConh4jRu+tZqZgxL+tuGuZ0lGxwqTH1+d9LvYJaTjpCauV8jmCo61Pih8UNpiPlBKojJGc
 EnwGVUj2w+YdsagU34WmQbP3Qead3EkYetGCcrOhQZvviGRz3wP7y+Ixpjap4pmwNBtNSxD5THr
 NW9GitJY0gSZYtbOrn11F9zf4SPlJo2rYMnAGgHor2JpNgVJ54o25Jm5k8UQUbAuBpe+4hyNn/V
 Jx5heR2Ndwx675omH1w==
X-Authority-Analysis: v=2.4 cv=edYwvrEH c=1 sm=1 tr=0 ts=699c978b cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8
 a=Ll4dbTg5roZnn8cDlSAA:9 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: Fb6Ar9OBupXBDBqf9p_AsKeSCpcuRyYJ
X-Proofpoint-ORIG-GUID: Fb6Ar9OBupXBDBqf9p_AsKeSCpcuRyYJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_04,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 phishscore=0 clxscore=1015 priorityscore=1501
 spamscore=0 impostorscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230156
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,vger.kernel.org,gmail.com,perex.cz,suse.com,kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-267593-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 53DC617B56C
X-Rspamd-Action: no action

Remove searching for Shared Memory module instance id on every
read/write call, this is un-necessary if we can cache the shared
memory module instance id per PCM graph.

Add new member to graph struct to store sharedmemory module instance id
to avoid searching for this in hot path.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 sound/soc/qcom/qdsp6/q6apm-dai.c        |  5 +++--
 sound/soc/qcom/qdsp6/q6apm-lpass-dais.c |  4 ++--
 sound/soc/qcom/qdsp6/q6apm.c            | 14 +++++++++-----
 sound/soc/qcom/qdsp6/q6apm.h            |  3 ++-
 4 files changed, 16 insertions(+), 10 deletions(-)

diff --git a/sound/soc/qcom/qdsp6/q6apm-dai.c b/sound/soc/qcom/qdsp6/q6apm-dai.c
index 87e4474d680a..94066b69b5b5 100644
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
index 21624a2803a6..569ba1991992 100644
--- a/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c
+++ b/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c
@@ -202,7 +202,7 @@ static int q6apm_lpass_dai_prepare(struct snd_pcm_substream *substream, struct s
 	 * graph, so sequence for playback and capture will be different
 	 */
 	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK && dai_data->graph[dai->id] == NULL) {
-		graph = q6apm_graph_open(dai->dev, NULL, dai->dev, graph_id);
+		graph = q6apm_graph_open(dai->dev, NULL, dai->dev, graph_id, substream->stream);
 		if (IS_ERR(graph)) {
 			dev_err(dai->dev, "Failed to open graph (%d)\n", graph_id);
 			rc = PTR_ERR(graph);
@@ -239,7 +239,7 @@ static int q6apm_lpass_dai_startup(struct snd_pcm_substream *substream, struct s
 	int graph_id = dai->id;
 
 	if (substream->stream == SNDRV_PCM_STREAM_CAPTURE) {
-		graph = q6apm_graph_open(dai->dev, NULL, dai->dev, graph_id);
+		graph = q6apm_graph_open(dai->dev, NULL, dai->dev, graph_id, substream->stream);
 		if (IS_ERR(graph)) {
 			dev_err(dai->dev, "Failed to open graph (%d)\n", graph_id);
 			return PTR_ERR(graph);
diff --git a/sound/soc/qcom/qdsp6/q6apm.c b/sound/soc/qcom/qdsp6/q6apm.c
index 4d2fa6a5e065..5a3d50277e9b 100644
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


