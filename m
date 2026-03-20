Return-Path: <devicetree+bounces-278323-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0JITNORhvWlF9gIAu9opvQ
	(envelope-from <devicetree+bounces-278323-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 16:04:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id CC52F2DC426
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 16:04:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 39A2F301BFB2
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 14:51:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37F223CD8AE;
	Fri, 20 Mar 2026 14:49:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pMShffJ6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="N6Sc4Dd4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96A223CCFAD
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 14:49:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774018183; cv=none; b=Chc43qYbEqRHUjSqWNrB7eRwqQ+zd7y8yNntW4hm0QaKp0wmuDik4r1Z/6JA8w6Kvl/H2PqXZGWECvlP6Guyi6WvxRd11HT6mKClTABZSXhyttg+ULNyrg7J5Ta7TrA2VL1hd3ot+u9idVp+plJyymKlgmF3JgHPdCJ7tJTBnkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774018183; c=relaxed/simple;
	bh=Fl/z/x1vRgiwJd1pRAYk5uDKCPsjPZHEyO/+LZ3AuNE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DCVN8UoPFfVHKFwFo7S8907VElG2WTiwLWmUKzGIMkeN1gX8LxsZf+POk3doufMPVuC3tM1A5y+IitaHrPHnmO3dsc6nNEAxx6shjJwyenbwkgyKva8M4WjtZ/AuwYz8FcKQbmISDilLyBnaZcMxFN0i1dAttH2cmJMr9U7WzPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pMShffJ6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=N6Sc4Dd4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62KEDtrR990678
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 14:49:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=ngH86D4QhHS
	BBEnIjfBcEjvZR9eSdOdxegad2SenX0M=; b=pMShffJ6x/zgFCY6PFR3XFwR3/J
	Y2NRbJTEpUZVqKDPBzSJ3g35nF6ZtPuruRFo18djvgL+dsNVA0J+eD1fjjjKwsaR
	67E87l+IST3t+Fr4R378h8VXWofaMCGZNbdRXfS8jC1GN6K85iWRK++VtQA2nM0A
	PSqaJCJaiTNt+HRdjcKJxk0JfpSJ0skd4n/euGbWNrj8cFIyh3itps+PPNv1MBOB
	oefLECB7tvmsm5ZoapnB87A+KPRrQro/J7RQ/75P6hnDJ6xbLOvWjsvfpGtjo2F9
	znMy5H8Ukvd0yT0QGP1eDKNUw7W2HlyWyxQsV8JdHmYkc41/ZnR+OF6PIEg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d0k0vbpwh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 14:49:40 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-5091782ab06so91445051cf.0
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 07:49:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774018180; x=1774622980; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ngH86D4QhHSBBEnIjfBcEjvZR9eSdOdxegad2SenX0M=;
        b=N6Sc4Dd45ZJvu8ujs/mAJPIo44i8ATFjTr3lwllFyaX1e8KHs9vMAgee8p3X7h9u4Q
         cb6FfOUFUl398d1LfSplB6bcIR1jhDZ/C+flIoqgakwMvSfwqvprzWYs+x3nFbu061oT
         Wo6uZ1XFZ7euYOFbX9pm76+VjCbs0+pvMIjvtjvl9/hCTFrSvs48ZyPXTIdCJoA77Q8V
         afxA2fKb5C3bmeOwg34IzN/blijZbP4vUIrV8B+oNzpINu+Om0cZWCWDKSXp99sR5Dkx
         Viu5Ra0L49VycQtLS2T1wX0LbYKu7IkDFLEbk9Y0rMjQXC4ddnxdYmSB5cyVihCwptlA
         Ji7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774018180; x=1774622980;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ngH86D4QhHSBBEnIjfBcEjvZR9eSdOdxegad2SenX0M=;
        b=TK5Pd7Ss5tRcfYvWc3wB1H5SfyKY6hPkLH+cLmjGwZ9iw+NzbMToMuA0X2biCFFBZJ
         nFs0nyuiOlPxiahzxQGb1hNOD55BbPwoVLGqL8PJ8gOdk0sKuSTiudYA/GqW0q4EPza6
         gw+wTr+ILiYUAyg7zwLUzrWWtuWyQG3fRBrfD++QCu7NgzoWAl3PIaeaFaYsci4BKipk
         a9lsabsjryKQxXiBwdh6YbLkHhzvshQ+Md9h/p8yaekAiMw2qOHFlsniJf2d+uXNuF03
         husth9Xiz3SFYKuoOwup10SBizwDFQnjRNVzqcEqE88Kn3oY95ax0lKStaTELbmgXMHx
         rPoQ==
X-Forwarded-Encrypted: i=1; AJvYcCWxvUxZloShIvECUgx7eunBXu5+3OGsndY+/jY7ylDrA4PmV/bcLbDBr0nP/qRP79gsRctTPYygYavx@vger.kernel.org
X-Gm-Message-State: AOJu0YyCWtRtYjsBcxtHk7nmo0wlhjyjuOJwEUkR1imQbEufCfxe+SiC
	i+lpyHfiItO+SP7OfJIUMBSwMvNpIYsh6p9bmVtLd54jokGcZpbOyapZHGW9UJ36M0hJqao/Hvt
	VO6O/DL6nZuIcUegl8adaDglhpgkr1PhUpSHh1zZi6JRxguzl+czmsdjHAOcZ4byX
X-Gm-Gg: ATEYQzx2fySSwVVi0ZkDdiGUP6aPBB60TpkvQjeOHoDYP2nUB9nDiQ1tBFfS6mBRfrC
	G96/tzLGmBCSMYdktN3DinEGESRDvZr67knVkxiGHlJxb41e3XEpIlaz9ZCtYErwAtJWZ4Aufu+
	ZxQ4txrzQua3ulrvHeT5C6vQoNjRqSTBWVMhkbYHxq3/MjHhxhzyqj4+SCdrtQwV9rZGueFi9zZ
	PYUZwFmoxieJsPfoYFj91NjSejngpWyxP+if0wLrKLuMAA3E+6zsqnCQ2wVG84t2RHLjrKOYXPj
	YdJNtMhZqzfqmhFvjQ6HiuZykMmZ8f6FeYRsVitA1LcrtUZf9GFQH03N+1Fobi6TKOgclhRyqvv
	zfmp7zRRzzydq1FrgRV0Krderzqsu7NeHaWs7NRf75i/EA7utzEZ1g6Q=
X-Received: by 2002:a05:622a:5c9:b0:50b:1ecb:36ff with SMTP id d75a77b69052e-50b37517bbdmr45417971cf.49.1774018180155;
        Fri, 20 Mar 2026 07:49:40 -0700 (PDT)
X-Received: by 2002:a05:622a:5c9:b0:50b:1ecb:36ff with SMTP id d75a77b69052e-50b37517bbdmr45417351cf.49.1774018179675;
        Fri, 20 Mar 2026 07:49:39 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486ff109b95sm47906825e9.1.2026.03.20.07.49.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 07:49:38 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: mohammad.rafi.shaik@oss.qualcomm.com, linux-sound@vger.kernel.org,
        lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, srini@kernel.org, val@packett.cool,
        mailingradian@gmail.com,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v6 10/13] ASoC: qcom: qdapm-lpass-dai: correct the error message
Date: Fri, 20 Mar 2026 14:49:15 +0000
Message-ID: <20260320144918.1685838-11-srinivas.kandagatla@oss.qualcomm.com>
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
X-Proofpoint-ORIG-GUID: 61LZM9y-YZyQ8N4H-uhGjXcQcYwbKzfX
X-Authority-Analysis: v=2.4 cv=EcjFgfmC c=1 sm=1 tr=0 ts=69bd5e84 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=EUspDBNiAAAA:8
 a=QkacBUY9L2qTTJrEq-kA:9 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: 61LZM9y-YZyQ8N4H-uhGjXcQcYwbKzfX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIwMDExOCBTYWx0ZWRfX82kt/Xr7mUB3
 yTA9cAV8CSc1ZhVXbXXDjnalMXJMVRPI/Tz1vJ2UxZHkP/7a5YMZ9UAnLBw9N61pgrcg1sz4W4H
 wRIRxmtMxAV8C52WwDUAea5c5TKHVcfioDtHPCPzfZ/DPdV97hDFcd3tv2y/lsL5YuQzqKREU05
 HIXs7Qm8aSdo6qR1qiZmUmLBoZ56O8takVHnq1vwx4nSW9PCDV1buF0ZzIhk8haV/4r/cl204fR
 eFtw3G2aoIYXfnjWCqbj2qAT9E8KlEfEeUKElERrwyxLFydAiL381QiCcZFRx6/2NyfNan1NJBh
 r3Yupo+F469KqF1AnJh1aywyZ+rNpxkdSoX+j1yyVYHip103zd9+Aiav7otipyuBkUgYCMPGEzm
 NJ94fnpNQ1iR5kfuLF2XFHq8bdg76Xuj8B/a9iCwDsQAGVl5DB+Czs08XjPM/SXfHH+UDUiIk0J
 ulTUc6smMLWW2+c5YMA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-20_02,2026-03-19_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 clxscore=1015 suspectscore=0 impostorscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603200118
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
	FREEMAIL_CC(0.00)[oss.qualcomm.com,vger.kernel.org,gmail.com,perex.cz,suse.com,kernel.org,packett.cool];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-278323-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.973];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: CC52F2DC426
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Fix the error message to reflect the actual graph stop error
instead of graph close error.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 sound/soc/qcom/qdsp6/q6apm-lpass-dais.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c b/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c
index ba64117b8cfe..87f6db12003e 100644
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


