Return-Path: <devicetree+bounces-271036-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4O49L1ovqGlPpQAAu9opvQ
	(envelope-from <devicetree+bounces-271036-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 14:10:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DF222001BD
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 14:10:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8261730C8FC4
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 13:07:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A72F3264D4;
	Wed,  4 Mar 2026 13:07:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="X6NMvo5D";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TnoVotb7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FD62EB856
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 13:07:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772629646; cv=none; b=NKlB3VEUxdBgbRLbxRUDK20vI9zJCRqFI0k6FjKuhZcu0ixOvQEdlvpWoR1wS8KJ7VEfqWpSDIcw+h4O+3oiFa9xvAbddJNgMJAHcLMTDCdJP4NqOQG53fpTCZZNzhqvx8qPHg6SHJXNaMGkDmJOsXsKnVxvznRF8Jr2pHtljVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772629646; c=relaxed/simple;
	bh=AhoflfyPSEypIadA7rENraHqNcIi0OFcEnzEL9v8we8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Sn0TePWJwR9ZjpkMejLE/hf8Q9nRK8AJdmWjpByCs66omv+9ul8bIOZ2O4Kaf6tKnx0wer5IGMHVxU3O31nVfHHI/xF1kCgGNqgiEMyeUC7tfIQuiXR0pmfp3WbJzNTM4U4a2U8+j1fviScQnwrPPsB8neem066vQkGGs9lKsI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=X6NMvo5D; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TnoVotb7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 624CbI0Y1072686
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 13:07:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=PS19lL6QwLa
	ikI1GyQO9iydtpc90HsQ6A4ACO7BE4wA=; b=X6NMvo5DiaqLkarnGukacZIf3Pp
	KUpkBmh2/n4zstZh0MVQ5M/OLoFjyrL+xIf8hYkJ0frgdcnp+xgWICBgibFS3XjE
	FxpjOOJnO0okahQH9Aa8rseTNErMB7ayHHKf9kMG/3c2TfrIoa2+/wDdYhTJdHfK
	ZYq5j7wcHVPiM8QosHQ9sCzfNIaFyGREKyO9mYL2q8cFGkUe5dW2xT3NnJZLosyQ
	I3jBrjXV7058/OUhuCgbXF/nkeLIy2gsBYib/fQpp8NC+3UJK8r7jqn3GJ28qzCj
	3AxKQSAdy/KBVO85Th4dCob36Y3mIu9Uzdui3B1wYe33BE03ymONTh4hrHQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpcxfhr99-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 13:07:24 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c70ed6c849so1009819485a.1
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 05:07:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772629643; x=1773234443; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PS19lL6QwLaikI1GyQO9iydtpc90HsQ6A4ACO7BE4wA=;
        b=TnoVotb7k2U4qIj4GNsKstRDRVMCKlPKVz7lyqtGaaPx373P3kxmgu8Rc4kh+g/DAT
         pCuUYcBSejGNKJxRcirxaQGG2kpvvxlQqe/N6qIXtDlX+ZXuWHK6yGfpa4horXMzOj9W
         VXHU488x78UZd8W4WSf47CWndUaZj8CTbKYiyHe5XXoT+odr2/MG4WYK0boE/lTwxPT1
         e0YXBRyFx6mftmiiyIV7WjuIU/Yldnd80pzgq+C9HpC+bviSREb5TceA+oIeUOOvR5fB
         fL0Lk8OSpjKjKuk1Qqr3TGWSCd49Y/iwSclh8qrsW4jIX1qSuKNo5fjefKmzHppsI1xd
         OPwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772629643; x=1773234443;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PS19lL6QwLaikI1GyQO9iydtpc90HsQ6A4ACO7BE4wA=;
        b=Ua38cd9lF3fgRR0qcZS8BN6Al3yLYhJJYU5cv7/S8dcbd/EGbuwFQdx2Ofcp34i+GI
         gsn9heBEkes64tOYJyhGH6pd1stxP5YoP2saN5T2Br5I6NNFHp185LLxlTqOs4uKATkW
         37IaroRN9wRD1gUKVn3yWPLox/xllcKFhYM5dX4SnkKg8hEeENvOUu/0ohUyhAZ2+lxT
         e/YPgPLR5WJaJr/KeQjZG+ell2qou1wJefMCJMXsF1kx/A4AWA2bI50YWFL+SrNwiAwa
         DeVIamRTE1Xd+oqKdDGCG3lfDBPe+aalvoxnlggvs4rytBKotWvbYqc0hgyTbEBQwVKm
         0nuw==
X-Forwarded-Encrypted: i=1; AJvYcCWEHlkMGRqRNyK954qI0KYANarkUL3mzFSka+QvQJtl+RTe3Ha0A87FiWsNXyJsnrIfPqBxho4sVNDv@vger.kernel.org
X-Gm-Message-State: AOJu0YzV3NOle+JjSmHd5/cn2Y++xuQ+1CkE5f06f5pJ+rOosgIYlauy
	3IEsSeDMwHMWi4I6u/jpohMb/Imo9Tb/7RyuthR4AdxFqNrVepC2lhmMW4IdHT8jyNUYGGYrwWW
	K0G+1i/e+/9MdAZqdv8fJ2fLCOUraAypclli2vIm1vM+Wyoq1BvgEeTbu4c47Thao
X-Gm-Gg: ATEYQzxccEelmyEnKZwlUnjW7+8J4a13njo0qCSGlm0kIxa+Qpd8nVE+OrghKk2Z57v
	08kMGPof71j1TUfPrhtLpMLKkQrUhv4BVlcovkVlEDs5P81d+DLhDGgqaHS5o3pnirEBXjKASWp
	qZtr3XDDPN8UhTaKTKTrKwzVdTOjIhN3VaAH7GbcO5K//Ct/igXzpYlO0I2xaHLF8WMjBNkHanc
	nY4ZPDsVFSFSKOfETqJQYF9gdnTKlL0okox2PvZjyysC/TFWDdyolXb9OkMPrBbhS+6cwp0BGAr
	dNQF8ByJSNjYS1lpqDiDx8B0uEWgM88hUjMgn4KDDkvUQzFsV3DvlhW4YtOB66d5T9XKWAp8MSR
	lm4Mx9huKd9pJpMVKFZB5C0TnXXtrz6f4IfQkjjI3pvMDU1EITIH+GpY=
X-Received: by 2002:a05:620a:d88:b0:8c7:d2b:b5c9 with SMTP id af79cd13be357-8cd5aec945cmr205979185a.9.1772629643534;
        Wed, 04 Mar 2026 05:07:23 -0800 (PST)
X-Received: by 2002:a05:620a:d88:b0:8c7:d2b:b5c9 with SMTP id af79cd13be357-8cd5aec945cmr205970985a.9.1772629642975;
        Wed, 04 Mar 2026 05:07:22 -0800 (PST)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485188122a6sm49969745e9.12.2026.03.04.05.07.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 05:07:22 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: mohammad.rafi.shaik@oss.qualcomm.com, linux-sound@vger.kernel.org,
        lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, srini@kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        Stable@vger.kernel.org
Subject: [PATCH v3 05/14] ASoC: qcom: q6apm-dai: reset queue ptr on trigger stop
Date: Wed,  4 Mar 2026 13:07:03 +0000
Message-ID: <20260304130712.222246-6-srinivas.kandagatla@oss.qualcomm.com>
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
X-Proofpoint-ORIG-GUID: sn-FvTcs-Jiixj1qANBIWDx9E23tfzdt
X-Authority-Analysis: v=2.4 cv=R4gO2NRX c=1 sm=1 tr=0 ts=69a82e8c cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=w9bA4Yi6UXS1dLCTJJEA:9 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDEwNSBTYWx0ZWRfXxJKdFdOvqDfV
 tr5BHtAUebX4Hrsp3MPT6wzbueQuI3bsS8ko3/w/V5vCOPyLWMTtJDx8Z8+gneMqfkEYqRNqiOn
 pfFJULS0TbS3fu7ttquI2+G+C3OHbVpIufSrSCwAM+OeiCJASduWP6VMBPPXh94heAZYLSSg9lx
 nSLp9N0tBBwRcTxzGrGUXS4Zo0HXpMetvc2qGC/YU1Xx9aoEFpLoOHeARpI3r6fJwAQkfPQMr/w
 qmLN1R6tYSD5XkO/Ow+4QIamykA0CQiNvyyDORzFbTvMgItud+0dN50j3tZQVbOfNUJCWJxpSWM
 WkWS4XAFmHO3qCMbwQz4c0cDhkMa46YEadjaD8/2QC1JSA46FZBvvuG7k2SL34ha6DHKKwGWs7I
 Kc2WpeUivLNqT/xtW31cudUlpnM4zeNZuW+kDP4u/hKN7Z7TLN7Po4hToK9M+PuQzp4IPTp/Gw5
 6hx3LZbXPJmC2pYq9MA==
X-Proofpoint-GUID: sn-FvTcs-Jiixj1qANBIWDx9E23tfzdt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_06,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 clxscore=1015 phishscore=0 bulkscore=0
 lowpriorityscore=0 impostorscore=0 spamscore=0 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040105
X-Rspamd-Queue-Id: 2DF222001BD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,vger.kernel.org,gmail.com,perex.cz,suse.com,kernel.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-271036-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
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


