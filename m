Return-Path: <devicetree+bounces-267584-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ACyrBdCXnGluJgQAu9opvQ
	(envelope-from <devicetree+bounces-267584-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 19:09:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5710517B483
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 19:09:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 758B6302D685
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:08:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 385EA33C53F;
	Mon, 23 Feb 2026 18:08:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NQCq6Q+O";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cuWZtmid"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA95F33BBB7
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:08:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771870084; cv=none; b=FbadAEPGEiop9Bd45i7N8yy3ZnIqwhniqiNPcOoOQBuVAoKq2nbnI2ua2ODMxLiZfR3mgMg7zExcKUCZ0w+TFRSZpQ0jg4pq8hnZUDjKFaYhwiX1Ht1bbwvgV5DMEYfOORHtuOxddJ+eqX9YEC76FMw0+wNezXm0AuzEZnfRc7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771870084; c=relaxed/simple;
	bh=KvhN5EIM3XXPaotrLaYPSuOdgBSYq4SNpSPqi8ZqfN8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JeTcbr395fC/b5zD6x8IyBn/njncih60t73TjPsnR5RfzwtH7oycZkqy+7ntnuQrDzo2k/yF4x6CKiq47ES4MbE/hn4m1YtRuqg53Q7MswULJ0kKGSbafV/F3XqsFA0iISPIhH2Zt18yGK5oIgemxQHYGSPDpMoj9nNG1YfiZ5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NQCq6Q+O; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cuWZtmid; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NAYjHl322365
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:08:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=K4gYoo9JoJP
	OJ5mTuliJj+hphclVDgk4+5Zp53bnrEg=; b=NQCq6Q+O2FeHjLFGEWtVf9EKOMK
	svQJaP+fIfVj46ZNjebQtx25ni115KQASMvJPdDw8D3kJDsN/cjI6Pn9KulS/AtA
	W4KQkyzPIIKSmbwBVEUTNWxA7UpjKwkf58ZoGDpfEBBREm2fqT70hnZnSDePqtB9
	DNZdeAabpwvPqa0N7i18GmiFW9meLDuI83gl104ASSayZsAD0B77cFvY2WV5dFex
	tAG04zrddMw6zE8S+SGCgzQcWwQCxs1Iaw14gqwY1GK2OLZVjGaG7CsdOqXqYdjT
	0FDhV8Qua1GtkKGXZ8yf62h902dcZPlT7A3Ya8hW5tM3EIlCmgANBnm/Q0A==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgn8y1e63-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:08:00 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb3b0d938dso4795476885a.2
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 10:08:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771870080; x=1772474880; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K4gYoo9JoJPOJ5mTuliJj+hphclVDgk4+5Zp53bnrEg=;
        b=cuWZtmidmb+0Q2Yf7vwqK9ACnWVQAYc4/60wyD1oJiGuOsAjxdwdJs5LD5SwQtk1MJ
         BacmtfQTrVfpzuGI45rnwTaRa6x8xgmWrDuFpNJK81GpglmaWxxxwahiFKTnaGQtdm32
         J22ZrTO0DuHgDorL0H7FtozsuzgSp7WC/EChnbV7hukIs6pfPP/ujHQMHJXQr90Gx1Ln
         lw1y1pufRSTk51kQc48QRgwqYxl6xViSLrZNGOES5vjSbjR9QloHtKiTxC9PpVdvdXTa
         UASblWXoqTq6GteZwyDqKT575So8MjIIgdODgNy6zO47QeDKxpbqWM5nVrJfeesTmPkJ
         h0nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771870080; x=1772474880;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=K4gYoo9JoJPOJ5mTuliJj+hphclVDgk4+5Zp53bnrEg=;
        b=XwrH2H3xKTLN5TmlYK3ypbKGzPvtiLr0oChIlEcYjPhAfeI93gQ9J/O+IJMQYYHtEv
         frDrgXlYPSm/QoB6ofK1NtMrVBEs/uwA0wEWjSDV5pDJuG9mtxuqrJ13JkHMEr4i8mSd
         YN2KSgTjFxZbbaHGVxKI4rc0TnPZPcDXHLEszI8GdsDpAB8ulG64YatGdxFcoKdD5YwD
         MMb0icbl3InMLuj2yuP8orsMhDojS8ex72rksK6v9AqUKOFSdMqeqsaFIkLry1RAu7/i
         8Sb0FiqBWgkFnv4b4Uu+YxK/iB97HFKfIvAoln4JZr6SDOHf4lOnG7QU3JlPPchiaxEa
         lSzA==
X-Forwarded-Encrypted: i=1; AJvYcCXDlaDJugsNryJLP4HdmwmPd52gBFyRwji/JCr6beyHj4ZWouTucGJ6pPYuZqVx3ubcasX/7ZaLlW08@vger.kernel.org
X-Gm-Message-State: AOJu0Yx89okrp9egEzSdMVGB4547YwIrewziTA86LBHJsj8V5JMViJwD
	D08qNdob+MQPo/CNqKiMOOuVMb7mosD44sM0Rs2qU2jhKGzL/cSu+RRJ3L0qk8iCTpP05qPlk7h
	vS7GyQpEDbZa58T1RTDGEZ9U4yF6juUl/B/ISb4kfD8utb3E/6okIhhhEEuOpcQxX
X-Gm-Gg: AZuq6aIhhHTcSOOi8MLP33M3/jrkKQ0b/JoPA3JRlmbUXNlHnlSerFxoSdrG/S+Edvg
	IdMfvqBcIkN12Wv2ImKkV644fMN6TJI0SCP/DzNZlx+/U2Ij3EdMnmiEnccMtApJiC/Xfsi2gML
	adXaPAvEAsyFpHNpooNcIfFRfJhTIuqO+j5vkjaPr5uLi2LwrBGNwRVMBVxu9Byh104WYWf/hdB
	73flPXHgiMtA9gGxb9RKvQigu4crtHkcdzcV/to/NtsKcZUhBAtu/8DSGZQfmUE/pgTmderz4cL
	VHIuc3teeIT2OGT0XzJQ3fqTf3rFAm84BV1dj3Sx+UIorAPM71bYIXWAMuAHDY9Hz+DEIPsZts2
	uYNOnB25U3y5lv2NHHnKEFp2qduyLUF90p1erjXWHOyCDo9syY4uB+vY=
X-Received: by 2002:a05:620a:f0d:b0:8ca:2a04:3ff3 with SMTP id af79cd13be357-8cb8ca03fe5mr1202490485a.30.1771870080389;
        Mon, 23 Feb 2026 10:08:00 -0800 (PST)
X-Received: by 2002:a05:620a:f0d:b0:8ca:2a04:3ff3 with SMTP id af79cd13be357-8cb8ca03fe5mr1202483585a.30.1771870079897;
        Mon, 23 Feb 2026 10:07:59 -0800 (PST)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d401aasm20458574f8f.23.2026.02.23.10.07.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 10:07:59 -0800 (PST)
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
Subject: [PATCH v2 04/14] ASoC: qcom: q6apm-lpass-dai: Fix multiple graph opens
Date: Mon, 23 Feb 2026 18:07:30 +0000
Message-ID: <20260223180740.444311-5-srinivas.kandagatla@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDE1NiBTYWx0ZWRfX/joHgPLioqui
 iZ698HqitV8W1a9XQ267W94Qb2n9EZXobY7Tu3wT62QrjP1TPsP8iU1QOL0dunPZncq+eAiJBKl
 hdd3xrDo1dmFTTHzMyyGjIWExWcWHzZzx8FeYqzSNoGRGDQYQ7GMjjeFz/mlYFrzvdcDgViLqPh
 9891QmLiLFQ4q5kQu7gFWMU7+tF97jXovfc/Ibn2ibRqLQsQINg4l3r3Kf0DbfuYfgRUfNZmLKq
 0cuIqP4v28LTe5fT3Qop2rXJT6ycILEeTzMw9NFWChCkkEEY6R38O2pObJrnWFQBnX5lkAc89yR
 JawzoO8zVm9JoIhMuCMJ8dOpLPVQKr3aQE95eYkmiJxdElhRvy4CCBEfA4Z06HoMhHJV2ASPvf0
 b1iKmYkc7G+qfKgz2ClV/ArBXouI6N58ekTkTWIIp26i2NP8KyX12pWDGF5DxnuyAGO4Ry4h2bn
 SGgPe8KZscKGA/k61bA==
X-Authority-Analysis: v=2.4 cv=edYwvrEH c=1 sm=1 tr=0 ts=699c9780 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=M_mAHeyD2EURj3i0m2kA:9 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: xMNTL4_rs_uOQ4ASQdI_j1eZwDkpOXtq
X-Proofpoint-ORIG-GUID: xMNTL4_rs_uOQ4ASQdI_j1eZwDkpOXtq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_04,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 phishscore=0 clxscore=1015 priorityscore=1501
 spamscore=0 impostorscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230156
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,vger.kernel.org,gmail.com,perex.cz,suse.com,kernel.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-267584-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5710517B483
X-Rspamd-Action: no action

As prepare can be called mulitple times, this can result in multiple
graph opens for playback path.

This will result in a memory leaks, fix this by adding a check before
opening.

Fixes: be1fae62cf25 ("ASoC: q6apm-lpass-dai: close graph on prepare errors")
Cc: Stable@vger.kernel.org
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 sound/soc/qcom/qdsp6/q6apm-lpass-dais.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c b/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c
index 528756f1332b..f68d4b4974f3 100644
--- a/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c
+++ b/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c
@@ -181,7 +181,7 @@ static int q6apm_lpass_dai_prepare(struct snd_pcm_substream *substream, struct s
 	 * It is recommend to load DSP with source graph first and then sink
 	 * graph, so sequence for playback and capture will be different
 	 */
-	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
+	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK && dai_data->graph[dai->id] == NULL) {
 		graph = q6apm_graph_open(dai->dev, NULL, dai->dev, graph_id);
 		if (IS_ERR(graph)) {
 			dev_err(dai->dev, "Failed to open graph (%d)\n", graph_id);
-- 
2.47.3


