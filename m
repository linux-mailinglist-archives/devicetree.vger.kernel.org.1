Return-Path: <devicetree+bounces-267582-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kORAGJSXnGluJgQAu9opvQ
	(envelope-from <devicetree+bounces-267582-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 19:08:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2269717B431
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 19:08:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BBBE830576D9
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:08:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A53133B96F;
	Mon, 23 Feb 2026 18:08:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aYrDs6DN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="etjOHkyZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C955733B6F5
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:07:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771870080; cv=none; b=dtjM0anD8qcQZqr6qhB+qULXhyUUXj25nOLcL8vXMGbhtM4qz9+VXeLQIOqZ2FUxP9NWDNPhUEmTFIj88ytuJqIxZ4g5Q7ePfNMjYlxpQBv4gIcbe4c4G1v0KGU6KjkKNIh17wh0VwKTy0q94Ury6vT3m4Dc8fZpRUn3Mm4meQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771870080; c=relaxed/simple;
	bh=DFQzZINZtXFqVKS+d/H7Nq3BWvhDSfyQmYunncyvNfk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Idp8Qqmni5Mtwr5szeRy6jIXr8qjKAyZsUY+EBLpRdh9xlOJvc1dzWN+Fraq39erndd2Ma2Sv2E9L2+R21oyW40s+OVrkMlyj851CaaUFoY36xM+RIOU8f9A+srbooUZ1b03CCutcj7i/KtTcRlmUs0ecBdXij/n4TiS4Kl5Y2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aYrDs6DN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=etjOHkyZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NGRYPD1641360
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:07:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=TNBgtOWdzqa
	N0EAZI+bdR9OoxF9zijtL5mpQAoIQbzw=; b=aYrDs6DNFPNEoEJsTwHNDDk7mHt
	YTg5WGu6MEbBrB07Bcug4w/m1IhfiiHDnPUIamLCYKetrp3eipZamUvHobO2XLNL
	yLUo//y5yyw15TDdV3DoebJPikN0Y8lEnep2YG0j4+eHhVxYcjMdiGiUxZuHumw6
	9phgdA0Sq4OBtQX7ynwM7cY/rnZREtlkbTKpUhCzzTCLzJTOXQQE3Rb5KL/W557y
	9A83GYncnFTSEy70aWK3e5KHjvWQ/WxkPVf6L5ENcPEFvafH4tYdcyVtTlGXOw9P
	kzaI2809gKYmr5cBftaTQofpmQx1teRcQrXZIEoXzYnJlLDGJ+XHCBkDLEw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgte8rb38-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:07:58 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c882774f0dso4187350285a.2
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 10:07:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771870078; x=1772474878; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TNBgtOWdzqaN0EAZI+bdR9OoxF9zijtL5mpQAoIQbzw=;
        b=etjOHkyZEkBNysLBkiaSMUGy1ULxxqy5u+BWXg31yUyrzFQlBCkKTXJsqMpwjYBEzl
         ol8EtuzS5R16Q/+Srio+lnRJhcfJ+YhaXFBzayYpo1xEMYVXHYvGjKNaDYkiV8YYrkiT
         5d7Ix7VBugG+VdK9AeFZMJPiWl3f289kCb1MKyseKS878prnv8z4hXi51RyaTG64jk2Y
         3qPgdBYuGpj4w5jxkgICGGAosRBMfafBLStqQOSZ0g5oQQfeeciToJxrexKpf4+5kab+
         KAuUbV981zd1pkqt8GFH8TU7OKHyb/LycLluTQ2unwbPyuS+bUnKPYx2fsi6BKl2QRzn
         Wuxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771870078; x=1772474878;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=TNBgtOWdzqaN0EAZI+bdR9OoxF9zijtL5mpQAoIQbzw=;
        b=RxvxcMLqaPNp8TGAlyhGzDKOYZvtvvsSQiIbkQIvojlT/NQMkYpf351OWdBU3sarzB
         MnbUhmu4tNmbogqaq4gAG+f1zllskzjmnQDg7BRXeL1uiyhJNgeoqNjtdIZViLBg0eVm
         a5t5D5aDWHP3O7JWEZkACidx105OPzFEcCuEF9Hq5gEk6Dmo2iAdsf0biwt1lsg1b2fA
         oc3BtxvEtKZ93cPxj6YzstURDv1MB42mErm+RMWqf2YGEK/Ppk6Ivu+ze1xAdKlC1mY4
         sDWW5G5c/xvHah/nrduYxXoklqSEjla8g6x+9+1VdiZREYEPRP26XXnjJ9syNojqf7mv
         BnFQ==
X-Forwarded-Encrypted: i=1; AJvYcCX0TtWtx4ELDEJJaqfl+Qh7duY7YVUvaayAHiaWVZoQxmqGz76M8ie0iTfFeUED9rLOdvCixGdFmhhj@vger.kernel.org
X-Gm-Message-State: AOJu0YzI09cVApbojENieERn+DYkVp+I44O9VFXlwEwj9nW4SU8QmLMg
	q+zNdxgnkcz0ZEv/N5/AHmxQCVGou+TSiUW1MX0HWVTi0ihAhDilSTsq1B7gPZ1P7iIyKr+w56B
	oiaTUGn/Dkcz0bC9U2z8En3aKy7ZtUT88I5mIbdQoOQ8pcuWuOJ8Y/gI4WQKqU9kj
X-Gm-Gg: AZuq6aLvatKbwI7uamgdWkxgXl7MOGQEuQLzr/+9xCU756RjBTNzC2NYBUaqxGGFOkK
	f0x/qMKbLgBnlitcMEWdcbq0e1mzH7hOgRHyeyiv42Dfvlzn3JTzlyHJA8jarJEHgWwAHY1KDFP
	i6jyIMZbJjfw+PQovCjO2VEFXtj/E3QqjrbvuMuLjN2YtR7D/dTtCTJQuH6PLKWjjVwfEHKBxqb
	AUfuh2NBRKZah2Eqdc9R485IrlcNAdQCCXvYT6Cy8gnBrwJysBWG47bjV9eu6uKcCVZnRwoH8IP
	yI1tGaBOrGFihlclZ96Hp+QyiavICLPY/25B/98PTUam8H9/cUpS+bP0CcG23p01ISzp59zx5EP
	0GH4cqYwn/mdwnIfB1VwjhQ08J+sKqYxWmRxzeZrWRCuoZohSEirsNKM=
X-Received: by 2002:a05:620a:191d:b0:8c6:a539:55d7 with SMTP id af79cd13be357-8cb8ca800d6mr1186629085a.55.1771870078207;
        Mon, 23 Feb 2026 10:07:58 -0800 (PST)
X-Received: by 2002:a05:620a:191d:b0:8c6:a539:55d7 with SMTP id af79cd13be357-8cb8ca800d6mr1186622485a.55.1771870077646;
        Mon, 23 Feb 2026 10:07:57 -0800 (PST)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d401aasm20458574f8f.23.2026.02.23.10.07.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 10:07:57 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: mohammad.rafi.shaik@oss.qualcomm.com, linux-sound@vger.kernel.org,
        lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, srini@kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v2 02/14] ASoC: qcom: q6apm: remove child devices when apm is removed
Date: Mon, 23 Feb 2026 18:07:28 +0000
Message-ID: <20260223180740.444311-3-srinivas.kandagatla@oss.qualcomm.com>
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
X-Proofpoint-ORIG-GUID: WYgIqDw1RXST-yqFyTFlRaqa9-ZhPCqT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDE1NiBTYWx0ZWRfX+/9W32L49som
 0Bwtiwnk5WVhX6KMf3b6IvcY4DkI/DTEYZIoUeUHV7ibyDcazW8n/OUhY4MfktEyGeg1r8qE3G1
 UVLaac2nwGBSEWmISTf0NHxuiM/5XbF8tffMQw75EEZo8DRD8InLRnp1Yg4rmSoA1wju02tus1P
 Q7sYOdCkwKy5t5X0kElLoWicIlJWuzu6AsYoW8no7QvOesaNSQLdKOaffcP+/k0DUfGBhjYHJ/1
 a/4me7NcjmS1N9iuEZoqta+xp7zWzStKXnlviqwXrusklacnin1Tycm6TWgT1GjjUa6ZoYm5L4o
 UY2MFkXShrrICWSOFrUrfh8nGUP08g2fDX/Y7lpWGUxLCAJmsw1GT1lbamA9vHLcWiolhVkoYLJ
 IfWpOl7hEFS1SI7YfH9CRdFzyqouVvHMHIEt37oqevstrxsVuqVkEGLrQ//IWeZhyaMsEgBXBvU
 PlDiyM6n9uki3l/VitQ==
X-Proofpoint-GUID: WYgIqDw1RXST-yqFyTFlRaqa9-ZhPCqT
X-Authority-Analysis: v=2.4 cv=WqQm8Nfv c=1 sm=1 tr=0 ts=699c977e cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=vtfATQNByG3yFndO7KsA:9 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_04,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 phishscore=0 suspectscore=0 adultscore=0
 priorityscore=1501 spamscore=0 impostorscore=0 clxscore=1015 malwarescore=0
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
	TAGGED_FROM(0.00)[bounces-267582-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2269717B431
X-Rspamd-Action: no action

looks like q6apm driver does not remove the child driver q6apm-dai and
q6apm-bedais when the this driver is removed.

Fix this by using a manage version of of_platfom_populate.

With this change when the dsp is shutdown all the devices assocated with
q6apm will now be removed.

Fixes: 5477518b8a0e ("ASoC: qdsp6: audioreach: add q6apm support")
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 sound/soc/qcom/qdsp6/q6apm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/qcom/qdsp6/q6apm.c b/sound/soc/qcom/qdsp6/q6apm.c
index 9891e757165b..be8b205d42c4 100644
--- a/sound/soc/qcom/qdsp6/q6apm.c
+++ b/sound/soc/qcom/qdsp6/q6apm.c
@@ -752,7 +752,7 @@ static int apm_probe(gpr_device_t *gdev)
 		return ret;
 	}
 
-	return of_platform_populate(dev->of_node, NULL, NULL, dev);
+	return devm_of_platform_populate(dev);
 }
 
 static void apm_remove(gpr_device_t *gdev)
-- 
2.47.3


