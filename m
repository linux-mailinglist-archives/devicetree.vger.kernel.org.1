Return-Path: <devicetree+bounces-272055-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oM/eKVPHqmkyXAEAu9opvQ
	(envelope-from <devicetree+bounces-272055-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 13:23:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 53320220825
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 13:23:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6AC4C3074147
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 12:22:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18D66392C32;
	Fri,  6 Mar 2026 12:22:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VYETanTp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OHrddHAo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6303909A0
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 12:22:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772799734; cv=none; b=asFsTcFxnHaFoJ4uEPmVDcbPK7TqKLaCxoAXKs/ZMuU0dAm/Isb9f6X0qOBAlOt4bwnpr0v4SrFTwhRtOM6uE7MjvTm5OK+49y29Wasb6ZoYGNKaFEJswKcemI5h1/E2GS3fD+EMgGhKRNyis4qrJ/rRor4ZvA5Fu+MeKRVfigk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772799734; c=relaxed/simple;
	bh=AhoflfyPSEypIadA7rENraHqNcIi0OFcEnzEL9v8we8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KoPfNYCQYign/jcVNTWinN4CYYwWBe4U6uGPZWOPEEZ3zHOkV82voGrhQEeUDD22pxrNd2WFDout8ulPks7Ul11wKIejLsshuQc4GUJypo4esffC0/bff/B0F4vMUp5R1kiQRY0/YWXVTrS9VANKONxWJva/YbS7VqEKMxjS//c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VYETanTp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OHrddHAo; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 626BbGsx4150988
	for <devicetree@vger.kernel.org>; Fri, 6 Mar 2026 12:22:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=PS19lL6QwLa
	ikI1GyQO9iydtpc90HsQ6A4ACO7BE4wA=; b=VYETanTpP9TKbfw8VB9Q1wzGu2f
	81uLF3VdflICc8WVRkd1rvVwhCU0iaAZSYRe+unDyhiY3uBXgaTw5T5a6xGtJu5o
	v0Cosrptta2XIYPalxG6L631WHKhnC+6i5f3jf4M/HFrTK6eQyI3ORYhStO101MW
	q1rdH4DQTZumHS1d80YmIz9musaIzLNRee6uOzHdX1ntq6fwzriEOD+IKTNZsMEZ
	oqzgAHxwSA/efwk8DSGikwhsP85ee3oEznxbDFq+IJCdGc4X4ZcY4PuWgz3vKIyw
	lFoAhp4rZSZRfBmQiQln8Iy/59MOPQ2hTgohXfXGBXtBDfuYKLiLSHJAksA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cqf25u4eg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 12:22:07 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb390a0c4eso5695534185a.1
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 04:22:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772799726; x=1773404526; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PS19lL6QwLaikI1GyQO9iydtpc90HsQ6A4ACO7BE4wA=;
        b=OHrddHAo83B86rMGxrGrGa2eUuvzQmYMnxpA361W5V7qoTwTz2v/nJIov1Xc3vnnJ4
         hAQvodmRq610hxRuQR7b1SiuW3qNLBtvMt2xypB0DIoTYFhqWt70wYma9hE0Xt8/HKKH
         2vFu72LndCOXlUPTO6XeDMfEsPpR4MPbiy/e1t7oX8tFwn3vm59yZqDm9sl4ZdV7bkSj
         lw8hVar/XoDITX9upja7IWfWFiBAKyQsOW/87JycuLn/Ku5SvIh2mXq6P50CGRPUbkQB
         90DJ+tH+Reyo8IARq93H8yoSAmG/rTmoHnHZiKb9THd/7nssiaVuRuEg04sZa4T1xwYn
         s5Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772799726; x=1773404526;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PS19lL6QwLaikI1GyQO9iydtpc90HsQ6A4ACO7BE4wA=;
        b=eLcpOJpcI2r+U5tswt01VvxS2HNTRmZ2R8FATFiXXO/Wdq7eXzpbA1kzuu8a7Q+FY8
         5aKzYZekdCEpRAP+xTxhNEnIITSskaJ2rmhcNcjGcNB/obw37NVDu3UCuhz8/qvkVpA3
         LGol38troICZOFIA1dHdcpo8JAIz8FS+LeKOg/fMf9qJwiGgENdhTtYSrdwZgiO0vtB2
         J20G5AXwVh0oKRfEdPZDVAAK+RVGaFUEigdVvrLbzi5iAlKL6Ayi+ud6X0HwaBKeM3Pq
         3Cn/52jxIFgXaUDfrh8jT654LmHXUqKEFMHf3bcJx8g1/a+3xxy/I+CqXRZKAtSXFWkq
         bgcA==
X-Forwarded-Encrypted: i=1; AJvYcCV37p5wFylAb3cqmf3ItVASvkzUdWFf/JTj3cgS8bxCF5VA252lCHPecvuJJ4yt2QJMv5Wdk/w1zavd@vger.kernel.org
X-Gm-Message-State: AOJu0YxutgMn0HIj5ZPJl487VrNnqs2yMnKNVYxXU1t2V3TZ2Fa4Zs88
	qAB0Ojr8W+MOx6jbfskWaXXARv/LX4Q6bUE1V0sEO2pmZvVq8bNF4E1w56izluyhGGND25kURAo
	HclrPuGVCJ4Wu3A4us5DFXiQKgdSMyURqte9enTGXV5IdzQHTf8KgEtZvaqnbqTEQ
X-Gm-Gg: ATEYQzwcOyqjEYqL1LB8TDs4JqwUdPVepvL9dARbDWWnHAIdxiqCg/bG217/prolI5F
	q/TiTnOLYa79WsESWBw6GPb38CbFPJwWOHvuzULHWpTo0zCyg3oFKNWfrpKKit2dpkS5E9a0nuP
	wsHzDY0VortEzxyWnVFaodj2O6049Z7D0uXEi92+IrA+Br1KvZY4w0nzy/xhbb8No2fut8RofDs
	tOu77ksa6D9ZDcg8LylkvwEiwIxGw0TTrRyMIqZInc+5CkvB0Dl40hTEnS4yJdtQ9a6djGXOnlr
	mvYHQSOBNXI54xj9IoTbSnBTUeLvDB8e0flHNbhckmFwAdvPIU1Snm4nxGayBI6ywjQpB97F4u8
	YYnPKX5+SIJ/iTcc+rMYuq53gCiFcPyR+iSMbjbdFFtm7W97jdvUWrjw=
X-Received: by 2002:a05:620a:d8a:b0:8c6:b247:4c with SMTP id af79cd13be357-8cd6d3ecdeemr229073785a.2.1772799726350;
        Fri, 06 Mar 2026 04:22:06 -0800 (PST)
X-Received: by 2002:a05:620a:d8a:b0:8c6:b247:4c with SMTP id af79cd13be357-8cd6d3ecdeemr229069585a.2.1772799725934;
        Fri, 06 Mar 2026 04:22:05 -0800 (PST)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4851fa87e56sm111972395e9.0.2026.03.06.04.22.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 04:22:05 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: mohammad.rafi.shaik@oss.qualcomm.com, linux-sound@vger.kernel.org,
        lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mailingradian@gmail.com,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        Stable@vger.kernel.org
Subject: [PATCH v4 05/13] ASoC: qcom: q6apm-dai: reset queue ptr on trigger stop
Date: Fri,  6 Mar 2026 12:21:07 +0000
Message-ID: <20260306122115.509705-6-srinivas.kandagatla@oss.qualcomm.com>
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
X-Proofpoint-ORIG-GUID: -3w8SevrC0ANVKF-G47xfgwmeTSfJZkB
X-Authority-Analysis: v=2.4 cv=Uvdu9uwB c=1 sm=1 tr=0 ts=69aac6ef cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=w9bA4Yi6UXS1dLCTJJEA:9 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA2MDExNyBTYWx0ZWRfX54MVG7FPj8RN
 9xfnsEv0QlXiY5jw8EwrmR0MvijHRx54EuECQRXgiWAfEGhUReXfIogEqZQvqWp65oh/GmEzHBH
 M7V4WvIL0UGKj1Kc7qSZq6D2sx70lB8qJkrTDVSDA9UCscW4YNOsHts66yWY5+zZ20dr1dXc4fm
 DGICH3SDJKSQJ/UffOhfkqXxXB+xgcYo7WVsItXiLapUoLuDXBOWIAdUyolqCw9K07QzEN2PwQC
 w9j7USZfL70Pb82N0l9V/9BGXydpDbsJVbj5vl2avMiH/XSs4nOtaBciTLW9gPajV9i0XgsXQYF
 M960sQs8Jw5coRgAPaSdFnSJy0DaPAf8K84JA3H1+byNU73+KEdUjQGNRV+myNz3WGUH4fnC3i+
 GvAjYINDDxpDO6B2w83Gb0EoHajOUVFngsozDxiTR9Cycs+EO0zqvrk+mE8ZI2+HHf9crSU9AWB
 rDFPB66I7PyJVVksgcA==
X-Proofpoint-GUID: -3w8SevrC0ANVKF-G47xfgwmeTSfJZkB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-06_04,2026-03-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 clxscore=1015 malwarescore=0 spamscore=0
 priorityscore=1501 suspectscore=0 impostorscore=0 phishscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603060117
X-Rspamd-Queue-Id: 53320220825
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
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-272055-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Reset queue pointer on SNDRV_PCM_TRIGGER_STOP event to be inline
with resetting appl_ptr. Without this we will end up with a queue_ptr
out of sync and driver could try to send data that is not ready yet.

Fix this by resetting the queue_ptr.

Fixes: 3d4a4411aa8bb ("ASoC: q6apm-dai: schedule all available frames to avoid dsp under-runs")
Cc: Stable@vger.kernel.org
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 sound/soc/qcom/qdsp6/q6apm-dai.c | 1 +
 sound/soc/qcom/qdsp6/q6apm.c     | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/sound/soc/qcom/qdsp6/q6apm-dai.c b/sound/soc/qcom/qdsp6/q6apm-dai.c
index de3bdac3e791..3eff45b241c9 100644
--- a/sound/soc/qcom/qdsp6/q6apm-dai.c
+++ b/sound/soc/qcom/qdsp6/q6apm-dai.c
@@ -317,6 +317,7 @@ static int q6apm_dai_trigger(struct snd_soc_component *component,
 	case SNDRV_PCM_TRIGGER_STOP:
 		/* TODO support be handled via SoftPause Module */
 		prtd->state = Q6APM_STREAM_STOPPED;
+		prtd->queue_ptr = 0;
 		break;
 	case SNDRV_PCM_TRIGGER_SUSPEND:
 	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
diff --git a/sound/soc/qcom/qdsp6/q6apm.c b/sound/soc/qcom/qdsp6/q6apm.c
index ebd5e3ac0366..f190ad5e912a 100644
--- a/sound/soc/qcom/qdsp6/q6apm.c
+++ b/sound/soc/qcom/qdsp6/q6apm.c
@@ -215,6 +215,8 @@ int q6apm_map_memory_regions(struct q6apm_graph *graph, unsigned int dir, phys_a
 
 	mutex_lock(&graph->lock);
 
+	data->dsp_buf = 0;
+
 	if (data->buf) {
 		mutex_unlock(&graph->lock);
 		return 0;
-- 
2.47.3


