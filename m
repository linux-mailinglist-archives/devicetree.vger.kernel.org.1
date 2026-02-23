Return-Path: <devicetree+bounces-267592-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gO+GBJ2YnGluJgQAu9opvQ
	(envelope-from <devicetree+bounces-267592-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 19:12:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6E917B53E
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 19:12:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0A97830B9291
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:09:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 496EC342CB8;
	Mon, 23 Feb 2026 18:08:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LMn/BEuo";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="B7PFlQ0H"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC2DA33BBAA
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:08:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771870093; cv=none; b=SKhD0Er6tjDAjt3L3/M4qbzm2nFeWQ8R0EwcuHhw/WJ5l5Bla3mqSzVueojwN+u3NQLpfbZjyOT9cTvIUEgRqGNNlCDxMOZvSXUrNpucaiqRKVl8P52Do5aE39U2RsKoAtzaTqOzBHW+tO1Nf8F1cJRcwffEsU1mffIfIXVYP84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771870093; c=relaxed/simple;
	bh=of9TZhkCmOwqi8Av+ZalSsyqicycETefd2AuDqb8z5o=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XmqJIhXQ/9CYCwM+hPvoDLF+vFz2V29L/vH/Go/pZKN8PVnNsRiJj6plA7Syb0Tr0fTxC8Yo2ciCBnr+/ljQ1GfeJRtw5oDxMyh6LlRyL2uA3uP0KiGuVL45tp1zv2gCD6+ba0RIhBvkPCqTpfV7Weh5z3pDBMF8vzyQstXPe88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LMn/BEuo; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=B7PFlQ0H; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NI4I6S1298512
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:08:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Fo61YxjbYF7
	2rFe/cKgeODqKXT2h3ZvNykR8OD9jyxM=; b=LMn/BEuoelk5HFYK0HYIghsC3MI
	uZfD3nom29430XxF7Sm1zNTXvu6kMrsdKKgN9n2RnwyY8mk3AAA/fHBCCRFzFbmY
	fNUhXQ5e4s/hG9oc+80p7q0ym3dS39ccegvVcbq5eaJaB01XU6JKSCkt1mZ8ADhp
	2htBu0cwDsqSHL9PJPdfpHb0Khal4N2pwzVN5JGi9Fu/Gyrd3N98XKS6FVKJ3wHn
	3hUgfjMT7XPswFVZSeDT+vyrGfA4dRKWAj5tpzQ6PNoq9YjGPJTIEpRfS8AzBsOG
	OGT0L0zq3ALk96RCRcKe+AsFAim7NWDNUWOPgNA18Wsyr3Gt2Tgb3e1IWAA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgn8y1e7s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:08:10 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c70d16d5a9so3933939185a.3
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 10:08:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771870089; x=1772474889; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fo61YxjbYF72rFe/cKgeODqKXT2h3ZvNykR8OD9jyxM=;
        b=B7PFlQ0HBb6gQjQikXN0qCdKy0Y2WgwSNBVJYdfYULJKBTOawzZ+t5qZcDXx786bD3
         N35Ndk3yF096E+6gE4IrRhD+T9jgEMhMU64xH8Lpw9Ep9FgJ/IJBNk+RKcQ4qVdamIXP
         VmmQ6Cpw0TmWdt9VcxnaiJ6T8wlmNf2VjG9IZlyL+oYi+uKRTIpCtRGGHZTNbYccWfNV
         ZlHX3ZK1jHV8DnoM4alLTCSQjmP2rUCPKUjdOxSGFbVhkMj8M+sjGfFgy+6Rzr+G9NYR
         tXuA6qgQv6mPbasA3XUiv/3lwvP9DQv391k8s+JS3fxjanlpe2rjvEp1bcEgKFQJSf/3
         9RsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771870089; x=1772474889;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Fo61YxjbYF72rFe/cKgeODqKXT2h3ZvNykR8OD9jyxM=;
        b=pA4qwFuijAcuSdcyuN4as+JuCiXT8MLCFUHlRnz85OrWGxgg3QBMaNP8+bDdLMmr3z
         gfwQsi12oK4YhG6A3V42dLV78AojCTAJOtHkcrPvLsVPtR4aapz51ujpAzXn6mmrwUL7
         8nvLEnnRJHY5VQtVLFWCLEbF8VjH+HwwphjXFHj3OF0Ebnk1QlBWel3IAIGv73HgUPXA
         Ix8ME8EQHhmREsyw8md6yP4bUy0taACUSV/RH8/GrtFCDnx8sRu6Y8o/yiTfGHcQQywg
         MlpyNoF/vUMzJD4l7v+FbLFMTj8FDxMykurEVwxn4fFlxdnZDFlxcw6maMx7taavRd7S
         ctsQ==
X-Forwarded-Encrypted: i=1; AJvYcCWk/Y6SRg7NJ7dFp3Y7K85YkbIrbqG1Dh7adhNYhYCxBzZ0wM1Ypf695im3/4kpud+au4K7vMEhpc4Q@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+5oLSzO0/jzqJHSN2O4sJmOLhyqTk2n1TP34sB/9DRu9P0e9c
	146FD5LScQR37Wb2GKox0FkAgPkIpf1lhuPZPrx0hIH5KHasbai5Mv7pxKFuRH+ZMV0MS2Sx3R3
	Y9m0dgNHmo9NgwAT0RbL47qCy4vCAbB/9f/VREH4n7L4A03PLgJ4CsHCcZrw2YWUR
X-Gm-Gg: AZuq6aJGqR8t4K04lzEBZBOKAqBO7ZqcddAJ3ksqrhgbwYLz3jUMmUNFOJbQEPuB2SG
	ZsClyvtBgsgfjI+0w+0nkmeJiyq5QhW6f7lgRrmd6fuc79Ce6JNuPZNauPjJErCjt+4qLfMaPXR
	alXRhaHpfRn5NBtNJBKBRenR3txAxR7ydu2/IvJws+sOcaVyxfFPBhHeO4QwUS2G+cq16S8pN0V
	Kg9oLB/xKg8xh6QF/geryazwgP5LgBx0JARbmJdsn42y3mVkKL4CSU2LmmNghDzsu4k2yCG9Erz
	NcXzkAxH86qDoSEev2xlif3EsCT9udfCdokreL2mTJtCEUQcOjR06eeWkxSDPMTtp3CmUFu9kEQ
	g92u6AMxtznBZSbAVX3G8zPXOPuTy2d6NoQnIQ21ievLhgxrZWZSFCEk=
X-Received: by 2002:a05:620a:1a07:b0:8c5:4e48:c908 with SMTP id af79cd13be357-8cb8ca02f8cmr1203872285a.27.1771870089288;
        Mon, 23 Feb 2026 10:08:09 -0800 (PST)
X-Received: by 2002:a05:620a:1a07:b0:8c5:4e48:c908 with SMTP id af79cd13be357-8cb8ca02f8cmr1203866485a.27.1771870088753;
        Mon, 23 Feb 2026 10:08:08 -0800 (PST)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d401aasm20458574f8f.23.2026.02.23.10.08.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 10:08:08 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: mohammad.rafi.shaik@oss.qualcomm.com, linux-sound@vger.kernel.org,
        lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, srini@kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v2 12/14] ASoC: qcom: q6apm-lpass-dai: move graph start to trigger
Date: Mon, 23 Feb 2026 18:07:38 +0000
Message-ID: <20260223180740.444311-13-srinivas.kandagatla@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDE1NiBTYWx0ZWRfX/T4oUTFQlevv
 YT80ioQWIRpE4kauRXiJwB/ukHF3ItDZdybvyembdVlRHLcWiU03iIIgSQUHtsJmcd95DaPwYU4
 uCVHW225mIpiLW/VQOgkI1n8N1FyVd3Vhu5q6K1X+BGpbA+6T5kS0O3rp3u2AIjyDPgl7cKH/21
 vlPwEoYuqC29S6pn6pb55LmjRdCcRpcMp/H8RrdcCwT1QHS9US5aRHlP1Wh5RAcc3djSTa+0sgO
 rwbf2xVN+5eIUruwaFQ5UXvHZ/Gy4pdYUPY3ebz7gAk+/vgR2iFalu/S12RROWBiuG8JoVwV/C6
 GE7isGszdkJVNrwzkGFEbTRPFP77DgydAGCzlGm0K5gyeL+EvvsVM6WVyYJU/qI68JW7ugQdcJs
 3HBfmnWERnAuhzYxrOlILY4n+mV8I/8aSHFu7GFNNbP3KAuQxyFewQtByBh5lN769OlJd5dl1SU
 0UoLP8WKz70927tIi1w==
X-Authority-Analysis: v=2.4 cv=edYwvrEH c=1 sm=1 tr=0 ts=699c978a cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8
 a=6WiqhGXfW3rOkMpHEiIA:9 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: aoF95DBzHyMu_D9qgHgyGYE9T8_RYNaV
X-Proofpoint-ORIG-GUID: aoF95DBzHyMu_D9qgHgyGYE9T8_RYNaV
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,vger.kernel.org,gmail.com,perex.cz,suse.com,kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-267592-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
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
X-Rspamd-Queue-Id: 9E6E917B53E
X-Rspamd-Action: no action

Start the graph at trigger callback. Staring the graph at prepare does
not make sense as there is no data transfer at this point.
Moving this to trigger will also help cope situation where pipewire is not happy
if display port is not connected during start.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 sound/soc/qcom/qdsp6/q6apm-lpass-dais.c | 39 +++++++++++++++++--------
 1 file changed, 27 insertions(+), 12 deletions(-)

diff --git a/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c b/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c
index fc246485e326..21624a2803a6 100644
--- a/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c
+++ b/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c
@@ -159,6 +159,30 @@ static void q6apm_lpass_dai_shutdown(struct snd_pcm_substream *substream, struct
 	}
 }
 
+static int q6apm_lpass_dai_trigger(struct snd_pcm_substream *substream, int cmd, struct snd_soc_dai *dai)
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
@@ -171,10 +195,6 @@ static int q6apm_lpass_dai_prepare(struct snd_pcm_substream *substream, struct s
 		q6apm_graph_stop(dai_data->graph[dai->id]);
 		dai_data->is_port_started[dai->id] = false;
 
-		if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
-			q6apm_graph_close(dai_data->graph[dai->id]);
-			dai_data->graph[dai->id] = NULL;
-		}
 	}
 
 	/**
@@ -203,14 +223,6 @@ static int q6apm_lpass_dai_prepare(struct snd_pcm_substream *substream, struct s
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
@@ -254,6 +266,7 @@ static const struct snd_soc_dai_ops q6dma_ops = {
 	.shutdown	= q6apm_lpass_dai_shutdown,
 	.set_channel_map  = q6dma_set_channel_map,
 	.hw_params        = q6dma_hw_params,
+	.trigger	= q6apm_lpass_dai_trigger,
 };
 
 static const struct snd_soc_dai_ops q6i2s_ops = {
@@ -263,6 +276,7 @@ static const struct snd_soc_dai_ops q6i2s_ops = {
 	.set_channel_map  = q6dma_set_channel_map,
 	.hw_params        = q6dma_hw_params,
 	.set_fmt	= q6i2s_set_fmt,
+	.trigger	= q6apm_lpass_dai_trigger,
 };
 
 static const struct snd_soc_dai_ops q6hdmi_ops = {
@@ -271,6 +285,7 @@ static const struct snd_soc_dai_ops q6hdmi_ops = {
 	.shutdown	= q6apm_lpass_dai_shutdown,
 	.hw_params	= q6hdmi_hw_params,
 	.set_fmt	= q6i2s_set_fmt,
+	.trigger	= q6apm_lpass_dai_trigger,
 };
 
 static const struct snd_soc_component_driver q6apm_lpass_dai_component = {
-- 
2.47.3


