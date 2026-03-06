Return-Path: <devicetree+bounces-272056-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6K4tE4DHqmnVWwEAu9opvQ
	(envelope-from <devicetree+bounces-272056-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 13:24:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EFCE220861
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 13:24:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5A045302CC36
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 12:23:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 352D73939BE;
	Fri,  6 Mar 2026 12:22:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZivXB+9s";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aoPKQgjw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19031391831
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 12:22:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772799737; cv=none; b=q3ghl5zTpHClOZkpsaBV33fnRIvCcvg33qQZrrxEghvBWRnF7wAoSG4FHCLiuYbVmIqDVb5dl1mHIDsFVVdJHJA6w+OVOk/Jd21AMIlJdvhsM2PKKqt0o/Em1SZrGgR8KQybEgfV30et/pasiNqPYwEF7UJ7/Lg4Icgtnun1qIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772799737; c=relaxed/simple;
	bh=1AGWMMo+ZQ2MpMqgndQclqL9hoOIddPn00jRigW1KUQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=E2wOkzN+5VUe7VorjW2vbB0X7tgw8d3TymMj0RTxvVDZgp33zcEafZgCLEcwU73lHkvfsEcO1HgqZPbJj9Bf4Lm7IPxkPo2r37yO6LX+S+uPGOV4xfHPcnANFLC3hhCXvVvnZQxDA9N0qpq8WRsns+Qy8eBhNEjjNPGau9IJv24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZivXB+9s; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aoPKQgjw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 626BbRAG3727616
	for <devicetree@vger.kernel.org>; Fri, 6 Mar 2026 12:22:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=2UA23pg+dGV
	Ambwz2ppXfyVdk6xlbVmq70z85L7JFXQ=; b=ZivXB+9sdb9jEnHianVoztRnL6C
	9BzXQPCnKFSF1TxmV+2qMxT42/p0f0DYYF9UyOkdlA4ekBbXM/RTRrFWc1cjq7B6
	NlPhpIgUf8b9E9d6lwriGDcB7K0H+lQWuCfteWePXNdFafxCgMGLaEMdAoDXtYLZ
	SPdaB2R3lyNy5lF4LMoNY5J1Trn709CxentL4JCpSSuFnZIeeyqjxRLAhsWlYkZ7
	Kl+274Jh2YvyIV7eBdVVgJmcb2Tum0ap/4xmd6ez5eXQXZrJCmKSfeXexisfzyGN
	eTPjBS/kxYMEsxxqc4+8JScgFWcdaeoz7RFhYsF6eRwxPjswfgdnXsIczKg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cqgp42r9f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 12:22:09 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-50341fddb89so613819971cf.3
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 04:22:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772799729; x=1773404529; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2UA23pg+dGVAmbwz2ppXfyVdk6xlbVmq70z85L7JFXQ=;
        b=aoPKQgjwYtsn+EF3bdo8MKnFIBNalPawAFrnnoWTiBfVMRnjTSn9ysA1zixd00aF/r
         DBOEp7a/yV1fyOLbFVsJTVhP05y1cHfVvsNY7V7Crb690uI67Xox/ZEJwGqh/RefulLp
         8bIMdzxEJQNSpJ1QMMVbae7P8lp+Lota5U0kx++bAylEcIcv7ijujylvfn3Sm6rpquLd
         TZEGn2Gom45fCmDaBbY6SsX+B/u/AgNsGehOkXWBWxyYzVBpY6wuVReVztpQVOhFE4M0
         tT6N3wTFd3hBOF+6Mu5T+I6LqPU2nc+Fef5ahoefF5XXExcFc1pmRTd/GahBHeMRPjB8
         IDaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772799729; x=1773404529;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2UA23pg+dGVAmbwz2ppXfyVdk6xlbVmq70z85L7JFXQ=;
        b=HvwMCsoGOKIuTuesnDMhJ9+x6ZtOgE08KW0hu5V7Ak90hkMgM0P63HHKbJSFiVyHT4
         X3Z76Kzi7KbeRJMiboD2e9XU4dOhj/IVKJNNa8J49C8Cz2jJ/I6C05ZKDKmTjl95VmkR
         lcptaCsMucfShcAmAtk/3cUC8gFCuT90Zc4ISFrlANrS/SYNLcCuqz/IGRcNkSOyvi/q
         M+1QekPzYXm7HYfADcsXec20FkPY5g+AAG7Er4oRVGlySySdbmbGkyrN6Yfb7V3AvSO7
         v8w7iyfVgS0XQ91E4H4f9A2aVgx7sN7dLmZqJU+OqIhawdc5i2R8JiaV8abcpM7fbXmr
         GYFg==
X-Forwarded-Encrypted: i=1; AJvYcCVZT8xJPCFraEA3ddfy3rEETr+rBnk1tSP8eYdNubuSYG/k7n6ZEsCXphogo+SPQgeJPUq1aMkhO0at@vger.kernel.org
X-Gm-Message-State: AOJu0YwqoNfAwM+LYvFwlnJ1L3ziFOM9H5qH88T5I6iQ8eF8hHeLKD+J
	JXietUqLJ5uobSYYaE1yjWrOvWd7g8PgRY+Eq75OnblGUu4uAMkW11jZZT6nR3TdQyLDeQGSnRZ
	MzQMN4vCK5gi56lX3137JdbeaxeMZGTq2NIWsw0NV8I1utdKhZQUyWDTwM8Wgstdt
X-Gm-Gg: ATEYQzwdENzcc30cwi6ov7EyjBRWv75Lz42hTfbCKkARnwZxKV5pAbE4M9/1VhFw1ZV
	CEr6ZewY9N3CmHxfDMSBLagXNe8tQNkZJ7mQgg9t+4EJ0f2TnwQob6XvOTGt4o62dx5/hNLK8Mu
	iz6M/RUY7QAG0akPW3VZsF3QwbluPbUoAqew0JVFF8M727Fq1AQ6yp7703jlgCQBA7KHG+pywFz
	IhLtfodGHj2PJ9TEuOqOTe7CoDoIPXqs/EcPxmUiDEE1O24gaf00YEBveaAYGPIGtL6sfkz0LKP
	hHztNuli2PVUtyxfVWBfNKY2z8jQtneMFU7C2lXKhQs3miQjBpOwsqeqOgqC2D0qWXJl6S9aoLd
	NvRlpL0FCp21XpkKPoQ1HXb6/zkeSuCd4d9dOFZ8l1/X6ZUV1RECYCjY=
X-Received: by 2002:a05:620a:471f:b0:8c6:a034:9220 with SMTP id af79cd13be357-8cd6d44a501mr233124185a.25.1772799729235;
        Fri, 06 Mar 2026 04:22:09 -0800 (PST)
X-Received: by 2002:a05:620a:471f:b0:8c6:a034:9220 with SMTP id af79cd13be357-8cd6d44a501mr233121585a.25.1772799728800;
        Fri, 06 Mar 2026 04:22:08 -0800 (PST)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4851fa87e56sm111972395e9.0.2026.03.06.04.22.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 04:22:08 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: mohammad.rafi.shaik@oss.qualcomm.com, linux-sound@vger.kernel.org,
        lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mailingradian@gmail.com,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v4 07/13] ASoC: qcom: qdsp6: lpass-ports: add support for LPASS LPI MI2S dais
Date: Fri,  6 Mar 2026 12:21:09 +0000
Message-ID: <20260306122115.509705-8-srinivas.kandagatla@oss.qualcomm.com>
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
X-Proofpoint-ORIG-GUID: 7SSJLjXFIeR4Ou_2XIkonGtWvH129Xd6
X-Authority-Analysis: v=2.4 cv=LegxKzfi c=1 sm=1 tr=0 ts=69aac6f1 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=EUspDBNiAAAA:8
 a=nvRDalaNTaWZAukup-IA:9 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA2MDExNyBTYWx0ZWRfX1n6wok41IV+G
 Dot9O68cHYUSsAFZYH9rNP3CA7K8BqSJ/zS7yuL6G3c0IDF92CvSOLySnU0Dv39JZnUR0vtifVw
 CCKNMrrprAbgNW5x69wtBhsDLjeoEISkOAQOZNd1oOOo32V5t+KtG7ciu7t1sSrrKsdKxBqFhqR
 MHFc50lo0zcFU0xCD1esaUQmBaf6ijKS1pvLQe180KN6KSFNqlmNe0mNhzkA8hnDIXNkXplG3Af
 9uryCIPPdcWPhqTFFwnaogHugNAmTHp6t7xJkx/Q3VonO0+sCB6j1c2Osli/V+Y5Akm1BB3FIA0
 2wEw+8/PUzf/POcawvyj2iUQD1bJfhZLLowdL1AdMIlXoUAtNWCw1T3Ux59z2bRuhP+vsvA5H92
 pDM5XmMbevn2ZuTL5QGf+e2M1pez6c9QlK7eLj0h2HP4klOY71Aj15oEMheIuqCFHfHvlhI8fzM
 M8SnuxCOsyl8EXuADJg==
X-Proofpoint-GUID: 7SSJLjXFIeR4Ou_2XIkonGtWvH129Xd6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-06_04,2026-03-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0
 priorityscore=1501 phishscore=0 bulkscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603060117
X-Rspamd-Queue-Id: 8EFCE220861
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,vger.kernel.org,gmail.com,perex.cz,suse.com,kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-272056-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
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


