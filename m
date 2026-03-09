Return-Path: <devicetree+bounces-272709-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IBV7Nspurmn8EAIAu9opvQ
	(envelope-from <devicetree+bounces-272709-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 07:55:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 27FD32347EE
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 07:55:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id EA4E5301C6A9
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 06:52:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAB4C3624AF;
	Mon,  9 Mar 2026 06:52:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="N2d/YJuB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZcGvT+ee"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0D48367F3F
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 06:51:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773039123; cv=none; b=SfzGJbaQ3Tf2YttBB/xrEEx3ubPmxiCV6De/zzxo9HLYfEjXvLoqtrUwQ8UMMw5pmiimO5k+hNfQAZisCK85Yn0AuqA7tSZkwWDW7uidkzRDf6ow6z3twdRju5X9xian0im/0v7iIr3okKtmdz8vEQ+aibzpM81MUvs8eqJKrtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773039123; c=relaxed/simple;
	bh=B8mb+C29aHmXpiZ0KkyuEWv+QuyMzs+RA8VA08jucnY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bGqT3IryZVDRjjCeeTF2wzjIh4rS4no87zgY74mtJXTpTd/oWLvzJ5HWicJAEOAn6VfK4C7fcN9ChaFQspABNmoJer8Kf+ZnTVm7q04ZckmhtoU1RDj8xIXMZZZD4v5jpccukBl1G3O9z8hZj6wgaRu43Qx4VoNdc4CNQ9J4AYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=N2d/YJuB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZcGvT+ee; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6294fDMF1588111
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 06:51:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=aC+um2a762g
	fpLWPhHdIhYlAN3YczWO4vgnfj1X+hyE=; b=N2d/YJuBs56jlxVkNwleuMJSaYK
	NgP8IuYQ5GQOaXC2SDLhxAbfE8NMx5/EJzpk+FACga9WJcLVEdP30fEUenug2equ
	3hK8LwQze03kg7WqCQXlz2fOJAWJlAhT8ZstTjC11hb+ICYvSsmFI7+Mdt/nJ//9
	y4wxsTJfPNJh9a6UIrlDPtRRuI3wnTJbvuUn2Q4utXsDswCxZFlArD2wjjU2rOgc
	f6ZaLKOh8q8gQo+uNS9Iq3E0epKgdiyqMiOURoqaKazeuAS1BeGVXnXGu27OMsrq
	OGOuuq5j6pK3b21anaL+Yiou7C/75mPNCKlNZgtTFw5Royp3kdIR1uth9SQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4csqcy8ba2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 06:51:58 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cd7d66afceso876221785a.3
        for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 23:51:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773039117; x=1773643917; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aC+um2a762gfpLWPhHdIhYlAN3YczWO4vgnfj1X+hyE=;
        b=ZcGvT+eeaatu/EkhxaWG68MDV/ZcidHRRK9rCnxszfqc9e/86+0Blu96DT8/Sl6Ocb
         PDoi2+G07PSEZhMy9A9SbnOktmg5zEz2StzhRquFNhXu4wncetTZAkHawa3OsdWZ83TG
         wHru3kybis+c5mxSP22UE0hna1v+JDrRHj/kTMg0CR2z22grCLQyEbfGG5p7DYjydeyh
         7101ZrSD4XRgkBjPllJ2ydBpSxdI4VizW+a3KjSajn4ZpgLNH4/YD6JXkoaiRlGv8lc2
         L4n+Auhpw1jSiCJCrIZTnqFx/voiLqGcJKcpPWRiNE3d/tztxX2yxa7yp9GzffIKuZUR
         AvYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773039117; x=1773643917;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=aC+um2a762gfpLWPhHdIhYlAN3YczWO4vgnfj1X+hyE=;
        b=PsDSjxRicO0AFg68TF7D6lG7K00EwNOYFw6XRNOsLNA+lVAQH2MGfHWUd0vlLvw4a7
         msfIWWI9ZQJWChBRZL3hNb1vNSC1gLwBSxugS0VoHMyYzpVkdPLOEf2mEybz9eRR8AWx
         WpoQsx2xyJYDqRgTvrL2AnDSEJmLQlk/dWa62NP1tnNtw1nBxkNSnK+UNZeRz2UPdnW8
         oiLCIEoyScPH7Myryaw/60fEbSVp/go6r3iBkhf/f85d/dLGv7Qu8xGONO7j6XN8lIk+
         6+oytm7zOSBUz1Gpnhxjt5VYoxuu9RJi9Kys+O8HiKfmBUnbn4MQl9bENtgTLiXZ8YiW
         e4gQ==
X-Forwarded-Encrypted: i=1; AJvYcCXTxqe3R2YF1qKHfUc0gppaoSd7W4zyMIIN7147FRYOgJLOofeaqQAp/ZLRJbUWUxpXUi4Cq0o7jMWK@vger.kernel.org
X-Gm-Message-State: AOJu0YxsYk7ZZEBeHHc5hWhF1Mltzlp3g30dpm3bs+er1smB83V1nxjb
	WM9x3/Z/3+D/Rpwp5R/5RDn0BPh0mS6z+9aeXiqEUcA7Cc1hUyhi3gtzjv3YbzTI0o9FBM9Ii8U
	Bb6ttyxOe1g6yRMD1YsePEAELgv+H1kKBNTvDWW0vauKDasfsSGm9y4xCxQ52M5fX
X-Gm-Gg: ATEYQzy1LGp8q1VyAhmqcZmZB05lDpheKaXVggwlDBc7hKjPYeb7YTa7gVCyQDfH96C
	WB472bxs9uhMZ0SGTgNzVP0dVidbxu7526P79uuiglN72qw6O3b6RJnkRFZrmn6LS4PWGOcm0/t
	UbKyZaIQ7RAThH1gOCa9DYetl7H+YbIg3KTXobo0+gpQckqj7X2J137RWvsM/9SUtqpZtv8dgvq
	3DbdJCSESP7JuPzSnAOZ7pKCgJ0pNkxIny4w0V978iU0+YFYDjvOn84LvkY0vJaVjrC6zjj8bMi
	w2YUWxB0TlQPJ1V4JhtIe/p5s2pzifhwHkEqUvs1cACDL31aIlqSECiXivFmGxu8JkRz1shFhRi
	8s7bl3Z7KVQZ8B70wnAN6mnP4Wp99pyOm80qfQY7uVSYMey6C5SsmZiY=
X-Received: by 2002:a05:620a:444f:b0:8cd:8cb8:6ff9 with SMTP id af79cd13be357-8cd8cb87302mr150325285a.34.1773039117233;
        Sun, 08 Mar 2026 23:51:57 -0700 (PDT)
X-Received: by 2002:a05:620a:444f:b0:8cd:8cb8:6ff9 with SMTP id af79cd13be357-8cd8cb87302mr150322885a.34.1773039116846;
        Sun, 08 Mar 2026 23:51:56 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48529f01997sm80449975e9.14.2026.03.08.23.51.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2026 23:51:56 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: mohammad.rafi.shaik@oss.qualcomm.com, linux-sound@vger.kernel.org,
        lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mailingradian@gmail.com,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v5 11/13] ASoC: qcom: q6apm-lpass-dai: move graph start to trigger
Date: Mon,  9 Mar 2026 06:51:35 +0000
Message-ID: <20260309065137.949053-12-srinivas.kandagatla@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDA2MSBTYWx0ZWRfX9giyf1cKWWDL
 cGx0UZeEmzTxpZhORvn/jZV9ou3r4xsKYu2PJ1N4SqnSkmMGopCGETDtQZuZ8XfC7peveHbLHVS
 3L5UKLiOLA8G9EkPPCX0p197RDP0VO+CJr9RblsHWLkLfIIH0HtRLWuLfkRViXpk05VsPo2zmzU
 qarDltDheWOrDjPISAcxIMx+BWRcMpDvUcUzIUkjb3qzO5Od7E460Sgh9/wJt0MRFrpaMM7j6om
 LZIZ20qC4AoZZ03P9KeR3lVII+Zq6OCYsr5abOBAcubFmOhRw/7mz30/neKBvGl0uus7rzU9Ic9
 LTYRj30W2Ed6wsm7+C/TYdrpMVI3CT2dj1RAtEJWjqefRsLGs/W27+tYtKAQgGvq8l34W6Y++4M
 hoXQkQHmRLL5yP1fVMcmW9cWZlevqI2NAbryCBO3Z9UEw3a1zQJOX+YayCkA16nxxWR+63cvx8B
 Z+FNSIB0TNSkWzUkmkg==
X-Authority-Analysis: v=2.4 cv=QJtlhwLL c=1 sm=1 tr=0 ts=69ae6e0e cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=EUspDBNiAAAA:8
 a=8udmP7N65bQo3KbB_RsA:9 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: gpdOTy58FmOpFTcTbHvj_dx3_0tyLsQo
X-Proofpoint-GUID: gpdOTy58FmOpFTcTbHvj_dx3_0tyLsQo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_02,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 adultscore=0 spamscore=0 phishscore=0
 lowpriorityscore=0 malwarescore=0 priorityscore=1501 bulkscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603090061
X-Rspamd-Queue-Id: 27FD32347EE
X-Rspamd-Server: lfdr
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
	FREEMAIL_CC(0.00)[oss.qualcomm.com,vger.kernel.org,gmail.com,perex.cz,suse.com,kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-272709-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.997];
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


