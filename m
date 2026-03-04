Return-Path: <devicetree+bounces-271035-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GFP/HDAvqGlPpQAAu9opvQ
	(envelope-from <devicetree+bounces-271035-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 14:10:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DF649200189
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 14:10:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 65C1730BC12E
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 13:07:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49F5F2F0C62;
	Wed,  4 Mar 2026 13:07:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bJgHZ2YN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ufi9ipDk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF3C7282F36
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 13:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772629645; cv=none; b=R1z2kRjNa7j8F3p4rM7X/EMMqnJlywbeZdiUvP5KhAKV5t6n8AuzrUAtOIXEP9c5SVOIhJPREJn2vEtKmWneVXba9Mw7da0YZP5xucOk1PoMGJKqtiJkL9K7VD9mC3imxy3J6D8gYmRQc0dW625rNHvjTxmADDNtxfYcSfGFjI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772629645; c=relaxed/simple;
	bh=KvhN5EIM3XXPaotrLaYPSuOdgBSYq4SNpSPqi8ZqfN8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Av8KHznJGP3sE6/DwcWCOFDgHhH3tSzQycJbRu1SBtB3zsd1MYxYZ5LqQCPoJ/yogM49zrKPh0VghotdlGcbSXnGObYqsSv4xAYwIGjwvqaThB4uiA9rtEbyGlasds8odcnsPaROQoKEeu3+SZpFs9g0/TQnK57prWZam29yfE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bJgHZ2YN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ufi9ipDk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 624D3pXb2861146
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 13:07:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=K4gYoo9JoJP
	OJ5mTuliJj+hphclVDgk4+5Zp53bnrEg=; b=bJgHZ2YNtRjhg6ZNGKNu2y4jQWV
	6RTo0IzyHTPTEUIcoQ9lI2wzYZhBEKeT1CiKLTf24CQbEdW+TpHTblxcvhgKFUp1
	VkItVJfjhAo3P0HANGFx1kyXtKcBVBjaoJwhxLEoMr24mgndGSNgN69+8q6PJwaR
	epa8+tscQWZVAXUVObi0Omb/sTwMfep293ADC7493PtmvAd5tghTBLnkMGcYvSvR
	qMH6EIqTpo/XLJl0iy7Cx+qqVXCKe1uUQQaKjG+0vNM7gwPc4nhD2kJAwLvDEEve
	gSu1mtEKGhNHheSO06u9bBLQsg9u7c0FPcRNSqVpw9YjkXVZmIDEWE1ilQQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cp2c9kymv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 13:07:22 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8ca3ef536ddso1243327885a.0
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 05:07:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772629642; x=1773234442; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K4gYoo9JoJPOJ5mTuliJj+hphclVDgk4+5Zp53bnrEg=;
        b=Ufi9ipDklVsKQO7cF/i5cac1ETpF+1RuMeO5J3mbO9Y/10vLXsd6dhHoXLD+Gmt3dJ
         h9IOCYqAOOiNQw+HDngw5EVz2+nnw3X7BkY7yJEmT9mD+2A5jXsajnuJlL3oPbSxuJzY
         zRQ3BiNj5UjwIOTU+Hjbij2vZXLToNIeURrBOeV7E6WKZqZSSB0paQLv2bDtQD6t7iFd
         QP9J8qsthWdGK2MVO0Aq7FyrM3XrKKjkh73I/7W2IwpkV5ZBfWFI2rlrovh001xqLc9Y
         1S7+NsABzCUreTQZEb2l8HArsF9iYHV02/O6OqpVdY87KQVPt8uzvcfCdSOeKZQIgGro
         qj2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772629642; x=1773234442;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=K4gYoo9JoJPOJ5mTuliJj+hphclVDgk4+5Zp53bnrEg=;
        b=vZx3V/KIykW0/KdqJnf5ni2e+SeLPxuByUW2kIWPyL4dyK3c+CDBFunKmoEqgipCK8
         7IteudCZuFuqUt9wgDnTYM1fSITVmoxE2UPa5sgNou2IS751knqgK7vk/xTOcSL+K6tJ
         rd+KogzM/Y2slQvb3va/ZxAXsTdKl214cpkOd6hVZNYFxxEBe/rq0QfOpbu/lEjxXzBZ
         8XhZJy0A8SCYcHc/1WPfefkRpQOSusaVh17adR73ykE9FnY/37j7QaOVZxO0GGr9luQ8
         qQM/pheT6/j9Uja+Dbkm15/Rq928bmReOnlktwzHI2442UWJxtgkQXToQ1C8iuvbif1m
         eSgg==
X-Forwarded-Encrypted: i=1; AJvYcCVFtYMuciunqid2Wywfsnhta/2EWVlOhqEwLdMy42zfZTV/on9PjfWwVAaHbBhqVzM43vj9RxA9dXEc@vger.kernel.org
X-Gm-Message-State: AOJu0YybFRolUBPPcsw46C94qpFkGNmDGFn4HxqIC+f5YCHDRJdQPL2K
	B/6LeXol9qxtjsIG1TOhS/H9CFbPr5YEzst+tuk4RdmD9OM1AdJDLhJO2wwGQRnoszRFKc1UzGl
	yXjfZuFSXOtscLFrCIuwnMyd8YCR170ZIggI+3YZbL3dFTcI+sqAO82OltiNL1pzz
X-Gm-Gg: ATEYQzzvhvc8Fhe3ioGSd9jPqUp2oMT1oD99XlayTdckqu39gLtACceGnyr5Emac9rX
	jbaW3zWv98u4IYYtz4JZ2hwqSusvPxA0zqi6B9Wh6QfwXFFFoKH4gpt+ysWndTRBSiQz+gmj32t
	HtacpDBV4gcrIql2gvVeuFO3iUyDOOG1NZRq97B+DMYgqsXMB3qOJR6iNhaZ8CHMxwjjf4+8Xs7
	iwi+u0B2YjE9fylT00RxzN5ZU2D6skQ2oMbVRW1aQkOpIDoMo09UUrRHp73LZyyLn3CfPkXb+27
	+MVk/G1itAqtVuF76BzpFg0gTOvz2kt/bskovIcDkbjP4n0rJhd3h1/VR32VeW/dSfCidNkLRUc
	Wd+SoLfuPUh1DTiURQi4SCDMBr+82dtDasLN77UI8isaabU+yRww4/HU=
X-Received: by 2002:a05:620a:4727:b0:8c7:1a0d:7d9d with SMTP id af79cd13be357-8cd5afd2111mr209564385a.81.1772629642231;
        Wed, 04 Mar 2026 05:07:22 -0800 (PST)
X-Received: by 2002:a05:620a:4727:b0:8c7:1a0d:7d9d with SMTP id af79cd13be357-8cd5afd2111mr209558085a.81.1772629641720;
        Wed, 04 Mar 2026 05:07:21 -0800 (PST)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485188122a6sm49969745e9.12.2026.03.04.05.07.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 05:07:21 -0800 (PST)
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
Subject: [PATCH v3 04/14] ASoC: qcom: q6apm-lpass-dai: Fix multiple graph opens
Date: Wed,  4 Mar 2026 13:07:02 +0000
Message-ID: <20260304130712.222246-5-srinivas.kandagatla@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDEwNSBTYWx0ZWRfXyGBe6MeLkavt
 ivITFHW/EDqlrsEIO6uq0nxSCFlG0eizgDBlompfcv9gA1dyerqM3UvE81osvyU7i/J+0mpsWdH
 T6QJd+e4NUb62xakowSMODTHffSEuxNI5synG9HYiC//QUdm+sjqYJMurYjNkF4XKoJivkHg1ne
 rgCyt27NqeEMDiWzKYLvgCFFJXGormTyAO+phytNtodJ5wzi2Gj+qcxq4Al3KmodPZRK1U4i2aZ
 kt4p0aRJrCQkZb5eDDAOfGbNqdsATRmESDp1vQa1Gn7mKc1o2xFOldvPKjC+3lGiwTaiZr6Odva
 VI0gMAo5BSktXURwMBNZ8FY9cvPl4SUj9I9Mtez+oVxwtyMQL3Ma2LaICsBk6xbRnS+NvArp1bU
 sbQSoE8pOsGFZmcQc80FbuFmckudQdNaruXOBdgVqeowNvyfx0QJb0FKOMH0C9BQ7GeUByQUJO5
 rUf0THuRf2QUzcTdNDQ==
X-Proofpoint-ORIG-GUID: i2fhSq5Aj1ZOuQoe4B-DnSVGP8_auGFE
X-Proofpoint-GUID: i2fhSq5Aj1ZOuQoe4B-DnSVGP8_auGFE
X-Authority-Analysis: v=2.4 cv=EefFgfmC c=1 sm=1 tr=0 ts=69a82e8a cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=M_mAHeyD2EURj3i0m2kA:9 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_06,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 bulkscore=0 adultscore=0 impostorscore=0
 phishscore=0 clxscore=1015 priorityscore=1501 lowpriorityscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603040105
X-Rspamd-Queue-Id: DF649200189
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
	TAGGED_FROM(0.00)[bounces-271035-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
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


