Return-Path: <devicetree+bounces-272060-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QLFSEbzHqmlTXAEAu9opvQ
	(envelope-from <devicetree+bounces-272060-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 13:25:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A322208E3
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 13:25:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 104613095571
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 12:23:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B732395249;
	Fri,  6 Mar 2026 12:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="X6j9A4S8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YJlvksrG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DAE4392C3B
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 12:22:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772799742; cv=none; b=sXKtIJ6LnDdNDyeQkxCskX0blMX7CW/pgbdI6imakt7hh4Fpk/SbhNcZyx/Ru+6MX6bLbRpZd/w8Ehr+YQtpKwdv5fxNDtjp80/c2ZYasbwEr/bxaqfhExTGQ3dtZlY4fhXDsFnQen5QOMUJkDxwa6E/oSP/7rdJihSA1Jzz5ZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772799742; c=relaxed/simple;
	bh=iafQmWDeFIqwxoTztlKqMCFwj+DaAdYsFKAlvo4MX7E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oE8yevTAjVl9pgmA2qzi2ky23UwkHzkHXlDg9EXKo/L+uGuEoHDkd11/MxImuaUg2EwDSeed+T554Q2ZPQNUlStZG4gmDmNL80OxLEEj2RkMpViLR0XovGeEE1L8vt3cK2a5zmXLFCspawjn/lzxcYl4ae7/FZsd7qIKzLRPu5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=X6j9A4S8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YJlvksrG; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 626Bavfw3716637
	for <devicetree@vger.kernel.org>; Fri, 6 Mar 2026 12:22:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=lh8JDFjF3Cp
	/56/LC7QnjRtBGIXDKJonxwqRjjyCPMo=; b=X6j9A4S8/ZYYxhKpevuaYEVz6GE
	GPd9JoHZsrekQm5J4PH9iFEv5JF/ohDFNmRX2xtD5z8Zf5Y2cDCxi29PEKTrHFbP
	tXiLi1eBcDDLsX0up2XNwtDi/sufdJU1Fp8BuksbhICeq51Qer6oPdASr46Q8N4p
	uumAY+UKtBau70RlPnvDdYoljBdJcHW8mMbMDI+crz/lpjWMeJalZM+gVNH1pvAL
	76z2mmuvpYyzQFDJ1vqRg6WniOgpCO4IO5ZZV0S6dZgyQ8YtG1yamEqn55Rad+9D
	On139bWonIdCI3NGmEz2aMloyWxco3/ZfShMU7EVfYo1Qi8IhISOWUvXPEA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cqv98ggxk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 12:22:13 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c70fadd9a3so1242789885a.0
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 04:22:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772799733; x=1773404533; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lh8JDFjF3Cp/56/LC7QnjRtBGIXDKJonxwqRjjyCPMo=;
        b=YJlvksrGiaP0nVmTxP7ctRR2Pyzdq85j00iQe9Ex2dr+u0JFQhwOL6t0VoQc3bc4Xo
         mX+B/ZlVu64WXb6EGuVGAyp0Bnwg4S0ZTg/Z8NiZ3gVlmGngg7HavzrHoBSCHbXbjw38
         bkPE71b+wYsTUdc6znwOqJRMxLId/ZdZ0lKTeRPbxBjS8RuZE0MOXhqxLoINEgZ6BayT
         UrVMjJmdU/rcOCVmExoAg00thxJLUsla+6e7ia0bhsB8sSve2JkrEyx3MqXzvmQqoxog
         Q6hjlaRBIIgHzx1w6pPSf+XrDDyfYVDSWMbZSP2oz3wqZS78YvfBxwvTN4HlcbZ+domm
         eAfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772799733; x=1773404533;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=lh8JDFjF3Cp/56/LC7QnjRtBGIXDKJonxwqRjjyCPMo=;
        b=jnmIPb1bv5PcysEE8DcmO0jFHaePUxMMMMiFxUdBeZXiutQQ4UlA4sUJ186WgIVoVQ
         1irbSo/A1RG7D1IvJEVAuxnHMyAqTxCX74bzR8uy6eXElDX8aHPq3VhlVRI9IHzx0oBP
         jzSx/P3EGYLJ8/8Yr21vL7zJCKbArMjFshpbC15HeyhTP5y/Xp7cp+hv5H110JdAkgN8
         749fz8dbqpOzJNhulam5Mhp20SJdxCqaiY+G783IZJhOJrt0WYaJt55r16LHmHjTBBcD
         sg4swiQ5MYi7FLSfxZXCb2J/HodjJJtCHJnbE2FY2j9mXqCMaIJat+FdALLCtuA8gjMA
         uudA==
X-Forwarded-Encrypted: i=1; AJvYcCVy4jQouFpTShfJd8nY4qsspho8x/ehAExDVcxgO4Nf27afltCgqcCCRmByU60M3yuKktQwAc+kgzAr@vger.kernel.org
X-Gm-Message-State: AOJu0YxXc7Enr/f4IiMYUZjlTuIRUUHVQmKsXBqcyMBVpuEGJIJDudaT
	Gttj3JW+PMvnhJJu2GLRhsIof21KkYUrFMuJpppKRmIstUdsmzQAaTXGSdgMiYo0SvJTdD0G+1A
	h0gpVnkUJYYNPEXcsaGAVY0afX4GuN9yAbv06awJZLDTRVZsHEP1V146Xj8gzS5KJ
X-Gm-Gg: ATEYQzz9rMbPrf8Srub/6Da+jfY06yLfE86bpC1xGBql48R5q5tXUKJhZqQPmfpiNWX
	5wgeSYTfs8USwoe74LbZFVTa8uU02yfRkkInnG1H0oeAZZOMA9G9TrGiZYi6P80CuJS7w2NJWOK
	TMjuGy/rKGqJyf55DVmef+j/+B5bNh98/YlgMj9QC4vHfeva70fOdKVrG3Nhyw5bU/GBU1oU7ay
	LOkpTi1uMc9Y30G7xzj5RoDQGx7vzopdUPnUb9594PQBqaXPYvqGITgTe7aBNYd0Rj1vkJChAHw
	Jq1DhL9ez4+ApebrDwz5Aw38UuKA6cwCM20ooR1Av/eida9xUwUeuVwwnXY8WxB+ly7ndQ7h6E/
	USYFqjh+nRudW72UpKkYs7FTXv2F0CxTXARU0QtYC4qb/dBYngO3aV+E=
X-Received: by 2002:a05:620a:408e:b0:8ca:105a:f5d1 with SMTP id af79cd13be357-8cd6d43d5eemr233443885a.30.1772799733217;
        Fri, 06 Mar 2026 04:22:13 -0800 (PST)
X-Received: by 2002:a05:620a:408e:b0:8ca:105a:f5d1 with SMTP id af79cd13be357-8cd6d43d5eemr233440085a.30.1772799732770;
        Fri, 06 Mar 2026 04:22:12 -0800 (PST)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4851fa87e56sm111972395e9.0.2026.03.06.04.22.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 04:22:12 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: mohammad.rafi.shaik@oss.qualcomm.com, linux-sound@vger.kernel.org,
        lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mailingradian@gmail.com,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v4 10/13] ASoC: qcom: qdapm-lpass-dai: correct the error message
Date: Fri,  6 Mar 2026 12:21:12 +0000
Message-ID: <20260306122115.509705-11-srinivas.kandagatla@oss.qualcomm.com>
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
X-Proofpoint-GUID: o4MxlFU99Wib-10EI7V4cHAUru78ycos
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA2MDExNyBTYWx0ZWRfXz8eMqM+7o59V
 03I4SBH/AujPHH/a7ExMSmj9wzfrcYGakWLl0/lJ/stRDkq0TuSxHUKGOv50OGwQizC4aymbDym
 CZyJzk1AqHESKYEMKrOrcMNT2/1BjNpFhXmbifrJdpmbcUDmj6aQg+ymUNqZRVEI+MxD+DJeqCP
 K55r7NzCs5ipehtMbxB9eiM6cLvzpkx0PR67Imya8UtZ7KQckQ7m8jVTm9AAEEP2wExqG5kLXTc
 7zBp9QxR0oaL9exLTLkWSwqJtWgEtUVeRT3xgvIwZ2nB/sab5Nl9ARXJtdJaz3Iyiym6IipH6RD
 GpwSQ4d8qDz2oCa3K26Nnmggf5UgCG3St3MPZr5BHEL9dVPRVwNMUsXiW+ZB/KOs06HBXx6Owqe
 tX32CJqqUccW/7Mk2XeLqEzI5LiTMfVfCZ5trl+08GVu0eY3g4BB+6o951JoALgsoJ4WFJOhJPD
 H+yQImRGlpS5k97b2PQ==
X-Authority-Analysis: v=2.4 cv=LbcxKzfi c=1 sm=1 tr=0 ts=69aac6f5 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=QkacBUY9L2qTTJrEq-kA:9 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: o4MxlFU99Wib-10EI7V4cHAUru78ycos
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-06_04,2026-03-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 priorityscore=1501 bulkscore=0 clxscore=1015
 phishscore=0 adultscore=0 malwarescore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603060117
X-Rspamd-Queue-Id: 05A322208E3
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
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-272060-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
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

Fix the error message to reflect the actual graph stop error
instead of graph close error.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 sound/soc/qcom/qdsp6/q6apm-lpass-dais.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c b/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c
index f68d4b4974f3..472b2114c81e 100644
--- a/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c
+++ b/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c
@@ -150,7 +150,7 @@ static void q6apm_lpass_dai_shutdown(struct snd_pcm_substream *substream, struct
 		rc = q6apm_graph_stop(dai_data->graph[dai->id]);
 		dai_data->is_port_started[dai->id] = false;
 		if (rc < 0)
-			dev_err(dai->dev, "fail to close APM port (%d)\n", rc);
+			dev_err(dai->dev, "failed to stop APM port (%d)\n", rc);
 	}
 
 	if (dai_data->graph[dai->id]) {
-- 
2.47.3


