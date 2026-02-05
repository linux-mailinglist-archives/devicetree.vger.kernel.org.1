Return-Path: <devicetree+bounces-263107-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wDtBBA3RhGk45QMAu9opvQ
	(envelope-from <devicetree+bounces-263107-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 18:19:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9683EF5CEF
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 18:19:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A331A309EF75
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 17:14:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3003E43CEF5;
	Thu,  5 Feb 2026 17:14:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dO7xpI1J";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PcRw5R1M"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D36A243C07E
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 17:14:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770311666; cv=none; b=CLYwFTYkOD1xEOhgVCraXCw8nH7yqkIoDWLNgzW/eMciI09GqfTf3t5eoTX0M323Ml/tytaTb4H7Ui7kXasy0Eo12L//d/tGag8bfbgun6fRfewdm0JP2Hp580q9/+cjsIvdV9hQu2YhOVYspWQMBzsPsv0TFSOr/ZKqH51sfJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770311666; c=relaxed/simple;
	bh=OpBfp5jqslbORQSzmdK3zOW77Ndk5UkWCXVD4HYaUd8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JP4NYTOncQMA5vh14xIflPX0xnAefjBo7KU1kmFMG5GyhIJvIXIyBOsD/s2cmfpWUIYYS4eIl+8oB949K1+OX02xSf1WJuSvK88MWUwhw0m13R8zH56bo3n1NJGg7AOOoUArDJiHyNDFtn/Nek+gD3YKYWF4jYgjUFNLyxXoMVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dO7xpI1J; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PcRw5R1M; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 615BhKBO3047940
	for <devicetree@vger.kernel.org>; Thu, 5 Feb 2026 17:14:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=I8kPziSHEPC
	7tP4o1IoV56rLMTkjFafRmWxkdzxubVY=; b=dO7xpI1J+lqX593XNrV0Diur7xT
	L7ZUseOm+AOjfsgDQP9Qdz+SYhrFZAm0JTXq/x/nqZxoxWrWOYZ2EE1Ck29mYQzl
	HmJ+GkCzcQSqQH45/SdHgmSXzqfIUr8nHBWB/D7tZa+zq2C3DGxzswBguLO/7rqZ
	K7qR59S7DBTyjTXXaEVa7z+SLH/HvAhKMGKWQHbprvSMEhULF5O4OntTWbDRk3MF
	baJrULQP/epFDFPtfWF+dOJ6WkWgg1Jx7DIFHyMTjWmxWtlk5lbWXI2H3N4gIyRZ
	e9pX/8A8imOqlw8pn4iUmO1MC7a0n+o6CZaS2qHMnM9QXdpbh2S3kbdf58Q==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c4mrtj7mx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 17:14:24 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c881d0c617so324065785a.1
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 09:14:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770311664; x=1770916464; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I8kPziSHEPC7tP4o1IoV56rLMTkjFafRmWxkdzxubVY=;
        b=PcRw5R1M69RP4MIOJTeYQzOVuOA3H3hhQMPUjotTCu4ZdyCnyU6m5pG/4LSS/QCdVt
         /QvCgDxYlaPsJn6MgJiaOUmvxBW1qQxWFdlyRJQN+WLz70lM26ytp8YR7iyZ1uz3apGE
         K8liwiMREtrtc7Stl5xg3hd74JqsJoSbf4HsYueVRD00fyDsM731b8xKj4v4KpqOiDg+
         rQDxu8GONW4sHqe1uqKPiz6BE+w58DnXDgtQvSqYyaiRSWu2aba2YdqdhfVaVYCvzIAd
         Ukk5t5KPwcBp98AX8UYFNkg2u7BCF43Q7lOTH65HS84iMj5+xqEN9bbsgBpXIaBW32Ia
         QhIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770311664; x=1770916464;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=I8kPziSHEPC7tP4o1IoV56rLMTkjFafRmWxkdzxubVY=;
        b=A4b1a+xahBfF+EsXzYEPJqEtVwg8t4IVJaaCI0cbV837m3M3l1hS1s857gWg6Gp+3a
         LuT8aPveJS2HZ/9XU8UmOotga0/Irk50JykB216C+MTAYmW4VoaObwcxl3WT7wF6aDmj
         HPUl0s+PdbtJXQleK1fcyPgbFyj08O+8Ir70NcVT7bLvqKUHkY1aJ/bpep0E92ANahTR
         OGl29PBAb1MLiAZY0TeW0VYPWjo2LOuxJrXY1B6I+5O5YINiRv5/LhojbY3PKXYO9//6
         +qK190DCGNa0f3fC7shvNBft5F2huWF//u9yDM8nc1bgcPDsZm5RjLGZzLifXbgcVa7R
         jkig==
X-Forwarded-Encrypted: i=1; AJvYcCV4hZ9L4by3WgDJ+GIZ3S1F+07/q6wACgUTzHqJIVKRLh4Morm+gYgmuexJItL+2TQEqaYHKjiZe09v@vger.kernel.org
X-Gm-Message-State: AOJu0YwhAb71oMnAnpM5kW/7Z58ToF6GJzcYm3z+Ru3VwTZZcfV1aQ2p
	6OY/BQstLS0pNYNAWJURPzPO/68d/e31K6PIjDKoxEHJ/6Y3DtjgxQQFOjZOM374sOwJhqY4CVK
	Efmk9jcOziuJOiYzzRPVCqab6vLuNKLBUXZ8BxCaH3AUxdebWtGP0iEgJ/cSJI/T8
X-Gm-Gg: AZuq6aK4m9NrFbR/JkEIVZaPlSPVpn8Bsr9gQKw2rk3hz32LHvOfWJwWmHzNRzU+YpW
	fc4ttJq9W0PODK3KbRinDUI5t2ZIYm+J3N07bzymt0JghfMeKGSoCBrkA+IYD47E3ewd6/FsZKn
	e6YPdPCEJSxxo1TWgqdJ8BFMcrSfMeXNKkLZFLJNg3XVzYe3ynL65HlZXM7jNvi+Op7y3m3LWmA
	9t3fQbNZ0X+ZcfZZJQzvlr8FPaS1C7GK/VthHCpOdwuFkiBQeXdmpmYsIDDIXKXh0UZbdPMZzYZ
	EAINTO5bddcDTSapDD5m2i/irQ82LsLKznwqhnqHMvMNNzCkXmm08jSxgPOdlKJjT3OWj3C3TuF
	HkBuSHEv4XKPV8SpdECzH6pvTzKjb0fAdsMpi6hY4h2E=
X-Received: by 2002:a05:620a:2a15:b0:8c6:253d:5187 with SMTP id af79cd13be357-8ca2f83bc03mr899696785a.11.1770311664130;
        Thu, 05 Feb 2026 09:14:24 -0800 (PST)
X-Received: by 2002:a05:620a:2a15:b0:8c6:253d:5187 with SMTP id af79cd13be357-8ca2f83bc03mr899690885a.11.1770311663650;
        Thu, 05 Feb 2026 09:14:23 -0800 (PST)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43618057f87sm14802849f8f.21.2026.02.05.09.14.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 09:14:22 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org
Cc: lgirdwood@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
        cnor+dt@kernel.org, srini@kernel.org, perex@perex.cz, tiwai@suse.com,
        alexey.klimov@linaro.org, mohammad.rafi.shaik@oss.qualcomm.com,
        quic_wcheng@quicinc.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH 06/10] ASoC: dt-bindings: qcom,q6dsp-lpass-ports: Add Senary MI2S port
Date: Thu,  5 Feb 2026 12:14:07 -0500
Message-ID: <20260205171411.34908-7-srinivas.kandagatla@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA1MDEzMCBTYWx0ZWRfX2Bx21RlPakAX
 YKpYmeQEq8ZYf5PJy4zEjPZkklZj5LnymaXdPAYeUHIhkgtOogWgnyl2gfaNOyjzmVFdVNsXQdd
 RjwMgiaQ73gubIs7KyhpoZuyyA8oRavdDSuL54a7jHLwkaJ7smPLHEQdfb7naoCpQGrksce6NFZ
 GVlqzhn1LWLyItgPOkOiYxypNgwlPWqjVCEovCUE7qWaYPxezBHizcJeKAZb+n5fRghOFcYtm4B
 eQM5qLfSCEKGv2sptDtnu9ta65+Pl1lCSGKB8U+alPaxGGwkQT5c/AgbYlKYhXk3V2lFSU3/Mg5
 xYvaoB3NuzGNW/z1gB8s8+vxDz1u7JdssEfnv7acqvHpdsg3E67BxE6GDyHS6vu1CLhSl29ls0Y
 JR+vUJCKS42RYdoywLX5ORF7YaPR8xyw2LawLUigdSvgMHJ5dFuWAEEaII0A7YvSuYPVR9qF+IX
 UdSsAwNu81DZs0DbzYQ==
X-Proofpoint-ORIG-GUID: -7Zur3iODj4nmyvKUcdxI2sBTXzabNM2
X-Authority-Analysis: v=2.4 cv=UoBu9uwB c=1 sm=1 tr=0 ts=6984cff0 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=S1r85Wze4wKqmHhc2Z8A:9 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: -7Zur3iODj4nmyvKUcdxI2sBTXzabNM2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-05_04,2026-02-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 suspectscore=0 bulkscore=0 adultscore=0
 malwarescore=0 spamscore=0 lowpriorityscore=0 impostorscore=0 phishscore=0
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
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-263107-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
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
X-Rspamd-Queue-Id: 9683EF5CEF
X-Rspamd-Action: no action

From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>

Qualcomm platforms support the Senary MI2S interface for audio playback
and capture. Add a new definitions for the Senary MI2S RX and TX ports,
which are required for boards that utilize the Senary MI2S interface
for audio routing.

Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h b/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
index 0febc641f351..715bcf1bccdd 100644
--- a/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
+++ b/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
@@ -150,7 +150,9 @@
 #define	LPI_MI2S_TX_3		144
 #define	LPI_MI2S_RX_4		145
 #define	LPI_MI2S_TX_4		146
-#define	LPASS_MAX_PORT		(LPI_MI2S_TX_4 + 1)
+#define	SENARY_MI2S_RX		147
+#define	SENARY_MI2S_TX		148
+#define	LPASS_MAX_PORT		(SENARY_MI2S_TX + 1)
 
 #define LPASS_CLK_ID_PRI_MI2S_IBIT	1
 #define LPASS_CLK_ID_PRI_MI2S_EBIT	2
-- 
2.47.3


