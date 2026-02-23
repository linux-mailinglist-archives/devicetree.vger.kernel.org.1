Return-Path: <devicetree+bounces-267589-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oCJjKj+YnGluJgQAu9opvQ
	(envelope-from <devicetree+bounces-267589-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 19:11:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2523517B507
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 19:11:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C698E30A008C
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:08:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1198034026B;
	Mon, 23 Feb 2026 18:08:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YM3292cg";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ESirJL3t"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8622333F370
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:08:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771870088; cv=none; b=sUh1/h7MNww53vyRuqE3Un/51CoMVzlp3/qeVZewTWjkS7XYlXmYyiPnNkn6Aeah7pa9RPCNdTBHrvyY8ZrFa4MQGHJeY/XLyU85gBVXPlSq+GL7MwR14r7MHTCOv/aMif4gCOvyq9zdjcEeKihraLgOho0ymlsDOenGk+fDRRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771870088; c=relaxed/simple;
	bh=7a8FeAvNk5/WvnNq5f6gPOGdPG6W/kpZ8BVaxW/g9Oo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LuZEPnXNAHMtn5AoMG+M0t/+TOJmWnfRmGeNnKvpsxUjbJj4i4oCnZt9Fgs/Onh2FntvTGpdp/iTQWhvlnRg2NbaMVUbxwZFf++Qd0TUHO/pwSkz5nJ0Z88OXv4eHjr142CSNWfcc2nsYbi23+upqBI9LQWhzKLVXcYpyKArvX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YM3292cg; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ESirJL3t; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NC2gTo3151767
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:08:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Gsm1SwBtjf7
	DAueGLWMEyiZtda9HtqsqwTa4B2zHbb8=; b=YM3292cg2BAWgQ40lPIoDXbX0tl
	VZbDk7Rsf4VzpcR07tSC37mnnX2lxhw6q84jgATr0rVqU6IQaJ1lKyTdiR9h8Wv3
	7wMTDSu8sYwDpy5oMkXb50RDH923ukTVRtCf/f6aPaqv2dkiYYQv5+NS7FB7BlvZ
	+fMLypPJpKvuvikI7HhGNiRWS2cDHckZVU+6hw5Ljek/wTwEvOz3Nv0/Kcuen1Ql
	SFwjRAliu5+EI7sa0OEiGC+jgtycLGkRnsuBQdpO7Sv/KX+I/D0TpsgHDaIB+mZg
	tV2oT8DWX/cCA9ixh+2MQarnjtQPyL8LnP5efOj2eNtVSwy+08nY5EuXw3Q==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgpj895pa-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:08:06 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c711251ac5so3831028285a.1
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 10:08:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771870086; x=1772474886; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gsm1SwBtjf7DAueGLWMEyiZtda9HtqsqwTa4B2zHbb8=;
        b=ESirJL3tW633dJFL+JnaczQ38d2DKNjqh5xF9HB95OL27s1LRio8M1vAFpCCQ8ixve
         wqdZ+4rn8ds1nYZ2dQBKnEUUHC8+at/ZTc2z8a98ARMtrQ2RZkFkZJ0NLEYrF6BDqzsM
         G12k6C8XSylNGSyvbYk8qFfLO2lErTVRbThOE3rfp/wk7ILptDPen79iPW7Yv6W6NwQE
         7RaEiulngQ8HrXdAnminNGnzqNrgiy2YjqunMhs9hVZ6FC8IiUgD61zR9iYrOv7t7Ad7
         gDY5I3FfqiHbQ+uRT1pC8MtOQcUd3EvyMt3zHLfHmCPuAVR1uTG37GjQdhZ7hDa9+1oe
         nhwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771870086; x=1772474886;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Gsm1SwBtjf7DAueGLWMEyiZtda9HtqsqwTa4B2zHbb8=;
        b=ex0xgm6pyP1OZDYBrRoVXO1IIQ9eY5Z2VCw03J4qbjxvDCceHV463Xd3BvTKTzlxE5
         osulWFbf9sMDC+Y9yqtSnZgvrcLbqZr21Z/ydZ+qxnSm1oHdSSVPRA9kQfM93xt6F4Q7
         LoOZYwVQJwQ1QZL6KgAoMo0b3sfGobV438/2AC2khb+2Jz18m2pyrtZdzDIDm/91JqPq
         QoBG4ySZeGBZm3emfHFy19ovms7/Iq0ZW4TE9cim4h5GpXo3wG7vlKlsnU4dHzk0oW5d
         47sOPRfQLC5p9F6P4iYPXHery6Nt62x/DlMJ0JtKKgwoVio5nAclHfLtsKbYtkPMWxra
         yCCw==
X-Forwarded-Encrypted: i=1; AJvYcCXmmRHEQctVfsY63EGFKcPZLIOmIN3WphV5yxILGA/m80wijxYqmLQ1VAazTPmEnGwuFenvDqDjQENq@vger.kernel.org
X-Gm-Message-State: AOJu0YxauFdyrfHP1FwdQv6tuh3uudGBLvWcVNdkgfr4U6QVQ81f5j7Y
	wY8nrb3WXqkNouSFKb1DtSOu4Mgb+T5RMrbsv/MDwDEghJWRBgMsAoN/NroqDy8Q6vBXMcetelW
	Yc8dpXNjJgzHOlHSJyR0WOH96HcQWKNJceu5Bg+0x5z6tj7yNHwNRrwYIu4/GwNE2
X-Gm-Gg: AZuq6aLCMdiJaO/vdbkgPSvRgKqAs3WpQX4fpjzbd7zKF0Fj69yHeMKqq0eLjIu3+y5
	pZdzdggTpLmwX6PiQIEVXoyuWp458ixJudSyPY7EyN+gcdP4bv4zfqR2fqWiSunmDWZ44LCE0gm
	//F/UQ7xo0wS+5lNkgP5NxFUtoloW1HbrJrbvDKzmxL5KMyW/ltDHMA8ZAKo5CzI2aTX8WkpYFK
	q/A2exUCCIJMMXtQy8njnprOR8V10f6MR7MoLIsAaqJAgm0c1gxngh+ukIO4TUBEZMWxmdbvGUT
	kBruyie2OrXKt77eaSZeiIw73QFketRD77uy9bjscy3pcsY532qKoSEDoirhRX4gpj8TxkJpnqn
	HZx+wIbgnBNV911SM98BAdl8OYLCDxrnnCJcyfvDbwuV84pkDURdjkRI=
X-Received: by 2002:a05:620a:44d2:b0:8cb:47b4:165f with SMTP id af79cd13be357-8cb8c9cdc29mr1199393085a.14.1771870085970;
        Mon, 23 Feb 2026 10:08:05 -0800 (PST)
X-Received: by 2002:a05:620a:44d2:b0:8cb:47b4:165f with SMTP id af79cd13be357-8cb8c9cdc29mr1199386585a.14.1771870085518;
        Mon, 23 Feb 2026 10:08:05 -0800 (PST)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d401aasm20458574f8f.23.2026.02.23.10.08.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 10:08:05 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: mohammad.rafi.shaik@oss.qualcomm.com, linux-sound@vger.kernel.org,
        lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, srini@kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v2 09/14] ASoC: dt-bindings: qcom,q6dsp-lpass-ports: Add Senary MI2S port
Date: Mon, 23 Feb 2026 18:07:35 +0000
Message-ID: <20260223180740.444311-10-srinivas.kandagatla@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDE1NiBTYWx0ZWRfX1WRHdiH0Csin
 uQwMF10eCVaAVa+kJb6myOdtXMSGSAhcMfJZrcRV+1D5TMRAOQTaDTun3TpORYQ/mME7G7KSvlZ
 xo+/buFIj9Ge+yFklI/ohhiLncmujn3QwsIYe5AeB+soe/BXZJYZysHlcjNLyxsoLgxWpuSDg3a
 iufEkWW39V7ZrP9+gsZ4s55iJdCpPDgKSrRQPRhXEdNlnQoKnCsyn7VykD9QGUL3xSoDQHllt3T
 QeO5uBrs1603yDrmGB9rgH6ZzRU5cKubai2rVgEAuAw6JjiWl8eI2I0jV5I4iINhWB/k7B1Wa84
 sUTahYVCDNoPI+gU2bbYbbjo2j5ASZZR4JJRZs20MpsvYbCk5IERllHPddt9nFRMyOQn6iSY105
 0+veGvwd3PNasO0wYiMTBXxNd+LhKhCHZNQF7WDrpCNaUtdzyYYEoY9Zdm1D9kygiut49fwSli+
 PqVt8683svGG2fw4TZg==
X-Proofpoint-GUID: wMPuWjr3Mu1Q0SUTnxHjI20b3B1A_YGO
X-Authority-Analysis: v=2.4 cv=Z5Lh3XRA c=1 sm=1 tr=0 ts=699c9786 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=EUspDBNiAAAA:8
 a=S1r85Wze4wKqmHhc2Z8A:9 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: wMPuWjr3Mu1Q0SUTnxHjI20b3B1A_YGO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_04,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 bulkscore=0 adultscore=0 impostorscore=0
 priorityscore=1501 phishscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230156
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
	TAGGED_FROM(0.00)[bounces-267589-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
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
X-Rspamd-Queue-Id: 2523517B507
X-Rspamd-Action: no action

From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>

Qualcomm platforms support the Senary MI2S interface for audio playback
and capture. Add a new definitions for the Senary MI2S RX and TX ports,
which are required for boards that utilize the Senary MI2S interface
for audio routing.

Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h | 2 ++
 sound/soc/qcom/common.h                            | 2 +-
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h b/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
index e27a31ece1f2..45850f2d4342 100644
--- a/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
+++ b/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
@@ -150,6 +150,8 @@
 #define LPI_MI2S_TX_3		144
 #define LPI_MI2S_RX_4		145
 #define LPI_MI2S_TX_4		146
+#define SENARY_MI2S_RX		147
+#define SENARY_MI2S_TX		148
 
 #define LPASS_CLK_ID_PRI_MI2S_IBIT	1
 #define LPASS_CLK_ID_PRI_MI2S_EBIT	2
diff --git a/sound/soc/qcom/common.h b/sound/soc/qcom/common.h
index 85ca73408151..ee6662885593 100644
--- a/sound/soc/qcom/common.h
+++ b/sound/soc/qcom/common.h
@@ -7,7 +7,7 @@
 #include <dt-bindings/sound/qcom,q6afe.h>
 #include <sound/soc.h>
 
-#define LPASS_MAX_PORT			(LPI_MI2S_TX_4 + 1)
+#define LPASS_MAX_PORT			(SENARY_MI2S_TX + 1)
 
 int qcom_snd_parse_of(struct snd_soc_card *card);
 int qcom_snd_wcd_jack_setup(struct snd_soc_pcm_runtime *rtd,
-- 
2.47.3


