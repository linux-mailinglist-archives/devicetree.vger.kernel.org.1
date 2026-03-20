Return-Path: <devicetree+bounces-278319-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4EmxAepgvWl09QIAu9opvQ
	(envelope-from <devicetree+bounces-278319-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 15:59:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D3DA2DC2EB
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 15:59:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 139393015B5F
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 14:51:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FD043CAE70;
	Fri, 20 Mar 2026 14:49:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jggkPTbu";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="G7wUPuSl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5F43C9ECE
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 14:49:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774018177; cv=none; b=OcYzlM7INRTlavocAjer63uZEFIvyPqsfgf1wI0JB4vfvVSDJ1XSen59m9uZ56v4HHwpni03vuymNNL3VwdUSYQmP3TdaHnG1ty6pZvSK0PJ0CPvHWJE4rrDtAjpepY9fAHb0pUdXqiRBcSKpT9tVUpXmDKfvO6II7NtzqxS7WM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774018177; c=relaxed/simple;
	bh=UZ+5z9w9M74tpzVL8QkykGNl8XDOPEb0MSDzyxWPUz8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NoKoKG3P48ydPcRszzfPgxsPiZCepl74eaT7P76I+B/Di04OT4aYThpZsUlH3n/FByajlkUwF3GZ89Sv3JRyXL5KbQ+UNcs+wp9p96L6l7mCptLbnNJjnjdeyJNSTgK8wB8voZJ4QMTMhOUQcaBv0MQ9X0OZxFNi5TROzG0u//o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jggkPTbu; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=G7wUPuSl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62KBs0XP3874981
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 14:49:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Z0SMcOHJkzd
	ixiTszIUCToSc68Rmc9ZxZaPMuZtsp78=; b=jggkPTbufutD6JPGqnEAfrD0qDB
	PMI2rMIsW/egiajgtuyD4bnh5yXR3it57GsI4p1hpJ9B3g297q9tmFQKv1OGsppF
	FZXZCJ4aZo8KfUjbudAZ/c1KMdogDQetWxIySBprV4SMzpiY7VJ2owQiaifct54J
	47etODdsQotqqSjtivf8CBEQq8ggbi9ukOwYnwkk7fpY2RqiVmu0VUG4FjFPM8lf
	AjP1KFY6IucGRQQsOEPvpO3FcNb1Gl/Dwd+qoiXwVdZMgsHpLjd3z63DYoInt6QW
	DmLikk2SqZqrhNJTqIpRFlg06+CpzWQ2Ll9yhSh2C2XifAQDQdznvhqlBWw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d15s08e4t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 14:49:34 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-5091327215dso89985601cf.1
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 07:49:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774018174; x=1774622974; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z0SMcOHJkzdixiTszIUCToSc68Rmc9ZxZaPMuZtsp78=;
        b=G7wUPuSlbZvbLaNXvPkcMKiQBCWtpYq56ZZXdpS1HmS+O5IQ3xVOwPpRr1t2wOSgPo
         mwq96Z/XKcgGGQWmaZdCKL6nXhb7HTgYiIHETy0RgExQpLufV/sBgr2VQ+RnyorLj2Kq
         Ixd0FpWeddlVz0SRblbjrfrsazpGBqgMj136htxYBWT5Ne8KbdpaH4yl23Bg97Qrrfii
         /nt3is6F+tKvW1075F6RBVn/HkHOapqKKLiTBoW5+ZGo8+uWUugw2XPQlnsC+kKm86Yi
         zgl9RnGFEOHXtsDFH4mT9QItqShyvcouoJY86gXErSANmO9asGhQWUQryIpPDV8fIKD5
         r8Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774018174; x=1774622974;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Z0SMcOHJkzdixiTszIUCToSc68Rmc9ZxZaPMuZtsp78=;
        b=rwLSlJ7UtU+kewCv9Lk1VKtpHc6gIuNLjRI1WUxORIWWzBjxOgAexJq5Rr6viNJzyl
         lfBy4zB8YwogB4Uw+TeVuoztkrSKQPb5o8zZlVciGX17I0cjT7qqQp0WdB52eTk178bI
         5ro4MctApi2vP0QDfsPhszHu0A+n0ArhFUqI1hlMZpydgF8LdKimqqI+RlIb4fY78KB8
         wQfckywC9+dC/eyXIOP3Lwkk8LpSUb+KR5Fpe9b2v1xjBiPMxElMrwZp+3+5t7+fg+1d
         1SrXKVdQy7sXCNLhYZHhIcdgyFNSTi7OmNdLH3JIj1Twq4WdAOYXeQrYcQrpOflA8OAe
         4Q7g==
X-Forwarded-Encrypted: i=1; AJvYcCXsCR8ixLVD2EcCD3YaRt1L4gWriakwbI/W4XXzqIctVd1j59CObL3vwIP7YYbiKOjyPeTgR7mhoiNb@vger.kernel.org
X-Gm-Message-State: AOJu0YwjBsYe8Q67kLe8QRcC4OtHsHncBNQ2Zvo/Pio/wLSb7mC617bS
	uSRlG3V97hpMnA3p5PpqG7CVCpNWb5MvGNEpRNJE0t/OWStSWVVGJnCx5hQiHDdbsOkUjXqmdvj
	meUGlbPbVytpDTkzQYfR2YkN9Z4q0Q+EX8EoBs65q0syQKxqYHDoXCnjSNDR9NCcs
X-Gm-Gg: ATEYQzxF/GY/x1EuRg+aHJA/doGJdDtT3bmXkN2mKfEATWFundUeTIrSwVkDL3/0HG7
	xlGJyEx73nLCE5cEOMopAwwHsrCAtOjEqmtqQJnRy2BWWSYmvyORDBQ+rnmCTFsCTCOTWDuY1D6
	n0ie8NzRHwJ7c+9iMdtp7zTOSycawyeNyaGoAEKo4T5nwaSEswjALM7EMk1DSxP/WWOod6edgGl
	ZWMKagAsdsVN/62XKHZ+Yc/GO7jFun/4MwIiVeNzaL/48a8FH35cftM36DeYYpuLxUWUbgAhIsj
	AgdUuwdVg88G0kF9vPHF3+KUIwLBZfUbALvkRNPrgUSA/1x+qeTuHZLHbPNSPv05Brc8kfTXmgW
	2CcALev2EMyohPJMy45zq8sWD9jE5q/oLLxIcBI1srh+YjyRKXWyj13A=
X-Received: by 2002:a05:622a:4e93:b0:50b:36cc:3350 with SMTP id d75a77b69052e-50b375d4f6amr46932061cf.67.1774018173584;
        Fri, 20 Mar 2026 07:49:33 -0700 (PDT)
X-Received: by 2002:a05:622a:4e93:b0:50b:36cc:3350 with SMTP id d75a77b69052e-50b375d4f6amr46931621cf.67.1774018173087;
        Fri, 20 Mar 2026 07:49:33 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486ff109b95sm47906825e9.1.2026.03.20.07.49.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 07:49:31 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: mohammad.rafi.shaik@oss.qualcomm.com, linux-sound@vger.kernel.org,
        lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, srini@kernel.org, val@packett.cool,
        mailingradian@gmail.com,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v6 06/13] ASoC: dt-bindings: qcom: add LPASS LPI MI2S dai ids
Date: Fri, 20 Mar 2026 14:49:11 +0000
Message-ID: <20260320144918.1685838-7-srinivas.kandagatla@oss.qualcomm.com>
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
X-Proofpoint-ORIG-GUID: 29Ud6AT3wT2c-Qj2sfLvKW7sSoaxdhq-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIwMDExOCBTYWx0ZWRfX3VGkoCVqz5/U
 JizFlMIosJlwxkKg0xlFGgJYP7jIh1tgJEqMuV04RgbpJDbfPA+AplyAPb6FQyXaYeaB4h1/rGK
 7oBTvVCG/Te+2oaRWkxHOsX2ApOot85fdXW1J5S26FNLXzXtLnrv/R/TZdKjcpWmVKrCjlk5LYJ
 Rhx2Shal3lE7PIXsr4AisHelknLb376hTyFzb1hHwM4p7h7vssOYxqYWUglT2D1+tB7pybr+UBI
 FRU+8sO/AgYvXBL2NLwvs68MSAjqcX58/F7wbL9Skh/tO1HCfEna+5+DLacVkY/YzDsmMmAzh8q
 noKDoFl/V+J20+5NbGoMgjCHLMq2q064dJ0nF0MgHCYyxYjF5J/jDKQSEvmi8JHFj5WfDixEteP
 FASugMkLtUCZWZQij5U8Hkke1yxxglQ/8RMTwbWfa3EQqJ33Prvfcs8zLqI1/+d7KRTyuLHgOlA
 Yiw3J8HsCysr3+1PhkA==
X-Proofpoint-GUID: 29Ud6AT3wT2c-Qj2sfLvKW7sSoaxdhq-
X-Authority-Analysis: v=2.4 cv=KORXzVFo c=1 sm=1 tr=0 ts=69bd5e7e cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=6P8UuP444nAwg2htitIA:9 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-20_02,2026-03-19_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 impostorscore=0 suspectscore=0 clxscore=1015
 bulkscore=0 phishscore=0 priorityscore=1501 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603200118
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
	FREEMAIL_CC(0.00)[oss.qualcomm.com,vger.kernel.org,gmail.com,perex.cz,suse.com,kernel.org,packett.cool];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-278319-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.964];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9D3DA2DC2EB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add new dai ids entries for LPASS LPI MI2S and SENARY MI2S audio lines.

Co-developed-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../bindings/sound/qcom,q6dsp-lpass-ports.yaml       |  5 ++++-
 include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h   | 12 ++++++++++++
 2 files changed, 16 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-ports.yaml b/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-ports.yaml
index 08c618e7e428..2b27d6c8f58f 100644
--- a/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-ports.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-ports.yaml
@@ -126,13 +126,16 @@ patternProperties:
             reg:
               contains:
                 # MI2S DAI ID range PRIMARY_MI2S_RX - QUATERNARY_MI2S_TX and
-                # QUINARY_MI2S_RX - QUINARY_MI2S_TX
+                # QUINARY_MI2S_RX - QUINARY_MI2S_TX and
+                # LPI_MI2S_RX_0 - SENARY_MI2S_TX
                 items:
                   oneOf:
                     - minimum: 16
                       maximum: 23
                     - minimum: 127
                       maximum: 128
+                    - minimum: 137
+                      maximum: 148
         then:
           required:
             - qcom,sd-lines
diff --git a/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h b/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
index 6d1ce7f5da51..45850f2d4342 100644
--- a/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
+++ b/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
@@ -140,6 +140,18 @@
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
+#define SENARY_MI2S_RX		147
+#define SENARY_MI2S_TX		148
 
 #define LPASS_CLK_ID_PRI_MI2S_IBIT	1
 #define LPASS_CLK_ID_PRI_MI2S_EBIT	2
-- 
2.47.3


