Return-Path: <devicetree+bounces-267591-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KEZVHuWXnGluJgQAu9opvQ
	(envelope-from <devicetree+bounces-267591-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 19:09:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5363817B4A8
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 19:09:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 40B153028B75
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:09:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 205EF341AD8;
	Mon, 23 Feb 2026 18:08:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="L+hQOrXQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aLEI8HUL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF43233D6FF
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:08:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771870092; cv=none; b=eAGDg0ZFjw619qFut+tHpCaxfQN2bOcgni1ZiDx1GeDR+IUKB8l1JSwPw5S0xNkAepnfi3ksqXEQdfh0QWkDRc3SEOc19l+4ZvdHOcgicGowQwuvOCpkMatNw8VeBnPigvHS8dzIGGy7oIxxZ0xnakmywWxL90o8ez/wvIZ1Ks8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771870092; c=relaxed/simple;
	bh=mDW997OLPhj9/cZiWF71LObptofAy2aHxMQZYNVrW5o=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cQL4JOY0EdJK1r3qyOPlRNWpYTYsB5+L2RJzp1mn2KaGD+qcmlLVXiAea9RWPFrN3bJCMv8WHl1RFSQ7u4zA5b6UomqaszxLS7TkYVc7RD/QO9I/iRS3oSVq47JujxuzMqy1BMm+tSytgmXUwaNijWoZmkKFeXwkVnTePJG8M4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=L+hQOrXQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aLEI8HUL; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NI79ja544020
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:08:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=TSmNTbeOuD+
	fL/CAookHlWTYOHGnEPMNf+RyYw4NXHs=; b=L+hQOrXQbXJniDzO4nBsFweSd3B
	olomAKEZwZKEIJsNpBTLPBoQdBs2Keg6WBe61e8MQrxQF9UmpBLNy09U/4XFW4AW
	+rdl3ycpSjAFWVH+mp7n+hzfYg8EZXgqut3zu9Oi3f42ElrZwM2AyhVGEXeB+nbY
	K6+Y03yuiZ6yR0BLbFX+n0B4Gbs8SsR0ng3hng9G9FHj1BpipH0vWyrq6SfERTAS
	GkXaXon/QUjXsmz8vFXSdwgqShvOB5rOSWs5IKOvLK8UNmGL3QsCz8YjlgpfzvDt
	Lg9Qk5aSbJ7hoX3Mm49+jSjIsRq69GDvw+hPRDtTEU39uGgsPr4coJxFrSQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgn7t9ea2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:08:07 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb0595def4so5666515785a.0
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 10:08:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771870087; x=1772474887; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TSmNTbeOuD+fL/CAookHlWTYOHGnEPMNf+RyYw4NXHs=;
        b=aLEI8HULI/gaz5RKeC7fKv3alYEmJ8Jp4TOGhgkMUqlLKEiNVJgSyxN6unILUXQfNt
         1sBr2+vyZnEvP/4JdaWTHuEHIc+uxM5zbRYycBZjMeeQUVt5tYVepIpNzJcEEAbyi1bN
         xPz4Sa6kEqHDdPJ/tupj6vLhpAYe8fhkdISVTz27E9QTsgb2gmxS/yGSFgYtIKRWyrjq
         3sCUkNzTtzLT0Yic/z6mYMpOfEiKmfBZcX1gc4S1VCozagQ0TXtnnU43NClImZgJ1QMX
         g1j913MxWKso/ewHeopJZO34ySxJFNh+Fi3YQaO9n1RfWaH6hu7aTTKgAxw2eBv+166h
         2Qtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771870087; x=1772474887;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=TSmNTbeOuD+fL/CAookHlWTYOHGnEPMNf+RyYw4NXHs=;
        b=AkbsmMqLLeluj1sGg8C7Rrg8qjNeGt/grtk6m48tbe4OAb1HtsvPX9U05k+cLll4il
         xUyQkwzjxxhD6CZ1HRKyNCwS5Gmf5wX7Nytc6LJhyohfil7TGafYcJ/PZ4RDy3DFWW6D
         atn7v55EmbKB7o7roJDl7VemBahYTWv0WiX0jldsXTvJ4eKh+3xQ8p2fs8hs6XkuZmYS
         qKtBPnkK2ZOgwn89R3JE6jAHAs1lGtvrdR96dmwa2jFH5inIRucfdFQPWoWQB17BbrTm
         5WfvP15MctwRRyotd3ZRPjZ47Uyp/Brzm+5RAOanZcKWowqwLtkZH3l81HGEP8QOvycd
         M75g==
X-Forwarded-Encrypted: i=1; AJvYcCWsxsPrFqC2V1pBQEB0b7ddhGgmwEB1ZQ+tn9meYHcJedKv4kx5/vq35FDc/1DZAGshpgC2DwryHNLt@vger.kernel.org
X-Gm-Message-State: AOJu0YzaTkEJ+fBaFuKuu1Ly0lJxFYytXFHNfSEVkXbIfg0hEm8nl9tB
	2j6mVVpwWhiELGz+1BJYdtzYut6IPhcgSBtMotLS8shVm2rnIAv7m8QvlefRDWCZk7fDZ1sJxsg
	IcNQFcT8Lzr3p1KtVCvRmeQDx6klSDJyVHr22FQtqQ+N1l8b7jasKXlqTirGqUQRl
X-Gm-Gg: AZuq6aLobnJdcrgppHYQH8GP2YrudiCnob7Yjqdeny6bWwmk5WQCG5nxYveuLEz6GIe
	U+XyHDfU+8Y2s+9SR3NWD5As04PDyp4hnynWIQkkYkDi3gmJt6kaRVpFI50LTH0lhIJJQ6EFkZs
	jkP+LDcijzH0nC3YQ4V5NyPx9Cw9nSrrRzb6LTqzetrT6mCYnxNz3SnV5CtuvrkzfVArPvXqMGd
	TQWUwwZJdAz2qr0m3lSR/JwL6YorZ/oE7t6+T/r6OoloShOO5xcp2FyJY5uR2JrCrVWBVGZYGqf
	E3XXO5Bz/iAgKmjA/a5VPjDoa7NpWbqSG06H6VLt2VOZ5HDuo1AtBouNFUBI72WYQPmEHINSyjt
	SSDw836jSd4yGpSNrLxHLWNbdglyeXEIHkXcOmEnmRRRXcnLsDzb60f8=
X-Received: by 2002:a05:620a:7084:b0:8cb:5c90:dd6f with SMTP id af79cd13be357-8cb7bfe78d2mr1905587885a.32.1771870087149;
        Mon, 23 Feb 2026 10:08:07 -0800 (PST)
X-Received: by 2002:a05:620a:7084:b0:8cb:5c90:dd6f with SMTP id af79cd13be357-8cb7bfe78d2mr1905581185a.32.1771870086629;
        Mon, 23 Feb 2026 10:08:06 -0800 (PST)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d401aasm20458574f8f.23.2026.02.23.10.08.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 10:08:06 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: mohammad.rafi.shaik@oss.qualcomm.com, linux-sound@vger.kernel.org,
        lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, srini@kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v2 10/14] ASoC: qcom: q6dsp: Add Senary MI2S audio interface support
Date: Mon, 23 Feb 2026 18:07:36 +0000
Message-ID: <20260223180740.444311-11-srinivas.kandagatla@oss.qualcomm.com>
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
X-Authority-Analysis: v=2.4 cv=c5OmgB9l c=1 sm=1 tr=0 ts=699c9787 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=EUspDBNiAAAA:8
 a=aBFzMgE2VLA-TvnT3JMA:9 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: aUC5t1S__5s7vlGpREXI0RvRsf6DDXvf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDE1NiBTYWx0ZWRfXzFpWfurhclUd
 H7sgTfb18U4Az1y7RwXN60HVj71t3PfT/ZGZoM80wp1o9RYQlwivIQc3U79pfh5uimhDMV3lzUR
 cv7pynMLfX6CYtf0AvRN1EPZanrvU+VMcbXqsgpO0AhDomaqS3erjdTHFucOEIYB6EV4UMkfXsh
 Lu6GvSttoR/yMHhJKcKVMzJPqLb/4Yxo0Pcbbxmoo6vRfvqxr/T6bPXjF1QgLtuSbgbjnepTmTd
 1FPRtYnyCMQi7AbX+f8pLY67Sk/Y6SIQKaQ8u4rNaxXn6qteiqgN+XNrrELvScF6U4tvfN4CLHX
 ElZxUNQMrB2bnRQOciRBgdxKeqTDBIuf3cG6h8PmrHt4CuW6NVJ3Nvj4YBbqcCdQ3EEX2p9P/5c
 qItzuZXyiAWQpCRTypJbltFUAYhI8dFfuwLdwamvXjRaMhqKEAERHd9FFQwFFbWIUvJQYOwCxEH
 LfozXQZvjGkyCrYrlug==
X-Proofpoint-ORIG-GUID: aUC5t1S__5s7vlGpREXI0RvRsf6DDXvf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_04,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 clxscore=1015 bulkscore=0 spamscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230156
X-Rspamd-Server: lfdr
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
	FREEMAIL_CC(0.00)[oss.qualcomm.com,vger.kernel.org,gmail.com,perex.cz,suse.com,kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-267591-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5363817B4A8
X-Rspamd-Action: no action

From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>

Introduces support for the Senary MI2S audio interface in the Qualcomm
q6dsp. Add new AFE port IDs for Senary MI2S RX and TX and include the
necessary mappings in the port configuration  to allow audio routing
over the Senary MI2S interface.

Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 sound/soc/qcom/qdsp6/q6afe-dai.c         |  6 +++++
 sound/soc/qcom/qdsp6/q6afe.c             |  6 +++++
 sound/soc/qcom/qdsp6/q6dsp-lpass-ports.c | 29 ++++++++++++++++++++++++
 3 files changed, 41 insertions(+)

diff --git a/sound/soc/qcom/qdsp6/q6afe-dai.c b/sound/soc/qcom/qdsp6/q6afe-dai.c
index 0f47aadaabe1..a0d21034a626 100644
--- a/sound/soc/qcom/qdsp6/q6afe-dai.c
+++ b/sound/soc/qcom/qdsp6/q6afe-dai.c
@@ -409,6 +409,7 @@ static int q6afe_dai_prepare(struct snd_pcm_substream *substream,
 		q6afe_slim_port_prepare(dai_data->port[dai->id],
 					&dai_data->port_config[dai->id].slim);
 		break;
+	case SENARY_MI2S_RX ... SENARY_MI2S_TX:
 	case QUINARY_MI2S_RX ... QUINARY_MI2S_TX:
 	case PRIMARY_MI2S_RX ... QUATERNARY_MI2S_TX:
 		rc = q6afe_i2s_port_prepare(dai_data->port[dai->id],
@@ -540,6 +541,7 @@ static const struct snd_soc_dapm_route q6afe_dapm_routes[] = {
 	{"Tertiary MI2S Playback", NULL, "TERT_MI2S_RX"},
 	{"Quaternary MI2S Playback", NULL, "QUAT_MI2S_RX"},
 	{"Quinary MI2S Playback", NULL, "QUIN_MI2S_RX"},
+	{"Senary MI2S Playback", NULL, "SEN_MI2S_RX"},
 
 	{"Primary TDM0 Playback", NULL, "PRIMARY_TDM_RX_0"},
 	{"Primary TDM1 Playback", NULL, "PRIMARY_TDM_RX_1"},
@@ -636,6 +638,7 @@ static const struct snd_soc_dapm_route q6afe_dapm_routes[] = {
 	{"SEC_MI2S_TX", NULL, "Secondary MI2S Capture"},
 	{"QUAT_MI2S_TX", NULL, "Quaternary MI2S Capture"},
 	{"QUIN_MI2S_TX", NULL, "Quinary MI2S Capture"},
+	{"SEN_MI2S_TX", NULL, "Senary MI2S Capture"},
 
 	{"WSA_CODEC_DMA_RX_0 Playback", NULL, "WSA_CODEC_DMA_RX_0"},
 	{"WSA_CODEC_DMA_TX_0", NULL, "WSA_CODEC_DMA_TX_0 Capture"},
@@ -770,6 +773,8 @@ static const struct snd_soc_dapm_widget q6afe_dai_widgets[] = {
 	SND_SOC_DAPM_AIF_OUT("SLIMBUS_4_TX", NULL, 0, SND_SOC_NOPM, 0, 0),
 	SND_SOC_DAPM_AIF_OUT("SLIMBUS_5_TX", NULL, 0, SND_SOC_NOPM, 0, 0),
 	SND_SOC_DAPM_AIF_OUT("SLIMBUS_6_TX", NULL, 0, SND_SOC_NOPM, 0, 0),
+	SND_SOC_DAPM_AIF_IN("SEN_MI2S_RX", NULL, 0, SND_SOC_NOPM, 0, 0),
+	SND_SOC_DAPM_AIF_OUT("SEN_MI2S_TX", NULL, 0, SND_SOC_NOPM, 0, 0),
 	SND_SOC_DAPM_AIF_IN("QUIN_MI2S_RX", NULL,
 						0, SND_SOC_NOPM, 0, 0),
 	SND_SOC_DAPM_AIF_OUT("QUIN_MI2S_TX", NULL,
@@ -1037,6 +1042,7 @@ static void of_q6afe_parse_dai_data(struct device *dev,
 
 		switch (id) {
 		/* MI2S specific properties */
+		case SENARY_MI2S_RX ... SENARY_MI2S_TX:
 		case QUINARY_MI2S_RX ... QUINARY_MI2S_TX:
 		case PRIMARY_MI2S_RX ... QUATERNARY_MI2S_TX:
 			priv = &data->priv[id];
diff --git a/sound/soc/qcom/qdsp6/q6afe.c b/sound/soc/qcom/qdsp6/q6afe.c
index 76e14fc1b2b5..037a281d6f61 100644
--- a/sound/soc/qcom/qdsp6/q6afe.c
+++ b/sound/soc/qcom/qdsp6/q6afe.c
@@ -130,6 +130,8 @@
 #define AFE_PORT_ID_QUATERNARY_MI2S_TX      0x1007
 #define AFE_PORT_ID_QUINARY_MI2S_RX	    0x1016
 #define AFE_PORT_ID_QUINARY_MI2S_TX	    0x1017
+#define AFE_PORT_ID_SENARY_MI2S_RX          0x1018
+#define AFE_PORT_ID_SENARY_MI2S_TX          0x1019
 
 /* Start of the range of port IDs for TDM devices. */
 #define AFE_PORT_ID_TDM_PORT_RANGE_START	0x9000
@@ -718,6 +720,10 @@ static struct afe_port_map port_maps[AFE_PORT_MAX] = {
 				QUINARY_MI2S_RX, 1, 1},
 	[QUINARY_MI2S_TX] =   { AFE_PORT_ID_QUINARY_MI2S_TX,
 				QUINARY_MI2S_TX, 0, 1},
+	[SENARY_MI2S_RX]  =  { AFE_PORT_ID_SENARY_MI2S_RX,
+				SENARY_MI2S_RX, 1, 1},
+	[SENARY_MI2S_TX] =   { AFE_PORT_ID_SENARY_MI2S_TX,
+				SENARY_MI2S_TX, 0, 1},
 	[PRIMARY_TDM_RX_0] =  { AFE_PORT_ID_PRIMARY_TDM_RX,
 				PRIMARY_TDM_RX_0, 1, 1},
 	[PRIMARY_TDM_TX_0] =  { AFE_PORT_ID_PRIMARY_TDM_TX,
diff --git a/sound/soc/qcom/qdsp6/q6dsp-lpass-ports.c b/sound/soc/qcom/qdsp6/q6dsp-lpass-ports.c
index d31388ed3ccf..e5cd82f77b55 100644
--- a/sound/soc/qcom/qdsp6/q6dsp-lpass-ports.c
+++ b/sound/soc/qcom/qdsp6/q6dsp-lpass-ports.c
@@ -519,6 +519,34 @@ static struct snd_soc_dai_driver q6dsp_audio_fe_dais[] = {
 		},
 		.id = QUINARY_MI2S_TX,
 		.name = "QUIN_MI2S_TX",
+	}, {
+		.playback = {
+			.stream_name = "Senary MI2S Playback",
+			.rates = SNDRV_PCM_RATE_8000_192000,
+			.formats = SNDRV_PCM_FMTBIT_S16_LE |
+				   SNDRV_PCM_FMTBIT_S24_LE |
+				   SNDRV_PCM_FMTBIT_S32_LE,
+			.channels_min = 1,
+			.channels_max = 8,
+			.rate_min =     8000,
+			.rate_max =     192000,
+		},
+		.id = SENARY_MI2S_RX,
+		.name = "SEN_MI2S_RX",
+	}, {
+		.capture = {
+			.stream_name = "Senary MI2S Capture",
+			.rates = SNDRV_PCM_RATE_8000_192000,
+			.formats = SNDRV_PCM_FMTBIT_S16_LE |
+				   SNDRV_PCM_FMTBIT_S24_LE |
+				   SNDRV_PCM_FMTBIT_S32_LE,
+			.channels_min = 1,
+			.channels_max = 8,
+			.rate_min =     8000,
+			.rate_max =     192000,
+		},
+		.id = SENARY_MI2S_TX,
+		.name = "SEN_MI2S_TX",
 	},
 	Q6AFE_MI2S_RX_DAI("LPI RX0", LPI_MI2S_RX_0),
 	Q6AFE_MI2S_RX_DAI("LPI RX1", LPI_MI2S_RX_1),
@@ -680,6 +708,7 @@ struct snd_soc_dai_driver *q6dsp_audio_ports_set_config(struct device *dev,
 		case SLIMBUS_0_RX ... SLIMBUS_6_TX:
 			q6dsp_audio_fe_dais[i].ops = cfg->q6slim_ops;
 			break;
+		case SENARY_MI2S_RX ... SENARY_MI2S_TX:
 		case QUINARY_MI2S_RX ... QUINARY_MI2S_TX:
 		case PRIMARY_MI2S_RX ... QUATERNARY_MI2S_TX:
 		case LPI_MI2S_RX_0 ... LPI_MI2S_TX_4:
-- 
2.47.3


