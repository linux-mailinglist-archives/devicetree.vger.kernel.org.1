Return-Path: <devicetree+bounces-269728-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4AQuODxLpGmQcwUAu9opvQ
	(envelope-from <devicetree+bounces-269728-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 15:20:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 652771D02EB
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 15:20:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5AC74300D15F
	for <lists+devicetree@lfdr.de>; Sun,  1 Mar 2026 14:20:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB52D329C73;
	Sun,  1 Mar 2026 14:20:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lmJQVf8t";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NI5XJ7wg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A14F314D1F
	for <devicetree@vger.kernel.org>; Sun,  1 Mar 2026 14:20:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772374840; cv=none; b=MJzRVRsReUEZ5Ym0KMKFy7iRZFRZcIIpZgH81P3v5MN7oZ81r9DCePQnk50mnGPsHMn6kPVqvG9w4yeDbrTEDYl8u1V2GwNxDrJJS8bO38Vd7OA95SsPVvR7nWP/8Tz5TrcIypoLHTwT69yTeGYkb3cmqXZRVVCi4V9rqKyqHnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772374840; c=relaxed/simple;
	bh=m8yO8Aj7LBafKhDVBiQ2q7TFUyh1Un4CoiLobm9d3n8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=O6LnJ5a6Mv5/1kTzaPz9Xo7i+dU2Mnj6CzRBXc7kHWn4GgvllvEf5u4M3KqbI8l75BbHTCbKWgprd54xLC2EFmopVbl2EVFMDW0ODaLZIxMr3NXm8CHNd/IdtRA3hbKqQn7ZEeHxgHukAQu2EouEnIrdQDby1MQ/e9+pCc/R1L4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lmJQVf8t; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NI5XJ7wg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6215t2E94175704
	for <devicetree@vger.kernel.org>; Sun, 1 Mar 2026 14:20:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=kZNjOU/ofx6pajVVoNQxtDH7wrl/oOGJOvy
	p1f6x99A=; b=lmJQVf8t3epInMvs0JwXODEc0PJ7Q9rgPuPsyz1lyqy519sGsHc
	F37n1f47WgI8RVOyT9eldXxvykIyrZK2t6nbJlTESrOXkqdrFOLT4nJWLDqgEcwK
	pVvPPdeZ/zknvO07JDDxgNpCo4HSyyV9MVgdbKfaiR8DpDnqVSNt5JCwuzPrjodk
	e2w/jeL3X/ZYLOTZE32ZF6/4xq44X7ygxvh9DO++ulaacpHw1AG1EZPywHei1aQK
	gvvPbT53EcBZx7S9ODJrn/IDQj3O67izFvM5+8y7zVst10JyEoFsh9zPpPpm8pP0
	4nmKwfXqIJ7wIEPaAVAya3gjT0bmFFsDOEw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ckshktqks-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 01 Mar 2026 14:20:38 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb413d0002so3403880085a.1
        for <devicetree@vger.kernel.org>; Sun, 01 Mar 2026 06:20:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772374838; x=1772979638; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kZNjOU/ofx6pajVVoNQxtDH7wrl/oOGJOvyp1f6x99A=;
        b=NI5XJ7wgagup5GtTgoTirvCEzmPWEsbSC1cxxOnBQJELYAarZYNyOswtv8NbHbNIo+
         bYXTqRV4c0CYidCZHNBGTuTi7kTDfqSirCqs1cDn2iOkkQY1H8/7q9KL3k1tsNGlqPvB
         1z2IzFir5h9AH87AGXe6SrRms9FL/Drv7STFfyS62TZuVm3jajiWDf//QSR5O/u2p8mV
         +IZc7nXJhbdUcyI+Hz+/qbKUDlwMKn/QzeBaCboK7++a0Ritbkd7ph0qvUgc4ib+ifxv
         oVuite9HxGMVPRIYmv/RXDibT7SHk5TV/1ieTQv84QfWbL9uA6pW1L32euNKnsFMgj6N
         kpiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772374838; x=1772979638;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kZNjOU/ofx6pajVVoNQxtDH7wrl/oOGJOvyp1f6x99A=;
        b=KyOYmYLiimrfaJgRoyJrtlp5Ej2fimBY3kbHRF8aE+xTRv/DoKF4sRZJCVQ/ZjMMte
         ptlyrz1Xq9ICr1GrGzrAXoQIOUfPHjrt+x4WJCaIX5fhCatvnlD73DoQqA/3JOQSL2Ho
         lvIYHC75JgE8eJAt4FNQ+79rJYlS9KICf7Hta7vJKnGBkP6baLWX1c7VhH3yDiD1MTzM
         YJFogXD4va2g+cWp5Vv/vLqOfPxBZjsGmOfkOf3giPhMT3tdrzBHMFewf1y/g46BrTFJ
         EXQlsInUY4Tw1fHKcGIlGKZkHsjYKyBhjJME25k09QIFubTapLQsQLAJ/prQ6nn6XLfG
         C0WQ==
X-Forwarded-Encrypted: i=1; AJvYcCV5D2nWFAqjwugAVyxODcLrTnWSYbMAQcTqiCCZ0DToLfbhgatDXbkbtfgmhJYmjtVL6DV6diXACZdt@vger.kernel.org
X-Gm-Message-State: AOJu0YzQsFxjVgL7u4oTXDSZ/Nt5p6yIenRvOgvtrgXtvIGhHVunUdND
	U+PL/PXh15BaN4XZFU1qk951GwRVNh16b++HyqvC4DCQ7CMtdiKDuiEqbVpChlwUa45ANedcRws
	hzwRVE+QVIZZUaa9GighLtUbED42UKa845X+a7TYk34Xomf8MAol09OOH0QiupNSm
X-Gm-Gg: ATEYQzy4SYdyBI3CvPNibmwZYRxwGN94psAVC5RUPVYqT1JGcNklRtI+GM1R29q701t
	Zhg/EZyBYH/BPmp0lM/Ey9UQPxWnx6XPXm0U//w4mC2GkXvEzvwkEq5XMxp3GmVmgdfZuGY7Odu
	w87JC1y6rX1x/q95F66MjOPfwK55cn6YRgUcbgNQBMDpIT4PZb1H2+2KmmSzjYiEpmgsj9BxdMc
	mbgRVCVnXzKSlwqIdIMBJFJkUc4Qld3uprK4t09Kd9lIFSMNBfDQcNF/sJhs128xSjx8k/X9PPv
	2rf1OI7gLQXxanJ8STqtOJvJ94Y8ACCM8Ow3stukDuoGhx1fTVPhSCi/GQwmiGFizyy2mcSxJNh
	ypRRS7uXHrPRJwBj78U3bxJWd5mXIr9ZWKf4Z
X-Received: by 2002:a05:620a:7087:b0:8cb:3fca:2f9 with SMTP id af79cd13be357-8cbbf3523c9mr1555906285a.4.1772374837797;
        Sun, 01 Mar 2026 06:20:37 -0800 (PST)
X-Received: by 2002:a05:620a:7087:b0:8cb:3fca:2f9 with SMTP id af79cd13be357-8cbbf3523c9mr1555903085a.4.1772374837345;
        Sun, 01 Mar 2026 06:20:37 -0800 (PST)
Received: from quoll ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439ad3daf89sm16417724f8f.20.2026.03.01.06.20.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Mar 2026 06:20:36 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v2] dt-bindings: display/msm/gpu: Drop redundant reg-names in one if:then:
Date: Sun,  1 Mar 2026 15:20:34 +0100
Message-ID: <20260301142033.88851-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=948; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=m8yO8Aj7LBafKhDVBiQ2q7TFUyh1Un4CoiLobm9d3n8=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBppEsxe1CbyAMOXZrQueutCa3ELwRwqM/i8/pMn
 hL1XB5zZk6JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaaRLMQAKCRDBN2bmhouD
 10jqEACYer60vYtlX1ItfPGhn/WLPqlVtkm2lZtKLNCvW2kYzgzu7/h1CdIOXbtBtRmduySJly7
 jrbBb7UvEcfk1Bbyzx4GfKOGNU684jBGJclNMX4Hdl6KJ6vb3/AW2S46SjE5yfzheasziBzekep
 IVLSZNv/tou/WZzqhgHXKwYBIDcyvkmIT+RRI0cr9fA4XgoNICDaTBKCXqe5KBV1ir0ur7qX9zf
 tYmDhHNNspu1yFL2SKQTKoqQIcP05Kp6atkscj1vY2orM1XUqIPuLZlqHtB5xvzQpoTUafsd87l
 G4GLJjAOL/ra1assLZTa7eH0Y8KuCJNCHBN/Z9WMuj2kCppuA3FtpHWZBpd86SAV8fu4SZlcUir
 t5JDViWrPmz2P1KUiMnZ9gd4XnHK5Bs5q1xljuxW1LN2mymZ9TNgPfLEYJxyCSZCvyANHfd7cUY
 NI5yCwP5Mc+bq9KRz5NhT9aSZwGOBUcUTAtxhpOdnrHBm345ul4+7mgoat49uQaFgf15slT6mIp
 6lybF02CiSBQzau9PTo83dlIyul6xJSfa1dbcozXurMmzv4CztWLwn1KHKvHr9NOatlfeT4VcEv
 5SeClO10ZGkNJV0YbUXr/kFcPQlu9grr9eL4ZVsI7DYHQluenwsjGw4UxXWNfdWIF1Gkn0LJ1jt eO8J0VA1M8NfH1g==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAxMDEzMCBTYWx0ZWRfX1Ot/hMB5OHek
 rEXlWOgw4xg52SPorT4soVP4n1dH8hfZ8S0vhktb6LA4ahazSY/7oMymGdmmqakDAlg3e+RZhUq
 zfUMhT+ClP3ud9lo4tmlzaj39TvDIyGsbHIicgZowPB7zcTHZ7XqJlBG4ahYurHdZUeVveiXABb
 tQdvLqcT2ZDzbyJDXncvm+gd51tgF4HN2XYPgSijL5sToQ76oRXZUO3KvlYIKrk3fmVoMozX/h1
 VPgP23QUEP36mM84u5Gqac7SVtsSnztC+f+07YgAG/iV/aqPWHZU4wLfRQw1DB5WExZUnqjcYqE
 qTj6q6g/nyJONqUJKWVsbf7v8Meqx1kWodSdkTMJYSwLmit6Dz8vI/0wykqvYEOUm7wPSXz9t/I
 Pyay80+bbzYKS+LxyCLBWOmnxE4SHhyESvQ80ZuACIo/2DdIgwHJpVs1steq8Bo0N85Es87YNdi
 whJWKptmfOLNDOO1eig==
X-Proofpoint-ORIG-GUID: AnIGrzSki9eo9kACz8AUBNP55xeC8KEX
X-Authority-Analysis: v=2.4 cv=EvbfbCcA c=1 sm=1 tr=0 ts=69a44b36 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=EUspDBNiAAAA:8
 a=MCV8vPsGP35s7PfGzH4A:9 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: AnIGrzSki9eo9kACz8AUBNP55xeC8KEX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-01_02,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501
 malwarescore=0 adultscore=0 impostorscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603010130
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,poorly.run,kernel.org,linux.dev,gmail.com,somainline.org,ffwll.ch,linux.intel.com,suse.de,vger.kernel.org,lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[22];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269728-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.993];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 652771D02EB
X-Rspamd-Action: no action

Top-level reg-names defines already proper order for "reg-names" with
minItems: 1, so no need to repeat it again in one of "if:then:" cases.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

---

Changes in v2:
1. Rebase
---
 Documentation/devicetree/bindings/display/msm/gpu.yaml | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/gpu.yaml b/Documentation/devicetree/bindings/display/msm/gpu.yaml
index ec84b64d4c00..04b2328903ca 100644
--- a/Documentation/devicetree/bindings/display/msm/gpu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/gpu.yaml
@@ -440,13 +440,6 @@ allOf:
         clocks: false
         clock-names: false
 
-        reg-names:
-          minItems: 1
-          items:
-            - const: kgsl_3d0_reg_memory
-            - const: cx_mem
-            - const: cx_dbgc
-
 examples:
   - |
 
-- 
2.51.0


