Return-Path: <devicetree+bounces-272063-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sBaYLS/IqmnVWwEAu9opvQ
	(envelope-from <devicetree+bounces-272063-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 13:27:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 743F422099B
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 13:27:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CB5553076484
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 12:23:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 041B639A7FA;
	Fri,  6 Mar 2026 12:22:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WkOTSwDp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YCIPOC5p"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4D813921EF
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 12:22:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772799750; cv=none; b=mvr04qSLNAQBHDTmhwNoh2qqQY4Yo70LzCk/gMNmd0tbf6uXm9Uq7+zjYpRIizEILqMDUKlUk/YAnTNYmzKB2ZBN5dHDzENuL4unXcN/mrtzBthkl4yP0deKDIKO7FpjFXS9fOEoF42A2EIDOF4PgWRXh2Q5h65or1Nxl7DJEFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772799750; c=relaxed/simple;
	bh=DvFP/wvaJ5CtBSK4QE/DhIGDUkVqOv8tT7vU0VUqQmU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cVwYvbmkNRC/YOzo9PoE9FdHolDzrZB85Icj21YpZhIMQD8++onN+QEDbBo9dQxPZKKMnG8KMNf1pQZITc3qbXH+HeI8+xZtddkuIMJLyeszHOu84HfDAyZ3ijktcbbUtbjBVYKTvg0fvCHFPG/7D+AdEumEwgyfh6kaJ+kFTYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WkOTSwDp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YCIPOC5p; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 626Bah7h4185960
	for <devicetree@vger.kernel.org>; Fri, 6 Mar 2026 12:22:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=jvoT3l7ozYp
	q4t2jEp63vepOyrzL4M48KQbe9Tm5zvE=; b=WkOTSwDpWcydB5sRlPdsftHA84h
	OO6Cvf5yCls51Tw6BW0oGB8+FZArXflj3kRe7kjzvVgsKlEZUJEzyJwOEgAp4orm
	9iDlgJo1tdzLC2blbKPw4RpyZfFpLvHriHVXRXj/p5caehaIjLse+1UXoJ2l24ON
	5BKylt89VU9N+uY6GudLAVQIbV6Uwr6EKRfHT7YRpc79s54cqB1smW1JFtoHiENg
	mXNv/7ceclGMSmDi68ZCfuS6Q/XK6oP21RPiQ460QtCM/q68rGjgecJhpB1C8LeL
	Cg9oxKwp8/MLvjqUOMWyAFz42d0iOGm9oe05GMYPjvrwS63/8oJbzyddx5w==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cqruk9a9c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 12:22:18 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb3b0d938dso5840594885a.2
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 04:22:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772799738; x=1773404538; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jvoT3l7ozYpq4t2jEp63vepOyrzL4M48KQbe9Tm5zvE=;
        b=YCIPOC5plaRzJW65RewYHEq3T+lWrp7NPsPbcdh+y3EnIWeZaX0lYnOAImH2BjIovW
         3mwqajvX8ev8uZUyHFqc/xbafsOP74nAvRsrwIR2BCblhKoZGi/jw3YFMqnuQ7j9Wne9
         ZP60TjbdLNWox2W8+XOiM72CUddYpt8VKU4/+CJWDdKIzA+kTtiS8hN3JZVADPlyNDm6
         4O1pQLrXgnHUknWGxtqfMS4/bK0wXd/dMKsDXg3wU4ZcRLwvg71ZcBtRb5IYNzHGNstG
         MVWGchepqD3jjjvSEEpGIaShafba9e/nn/xh+cmoGSioAlKmEWsn8rkmJ2gvTxE3JzYq
         5fqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772799738; x=1773404538;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jvoT3l7ozYpq4t2jEp63vepOyrzL4M48KQbe9Tm5zvE=;
        b=KyTlhvHtWRn+rQfIumpF4IW9mPZ0JbZEf5szdxkTUubWoUjIJXKCxqsTYu9itnhDZx
         MShUxvwYTnmMbJbNyAwAiSMA32uxn9l2i3e4s0pA9rjnZRuKgVQKkQxCdNiMeDHYYjOs
         duIYp28p8yf6v8L0OON3D4nm0JSR1gg4oPp0oJvy2Lnx0lKVXHIyJhyF5melxM0zRyNK
         9ZMxHJMo6wKVcx98ete6ngIzgZefK8Hxc2V8YsVSY06JXBxJsK4S73DwhT+DLzv/HXug
         0G+kSrYNKZAC6F9/VXsXzfgcA5sot8c89QRIckIQofsQcBBbWA9esPlg7AvevKBW4VtR
         gmkA==
X-Forwarded-Encrypted: i=1; AJvYcCXJ6s+3W4A95JzpqVmh+yhUdDcAtKdPEgnky8+8SxMXSFJ/KCxyBViwAnvFX8I+nLHyyaruIfLDGPoo@vger.kernel.org
X-Gm-Message-State: AOJu0Yxuo3WUPcACKPev0JAePjK0skaLwsZbhW3Yrm0VXS4abetEgObO
	0I2+uROBYjiYO324fp58djFrWMdK605+HE6qzJiC/54bLA0/FX9WAKRNUz9s+xgLgbKD4xFCvhS
	ASXwOqJvchG1rGqVKdRzxHHosBbeotUKmta+q8s4kRsqpDEPGclWAT2RfSiw18qww
X-Gm-Gg: ATEYQzyyLBWfFxY3eGoyfgBk6wv8WPCXiGBU/behZ31+vG9Ni9KKvikkiGOFyF85D+j
	6FYPZAGZdhoN3CdyL0Um32al2i26/jsgSdWHL/0OVxQKED4nGcvSDVLfMiY5G5h55uTCR6C3HWM
	bn/qIl1nFA8hhSIoabp5eMIDm8uTeQWEhO8rtjBUTvwOq8WKfpX1jfukwktDSLG9Qco7FbWw0rB
	m4ptOrNuvWz9mRR4HMJnaPKIO56DsoiyRVLDYoh+6c5VsLPRvoppnCBXveTi3WSZGzpYXdeje9Z
	xO84JP3Y0UxuIjQTw7TafLXYn5c844RbIF280ZBvj64XKzhisQBDXtsRcIbxSfMb/pPhtZRF0+J
	KE40TaxKS3CJrnqDTX44Bk2PMGCLTnPEvheGr8PqNcrrX8ebwB27bIhU=
X-Received: by 2002:a05:620a:2848:b0:8c7:ad9:d0a2 with SMTP id af79cd13be357-8cd6d4098ccmr229285585a.22.1772799737461;
        Fri, 06 Mar 2026 04:22:17 -0800 (PST)
X-Received: by 2002:a05:620a:2848:b0:8c7:ad9:d0a2 with SMTP id af79cd13be357-8cd6d4098ccmr229280785a.22.1772799736926;
        Fri, 06 Mar 2026 04:22:16 -0800 (PST)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4851fa87e56sm111972395e9.0.2026.03.06.04.22.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 04:22:16 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: mohammad.rafi.shaik@oss.qualcomm.com, linux-sound@vger.kernel.org,
        lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mailingradian@gmail.com,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v4 13/13] ASoC: qcom: q6apm: Add support for early buffer mapping on DSP
Date: Fri,  6 Mar 2026 12:21:15 +0000
Message-ID: <20260306122115.509705-14-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260306122115.509705-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20260306122115.509705-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA2MDExNyBTYWx0ZWRfX4q1NK8emmpR8
 AeWWjDdP9ejXn6deQHnoJc6LNAB3EWopZS+bkZ8sGLOys4ShK0Zd2ifzzBQD8yNckpCVkQvTEZn
 i1YB+4ID+etvjxFQRA1c0g0acLHSEO3injw5gLUWn7nlflacf06z5/eNiYChwCzZGisoRMlexdW
 8uMeTFjVulWIYRUg/7UGkBrIcaLp1IvbKspTpBhRox8djjDLx+sI9ndRsHnd3jLa7Z/ZFRoRLH+
 GJ23YQY2kczSCkzdj/vmKKsTpkjVMMDLIPOoAtWeoJxvGf/DIiIx8AZyv0JcFefMHeGicBFBEMI
 Fah9fxnBtrP5ORKaXMYvTMSawwqR1suqBW7tjFxqm3wI5VphgTuJ/A4aVDfqws9gjhpBlM854uC
 kaTPcCsG+I07XNNKU1d3bZEGVDBC1uk7pd8KVmykJKXZT+rmtnP3aZ/3n+6y1I4fS3iGt7Srg4O
 q8kqSo+ryrKy8zr0o4A==
X-Proofpoint-ORIG-GUID: PQjee_BgDf8E6xA93jia-wVfQNWBEw14
X-Authority-Analysis: v=2.4 cv=DvZbOW/+ c=1 sm=1 tr=0 ts=69aac6fa cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=EUspDBNiAAAA:8
 a=Lmls0Cg-LgRrrh2KKlkA:9 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: PQjee_BgDf8E6xA93jia-wVfQNWBEw14
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-06_04,2026-03-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 malwarescore=0 bulkscore=0 adultscore=0
 suspectscore=0 clxscore=1015 phishscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603060117
X-Rspamd-Queue-Id: 743F422099B
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
	TAGGED_FROM(0.00)[bounces-272063-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Buffers are allocated on pcm_new and mapped in the dsp on every
prepare call, which is inefficient and unnecessary.

Add new functions q6apm_[un]map_memory_fixed_region to map it on
to dsp only once after allocation.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 sound/soc/qcom/qdsp6/audioreach.c |  60 ------------
 sound/soc/qcom/qdsp6/audioreach.h |   5 +-
 sound/soc/qcom/qdsp6/q6apm-dai.c  |  95 +++++++++++++++---
 sound/soc/qcom/qdsp6/q6apm.c      | 157 ++++++++++++++++++++----------
 sound/soc/qcom/qdsp6/q6apm.h      |  15 ++-
 5 files changed, 203 insertions(+), 129 deletions(-)

diff --git a/sound/soc/qcom/qdsp6/audioreach.c b/sound/soc/qcom/qdsp6/audioreach.c
index 241c3b4479c6..b2975eebab71 100644
--- a/sound/soc/qcom/qdsp6/audioreach.c
+++ b/sound/soc/qcom/qdsp6/audioreach.c
@@ -1396,66 +1396,6 @@ void audioreach_graph_free_buf(struct q6apm_graph *graph)
 }
 EXPORT_SYMBOL_GPL(audioreach_graph_free_buf);
 
-int audioreach_map_memory_regions(struct q6apm_graph *graph, unsigned int dir, size_t period_sz,
-				  unsigned int periods, bool is_contiguous)
-{
-	struct apm_shared_map_region_payload *mregions;
-	struct apm_cmd_shared_mem_map_regions *cmd;
-	uint32_t num_regions, buf_sz, payload_size;
-	struct audioreach_graph_data *data;
-	struct gpr_pkt *pkt __free(kfree) = NULL;
-	void *p;
-	int i;
-
-	if (dir == SNDRV_PCM_STREAM_PLAYBACK)
-		data = &graph->rx_data;
-	else
-		data = &graph->tx_data;
-
-	if (is_contiguous) {
-		num_regions = 1;
-		buf_sz = period_sz * periods;
-	} else {
-		buf_sz = period_sz;
-		num_regions = periods;
-	}
-
-	/* DSP expects size should be aligned to 4K */
-	buf_sz = ALIGN(buf_sz, 4096);
-
-	payload_size = sizeof(*cmd) + (sizeof(*mregions) * num_regions);
-
-	pkt = audioreach_alloc_apm_pkt(payload_size, APM_CMD_SHARED_MEM_MAP_REGIONS, dir,
-				     graph->port->id);
-	if (IS_ERR(pkt))
-		return PTR_ERR(pkt);
-
-	p = (void *)pkt + GPR_HDR_SIZE;
-	cmd = p;
-	cmd->mem_pool_id = APM_MEMORY_MAP_SHMEM8_4K_POOL;
-	cmd->num_regions = num_regions;
-
-	cmd->property_flag = 0x0;
-
-	mregions = p + sizeof(*cmd);
-
-	mutex_lock(&graph->lock);
-
-	for (i = 0; i < num_regions; i++) {
-		struct audio_buffer *ab;
-
-		ab = &data->buf[i];
-		mregions->shm_addr_lsw = lower_32_bits(ab->phys);
-		mregions->shm_addr_msw = upper_32_bits(ab->phys);
-		mregions->mem_size_bytes = buf_sz;
-		++mregions;
-	}
-	mutex_unlock(&graph->lock);
-
-	return audioreach_graph_send_cmd_sync(graph, pkt, APM_CMD_RSP_SHARED_MEM_MAP_REGIONS);
-}
-EXPORT_SYMBOL_GPL(audioreach_map_memory_regions);
-
 int audioreach_shared_memory_send_eos(struct q6apm_graph *graph)
 {
 	struct data_cmd_wr_sh_mem_ep_eos *eos;
diff --git a/sound/soc/qcom/qdsp6/audioreach.h b/sound/soc/qcom/qdsp6/audioreach.h
index 89f172aab8c0..6ddc287f0fb4 100644
--- a/sound/soc/qcom/qdsp6/audioreach.h
+++ b/sound/soc/qcom/qdsp6/audioreach.h
@@ -722,6 +722,7 @@ struct audioreach_connection {
 
 struct audioreach_graph_info {
 	int id;
+	uint32_t mem_map_handle;
 	uint32_t num_sub_graphs;
 	struct list_head sg_list;
 	/* DPCM connection from FE Graph to BE graph */
@@ -838,10 +839,6 @@ int audioreach_tplg_init(struct snd_soc_component *component);
 
 /* Module specific */
 void audioreach_graph_free_buf(struct q6apm_graph *graph);
-int audioreach_map_memory_regions(struct q6apm_graph *graph,
-				  unsigned int dir, size_t period_sz,
-				  unsigned int periods,
-				  bool is_contiguous);
 int audioreach_send_cmd_sync(struct device *dev, gpr_device_t *gdev, struct gpr_ibasic_rsp_result_t *result,
 			     struct mutex *cmd_lock, gpr_port_t *port, wait_queue_head_t *cmd_wait,
 			     struct gpr_pkt *pkt, uint32_t rsp_opcode);
diff --git a/sound/soc/qcom/qdsp6/q6apm-dai.c b/sound/soc/qcom/qdsp6/q6apm-dai.c
index bdd4cc458acd..f4a9098fde10 100644
--- a/sound/soc/qcom/qdsp6/q6apm-dai.c
+++ b/sound/soc/qcom/qdsp6/q6apm-dai.c
@@ -228,11 +228,10 @@ static int q6apm_dai_prepare(struct snd_soc_component *component,
 	cfg.bit_width = prtd->bits_per_sample;
 	cfg.fmt = SND_AUDIOCODEC_PCM;
 	audioreach_set_default_channel_mapping(cfg.channel_map, runtime->channels);
-
 	if (prtd->state) {
 		/* clear the previous setup if any  */
 		q6apm_graph_stop(prtd->graph);
-		q6apm_unmap_memory_regions(prtd->graph, substream->stream);
+		q6apm_free_fragments(prtd->graph, substream->stream);
 	}
 
 	prtd->pcm_count = snd_pcm_lib_period_bytes(substream);
@@ -247,8 +246,8 @@ static int q6apm_dai_prepare(struct snd_soc_component *component,
 	if (ret < 0)
 		dev_err(dev, "%s: CMD Format block failed\n", __func__);
 
-	ret = q6apm_map_memory_regions(prtd->graph, substream->stream, prtd->phys,
-				       (prtd->pcm_size / prtd->periods), prtd->periods);
+	ret = q6apm_alloc_fragments(prtd->graph, substream->stream, prtd->phys,
+				(prtd->pcm_size / prtd->periods), prtd->periods);
 
 	if (ret < 0) {
 		dev_err(dev, "Audio Start: Buffer Allocation failed rc = %d\n",	ret);
@@ -403,6 +402,8 @@ static int q6apm_dai_open(struct snd_soc_component *component,
 	else
 		prtd->phys = substream->dma_buffer.addr | (pdata->sid << 32);
 
+	q6apm_set_memory_map_handle(prtd->graph, substream->stream);
+
 	return 0;
 err:
 	kfree(prtd);
@@ -416,9 +417,10 @@ static int q6apm_dai_close(struct snd_soc_component *component,
 	struct snd_pcm_runtime *runtime = substream->runtime;
 	struct q6apm_dai_rtd *prtd = runtime->private_data;
 
-	if (prtd->state) { /* only stop graph that is started */
+	if (prtd->state) {
+		/* only stop graph that is started */
 		q6apm_graph_stop(prtd->graph);
-		q6apm_unmap_memory_regions(prtd->graph, substream->stream);
+		q6apm_free_fragments(prtd->graph, substream->stream);
 	}
 
 	q6apm_graph_close(prtd->graph);
@@ -467,11 +469,80 @@ static int q6apm_dai_hw_params(struct snd_soc_component *component,
 	return 0;
 }
 
+static int q6apm_dai_memory_map(struct snd_soc_component *component,
+				struct snd_pcm_substream *substream, int graph_id)
+{
+	struct q6apm_dai_data *pdata;
+	struct device *dev = component->dev;
+	phys_addr_t phys;
+	int ret;
+
+	pdata = snd_soc_component_get_drvdata(component);
+	if (!pdata) {
+		dev_err(component->dev, "Drv data not found ..\n");
+		return -EINVAL;
+	}
+
+	if (pdata->sid < 0)
+		phys = substream->dma_buffer.addr;
+	else
+		phys = substream->dma_buffer.addr | (pdata->sid << 32);
+
+	ret = q6apm_map_memory_fixed_region(dev, graph_id, phys, BUFFER_BYTES_MAX);
+	if (ret < 0)
+		dev_err(dev, "Audio Start: Buffer Allocation failed rc = %d\n",	ret);
+
+	return ret;
+}
+
 static int q6apm_dai_pcm_new(struct snd_soc_component *component, struct snd_soc_pcm_runtime *rtd)
 {
+	struct snd_soc_dai *cpu_dai = snd_soc_rtd_to_cpu(rtd, 0);
+	struct snd_pcm *pcm = rtd->pcm;
 	int size = BUFFER_BYTES_MAX;
+	int graph_id, ret;
+	struct snd_pcm_substream *substream;
+
+	graph_id = cpu_dai->driver->id;
 
-	return snd_pcm_set_fixed_buffer_all(rtd->pcm, SNDRV_DMA_TYPE_DEV, component->dev, size);
+	ret = snd_pcm_set_fixed_buffer_all(pcm, SNDRV_DMA_TYPE_DEV, component->dev, size);
+	if (ret)
+		return ret;
+
+	if (pcm->streams[SNDRV_PCM_STREAM_PLAYBACK].substream) {
+		substream = pcm->streams[SNDRV_PCM_STREAM_PLAYBACK].substream;
+		ret = q6apm_dai_memory_map(component, substream, graph_id);
+		if (ret)
+			return ret;
+	}
+
+	if (pcm->streams[SNDRV_PCM_STREAM_CAPTURE].substream) {
+		substream = pcm->streams[SNDRV_PCM_STREAM_CAPTURE].substream;
+		q6apm_dai_memory_map(component, substream, graph_id);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+static void q6apm_dai_pcm_destruct(struct snd_soc_component *component, struct snd_pcm *pcm)
+{
+	struct snd_pcm_substream *substream;
+	struct snd_soc_pcm_runtime *soc_prtd;
+	struct snd_soc_dai *cpu_dai;
+	int graph_id;
+
+	if (pcm->streams[SNDRV_PCM_STREAM_CAPTURE].substream)
+		substream = pcm->streams[SNDRV_PCM_STREAM_PLAYBACK].substream;
+	else
+		substream = pcm->streams[SNDRV_PCM_STREAM_CAPTURE].substream;
+
+	soc_prtd = snd_soc_substream_to_rtd(substream);
+	cpu_dai = snd_soc_rtd_to_cpu(soc_prtd, 0);
+
+	graph_id = cpu_dai->driver->id;
+	q6apm_unmap_memory_fixed_region(component->dev, graph_id);
 }
 
 static int q6apm_dai_compr_open(struct snd_soc_component *component,
@@ -530,7 +601,8 @@ static int q6apm_dai_compr_free(struct snd_soc_component *component,
 	struct q6apm_dai_rtd *prtd = runtime->private_data;
 
 	q6apm_graph_stop(prtd->graph);
-	q6apm_unmap_memory_regions(prtd->graph, SNDRV_PCM_STREAM_PLAYBACK);
+	q6apm_free_fragments(prtd->graph, SNDRV_PCM_STREAM_PLAYBACK);
+	q6apm_unmap_memory_fixed_region(component->dev, prtd->graph->id);
 	q6apm_graph_close(prtd->graph);
 	snd_dma_free_pages(&prtd->dma_buffer);
 	prtd->graph = NULL;
@@ -679,9 +751,9 @@ static int q6apm_dai_compr_set_params(struct snd_soc_component *component,
 		if (ret)
 			return ret;
 
-		ret = q6apm_map_memory_regions(prtd->graph, SNDRV_PCM_STREAM_PLAYBACK,
-					       prtd->phys, (prtd->pcm_size / prtd->periods),
-					       prtd->periods);
+		ret = q6apm_alloc_fragments(prtd->graph, SNDRV_PCM_STREAM_PLAYBACK,
+					prtd->phys, (prtd->pcm_size / prtd->periods),
+					prtd->periods);
 		if (ret < 0)
 			return -ENOMEM;
 
@@ -834,6 +906,7 @@ static const struct snd_soc_component_driver q6apm_fe_dai_component = {
 	.close		= q6apm_dai_close,
 	.prepare	= q6apm_dai_prepare,
 	.pcm_construct	= q6apm_dai_pcm_new,
+	.pcm_destruct	= q6apm_dai_pcm_destruct,
 	.hw_params	= q6apm_dai_hw_params,
 	.pointer	= q6apm_dai_pointer,
 	.trigger	= q6apm_dai_trigger,
diff --git a/sound/soc/qcom/qdsp6/q6apm.c b/sound/soc/qcom/qdsp6/q6apm.c
index 7ef6ae0b1759..286b3d2c589d 100644
--- a/sound/soc/qcom/qdsp6/q6apm.c
+++ b/sound/soc/qcom/qdsp6/q6apm.c
@@ -200,13 +200,59 @@ int q6apm_graph_media_format_shmem(struct q6apm_graph *graph,
 }
 EXPORT_SYMBOL_GPL(q6apm_graph_media_format_shmem);
 
-int q6apm_map_memory_regions(struct q6apm_graph *graph, unsigned int dir, phys_addr_t phys,
-			     size_t period_sz, unsigned int periods)
+void q6apm_set_memory_map_handle(struct q6apm_graph *graph, unsigned int dir)
+{
+	if (dir == SNDRV_PCM_STREAM_PLAYBACK)
+		graph->rx_data.mem_map_handle = graph->info->mem_map_handle;
+	else
+		graph->tx_data.mem_map_handle = graph->info->mem_map_handle;
+}
+EXPORT_SYMBOL_GPL(q6apm_set_memory_map_handle);
+
+int q6apm_map_memory_fixed_region(struct device *dev, unsigned int graph_id, phys_addr_t phys,
+				  size_t sz)
+{
+	struct audioreach_graph_info *info;
+	struct q6apm *apm = dev_get_drvdata(dev->parent);
+	struct apm_shared_map_region_payload *mregions;
+	struct apm_cmd_shared_mem_map_regions *cmd;
+	int payload_size = sizeof(*cmd) + (sizeof(*mregions));
+	uint32_t buf_sz;
+	void *p;
+	struct gpr_pkt *pkt __free(kfree) = audioreach_alloc_apm_cmd_pkt(payload_size,
+						APM_CMD_SHARED_MEM_MAP_REGIONS, graph_id);
+	if (IS_ERR(pkt))
+		return PTR_ERR(pkt);
+
+	info = idr_find(&apm->graph_info_idr, graph_id);
+	if (!info)
+		return -ENODEV;
+
+	/* DSP expects size should be aligned to 4K */
+	buf_sz = ALIGN(sz, 4096);
+
+	p = (void *)pkt + GPR_HDR_SIZE;
+	cmd = p;
+	cmd->mem_pool_id = APM_MEMORY_MAP_SHMEM8_4K_POOL;
+	cmd->num_regions = 1;
+	cmd->property_flag = 0x0;
+
+	mregions = p + sizeof(*cmd);
+
+	mregions->shm_addr_lsw = lower_32_bits(phys);
+	mregions->shm_addr_msw = upper_32_bits(phys);
+	mregions->mem_size_bytes = buf_sz;
+
+	return q6apm_send_cmd_sync(apm, pkt, APM_CMD_RSP_SHARED_MEM_MAP_REGIONS);
+}
+EXPORT_SYMBOL_GPL(q6apm_map_memory_fixed_region);
+
+int q6apm_alloc_fragments(struct q6apm_graph *graph, unsigned int dir, phys_addr_t phys,
+				size_t period_sz, unsigned int periods)
 {
 	struct audioreach_graph_data *data;
 	struct audio_buffer *buf;
 	int cnt;
-	int rc;
 
 	if (dir == SNDRV_PCM_STREAM_PLAYBACK)
 		data = &graph->rx_data;
@@ -248,21 +294,37 @@ int q6apm_map_memory_regions(struct q6apm_graph *graph, unsigned int dir, phys_a
 
 	mutex_unlock(&graph->lock);
 
-	rc = audioreach_map_memory_regions(graph, dir, period_sz, periods, 1);
-	if (rc < 0) {
-		dev_err(graph->dev, "Memory_map_regions failed\n");
-		audioreach_graph_free_buf(graph);
-	}
-
-	return rc;
+	return 0;
 }
-EXPORT_SYMBOL_GPL(q6apm_map_memory_regions);
+EXPORT_SYMBOL_GPL(q6apm_alloc_fragments);
 
-int q6apm_unmap_memory_regions(struct q6apm_graph *graph, unsigned int dir)
+int q6apm_unmap_memory_fixed_region(struct device *dev, unsigned int graph_id)
 {
 	struct apm_cmd_shared_mem_unmap_regions *cmd;
+	struct q6apm *apm = dev_get_drvdata(dev->parent);
+	struct audioreach_graph_info *info;
+	struct gpr_pkt *pkt __free(kfree) = audioreach_alloc_apm_cmd_pkt(sizeof(*cmd),
+						APM_CMD_SHARED_MEM_UNMAP_REGIONS, graph_id);
+	if (IS_ERR(pkt))
+		return PTR_ERR(pkt);
+
+	info = idr_find(&apm->graph_info_idr, graph_id);
+	if (!info)
+		return -ENODEV;
+
+	if (!info->mem_map_handle)
+		return 0;
+
+	cmd = (void *)pkt + GPR_HDR_SIZE;
+	cmd->mem_map_handle = info->mem_map_handle;
+
+	return q6apm_send_cmd_sync(apm, pkt, APM_CMD_SHARED_MEM_UNMAP_REGIONS);
+}
+EXPORT_SYMBOL_GPL(q6apm_unmap_memory_fixed_region);
+
+int q6apm_free_fragments(struct q6apm_graph *graph, unsigned int dir)
+{
 	struct audioreach_graph_data *data;
-	int rc;
 
 	if (dir == SNDRV_PCM_STREAM_PLAYBACK)
 		data = &graph->rx_data;
@@ -272,22 +334,11 @@ int q6apm_unmap_memory_regions(struct q6apm_graph *graph, unsigned int dir)
 	if (!data->mem_map_handle)
 		return 0;
 
-	struct gpr_pkt *pkt __free(kfree) =
-		audioreach_alloc_apm_pkt(sizeof(*cmd), APM_CMD_SHARED_MEM_UNMAP_REGIONS,
-					 dir, graph->port->id);
-	if (IS_ERR(pkt))
-		return PTR_ERR(pkt);
-
-	cmd = (void *)pkt + GPR_HDR_SIZE;
-	cmd->mem_map_handle = data->mem_map_handle;
-
-	rc = audioreach_graph_send_cmd_sync(graph, pkt, APM_CMD_SHARED_MEM_UNMAP_REGIONS);
-
 	audioreach_graph_free_buf(graph);
 
-	return rc;
+	return 0;
 }
-EXPORT_SYMBOL_GPL(q6apm_unmap_memory_regions);
+EXPORT_SYMBOL_GPL(q6apm_free_fragments);
 
 int q6apm_remove_initial_silence(struct device *dev, struct q6apm_graph *graph, uint32_t samples)
 {
@@ -494,7 +545,6 @@ static int graph_callback(const struct gpr_resp_pkt *data, void *priv, int op)
 {
 	struct data_cmd_rsp_rd_sh_mem_ep_data_buffer_done_v2 *rd_done;
 	struct data_cmd_rsp_wr_sh_mem_ep_data_buffer_done_v2 *done;
-	struct apm_cmd_rsp_shared_mem_map_regions *rsp;
 	const struct gpr_ibasic_rsp_result_t *result;
 	struct q6apm_graph *graph = priv;
 	const struct gpr_hdr *hdr = &data->hdr;
@@ -529,18 +579,6 @@ static int graph_callback(const struct gpr_resp_pkt *data, void *priv, int op)
 				done->buf_addr_msw);
 		}
 
-		break;
-	case APM_CMD_RSP_SHARED_MEM_MAP_REGIONS:
-		graph->result.opcode = hdr->opcode;
-		graph->result.status = 0;
-		rsp = data->payload;
-
-		if (hdr->token == SNDRV_PCM_STREAM_PLAYBACK)
-			graph->rx_data.mem_map_handle = rsp->mem_map_handle;
-		else
-			graph->tx_data.mem_map_handle = rsp->mem_map_handle;
-
-		wake_up(&graph->cmd_wait);
 		break;
 	case DATA_CMD_RSP_RD_SH_MEM_EP_DATA_BUFFER_V2:
 		if (!graph->ar_graph)
@@ -571,16 +609,6 @@ static int graph_callback(const struct gpr_resp_pkt *data, void *priv, int op)
 		break;
 	case GPR_BASIC_RSP_RESULT:
 		switch (result->opcode) {
-		case APM_CMD_SHARED_MEM_UNMAP_REGIONS:
-			graph->result.opcode = result->opcode;
-			graph->result.status = 0;
-			if (hdr->token == SNDRV_PCM_STREAM_PLAYBACK)
-				graph->rx_data.mem_map_handle = 0;
-			else
-				graph->tx_data.mem_map_handle = 0;
-
-			wake_up(&graph->cmd_wait);
-			break;
 		case APM_CMD_SHARED_MEM_MAP_REGIONS:
 		case DATA_CMD_WR_SH_MEM_EP_MEDIA_FORMAT:
 		case APM_CMD_SET_CFG:
@@ -778,7 +806,9 @@ struct audioreach_module *q6apm_find_module_by_mid(struct q6apm_graph *graph, ui
 static int apm_callback(const struct gpr_resp_pkt *data, void *priv, int op)
 {
 	gpr_device_t *gdev = priv;
+	struct audioreach_graph_info *info;
 	struct q6apm *apm = dev_get_drvdata(&gdev->dev);
+	struct apm_cmd_rsp_shared_mem_map_regions *rsp;
 	struct device *dev = &gdev->dev;
 	struct gpr_ibasic_rsp_result_t *result;
 	const struct gpr_hdr *hdr = &data->hdr;
@@ -795,6 +825,7 @@ static int apm_callback(const struct gpr_resp_pkt *data, void *priv, int op)
 		break;
 	case GPR_BASIC_RSP_RESULT:
 		switch (result->opcode) {
+		case APM_CMD_SHARED_MEM_MAP_REGIONS:
 		case APM_CMD_GRAPH_START:
 		case APM_CMD_GRAPH_OPEN:
 		case APM_CMD_GRAPH_PREPARE:
@@ -809,10 +840,38 @@ static int apm_callback(const struct gpr_resp_pkt *data, void *priv, int op)
 					result->opcode);
 			wake_up(&apm->wait);
 			break;
+		case APM_CMD_SHARED_MEM_UNMAP_REGIONS:
+			apm->result.opcode = hdr->opcode;
+			apm->result.status = 0;
+			rsp = data->payload;
+
+			info = idr_find(&apm->graph_info_idr, hdr->token);
+			if (info)
+				info->mem_map_handle = 0;
+			else
+				dev_err(dev, "Error (%d) Processing 0x%08x cmd\n", result->status,
+					result->opcode);
+
+			wake_up(&apm->wait);
+			break;
 		default:
 			break;
 		}
 		break;
+	case APM_CMD_RSP_SHARED_MEM_MAP_REGIONS:
+		apm->result.opcode = hdr->opcode;
+		apm->result.status = 0;
+		rsp = data->payload;
+
+		info = idr_find(&apm->graph_info_idr, hdr->token);
+		if (info)
+			info->mem_map_handle = rsp->mem_map_handle;
+		else
+			dev_err(dev, "Error (%d) Processing 0x%08x cmd\n", result->status,
+				result->opcode);
+
+		wake_up(&apm->wait);
+		break;
 	default:
 		break;
 	}
diff --git a/sound/soc/qcom/qdsp6/q6apm.h b/sound/soc/qcom/qdsp6/q6apm.h
index 7c646ffcf956..67acbf0ce178 100644
--- a/sound/soc/qcom/qdsp6/q6apm.h
+++ b/sound/soc/qcom/qdsp6/q6apm.h
@@ -134,11 +134,16 @@ int q6apm_write_async(struct q6apm_graph *graph, uint32_t len, uint32_t msw_ts,
 		      uint32_t lsw_ts, uint32_t wflags);
 
 /* Memory Map related */
-int q6apm_map_memory_regions(struct q6apm_graph *graph,
-			     unsigned int dir, phys_addr_t phys,
-			     size_t period_sz, unsigned int periods);
-int q6apm_unmap_memory_regions(struct q6apm_graph *graph,
-			       unsigned int dir);
+int q6apm_map_memory_fixed_region(struct device *dev,
+			     unsigned int graph_id, phys_addr_t phys,
+			     size_t sz);
+void q6apm_set_memory_map_handle(struct q6apm_graph *graph,
+			     unsigned int dir);
+int q6apm_alloc_fragments(struct q6apm_graph *graph,
+			unsigned int dir, phys_addr_t phys,
+			size_t period_sz, unsigned int periods);
+int q6apm_free_fragments(struct q6apm_graph *graph, unsigned int dir);
+int q6apm_unmap_memory_fixed_region(struct device *dev, unsigned int graph_id);
 /* Helpers */
 int q6apm_send_cmd_sync(struct q6apm *apm, struct gpr_pkt *pkt,
 			uint32_t rsp_opcode);
-- 
2.47.3


