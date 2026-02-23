Return-Path: <devicetree+bounces-267585-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uNAzNN6XnGluJgQAu9opvQ
	(envelope-from <devicetree+bounces-267585-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 19:09:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 48A9417B492
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 19:09:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B9837305C3FC
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:08:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB4EC33D4E4;
	Mon, 23 Feb 2026 18:08:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="E5w2WyfZ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eymNMg/a"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CFA533C19C
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:08:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771870084; cv=none; b=DnRe+1rW7iYhaDCkYlTLGo7g+nj+vWd+1gn50FCNfkUHueo6/NTQqkwu2Ef2WOxtIj1YupuEpZ3WQkk5TA4mCVhfe26U5vNipl8CjgTUOSg2yYozGEYN2rhpJSJSx3Nn8dNsqcxsl561h2ek40OVKLimf3XHHGbkCDT57PgJhA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771870084; c=relaxed/simple;
	bh=D974qErk+eSVxHSJ/kOz4RqeA8U4H6OLfYkanxY/E0U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oGo4Ua8T3sUI9IGg2esPlCAoHxEv45IM+kMV3xnjvOtB9jQKlAu3lekwsUADc2M9GxWCdGoY4UEd6GA8mtq6Vm0MTOaZtvex9yrq6YsZhoRGkpcEUupFVZtx9A3UYH74Hido+pHwl00U6XSc/drjfjGeSCTbiBpanYdZ4k48s2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=E5w2WyfZ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=eymNMg/a; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NAWE1k3732751
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:08:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=UxOF72ZgTD7
	tt4flWCIeDBHXEX4DVKcDbCAoRgYqJlk=; b=E5w2WyfZPUGpfO/3ef28JwgbvGP
	mNMyMsHpfSZOoI/EYyOggTRnwKFTq7hTwxWF9azVe1SsiKGGiTOEsw2ItVwQjG+j
	4Wo/McvzGRVyMAwulQBJW1s4LvanvSULobCdRa/OGXC1wFAcWRlLhxZVz4lLvxb6
	bYZWC3gxF85+vokzFfT9GKdv1TippnJQ5LO9cyJSkoro4SOEQKbDEIBonTeVDWpV
	7zMRKBSUnlHlaOl4AM9fAFq2kbyLiqW7vK2WjRo2teOCrguomkcu99TQ4xIrHK7/
	AvA+Sf8Zc762bSs4U+8/qWzKVm+jOMxIcVpdb2ikGpkg3eP6UUWV300oepw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgn7t9e92-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:08:02 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb706313beso657483185a.3
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 10:08:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771870081; x=1772474881; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UxOF72ZgTD7tt4flWCIeDBHXEX4DVKcDbCAoRgYqJlk=;
        b=eymNMg/af40ZIDRZKkL3Z82uAVc1RyhZOvNBfjT6I578poDcbyjGR1mwNuLusqYCMC
         qZtMmGOwgZwEirxSsZMnVi70X50vC2Fa9gQnUWdUTxi1grRYUA/WW3lNvrahT6TX9why
         mHgp5iaQUq5nm5lTzEDywvGRA52dewODU2zORte54pjxzF4WRHTcCZRONLzWTG7u2JQF
         QSDVWZhylNwlNGssIzBW1Q+AbAoi7SXGvplzc0H1TcYYj3YX74WGpJLb0rnkKrrUgXHA
         TESfS9Pfec1HnFahxq7MclsxOU8PSwzG5w64qSCyhWXesQysgYlu7+maOGtW8AfDVWuR
         9PEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771870081; x=1772474881;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=UxOF72ZgTD7tt4flWCIeDBHXEX4DVKcDbCAoRgYqJlk=;
        b=ErgHMn7Cn+PLud6ylzrRfTKWvYLXVNciJM0s6MQtb/8gnyFk9AhOOZjZA0uYErG3RY
         bsR5VeZOKPBF3YQU2ZgaQ9z5yiaHxSPwV7+UIndzRmtR6rcR86rrfo1Ff62kWcCXWnKY
         GyVW5FrjFBJ0+touFONlnCTopaTDd4PUJjS2+bbdhgc2CVHrHy64KOQrSKhqK/EFPbPj
         KsgQxrCNPWBPAMzeakqF1uWOf35iHfThZzmkeQp+urfi4vJhcCGaWEKKQ/HaPu3KnEpW
         o1zqP2stNGF1N7kc+6zOovOwu7Kinem5/re3TYhgtEm6SBQxxcPUvOlhGoC83m+qdCG5
         krOA==
X-Forwarded-Encrypted: i=1; AJvYcCWhv4mEzdnxBIfNzuMl8TSu7urFqFbUihKvGSAsbnnGascq3cD4hvy5RiPzjW+oaeT2qsvalPdvxe1a@vger.kernel.org
X-Gm-Message-State: AOJu0YyC9DyaGrMnuX8F0O2uBPH0qqJ74ksVt5QGhGh0D78qImtVh0Fc
	FZXFEGgq9UxvKAiwAZiXm/U8W0YdKcRIh44vLTvtrex1vfxuXISQsm3D4R1ysVPRr9LHAmvCXhc
	6PR270eT/ga/q7wOwof96pJrQDYzfv+JBjHzmNOPZtAKoANY2jDVjrsz7HA2FF6SG
X-Gm-Gg: AZuq6aJ7uSLbM4XUiQQf4c14WoN0E6Nliee847+Fajy3CdyQg+3sI7lyu4eTQLDsYw6
	Bm2iOfjVEy9RVpOPI7CWvDV79SsB+VlqEAwwPQm1g18Go5tabY3QoL6EACU7b+2KIvo99gQ/CJ/
	b9GjA+h371Qw7rpv9KDYo+WYbF9fmbEK/STquiLnRhu551X7C/c+7yH2e6Xymt8uNt07IBickuR
	ofEG0H7cBnKygjk+dMxkqLHCNYLbCALU2bAVao2v1tlSGpuT7Y3i8ko7lca6jxWeNg2WpIE+Irv
	3u9RFBSPGMW6A1X6gLK07dHLEMKwFepm+KhWtXm/9eyaclXfgwIhZjQnQg8Au8q5MqJq7vv5muK
	UpcDeaSzOLSQBOw5Zpmif/KirgWWw0wrX/mAJoaeBQdJ592tMiR/hT/8=
X-Received: by 2002:a05:620a:4016:b0:890:2e24:a543 with SMTP id af79cd13be357-8cb8ca07cb6mr1259244085a.34.1771870081480;
        Mon, 23 Feb 2026 10:08:01 -0800 (PST)
X-Received: by 2002:a05:620a:4016:b0:890:2e24:a543 with SMTP id af79cd13be357-8cb8ca07cb6mr1259236385a.34.1771870080953;
        Mon, 23 Feb 2026 10:08:00 -0800 (PST)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d401aasm20458574f8f.23.2026.02.23.10.08.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 10:08:00 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: mohammad.rafi.shaik@oss.qualcomm.com, linux-sound@vger.kernel.org,
        lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, srini@kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        Stable@vger.kernel.org
Subject: [PATCH v2 05/14] ASoC: qcom: q6apm-dai: reset queue ptr on trigger stop
Date: Mon, 23 Feb 2026 18:07:31 +0000
Message-ID: <20260223180740.444311-6-srinivas.kandagatla@oss.qualcomm.com>
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
X-Authority-Analysis: v=2.4 cv=c5OmgB9l c=1 sm=1 tr=0 ts=699c9782 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=w9bA4Yi6UXS1dLCTJJEA:9 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: VXmQubMh1wdZzk-8XzAipmpSsW-3AdvT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDE1NiBTYWx0ZWRfX+agjxZpLLlH0
 KzgohcN7f+VV+ysDwomponafR+sRuMEcZs5G7iFprG2C0Yv3n9RDE7zb9TJ8skYFPQeNgumy0Ud
 g1QRYz2aDP48VpR1saRJD4kpfwY3Mdy5PZPYczAY0jY5TcAJh+UB7VwwTQZBmWdo4Pas+EGkYej
 xm/d25ryGBQRLo0bfvXQnHrD19rKfk7usVRj9Pb1cK65JmQVC0NCQzzhTikIs6Ghkodih1u8dhr
 9JeoUrd2wPyHsGGiOk0xm1r9EphF7wBEa6QYHG+0TO4xucIrT3ZBwxVtDMtrEM31H0jHuFX0FYe
 93fwTGOw3tpXhnRLbPIF9FFiTlXjtiH0STnweZw7sIa8UlqIBWZbwc/EZLrEiJLL+x0zrHGi/6f
 BcjnYEUVhUMly7iDmw+XpL6hQqlRDV4xzkCh1jS3YfJ6XOtW3JgzWocbRwt9Gu1iaa9I2okrbdw
 Tnif3Hv7GVK+9REVaVg==
X-Proofpoint-ORIG-GUID: VXmQubMh1wdZzk-8XzAipmpSsW-3AdvT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_04,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 clxscore=1015 bulkscore=0 spamscore=0 suspectscore=0 priorityscore=1501
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
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-267585-lists,devicetree=lfdr.de];
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
X-Rspamd-Queue-Id: 48A9417B492
X-Rspamd-Action: no action

Reset queue pointer on SNDRV_PCM_TRIGGER_STOP event to be inline
with resetting appl_ptr. Without this we will end up with a queue_ptr
out of sync and driver could try to send data that is not ready yet.

Fix this by resetting the queue_ptr.

Fixes: 3d4a4411aa8bb ("ASoC: q6apm-dai: schedule all available frames to avoid dsp under-runs")
Cc: Stable@vger.kernel.org
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 sound/soc/qcom/qdsp6/q6apm-dai.c | 1 +
 sound/soc/qcom/qdsp6/q6apm.c     | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/sound/soc/qcom/qdsp6/q6apm-dai.c b/sound/soc/qcom/qdsp6/q6apm-dai.c
index aaeeadded7aa..87e4474d680a 100644
--- a/sound/soc/qcom/qdsp6/q6apm-dai.c
+++ b/sound/soc/qcom/qdsp6/q6apm-dai.c
@@ -317,6 +317,7 @@ static int q6apm_dai_trigger(struct snd_soc_component *component,
 	case SNDRV_PCM_TRIGGER_STOP:
 		/* TODO support be handled via SoftPause Module */
 		prtd->state = Q6APM_STREAM_STOPPED;
+		prtd->queue_ptr = 0;
 		break;
 	case SNDRV_PCM_TRIGGER_SUSPEND:
 	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
diff --git a/sound/soc/qcom/qdsp6/q6apm.c b/sound/soc/qcom/qdsp6/q6apm.c
index be8b205d42c4..4d2fa6a5e065 100644
--- a/sound/soc/qcom/qdsp6/q6apm.c
+++ b/sound/soc/qcom/qdsp6/q6apm.c
@@ -215,6 +215,8 @@ int q6apm_map_memory_regions(struct q6apm_graph *graph, unsigned int dir, phys_a
 
 	mutex_lock(&graph->lock);
 
+	data->dsp_buf = 0;
+
 	if (data->buf) {
 		mutex_unlock(&graph->lock);
 		return 0;
-- 
2.47.3


