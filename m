Return-Path: <devicetree+bounces-278320-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qA15AxdhvWl09QIAu9opvQ
	(envelope-from <devicetree+bounces-278320-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 16:00:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E73F72DC30A
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 16:00:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3CE60317FB0E
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 14:51:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 023AD3A874A;
	Fri, 20 Mar 2026 14:49:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eMj0TbLW";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cfQ9BrjQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88E0B3CA485
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 14:49:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774018177; cv=none; b=hmcS0cZyfO7yUjJw7Ad7Nql5lbBdFpAwwYW5rtFG3H43l0AZ+YJ8DaHJ31DgcsHgRIMlOzkaA0+//Hwd1OkKi/gGAyfBZfIYxL5JXN9rdUqqE25VXkM83A4o4tcJ48IbO+ysNslYgubDITeefwp4QdFZG25Jwm36IF6cpJNTjLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774018177; c=relaxed/simple;
	bh=1AGWMMo+ZQ2MpMqgndQclqL9hoOIddPn00jRigW1KUQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Fa28EhdDuymRJWWdnZCJ3Rt2Va4Q8Ay98+5PLonjS+OqqnKaOI7XfZXU1dydYSNRV6rGnWRcMwHwLtgf3suIpmRE325P1+XE9Ivw+bfYUjuZybMMtn/EsbwCSPpV+GtaKCQ7xsQfJanvUIeCHa0defoQZZxe16kPT/oOYDA0Uy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eMj0TbLW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cfQ9BrjQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62K94XcV701053
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 14:49:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=2UA23pg+dGV
	Ambwz2ppXfyVdk6xlbVmq70z85L7JFXQ=; b=eMj0TbLW9TnwZv5eZisp6ltT93f
	vKBIFuNjscoJjw2nSmLYL/4m4adRbZiST4b9ChS+by6MRry98Ni0Uox2Uy0Z6Rth
	P5ks/Cn6R9yGWpganhME7VmcZJ48o/4KN2cNhdZpxljKNl072KwyIZglLcyyJkuu
	ArNipY5IbFt+x4SzNWk0Ff1hPPYjWtbGaW5NaQqaYzyvD7FbDD/rxWNslJinjG/c
	E0ogYkaQ6Lj+YYy5armXA9lcWl5WAHbcVqz0RI3ZRBtNzhxFJjilc3n6H4jU7Wv8
	U4Do1zqZAqBbr6qzA+PIRoeO5gXBx51bKeLLsnuMAVQImvCcvZjskNCEt0g==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d139q0sx7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 14:49:35 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-50b31cff27fso4958611cf.3
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 07:49:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774018175; x=1774622975; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2UA23pg+dGVAmbwz2ppXfyVdk6xlbVmq70z85L7JFXQ=;
        b=cfQ9BrjQwmVRJG7acdG7rck9IEifG0j5ZL8/zQIs0BdC6Ze+nhm+LtqYTTJgmshGrR
         hkCUbh68hTt3AK/09VVIMHMVVMQ3BJBbLuKXTF+sjzMKW2oO4tJuBt//gZfuGJHEJxuM
         8SDVgB9gdClYVljbv/Cey/qrZ2sGk+mUn9gNBD7ylxw3wAusoo9PMmIIN+vhHizBvSb9
         UHeLe4P+F+Tq/U2HFNwe+3DrLfNkNY/EIseDogsbPQ7rxqjwMARDlWp6GhVclj3RVX0m
         OQg0v/ecG+ThMwDwkcj5UdR13EPzXhMWRU05zn276xQW23EUvElT0Ro5jGmKksh9KNzr
         /o6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774018175; x=1774622975;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2UA23pg+dGVAmbwz2ppXfyVdk6xlbVmq70z85L7JFXQ=;
        b=XTzaN1NPQ41n7E5MgXPh6YQVtJvdIr7UTR8yRt9kVFXWGDa/XRbzgQhYN/MNLIqHGr
         n/EBOC6TKxgF6JoRZ3Aqq5FJJPf4hAKcT+VTHkuTa50FBER+jDDtc0+L4VKUz/I0AmxU
         +1gAWHTw2UbDKSoICWWif3UE0xLLkhgfCv1i4GZDw/CosJJ2m8NiYFG9TNndQogOT9zR
         /rgdignO4AhSCNPlO3YeNdMXPOv3bF7Xqhdmf2vgH5cOrMFWxkaogL5CEiFgcu9vzmX9
         bfzifVv3+siH5nvzw5o2rp2ise90gxDKLWjuyu2RzAelu5CFcdTGlcFgVOF3BKHit07v
         SgHA==
X-Forwarded-Encrypted: i=1; AJvYcCWq9qCTVuWlC9sEtRvtgkxtrlGni0QoC8D/4nhAMUYMAYlvQhnEWlXqLFDb5doUHGhhOV10ur/6N7cE@vger.kernel.org
X-Gm-Message-State: AOJu0YwnMM5KqpXoW8Kcs6Qa0BaoVAGZoRmSwZB+rV8kbJqwxX2GZP0F
	Jte9kQIKr9+PRFoyPefc4XsnoFg+Wtfb9kGoFx8xoB6PQ+7zEiEwKaxL1+rqXjC1OzegosPs5kV
	fakoTo7/tTmuMm9P4JhI2PBNr+IGh0jCUNaVgUXpWxOU3EtG/4lKs/jt6EmrFVbfI
X-Gm-Gg: ATEYQzymKpOCTD57Vzs1E1Tl/zBklkQnjQm9axlSqS7wOBv8zefBaKGVyNGd2IrKs/e
	ShPTD5sfIovxa5a7u4/ExvBcQHjxGK4JmQuG+L567L77Pf5JR4LjwHToSMQEY4elYPH9vQmIeoK
	z2XvudnOukiOJduJhgDGYn77dGOLlIBTzX/zmf6uPlakSh0bbpmavM/L29z9Vf2cynOMBXcIuJ9
	XgnPv15cDw9MSzDYjOhw8xmw/Aj9dnmqyeGyb40CZLmwTewp5u2fGRg/7VoTIhgBE/UB6PY0Y6O
	JaJoHRHJFsLFSG7HptGvv11pPCeEkV06ub3RXYupsY+mZpd0rCuY/sMEKr9poU7IGbK7lJD+2Wt
	Xxh56wo+m1P2N1jXCqL6OLlWbS6w61MFna97ef9Dygt20qBdHWypcSsA=
X-Received: by 2002:a05:622a:cd:b0:50b:4051:2cab with SMTP id d75a77b69052e-50b40513540mr22009541cf.58.1774018174951;
        Fri, 20 Mar 2026 07:49:34 -0700 (PDT)
X-Received: by 2002:a05:622a:cd:b0:50b:4051:2cab with SMTP id d75a77b69052e-50b40513540mr22009001cf.58.1774018174465;
        Fri, 20 Mar 2026 07:49:34 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486ff109b95sm47906825e9.1.2026.03.20.07.49.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 07:49:33 -0700 (PDT)
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
Subject: [PATCH v6 07/13] ASoC: qcom: qdsp6: lpass-ports: add support for LPASS LPI MI2S dais
Date: Fri, 20 Mar 2026 14:49:12 +0000
Message-ID: <20260320144918.1685838-8-srinivas.kandagatla@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIwMDExOCBTYWx0ZWRfX9iT8WzAyPILj
 uUAH9jD0Z21L0ptlKNXejgwagO6vlR5txLb+F+47nKNpkvfIsffLb6ijebOVUlbwwsH17HC+Gfh
 jpWnsXOhyUmVX7QV87t7GswtLrehTiBQvu0d3zi8mteafhNfsG5uw7qcH17Ex3KzB9orEivJfZF
 3n04S9ufrPL7cY03FWfjLSxJaK3qi8dJhAbomR10L9vJkJ/4PFXE6RN0POqCBiwYkuVDjvYWlXe
 LDb5de/tDqEoJ0pDsYqe80YaV43inPLuXvD92txhMXyruaL3Zl21YDnpcXKj25yBpiZBXrKnee/
 kUV3nmLctksDPomwhXrUMscSYyTMzpwxQqkNPyJqL12pEIuueurF7oj8d9fAo+Ic7GEONloeuNp
 DA0ndA0P4Uu8gIUFCMwa2bRgXuhhA7kfitl4CpDxopilrudOwNoAnMF5QXg2C894usJkQfvsFYy
 whKvezbkRBcKx4NYbRg==
X-Authority-Analysis: v=2.4 cv=FOAWBuos c=1 sm=1 tr=0 ts=69bd5e7f cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=EUspDBNiAAAA:8
 a=nvRDalaNTaWZAukup-IA:9 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: ULRZLZ0zi6Qrk7tKThhz2UknnUUta4K1
X-Proofpoint-ORIG-GUID: ULRZLZ0zi6Qrk7tKThhz2UknnUUta4K1
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,vger.kernel.org,gmail.com,perex.cz,suse.com,kernel.org,packett.cool];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-278320-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.962];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E73F72DC30A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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


