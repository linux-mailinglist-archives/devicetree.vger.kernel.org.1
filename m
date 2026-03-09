Return-Path: <devicetree+bounces-272702-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 3lDWKHBurmn8EAIAu9opvQ
	(envelope-from <devicetree+bounces-272702-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 07:53:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E1523470C
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 07:53:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1A8EB3019186
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 06:51:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 391263630AC;
	Mon,  9 Mar 2026 06:51:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cmFK+nWg";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kpqAWjPF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1F71363C75
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 06:51:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773039109; cv=none; b=H05czv1TEcY4k9IBzRdswXZ1bgkbNFxyy4D003RQzimrdm0vAstndW/uJNXHx//Jf8yIlMMRscLQsuGXQJEROU4bHKlZ0hIfKivNC5LBAkhpS5q2bu2fZf2UuUBCX0QweE58SgDhZb5pp7Lfj46y9hmf1FZsY6AN38qp+NgYqoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773039109; c=relaxed/simple;
	bh=KvhN5EIM3XXPaotrLaYPSuOdgBSYq4SNpSPqi8ZqfN8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EMt09cf5nyHV7Ut1l1ky6Po/gxNFEhmAKVPihc5byy2iNBGmCegURW7FfN4rEW0Oh5yS2KiNDTEmRg8Hj9eHESHKlejOsILO5iELcbZuATqwEoLvavEYMkTCh9cWAW6Aax1zgZlWH7rDagOAxyJYkNRVEsphXZEhLucEWLEj+JY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cmFK+nWg; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kpqAWjPF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 628NbCRe3089238
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 06:51:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=K4gYoo9JoJP
	OJ5mTuliJj+hphclVDgk4+5Zp53bnrEg=; b=cmFK+nWgaDRXEf7HW4kJDJoEKa0
	1ycRV0TDgd+0gtsdmZ+4bfDhLlM3XRafP87CNKDp37kDvzXxu24zvDSFjtWqXNqK
	BjUQtCnXh2ehPKgN7XFpgnLO4XViA69vcuXfrjNbrdTyYl29KI+1dvKDq6iUhkQC
	AuccxYKMnwUbSkU1rEnD2Rzoq6BBQMEqm5VFRtwAtF6Ilwf5vVPpruEhPC0X1NmR
	poto8vkAFhAQdEFYP3UlkChMQY0qkTCFKmuBpwt5g5FmihfPSIK8ewurd2h4jED5
	OXIgY1svOB20ZiovTNA4me17eYrdnQI3lPnY06yEq+g/lVokHKdz9o56REw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4crbkxv7ym-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 06:51:46 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd722c1a69so1249112885a.0
        for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 23:51:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773039106; x=1773643906; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K4gYoo9JoJPOJ5mTuliJj+hphclVDgk4+5Zp53bnrEg=;
        b=kpqAWjPFG2FDzh+EOcuQSRskd6a1qNXs5qx0+50lBkXlkPavQm2JyMbKtyat712NaR
         Q1rA/G4O+lBfiBUP6MigCvrmctMKKtc+pCFKF+Pa/lMLdAcTYkFEDqrH52oHPT3ggCFl
         5urxfo4QM6HbnBbyihLiJxTpRHpZTu3dGnOUkgj+zYFB9OP7SHsdWr8vC/IoqxoO80/8
         I7VRUB9311qNJdOM1t065zCixOirUJ9hK5+mmBEb3ZjD7H1J0U//ojzjdo5bMbannm8w
         KgDbYPzs5EqISGiwJzTh602SUHE9qqQbYYJwDposkuXDHfQGB/PMr0+J00lv4ft7p7II
         Aquw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773039106; x=1773643906;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=K4gYoo9JoJPOJ5mTuliJj+hphclVDgk4+5Zp53bnrEg=;
        b=D1Hm1mMJzitxV/sGSkX5qhVhPX0R4K+lheM5mL0WtJ371C5lDIRYh0CYuoe5ihSu0Y
         DFNeO9rKbFTtMixuuO+Rb8nrWiiF0pqOixpdeyMJa32i9AB2cNjS479FqJesgZqP2zhM
         Tl+RAiZaRa5RraZKfZ+Z1Ug7VnYt6pdxMrRfpOHX8+1+18UBrt+sofMPtVRgMmQHQgYF
         G2SDmuRRXsZOOu7C254AmVtvpWJ1c8O0glzD29hM0vX6CGwJrGJ6CV63N5AT1nr8DAqD
         IOpfuaWfl881jlySOF5apgKM4jonPS3ssi6TjBFDHivJg1ivF9yCLT/RC0GFEmwB+Iri
         oX7g==
X-Forwarded-Encrypted: i=1; AJvYcCXXi0zaFdUBXH+dLHCFYJVUD9bYU25Vyri/Q/01qK3hoeCPJDSkBx+V2KUtkJjz1dKaVujef1XEs2HM@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8ykKeQghixKn2vBfvAN1irYT86rCMaUMHdEkprcMVfDvsTwuf
	CSSCVNESBMQStZDiglJopUQBhubxU3AxED0Mu9nSJrTzEpuJY1v9RkJ/R8ZRCt05J6AsmKZ3Ejq
	rjiVWGOpbIQJ8+LnmMHTK6p0WV70oyw5ELaatIZa7yu40xa28fB6IqmLG8q2LtMHN
X-Gm-Gg: ATEYQzxW5Fj776POikdL00E26wzoK5WNFvYmBxI0zVn1u1r6vaf7yTGNDNLnLKrdmul
	VzqwTH8t/rgcKQ8Ucrm00WY5tpCg0N9w+DdUrr5s4iCGOha+En5nj8OOkpVz/asExo1g05spoHJ
	n/EzSJ8EuN2v8FrP270/D04QtSzQ3FqYMTjps6XeyXuEaXQGYDFnyrPQLOMwoK6dnI9NeLZSD2t
	T3r5s6ri+JZvblVOqna8iv84oUI2LCcD5p8nh7XPXAEGTpX9cXsvbKhbUQeAgnc+KwecaKhrfUN
	+C9VGAJWsxBYbYCaGzVuZ4FMoRudK7gM7Vye/LcQDv3yZ281iUWaPwISlTd3umPWRWtj9fRfXpd
	3QtvIZxuIgVC3fSGJE/qx4O+wtlnE7sEBVCHAHHv38ZTCUdDRRA3+vGs=
X-Received: by 2002:a05:620a:25cc:b0:8cb:52e0:15e8 with SMTP id af79cd13be357-8cd6d4a9f47mr1282176785a.76.1773039106241;
        Sun, 08 Mar 2026 23:51:46 -0700 (PDT)
X-Received: by 2002:a05:620a:25cc:b0:8cb:52e0:15e8 with SMTP id af79cd13be357-8cd6d4a9f47mr1282175585a.76.1773039105857;
        Sun, 08 Mar 2026 23:51:45 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48529f01997sm80449975e9.14.2026.03.08.23.51.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2026 23:51:44 -0700 (PDT)
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
Subject: [PATCH v5 04/13] ASoC: qcom: q6apm-lpass-dai: Fix multiple graph opens
Date: Mon,  9 Mar 2026 06:51:28 +0000
Message-ID: <20260309065137.949053-5-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260309065137.949053-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20260309065137.949053-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDA2MSBTYWx0ZWRfX9H5j8iVYGLyO
 /7xuYoCC64qdbdH3G4E0VVuHnxiUoIaLC238yYjW9o8cq3v3UOG9iE5PGPOa+zx/Y6vdyZiHNsS
 7ifHWMrT2SX/K2RXTjjxjvj1Ehf+corswuaeYnphL7ojxh8UBn2HVy2R9vgtxK5ZqnyMyTYIQSq
 EBJrBLDNWPia9B0b4scOxy209u2Gb27+57rbKFaQpH7+jGzZ886g8jNcp2f5vVtCws3W7n6Fmju
 eEDLVfnH4is98GsU4X5k2Z1lmy8Sw0mcwulTSuFrEmU764jWuyHv0e9dd79Iwpsd5IoZ5r0KtDH
 au8NKT8ALZ7tqOVSev4RFO//O/NDH10Bmpq/vRwQquZRTQPVx3tovfhzOfWy7fy2Pr/gPNsTqQ7
 mLvOLHab+nSDCK9rCiEHquLpsGNXv6IQKtg3RlyzBzHRhDFKMNN4TGd/5yX8K6B6fvQoVjbaIaA
 R6z7XtZ2Lc/LSJCy/TA==
X-Proofpoint-ORIG-GUID: dANQYLERAA_In2nMiCSNEtsa6gb-NHXN
X-Proofpoint-GUID: dANQYLERAA_In2nMiCSNEtsa6gb-NHXN
X-Authority-Analysis: v=2.4 cv=LOprgZW9 c=1 sm=1 tr=0 ts=69ae6e02 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=M_mAHeyD2EURj3i0m2kA:9 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_02,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 impostorscore=0
 lowpriorityscore=0 suspectscore=0 clxscore=1015 malwarescore=0 adultscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603090061
X-Rspamd-Queue-Id: F0E1523470C
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
	FREEMAIL_CC(0.00)[oss.qualcomm.com,vger.kernel.org,gmail.com,perex.cz,suse.com,kernel.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-272702-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.997];
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


