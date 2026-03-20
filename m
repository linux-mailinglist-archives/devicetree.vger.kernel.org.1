Return-Path: <devicetree+bounces-278324-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2El9OAhhvWl09QIAu9opvQ
	(envelope-from <devicetree+bounces-278324-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 16:00:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1322DC2FC
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 16:00:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4167231077D5
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 14:52:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4FEA3CE4AB;
	Fri, 20 Mar 2026 14:49:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IqWS0ATE";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LjBZHLKy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407FE3CD8DA
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 14:49:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774018185; cv=none; b=Dt5L6NasEXgbhX2/w/GdsPhOEKkMuICqiGnZoXvRPX/kwHFCmi1z/QiPj1GYIp3d4osnCvQS5QM+2h9KUXniCJQV9XbaEEK4d703jKX7pVpBmEhV71TTp8OdkF6sHX/bWPqHu6OVy9kzz66cVU69MhfuUCelz+ni78AE7Z5IOV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774018185; c=relaxed/simple;
	bh=HcBUaG07YHPkjw7AtCbbPauazCJLhtW0eS3T+3u2Oe8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UMR163WhQZAoIeNRt/4YSjKeAu0zCxVXcxxaWjSTTh30+2Wy1eEEDsrmay8MZ8cI6NrBr/I6cwMcJTowqpddm4GAnlLFMhMGg3sXAPhn1UczjFqLsaYIvaBDWIMnzioscZcf6ABU31aLpTxoWqfwdIbZL4+ScKoQ3cRsc/74BPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IqWS0ATE; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LjBZHLKy; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62K94UPe700888
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 14:49:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=K2FJHPPcvdd
	DuyFi5b9Enk3oj2KWR4s1Mi0JeIXu8dk=; b=IqWS0ATE2IIUT2Zo0bm+ufMAxEQ
	LYTadGvd493j/mY/tSJSsFolB6nnJyftoJ7wTBSqTDfViClsUL76F7s4Yc58Ulb2
	YKpRkjIYaDXS7UUavG4liHS+YF+Ng0E25y9DE71WD/sEqn7ng29brVKlRo1WbecD
	tT2J87vn1G07V4gaK8wD/zAhgUgvuUJsNQb9TidLocP64WEDwOF8UdWlqCkQwwym
	9ZIVTdMciP1/EAcEsk2USL3SRkA8dezPPo+lNF28EIspcJYlcbQK8PtlqHTR/07s
	vW6QekB0NsL3n/ESOM4WgZ8MoEBmroxuhrU+jYcxxO3RS33lb8otZeB+stA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d139q0sxt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 14:49:42 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-89a0684d05dso214375206d6.1
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 07:49:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774018182; x=1774622982; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K2FJHPPcvddDuyFi5b9Enk3oj2KWR4s1Mi0JeIXu8dk=;
        b=LjBZHLKyDqZgsyViT1jNc51noRRYu0dyAPHO337bYPG36bMlplkcs6KdOtglIxTB8i
         MKct4lo5BeAi9rPsqY+ZmtG3UYx8nVYK5c9uEu1ki1uiIFP057mlwFemK2lsxXDKF3XD
         fVPXO2zqKIMy/X5BM3BaW/0M6e7TD8ElbsrjZht6GwZCNGROTOSHo8oZT9wr+8PG/H/Y
         sh5+9TTZprMR1wehH4gLaSXgrfBVcGQ1+IVFGxaZ0KEnVBfFippocLUXlC3FIUM/pjyG
         Tidqwgc09e/tkshJCPqHPcwl5+h8IJTN49jHWkqNu0FNnSXnQ0Hgd+Cj6p4PvEDYBmll
         RmCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774018182; x=1774622982;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=K2FJHPPcvddDuyFi5b9Enk3oj2KWR4s1Mi0JeIXu8dk=;
        b=jOJSV+K0jN2ZYDst4gkDuioCoFVptFMoeS1sSxlofP+GLjUUHIGYPK4x1pEWcekTHN
         i5ZNdRpkxhogWawuwqt6oD31bLdg8X1lRNYkKnulW8ZHcSxEoVYdzVtQ41Yhabuqk0vT
         EVWKSIeJH/zm1mk5ue19jL1cF2JFdQuBvt4WK9aL88O57PDR+v/rWx2xWOFnTLUnif9U
         n1EHoMFEg+zmOs/iTRJwkWan3sh+m6/Wio4A+cmrQG15d3M0sCIiWa1LI+IEASzXU8fB
         7nYHfdxFXIyRDTrzdzhiP/GL4DqmI5Kp4AOoHLlklCzreI7baZ1zIZtfYS937SOXyR1y
         FYSQ==
X-Forwarded-Encrypted: i=1; AJvYcCWyllblJAlkUXSzfKJuNQPZ3qdLmMCPLFivVzVX9HM61pOLzA86CBkep4wEJ99BGTFnbZ6Dh4YR1zoM@vger.kernel.org
X-Gm-Message-State: AOJu0YzlYXN0dnLv3UVC/rdvyz5+hcfoRPfKDUuC2D3bq+mw0sMcWK2u
	jkL8Dr7zxKeZLlTyWICkS/a/FRM8IpMKsfN8XwwWlZiPP4cdqMcmor9nvma+TmRgzxJw1Mvuznv
	FPtTFoXp4Zr59potUy0xl90sgoV28sTql1GBnlgcaBTFrwu+modqhI2VolE/3dQNd
X-Gm-Gg: ATEYQzxDNEVkuQ3kZGeKZe2nzHYzU3Juu415t9IK9dky/8PsQmxGKpvGMRutbGvAYhM
	BpXop7ixrougeqNcJBPC6oWHvrFBXGV8BPCuQAOJs06KEGQhZ4Pge9jEVLDCgVyVHpRyKLRQcGO
	Z/Bc3wJGiH37z293WN/rce6dM7NUODsDrM6V1ykaVw9ApVjO/aXCD8DpxXGAcncGoDEaP+/Yi1x
	gl4QxnS3NvLWxpFzfIO5jVvijsRqWBoypNP1S1synyfLN7oWYJoW9aJqlthENJ9K1EalXTjgHMb
	fvnAHj+/acUWezEKC4uHQPjcDiWygJZBxuqyiEWlzSyMwrpD9i77ACVodhQatwoF2I69OPdzdhQ
	Fjy3nS3Fu/z1XX0DKMuLtUU63z6ArSNIi20o4bdVfMLOjXVOo6R6u+kA=
X-Received: by 2002:a05:622a:130c:b0:509:202f:f03 with SMTP id d75a77b69052e-50b247ad184mr105792101cf.38.1774018182313;
        Fri, 20 Mar 2026 07:49:42 -0700 (PDT)
X-Received: by 2002:a05:622a:130c:b0:509:202f:f03 with SMTP id d75a77b69052e-50b247ad184mr105791611cf.38.1774018181640;
        Fri, 20 Mar 2026 07:49:41 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486ff109b95sm47906825e9.1.2026.03.20.07.49.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 07:49:40 -0700 (PDT)
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
Subject: [PATCH v6 11/13] ASoC: qcom: q6apm-lpass-dai: move graph start to trigger
Date: Fri, 20 Mar 2026 14:49:16 +0000
Message-ID: <20260320144918.1685838-12-srinivas.kandagatla@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIwMDExOCBTYWx0ZWRfXwE72Y63lUImm
 gv4abH7+OZxdTwbUBcVN9uOtI41icsd8dnCDHLcvAlYnAS7OFFJ0kBs5ISCB7k2HvKcfRYySfQ2
 kZT6llcOedRl133ITNWY+TwqnXY8O8rfMJFW4laqIVGC5nWwhxd0bA10LniKykU+WaEeQxbdwiT
 RDkVLJofIN6YptfyyooPXojYKQkfMkWgFqljZ/w9nAXrmi+6Y8LaTHyBSaYscgxrbt0TUzKiWyU
 orQLTrwedTMPkdjJMPMAFoa+M4iQFAywN8r2+gKquSIGLyRPT/LawOEK05iRIWHrOX4vC4ATflf
 +EjbsrzJmqCIfsF7S6x72WLD1s4AzdQMmRdOOYXYTEl76OAKf/dcvTl6sqyJUdep6m18E5bZQEX
 ELfy/h3RcioL5x+75JUEuEquxtMxvIvRU4lyBSOavViLhDZ7pYMIThDhtD7o9BuYpqIcv1RGBq3
 lV/mkMKoNVDXgAgpPhg==
X-Authority-Analysis: v=2.4 cv=FOAWBuos c=1 sm=1 tr=0 ts=69bd5e87 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=EUspDBNiAAAA:8
 a=8udmP7N65bQo3KbB_RsA:9 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: u_VdOn9g_3-cfyqQSYukC_DgfX9DJhdv
X-Proofpoint-ORIG-GUID: u_VdOn9g_3-cfyqQSYukC_DgfX9DJhdv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-20_02,2026-03-19_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 clxscore=1015 adultscore=0 impostorscore=0
 priorityscore=1501 spamscore=0 lowpriorityscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603200118
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,vger.kernel.org,gmail.com,perex.cz,suse.com,kernel.org,packett.cool];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-278324-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.971];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8A1322DC2FC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Start the graph at trigger callback. Staring the graph at prepare does
not make sense as there is no data transfer at this point.
Moving this to trigger will also help cope situation where pipewire
is not happy if display port is not connected during start.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 sound/soc/qcom/qdsp6/q6apm-lpass-dais.c | 40 +++++++++++++++++--------
 1 file changed, 28 insertions(+), 12 deletions(-)

diff --git a/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c b/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c
index 87f6db12003e..e904066484d5 100644
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


