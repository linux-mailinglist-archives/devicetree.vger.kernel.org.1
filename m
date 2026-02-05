Return-Path: <devicetree+bounces-263102-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wLevCmTQhGk45QMAu9opvQ
	(envelope-from <devicetree+bounces-263102-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 18:16:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BD26EF5C34
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 18:16:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AC3823049721
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 17:14:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF9FB43CECF;
	Thu,  5 Feb 2026 17:14:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FnAFNpA7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Y6uINJCv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7183A43CEC3
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 17:14:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770311658; cv=none; b=HE7u/64r1j2PwlCPdwxe6xfEIjZHdhj8jHkHg+2q0ZA4w9BcuoTM4nqPLDc0hI4Sg72ELvtg53G3Bkl7R/laziaZXX+o1XEhlRzzbD71ytHumVfaKbmvANhDpfgcobeCYb+0YSyATmZkJeRTHeG+IIakHuVTaHHhOj196Kl8FfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770311658; c=relaxed/simple;
	bh=hpmfNzSCIC5ApGBDTE0elE5AkmLDZ9OmsstHpD/oKEk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Gtfu+7jIEFbBzkq5pqHKJhfT6KIb2qBS2KE3lQBQx4e6VDlEMEPzlA3AOsBNWmBFUr/545k6cogSlCHzkkbZwQeqJ2gjPmpyGobV6Z3X3jV4SJRbAQqcw7wu/sH2COikv6NCjDqCSZ2lcriivpBZJcNkFGEYNxuklsP13oMRQC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FnAFNpA7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Y6uINJCv; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 615B3tpl176860
	for <devicetree@vger.kernel.org>; Thu, 5 Feb 2026 17:14:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=K6uxAlpDaZ6
	EBOUxGU3VxAdAbWdRRiS7if5bxpU1zcw=; b=FnAFNpA7+DcHitGvUXjDDHYr6NA
	aF9O7SilomV2gGQE7liag2QkVCRDQv++knj0DWjAdS0uNKDlLHt+qsdb4NiSR4WS
	nDZZRtVlBHvTeg/ri4gFz3W9JKqwXF8UJrZ59PJ+ovlnSL/OR+locMQ+qLwhm+lm
	Yu3voBdLWpAxQK+MvoYIETH9fAezKLrPkwatdWeFomzYIqAr95GxyvDrzD2Z8BsQ
	EvXDsJaVDcC38dLwemuU0aHmtCejwxJVEDp90tpcaX5W6MLDMxjYNpwodRlC/04W
	oJrQB9dgzWMs+EeO4d/nIbKXXHBNXSw/Gz1XcNUu7NpHgl9/7AWuB2gQl2A==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c4t0p1530-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 17:14:17 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c6ad709d8fso301830185a.1
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 09:14:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770311657; x=1770916457; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K6uxAlpDaZ6EBOUxGU3VxAdAbWdRRiS7if5bxpU1zcw=;
        b=Y6uINJCvEvTft0AI0ovJr0uRGmK8rh1NuAKI6hHfCmRhB2YodN7qzrIvm53N9UrrDP
         n2XTWU5K+ZI902LlI1l1TdEq92EqLlx1x13jsxDu3jFhOoEI/zJs11ECA8TALGV0nwWq
         zEFTgXItP5IXzyodbqRUt7hiQE3ZxZmmDc7oBS0cZaWSrmKM3qSPEELf6R/NjDXBCezG
         GuZXbOUUsUom0ZZrxagcOF5/mP4je0ATsDKcRRiZc6jzDLWn4Jua1klMmuRGwheHBPxp
         6AwENNRsPmQUAoULQh90npkgFSahNEvWuk+rtrMFkmoYX3gacXur+88fY74Srs9rcGjz
         DmNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770311657; x=1770916457;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=K6uxAlpDaZ6EBOUxGU3VxAdAbWdRRiS7if5bxpU1zcw=;
        b=OHBOHdpOeVrZ0c5gi2RlxpFNFHGbamXl0N2oldGSvTw9CfvKFa324OVslw58b0UGPq
         ba5KlNzU6RrSqsLC1G5apo1unP1jpA3DGW8A5ousvFJntSTFsqIA0Ga/TJVngt7s5hwZ
         ikTyzMeAmHkV6wRl8onzolp+ycI8L8JuxqoUxGO/oqrTpNwMAVy7lNYDZcyt19j49ECZ
         vS9SUNr80Bg7WIl3P4Mta1KmL2Wixb0toTCmKvWWwpBhvbqfZdnAEN/bVYCL20mM6506
         FMDAF89K6kgWyeqTLJDaF9FTZ4z+H0a0dAOuzWIsXfhmnlAOxYG16bYueiZ8EHkwXkgn
         B0nw==
X-Forwarded-Encrypted: i=1; AJvYcCVcVojA9DbL8mYfn9ov8P0/j/dAwl2XkVLcm79sI0JrWzLrk97Vgst05BCEnc2QuqghxGn2WyTlwBhO@vger.kernel.org
X-Gm-Message-State: AOJu0YwIV+2aX3wGuLuVyoA7oXXvLDAQtO7PHHpbIaoi+F7AunZQkPGl
	Nc3i7yrJeLibH9js4EwTAg8Ke4/R/alzmqGEP83OnprsUJqevu8G77I0opj4uX/5MZ7XSkxgUp7
	pZfleGy8TMKqO/OK9UWvQh2/gO/4JiYnbVRPzxNhWWeb85nnkrLQAET8hPVAkcAFX
X-Gm-Gg: AZuq6aKoHG/FORn7tF5z8eQ3NW86r18LyjtAJB0lpNKqunhdcY3/mi77rdrdFk8NrOV
	A8+IHeIb9MT3AB6clrYxkjfvWrKKjXAGlks5uQl2WjaCFETFWCoW8BR72SDQcFy7VaN1VoRx9v7
	ypkqkoGXr2xa2Ow1QMyyqp3zfilHS4n38YIrHFGkk0aH2jmmW1DoQWbhnXlaU/KEFgd3LQnERk3
	UuH6uY2eLAibQd4f6iViK3rgrptXBQfR7MoJFalGrHasvJlFqN2BfGxRkNImwL0nC5G42JNPyt4
	gr/EuR9tn+2PjlR/22Xdycd95nJOmCjxh31hKVgm8/1mio6t4rRVUW85KmCZYvv6GxVXqrtEFNC
	7NgkkvZQBKI7pNjBb1qc1UyCw14Y9u/vas4vfodffcXQ=
X-Received: by 2002:a05:620a:440a:b0:8c6:b16c:a56 with SMTP id af79cd13be357-8ca40c5c033mr475106985a.38.1770311656782;
        Thu, 05 Feb 2026 09:14:16 -0800 (PST)
X-Received: by 2002:a05:620a:440a:b0:8c6:b16c:a56 with SMTP id af79cd13be357-8ca40c5c033mr475100885a.38.1770311656230;
        Thu, 05 Feb 2026 09:14:16 -0800 (PST)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43618057f87sm14802849f8f.21.2026.02.05.09.14.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 09:14:15 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org
Cc: lgirdwood@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
        cnor+dt@kernel.org, srini@kernel.org, perex@perex.cz, tiwai@suse.com,
        alexey.klimov@linaro.org, mohammad.rafi.shaik@oss.qualcomm.com,
        quic_wcheng@quicinc.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        Stable@vger.kernel.org
Subject: [PATCH 01/10] ASoC: qcom: q6apm: fix array out of bounds on lpass ports
Date: Thu,  5 Feb 2026 12:14:02 -0500
Message-ID: <20260205171411.34908-2-srinivas.kandagatla@oss.qualcomm.com>
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
X-Authority-Analysis: v=2.4 cv=ItITsb/g c=1 sm=1 tr=0 ts=6984cfe9 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=MyalSr31lt99Fa30PzAA:9
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: Th9AEseEwSdhbPjQ3tEVfJtjJ5Gni8Pk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA1MDEzMCBTYWx0ZWRfX6uzXvLscfMp2
 rQGE5NRh8ljhR6NKXL7yU+2vbDJ6DFFqSITahX/lxXKuCYou6QB4QfshsWtk9ksbbbWUSLaq4fe
 /xaJvbAqmZyRkEC5fXcqPOIZkBHJkGt2GvI/ux97bLRuGB8gSMux2rlkUMMKmHvJQKGugefKgMr
 QvXHKTUg3vTB58N8R4nW7t/K4abWS7+R2xNiOTYlcC4zKObI/j6bCERaNhmycleCXCVfe2YeyNU
 oT8Srl+ZQ5ceYnXpjY5SzhwCNNZqAqw86nnR6+YIk3wdrPOfwO6LY9ARm987L7AuRVwXV3Yryq1
 8/qudQiZvlrBsA+h2I/SdsXAlADGV5TribzLoHT3SX9SE67A+J6oOlyNKA+bwnkww0JB0epPkGt
 XIjumpUM434nZNrCzSCJkrs625nfrOSgu/vhFgl6602jdDC6O06Uplv/oaSzC3vjrvxdRRTLU8W
 Q/pSjGSh4PMbxmaUgdA==
X-Proofpoint-GUID: Th9AEseEwSdhbPjQ3tEVfJtjJ5Gni8Pk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-05_04,2026-02-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 spamscore=0 lowpriorityscore=0 adultscore=0
 suspectscore=0 malwarescore=0 priorityscore=1501 impostorscore=0 phishscore=0
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
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-263102-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BD26EF5C34
X-Rspamd-Action: no action

lpass ports numbers have been added but the apm driver never got updated
with new max port value that it uses to store dai specific data.

This will result in array out of bounds and weird driver behaviour.
Fix this by adding a new LPASS_MAX_PORT which is can be used by driver
instead of using number and any new port additional can only be done in
one place, which should avoid these type of mistakes in future.

Also update the driver to use this LPASS_MAX_PORT.

Fixes: 55b5fb369c02 ("ASoC: dt-bindings: qcom,q6dsp-lpass-ports: Add USB_RX port")
Cc: Stable@vger.kernel.org
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h | 1 +
 sound/soc/qcom/lpass.h                             | 2 +-
 sound/soc/qcom/qdsp6/q6afe.h                       | 3 ++-
 sound/soc/qcom/qdsp6/q6apm.h                       | 2 +-
 4 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h b/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
index 6d1ce7f5da51..609bc278f726 100644
--- a/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
+++ b/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
@@ -140,6 +140,7 @@
 #define DISPLAY_PORT_RX_6	134
 #define DISPLAY_PORT_RX_7	135
 #define USB_RX			136
+#define LPASS_MAX_PORT		(USB_RX + 1)
 
 #define LPASS_CLK_ID_PRI_MI2S_IBIT	1
 #define LPASS_CLK_ID_PRI_MI2S_EBIT	2
diff --git a/sound/soc/qcom/lpass.h b/sound/soc/qcom/lpass.h
index de3ec6f594c1..99b0b6651fad 100644
--- a/sound/soc/qcom/lpass.h
+++ b/sound/soc/qcom/lpass.h
@@ -17,7 +17,7 @@
 #include "lpass-hdmi.h"
 
 #define LPASS_AHBIX_CLOCK_FREQUENCY		131072000
-#define LPASS_MAX_PORTS			(DISPLAY_PORT_RX_7 + 1)
+#define LPASS_MAX_PORTS			(LPASS_MAX_PORT)
 #define LPASS_MAX_MI2S_PORTS			(8)
 #define LPASS_MAX_DMA_CHANNELS			(8)
 #define LPASS_MAX_HDMI_DMA_CHANNELS		(4)
diff --git a/sound/soc/qcom/qdsp6/q6afe.h b/sound/soc/qcom/qdsp6/q6afe.h
index a29abe4ce436..ce4b04da1730 100644
--- a/sound/soc/qcom/qdsp6/q6afe.h
+++ b/sound/soc/qcom/qdsp6/q6afe.h
@@ -2,8 +2,9 @@
 
 #ifndef __Q6AFE_H__
 #define __Q6AFE_H__
+#include <dt-bindings/sound/qcom,q6afe.h>
 
-#define AFE_PORT_MAX		137
+#define AFE_PORT_MAX		LPASS_MAX_PORT
 
 #define MSM_AFE_PORT_TYPE_RX 0
 #define MSM_AFE_PORT_TYPE_TX 1
diff --git a/sound/soc/qcom/qdsp6/q6apm.h b/sound/soc/qcom/qdsp6/q6apm.h
index 7ce08b401e31..189ed8a1a60d 100644
--- a/sound/soc/qcom/qdsp6/q6apm.h
+++ b/sound/soc/qcom/qdsp6/q6apm.h
@@ -16,7 +16,7 @@
 #include <linux/soc/qcom/apr.h>
 #include "audioreach.h"
 
-#define APM_PORT_MAX		127
+#define APM_PORT_MAX		LPASS_MAX_PORT
 #define APM_PORT_MAX_AUDIO_CHAN_CNT 8
 #define PCM_CHANNEL_NULL 0
 #define PCM_CHANNEL_FL    1	/* Front left channel. */
-- 
2.47.3


