Return-Path: <devicetree+bounces-278318-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UKKjBTtivWlF9gIAu9opvQ
	(envelope-from <devicetree+bounces-278318-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 16:05:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 813FC2DC48A
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 16:05:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9D42430BE988
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 14:50:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D57AE3C9452;
	Fri, 20 Mar 2026 14:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="H0mudFIR";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="C6LhaE6P"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77D2C3C942E
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 14:49:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774018174; cv=none; b=OGP+XEmE9+gTNrWOU0DPghs+0/klscW7TVUG/idgL2TfbgDvvpPkHNHtOIQRzBb0A0eK37xw1WTe1gQiSQfVVO4EuRkZq6EWjirXWyAb6cA6CXfqF7HsRJUGP+VMmhwQoBTUcqpJCJT7FbpuLHmxb+JyZpDRWuxYcWGxFtlniIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774018174; c=relaxed/simple;
	bh=uSbPbbEF96iO4/jDf1d3kH2TPon+s7DHfw5HFTuRwdk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Faia4UuQUwH12cUTvqQdVrge2pgfCEJ+QdHoR+ZxWJM1lbTP/6dC5by93ai/0L6RfOVxA2ni5rfFLLUh/vUsaG1y/6zCT/Q/V/dPayk78heRZ21/0hIATWqyi8s9Y7NBoNdzbCKQsHBFESgcZ9HnAU9NbvJr8eTybUh8Cc5cawU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=H0mudFIR; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=C6LhaE6P; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62KEK8g91691935
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 14:49:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=/jKQw8dGxLC
	6/wkqCmrBcQV0wz2LZBd3Fby8QVjVQNY=; b=H0mudFIR1/xHDAwKWwh7u3rW4UV
	0YoL2HXoCdZfXn3FcRnoYI9SiA52cx+zOE8LZfemtOw8MIsAmmaCbajCBT+UgLVb
	hBOfjxD+fS6ypsuDT5hlkO3CsTspZBKdfgMiZwx5j+BbfKwnZ04QndJR/ZHgYgnL
	nJdu7EeqVUOL6fROJWgJcNH8PvaDpjgr+ZpaxIkdsPRb8iJHlZx4x3qp+rbaFO1N
	McnwM6KtJoxpfg8x7SjvvU1rrEWsqQsi33wxvg9FNi5FF58fQGsyAetdkR0nr8M6
	DBjLiVU2s6I8Jfp2hDCpvQkjNaPyHL3CpltKY7Cna9fmFpYJrsKkD/EzTAw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d0s5d2app-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 14:49:32 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-50b43343d1dso11201401cf.0
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 07:49:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774018172; x=1774622972; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/jKQw8dGxLC6/wkqCmrBcQV0wz2LZBd3Fby8QVjVQNY=;
        b=C6LhaE6Ps8jL1tckqKCjDmeMdUjVJAWHXlFVAcPnh/aVEJCmZu4JXG/PIJ4YACuAja
         eOW1vJ/eYeKYbuncY9BKnxZu3s+mEzPW0XG3CflvcPalT40THHLa/pnZhV3XX/GYIRyB
         J7rVHXVBswVcEchTlb1cl5+/8Vx0vdIlovSVRiEE39O2gI8cxxZvdItvyfCCZijju4Di
         Wjq25ie3fG45curUGmVvg5OFAfsUQ2pP0EhbO66By2HvpIsXBqQk6PyixzAvjjH6LQN5
         rsgB3l8LR36mxY3X3Cy/Hth09M6GnbHN6OjJ+S972Z2FXWu1+MXpKBf7aLifaJ7qzWRT
         u8MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774018172; x=1774622972;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/jKQw8dGxLC6/wkqCmrBcQV0wz2LZBd3Fby8QVjVQNY=;
        b=FaoWjDGGoCrp0AKsVlQO8dfY+h/GpZR6pOzB7HfUGOM6l3Ufe8h8Miwna/DvvQkKc3
         sDwbv6LDitSqt4yNP5x84jzqDb4ICUH513xW5fBI+i+BEat7fx2+3nEp4AOZSYhIDaOM
         SPj11U36lb8bMNU4dCIo0BUGxtqZSpNeG8Z3cCbFJLb9gi+fSLAYM6hssYH7VrY68xuX
         nj8qJyNX00oQhtWGKzqE/5A2RG+bJeerVYXPmoeWMRfaqreznRwZqWCd40dVSs+K/OpC
         eh6GKVGuC5RtAy5esMYxGuXQDVAIz/cUlVE57vawK81NeH+4cVzk9OA3oAcxGX7xNHeN
         YgyA==
X-Forwarded-Encrypted: i=1; AJvYcCWNuqGiVW7A8LyOpAr+iOAJdebwPz9x+PeWtt4wbuvEjUO7qxzB1KVCKEtGXzeKr6MUrZX1Psa+fiud@vger.kernel.org
X-Gm-Message-State: AOJu0Yztk5htRsoCXVQYwYrrevCg9kpwono+zxLxddaNYa7v2qmRFRXN
	fT24AlOuAzx6CPRYecsejawKOOu4p5eG+V2yPRbFjKPikbERt3QEHWO/HZpGMMOX9h5Ld/OyyDA
	O6iu3Iqp8771Ndj/hrjGI7pwz0JkrEYM7jlWLGnkMw+jbLB/9af/YtT6GE6wPeNF7
X-Gm-Gg: ATEYQzwdCia7jMYopK9ZfHncSqltyxpw4twzOf5KgcddWydZP86AFipvujZ/lU1cR6Y
	BeRnXoN5XCWKkuNFF1u2KDA4Mp87GpBmZKmg2WtpqyAuWcQEhl+rhw47JO07p5ANmtty0KLn0nB
	u0zh1pTcc17tvOS37dB757U93vxw48hHVIAj3RzWAjy5FFgbf4K/Nb0km8rak02K/JMcdPLYxVI
	UB8wmqZoX+iTQh5bW+4aCqjjI46w/TaybLhAX6DvTScKOvs+4hRVYbextwWJYX8fG7igvUJFy5g
	Vyaj8+vmO0GX+melgeBqp03NcU16nBq9YlbB7l5v3FVAtOVhc0NxzU6JEya6g5TJYEpt1vcFWs9
	0RWXF2AmK8HlhHtxDlRxvGjaVZO9urW5EeG/Ci+hGplgMuWSsBBSQhqs=
X-Received: by 2002:ac8:588a:0:b0:509:609:b2e5 with SMTP id d75a77b69052e-50b37453b95mr48199231cf.24.1774018171715;
        Fri, 20 Mar 2026 07:49:31 -0700 (PDT)
X-Received: by 2002:ac8:588a:0:b0:509:609:b2e5 with SMTP id d75a77b69052e-50b37453b95mr48198571cf.24.1774018171219;
        Fri, 20 Mar 2026 07:49:31 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486ff109b95sm47906825e9.1.2026.03.20.07.49.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 07:49:29 -0700 (PDT)
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
        Stable@vger.kernel.org
Subject: [PATCH v6 05/13] ASoC: qcom: q6apm-dai: reset queue ptr on trigger stop
Date: Fri, 20 Mar 2026 14:49:10 +0000
Message-ID: <20260320144918.1685838-6-srinivas.kandagatla@oss.qualcomm.com>
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
X-Proofpoint-ORIG-GUID: vcN4NNExx8YxosGfdgGAvYrXpcQOLA30
X-Proofpoint-GUID: vcN4NNExx8YxosGfdgGAvYrXpcQOLA30
X-Authority-Analysis: v=2.4 cv=CqCys34D c=1 sm=1 tr=0 ts=69bd5e7c cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=w9bA4Yi6UXS1dLCTJJEA:9 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIwMDExOCBTYWx0ZWRfX4YyuurBxV2iC
 1iVAJmEcf/1zp7sNqIhy3PwZaKgu02oTSCiC6+eePGxURftpPocdmlwDg5WVrEoT76Ta4O1jEbt
 Q/J4FpZ5fwEVyPfYEHrFSLBxu8kmDQ8D9eNPIeBBrpay76764/40fJkPVSHpDplpU5ZR3w70um+
 xqirJS5W8jW5PnlhlpDg2+YNnP/LUr39QW96hSBvgjpfN22Sh5PkRbi/E1Bgf0PHYTxghF40JT5
 LzXQYa0IKDKCVf6f2UXTRfBEfpypB/FpSngyPqfPbNyQdzkkqqOLcIFfUavudzalTd/20J98tiK
 mAXhOvZEz57UMhCld988fbRaeo1FG/OkG4gL/+yVwvaxj1QuNnEU7bQCRbzuxvemTk5K0zjyT+Y
 t2AzG7+XBD4B/v37VtNIitcuONROZUL/haxqovMRKdsjcHCni9589Sz0hzdeMufJDACXgyp/Nz4
 IKv2zISqXLwFi7ck70A==
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,vger.kernel.org,gmail.com,perex.cz,suse.com,kernel.org,packett.cool];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-278318-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.969];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 813FC2DC48A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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
index 306e928e7b49..292be457764f 100644
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
index 1fbcbbf3123d..9d4cbe29cf94 100644
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


