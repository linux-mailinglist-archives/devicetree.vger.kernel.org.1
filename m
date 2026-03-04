Return-Path: <devicetree+bounces-271038-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CJw7AnsvqGlPpQAAu9opvQ
	(envelope-from <devicetree+bounces-271038-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 14:11:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 732F92001F8
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 14:11:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DB79830D800C
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 13:08:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0750D31355D;
	Wed,  4 Mar 2026 13:07:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="STGiRzOy";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CVnkTMHd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 988B933B6E0
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 13:07:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772629650; cv=none; b=g0Oxi52p9muXuJJ3wZKbRGMHa2MDKtbh6VNU2aIghwj3KbLYz5L8uITZs8X1uwYysj4OY9EsRwWXxs4D/ctp/INjy2JfpQzxDJjv4ICFOFLWEvDAhiR6pYM49YiGm9lMEnTw8+NQxcnEFG+ygTcwo5nZI3atUxEab3GLbWwKtQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772629650; c=relaxed/simple;
	bh=1AGWMMo+ZQ2MpMqgndQclqL9hoOIddPn00jRigW1KUQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=eAcrh1OtdsLxDqo3QcWJ9vZic2Q5zStCzEzAHqJ9bsp3obUwrKEFq62hrb09oLGbNjHQCcIBKsSkqUQzeam8Krzob3Ueip5NJ5Qho5hqE5stXcrsIXyGHRJYW7Fx7g59Xf/D5pgbR8o/YkhXP/8WptDBCwGst5fHcfxtAbs5hRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=STGiRzOy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CVnkTMHd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6249KuDx1456217
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 13:07:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=2UA23pg+dGV
	Ambwz2ppXfyVdk6xlbVmq70z85L7JFXQ=; b=STGiRzOyvXPiZkgPc8Msq9QtVaX
	HIDfmhqAJcNVwgb+hLc7IwLxX9pVGHVQMQUQGeSeOORBMkR6SjaoRPwnOPm2p5NQ
	Fpv88bBLCiJNbDWLRVpu5FY7ig67K/41Br31UPqI9HIuCvLpGAK+0UwIiBqKfs+m
	CEHIUbsWzDfP+9FvONbBcAX/LBj2oaizmgC6nellVQzjf6SpbpPn6GdKAW2vX09+
	IzTnSl7onFSIDGtlsktNgLjk2I6vWLmKM2zJ0ZQvP1ecoTJier6+zc+W6BCN+bZh
	V6n3kHFV+ZgLq9vFQHZynt762pFKH/JYaGBoHXh06aM0Xdbn4PIHa2KFTew==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpj180n3e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 13:07:26 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c70ab7f67fso71019385a.3
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 05:07:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772629646; x=1773234446; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2UA23pg+dGVAmbwz2ppXfyVdk6xlbVmq70z85L7JFXQ=;
        b=CVnkTMHdDV4D3suRmBRlsxEy+qgDmnSESrLm3oxXJZCcQNvQ4ZAwBHswjKATRfPnZR
         lGPsYt6xIG/AWxokUgWRAzQnzHhY46xkGXxBGXctHlaelUZu1Rk3ppimcAkY+W0eP8XR
         diN9eKTJTBsmoE+54PmI/YF5OfEAn0yClCvmtVjNIO3DFJIry6Wy9eHtAiRaONlZLTpH
         XBXrihCXBuo+P9HZxRjbuFTCg9UmRZwjq5ipTbuzcX0+kde3pGCMUOWDx96Z+WCDnzhO
         uY3kFGIFTY7coD1x8U3K578LBO6+2gZPe5QUBMnCM+jJssm9sUmKcJqz0vAow6tv4SHw
         TrtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772629646; x=1773234446;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2UA23pg+dGVAmbwz2ppXfyVdk6xlbVmq70z85L7JFXQ=;
        b=g1Xi7Bs/VIAGqe0E1AcWOwIBa6yKaZlSz0w40/1VnitHLZwjlt65FTWQ2Ui1a1bXba
         46lyXAaJOpJdHDPYtuz7BQ33YDuVDwSvVCPfZhzliZdOu5cZPqI9jpjenG9UKxGDXTZo
         gGVOHQ/4UIKam6jI+4KIPDtVIGRLu3PaMdKXG8Nk5AnqIbsIZp/YjrKo6z/dh23kMlwt
         B6Mkb8jFjRJuKBlWEQGc1KA+6vgQ5m0NWouuM6WIkgxd60xw84LYuz8s5G/68rsTXx8d
         vj9TDxhmxzJnEVOGxew6HPLflrCpm+/yVcmX7nbjufrIa3b5kZMcQvFSiEH2ej2lcKsF
         p6gw==
X-Forwarded-Encrypted: i=1; AJvYcCWI4EibR5WqsqMmceQp7NWlGoXXODYOu67At9peJCSFlcUTGuBfGxL4fqc0X8ir+Zs4S7Z6WEZugK6Y@vger.kernel.org
X-Gm-Message-State: AOJu0YyBrwCYSZlayDPK4vW6LIrpSNIfVJaAJMUjmwnm9JskoCOjO/sd
	hZpM2rpoVR1MYx58lezJqxJ57NFdcOsIOFy6NPlY5O3Ge6l3JUVayTg7kxGKGu8zGupX3KC+5gb
	PJHbaGj6taPd1TLTKJ650WEu/taYxJ31iM7muNNmryXjj0i4QWue6zUg0vPwv3vA9
X-Gm-Gg: ATEYQzzL6+XK6N7yJ6ORVKhuRjRjY/TE34b/tGrdSRueRVIixVjfWr7bgflGA1tzugz
	r1mEqMidrWov6RZ8YTcu3+5U4rraLBjT53rdQR5wEhaqQiiPmwRJiF4foK4UgMILUqVo9Pz0EIT
	fpdW5jLdAjj74Sc+zSaEM/qNsyu6KWtb5VeXkux08Adwhdehbu7B2hc7qeSME4bHep7/9x6ekVn
	mXs4aq8Q11t87HqPpSIX9eJtstGFlgiIvWj8aU9Q/vN90lEqdfc7js1nsET6L5v2JD268ugt2Ej
	ZbFBEWOqm4WX+lZFGtrUFZflP2lWwAxEjMLd0rIcq4cN3fysbeU/vS/yBK0TGg04GjpPqrATHkG
	2srEKwEmDm+XPaA4uFeY4BCTSrSp/xeDZLzmStQDwcAxZLd7iROuQZWw=
X-Received: by 2002:a05:620a:460e:b0:8c6:b4c9:aa86 with SMTP id af79cd13be357-8cd5af1b3a5mr218504885a.36.1772629645974;
        Wed, 04 Mar 2026 05:07:25 -0800 (PST)
X-Received: by 2002:a05:620a:460e:b0:8c6:b4c9:aa86 with SMTP id af79cd13be357-8cd5af1b3a5mr218500685a.36.1772629645556;
        Wed, 04 Mar 2026 05:07:25 -0800 (PST)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485188122a6sm49969745e9.12.2026.03.04.05.07.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 05:07:24 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: mohammad.rafi.shaik@oss.qualcomm.com, linux-sound@vger.kernel.org,
        lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, srini@kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v3 07/14] ASoC: qcom: qdsp6: lpass-ports: add support for LPASS LPI MI2S dais
Date: Wed,  4 Mar 2026 13:07:05 +0000
Message-ID: <20260304130712.222246-8-srinivas.kandagatla@oss.qualcomm.com>
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
X-Proofpoint-GUID: leCgr5An04EimPZI4qWbi0B66LuaD3rW
X-Proofpoint-ORIG-GUID: leCgr5An04EimPZI4qWbi0B66LuaD3rW
X-Authority-Analysis: v=2.4 cv=Ed7FgfmC c=1 sm=1 tr=0 ts=69a82e8e cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=nvRDalaNTaWZAukup-IA:9 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDEwNSBTYWx0ZWRfX2IaZaYI8b3Rc
 VGPZlTUqYWwCg/2Gla4AA6fbN5g2AjxnK4ZZSXZfz8hEWoDsJo5EU91zdBViQkl85Q2+WiUGaVX
 4RlRNfZAgPp5niRAdQj8mliKlZYx08Hml5s2XUNrrn/EV7sqNRJrAmj/+TJc2T86aXevae9ljNx
 9FqMIaK+S31Zaqb3wjxC4d8hfunZXy/UDwfm/7Cp4kWz0x53EGaaE6TTUsYOepcpmzmF6sldmQs
 +kR0I89+IKAAfnw/4hYBwgWcb0sdbsSzegIS31B3uSKqm1/9Lv34uNne6qKg+AGgkEpMuML8RIh
 0/pA1eJAkceubnQCkYNji7hY5wxJIJ1uMN9hKeQo5JoWx1RvhikDmLkCZDikWpwvMbWNjTyys8z
 unWnzAyPN9utj574R1S2hm/Yeqy/bkZZqC4IBpBAEBZJZYoSrBMmT3jKhg9xKuZ7zJSpvTC+40b
 9uGWyXGOpWkcCAL8IFw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_06,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 spamscore=0 adultscore=0 lowpriorityscore=0
 clxscore=1015 malwarescore=0 impostorscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040105
X-Rspamd-Queue-Id: 732F92001F8
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
	TAGGED_FROM(0.00)[bounces-271038-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
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


