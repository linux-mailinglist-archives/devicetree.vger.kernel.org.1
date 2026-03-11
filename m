Return-Path: <devicetree+bounces-274202-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uLVlIuGLsWnkDAAAu9opvQ
	(envelope-from <devicetree+bounces-274202-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 16:36:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D176266A60
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 16:36:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A086A3024096
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 15:36:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 192D13E022C;
	Wed, 11 Mar 2026 15:36:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HSz20nBC";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jrc+ZdVo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A58F931691A
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 15:35:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773243360; cv=none; b=YsmmfrgHv6teAOuIS+5kmFWbk5H0zQOf5YMI9K66SHnIcsaHo/Ul1ahUc5hNowoZC4zv6XT2M8pMjNyhAxFTOA80b7qnCNL/8U5QHxzqO3jJZ++/wwmoApqCiez1fflpuCalwtx3sWWK7VQsFHNJe3gtcDlJ7H66VHTijdkaPfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773243360; c=relaxed/simple;
	bh=pNwFOm0Wh96y2hU36jI8YhwLHAj5jF2XiNkPbx6ov4Q=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=WQ82lXMJRfal5/SglljWfhsyGko7LqiqiJndBLoWQiZbnM3hs6TmJwKIWh9QK1ZGUZbF+JhQDTzrBjmM0tt70/1fmM6q1xIX77eSQsJD7pZzsLrWF1lCrlMAn3BRwlwZVu6D70Zfisvq3lDBl/yn+F9A8Pkh6cjqkNAF+yzQhag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HSz20nBC; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jrc+ZdVo; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62B9EX531573138
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 15:35:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=olpuWjflpCrEijmH4haIO7FbhHoolMIpYw2
	2yV90U0Q=; b=HSz20nBCMBL0yBfqMChXRVioYRZCNm8gZw+puIeRwcWLe6S22kq
	PoYJ3euZVl63MR7x48fqdTGl2eiLnLNpqIubtwtzIDUArDL1LVkqC3FG70Z81Dx7
	qdI4n+H2ijoTGkK8iqd1KwWayM+KqY6yYvJo7nNV2tK840n0BsbdhHfIEmSH/uic
	8m7oq0N0NDMafJsCUFIHpDPUF3AWmfwcXEoTXTNWdYzLZ03iWQubR3kDzm5rReQU
	iMjtTFFhgdnVKjO/zdGThulgRZ57KYN402Xs89ALButAUj9sCcK6dDNWaR0O4flu
	0qtm0HQhc1YFMFkVFZoRqz1z4RPy7KzjOag==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctqgkc91d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 15:35:56 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd849cd562so2068408885a.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 08:35:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773243356; x=1773848156; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=olpuWjflpCrEijmH4haIO7FbhHoolMIpYw22yV90U0Q=;
        b=jrc+ZdVoDGZqSPAIf/s8kbqH/1mzWBh/zGF+j8ZKHHHsv8vQ/U3QkFkoePnh7DLte5
         uO7o8kx78BCEke6woZDu8VP8mT/pGgIXYRZCne/Lv6ASf/NjtBgM0DjbfAvmwnfE+WKy
         boEDyvnvlMUx45VxkABEJVn5c/knfnCm7hsucACicT3KwQVyEWPVioIk4/0xNz70hqQf
         GaWxGfpujQHz1xvfs8oNPWd4JcJMerNC6eDB+CO4KQM52DuprGqV0KfZmyb+LbM5n8ww
         sSaa1ZmV9D2SGgoQsNCjzFmqhMfGZJl1YRx7cMsuH84nrh6nu7NvGYU7yRIaYZu5fP7J
         eCvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773243356; x=1773848156;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=olpuWjflpCrEijmH4haIO7FbhHoolMIpYw22yV90U0Q=;
        b=YeRPOxCS4CZDCO2259wAwtMaA/km7jn7V2zQ1ClTo2GcmCH6QCbqAZUhKlSDwTh+rO
         7D/DpcqiKNZsoAWLtWyeyOP9roVIJpukgmy6wfcM7pdn0wCL+GZr6nZJp7LLe+RPO24o
         iO5+4gs446c3eD5ZsiU1uDJpPKFIyI8AfrWsp6w0GnRcgSL+ooNU1WoAxJAxLQTi8+1p
         uMZo6Z+cJr23xawPDJCMoDEu+VUnoFXTTm6yhwkah1VVaiPlwzvMd/HY5iToKHXkLgOS
         mFOViVb01SIHSKB99ZF0X+bJvQ2aACn1VjFKIAwJKbCn0uYzTx1i3gg/MgZd2afkQgWy
         VXFA==
X-Forwarded-Encrypted: i=1; AJvYcCXE73iZWojnkZvL6VWh6ozFHJHXU1Eekak110cFMNLOBXtJi2R1TEhJQ/UH2CCowR4f1B81J3k8NT6q@vger.kernel.org
X-Gm-Message-State: AOJu0YwYkM0R4UfBIgT45CaQNkTxvi8QyBsmubQmzo1d9+iNTB8eoSlk
	SEyJ0+57t9p3skasn44HcWIbbYfpP5AscZV/OTm6rREk9NLDLOaLInNtE2yM2ufybAQdytWNd2C
	eiH5ahCdLYUIPys8wBF2fiQREFd5B5kR+lEnbxJn2m/gC8Oavm9wyFnY7F9dTXHGm
X-Gm-Gg: ATEYQzxkVTqq2+r0rHTiG65cR79402kPw4wFoUMFWEN2baz914MMhaaM3e+/D8iVKeK
	ydFGimGFa9oHvt6TylBCyNTBztEN5khg0TLzQbHR4EjWizewfFIGxDV16qSuP8rKg9D2L4GjLHh
	MWKr3b2JPIr00SvRb7c3MYGSNjgU3EAQSjfZdFdPycwI/MNfPMSaNwiCnT1MuoLPSI3MFS8oQbM
	Un8xCTfjoA6vIWcgmCeEEDZVsX17GX4eJrH0uqBf9goa11tcXrkYz3GTW+bjNZ/4/XJHCv5ntlz
	u3GC++ar6aXNHSgM024q7W21GYhdwCBzcOzK39nbuhV2Zm/wSvvzPIBk/mfyeacR2GuOVHnprcc
	XpBIRHlYTDh+zHB1e/DiVW9Cvq79XKo+99lKf
X-Received: by 2002:a05:620a:6910:b0:8cd:8751:2b26 with SMTP id af79cd13be357-8cda1a44d1amr390874285a.58.1773243356011;
        Wed, 11 Mar 2026 08:35:56 -0700 (PDT)
X-Received: by 2002:a05:620a:6910:b0:8cd:8751:2b26 with SMTP id af79cd13be357-8cda1a44d1amr390867485a.58.1773243355378;
        Wed, 11 Mar 2026 08:35:55 -0700 (PDT)
Received: from quoll ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4854e67ea40sm22028805e9.7.2026.03.11.08.35.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 08:35:54 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Shenghao Ding <shenghao-ding@ti.com>, Kevin Lu <kevin-lu@ti.com>,
        Baojun Xu <baojun.xu@ti.com>, Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Shi Fu <shifu0704@thundersoft.com>,
        linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH] ASoC: dt-bindings: ti,tas2770: Switch to undeprecated reset-gpios
Date: Wed, 11 Mar 2026 16:35:49 +0100
Message-ID: <20260311153548.94265-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1296; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=pNwFOm0Wh96y2hU36jI8YhwLHAj5jF2XiNkPbx6ov4Q=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpsYvUQNsv+NnuXKnyv+Lywp7hI/VWkMr7MT7fN
 2EUaaBckN+JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCabGL1AAKCRDBN2bmhouD
 1+0uEACWRKCLOCQYgBH3gyLRFbYFfyMrafjvem0REDmcATalrSJGeLBGowKAkCUq5iLFWXRr/Rc
 2JB7dJf5/Bk3noyKgoOjI30JzqFDMiSgC0zJsEOh8RKX87pUaUnUYjdX/PtIb4KQ2+zCTm5uFZv
 OMHhtSdiOQjZrlaAttT7S7Gwna9rsALAEMWEbPLmJHdJ4lBhBYYgwOhT8g8EGVkPw1IJ0e9DW2s
 5wXssSyhNJO1FVW6GR/H9z2lEBVkq1NqAyDO9/CVxcsYcnrLi7HohAbLr6ZcyE1sEYm52smH6A4
 wW3CdMtQwrQO0MQP06wtMgvhVplBjAvHjXeK1ccCR2s6i/G6oY+O2p6c+x3nlzoKf7/9SwvfgWJ
 gFpDr7hgE69OEUewX+p+qOAOh0KtETXQFBn9nfcLg82fOUWaykg4VoY+Rjt5yVHaQgwdiJKMyAA
 +r2k10sV9KGEb+36uaivjthVROuNInp7G3c7SexJKYRVWwoLeIfXKGds9qf1eo2VrtCG3wwH0gU
 Qvw6QNW8PBp0V36BeaSY3Ogs0y0duVfr/FNmZpfoHIksxVB1BB6E8QtBfdAX5eyfb4JDGVabdxU
 rb1rNLKw12MzhzWkjWlqwJNeJBXTnxceeABLyEPMsOZo3y5HONjLauT/LHuahSjDmvL9WNl9GWO J3spVN+ikDXvruQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: p4Pths2LzhgcnKZb43cwa0lUY1kmXxVO
X-Proofpoint-ORIG-GUID: p4Pths2LzhgcnKZb43cwa0lUY1kmXxVO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDEzMSBTYWx0ZWRfX+4K+HBegyFEr
 QhUv17jS4YEiFpOqAEtrG8rKjmxDzLoLAWlU+QuT3loA+y/zBvwiV71h6T75gL22pW6eqTmgBep
 267WpRLQVxlXhJYcYPQrPPdwR3iySRVdLpsuzqvcJrLU5slUX66mErbNQtZNvrC0W3fIL4Oekkz
 3VTuxpmuV3mQu1zSJ7y/HAPLj8beB/FjAhNA1jms1amnQx1bAzZ+aGiQGf0grS8Qru+dMGG0Hj/
 Y8feSVT1oLMAdQ5s++X5OtuWtS2Di/KVDp3MGuTSwXp43Nlr/NJBW0r4yUH90LTPKji/7/jMCAf
 IMOY3hUX5CUltq36VBmo6paORgHDDsyJ1T8eDa8WoAWnDr6CWgTllyJAXQjq6jJa+aGX+KrM/Q0
 Hwz1aC55Z81NeHcbaeekL9GlMnafzMsyk35kYa1MOZKfuDyKtn20emCjgIMtTCRWvDTFxiBue3Q
 xufGElTiu/v17Gsgo5Q==
X-Authority-Analysis: v=2.4 cv=M4JA6iws c=1 sm=1 tr=0 ts=69b18bdc cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8
 a=Qx_qmFkoX_yKp9fOl6YA:9 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 lowpriorityscore=0 phishscore=0
 impostorscore=0 spamscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110131
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[ti.com,gmail.com,kernel.org,thundersoft.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274202-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2D176266A60
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

GPIOs with "gpio" suffix were long time ago deprecated, thus
"reset-gpios" should be used.  Linux kernel supports both, thus this
only documents desired choice of ABI.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/sound/ti,tas2770.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/ti,tas2770.yaml b/Documentation/devicetree/bindings/sound/ti,tas2770.yaml
index 8eab98a0f7a2..8d49fbcf0b9b 100644
--- a/Documentation/devicetree/bindings/sound/ti,tas2770.yaml
+++ b/Documentation/devicetree/bindings/sound/ti,tas2770.yaml
@@ -30,7 +30,7 @@ properties:
     description: |
        I2C address of the device can be between 0x41 to 0x48.
 
-  reset-gpio:
+  reset-gpios:
     maxItems: 1
     description: GPIO used to reset the device.
 
@@ -82,7 +82,7 @@ examples:
             #sound-dai-cells = <0>;
             interrupt-parent = <&gpio1>;
             interrupts = <14>;
-            reset-gpio = <&gpio1 15 GPIO_ACTIVE_HIGH>;
+            reset-gpios = <&gpio1 15 GPIO_ACTIVE_HIGH>;
             shutdown-gpios = <&gpio1 14 GPIO_ACTIVE_HIGH>;
             ti,imon-slot-no = <0>;
             ti,vmon-slot-no = <2>;
-- 
2.51.0


