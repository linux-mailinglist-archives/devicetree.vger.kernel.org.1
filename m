Return-Path: <devicetree+bounces-263106-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YBP8F/PQhGk45QMAu9opvQ
	(envelope-from <devicetree+bounces-263106-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 18:18:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA7EF5CE0
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 18:18:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6BAF03092E36
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 17:14:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C77D643D501;
	Thu,  5 Feb 2026 17:14:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Zsm+aa+l";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AnVMsGyX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78BF743D4F8
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 17:14:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770311664; cv=none; b=OYpaQJrpnA0WbFbsp33IX1bA8vgpyPgfAs4zZwK7tOmB0yZdoJdq5k5+mPF5CPn7q04wNnjvsMWuSSZLtX88qu/D7jz0ml5txMw6/R6xO33ZjT3Eex7aLLN1JALoYNbRcwYlINepJG/Drhov+nkAjBUUEqJvaoJCHhFws98Qs10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770311664; c=relaxed/simple;
	bh=r5N8Z8hPz59oN0RNuGapAQnXLzTPhHdzsNfJMM8N9DQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sZ8c00pQFKyO/d2QMjOvfJHRWinEe1y3oktJ+PvaPWvjdOWtJf2LwnmfD7m8H90MS69mtB+QI8+lF6babiiwNBRA60f5cmb4yJO4SmUcqhPGAm2RdpiDiARpILeVmW0vQt29yeTs/bN9Pty3nA8+x8fvYTazqY5Hh/sCya6hlkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Zsm+aa+l; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AnVMsGyX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 615EOkGj4129505
	for <devicetree@vger.kernel.org>; Thu, 5 Feb 2026 17:14:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=wuA8VwYWX47
	mki1E5cO8ixPzJqRo9fgaXlZKqhxVW2w=; b=Zsm+aa+lqpY14jxn+95qMxfd2uk
	FeLzesTaQhhGrD3cOPU0I1WtzuJz2R5SDap2mpV558ESToe8jTe0KIKSWj0Z9QVn
	oAZgxRFkyGluZLAu62IO49naW+3sXSqu47HKp0a5ZTlRS7ksKdRkVz9tt+pFLNUP
	3tIUX9tk6KzBixQp3zf6BB8k9zLivc1EtQWwZm/XZvw6CrTB1aKirJhlRODO0EED
	ONMAIccduZyxnAvcyMzDBccP5kBYfcRKnmMbFcGP8/7NJwJ1+b/dQ9HDXy2KpOny
	TsuJ+fBcyWq3s5EGMlsV8WWFIvoXAbNDT4WyV7DAYJUTCLCSPLXTGOzGpeA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c4vxhrk17-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 17:14:23 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c6ae763d03so133545285a.3
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 09:14:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770311663; x=1770916463; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wuA8VwYWX47mki1E5cO8ixPzJqRo9fgaXlZKqhxVW2w=;
        b=AnVMsGyXJKdeVvygcGyrLjYudnYhpbAkQucQ16Sni6pVMPpMfs0Uxb47cyzqRuulpO
         aGiwL9dNNem/8SwrRPk/oWJ5FraJaf6wEoxuh3uw2sdphebhp62d09aMBcZPQxyy3zfP
         GgTWVN6uGZkgcv8d7dI8dGxj0hcZOjkrNrKYX8WhmILyuNyBdqdBJfzGKWixcWiAXaHG
         r0uLSKS/rG/pe5zm3i8/N+g58Zy/ZQ4AihzWz3Su771c7OHe6qNj1enTLJ2DtIG6QGfD
         QLTTN3SuGHrDZuOhpL0Gnz5gfBC2TsMIF3J7PNqdgucnEvlsrIvg8VssoVSuAJLN/PX/
         uAYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770311663; x=1770916463;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wuA8VwYWX47mki1E5cO8ixPzJqRo9fgaXlZKqhxVW2w=;
        b=XLx1WUhpmNOeAZdyTtmR03HjmP46FhPV3rbr1s89rsK/czt3qEkM41W4jlvi7Qlx1C
         LI6looiSsnEqyjZJ3d6EjBCvbRNjCCiwKDLCDS03i3mP5ObZ4gJUkOSSS2ZrdD9jWbNT
         VhKMeY6Y4qiXuPENyjwXpKViaPyf1aeVduC/9oZRoQww1EJA7mmzdoHnSwpMNy9EClxm
         YSamdnN9SfJW16jXOfYITgB/moiLDpiCnjJDJcwbTtHw1grti+GoagpRqt1c4EZ15YRD
         HtaTGRYg12XpLVJafKm4K5et09dbmYaGIZ8eOaQAP+sZNnfm18web73juJsCZr1/jYzF
         9H3w==
X-Forwarded-Encrypted: i=1; AJvYcCWrvlNjxaJ/ZzrcjzoIydC+WMXYB0Ddt3WsH85LbOO9UMI3KiQxm/hkGO3NAMTYBFKgMesrOKxrjHdg@vger.kernel.org
X-Gm-Message-State: AOJu0YxfvOgo6S2UqNJq5fq3eWyIjw//pyB/jBodEuwMaVAHM+M2vdBx
	wGjcCIlp77s/NQy4WVaSBEsgM45ksIoPXC0k6kvhCPcg4T73IFt9gjJ6WwHFwKE81oRx6uSetJc
	PpbwOqswL5Gbl58T7/r7XXbWbXfvTGBDCdYRa7IWDVwqrl3+WZRT0DfXLd3rDLls6
X-Gm-Gg: AZuq6aJVSLxcGd3vAg5FcQz2/F8t7DWTU9X2iOvpLXf4uXf7JkyoouJn/1xKY/2UtCn
	2acvAYHlwsvumLcolEy1/FNTFc8tKGc6eS7r1HKVHtGQHwsUApXJ4r2BfOuCpMbYv+vp05nCOAt
	Zpn0tVvXz31SQdnfBEqPc4feAbJQmGlBiwmXP1fAN5vOuLP7831UbshqaWMyW4aOZ1I7jE7Gr9b
	MQrHOZUe+4NX/NN/VZu70pELLWv9uaBJG1hzunzVxLA54JWXeXrn6xS7uxsNywENOx3bAm7Ggnt
	2fP/6oRZmAQlyMtZgvJ1aYihqf2+DpReUh0es8cpGDMOt4eqaDPY1iDVhzVJ/260QQnPoe5+hTw
	qolLEvMjtjEwPEEinLhK7w+6hQaovMWIRQsecjG+tvQQ=
X-Received: by 2002:a05:620a:4892:b0:8ca:105a:298e with SMTP id af79cd13be357-8ca2f9d98cfmr913458685a.63.1770311662513;
        Thu, 05 Feb 2026 09:14:22 -0800 (PST)
X-Received: by 2002:a05:620a:4892:b0:8ca:105a:298e with SMTP id af79cd13be357-8ca2f9d98cfmr913451285a.63.1770311661978;
        Thu, 05 Feb 2026 09:14:21 -0800 (PST)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43618057f87sm14802849f8f.21.2026.02.05.09.14.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 09:14:21 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org
Cc: lgirdwood@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
        cnor+dt@kernel.org, srini@kernel.org, perex@perex.cz, tiwai@suse.com,
        alexey.klimov@linaro.org, mohammad.rafi.shaik@oss.qualcomm.com,
        quic_wcheng@quicinc.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH 05/10] ASoC: qcom: q6dsp: add support for LPASS LPI MI2S dais
Date: Thu,  5 Feb 2026 12:14:06 -0500
Message-ID: <20260205171411.34908-6-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260205171411.34908-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20260205171411.34908-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=GLoF0+NK c=1 sm=1 tr=0 ts=6984cfef cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=NNISMICuKrt3OvTWregA:9 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: C8VUjpMZqY8mN6wfQWeBCSYiijgYDTpt
X-Proofpoint-ORIG-GUID: C8VUjpMZqY8mN6wfQWeBCSYiijgYDTpt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA1MDEzMCBTYWx0ZWRfX6BIvs7oZsSoh
 kxehWcaZ70mnEeTM3JJkYJ2uQeZ+nAYoqeaHovCLh4R8poGbTbeOQ+Wg9gcF9/XtziZi0megGoW
 NWgMFnCwAn1gipyktotu75E0Bwpq2+9a4qCpN3+CfmwMAGlJpGLHlghQSmkI8hN4Rz1bVOKxu0N
 fz/8i+OO71RWZ6kTibOOxYTCp0lJqRwBj2BJsfUnyUm0V+fltoCFY5O/euNJ45uPUm43BxBNb3M
 Wq01VGIdZgfjTt3xo49wea8Xr3xhYGKr1+OCsN4v8xbw+SqhHM7AYDPVUeJ1wU3Xdr4Oue9fjjH
 fr2Aegt/EvHb2mxDaOKzMsmuiE0sB/cw/hLFm202A8aAtxAfvLJzurz2+NaZn3mMltnffBwxrBo
 rDkyNzTsV5W8JHbf1g7hK+QN1ARnLP1RgMnmbp4Wgt4s6DgRiuUWWsUxxXrbcsponXUcIB/N3OR
 5Rv6avM/hiEr+8X53RA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-05_04,2026-02-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 priorityscore=1501 lowpriorityscore=0 bulkscore=0
 malwarescore=0 clxscore=1015 impostorscore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602050130
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,perex.cz,suse.com,linaro.org,oss.qualcomm.com,quicinc.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-263106-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BAA7EF5CE0
X-Rspamd-Action: no action

Add new dai ids and dai driver entries ior LPASS LPI MI2S lines

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 .../sound/qcom,q6dsp-lpass-ports.h            | 12 ++++-
 sound/soc/qcom/qdsp6/q6dsp-lpass-ports.c      | 47 +++++++++++++++++++
 2 files changed, 58 insertions(+), 1 deletion(-)

diff --git a/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h b/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
index 609bc278f726..0febc641f351 100644
--- a/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
+++ b/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
@@ -140,7 +140,17 @@
 #define DISPLAY_PORT_RX_6	134
 #define DISPLAY_PORT_RX_7	135
 #define USB_RX			136
-#define LPASS_MAX_PORT		(USB_RX + 1)
+#define	LPI_MI2S_RX_0		137
+#define	LPI_MI2S_TX_0		138
+#define	LPI_MI2S_RX_1		139
+#define	LPI_MI2S_TX_1		140
+#define	LPI_MI2S_RX_2		141
+#define	LPI_MI2S_TX_2		142
+#define	LPI_MI2S_RX_3		143
+#define	LPI_MI2S_TX_3		144
+#define	LPI_MI2S_RX_4		145
+#define	LPI_MI2S_TX_4		146
+#define	LPASS_MAX_PORT		(LPI_MI2S_TX_4 + 1)
 
 #define LPASS_CLK_ID_PRI_MI2S_IBIT	1
 #define LPASS_CLK_ID_PRI_MI2S_EBIT	2
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


