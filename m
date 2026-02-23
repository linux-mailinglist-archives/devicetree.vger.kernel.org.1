Return-Path: <devicetree+bounces-267588-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uEcAKCqYnGluJgQAu9opvQ
	(envelope-from <devicetree+bounces-267588-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 19:10:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB2917B4E4
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 19:10:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C58DB309B274
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:08:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50EF733F8AC;
	Mon, 23 Feb 2026 18:08:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VHs788gH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RGJEWjch"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ED3133DEDD
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:08:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771870088; cv=none; b=FOUAF0EXajzg/rB5z2ruDhdn7Lstz8zH8mb6i3qUkBJOwXOEG67wmgmP3+BbeQ9AMQpjox0PoCN3AUPVpRD64madRGlMRjhm8aRWSmhlrJqCy/z2+QYJnEVbSstSOH35G2Njx8cV7vho+WMiG3AzJ7bwPdkKr4dhtj5TDcG4uXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771870088; c=relaxed/simple;
	bh=1AGWMMo+ZQ2MpMqgndQclqL9hoOIddPn00jRigW1KUQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IiZWHDdFwBQwcf5CIDnge8832eu2IHxhLZuvdijMlhYLLcEOtub6pdlp/eUs232xNogswykP/2r5OjBgNV8+gY+MuWa0hVdQ4/6j7eBLmtVuBD6xafcCkv5eUNZ6PVMrpo5UNmrON1Jk079z4TmOvmRAeGNvMkiTMmnycAycYCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VHs788gH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RGJEWjch; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NC2qa43152071
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:08:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=2UA23pg+dGV
	Ambwz2ppXfyVdk6xlbVmq70z85L7JFXQ=; b=VHs788gHBLElUvHdyl49YXjfMgO
	poFeujaOurmAB7oXuAfO2ltjQ14p1pkLY+Gr3BNDPr+MjSUaDEDIKI7V+H/fp0O/
	26YdVr5OHDhEGLeOqzVpZ4JZ+Yvs/R8DtXCthvi6AsqF8RdF6f86PXExyMCY2EGu
	cRzWNOltytisSzvzzbXu2qXVaAgyOzEyjUNhkUO4dMaO+IQnerGTOQosMTM+VrQg
	O0XTwBIfqJfLUaeS+SmJNzEWBAt9xaXB9RDJ8eHInYOWdB008x2MIfMu+ixVZMVD
	AxG3ZaGHzb8wUaqRyR7VhgFJnUDj0eOvSrRU94u8D4geQ64E9EumDOug3Xg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgpj895p7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:08:05 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c70ed6c849so4150012185a.1
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 10:08:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771870085; x=1772474885; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2UA23pg+dGVAmbwz2ppXfyVdk6xlbVmq70z85L7JFXQ=;
        b=RGJEWjchbTIeGDYBFh6UuZJKNFcMXcd9fh4iGb2HscvGwRKCAAbQy9TWdm7RCjLKpa
         wZeN1UI5g4zBWMmLcJOr+Jd9T6nn41ofw6H53Ezn6JB4tsquo3XvSDpgiCewjV06xYsv
         BENCyoocvmlf+t9aYR6il9573PiR5b+SgXkVJU7HzTcYnY9UlC9vFDQZFu4bDUhmj+GQ
         vKDR8JqKFDLqtsReu4KoDP/pzkGe/8H9qmXp93SuQqpQfx/eFTe1DOJNHHKNfDvUoK8D
         StZQus2A8toR4JBLLHkI9maSNM/9hAbAxX5KOJoW/RnzZTZGo35hjdgm3Lfdux9OX349
         +MtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771870085; x=1772474885;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2UA23pg+dGVAmbwz2ppXfyVdk6xlbVmq70z85L7JFXQ=;
        b=lZ2VUDKqqLkk6tLmxK2xksUZCMvDZEGC0/9jlzl3Xczk8pQXxDL3rzcbO8B5PLQANh
         Dycj5r6bbDkSBiOYlxovvNz/fKMj0B8/r7K/IWsNl9HrL4M26rM5vUon5yTbaHkuHPZe
         3jP3atzPsHwLUd7AVTIx++KfHYDERpr8+T0SZ7YxkZk0l7CHHYxgy2Hwdaw6cU4/cSjP
         /C2ajEcmLE0DcHaDKJCLSP3p24RIl8MfpZ/z7A9bzNEJVzVY40KpUjeSAoVypgOgbvZD
         4XIn/AFeeB3luKN6MN1WmAzjctvHJWkdWI/mZBOHNnPo3AmkCY+7c21RVZpVM7ISjasn
         GH/w==
X-Forwarded-Encrypted: i=1; AJvYcCX+9TqLNo1RA0mkTxVp0U9CpOmYNqp5uLn0VC1G6MKnOP1wp1HoXBk3csy4N/0iZ61yx3vpDWdrod96@vger.kernel.org
X-Gm-Message-State: AOJu0Yxm9/b1KcW8ZUl74l/rRKcC04Usvs6nDg3+3U8P+reUrOjoisIu
	w1xh53c0WaqdQHGWrPH2JVBMpfNPfJRwr2nY7GI6tXKDlwkvRFX/vuTmuH2HaGg6NyL9TEEqZ3v
	wyI05g/0iSJ0Y58LY2k9K93EYmh1Ps+WaUyyygQmLBhuYceprtO0fCR0k+9r0rqWa
X-Gm-Gg: AZuq6aKxA9B/CgGXOuV1aWqOJZX6mMJGxwSQMelnkbeNS/u5NUSZ2wj6NJhZWi9RRwa
	wqOpGZQbva80FEuUa0ZOwN7AD/O0C3UpWuXGofFE/3p9M36nnwM3lCgRq4pPfeIhdAvU09F3iGi
	qiLy/wDc7B7GRatDPQ1aMkfVX3a2EBY1QH46mgNNSiT4rW1QcZ/xXTkzf18ltrH8mF2PqHWuJao
	8zrY76EYMZAe0XJ15nYZkBddv6jjy3g8NZFsou6ueUXRsgHodrepuS0xt3p8t/FreBfIEuwmYnF
	El56WkPPnGYT15upVdomDP/i7JIdASMKZ8ywmjV9Ssr3UBLloK7MZJdEypda+DZ/HhNF7BaHYzE
	zpCKaSpKfFLWged1znxESBXiI0SjjjKNEZ+Vzuag3sOkhBivFk76JEa8=
X-Received: by 2002:a05:620a:4150:b0:8c0:d16b:b0a7 with SMTP id af79cd13be357-8cb8c9cda80mr1154632385a.2.1771870084861;
        Mon, 23 Feb 2026 10:08:04 -0800 (PST)
X-Received: by 2002:a05:620a:4150:b0:8c0:d16b:b0a7 with SMTP id af79cd13be357-8cb8c9cda80mr1154628085a.2.1771870084439;
        Mon, 23 Feb 2026 10:08:04 -0800 (PST)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d401aasm20458574f8f.23.2026.02.23.10.08.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 10:08:03 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: mohammad.rafi.shaik@oss.qualcomm.com, linux-sound@vger.kernel.org,
        lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, srini@kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v2 08/14] ASoC: qcom: qdsp6: lpass-ports: add support for LPASS LPI MI2S dais
Date: Mon, 23 Feb 2026 18:07:34 +0000
Message-ID: <20260223180740.444311-9-srinivas.kandagatla@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDE1NiBTYWx0ZWRfX5s0UpPWCIN9A
 e72f31yi86BzijmTBESQ1a2EqBiUrSs3113S257yirX7SRr8/BwNp5XMMdbaK21jBEFThQY63Un
 UoHmcC3LqNeNDnXl4Iqxhf57VNHMn/QEo3Yunj1xKpTprVMa6Uc5smdQaBIq4InaV51rsH0b+vp
 8N5Mvo/U3D0WfTED487LUU1H6Amzz/FqrW4X5ficfeqcFzi4+9ksi48DqvCYr+LOmXl8LOR/3Tg
 eWD93NWPf8EnYaDA3n73PF1RwrPef8H0z62eybw9FPKYqPbmYvtuqhgmf5hziVHqDd3KL/gz1fT
 458yT2EGn5BrIF/dBYlWoa39qkX3W/RMki4jwkcfj7qrquZUvfaan6Gwg8JJl8gAWkn+5hZszyI
 aN842rk3twbZ/k2xI/f5mTeSl8jFF6Rs0MZwVvwAz/HeF8LSIGlVDSFBplV7xhdERs7MfB9pbyB
 2Szi6OSD7ZWDDc9oTCg==
X-Proofpoint-GUID: FatfapYWh3H90kkf3qQeeUNG__XgXYlh
X-Authority-Analysis: v=2.4 cv=Z5Lh3XRA c=1 sm=1 tr=0 ts=699c9785 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=EUspDBNiAAAA:8
 a=nvRDalaNTaWZAukup-IA:9 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: FatfapYWh3H90kkf3qQeeUNG__XgXYlh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_04,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 bulkscore=0 adultscore=0 impostorscore=0
 priorityscore=1501 phishscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
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
	TAGGED_FROM(0.00)[bounces-267588-lists,devicetree=lfdr.de];
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
X-Rspamd-Queue-Id: 1AB2917B4E4
X-Rspamd-Action: no action

Add support for LPASS LPI MI2S dais in the dai-driver, these dais are
used in Monaco based platform devices.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 sound/soc/qcom/qdsp6/q6dsp-lpass-ports.c | 47 ++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/sound/soc/qcom/qdsp6/q6dsp-lpass-ports.c b/sound/soc/qcom/qdsp6/q6dsp-lpass-ports.c
index 4eed54b071a5..d31388ed3ccf 100644
--- a/sound/soc/qcom/qdsp6/q6dsp-lpass-ports.c
+++ b/sound/soc/qcom/qdsp6/q6dsp-lpass-ports.c
@@ -96,6 +96,42 @@
 		.id = did,						\
 	}
 
+#define Q6AFE_MI2S_RX_DAI(pre, did) {				\
+		.playback = {						\
+			.stream_name = pre" MI2S Playback",	\
+			.rates = SNDRV_PCM_RATE_8000 | SNDRV_PCM_RATE_16000 |\
+				SNDRV_PCM_RATE_32000 | SNDRV_PCM_RATE_48000 |\
+				SNDRV_PCM_RATE_176400,			\
+			.formats = SNDRV_PCM_FMTBIT_S16_LE |		\
+				   SNDRV_PCM_FMTBIT_S24_LE |		\
+				   SNDRV_PCM_FMTBIT_S32_LE,		\
+			.channels_min = 1,				\
+			.channels_max = 8,				\
+			.rate_min = 8000,				\
+			.rate_max = 176400,				\
+		},							\
+		.name = #did,						\
+		.id = did,						\
+	}
+
+#define Q6AFE_MI2S_TX_DAI(pre, did) {				\
+		.capture = {						\
+			.stream_name = pre" MI2S Capture",	\
+			.rates = SNDRV_PCM_RATE_8000 | SNDRV_PCM_RATE_16000 |\
+				SNDRV_PCM_RATE_32000 | SNDRV_PCM_RATE_48000 |\
+				SNDRV_PCM_RATE_176400,			\
+			.formats = SNDRV_PCM_FMTBIT_S16_LE |		\
+				   SNDRV_PCM_FMTBIT_S24_LE |		\
+				   SNDRV_PCM_FMTBIT_S32_LE,		\
+			.channels_min = 1,				\
+			.channels_max = 8,				\
+			.rate_min = 8000,				\
+			.rate_max = 176400,				\
+		},							\
+		.name = #did,						\
+		.id = did,						\
+	}
+
 static struct snd_soc_dai_driver q6dsp_audio_fe_dais[] = {
 	{
 		.playback = {
@@ -484,6 +520,16 @@ static struct snd_soc_dai_driver q6dsp_audio_fe_dais[] = {
 		.id = QUINARY_MI2S_TX,
 		.name = "QUIN_MI2S_TX",
 	},
+	Q6AFE_MI2S_RX_DAI("LPI RX0", LPI_MI2S_RX_0),
+	Q6AFE_MI2S_RX_DAI("LPI RX1", LPI_MI2S_RX_1),
+	Q6AFE_MI2S_RX_DAI("LPI RX2", LPI_MI2S_RX_2),
+	Q6AFE_MI2S_RX_DAI("LPI RX3", LPI_MI2S_RX_3),
+	Q6AFE_MI2S_RX_DAI("LPI RX4", LPI_MI2S_RX_4),
+	Q6AFE_MI2S_TX_DAI("LPI TX0", LPI_MI2S_TX_0),
+	Q6AFE_MI2S_TX_DAI("LPI TX1", LPI_MI2S_TX_1),
+	Q6AFE_MI2S_TX_DAI("LPI TX2", LPI_MI2S_TX_2),
+	Q6AFE_MI2S_TX_DAI("LPI TX3", LPI_MI2S_TX_3),
+	Q6AFE_MI2S_TX_DAI("LPI TX4", LPI_MI2S_TX_4),
 	Q6AFE_TDM_PB_DAI("Primary", 0, PRIMARY_TDM_RX_0),
 	Q6AFE_TDM_PB_DAI("Primary", 1, PRIMARY_TDM_RX_1),
 	Q6AFE_TDM_PB_DAI("Primary", 2, PRIMARY_TDM_RX_2),
@@ -636,6 +682,7 @@ struct snd_soc_dai_driver *q6dsp_audio_ports_set_config(struct device *dev,
 			break;
 		case QUINARY_MI2S_RX ... QUINARY_MI2S_TX:
 		case PRIMARY_MI2S_RX ... QUATERNARY_MI2S_TX:
+		case LPI_MI2S_RX_0 ... LPI_MI2S_TX_4:
 			q6dsp_audio_fe_dais[i].ops = cfg->q6i2s_ops;
 			break;
 		case PRIMARY_TDM_RX_0 ... QUINARY_TDM_TX_7:
-- 
2.47.3


