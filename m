Return-Path: <devicetree+bounces-272701-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6G4DAEpurmnCEAIAu9opvQ
	(envelope-from <devicetree+bounces-272701-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 07:52:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 592A92346D0
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 07:52:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0321030420A8
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 06:51:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3C28363C7A;
	Mon,  9 Mar 2026 06:51:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="b/RFu8QE";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="E9fdx82G"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21522363C4E
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 06:51:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773039107; cv=none; b=GAcrr9/q/y7iAVJzXmymHWsqcOf5oyrF5r0eIPoXKA+GhDrXg/nnIJ+PxZZytEsULtE9naaGooD1uIpXWTOTsdk2eFziohNv6XnhjCEpuV7Dt0ifnidlGhl7A/CKu99G5PEMedwmVUGuPF6ol/y/ZxlJFvqf8O9tBZkQ4ioIfPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773039107; c=relaxed/simple;
	bh=6jShP5otc7Z/xglFZY5mqaUqDhEckaI1JOm+jwe6kcI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DfbxxHRrY9pbftEuXvBw5+PzHsJK1xmNZoD7cdgDT+9UmZdhglLaoHwbpmc+XLDbs/aKf2ZjRo6fSD5ji9ZOPvl4if9WkUB8BWmRuLBCI8jm9/UwuvqS1e1kOyNc5tEKkFz8cjqT4J+/E7/CA1awojmTVW3XcosiIPJ6NyOWmfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=b/RFu8QE; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=E9fdx82G; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 628N1EIj3466070
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 06:51:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=xKWL+GAYqNp
	+tTujHQMkzR7HCGoYVVs3sPVjIKR0hiY=; b=b/RFu8QEUhQsfImzB+Sa8XC+Dd1
	6oNJGDwefPGEG5xw5O423ro2suzPx60HSxzBhBnFYEwFBMj/lBNtlDkuDnd2Af/r
	/6kMe/vZ24jJIiQoDuDAzJhQiX4fHVhsTbw/egMmfKnxgNgeJR00I9HS3jo85qRy
	kDe268BsZwnNW0KFGuaYzGXeyRsVh2PND7c0tIEDrlw7IVj9LA6hddh5U7HkTmiy
	7moq8VLR17IDhIXLrpbPN83y2iyuSKSqVJWMPfi3leXUoidQfMLg9+JMnbRt1vQl
	dSVlbDaejYJxc6d5Xt33nM2MrmQ5Gj3Vgy0XAV6La70DSLmvpdtX4U8cDRA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4crcd8c4bh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 06:51:45 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd85e08fddso817478085a.1
        for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 23:51:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773039104; x=1773643904; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xKWL+GAYqNp+tTujHQMkzR7HCGoYVVs3sPVjIKR0hiY=;
        b=E9fdx82GV9EmhN/H1xRH9TZ2JB0kc/kCualgDOmrTfRdf8mE8I3V2xp3CC1CpVW6tj
         LP15tKEFHNXd7hZzrXZbngraTdg7IHJPjsa3E5bwlEwUguPuub5NJbUmePZBiFRnFFqy
         BkV5E5pZflZJEp7HwcMG/CFNJ3sEnZYNnZVpaCXYr5F8peMvuLxMqHgao2+lRNDJvQgf
         l4ML9fPVjnTgfswmxGYYOC1JXeSHTvaBhU/X7CDrjZ+AV2fDp4AEM/jEtU41aEWG22UH
         3jfQqPMrzXPrE6fDFccDJrTRT3XuDyp+Er/9VaciVFkJNrM8V8LLNIgiFrvHi4NiM6nE
         SvPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773039104; x=1773643904;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xKWL+GAYqNp+tTujHQMkzR7HCGoYVVs3sPVjIKR0hiY=;
        b=Jfk6mvq0U5mDAz1r5E5ztn04xGRFbDgLgaYYsEh8k3K8IlhPQuCbaOAUJHCxtqDMM5
         8weak0GTyUP+45t/dtIABVnQE8Hyo/v1r+t0jZguz/Ni+kAaU5Ez7tutGeeDC1Rxm9YV
         sBU7Dhzcd1u9WSOvuK31GeZjaG8FDOtAly1kQGc61wo58Kmg5rck4o597THuGDcr9Fcu
         4jLEf5EvkuOHSE3Ix2PZeMYPI4K5en3Ly/BR9We3k2ICMbrRr+6rhrBqHyVPRwZ5vXUK
         ChDFo1jw2emtoo9DqU2cL1+tjgY8vhAGyzMyKy1sTcpErw069Ust4JBc0EEZQWaAB4mP
         /DQw==
X-Forwarded-Encrypted: i=1; AJvYcCW0FpzK/EPeuGbAnslMad7iGxrFi8WtHXesxTygblu0pAi1y1s9jExol8+52QXidfq7gjTfFEfh+j/I@vger.kernel.org
X-Gm-Message-State: AOJu0Yywemtp1WpzxDNO3o2XNi8z8rqUgKRURwBDHsWWPA8kbe0Ee0jX
	dlO+CYlyUO2KBI5d6WKX7McTOoh02S/0TuVR2cAWGeUAqFDz1boHrEnDua3fmDt2rK3tD16PMqM
	V7s5QDrkgKG3cxsguRfq4XnwW9wxNYYFpdydZm6TC+WzvDG/yR9WP0YQibWj7OrH/
X-Gm-Gg: ATEYQzx3Bq9C5i84Tr2RiKRh0DyxwL6937xruiq41RaAciv25/svjG9nSjD1BXPJfmB
	bpT/DN+vNynVqEHfyuQuxjr52OXaifqNzo9nJ9MhOqbTKl4A9M0lU6fkWd7RTfigb/n2KeflXsN
	Cd7vPn5xnr3iSz4pm8qMgJca0/l1tXAaTZym3BP5Pklt0pyAWvGcPR5T8kRgeqwmWg8QmXYXJXj
	xsyqOYMN4FkNAVWn8AaZqpOaXgOs3OuGU+9g5W4btsJMcZ1hGCHdnku99IqHdZknI3VWOzpgTPz
	0TrUMWI2KNzMjdjojg9NDIytW9YAFb48WUEUpyDMIaRMKnIL5IO7WCwdZqXtX9X9sULsmIVpzdx
	dYh9QopvAwL2CIlxHsvzhgBMYItqaMct1hGB3Z05AORjliCes6YOm4jw=
X-Received: by 2002:a05:620a:c0b:b0:8cd:8142:b7e6 with SMTP id af79cd13be357-8cd8142c5d9mr413623785a.26.1773039104672;
        Sun, 08 Mar 2026 23:51:44 -0700 (PDT)
X-Received: by 2002:a05:620a:c0b:b0:8cd:8142:b7e6 with SMTP id af79cd13be357-8cd8142c5d9mr413621485a.26.1773039104234;
        Sun, 08 Mar 2026 23:51:44 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48529f01997sm80449975e9.14.2026.03.08.23.51.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2026 23:51:43 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: mohammad.rafi.shaik@oss.qualcomm.com, linux-sound@vger.kernel.org,
        lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mailingradian@gmail.com,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v5 03/13] ASoC: qcom: qdsp6: topology: check widget type before accessing data
Date: Mon,  9 Mar 2026 06:51:27 +0000
Message-ID: <20260309065137.949053-4-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260309065137.949053-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20260309065137.949053-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: ZQPDcv4MrSBPkmwtOM9-qu9y0GZqV113
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDA2MSBTYWx0ZWRfX9QypnPgp6Q0L
 4xCTAqcnPr0gufz1HabiMLx9lyqwVCoS5wAddp34uf5cV1G1w4jsPHGhV3tC8YDId06pNGglqDM
 Y1X72l7bWm23CD4wfgCbTVQSJAjCBty17ziCHqY47wxexUhISe4Me0uFUi5GlCO6KofZuG4A6J5
 ucBorN1cO26Mr7/T+9Pk6BKYxUl6ZsDQi/qxYMvRsh20fS0Y2V/ZOXvWNdKE9l1vblwgaYAovm3
 /xK0iTK3A8PT5YhxhrF7Z9HpddpqVmC/Vt9exu5Q7l3a5x5Slk2TB7TV6OWRRVC0McsUNErrV+O
 gdi+SqBL6PKalgmqc8OVIWeZ2cftvDPBvMzLQ5jPatN240gqUVkIoTVkiYmie06DB0ff4Rt1i6o
 rynEibXYlly7cMvnweH6KJbw+r7oOngpoBS8liq7No8IiPLuFoutBPpd+PQd67/qj9qmWD6mEvx
 m2L9R9J0BcmNk9hFOSA==
X-Authority-Analysis: v=2.4 cv=O/w0fR9W c=1 sm=1 tr=0 ts=69ae6e01 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=EUspDBNiAAAA:8
 a=5HTw2GpdgXbBP0wXRk4A:9 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: ZQPDcv4MrSBPkmwtOM9-qu9y0GZqV113
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_02,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 spamscore=0 phishscore=0 priorityscore=1501
 lowpriorityscore=0 adultscore=0 impostorscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090061
X-Rspamd-Queue-Id: 592A92346D0
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
	FREEMAIL_CC(0.00)[oss.qualcomm.com,vger.kernel.org,gmail.com,perex.cz,suse.com,kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-272701-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.997];
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


