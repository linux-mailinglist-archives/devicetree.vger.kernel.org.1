Return-Path: <devicetree+bounces-264026-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EH0mGkDuiWn4EQAAu9opvQ
	(envelope-from <devicetree+bounces-264026-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 15:25:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A97C11035D
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 15:25:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 36517301CC47
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 14:24:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6329937A496;
	Mon,  9 Feb 2026 14:24:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VVl1Ih9E";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jF3MxIpC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E35037B3FE
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 14:24:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770647097; cv=none; b=KeLvzqL/ZZ/Kj92E/3nqH16o/j510D07Gr8PP6nJcZF/daVYnJs0Qmbh74rWPkvevpV4qhIbcBuzs+z/5qKvTsnZd9+IfAQOD0F/+kuMi79bhNoaWxLeqzbpTf6gNZ4qIl7JJ8msl/97RVmg7upt40lFiyDuKsXhHjL3jv/uR3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770647097; c=relaxed/simple;
	bh=LSBTZ7It9PAftWsB4Ry05XdKPZsQlPZUcnACDNROriE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EzEZj7IPhylPb3uw9Zz2kjHLzHumdn6qaSaMgy32fyHIv0IgYoW7G5yRUQCYYNQQA08XI7IKHoRk1BMbsTEniNwT/jLnG1iA7dm7hnKLVuaybvCQo+iJG/zPpI8K3d0WgjDWFflWBtEFm8vC6yEbndH+0sc+To9PAh7aYoL8nI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VVl1Ih9E; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jF3MxIpC; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6199sfZc1656367
	for <devicetree@vger.kernel.org>; Mon, 9 Feb 2026 14:24:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=EoksmBiMh7k
	7TT2UIj+4wyYLHeAj96A8+a8vZe4o1k4=; b=VVl1Ih9ExSeStLuu3Y42yyGcalw
	vSmxO5KkuqP9RyPjEmdaCX1nayFsAMdIqii6lHeYmRizS6RTQXHfOmdBTbaQrjpY
	YnA51qsXKHvTjsMUenv986k2reBx2jl7o8TEO4FHDI9mU/U3QQspLLqKZHwi8AHI
	5iZOQHfrKHIvzyr+lY1bY3+RTkqGkUWLnG2ULcqbnbaNwYQU5gaYZ5eglYiPjXYg
	Sm3tKqNlool6XVBw/asAT8h/vefx8BJ6/0NxcBVivyfMZwJ+mPME33IhO6F9vQm/
	1wj17j7S2iykwM6fy5bihhGSSTxsxILrx9Zreodkkiq50rdx0JTgT3qmo9w==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c7862t13t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 14:24:56 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c70a62ca32so1325629885a.2
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 06:24:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770647096; x=1771251896; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EoksmBiMh7k7TT2UIj+4wyYLHeAj96A8+a8vZe4o1k4=;
        b=jF3MxIpCDGTU/RqCvV58I+FCXJ2ZBnjp2kBmVjBqIHmjYqTfNcOs118iMA6gwX/+hK
         cxrO6SuCsP/iKF/Dqii0EQwFJL2xpioN3nTd/d1Cs/BoNiFJdL9Wo41oWKKcevl563Ii
         WJaKRivdwAm4NGvZrPxRrCzZovRnp0b6a36QW3dT/hLQS4sxX0Vo+BO+V0QUgxRqcCGO
         ibqetwKGIRrDAEyR1s79XbBjNiz3lMWqPc3Izf+OhAqJCAMPyqEFMGvw5niGU/zUBKRW
         /2Wvu53EcuSuZZT2wkeSQbs5ykQRHuRm7Oq86N11HY8Xk7Tn9/rnDRmfQgl4Pb3Bmw2N
         sdsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770647096; x=1771251896;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=EoksmBiMh7k7TT2UIj+4wyYLHeAj96A8+a8vZe4o1k4=;
        b=OazKQUKwPLur/M0CIXD4zDojv+7DR2EvPTEWfFELaWjgoX4wlEErQkyYqeI6eMbIZC
         8d/hXi7yqJtxsHwwNdHCQk047lXBClvAOGBmPqvWmPoTOKQDxNk7IfQ3FVWzJ2Eu8RxV
         hcjy6GpzgMteYEZgoa4YjV+Gcg6yyJ5PuDZF+qHQ0VDIHfpphpxokLHwB+jj+J7QfVUQ
         oe2cFodbdn6ntWS+Ed7VObWFGSlSIdSZEfx3aKjFoqZnL0OZODw+PuYxT8qSGwn1tBZC
         azOe2nKvqr8G1Y81QaELB1t65L+0bZshSHjtFKkkypSmlPUbJl9e52OISfwtNXprW0CS
         Vgyw==
X-Forwarded-Encrypted: i=1; AJvYcCXFR3ve71GJa7hkGDFulWExvT6zruUSbXoChkjCoAaQ5oa6VI76DxvwVUvshWvMDqkAZ4Z8deZTXsNA@vger.kernel.org
X-Gm-Message-State: AOJu0YyrQ7cR50QsQQ1TSaYOWowD67BpL2Dx+mXMaxCcoTCCpf3QG2dg
	G9kPg0ANGTHt+C/t41sAuuGvWwQJ9MUOU2IpRlQMZ/bbIqqSAf+vY993hIKYjW/BmMjA3brBCyD
	KfH/NelXyWaefctbMxsniyimxzgPoYVFczb8tEyY4McPAC/DtvG+WDlg4fisw04+N
X-Gm-Gg: AZuq6aISLFeH4VI+YbpH3LQ9MOjK/uqXpcg1fhl56ngYPIZTZbBj9zybIIUyMGzH6vy
	9nfvNSUocxnqq/8sph5z41wydbxLRpWJdTpA11bmpwguvUYBEKH4gqdADu9yXNsUPKuYD7QExwG
	V3TUQx9w0RrThYLOCDu2W//fEIc/G4dUxw24Tga0tsaZrNwo4L8or87+A2UcQbUNi9QPI6UR1E7
	4eqlNUFQ4BGgSp2wW/wDvSpmPKM9oc8L4KhJqONvA5gnStnQDE7BslYsd/FDypZaCbLvcQ5fWkA
	FI3qskuz68XEe2rb2Oh+/L/GPnDoA2rWiTUMWqclPP7da7nBhBa6ldr+Dtmu16gF1+K/ICJsSnh
	bRPs7LqwdCnFoI9wWJP1EGQONapY5eb5w7eKb+qQhRoQ=
X-Received: by 2002:a05:620a:708a:b0:8c5:2dbc:6251 with SMTP id af79cd13be357-8caf1acb155mr1485633085a.56.1770647095540;
        Mon, 09 Feb 2026 06:24:55 -0800 (PST)
X-Received: by 2002:a05:620a:708a:b0:8c5:2dbc:6251 with SMTP id af79cd13be357-8caf1acb155mr1485628385a.56.1770647095055;
        Mon, 09 Feb 2026 06:24:55 -0800 (PST)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4362972fc1bsm28296634f8f.28.2026.02.09.06.24.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 06:24:54 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: lee@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, sboyd@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, alexey.klimov@linaro.org,
        r.mereu@arduino.cc,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH 1/4] dt-bindings: mfd: qcom,spmi-pmic: add compatibles for pm4124-codec
Date: Mon,  9 Feb 2026 14:24:25 +0000
Message-ID: <20260209142428.214428-2-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260209142428.214428-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20260209142428.214428-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDExOSBTYWx0ZWRfX1sfSzB2XjlhS
 SNegujPbV85ls5kk1iX1fAh1MzTSo2Jayd2uow8wVAQtsxzSbhh0dF1seMLONs7mYgcSUjBg6mX
 b+cJ8fxBjp1BWmls0iN7gupklSkfnF2Gzdt3kAt2d7cl7q+ZQNQzGAynY/XfuT3/gB0EfK8cp+b
 HzPwJWXJlz9zZzm7Og7QXRHQ5tNhUBdnv4cxqjydg/+F1SNkJvMLdaf3AYYE3Ry6rkx4b1Hm1JM
 hh7kekqzzDZXl1wfs1bBKnO6Wo1ShJMGswAZxK9HsUptbu0BmVwm6ZvWVNLI/9acRql18xWQh04
 EfjyWHOQFgmIDYKpIiGsStii7K3jECgTal0LYHlWOFxhCvIwa7Y2iXdy6oA76EYQp/jNev4hWti
 3N0DB9g/gPPV06QWk/D70CdXTuOiWm9+YkfTPEr43XnozfYhyi0EB3Gf5kUvFUrbj3Q6RUJwvcz
 3t62pV4G7O+PfvWFFCQ==
X-Authority-Analysis: v=2.4 cv=bZhmkePB c=1 sm=1 tr=0 ts=6989ee38 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=1S9TnuZ4X9D0nYt2MHYA:9 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: giQJSwbu6eCyb5R1mB14tN1jSyBCF2Ub
X-Proofpoint-GUID: giQJSwbu6eCyb5R1mB14tN1jSyBCF2Ub
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 impostorscore=0 bulkscore=0
 lowpriorityscore=0 malwarescore=0 spamscore=0 phishscore=0 suspectscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602090119
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-264026-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,linaro.org:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0A97C11035D
X-Rspamd-Action: no action

From: Alexey Klimov <alexey.klimov@linaro.org>

Qualcomm Agatti SoC has PM4125 PMIC, which includes audio codec.
Audio codec has TX and RX soundwire slave devices to connect to on-chip
soundwire master.

Add missing qcom,pm4125-codec compatible to pattern of audio-codec node
properties in mfd qcom,spmi-pmic schema to complete the audio codec support.

Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
[Srini: reworked the patch]
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
index e5931d18d998..f58a85562c26 100644
--- a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
+++ b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
@@ -145,7 +145,11 @@ patternProperties:
 
   "^audio-codec@[0-9a-f]+$":
     type: object
-    $ref: /schemas/sound/qcom,pm8916-wcd-analog-codec.yaml#
+    oneOf:
+      - $ref: /schemas/sound/qcom,pm8916-wcd-analog-codec.yaml#
+      - properties:
+          compatible:
+            const: qcom,pm4125-codec
 
   "^battery@[0-9a-f]+$":
     type: object
-- 
2.47.3


