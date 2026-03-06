Return-Path: <devicetree+bounces-272054-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KGnbH2jHqmnVWwEAu9opvQ
	(envelope-from <devicetree+bounces-272054-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 13:24:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FEAA220852
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 13:24:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 591CA3023D82
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 12:22:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98DA0392835;
	Fri,  6 Mar 2026 12:22:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="P76SvNFs";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Pb27lQig"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D80DA390209
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 12:22:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772799734; cv=none; b=aeR+KnjOh36dFFqTl0Kq4SSlLKZ4H85Q112u6jii3+kEoJfNvy6ntsHVErWpY6rhbK+vLp4D43aJbkvmxGYVn7s6Qc5ZqKC2nz7fgrVKWnfgHwTF6ub1maA5SGntcSaP3pEG7qXYu6LYt1SbFptynBK53OUwzYRUPENTnYfLed4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772799734; c=relaxed/simple;
	bh=KvhN5EIM3XXPaotrLaYPSuOdgBSYq4SNpSPqi8ZqfN8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CnhdeXkJ8YFyfsjavIQIksr83EZ8VvFAX9BQuVsmyhOu5iqMUmEjzvY2THT/1pJBWuz/kSfsu5PN4Ur5nzzn2leic6DAlGAA8lLHDPNFPcHdA3Tv0ZBm4SwfyLMZnSfwMsMqvBaeFFPWU96hFxOEkvF8mvjc8e1c4JjitGdYgtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=P76SvNFs; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Pb27lQig; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 626BbSoo1189522
	for <devicetree@vger.kernel.org>; Fri, 6 Mar 2026 12:22:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=K4gYoo9JoJP
	OJ5mTuliJj+hphclVDgk4+5Zp53bnrEg=; b=P76SvNFsuij9ZEa/4BmQF7denLn
	q/n5YvrZcQ1DypSC4YOtgDhpsUHc8TahtJwm7ZU+p1RJ5Xv6mWgj84yZLydire8w
	EU06roC5QanSFtAuyb4L2vylyBZeyqWquhqFoc0XxyQC5fhRv/OYWbq6xzvMPzU7
	JDs60aY9DbUBeXKL1fdN12E+LAC3J3gVlXmcftvVQ2oLdQgpASV/YwHovTDKVg/w
	FlrLvM3chwmL14COPULPre9rOjzu9JyY0ogDBdDRXKCvgJUftYtK4ebtSbR1Y87T
	3R7LsnnV/uDNj1uTh+ZOcNQi9pEy4b7+b1mmyQm+MD3xn9Q8yjbZdsnGs5w==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cqx14g5ea-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 12:22:05 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb4a241582so4656482785a.0
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 04:22:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772799725; x=1773404525; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K4gYoo9JoJPOJ5mTuliJj+hphclVDgk4+5Zp53bnrEg=;
        b=Pb27lQigYpwr0mDY5+7fEaXdEjundDGN1KOL6Fl4GAqfVytZcSztXEdX3uxKhi0a2w
         1bi3ffXweX60nM/wGEX0kV3fh0uaOXOsTWHbHgvvKXQBMx6Pl9p/kNMQjwgpXvXpm4eS
         r7NkjbxzOLiW/qDl4jTqRnv944PJVBc/AsP2H/9LMIJbg7HsTfMV799FKVwd/HH/VKdz
         A+fhnXTBmjeuo/RGGseV7VRsLF/FexEGzX5H6wrY8yJc/J9tj3OMWtpvS9rMYY6o/kuo
         wrM9xAvbbhK+iRw6WM4R9uvBUpopX70wfS9hlqvTR88IMyVdufw2YPtHgapNTwpKG+vH
         /4cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772799725; x=1773404525;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=K4gYoo9JoJPOJ5mTuliJj+hphclVDgk4+5Zp53bnrEg=;
        b=LnOO5XzcqWyH0inXnMW077HVJjkaIj9btColq9NWzt5FfrpuLFPQ4mjyZFVmqlNUp6
         a0s0oQQ5BGhIjV5IRzqhlZ5ROK1+5+dx0w5+E7oxrxlCE5l/X4T/kKEL7lGQMpks7Xyp
         /J0aLll9R0MvKmX3tfwDoTUziAmZHbK34dAH1GmXq0ZYoHUmWxw5ywTCKY7AS08ntGIW
         8lS2/yIbSHHT8AEMomIinse61A2LY4ZLYNoRGoPvAA68h7zgITB6+kJRVqznGLxT2C22
         /f1/2SXmBDlJdQvQ6b1C62/92OxE0B8rTEwlfx6GeTtwXrMRb2KUEVrBVsR0+pjFcBd7
         CytA==
X-Forwarded-Encrypted: i=1; AJvYcCWgDw91ltC6Xkd2AI/7hienwwHOWeuqIMYsIb3k2nSTvOTCoZC3Jx8mCxx+jJN01CV0C2TQ/610BJuu@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5uKeFK3ZRXHSL4N3ZuebXL9Yq8Q0dhvi74HsgoAwkxXdAWzFt
	fSpDr3HeLoiYTvOcjeVjPzVu2f6HhnUlkrkYYW5kyalG2XDfQrXRox5U9XCQFS+iihG89AoAZTK
	RS8/DYRtemn8n1EAxBAqaMtkJnomBQeAzADgTltKkJw85wOD+vdsN4RBxzFeVGXLC
X-Gm-Gg: ATEYQzyu5D1Bwy6FpkzEKCvb0v7WP/X7NEVZibsmtBVDrwpymo5JB1Drcq+bDagHunn
	PX5MLIOLm36tzhjlnIN9L/YTq3Q2vncBBMXRFDOm1KmnpOh9hkwHxr+tkK9B4B9hBiiSoQoc5JR
	nD40PjShEmx5ZMQLWqgS21y1UnOt02L00Bmr1Wa8TqKtecAWgB8EUF/VsD64zVpdIwZA4O/rD5p
	j1Vsv+8SmvBAS/yNgeU4fDjRvE7NMx4T0kpTlO//iVCxj7pbvquKzFBUFbtFLPcEo26QzSmllev
	8XJODQjXlh2GPmqqqTeRRCoP0S/p+c6FhJw1NnZqZnh8xx0lOJ98ku+THwWOvx36obqPaK0NQdA
	2AC/ySh1wy+qOf/SbBzxBpO2P2lBoj7HcQivIFs3k7dfgLMzbOLTOhVc=
X-Received: by 2002:a05:620a:4588:b0:8c7:7a3:501c with SMTP id af79cd13be357-8cd6d4285famr205931185a.52.1772799725011;
        Fri, 06 Mar 2026 04:22:05 -0800 (PST)
X-Received: by 2002:a05:620a:4588:b0:8c7:7a3:501c with SMTP id af79cd13be357-8cd6d4285famr205927985a.52.1772799724551;
        Fri, 06 Mar 2026 04:22:04 -0800 (PST)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4851fa87e56sm111972395e9.0.2026.03.06.04.22.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 04:22:03 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: mohammad.rafi.shaik@oss.qualcomm.com, linux-sound@vger.kernel.org,
        lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mailingradian@gmail.com,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        Stable@vger.kernel.org
Subject: [PATCH v4 04/13] ASoC: qcom: q6apm-lpass-dai: Fix multiple graph opens
Date: Fri,  6 Mar 2026 12:21:06 +0000
Message-ID: <20260306122115.509705-5-srinivas.kandagatla@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA2MDExNyBTYWx0ZWRfX7VczGrD3mwwh
 yIpOaoPDqYwSsDjw6xmbqW/L8wpbl2skUjd124SBCkIhn/41+BY8PbIS2HdPD+Qqh6O4drPMQH7
 Duys/PAIBZAVWiqCzcL9ovkYR2KhQUXs44WA/U61TaeNthKDEqO2KuIO2YyiS8EUXkrAQdfbK7o
 Sx0T0ipeMpsLvntFJqcT13gicQTtOVl8tBdbM64Cw27Lte273JMTs+3myiQoqDwvYfYwi9km9+9
 k/UCXDhX6LfP2SWxfJ2tpVyTw7X0bBp0koGVoZWzyd3G7XvLodT85xD/9qnfqF0MuHU0NIYUThF
 CiuleNJKQkXBnbWj6dQ0UMHcsIXXFP0U9j4VUao+WKt4N4wC8txGVh8V7HucK1VJMGo/aBAAM/H
 x3+Whccs1rTVWCN4G82lLgnhq/yHjVyH8Dl4HNofX8bXhZHj+8dV6qS0Uu1eZzo09Sxz8vO9oig
 bTgDokuSNyVtcXCN2yw==
X-Proofpoint-GUID: KZa15bfhVc4W1cLjlRINhZV1mO5TGQnt
X-Proofpoint-ORIG-GUID: KZa15bfhVc4W1cLjlRINhZV1mO5TGQnt
X-Authority-Analysis: v=2.4 cv=e/MLiKp/ c=1 sm=1 tr=0 ts=69aac6ed cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=M_mAHeyD2EURj3i0m2kA:9 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-06_04,2026-03-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 adultscore=0 clxscore=1015 spamscore=0
 phishscore=0 malwarescore=0 lowpriorityscore=0 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603060117
X-Rspamd-Queue-Id: 8FEAA220852
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,vger.kernel.org,gmail.com,perex.cz,suse.com,kernel.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-272054-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

As prepare can be called mulitple times, this can result in multiple
graph opens for playback path.

This will result in a memory leaks, fix this by adding a check before
opening.

Fixes: be1fae62cf25 ("ASoC: q6apm-lpass-dai: close graph on prepare errors")
Cc: Stable@vger.kernel.org
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 sound/soc/qcom/qdsp6/q6apm-lpass-dais.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c b/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c
index 528756f1332b..f68d4b4974f3 100644
--- a/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c
+++ b/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c
@@ -181,7 +181,7 @@ static int q6apm_lpass_dai_prepare(struct snd_pcm_substream *substream, struct s
 	 * It is recommend to load DSP with source graph first and then sink
 	 * graph, so sequence for playback and capture will be different
 	 */
-	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
+	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK && dai_data->graph[dai->id] == NULL) {
 		graph = q6apm_graph_open(dai->dev, NULL, dai->dev, graph_id);
 		if (IS_ERR(graph)) {
 			dev_err(dai->dev, "Failed to open graph (%d)\n", graph_id);
-- 
2.47.3


