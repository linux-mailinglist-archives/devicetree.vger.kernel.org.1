Return-Path: <devicetree+bounces-271041-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4LboG8AvqGlPpQAAu9opvQ
	(envelope-from <devicetree+bounces-271041-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 14:12:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E17EA200261
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 14:12:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7B1C230EC65A
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 13:08:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CBF4386C05;
	Wed,  4 Mar 2026 13:07:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XOlRJTNo";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FafwtGyV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 953CC351C12
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 13:07:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772629654; cv=none; b=p+5L/o+AMBYZyw6ZiyfNMSkW+YgeWunK/1BYiYGbm0pB0+44LWW8OF/P1fOIAIJ4svivDy8frm6wU1gTfSQdVIDftsh6ItHwGBDYhVymEZ33q0McKa7dGTZqRoUxGvIlt2/80rsvJGzd1VlmEN8wDsqhjtT8VLlPGfHKHwbEBOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772629654; c=relaxed/simple;
	bh=iafQmWDeFIqwxoTztlKqMCFwj+DaAdYsFKAlvo4MX7E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rCI2OQgogZisYQc6pB9Xh2G7frtJZ133TbaH8VFnSJIrYOU7uNsHU45v5psykBOHDrvMqTRrhav8v9yuFd1onWNKdPj4euatZe8FOoQrUgfUtFLdVE7Yseu06mmc1EBPYUFxO5kY609rfqea1aQ9RKiKgPnuLfnBTZiEfFi2L7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XOlRJTNo; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FafwtGyV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 624CHt4V152531
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 13:07:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=lh8JDFjF3Cp
	/56/LC7QnjRtBGIXDKJonxwqRjjyCPMo=; b=XOlRJTNoBfXKSla9ZelgkxoX0U4
	u+6LcnOCzSs5aA8pblScN0139MWEeEPVdC+d/qI+i1cSDV2U+eNgxkrNWQN+HFTm
	dK3Fp0+7IZTbnu7FXiCCvO1LgskMHxprmq8/64urTd4BBigHGjhQjhuLYM6Fmxbk
	mUGqW062nmoMcjPqGCNspLJUmpusNtOdoZN1XnvmarLKutGR08kZ1T7/RmwJjH2x
	IB1unL7slbIY5pzlhzYjmJUYJtIXDf4L7vxhiYUQJov5b57hbRcQ0DX8AymHO+/Y
	fBms++3VBaaO+Tu7rCBCwgLhlakuoq8LGsIyNVn2iGCeN5x+pV3pyTBzPjQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cp3tvkpt6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 13:07:31 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c70e610242so1062355985a.2
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 05:07:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772629651; x=1773234451; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lh8JDFjF3Cp/56/LC7QnjRtBGIXDKJonxwqRjjyCPMo=;
        b=FafwtGyVF/666/G+0lNMwDaOmskgQqPYvNJUR6qjZy1uo9UBDXWZtqJ8iWWGUZu+IR
         T6PHOGHcFhVyT0tmuRbgdYe7DAuxbGuMZOOQC4wYQ5wR5+cmJyNZ3QAJ3S93P/I1WLGT
         nyoeUwb+CiT/+37F+QSIxXb4pdnKQdIn2UUdl0s0ldRRYR0bqR1Kn2Dd1FKPy2VUebid
         a0yJKpdvTfz3B7IqSC03o7LjkOzQOWhtz7vR5MYWIWqJ4yqlRom7h9GMd7YLf0oZ6mFj
         p4TSlfjdueUiZ6UlW0LNtsQ6gtWr4LjGstNBrvr1ZGsUm8SHV0s/t+gFs53mEJ1POoi/
         l3bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772629651; x=1773234451;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=lh8JDFjF3Cp/56/LC7QnjRtBGIXDKJonxwqRjjyCPMo=;
        b=qj+dDMQWVc4vJkl+TD+PhToN4iCUD60PJ9lmsEqnYR9Di9Qt/b5SUhsziVvrhrp1i4
         hXAI+N2AZV9EK4fFB5PKgxpW/UbEiR0hCKU9TKSsaa5QQoZ/fCWs5+DvY8AwRcsBWdJ8
         Rg+J3BLNsk0g9Be1zzbO40W/V1rKcsXGjoV5uU0YcZYGnlhLg4HMCk/LAsdvkumwXdZ+
         f3ut4g3gsWnGa62q/fVuhMdv4pB9qQtvAX6psV09MoSMzB4S7XBMhSdJsCU6X6hSnNOs
         2LFx2VRYcoMg53WJphooRUdeh40xTMcIBq1+J5+qfjwngBsLAJBtBR8SzCEuoFDH33Ut
         PaQw==
X-Forwarded-Encrypted: i=1; AJvYcCXYvlPy1oQ8iaZbCukdT2C099wf4Hr+mz0I6+OVWSadKqWE2BxIRrQYPP6Nrn+60h/oGajvo+5gDwMJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzhWB4PiiXDehviWqlyk5HhMrT93xTEYOIiI3EZZ5m1d7MAf2WI
	1P34otCenFCrHT7IZeDZqUG/UmDto0opsQEbXOIzO1hBR9YPsvLU3t57UWVtP+sZR6JeUytZPA0
	fxPgDBdm0X/6ckvSDYYVp35dRNfaZfT9uFJwAPFhh9YIFiRP2EfJXprbuA4Ruv+B7
X-Gm-Gg: ATEYQzx9yc53H0+uTTx+/fNnJ6+ffyzckxsi79SPpuj478M+S8qIwhVc6gYgrGO15rc
	D6EfpMLY0HVcKhhKH0iKbU4H9ty1IgaUFxyCWnXMCW5b9mtgljmLy1iozHPShd8OXGvY1vKCeTD
	0gP9BBw7WKCCzQExFJrJQOT1lQ7l3sTAeUEzErGV9ODVoAO4Takhxpjjow6OeO4jlrLovwkJcLL
	ljbiS+BoUhpO/tjMBWV+fsjAvuCYBBOg9Qj2wyIV0v53lg0cyRpARJqijrx7TYtGJJ/23vRNC3z
	BQ9WwWDzUjaAoEtERAwbor+PvuVRWuXUhnnKkqvx0TXDNZZN1vaQyGeLRJevPKrZgYxFdQBD8Ri
	7sEMvv53L8Fb089pkbK/mHZdCTcMvXW/nRADJOSvW39Z1CSOlwydLFBI=
X-Received: by 2002:a05:620a:4155:b0:8ca:2ba8:b988 with SMTP id af79cd13be357-8cd5af80326mr235750185a.41.1772629650974;
        Wed, 04 Mar 2026 05:07:30 -0800 (PST)
X-Received: by 2002:a05:620a:4155:b0:8ca:2ba8:b988 with SMTP id af79cd13be357-8cd5af80326mr235743185a.41.1772629650444;
        Wed, 04 Mar 2026 05:07:30 -0800 (PST)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485188122a6sm49969745e9.12.2026.03.04.05.07.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 05:07:29 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: mohammad.rafi.shaik@oss.qualcomm.com, linux-sound@vger.kernel.org,
        lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, srini@kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v3 11/14] ASoC: qcom: qdapm-lpass-dai: correct the error message
Date: Wed,  4 Mar 2026 13:07:09 +0000
Message-ID: <20260304130712.222246-12-srinivas.kandagatla@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDEwNSBTYWx0ZWRfX/1q/thBS8FnT
 RMJMS83TFxcbffEvrhwKCkU84gSU4rTuX20ZDWv5EIa0yes3u0sTCyx0u75vqq0fA8wKHTq18jF
 6uAT0UbzBy3nwM2FUFjhUSK92n3kPgSz423QENpMF2C94NcOb9ZO1EvnEpFDwG+VqU7MTon1L9V
 cA9y8pUqKtlHIx3Q6ikwm7AmpTjKVQeRbYXV3mvYf9Rrr4iihc7khcUAHj77SDd4wNvw0OMEiPL
 uaGMs3IZ/+i5uUN8G17cr5eD7iR2gpBtv73oWo6SPQi1Q/D9Q1dcVHw3DZCEwfXCBAiPcg5xksS
 amuAe9wCdx0KdyNBlPEf3Si5KzXFV9zWWNEIUkL2sE4yABziNZ8/Is5s3aEOULYN2DirAQXtWIy
 pEIMKNHqd6llxEbGIWSxvKKoJOkeHV5XFZ7F4pVMWOzQqh55208C1WUHHTpBSSaXG62TV7Zs7cy
 89kLpz2a3Rdbb6NwK5w==
X-Authority-Analysis: v=2.4 cv=VYv6/Vp9 c=1 sm=1 tr=0 ts=69a82e93 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8
 a=QkacBUY9L2qTTJrEq-kA:9 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: mXtvq9KNL0E60Q9qkmLRLQyFsU1hrIq6
X-Proofpoint-ORIG-GUID: mXtvq9KNL0E60Q9qkmLRLQyFsU1hrIq6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_06,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 suspectscore=0 bulkscore=0 adultscore=0
 spamscore=0 phishscore=0 priorityscore=1501 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040105
X-Rspamd-Queue-Id: E17EA200261
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
	TAGGED_FROM(0.00)[bounces-271041-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
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


