Return-Path: <devicetree+bounces-271033-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aL6SAPIuqGlPpQAAu9opvQ
	(envelope-from <devicetree+bounces-271033-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 14:09:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AAACB20013E
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 14:09:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5EF8C305F51E
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 13:07:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6BC6286D5D;
	Wed,  4 Mar 2026 13:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="agljdLx+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HDYt/QHo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A1E427FD54
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 13:07:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772629642; cv=none; b=q3b4hZVjKD1aF4FW/Od8o3lwvq9iAgugIf7VzoVk2XaSpepIXXb7xr0r3XgXDPzKcBQWtoXDImiOj5Q5ZCz1gYJ2XS9koxXzm0zTjBIKSBgxjbpJ+n23SVrVG+7cuELX6W3SsYFdRR/RvE6U598sejlBW2tZQeBTsaLbgA8fzfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772629642; c=relaxed/simple;
	bh=fldykUob5Z2453rW/Bu+WyVup1MSOjtxkIDMh+tQ1tA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tfLhP1nlafgOMMxx8RExpVUo3O1zdvaTdGNRjiyduqpF+fSSD8tiItxU4GDktDoUTUilI3epcGWpi6pl3Vil0KO9zmDxD03OfTe1VrACHE/Q6eRk+7vKbrci8XOJKl4jjttnuI5P5CCGEyUNyZVrO8IM3uU0pbOJTyl7gRm+Jh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=agljdLx+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HDYt/QHo; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 624CFaFq1072461
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 13:07:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=xEO2oGNAYFh
	ISLn7OT5Tnbx10tCrKXxJuovsEhU565g=; b=agljdLx+cxPzcUVzBVOIsLql/em
	iy9AQWlyf8q5bORCFczmpdX2CI1Q9ANGflc5qYghtqlEgDmotcdMfnzE33B8TPre
	2spOcRL3RHhwIensSpLIYLiF3x2ZbNrX6pguhjq2FaC/nfJZu4RY2Rdtous9snss
	WqMqnq9eOXijcpYQEmQAXbPF3wBo/VgwoBgaQAcHLTCRWB1C29u62VT+CyXO+m9v
	3KvnASUuvlz3NhwyIL0THlWhL4W4kAuXXdSbg5jin7DW5BemET+RwQj0JneZp+U7
	EnMtP9X9YlOsF51vUjeA8Ld1NKKBbMuQHpAiXVm3vYk7vndVY5dqksEL2bw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpcxfhr93-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 13:07:20 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c882774f0dso4258103185a.2
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 05:07:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772629640; x=1773234440; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xEO2oGNAYFhISLn7OT5Tnbx10tCrKXxJuovsEhU565g=;
        b=HDYt/QHozcY0dzL9cQOr5DLBAcy7hn5CeYC1E05Ic/g6T33rZ7Aq7SI/NtSVA/JrPu
         sHg6GCiBLOxt0m3CerdhKgu5SemP5EW/LiD61mqRFNavQOEN/XGOt/ztBoFzd+legbkL
         zu51p+jnHzh0H8EAl0qyVxXebBG0bvkZx395Os4YULf9EOqGhmk0EGJo9Ubxj49jFXfI
         tKyFarbNFFxdN7K+COTYapVZx/yGOZKJUw24Kxm2nLrC1QQCaotXzMLGAgRBv0BjBvf7
         XKlcYS3+LA3AL2OPykoZ3TvIwVnc3nSGL3mhnOGeaSjjw23vxcMR9+a9ggZMFjlJbkZY
         kZUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772629640; x=1773234440;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xEO2oGNAYFhISLn7OT5Tnbx10tCrKXxJuovsEhU565g=;
        b=GophLNanpaCMWey2AgEct0FJdH5v7MnMS0oeeVZJVN+AR2ebUX8/mgQqU3QJaJlMFK
         YbcLyQRaguNbHk/zgaG/yggcKJIu00ZLZBNuaG58OQRiUhJVYoot1W3RfhL8lfKag2bo
         q6tUJYxEk/1b4OpwyEmAg5ie2gxFoy9j1EUWiB0o5jRNC4TvLg2UESPLYOTSzuZ9YTNS
         3tho4PZO2hz2Kuz8OShyNBPoVsHHnUv16mgVoe9FudDQvLfx5nww46yA01R5eYEcSUU9
         vdMrplMoXbyqB8FmzFQgUF1o+XCWDLiqrzoOYJBCUsgd709rxUNuw5+J+0W1n+UJEwjF
         QRTA==
X-Forwarded-Encrypted: i=1; AJvYcCU8Goch2y9VOi/s8cTWakAn6aiMdx455G+7HEiUSLeRMuJg0mzjwBxWkhWkQ19VkfBU2c7TmEYh+i0+@vger.kernel.org
X-Gm-Message-State: AOJu0YzfzNFNNIebkPX9oDyIfd2ZLwXiZm8NhD2XB5GVD9mSRvE/EgfL
	8NPyr9Qe3D432X1+l4uD9RadB0KKKqLfTjYAwLCrF2GPoFvfC7cM1No3rGgcRdNkF46aH7OPi4T
	i6l6kmHQ8iuTuWNIYAfmd3joQGntPzm+OjVwzN3rqQsUdqEfMPd9uZ+LQeTcTiFMW
X-Gm-Gg: ATEYQzw9F8KBYmDKNPhD8H8joKY7yLxrG3pfyo2CCuUgq8SmKBX10D9sHztYONNdQix
	pgwLbm2TLM+nmfbQJhs5N3hSQ4J2LUZUenZMDbNEaVgwshTr7HmlcN+mz4XGVF3aRvw+//lxfLD
	zUsaJ/JYRz8/FLU5beXK8giPR/4Nd1zT2u7ElKrVyYmHpoGSTK901YMZaA2/l5H9mEo+2zLuPpb
	RKiCWT6dSECAzYlT+AHezUe0NPEozFYJ86Rm7V7BAtEQZj2yBRKXN1WEe3SlzTYxk+KsZ7CMZZP
	Qsc3Ev6OAqBMDxB5JY8tYkRWmGYuBjHyBmfhgz9p7MrYuKG98tuAvIsNlAgTtKnET+3TiKY4ukb
	sPc5FkK3X8jfD6uRkc1h46cSGJ0c4Oow3uu7ky0Ib0ZBg4MNhve4nwCQ=
X-Received: by 2002:a05:620a:31a4:b0:8c6:a539:55cd with SMTP id af79cd13be357-8cd5af818b8mr229281685a.41.1772629639863;
        Wed, 04 Mar 2026 05:07:19 -0800 (PST)
X-Received: by 2002:a05:620a:31a4:b0:8c6:a539:55cd with SMTP id af79cd13be357-8cd5af818b8mr229272285a.41.1772629639060;
        Wed, 04 Mar 2026 05:07:19 -0800 (PST)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485188122a6sm49969745e9.12.2026.03.04.05.07.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 05:07:18 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: mohammad.rafi.shaik@oss.qualcomm.com, linux-sound@vger.kernel.org,
        lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, srini@kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v3 02/14] ASoC: qcom: q6apm: remove child devices when apm is removed
Date: Wed,  4 Mar 2026 13:07:00 +0000
Message-ID: <20260304130712.222246-3-srinivas.kandagatla@oss.qualcomm.com>
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
X-Proofpoint-ORIG-GUID: 9S2AsLxDTqwUK621m9ke-cG0K--u58-7
X-Authority-Analysis: v=2.4 cv=R4gO2NRX c=1 sm=1 tr=0 ts=69a82e88 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=EUspDBNiAAAA:8
 a=WbEMVPVtDBSXEMPt_8MA:9 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDEwNSBTYWx0ZWRfX6ydBEk9skR/7
 Sr2xuRJiQPPzKM+EvIkxEY36soAppZWpuNoY9v4ZTOMK0MC7at8Kn1kgR+Le3yQPg2+laNWeSfK
 9w52OwEriJ6Xeqgevsw28P9kQP9tE0Gc06KUc3fHtOcNoQW+inf15cNO74lcbXLRcvgTyhq7B+p
 FP1ekkaO8IjH8q84SdWBBblKOMHKAdsqhROqvLxbWkDjYjce/XrkJ88bQrmdm7c+aOxmOBrGaxN
 XD/pi3UbFqJekTn4FPf2sCEgQ1hzhUDuukLDhlxHtjre5ve2fQL8qthdi2qO0O9xnGc+xgof7XL
 g40KZo5VncYiZlB+0iComTPz6Izfg+bQAgZuURJlmgSc0/1QX6CUZ7/7TOQzXujqaSGNcVFa2R4
 FUJaz67xofwXR2q2yVkyKQKfK5dVotgOKxM6olZWMNCEvt05eTPlyzqjbkeNSSnZ3QoUsVtpwC6
 cLUiN4u1GA4qWzRpR/A==
X-Proofpoint-GUID: 9S2AsLxDTqwUK621m9ke-cG0K--u58-7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_06,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 clxscore=1015 phishscore=0 bulkscore=0
 lowpriorityscore=0 impostorscore=0 spamscore=0 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040105
X-Rspamd-Queue-Id: AAACB20013E
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
	TAGGED_FROM(0.00)[bounces-271033-lists,devicetree=lfdr.de];
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

looks like q6apm driver does not remove the child driver q6apm-dai and
q6apm-bedais when the this driver is removed.

Fix this by using a manage version of of_platfom_populate.

With this change when the dsp is shutdown all the devices associated with
q6apm will now be removed.

Fixes: 5477518b8a0e ("ASoC: qdsp6: audioreach: add q6apm support")
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 sound/soc/qcom/qdsp6/q6apm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/qcom/qdsp6/q6apm.c b/sound/soc/qcom/qdsp6/q6apm.c
index a4c662be52e0..ebd5e3ac0366 100644
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


