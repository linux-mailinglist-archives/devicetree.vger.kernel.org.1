Return-Path: <devicetree+bounces-271043-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IBrZAP8vqGlPpQAAu9opvQ
	(envelope-from <devicetree+bounces-271043-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 14:13:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C3C22002B4
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 14:13:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B1E9430FBE22
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 13:08:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF0B939F165;
	Wed,  4 Mar 2026 13:07:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Cuj6cgSt";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FdE2ch6D"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7D8B37F73A
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 13:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772629658; cv=none; b=IhlDGrGvWhKtS0Dm7QQwPTCJxksp5YSkk2w3wvhWI8pVHnLxcXJDstg8Hk5Xe/FZIRVd+DPI2YyXdJWEu80tEXPZYenJC5P9LZ1LxcydWckQ6udB4Qun9W1vk0AtmeTFHV8l9FCwn48f5HV0yeir+osIm137ZAYKMDTin/ZasBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772629658; c=relaxed/simple;
	bh=B8mb+C29aHmXpiZ0KkyuEWv+QuyMzs+RA8VA08jucnY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tC+vQGD7sU1zdhKyeLiVC6+ms8vkP8dsxGg68myRHsutlcHPCnrorMIy0HaILMW54nON/C2tdu/hl2vsvnoWdRLOLZJif2P3x4Yz5IXYwQgXGlZ3wYv9KlptsL7acmhtN21N0vvIBr7WQig7ESz2qnJsCUjzWnF5sBvibHSgVhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Cuj6cgSt; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FdE2ch6D; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 624CNpZx3114139
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 13:07:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=aC+um2a762g
	fpLWPhHdIhYlAN3YczWO4vgnfj1X+hyE=; b=Cuj6cgStN4kjz668yR/qAVmo+Kc
	XsfiX5oIvM3r0+YMII5R4fmjpS2iFHigIlIdUOI1nsn8OkB2Qv4GLBOZIFd3AWGz
	VFzlSnzz6xkXaxDga6ibPe0NTxfdJH21omDyvHwbODg6Q7XHY3nmlQAVRY4aKNyQ
	HQywL4QhnQwdq0HwypHRzBfCV0hywoU8r5zpnixwtOFqE3nSVqqShwEDV2TQ2/L2
	bcNA8xhhMvqZGDPcjh99aYZVlQixfdlWHm7JE/AiF8dZwForeR/5SRxOPylWv8TS
	Kj4/fZpHt7kklRbA0tfUWgea2mugITJN+q6FO8nw6ECMaMhd3tzGQTnM4/A==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cp5h2b7rw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 13:07:33 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c882774f0dso4258165985a.2
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 05:07:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772629653; x=1773234453; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aC+um2a762gfpLWPhHdIhYlAN3YczWO4vgnfj1X+hyE=;
        b=FdE2ch6D3I1jUL3Y9IiB6xmFFoaWmrnh5VpwleYlKth211FGi/aozrUnMw+WE575k0
         Y3nVZxdt0k2L5muwDEN3GCn3klU6g5ZYOH9CDXEZ7G65DXRIJTz7HFSJborYe+NZiY9L
         JBjfJYdBrdH1mCnx0ovgk53Zm6MUNhkXI2J6TMZMno1m10z7GpXEH3wnAfJHDhYa1Oio
         zPrzI5vTpZ1sg3wLn5UQN2iQL7ZAuAqZAvrY/NKONzhOWfbPLIbdNDLDstIFa6XaB4rh
         1tlQKLExRULcHvaiA/yzaRC3SBxNkYTBkb0opGpGpj3Vmmh0LnOjOLp+05DPRp7Q7Zon
         c5zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772629653; x=1773234453;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=aC+um2a762gfpLWPhHdIhYlAN3YczWO4vgnfj1X+hyE=;
        b=K5PONCB4BWPQyAb9NkqPPFDujEawJRjxbDsef67RG0Kp/lrfpp0mp7o60mEf8ozf9I
         OEiSZBxzHzAPoUTGR5ozzPIsKrIaIigGwaRVQL7nVeRjs64TcJmok6dNb1+CS2fd73JQ
         R+ZgN9ie/9k8fSjEok5RdpE/5lG57F4WGALUcoalsBClFiEdkJkOgzx6yQuw/jWtsRW+
         Ck9GhP+egr8V3a/eipu70oMhKFviuI0gBHEgZE6X7KjftmE0SNStWoFFPxux+nsbV1i9
         ZTB0HBO+jGOxkmIZXCDMw2Itb7uvIHgZWbkmj3NPPgKgofa7HBlOquohwn8vnBCE9DSi
         aeIw==
X-Forwarded-Encrypted: i=1; AJvYcCULiBu+kSN6CheXtkdwEuzBGY+FzDYK6g67ISo0/zySu0n7IIt4OaLRXO3zcz+E7k6ghORvAdW+Gbxf@vger.kernel.org
X-Gm-Message-State: AOJu0Yzs2bS+G9/xyIyc2HW63P35lDFR1cJSoe14nHfMqxYx3ueoffGO
	SwF+EQ4EcQaTZO4LLmc/YpGC8UxshMfV5KgB1R4HXHGZlg/diFZxjMHNPo4Egpjh624KdXzQTum
	qZ/6rIHhUzhijjktoWTeZNQnIgrJfPcKWikV19rv1Ywwz31C4uZ0Mx2M7XP1wvzZJ
X-Gm-Gg: ATEYQzx7trLJm5l+OsDzy5uMYdP0ilrDa8ejs9H1870QZo9CUqFpT/6JvrL0Xo1W2sQ
	G02b/iYPeybmr8ehVpd8cn04fncNT4cQA7PG/EtN58o3VrvJZ+jDDFPeNlYvXTnQkr2BIwUfCGP
	q7moc5+x6dRPQsqTkfcc4WE6UpkSo8hBff972gX3ynOO2pSl39SyTlh/PYVU5FPqajKrmhHQOCO
	X6qcyt2yDDfwvs787nGyhiMV7caVF+vcyMFWtYkeQ+8vZtVOEBOKzm1sB1DnHR+IGgwkdHQ1ZQh
	acjv/gJdaE3i25XNd5IGJp0c1MzSDjuZHk0L9to4O3z1/hhVD5LqIB0bYtwmwT626GztToxQNCC
	NYxSgJMwLRjux+T+Vx+3NvqE+KCr5x2EomABsXH6uS+mos2mjJ3EfJ70=
X-Received: by 2002:a05:620a:bd3:b0:8ca:90de:43f5 with SMTP id af79cd13be357-8cd5afaa72cmr211911685a.63.1772629652508;
        Wed, 04 Mar 2026 05:07:32 -0800 (PST)
X-Received: by 2002:a05:620a:bd3:b0:8ca:90de:43f5 with SMTP id af79cd13be357-8cd5afaa72cmr211904285a.63.1772629651851;
        Wed, 04 Mar 2026 05:07:31 -0800 (PST)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485188122a6sm49969745e9.12.2026.03.04.05.07.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 05:07:31 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: mohammad.rafi.shaik@oss.qualcomm.com, linux-sound@vger.kernel.org,
        lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, srini@kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v3 12/14] ASoC: qcom: q6apm-lpass-dai: move graph start to trigger
Date: Wed,  4 Mar 2026 13:07:10 +0000
Message-ID: <20260304130712.222246-13-srinivas.kandagatla@oss.qualcomm.com>
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
X-Authority-Analysis: v=2.4 cv=JqL8bc4C c=1 sm=1 tr=0 ts=69a82e95 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=EUspDBNiAAAA:8
 a=8udmP7N65bQo3KbB_RsA:9 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: KLpS0N5CdWpQoJQM5R0xCkVj8tDqMcei
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDEwNSBTYWx0ZWRfX1rOOcxMmSeRn
 BzOWwspEew+5D+SgTJUJJmltvO3RAnOKtOlvHrzK080GG6jvy7dQOqea5lhdXij/sStHAAvX0cW
 ROH5V6H8fbZgZjq82+Y1p0ebkCX6bnQ05gXgzTQQMkCfEgVHRvYoRQTVYzgbBr7o62QkonPrUY1
 oU7uocGqVN74ia/Ltzh6WyLnQtqHD9KdAbd0HFAhQvJ2Rp34c9Ru9yfGyUlk/8YHXmk67Y8ojtG
 UDPYZYNy/0zhxvpkFB78AqLrj+dxUBp4aDNBsjqYo4SXO3PaMpvWSdlAA9lHP00o/JsYIq2oGud
 nRlEL36vBuribHjp/ez+3bmzc5mzseQiKzPp7eD/7ib+HhfzHUFZikULIat5U5UxgZk77GK7fGU
 S9KlNAMce/xo+uNasdlazfHBjQpvAJRan+GwoxEqt8gFA6lZR+zoaG7Bc0oHlcaQ0VJ9ctle3xh
 LvPz5YODKG6b+oBD9qQ==
X-Proofpoint-GUID: KLpS0N5CdWpQoJQM5R0xCkVj8tDqMcei
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_06,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 priorityscore=1501 lowpriorityscore=0
 clxscore=1015 phishscore=0 spamscore=0 suspectscore=0 malwarescore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603040105
X-Rspamd-Queue-Id: 8C3C22002B4
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
	TAGGED_FROM(0.00)[bounces-271043-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Start the graph at trigger callback. Staring the graph at prepare does
not make sense as there is no data transfer at this point.
Moving this to trigger will also help cope situation where pipewire
is not happy if display port is not connected during start.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 sound/soc/qcom/qdsp6/q6apm-lpass-dais.c | 40 +++++++++++++++++--------
 1 file changed, 28 insertions(+), 12 deletions(-)

diff --git a/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c b/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c
index 472b2114c81e..70e283671f43 100644
--- a/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c
+++ b/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c
@@ -159,6 +159,31 @@ static void q6apm_lpass_dai_shutdown(struct snd_pcm_substream *substream, struct
 	}
 }
 
+static int q6apm_lpass_dai_trigger(struct snd_pcm_substream *substream, int cmd,
+				   struct snd_soc_dai *dai)
+{
+	struct q6apm_lpass_dai_data *dai_data = dev_get_drvdata(dai->dev);
+	int ret = 0;
+
+	switch (cmd) {
+	case SNDRV_PCM_TRIGGER_START:
+	case SNDRV_PCM_TRIGGER_RESUME:
+	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
+		if (!dai_data->is_port_started[dai->id]) {
+			ret = q6apm_graph_start(dai_data->graph[dai->id]);
+			if (ret < 0)
+				dev_err(dai->dev, "Failed to start APM port %d\n", dai->id);
+			else
+				dai_data->is_port_started[dai->id] = true;
+		}
+		break;
+	default:
+		break;
+	}
+
+	return ret;
+}
+
 static int q6apm_lpass_dai_prepare(struct snd_pcm_substream *substream, struct snd_soc_dai *dai)
 {
 	struct q6apm_lpass_dai_data *dai_data = dev_get_drvdata(dai->dev);
@@ -171,10 +196,6 @@ static int q6apm_lpass_dai_prepare(struct snd_pcm_substream *substream, struct s
 		q6apm_graph_stop(dai_data->graph[dai->id]);
 		dai_data->is_port_started[dai->id] = false;
 
-		if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
-			q6apm_graph_close(dai_data->graph[dai->id]);
-			dai_data->graph[dai->id] = NULL;
-		}
 	}
 
 	/**
@@ -203,14 +224,6 @@ static int q6apm_lpass_dai_prepare(struct snd_pcm_substream *substream, struct s
 		dev_err(dai->dev, "Failed to prepare Graph %d\n", rc);
 		goto err;
 	}
-
-	rc = q6apm_graph_start(dai_data->graph[dai->id]);
-	if (rc < 0) {
-		dev_err(dai->dev, "Failed to start APM port %d\n", dai->id);
-		goto err;
-	}
-	dai_data->is_port_started[dai->id] = true;
-
 	return 0;
 err:
 	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
@@ -254,6 +267,7 @@ static const struct snd_soc_dai_ops q6dma_ops = {
 	.shutdown	= q6apm_lpass_dai_shutdown,
 	.set_channel_map  = q6dma_set_channel_map,
 	.hw_params        = q6dma_hw_params,
+	.trigger	= q6apm_lpass_dai_trigger,
 };
 
 static const struct snd_soc_dai_ops q6i2s_ops = {
@@ -263,6 +277,7 @@ static const struct snd_soc_dai_ops q6i2s_ops = {
 	.set_channel_map  = q6dma_set_channel_map,
 	.hw_params        = q6dma_hw_params,
 	.set_fmt	= q6i2s_set_fmt,
+	.trigger	= q6apm_lpass_dai_trigger,
 };
 
 static const struct snd_soc_dai_ops q6hdmi_ops = {
@@ -271,6 +286,7 @@ static const struct snd_soc_dai_ops q6hdmi_ops = {
 	.shutdown	= q6apm_lpass_dai_shutdown,
 	.hw_params	= q6hdmi_hw_params,
 	.set_fmt	= q6i2s_set_fmt,
+	.trigger	= q6apm_lpass_dai_trigger,
 };
 
 static const struct snd_soc_component_driver q6apm_lpass_dai_component = {
-- 
2.47.3


