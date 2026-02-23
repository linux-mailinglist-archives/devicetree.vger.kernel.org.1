Return-Path: <devicetree+bounces-267583-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +BjlBL+XnGluJgQAu9opvQ
	(envelope-from <devicetree+bounces-267583-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 19:09:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C8D1217B475
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 19:09:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C79523056E4E
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:08:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 329DB33C19E;
	Mon, 23 Feb 2026 18:08:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="H8r2I+7K";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gNU4R34I"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1ACD33B966
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:08:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771870083; cv=none; b=a1GkUWvEVeBQ5Jh6wgVxwCsYtRFApclISrsfyav0sHKf0hmG0e0l/1IygHoj32l3UXhYbI70wdhwm63VDgVr3YtOD0YOFVliCeZt0WE5kkCrwlDIf8IKiTyj0la9ehGFE71kuj5fxOiRyci+ucIf1v0pYg3WjQ8kZYwKrFk++Ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771870083; c=relaxed/simple;
	bh=z0nBWK5+F2wsJrQIhtl6TV5njKOz8lu+80qf9G2Sim0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Wp5pSRx2HtT1krKDZY3msUGyXRRWIM9oeTMzKF3+NaQsglcpdY5ZkGAoNDuTnXza8EcZhrxd86wOkTEOrnDvU2Fq55whypfW7La6mtEj9hdYF0o6Vnh6j5KHd4GNt2gzQz8hH7sfGhacIPya6lmBqPSooV8Zdnp72T9/Q3JbDKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=H8r2I+7K; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gNU4R34I; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NGFNHe3936279
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:08:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=vJxFLg7wg9k
	swXDRQsScAbUneSzeSw/ohZQ+0IC4ocg=; b=H8r2I+7KV8h3oqSJmnLDpVD5DrB
	TJAJH1j9/fPIoXssIrJ7o8VgeLWj5xTEq4mugrSm8EvoZgZ9DK8gpjFF+C3aJfCc
	p4KBiRrQmTADUN/TTtixKoLRU5nL1Xxz8OENvGrfTe9qkx8GKAPPvlzh1GkG5fUC
	EzW68UON0TZ4AfPm5VxTp7881nOW+R4Py310JLdoW/G3bI005QNpmmO8APk5ZaJN
	BXbXiMZgz1p4pwvBXpgu6V3kqbBKV73QKCOSoe+BLTzlcu/qImKRvr03uf9IdWjy
	0DPKS8zrKQlzuorSIYCuxuKyXcj9QOGPhr4imCSebQlUCico9gBCf4NX/uw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgt8mgchg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:07:59 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb3ff05c73so4417532685a.0
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 10:07:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771870079; x=1772474879; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vJxFLg7wg9kswXDRQsScAbUneSzeSw/ohZQ+0IC4ocg=;
        b=gNU4R34IkcLXbdc5o9GztyjYW24HM3lcc8HC2O+wIHO2sF3Bi0/yNTaTX6PBwxKEpb
         t8O/zpJhX6Ekggb0QQ2r2nPpESaVy5IRUksaAMJQGqcGMwfLiGs0eOgvX9hzI52ITAa9
         QafDfO5fRyBK+mi5vBVUHyfQFYMcaM/m5pVqod2hmpjqPIVJ7rQWw4BmkftsiCPY6NW4
         vQis1O0cNpirHcZITg62FavG68CI8flx3CAECtQLjZw1lJJwHK8qmMwx8OAwCO98MKbF
         Z7G08THef+9HwPHiptNU2kYAhyuH0cPmf7y/tFuUE0ShSyykFHms02d/b1Y7UszWsDYJ
         USXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771870079; x=1772474879;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=vJxFLg7wg9kswXDRQsScAbUneSzeSw/ohZQ+0IC4ocg=;
        b=QQoe7JXMZKKr75tN6Purrpr1vygC/4T+I3Edo04923aGeIe8u102+NIAT5xJRjr7G5
         8SMdnP/ked5R0xaIpzkDTSZn83gGczlpKv97qzAQdvJ5g7/E14pqmGq5nm3SrAp93x9+
         jW6+ygApjblf9XvMFz3EE1O9bqbo21HDgZa/EHHLRd0FaJUl8we/xfZU0KRVJ2b9BbKN
         kg05VB7whICtHfzjedZUnzCePoCKcQmJ9jRuU2DWJ5nA+TQtbQ0WTZLAzJRgJB6zhhmg
         qAdh/qT2ATx0yMC07dJ8hxD5zPsp83DcPwnqXw2oeBw/PbGm9Xjr9/loO/Q5ZqJSMuOr
         W8hw==
X-Forwarded-Encrypted: i=1; AJvYcCVRpFuOAFydSmSdDPh5eDFUyzsGu3pIR90+DWZy43TyrqK6FOcsfUjraXOaGLJGv+xu00KJwgp14DPN@vger.kernel.org
X-Gm-Message-State: AOJu0YwMz/bPWS/fZForEe/cyayfRz6uz/V9jfuxuS1d+mS7W7Fs0vkt
	Za+4DdO1yylKivkItTmoTsCDykyF5Ksr77e7j9dqlH1Xf8rTgscQZCbb9AwCYg1bLHEl3DEle6B
	63P+SNt+JPFfcIfQyvfMbW4A8oP2LCC3IRWTYt1fOwLqaUwrODfj4XnxhklKJw5HE
X-Gm-Gg: AZuq6aL6MF0T4z6MCzWfqPRbxhbee7F70VJly7yYHOldiDjNwGQmOcIf4nko8yEnpKZ
	pMcxDxpthEoElNJZxAd55TP7fW4XiHNvhjGenpAQFx7PoJDBigRrhv9OpPOVbIdG8ixND0aWQYj
	jE33NaYmk0/luvwmyM3IzEII01PP0SstmYva8GVw/CildsgyhNfeVV4Xk7nz/BubDa3Mm7w0znX
	CyZWaW31e8vbqFUp/aKMBLpdCU9wJSQj6p1hPfZo61dsz/u7R7/MoJ/tRpAjLAtBVbu/cLie1f5
	9qZrUAnhh7MVSNFUijF/b4hsfoFAYPWRPbt9EX8rp2OTljI8JILroznowsnOlI+znBoNmLaD9dV
	R7vslsBoYhSwCGZuQ+kcjMsR3d2UXf12w5yAbJ/gtiy/ZJzS4zOUiDbE=
X-Received: by 2002:a05:620a:408c:b0:8cb:5176:f00 with SMTP id af79cd13be357-8cb8ca6731emr1093333785a.45.1771870079262;
        Mon, 23 Feb 2026 10:07:59 -0800 (PST)
X-Received: by 2002:a05:620a:408c:b0:8cb:5176:f00 with SMTP id af79cd13be357-8cb8ca6731emr1093327785a.45.1771870078795;
        Mon, 23 Feb 2026 10:07:58 -0800 (PST)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d401aasm20458574f8f.23.2026.02.23.10.07.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 10:07:58 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: mohammad.rafi.shaik@oss.qualcomm.com, linux-sound@vger.kernel.org,
        lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, srini@kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v2 03/14] ASoC: qcom: qdsp6: topology: check widget type before accessing data
Date: Mon, 23 Feb 2026 18:07:29 +0000
Message-ID: <20260223180740.444311-4-srinivas.kandagatla@oss.qualcomm.com>
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
X-Authority-Analysis: v=2.4 cv=J/unLQnS c=1 sm=1 tr=0 ts=699c977f cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=5HTw2GpdgXbBP0wXRk4A:9 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: juUhi-JMO1CLQj2XOH1c_vBXOI0Lie9-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDE1NiBTYWx0ZWRfX0G8005r6XXon
 6qng6LSd/Kh32zbrN3LqmgVbNVJOL/jmQhJqKLtR5jA3ohPZrMbftOgcA0nIyNBKZgHpAuXwPHE
 k6gCUdOkSSgJKlag3AqpimlcQNZntKwjn0BcYn9MPVd0oNjezokC5MN5YoJUmcseaaahVwBf64L
 OMNQ1cE06YKAU9MYDp7ARtoxqNPdcyej7bgPxxuBu7+7X+r+9Be4gUb3p11XLZa1oYLSZyuINi9
 +qPXxQdxjg1cazjF4quH+dUOU4gqexEYjX6o7aB2QeQG6U9JOuKBRc+8to7R+CCjB3qsBroSVWb
 PXeHP+MWSfvUMtOA7xLNsgsgZ7oRMs42dQ3rQFSk9/+3xMhQO5nHVb5iPREZcuLeUWO9oy2XlUI
 TKJ9Te3oeii3ce5NH3KHcfNsk3NDQMassO7XcggrNjfiY2M3fGHqQb2JFhHyV1IHMwgP5/By5N/
 ciIR8uIy/rW14ydD1oQ==
X-Proofpoint-GUID: juUhi-JMO1CLQj2XOH1c_vBXOI0Lie9-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_04,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 priorityscore=1501 lowpriorityscore=0
 impostorscore=0 suspectscore=0 adultscore=0 spamscore=0 bulkscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602230156
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
	TAGGED_FROM(0.00)[bounces-267583-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C8D1217B475
X-Rspamd-Action: no action

Check widget type before accessing the private data, as this could a
virtual widget which is no associated with a dsp graph, container and
module. Accessing witout check could lead to incorrect memory access.

Fixes: 36ad9bf1d93d ("ASoC: qdsp6: audioreach: add topology support")
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 sound/soc/qcom/qdsp6/topology.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/sound/soc/qcom/qdsp6/topology.c b/sound/soc/qcom/qdsp6/topology.c
index 2e71eaa90441..80afcc817d78 100644
--- a/sound/soc/qcom/qdsp6/topology.c
+++ b/sound/soc/qcom/qdsp6/topology.c
@@ -952,9 +952,6 @@ static int audioreach_widget_unload(struct snd_soc_component *scomp,
 	struct audioreach_container *cont;
 	struct audioreach_module *mod;
 
-	mod = dobj->private;
-	cont = mod->container;
-
 	if (w->id == snd_soc_dapm_mixer) {
 		/* virtual widget */
 		struct snd_ar_control *scontrol = dobj->private;
@@ -963,6 +960,11 @@ static int audioreach_widget_unload(struct snd_soc_component *scomp,
 		kfree(scontrol);
 		return 0;
 	}
+	mod = dobj->private;
+	if (!mod)
+		return 0;
+
+	cont = mod->container;
 
 	mutex_lock(&apm->lock);
 	idr_remove(&apm->modules_idr, mod->instance_id);
-- 
2.47.3


