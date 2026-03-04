Return-Path: <devicetree+bounces-271037-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YJyIKmgvqGlPpQAAu9opvQ
	(envelope-from <devicetree+bounces-271037-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 14:11:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A9022001D3
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 14:11:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 43A533070EFE
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 13:07:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FBD1313E05;
	Wed,  4 Mar 2026 13:07:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="d2G5ebKY";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="j6gljoX2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB5031F9B8
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 13:07:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772629648; cv=none; b=KOEjrUqtcwMtGlpZl/6Ys27VqWozQBDgbgLxD1IIzDHsSlWNI97YxJZwtbsI9YWV67se0NZu3yWJ846pvVT+DabGD2sbF/j/zp4w3da4Ti8KS32IWM5+eMBS/OFnB6txK0TBKGsXONZ9h93xlOJ7u5vRmdeyGV6kmAoGoqeC/R0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772629648; c=relaxed/simple;
	bh=nCfX2ew8MjR6tbO6p/o4VIded8eE480jujZMmjVg3Gk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XSXkvHkQ/+IrM5o61J2gbOj8WFUabNhmwEp0LQHadtt+723WgoMIovivtli9XQCHcZSZCYQxAj3bis8o7rWxmkN1fKqNw0iEzhI7GixHLxMdQDqZnjogaWFOiaoeTbBrLXYaZQR6uMFcdyr426j/DQBbUAlAibmzOnnge0kmH/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=d2G5ebKY; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=j6gljoX2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6245SOKx956993
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 13:07:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=pynfFgOXiUt
	H3xXg8Z0aqV/XyaSIlD25TqToivr9SnE=; b=d2G5ebKYNBmBUOY1/hje1DHkOq2
	hDyPpCPmj0ol/TGK0Z2WcimRWtNNMfhLcuPzZh+jrKGKUEMxBLcxxX6KaqYgS/+n
	cNm3e4FACrdulKMHdLCP+DNlOSB9yWSTmYid1tZy2KBeW5HMH+2G9dXWuMIK2yqN
	7p5QsweL38tTZ5EK5J3Ae2khGHv7JY8Nv2PLP7/Kv5dmP/mIibx7KPZVqFykyszj
	TxMehAx8DIvx8z7TBTHB7svqd1IdYTtIRBLvIFDcxh5FxubjJHXP1FckJIvHWEPd
	tdSC5/5KumgW/gKAgbXpvfu7eR7RIvYjTLJCdOhp4Vt9kMn+N1qgAzZZxKQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cp6qgaxc6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 13:07:25 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb390a0c4eso4369472485a.1
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 05:07:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772629645; x=1773234445; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pynfFgOXiUtH3xXg8Z0aqV/XyaSIlD25TqToivr9SnE=;
        b=j6gljoX2UUfM+kErrykrEj3Tdq/D7co6+F++tfgNS9YyTaVoQ62BQzmMDfJ5X/FcYW
         9PUaFuua5gdBPFPII+pviVEXpBJnOGmHX/tiHWy0j1mBOyEVEik1aXSipuHV2wRGOIDQ
         yDQ0hb7jLlD0SFk8+6mIa0izHr2BZbV0IQ1K93wo4qu3FczodP0KmOoghwguRvRUBzcT
         Zh4hDbFPQG3ZPgjWV0of+lH847eochn5AAGu8w8hXY2l8h0gHTeyAwrgnC2eTuAUEm/a
         g4Yu0cpfOR4cd5mAkfErVf1MgXT1EramkH4tfRmy4WQX4Sm1yuH8KilvpnA/J/y8obe1
         30gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772629645; x=1773234445;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pynfFgOXiUtH3xXg8Z0aqV/XyaSIlD25TqToivr9SnE=;
        b=JZpbnZ7vFnODC+BGdPAnvMT5tzi8JDqqYkXP646fDaPZIkFy1rwLMdPaN8alq8yOKS
         sExh6P15rVO5VJpNukRjI6vInlGfvG447cPMaOy3rzErOiHnsj2JuXS7r+MYVrev6nuG
         Y6VBUekVILfo3xR8rTjQLcliB+8XOgfCQfvDhlITbigEE1wFYqY1cZ8e7AIGyGVa46Xb
         34U2sALcMjFOsD2v9ajwWLMaZZv5NZkVi/DQh480Dxyx64sV5hok+wCFnh1hk9pr/R/c
         +eZJ3I5a2VnH0OmVqVQKgrGWW6Tm/W737khXwcMOQvjH4Dq3aADPvTzqCr7mQpWo1PK5
         cVNg==
X-Forwarded-Encrypted: i=1; AJvYcCUi+qgK323iH4kAZWiJdu6hYHQKts+yeAzgAN1kQHVm05KY6fXk2wcoDaI174bOXZTfhhH2vpIorHHA@vger.kernel.org
X-Gm-Message-State: AOJu0YxjXpCyeVlLxjzHBMCLZ1pyFBL02lEiv3xCtY5oYQHbzbmOHeuP
	LpJ1Au/36xSAKRBy98pGOrWoFh3rdAd/gGNV3Fa21nDuHexISQh1cQJCTd5Nt9dtUW2Rrgl3psg
	hVWhn6GQtV2XYsNGw4aSFJDn9MxbTh16sO+rE3WhImpvVAuNI4YKHt+f7T75Psa/M
X-Gm-Gg: ATEYQzw/zwwa0//8A0DPejw53VmShBNKd2DblyhqW4fzcGJNVjuW1y0S1XkYDLvAz28
	eU5RGgtPJTfqm/xyFtbsvxy/lN0voT9OGOmWv7rbD1gh4OZRT+869QPgUIbAeoWTPtcw7MJXxo3
	Uh9MhmPzavurQPmQ65LJ/OyhSPFt+LReeDsvGYkQhjWJ9on2MIC5jRIKdIzKdGZ0XGRVMJ73/W2
	bhhIlwkbW4lcUNk0akL3dTtCSo0IH9MGyvDswM04TyZ6H1bz4/ldwuwiNQrRKHgCFAoKHOvI6pd
	Xsf6BA2SIP4okLBPkMsz9PBWd9lU18n+0JqmOt0HHLK1QUF2ynTCSz4C6QOQV7EkDxZ5KY94JoD
	dvR0QowJ+zhpIPqXqKGtUewxqefRTCg+Upb7iwJEp1UMyS02bAT16ED4=
X-Received: by 2002:a05:620a:690f:b0:8cb:72b2:29ff with SMTP id af79cd13be357-8cd5aefb9d2mr213386885a.30.1772629644696;
        Wed, 04 Mar 2026 05:07:24 -0800 (PST)
X-Received: by 2002:a05:620a:690f:b0:8cb:72b2:29ff with SMTP id af79cd13be357-8cd5aefb9d2mr213383085a.30.1772629644263;
        Wed, 04 Mar 2026 05:07:24 -0800 (PST)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485188122a6sm49969745e9.12.2026.03.04.05.07.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 05:07:23 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: mohammad.rafi.shaik@oss.qualcomm.com, linux-sound@vger.kernel.org,
        lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, srini@kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v3 06/14] ASoC: dt-bindings: qcom: add LPASS LPI MI2S dai ids
Date: Wed,  4 Mar 2026 13:07:04 +0000
Message-ID: <20260304130712.222246-7-srinivas.kandagatla@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDEwNSBTYWx0ZWRfX1zdsOeQZCC97
 bP1TJYEICTIE/qNqwjWlHfrGVkD94H35Fhs2dY00vvg86L4Mc1gX6jYLsbMNF37SmjuqPjk4/Ty
 C25S9Bq2us5xjJSqnagdCI7jpq0oiclj3EnX05FN24QwOuzMpAynueydrKAl55LSBqGVc7rmyHo
 Otm9JenddjRRiy4R0hD2DrAIs1TPsFSSQgwH8mkhgG5wvwio+5s9tiYSyguXHvt+VoL422/EEWX
 da1sm4wHtBYXTk1EXbSt/JG0WFOf8wrO/B5Wo6+p/x/HEaUjQvbHzC1GJKrJ0a6zF1ofAGc94Ig
 cI6njEZgZ2kxFX+yj3xBA5D7s7rjpPPUjIY76UgL6pkeWCTYbK5CpXOenDZcZ0qhC/ABqkHAGKi
 gt2w0wqzoMZ2LnK58OKabi/BOlXpSb63jkYmxMgak8ycyP7QAckgHoDX89q8cDX6PhUm3E0RNYx
 +MP6lYiQf/dAn2xNHNg==
X-Authority-Analysis: v=2.4 cv=UJ3Q3Sfy c=1 sm=1 tr=0 ts=69a82e8d cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=EUspDBNiAAAA:8
 a=JSm23XzLRogIhJ8VZY0A:9 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: ckH7JV2nJCXJFACBPZ5mzxUHaKkLACNt
X-Proofpoint-GUID: ckH7JV2nJCXJFACBPZ5mzxUHaKkLACNt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_06,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 clxscore=1015 malwarescore=0 spamscore=0
 adultscore=0 bulkscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040105
X-Rspamd-Queue-Id: 2A9022001D3
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
	TAGGED_FROM(0.00)[bounces-271037-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
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

Add new dai ids entries for LPASS LPI MI2S lines.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h b/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
index 6d1ce7f5da51..e27a31ece1f2 100644
--- a/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
+++ b/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
@@ -140,6 +140,16 @@
 #define DISPLAY_PORT_RX_6	134
 #define DISPLAY_PORT_RX_7	135
 #define USB_RX			136
+#define LPI_MI2S_RX_0		137
+#define LPI_MI2S_TX_0		138
+#define LPI_MI2S_RX_1		139
+#define LPI_MI2S_TX_1		140
+#define LPI_MI2S_RX_2		141
+#define LPI_MI2S_TX_2		142
+#define LPI_MI2S_RX_3		143
+#define LPI_MI2S_TX_3		144
+#define LPI_MI2S_RX_4		145
+#define LPI_MI2S_TX_4		146
 
 #define LPASS_CLK_ID_PRI_MI2S_IBIT	1
 #define LPASS_CLK_ID_PRI_MI2S_EBIT	2
-- 
2.47.3


