Return-Path: <devicetree+bounces-278315-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0FvmAaVgvWl09QIAu9opvQ
	(envelope-from <devicetree+bounces-278315-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 15:58:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C5402DC274
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 15:58:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 81CA23069409
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 14:49:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27B263C65FC;
	Fri, 20 Mar 2026 14:49:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FQ+aaAc7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dyamLq/C"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDE453C4560
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 14:49:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774018169; cv=none; b=VBYmoxX3T3IAdpbPgBQz5wS1B/3sMrMAnSUYK/L4UGV759+vvFz5WZA2pElzF0NchIF05nPrGU1aplfLNYYHTMLutFMCZbZQhC7SEiq5yIMf5aZiGjQWbpnbtiJZSc/HrjOMFqH79dzeuZyPBZRsYV2mVqlwzVfJRaGtkLaVlLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774018169; c=relaxed/simple;
	bh=sxyYbj3zxGyfRpI3tYXCbVwGVDNatdwD9Ux1a88/YYo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=O4IUuIu3fAwFEeOHi+c75qKH+uvYFZ/4wDxLBmpeBuSfvAwYVUJxaBp6dqkVFfHetKw9YTAKkQN1Q/tB9T0ZvydWcRxYhq6wNWFpWj9NuOEv4rCiPvcLuni88SrJdeEQTA45P3N9S0MSWMJN/o8FN5cMmMwnQMKYlTMLSFrPOXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FQ+aaAc7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dyamLq/C; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62KEK8g71691935
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 14:49:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=oI+beZBCKKS
	Zpk28i+hefm0WpeZ3W9cTVjnimZxiaSY=; b=FQ+aaAc7h9ZrQOKWPjwGC9xcefB
	kCYkN4qdJBd+zC/4XqZcJe/3yGsE9+MAmdz++r+Hu/oCU94b4FvCbfpUa+g3hgu/
	KXHo7v41tnb7lgLvv+5lmRO8bOA6c2NWN0AkvPXIZmYSBA5KkXMtx2UKqDFHCih/
	rcPqOfL8iL/GS4nuBDKNpp6kEBz3uwBfHwII0omAELAEB2fDbGG0zqhYKukq1mbZ
	jmunCSUB4AVNVPt+Y4nDpQUooznEhFKkAnro0RmbJ1c+7hAgJAe6sTEqUtPoRpHF
	ggh+FqLr6mvXuk95NVmtetkhP0he0TUre5CUIbvun+ZwUiKy5RLyMFZWYGA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d0s5d2apd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 14:49:26 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-5090cc6a7d2so52194791cf.2
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 07:49:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774018166; x=1774622966; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oI+beZBCKKSZpk28i+hefm0WpeZ3W9cTVjnimZxiaSY=;
        b=dyamLq/C3m2W7E1R9Cs4JwUDFKHIYrH+G/ZAhHRzPk8eHxCgZBQJHATQNXfu98/pHM
         1zBULLKIg/gtNAh16txqnNb8qg30tytNK+U3hmjbVZXzWwHpXpTPakytVvSfzihj93kt
         t1vcLT6/JUz/xqCCC+et/xghkssPshIhsyTBEqWaldUeL/YvUCtoCBMGYXUAmLf2JnWH
         LPiwcY89iM3zo1DW4VBiPbQfKJ/182ACMv6PgCN2j5Ni+Bn01EjSs6fdPQ+EEVxis2KF
         nItIGSf9Gk36FeSmyk7L3veVbRlQ9Xhr4Z69siXvfSLcbmKEEpYMGoWwv9rRhpdD60R6
         QqUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774018166; x=1774622966;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=oI+beZBCKKSZpk28i+hefm0WpeZ3W9cTVjnimZxiaSY=;
        b=SXA0O3aTl8ZFL9lWMcFokR1sJpvni0wbIPhArr96EGjwU799fjHZIeIcTvfyqqlbx/
         9Rs9dZ854zy4588ax8T9xo5O7i4jlCiFRKMSZodoHuB6NIPB14myUUO55iJLw72YrU8g
         uRNiPl8u+MGcgwEZQzhpI4Pr1zwFSezIKDqf+W0WDdfowk86JeZ+f6VTDAqF8u4Jhk6F
         tQ3D25gh1SlN1KrthEFWfu1LybE3bldashP5s9w3xZY0lz9CNEsiOmR2lOiEX5KkQi9Q
         L063t8YXM51iqdBBLPVBfqCJNJlwnrMAU2uqNTDsWRja1xxALuJjvCI3PbrRxWaweJ0J
         XBEw==
X-Forwarded-Encrypted: i=1; AJvYcCXonXN9Tt9fPOsPGvgUTQ3qh3Mx+Iq2Lf+A9Sos8dh1Q37enUvOiryZjFFo+rRNNmrN54aGqfVGypnx@vger.kernel.org
X-Gm-Message-State: AOJu0YyjnchrYEU7QJ3KISm56bMgjKo97UMKqafVs8NwsX7dDMmVBSyh
	yjTErQAqlTDwWmgdg+YQ/ryWzMF7h8M+X59rmeV2XHfd5Ldum7ge7H+5w06n+zz8x6TjnW2I+vT
	q3CBdaviz4ix0nAwX+HAtwzDTS3tV7ukoPwCxHBQKGR5u+QzlYituUMSfHiofyO+3Q6MoeBvC
X-Gm-Gg: ATEYQzwThP5McstCESSc6ppta3etd0PbDVHgatiNOPzXP2ZlSsN9rlhuOmuiYzKZMlh
	Iv42DPjj/4X4cbYjtu/Rs32HzyVjrYW6CQ2o9dOZYYW0a0mxH0IHkzCFHlGiKmYd3oKGxqaKLEu
	b+9DK6XeEAAFlSM/gYcjzPRMfmvltbI33L80xYiGFkeMeSlHMbb9FF3Ob8SovOgKMRZ4qik/zjo
	jwbxsNr5lNaqmhRqFYKpwWzLCMjcoHqn6srOfT8lIqdrZFGvhTo2mGPOrmkHPrkHvmRi1x6WpJb
	ilJWoChvX6MeIcNG9lYiUmjofKMls5w/csahd+bL+N3NOIYgg+phExeSmeKLiGGKSbeZUMqatvR
	VGcQsDGtoj2tCwh4x+CJDiIsFqNuztGMS27w8qOn+fCsSHmCsJ0tX8Yc=
X-Received: by 2002:a05:622a:5c7:b0:50b:2096:494e with SMTP id d75a77b69052e-50b37473d55mr47732911cf.30.1774018166052;
        Fri, 20 Mar 2026 07:49:26 -0700 (PDT)
X-Received: by 2002:a05:622a:5c7:b0:50b:2096:494e with SMTP id d75a77b69052e-50b37473d55mr47732141cf.30.1774018165404;
        Fri, 20 Mar 2026 07:49:25 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486ff109b95sm47906825e9.1.2026.03.20.07.49.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 07:49:24 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: mohammad.rafi.shaik@oss.qualcomm.com, linux-sound@vger.kernel.org,
        lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, srini@kernel.org, val@packett.cool,
        mailingradian@gmail.com,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v6 02/13] ASoC: qcom: q6apm: remove child devices when apm is removed
Date: Fri, 20 Mar 2026 14:49:07 +0000
Message-ID: <20260320144918.1685838-3-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260320144918.1685838-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20260320144918.1685838-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: PQ2XWEDV-DADl6RRH-l6YCFBnRVMn9Vv
X-Proofpoint-GUID: PQ2XWEDV-DADl6RRH-l6YCFBnRVMn9Vv
X-Authority-Analysis: v=2.4 cv=CqCys34D c=1 sm=1 tr=0 ts=69bd5e76 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8
 a=WbEMVPVtDBSXEMPt_8MA:9 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIwMDExOCBTYWx0ZWRfX9ZgfIASCMign
 4DHhS0uFhDpPoedAfHtD7Jn/ym1yaDR8KDSZZe67LmLZfkAmb8wijkSbAFTzwvTSGtbAKuspgDR
 C4zG6Sfxz2RRWdVxMw+fN/L4yPAoPF4ssv+vPux6T9H/u+twdu4tNCd5NCBmyqoq9d9WfQruJ2l
 PnSym0TMcrF6QoFO2jYArFBrlLoaiTm9i5oLuG89H370ca09mw/6ny+D9GyOYMl1UONaA14vsVF
 ZZJkEa8eJ8qkUg+CYMVYivqjLH+1dsJRTaEtAwP0gpA5sqxNTWJ8+wDpwMVshd+mseref1G6aOh
 VSKkPP8CzbsL68KkHLM1bV6SUHgSh5CdF3rDj6aoOwtByPiQhTKKiQkrM87cXTGPJjc3IZtG+ft
 oPMTIgdsIZkmhayilWjgJr9qJTzHe61dPa9bUUNIGEJq4RY178p/SIM1SSqyQuQo/dJ4t+hmbzn
 NbgjaKTNIEmWWViSOHg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-20_02,2026-03-19_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 bulkscore=0 malwarescore=0 suspectscore=0
 impostorscore=0 phishscore=0 priorityscore=1501 adultscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603200118
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,vger.kernel.org,gmail.com,perex.cz,suse.com,kernel.org,packett.cool];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-278315-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.970];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9C5402DC274
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

looks like q6apm driver does not remove the child driver q6apm-dai and
q6apm-bedais when the this driver is removed.

Fix this by using a manage version of of_platfom_populate.

With this change when the dsp is shutdown all the devices associated with
q6apm will now be removed.

Fixes: 5477518b8a0e ("ASoC: qdsp6: audioreach: add q6apm support")
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 sound/soc/qcom/qdsp6/q6apm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/qcom/qdsp6/q6apm.c b/sound/soc/qcom/qdsp6/q6apm.c
index fece0e3def23..1fbcbbf3123d 100644
--- a/sound/soc/qcom/qdsp6/q6apm.c
+++ b/sound/soc/qcom/qdsp6/q6apm.c
@@ -753,7 +753,7 @@ static int apm_probe(gpr_device_t *gdev)
 		return ret;
 	}
 
-	return of_platform_populate(dev->of_node, NULL, NULL, dev);
+	return devm_of_platform_populate(dev);
 }
 
 static void apm_remove(gpr_device_t *gdev)
-- 
2.47.3


