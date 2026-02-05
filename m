Return-Path: <devicetree+bounces-263103-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AD1/OXXQhGk45QMAu9opvQ
	(envelope-from <devicetree+bounces-263103-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 18:16:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B824F5C44
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 18:16:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1BAF03059AA5
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 17:14:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBFB543CEC5;
	Thu,  5 Feb 2026 17:14:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GgfHFTl7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HolfHozf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98749421884
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 17:14:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770311659; cv=none; b=Y8wMbB0JleBzCocFSynxakRH/6w1CA9u0pixP5hBqAN4Qdef2fRuDCRjdbbU6XdwBh0lAuASEu9D6XLfGemlj4WUiaW5hc6HKuS5O8kzLkXksxVn5QxwUfhKGVlbrlI0mt4TyFsy5LRn1U08JK839YDfdLhLPba8VB+nJHXNUSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770311659; c=relaxed/simple;
	bh=MELEMTjec5vaBpCEJT88+rEEETlPjpeLlEwa5LTMeTE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZZ0dpdqA76ye8+um0H5seqZV1wl85MDs/zDRtN4GUxzQgL6pvQ8ibdVtaysYXF2x9ItIVx8MoICWO/2DKLAgxjZLB4aJNw/ofi2CTqfBR7bTGBBdr+UPbGEnixJZkRCZqNH+kbu/6hh9c328KM+1SWgaGhWhA7VB8lK+WwrUc/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GgfHFTl7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HolfHozf; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 615BkB2k4126807
	for <devicetree@vger.kernel.org>; Thu, 5 Feb 2026 17:14:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=yYDv/MOnY4V
	DCdh1TrAl/JagxkvVShJkBH2OQjhFFyA=; b=GgfHFTl7zi5gWc1C0A55QfPlP6w
	SupVD9o1H7ev0947LZHADmeqINMslo0cGdmTAnKCYfdXVcPAw+S3PC0yqyYG6bqJ
	ZUtMCCvlEqV7TZphlOkgBw4E3NTSAjNTQQl2d7wIN3140/IkqK25Pri36f81mvnV
	HUM/a+uVLZUuzLJ062oHZMAlGhvbKOwsegARMOxWeZyowcwJROPJ2hKZnHwZWhXx
	VvtCv94DQUkp7OsD2C64bLHVASYA/DA4y3/sBpV+3PyBzVOfJFmY+ChAlfWYP7co
	c0smO6J285PJcDdeDkG6u247SL7F0RBCIpTTttceTlrKkGsQ92g0dJaaSlA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c4tm8s227-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 17:14:19 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c6b4058909so294447185a.3
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 09:14:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770311658; x=1770916458; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yYDv/MOnY4VDCdh1TrAl/JagxkvVShJkBH2OQjhFFyA=;
        b=HolfHozfr+CdIoc1luGmwv+SLkltIJ6e23b0PaRTw9gRCc6Igpjn7PfXrdLeGpt6RW
         ICTo/uKu9fMGErYCeuzWUVuk8QnOxonqyRU86b13CGK5UxnWG7K376eYZYBgJt6oZBjI
         NDsO3tDEkqG2PtQJ3ps1wH0HeKQzYqjDIDiaPG3lXrxBQQ24ZFxzCiTx+FxxQer+VI/p
         H8bebAo9BfvWIaFRbJmNxjBq61qT63g03GTdvPyXf4phmsxw0pzgPwHgwV4Hk1FU2g4u
         nBcCuy4AHcQGt88CiHBx5QOvPdZy6LOUlkfnKg1dAheAeISTuLDtEQsc5IDb/bTn6PY+
         9oAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770311658; x=1770916458;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yYDv/MOnY4VDCdh1TrAl/JagxkvVShJkBH2OQjhFFyA=;
        b=BZjZSmmG/XZFaAbBFP4fPsNPcRqgWGtxhdGpi5t6KKjyiMNHyRKhZXTgSRoNvjZEWM
         x23xF7B1KJvKJr+GmDdkBm3QbIxYKLL21sfymYz41t5aHUBecVV7X9z5kQGSKeAkiLL6
         s2dg6TO/aWZVQek2oG/ObtcXbaw8EzbxJh3qDoZlKLi8mffANjxJjn8+naUXCeS3psRd
         steIsliltXckqDUfgFxZOkq6zwtaZYK6/hwL4FTmDfYKBu3VhLqCjCJQuvKHrq49CKn9
         Px4xQJ+PBcHRb4/N+7neQN71ZLedqf+Yv8GseePEfDAX6mLPS4CdQvv7hZnHIDUNOsnI
         mjHg==
X-Forwarded-Encrypted: i=1; AJvYcCWczAOHyVIiHggFSXtXsGxbwOfnohjEGMZG6PJcbdAOyYRWyiHkuLswW+RDl39HmWvkdLbDrvc9ZslC@vger.kernel.org
X-Gm-Message-State: AOJu0YxL8v0C98MzPlPopfHBsqAGQy3LqksdzAawWE2W2DQmhwhT8vlI
	AeVIo+0ocizyJWmb73whR0rvcw4IrU9me7xZOXoBpKO2MVdtwxeJ5vPi+Bpir0YzV4XFZelqpag
	1X+2qkvNmQREhZNsL+zsXxXwcCZgJK0fG7+46uWrl7NrrULPNZXXuJSDZ0vp/EudZ
X-Gm-Gg: AZuq6aLnf0j+8Y7iysjOZAovrBLbQiU41JwK0mnXN1MQxXs5z+N1J7hPfYgNvjIcJKw
	Sj/wFfsaGUT6ZhkvE71I3uC1sx8MVuiO68yCdIPZq0HXRpjAbTYQFlRYW86FG3KV1A2oUxMzz85
	9Y8EmCRVxscxs7DYaAZfaYfskqJMavO+yRC5aD7bBbmcZ4HX9z6izb4En3W4X6ioT6CQt3uOd7K
	koR1yhl0AQmc8G2dcn4/x1X2vKzzwlwiUYppLtLWPGbzcH/fN+0+GYg4MsJadVbBz2gA+d18I3x
	+NcLGnnz6Z/2KrcuhICIrP+jMkpaEEZu4Dbdabg0fdSXyaZGdok2t/2SeCpfrpqPLSbsXMaLHjc
	hsI0z2uUxo0tAYY9XdytmWMDHpQTIc1eiK1WbYmw05/4=
X-Received: by 2002:a05:620a:2550:b0:8c9:fa97:75ae with SMTP id af79cd13be357-8ca2f9fdd07mr921336085a.75.1770311658051;
        Thu, 05 Feb 2026 09:14:18 -0800 (PST)
X-Received: by 2002:a05:620a:2550:b0:8c9:fa97:75ae with SMTP id af79cd13be357-8ca2f9fdd07mr921332285a.75.1770311657542;
        Thu, 05 Feb 2026 09:14:17 -0800 (PST)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43618057f87sm14802849f8f.21.2026.02.05.09.14.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 09:14:17 -0800 (PST)
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
Subject: [PATCH 02/10] ASoC: qcom: q6apm-lpass-dai: Fix multiple graph opens
Date: Thu,  5 Feb 2026 12:14:03 -0500
Message-ID: <20260205171411.34908-3-srinivas.kandagatla@oss.qualcomm.com>
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
X-Authority-Analysis: v=2.4 cv=Vd76/Vp9 c=1 sm=1 tr=0 ts=6984cfeb cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=G9hKNilMzbK2xivVM74A:9
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA1MDEzMCBTYWx0ZWRfX6URHiCj4Exzh
 pJzERT3ylrD8yVJNFOxIgM7UnMJM9afeSO2zW5b/x+X0s7h3PioBTlOzOHe+tXO8Bhiq+O1Kgqn
 Lrf0XEVr8C/0weC79FJLknqVo1QHOuRM1tU7IHWzDK0YHyf3qyHa1BCvx9FH7ls1KuSqrHITsUp
 AEtdZMcu1MvWyq99Uq2MWrZSYtp2tGJZDkBMTmEL4qPHZxF+yspU+QQQh6FePzt/3rh493oqGyF
 XqHJBiDeU3DO/41vjLicEWWOtrLrJDcGmDd+E5ZBpkXuwMoWbEBqu+J2Yiv7o/q336aau5pDC6L
 m8FWNltbc4vKq75RwSiLZkvwYPFO3WBJec3frdNzcX4svt3JAtQ0m4KsfQj4m/orrs60iQkZO5y
 iHM08dptJsYKMYzFvuXP4djsxpG9iUWAX54k5yn+0TPBEpJuZneziJZYrLbJxNxRxed5XADvFA0
 +ef9oq3E9q9or0w3oLA==
X-Proofpoint-ORIG-GUID: QHZm0bUGc37Cst5cGPVhznEG92pk3Zyb
X-Proofpoint-GUID: QHZm0bUGc37Cst5cGPVhznEG92pk3Zyb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-05_04,2026-02-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 bulkscore=0 phishscore=0 suspectscore=0
 priorityscore=1501 lowpriorityscore=0 adultscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602050130
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,perex.cz,suse.com,linaro.org,oss.qualcomm.com,quicinc.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-263103-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4B824F5C44
X-Rspamd-Action: no action

As prepare can be called mulitple times, this can result in multiple
graph opens for playback path, fix this by checking if there is already a
graph instance.

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


