Return-Path: <devicetree+bounces-271039-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EBpRIJAvqGlPpQAAu9opvQ
	(envelope-from <devicetree+bounces-271039-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 14:11:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EFCE720021D
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 14:11:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2A1B030DFD44
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 13:08:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 282B9344DB9;
	Wed,  4 Mar 2026 13:07:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SRS2d3QH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ThArjhzf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF8362848A0
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 13:07:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772629651; cv=none; b=d5Lcg3x0OnaJJF9Yoj2wl4vzopgJvrD9nOZt8ot7gURiJdHj3kBY+8dzr4r/B3dS6dTmEa2yZocuPN8BNyJIWdinDYuEYLpsF7eWxiT0+01MUFvN06H/32jCu0s939mqZEz+b+8er+V4uKaT1zFmnnkWtXcZTE/2zqlPe7vQhpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772629651; c=relaxed/simple;
	bh=m1EN4YpUgSj9UMxMClhVmL8iu5GkBIX3+L8UCDt7O0M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KZaYC3nDERHT/cKPUSOownDWUtlMLLWMvzDMuVYtbBjPe7tpBA3jevFGd+r0c9Xe4zAwN5ynBgReHXwIrPH889kaU2Wma1/OzcmvmBRLcRi8JliSul10sQMzclnAzYVkWCb7aEsKvEDSN6lCWhezpD1jcIuzyKvJ40f9EUiQ19c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SRS2d3QH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ThArjhzf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 624D6AFE957475
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 13:07:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=pD/LO1GMq2Q
	S6g4Vc43eIA8IGXtM080UQe3gAPGBgKI=; b=SRS2d3QHWKCYpI/DSKEgEL29y/v
	UI7glZ5dUH4m5k8Q2PI7+3Byb27B1ORkOEOn/zOwe2S/qzaa4jy/6KcGkhGnN+Qy
	MEJUxvkv8FqpL71HyGeuaXAsXGFPLoWhGXGtzYbUNO1JeNWWhar++qb2jvJpukbK
	D49dl9L1l4bv9Xv+1XUY09InttwqEsY1vq91dQW8VapqaxxDLAKIcf+n1PMi0R/X
	VPJff03CUP1T8Y0QTp7wtytxNShcbVTkNMHjFYclnS/CMu1cIDN5VIgy46SqJ2BJ
	JaAyWXlVb4BApfjwz7WKgOsuhpEl2Ia5QxRh6XT8XrMa2DbSe8QTnheOEag==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cp6qgaxce-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 13:07:27 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb42f56c4aso4544372285a.3
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 05:07:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772629647; x=1773234447; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pD/LO1GMq2QS6g4Vc43eIA8IGXtM080UQe3gAPGBgKI=;
        b=ThArjhzfd4CrmUnkByQaz3cUtd+SfYBNVtpF0kKtBz4p8x7a+bKjvTPFJfVqXFyDkV
         5ZJ60iVgh7w3uQlvTT0t1hqgiqHIy1I5CGtEocLIEv3SCNyXp3LQx+6NVs0fgFaBe9SR
         Cw7974X1T5B09dG+RrZXuujvjKdmdioxskRCZmniMn0uXdMy+zA+z4tNeahPrMWVzepC
         sBSw+wmcSgX0SDyo/E3zJhXF1UJ4U2mh6OgSrkmQAUb9csjQQDSizjYPLv8rEvsCFeZ1
         BjlbziOlFwe7wwj2ta13xs82NT9+c6c6mUGBdW9s+EGdHDNDmp5QPyJatJeu8M4bZ1UI
         Iv2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772629647; x=1773234447;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pD/LO1GMq2QS6g4Vc43eIA8IGXtM080UQe3gAPGBgKI=;
        b=rccD9Jydao4gc1SWTkBmHFy03TBvJP6hwxBF5np6Y4zGNj4tPS7LwmoJkpRaiFDmI3
         C3J5hZRyGQS4OkZAirjaCjwp+pI4EaCOYtR4uzLKZm0VMIRUO86+C6rhVy34MBORcp2J
         GWTXY6Jd5Gc+centy/7CGRAhXJHp8BAGgt8lT/xti9dxHuCF/2NCr1bNYHRudcLvtfuu
         cT7p0HTf3bQUP6M72gRTGzzl3LI4/yAYD6FyahtjBzo8j3w8JjsBVcFDUkCbgSDdhQMF
         t0rnTq1jt1sf2K6PiRYWFY83JXbAEh6YTFyQbZ6nS2MqQ/2aD1mfKTUZWU/DMlL21sdL
         ukmw==
X-Forwarded-Encrypted: i=1; AJvYcCU0LXdL3FfNlK5MoQn3U/8aPiYwh1HDs9r8QCIuA6wVXKLShZGqvVeO5w41yMHpUxRSjcYFiKrJPK4i@vger.kernel.org
X-Gm-Message-State: AOJu0YxLHGqfmIS7mtr+LVp7QGYTRvWad7vH3eKlCEabfrA+qAM+POIV
	VRGVqoAyru5W7hq7Ej53liaTMQ7HwnooOFyyRLmrHoC+vVq7ThyaitJw6QcodztUONtbcgBKRYG
	G76Azq+uZpEqRLUkAZtKhpHFH0QcmG2wDvyTzqnO/isDgnMMztIUN3UCARDI4gauc
X-Gm-Gg: ATEYQzxZaX4qaTbZGa+xj50W3rOG5d+0o3LNb7Kk5sGP66rcQ2o+fjEbh0Q+sYQ+m8u
	5EL+QRIGGcAUroEz8OiPd9ACN5Sordsr5UBKuz0JlzLP6/TCin0+mTraz1lqrnV9GScDg8Ih0OQ
	7Nh/KVc3Dymr/fdJzztJMYGToggDfVZsffn7ovOZQzbU+7mz4D/azHF5I8gYZ2VJaIcLY+lGg2z
	lsOGZbkBRwx8Ycwx2SLrCIK821SrBEC3MDqdQvNr9Q7zcHrEl6VJ90L8qlDHEhtz7/3hJGMdRmo
	58sWZCG4zyOxF85fwlMWztd2Za7MwJIK7B5yv7M8LPHCjBWORnELk+Hpahr5D6V7KfKfm/o9zU3
	3tOAeU2LhxaTVob6meznkMtmg+3WwziOSR7mXZKgUu15mUqUPvJyFCUE=
X-Received: by 2002:a05:620a:28cd:b0:8c7:1b3f:7d0c with SMTP id af79cd13be357-8cd5aecb2c0mr225098885a.16.1772629647005;
        Wed, 04 Mar 2026 05:07:27 -0800 (PST)
X-Received: by 2002:a05:620a:28cd:b0:8c7:1b3f:7d0c with SMTP id af79cd13be357-8cd5aecb2c0mr225094485a.16.1772629646542;
        Wed, 04 Mar 2026 05:07:26 -0800 (PST)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485188122a6sm49969745e9.12.2026.03.04.05.07.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 05:07:26 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: mohammad.rafi.shaik@oss.qualcomm.com, linux-sound@vger.kernel.org,
        lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, srini@kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v3 08/14] ASoC: dt-bindings: qcom,q6dsp-lpass-ports: Add Senary MI2S port
Date: Wed,  4 Mar 2026 13:07:06 +0000
Message-ID: <20260304130712.222246-9-srinivas.kandagatla@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDEwNSBTYWx0ZWRfX+0C4dqcKEU26
 /xZfOGaOmqrNZX9j7JPuspDdICzvaElZVQ7ymUaEEXAe+4a02rRoT16KfB5QE6nsC2HLaOqaN/4
 QwM/XBwiixmtWx+oTvpKBAdLoMrS2ExYE+ooIOb+1r+Iqzv+eghzW1D5GTnSrJ9Ae7L6LPZ3Hf0
 s5tAxTJD2hsjGLGYUAEsCStlhNweH175JULKw+MhjrPy3RxGR4DLr2+qSiPL98y9dQK4/u7/yDm
 LS9CkDwFt8/XaW96e8lMUlZ6+7H3Y7vmQ6CwJy7wEh27EZgaLNOUXB7H1TfsPw+mC2u30YU8arP
 FPMe+fl9ylsFf4bxP8u3SBC84EcTiyS0Mn6gUGBM03gyZPUomgFbMtHa088V5UZvjgd5Tv2r4lP
 skFJ29I1lTfAFLduQOAod8aESUko2HJudI6z/AZ5PnRLxP/5z6a9GU2zxxWRlr9HaLjJ1PYhftg
 7wcxlmHhNBM11DPveuQ==
X-Authority-Analysis: v=2.4 cv=UJ3Q3Sfy c=1 sm=1 tr=0 ts=69a82e8f cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=EUspDBNiAAAA:8
 a=S1r85Wze4wKqmHhc2Z8A:9 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: Z7dhD9XvDFelmLtWtU701V-nt4hjQ1NA
X-Proofpoint-GUID: Z7dhD9XvDFelmLtWtU701V-nt4hjQ1NA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_06,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 clxscore=1015 malwarescore=0 spamscore=0
 adultscore=0 bulkscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040105
X-Rspamd-Queue-Id: EFCE720021D
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
	TAGGED_FROM(0.00)[bounces-271039-lists,devicetree=lfdr.de];
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

From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>

Qualcomm platforms support the Senary MI2S interface for audio playback
and capture. Add a new definitions for the Senary MI2S RX and TX ports,
which are required for boards that utilize the Senary MI2S interface
for audio routing.

Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h b/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
index e27a31ece1f2..45850f2d4342 100644
--- a/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
+++ b/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
@@ -150,6 +150,8 @@
 #define LPI_MI2S_TX_3		144
 #define LPI_MI2S_RX_4		145
 #define LPI_MI2S_TX_4		146
+#define SENARY_MI2S_RX		147
+#define SENARY_MI2S_TX		148
 
 #define LPASS_CLK_ID_PRI_MI2S_IBIT	1
 #define LPASS_CLK_ID_PRI_MI2S_EBIT	2
-- 
2.47.3


