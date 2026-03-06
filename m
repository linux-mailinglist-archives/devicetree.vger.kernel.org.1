Return-Path: <devicetree+bounces-272053-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uNypIC7HqmkyXAEAu9opvQ
	(envelope-from <devicetree+bounces-272053-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 13:23:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DCF92207F2
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 13:23:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F1F30305FC4D
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 12:22:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47EE9391839;
	Fri,  6 Mar 2026 12:22:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fwUHlBx5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iPU75X/q"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D922386C01
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 12:22:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772799730; cv=none; b=UWE+jAxWbGOvGdlpWxeLs1qm52I5xnBajiTV3se8YmRRX0fSxvb6vGumeMy0cJe9gr6uOI4YiwpqNYkCOiV12e+0DYjGUPow3IlFD1nYWr3jQDJLhBvGBJRVOyDn14jQf2AFMjTl6vcOwzN59OSRY10F1rFM0eRwc915zpOFDU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772799730; c=relaxed/simple;
	bh=6jShP5otc7Z/xglFZY5mqaUqDhEckaI1JOm+jwe6kcI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rTxP4i0uF41iMogAb2BdkbeHUd1uvGEcAK2c/bD/LRm+cWUFdetLj8vGx6ukr0aAiIPJyyT2mOf3TodCZC3w8GI3jYyan7picFXf/U5S+lVnBSTLGR57n2GCzaLRai3QVGCtNnAMDvxdAN5WBBSIoAVg1EideW/KxJfg0HYmmRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fwUHlBx5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iPU75X/q; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 626BbGwb2022722
	for <devicetree@vger.kernel.org>; Fri, 6 Mar 2026 12:22:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=xKWL+GAYqNp
	+tTujHQMkzR7HCGoYVVs3sPVjIKR0hiY=; b=fwUHlBx5Up/NCWMRPmiMRow97nW
	6NwmwsX87GzBm2jr4Fm8IwkbYkUcShqcGpq0Wf16LabS0y0hFq8o3d2S+Qk2Tfig
	Szo4u2A9mKyO3x+nFGaat8FC4S6JSVNEHkUPxUPJTrYJvudTurH4CsczbVZ7ZSYd
	x8L92BHrmpEIJDkoqhhDX2bxUC16kf/ssGd3J8q4kQ3RBJhLnQGvUfvRtDXVxWia
	lzc6+jLpFUaJMa/HUj3rAHBd25CqnIJ/Oum0rozLfuEVt3Szx5F6uNCYRf+FVSe6
	/3deDb4zyLEDxwn8lWeiNQviRYotEuZ+1Fa1Fk7RMdoT0FDUXeYNDLO4v/g==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cqfg6b3kb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 12:22:04 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb3b6b37d8so4842134585a.3
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 04:22:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772799723; x=1773404523; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xKWL+GAYqNp+tTujHQMkzR7HCGoYVVs3sPVjIKR0hiY=;
        b=iPU75X/qUDdg94+sqBZ4xw9yIWI3mBv3YMKQvNOtKSAyJtfhjGVLw7cYp3O65u/9JD
         pIylQxbAfMRD+J1GPYNQvIBq8Jqgwc0xdN68MYKPJf+LjaYSFjMSFn4gS7e8NrhwnJSC
         7XXmMCBLUcQtZU6j3QnNLQuutHcJtBJcaL+CBn7fHE2C+WVcOJtaBoQ1NrwOomjdSvfN
         OeNaNBfh4XraqMzB8lrXNLtY+BeBVbHv/T1aQsBYIKL+0EXBlNmOwi6foWUWMSnv5QWG
         xptbI1To5exTCvm/Y2ViQbr3xU/gihMQQxhPULOpJCURD1ta6FDtJCzg2ya33pZEt/tw
         Z0UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772799723; x=1773404523;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xKWL+GAYqNp+tTujHQMkzR7HCGoYVVs3sPVjIKR0hiY=;
        b=l0g91ESIRQhb1+Iw826qMYq6HfhohyIkw16X5CpyC/kqagrUo3VeGRMOJH6Zv/GKgb
         Em1/PHTj6HugbxRGa4NdUSeGjTt4Ilg0k7b0d3AMCIKYGMTQJALpBn/s/MuqqCxXiPIK
         OrG58OCk1pjiMlWome/MGdfagw9k73X4qHc9MH4E4R0h+1PIgOHAuGFqyvEXu3bqcdDh
         nYGsfBDRbO6uDaxsRsGa6VnTRo8Hj5sk4YYPcANflVmopK5+Y1n9LEQH16H7D8EGcY7R
         7ocE6jIwuGdYATTWZ1TM0m6dcNID8q7XqH12HWmIsOR7o+B/IZ0bVCziYJ2ivWhSX0a1
         zh7w==
X-Forwarded-Encrypted: i=1; AJvYcCVae8IqmXjDu022q2LmsRqiTIVM46eF1BHf1OZ66L/38dTwXoBTdGHbU61H15dMFolGtE2lUs6kEwzh@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6oI1gqMTrhQoRTlhcncv5/72bApGFRqohsIxTsRuvgvtnzftr
	3uOMchch9aALVMpWDJb68WDRqti3cxCnTKPQDcfgpDLBRnLWxqn7PNrYFDUJvOqNMtB34B3yDYd
	C6Zezngd9OFJDsYMVOnjStNzOj23tR2lZCp0Oyj6xLfZ9CB0TMdWNdpPSc7jzqWUM
X-Gm-Gg: ATEYQzybXl/QdT9P1abMQkoc4sPl4itvFN4andFjbyCQlF2nJzLI3yDM9xaiJnmBwln
	9VJYsGN2mLGH0qLR+jCYFTSmVP5Nd0+A6gctWH+JJWq4UVqq4P71H4cVJ3ROY5HK4tn1ggf6lqV
	Mu3d2zlv8N95H/bgqifN64BB8AEajl54lYInJpkJLnWa2Fib+gXBYyykOUx/CTes60mofgq/+3R
	2SJsz2kFSnJRWRrSEzwpeG+q/b+11Xfo3uRlccMwf4M2XAfnkERcJkaxPEOei+jqk8yK5k3zFJv
	Ll2tsCXeS2BBu1GG1/bwuF/g6vHNIpPusXUW8ttVx4QvdIqpGm/bN6WqDlbLB/XLMoOmwfr2lBe
	MRoEgVZi76Fial6XGkW4pZtG11wG1SSQPo4kB9i7Te2RnTMKtZTxD2nI=
X-Received: by 2002:a05:620a:7115:b0:8c5:22b2:8b4a with SMTP id af79cd13be357-8cd6d40d21emr227966485a.16.1772799723401;
        Fri, 06 Mar 2026 04:22:03 -0800 (PST)
X-Received: by 2002:a05:620a:7115:b0:8c5:22b2:8b4a with SMTP id af79cd13be357-8cd6d40d21emr227964185a.16.1772799722936;
        Fri, 06 Mar 2026 04:22:02 -0800 (PST)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4851fa87e56sm111972395e9.0.2026.03.06.04.22.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 04:22:02 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: mohammad.rafi.shaik@oss.qualcomm.com, linux-sound@vger.kernel.org,
        lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mailingradian@gmail.com,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v4 03/13] ASoC: qcom: qdsp6: topology: check widget type before accessing data
Date: Fri,  6 Mar 2026 12:21:05 +0000
Message-ID: <20260306122115.509705-4-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260306122115.509705-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20260306122115.509705-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: rGVXIrs47mN62BY41j6F5i5ap3X862NP
X-Proofpoint-ORIG-GUID: rGVXIrs47mN62BY41j6F5i5ap3X862NP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA2MDExNyBTYWx0ZWRfX5p1O2AHLJUVQ
 JQ9TFNqPMyxXCErZN9LMREt00ihblFIlFFhtt4YoKAEzG9ubAILWtGiX4OinMCbqF4YB5A1llOP
 t1wgB88w2Lap7hKCJdDFjZyIcLmy9ArYSRLMNtjI8CVgEfpOtMDJYOq+CirMLOsLbV1bsv8/TMT
 iZRKgYxSovb8nn0ydQOc1VDMGipX1A+gC1gJ6YkQ2IKlzPqYcQjqdFYbWYo0sUGuZwxQ546scgQ
 S/QgNFBs6xza02T5GUuK4XvO4yNAcuBATUbGuY6IKH0XEkJqcJtXcrR63HeO4VKwn8AgDx7JWmZ
 3eHuiynIOsYARasPxVVgbxfQvLqdTN/yYbPXl1gXJ63q0PMhw7euSJelIbaIwQDKq5a3zbwTe64
 AndTh7CPgiOB+u0D127fDTnkxdNuQAKtO2elR7HWpKoXnJVmH+clrCPsFZpYKZfN72UgGa4IWlO
 P1vGK9ud9Cccx8glSNg==
X-Authority-Analysis: v=2.4 cv=XKg9iAhE c=1 sm=1 tr=0 ts=69aac6ec cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=EUspDBNiAAAA:8
 a=5HTw2GpdgXbBP0wXRk4A:9 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-06_04,2026-03-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 clxscore=1015 priorityscore=1501 phishscore=0
 malwarescore=0 spamscore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603060117
X-Rspamd-Queue-Id: 0DCF92207F2
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
	TAGGED_FROM(0.00)[bounces-272053-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
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
index e732fac9b8ca..1f69fba6de26 100644
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


