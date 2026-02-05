Return-Path: <devicetree+bounces-263104-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kKsGBKLQhGk45QMAu9opvQ
	(envelope-from <devicetree+bounces-263104-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 18:17:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 87D37F5C90
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 18:17:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 97403306ECB4
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 17:14:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8203F43C07D;
	Thu,  5 Feb 2026 17:14:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jtTyeQhk";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Q4fseVDl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3480343C06A
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 17:14:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770311661; cv=none; b=PzGfLKDMJc6YV3zTXURTp2S4guMV6x9h61HGNhZPn8kliOVlpVACL7PkrVatIEIvSnXWvtv53G6q5cPPCBodYojR7f/HJpyeZMEPso2kjRTd9XtdvJftVuW/3Em/pcHr4vW04rLkjcAPqSLvaWc+s2gORocuyD3tMpHO0/IJ1cM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770311661; c=relaxed/simple;
	bh=XaUu0VWsXIOKq9aElMOeuD+T1g8fF6us2kR3AzJirng=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=a5tYxyfyq9aIZ5NbEaVegPveIL86iYevL+CuTleFK+SaYJnF6Gvjq1xInvZ3WU9EHkT/IWwI7HYaXqKwdb7T9oQr0elzvY7UO/jw/fCdYHh5UO7QZ7cOXtFPV52H/gAA77Bl1zYzJlz3+9bi/WpKcp9db+XeZKozQIKAT1dKvnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jtTyeQhk; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Q4fseVDl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 615BHHuI2157766
	for <devicetree@vger.kernel.org>; Thu, 5 Feb 2026 17:14:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=ZoB2N4YhuCT
	U3IhDeytsYqmgYo6gsKL6Ikjrrs1blzw=; b=jtTyeQhkMU0n33LtUdb/sfVLWLC
	x9dhbYT9AefdJAD6dbEWxYEKT9zObdeGkGFOfdMoDj8/oJOwnzq99QVoU3U0Ujhn
	B2zwNI5o+jiPT0LjxrTuBNrD9aOQvks8z31Mg/MlFZjGwlA2ah794ADQGMguoWpi
	/LJC1WLotDpVeMTV1WAYv3KXtjLVVLnYHLj7YRH45fqVIbbebfqLh3qJ8DLguBqj
	AuWw3A0lnmE84c/Db10PkzJlqJkh3K+h0N0UQTLrQN0VyAXFHjkYMh9XhlgQj0PT
	ooH/Wv9dmtv1MErRxcUnbPWvQlMdaeh3QEM7XMdsNsGRWodEUva7ExDPZyg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c4gynttrk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 17:14:20 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-88a2e9e09e6so71210176d6.2
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 09:14:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770311659; x=1770916459; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZoB2N4YhuCTU3IhDeytsYqmgYo6gsKL6Ikjrrs1blzw=;
        b=Q4fseVDlDkyLG1yRzXcHBaLVBSWsl5Qqoo11heCQFC8oq+N3ALqbD2MU/86swVFnJ3
         9hTXhzvO9mjLl8jy40KLf+6K5bRdeofOEGpnChBfdEmbMTq9s7NJSIKgj97VLVOp76Z6
         ZrbLQnRuN/GSFJZj7/00aNQuj3nbk3diijfxlKT6zUHZcheZ9hsr6RnPZ3yfcVvbQ9Am
         +eUBeqL45wJhrEhtIrSHuGavxapYpZjaT8Wl3SWOHPfc9IGnP2UJolh08kbnYCJHjRHs
         38QiPgnjIOe5tbjTQXGjSgF1NRHakU3YddRre5gBm88jlWUXjWK2LuNk5X8rDQsa+xX/
         VSMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770311659; x=1770916459;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ZoB2N4YhuCTU3IhDeytsYqmgYo6gsKL6Ikjrrs1blzw=;
        b=WHyjaqvv2uhx0YHqaXWpVT/sTW9uiGgOfofNgSG3TGrQSq1lp2PR/K5K5Zb1ZKBnCR
         nNRBf6GOGJbVopO/hMTXQ0SZQ527Xnn3MvJpZkuzbIYtanco6H7p3DnhCjBLyb/484tJ
         fEDcvV0SDOyysgcmcqshMLvOYNHqd/xBwtwa2whrUOwBn4cXg32D58FBl9afPuLW1LUl
         MuBL5eJdthHqpfghnxv65n2zgimhM+fEUELAF4nrWQoTUH1/SDkoCJyHZX1L0rogCwoX
         cLLgnd/hLutH+T7ByQNxv9cXPdNYP7MKvlVfsdsIZOP4BOQWO5oQM7q+OI88PPfx82vM
         MUeg==
X-Forwarded-Encrypted: i=1; AJvYcCWm1GWGzGR6OzOCf1a25CBAECewo/edj5KMjeKy36zIoK0QMR/O3IkQDgI0fhpIvpJf7eszTbHAOjsA@vger.kernel.org
X-Gm-Message-State: AOJu0YxNOonnOrLLkcUnqfkhiLcnV1l2AgyHHJq9HEQ52cbuLQWRal0L
	jiBxUaHQr9tmoYeKF3TuRHbohG8d0565tDZIeS+r7T06SWaSTyXxW4KpMpnOa4qDQNJogyqngsq
	ql6YJkBYTmoPhgnuYASjEqOmk3wMSBygPp0BSGZ/FL+XCWkub72ZvfTNLIo4mAWNn
X-Gm-Gg: AZuq6aLqq/aMzXtx4rXqkNHz5Y9GhXuAuZop2rR9tnu+0EkTIdLpZV+b0BcQE9aLouV
	Ni1xeqJjbo9bKvfUZG/hXGF966Nv0axSyI1LRXkL2B3r/Nr2x88mxv3jcfRyjrjJOLQqZJRMtfk
	4nnhswjm+w+9qOCoK7Ik17ptUCAZprIpktAjlszqikgaxXHZD40s9OpX/aMMEQjYfkJvDZitWXr
	QO5oCecnDOxAWF5gE+yUoRbOpyt2hIfmQ6nD4AuACk5ngBeFy5gd2wQ2VCu8WrR15ahlMBuJNgD
	nq8RwhcWdAFSHs6oe0fN16SPNRyW7BBOugy52oZ9cOLzrMnXBUSLsa90fEHv9y1yanbR3gxU6cy
	bhmeBlvDjNtp9duvTGFo4bjNJvrGdFrSYODxAYtnap/I=
X-Received: by 2002:a05:620a:2681:b0:8c9:eac6:4168 with SMTP id af79cd13be357-8ca2f80e2f2mr795714485a.9.1770311659537;
        Thu, 05 Feb 2026 09:14:19 -0800 (PST)
X-Received: by 2002:a05:620a:2681:b0:8c9:eac6:4168 with SMTP id af79cd13be357-8ca2f80e2f2mr795709685a.9.1770311659078;
        Thu, 05 Feb 2026 09:14:19 -0800 (PST)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43618057f87sm14802849f8f.21.2026.02.05.09.14.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 09:14:18 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org
Cc: lgirdwood@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
        cnor+dt@kernel.org, srini@kernel.org, perex@perex.cz, tiwai@suse.com,
        alexey.klimov@linaro.org, mohammad.rafi.shaik@oss.qualcomm.com,
        quic_wcheng@quicinc.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        Stable@vger.kernel.org
Subject: [PATCH 03/10] ASoC: qcom: q6apm-dai: reset queue ptr on trigger stop
Date: Thu,  5 Feb 2026 12:14:04 -0500
Message-ID: <20260205171411.34908-4-srinivas.kandagatla@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA1MDEzMCBTYWx0ZWRfXwbpV6K5A+PUR
 nenLTr1O614y3B1wFai8baCp7z78Iko7uSIoz+FXFR6DsEnNHHSZvyVbxmnhUGz9/ip+IGWjQ1/
 vl/fz3XyHk8cFdju/A3z40+ihueZoIVbTchMn2iX69ZyqfpJ5toBqVPPHl4OC0RGHTAizFcv3xm
 4cCy89QG87mSRe6+QleMJ7DKS4hpcvO1GXXLv+oAnbuJPkJ/SQ3B3nJEDHVeGmdl/4EAuOpoFRq
 F9q2SZ4XwizHDYxaO2Z9Pl8uB1vsgrIdLhSlghRY7rsuVDSk43D8YXmtngkz68J5HbQSxmTJyeW
 XNwK7XxnXq2YetCGvOxAUjdDzMgGZx44nfwE5auCMBKOkhAtYhgFvHFOjIYKZ0ux7KvVgjiOOqf
 PAfqTnU9Z4NmJa5JbH1USeq4hC35RpQePSr21jxZRAfLx6yl9cE2fOWmD0wfvPtjaoSHtKsEd8K
 3QnPXsmKO/CxlcTi0Vg==
X-Authority-Analysis: v=2.4 cv=GdcaXAXL c=1 sm=1 tr=0 ts=6984cfec cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=w9bA4Yi6UXS1dLCTJJEA:9
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: eA9nfKJ0fXXdr3rSzIsG9OaqQA1Emc4l
X-Proofpoint-GUID: eA9nfKJ0fXXdr3rSzIsG9OaqQA1Emc4l
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-05_04,2026-02-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 malwarescore=0 bulkscore=0 phishscore=0
 impostorscore=0 clxscore=1015 priorityscore=1501 spamscore=0 adultscore=0
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
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-263104-lists,devicetree=lfdr.de];
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
X-Rspamd-Queue-Id: 87D37F5C90
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
index aaeeadded7aa..87e4474d680a 100644
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
index 1d5edf285793..2cfebd622be2 100644
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


