Return-Path: <devicetree+bounces-267590-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2ONAMN6XnGluJgQAu9opvQ
	(envelope-from <devicetree+bounces-267590-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 19:09:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A207817B493
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 19:09:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B1579302408C
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:09:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F509341052;
	Mon, 23 Feb 2026 18:08:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MDwcp8Bf";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NT1eaPuM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2151340A43
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:08:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771870091; cv=none; b=Mcd8Sb97mtkeUoZrz9Gr/q3papET+cF4/N1dvcrNueosD4ZZgeiTzubhQ+kknwsAQJL4nrZyjt7hGHV+Gw8Tr4mzUWVfSRLPz+RZXvUOZjNEmB/Ofh4ue825Pz79qY5RO6GXUpdJo4hYt4nmEpIZbXt4mkYzeTxEcfZhPTaErTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771870091; c=relaxed/simple;
	bh=sSGa26gpWdI3zubzr4vR8voY2ZZ9uOTTFQpEZo9CUFk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AsOFuGKtAkBsw+q3So0XpAVpmg54z/RgkEnRzc4fDBacchuK7+NIxHbdEQVlbz5FaI0DNryUoxiBTviM2EM4QQU/AxPYqMAxhutL4Kz+fiPIswSbj7tFGYOlq899iDBAUvYdUqJYcauNxPmIF2dKoI7P2an/3Cu0GFkmQZFCsaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MDwcp8Bf; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NT1eaPuM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NGFSPt3936387
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:08:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=WhVePPPT+SN
	r/7D2LWKoUshhH2y0lkEE57VXfglAsco=; b=MDwcp8Bfxy0VgGZWJDylw48t4FS
	bYHoWtHaXMuoG/0tq7FLaYjsZbWhXJ/xBMHFLTR7xLQdy3d1m+D5V27hE+bKfW68
	iyzHM27H+8+dUxOf0X1bykUAATwdC0HIjB8JznuYJ06GFG0pdSrDFodGY72hT2vF
	aw0tw0t4BGu+oaxZ2ir91aVeOWd3qQcZuBWx5r/amHh5iHa91P3LOLENkRvk2Jmd
	SACHVlmp4KLCNfJWsjNiHMNWw/fbbNJJ3Son0YDWZ2mTTX4/U+QlynKDdkKanWmD
	C0NeeW6DWJ+WepQq/Aez5HDT3VAsT2JCD6pSf8B5fBNxeFrxW0jVEzHxfrA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgt8mgcjf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:08:08 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb706313beso657498685a.3
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 10:08:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771870088; x=1772474888; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WhVePPPT+SNr/7D2LWKoUshhH2y0lkEE57VXfglAsco=;
        b=NT1eaPuM1w34HVNY7gZFlfEA4h2DIXExkkMtnUVl1yMIX8XICoZ7Tpc5IohGAvFG+3
         ESggBOYvowdRZwBHpWM9hXIlUitcrR4hRIkJDshQy66FkH3oA/zAmYyVnbDP2w4JQuez
         /bRn5MZkS4RUGoShpaN2sRb7ST+ctm+0pX8yz12xB1gybLCY5l9UC9+SqkqP40MgOVqi
         z+lc3iGDht9wQVP0T8ggH8Z+30wFQixEQYYMk2dwgDHng+r/xiOnML0K+bblgl8XhOMy
         BlAXdI1Jphtz9XhECz3P3noSeZGrY3TG7ZvwK9HMvjJvdD5k2S1c/ZcQ+WLN8t/5iWHG
         si0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771870088; x=1772474888;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WhVePPPT+SNr/7D2LWKoUshhH2y0lkEE57VXfglAsco=;
        b=wzuDe/OSv53/FXlIj/pc5M1Fy5LFV4+8rVqJY3Z1NDceWwDM2a1GwjljYz1acLjm3S
         hOKdrywCDWU7K9LEulCGaf3bLDLSgAKdjXbKppkHX/xyTwqHUT22QnUFM0fiUz0HPQKY
         N7I9liK0KZptdLoDbhBr0rhrUy1ph1er5UuqSa4U8y7slRoAw5cyZXnoz5+q05/WXnmy
         pFabC2qYsStg9/hyMD17qvRbtS5DBxHdwDZ0dXMzM1DTyMpkx6lB3dThGZPntoOoQAed
         9kXva5rOk4MddeejuB5V3FP7ZZXyWD3ZBE9v7vzlwQ5vfjjD0+ZfIB2NIcGaNUdzBEsL
         Syjg==
X-Forwarded-Encrypted: i=1; AJvYcCXBnr581RhUTBVsSjTfir75unHhRp2tusPsoOV9bfRoOfwqdYAqWXdcntRv953zaspQup9mYGyZqueX@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3kochYBtKmVMzjHct45f9L7poNEARu3gamZgJ4n7UrefnKG4E
	T0fW8M1ebaDZMICKhJURcBG5HL5SjTBDZ6zcE0qcWB65PSCdxUCb9J/QfMzXTiFyCqrtcqi+zCr
	kqSo60UwWK92WXc0QE3SJ9cLkQa6Ntcegvd6YdqEPToDT5mv8YTBxcu0uZitAucnG
X-Gm-Gg: AZuq6aKKh3y+AuLhgVWCxa1Genude/8L0aiJg7oZBJOswwTgrNEc1V5RzGQ9u0wiwB+
	LHUmME2UBM24DRrDSlU6o3GMjqOm7FFEmtOR4+cDdC+DrvkbOWSrleay0RgLZOq2U/a3yhBaLmx
	xRoPqf9HMIICl/kv18eHffpkgmJ167pSDQ1/KIG38Md+Wx8ayCLirg2zd+J22sVyqexApAWc5af
	lFeD53bi3Fc1AxeeO+eTdy1Agmdbpuf6AVs2M49XbeEcOjprdn+8lYAu1Se+XmgrblcfyG0h7Us
	xllIdGXE8pqwReMwNcHOb6gfdLvqa8Ed/zWZ59IgTWRidc5ewMqRzqIPW8OZyeSosaPVOf3PVXT
	QH6NudwI0MfxAAKqBzu9YQ/Dxd38LncxoCqI/pPso54hwZM3jD/QApww=
X-Received: by 2002:a05:620a:414c:b0:8c6:e0c5:7bc0 with SMTP id af79cd13be357-8cb8ca1557cmr1140795685a.36.1771870088154;
        Mon, 23 Feb 2026 10:08:08 -0800 (PST)
X-Received: by 2002:a05:620a:414c:b0:8c6:e0c5:7bc0 with SMTP id af79cd13be357-8cb8ca1557cmr1140791085a.36.1771870087683;
        Mon, 23 Feb 2026 10:08:07 -0800 (PST)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d401aasm20458574f8f.23.2026.02.23.10.08.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 10:08:07 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: mohammad.rafi.shaik@oss.qualcomm.com, linux-sound@vger.kernel.org,
        lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, srini@kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v2 11/14] ASoC: qcom: qdapm-lpass-dai: correct the error message
Date: Mon, 23 Feb 2026 18:07:37 +0000
Message-ID: <20260223180740.444311-12-srinivas.kandagatla@oss.qualcomm.com>
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
X-Authority-Analysis: v=2.4 cv=J/unLQnS c=1 sm=1 tr=0 ts=699c9788 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=QkacBUY9L2qTTJrEq-kA:9 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: uwkLkpBN47W9Fwqb5RlQeWO14zKTof6l
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDE1NiBTYWx0ZWRfX9OsGVO2BNSwc
 H1ZYcSLNqKb/uyKW5CwJ9EAbmKYkK6Z2MNtMOL8iidFA2dDPuB40mA78N6wk7xOzvhU8hD5UaoC
 0DJuQ4KjqnPynQBCHZx27GuOlcJotP/1V/fKQYKkK8Sfa8CIA1GPDZ94njaLp5sx3/eVkAzdx5j
 7MHc/oDzntHSgp3V53VL2d8JuON4Tcpkc3ATdjFtROYpQvYrv2ZtQCAdTaVEXIVgrIdhJ4HS4mV
 hbjtUci7neWqkwiwXyYP7eCCz6TZ1cb4Njjs6S+vFEJjO/2OTP7zCYvQv8hAoEXozsekRkRUzHR
 brvTI+KbexHyLL47f/CmTvK/lZuBqTVnaMXhYWLMCyd/ZZz2hyTQB5jYRjaK/RjmenNJm0zPMGu
 N0jMC7aa0UGrdlhlzHt5byFv7hYYlhsEUKg+HzImLrlA0jYfGtcqZuHQxdUWpz3+k+VEw7xUBFp
 dlonTJjjYuikQjryc9w==
X-Proofpoint-GUID: uwkLkpBN47W9Fwqb5RlQeWO14zKTof6l
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,vger.kernel.org,gmail.com,perex.cz,suse.com,kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-267590-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A207817B493
X-Rspamd-Action: no action

Fix the error message to reflect the actual graph stop error
instead of graph close error.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 sound/soc/qcom/qdsp6/q6apm-lpass-dais.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c b/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c
index f68d4b4974f3..fc246485e326 100644
--- a/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c
+++ b/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c
@@ -150,7 +150,7 @@ static void q6apm_lpass_dai_shutdown(struct snd_pcm_substream *substream, struct
 		rc = q6apm_graph_stop(dai_data->graph[dai->id]);
 		dai_data->is_port_started[dai->id] = false;
 		if (rc < 0)
-			dev_err(dai->dev, "fail to close APM port (%d)\n", rc);
+			dev_err(dai->dev, "fail to stop APM port (%d)\n", rc);
 	}
 
 	if (dai_data->graph[dai->id]) {
-- 
2.47.3


