Return-Path: <devicetree+bounces-265964-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oBJaJeP7k2n4+AEAu9opvQ
	(envelope-from <devicetree+bounces-265964-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 06:25:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 417DB148C9C
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 06:25:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 67790302330B
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 05:25:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3931293C4E;
	Tue, 17 Feb 2026 05:25:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Idl9gKHT";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="e0mxOXjw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA821289378
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 05:25:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771305938; cv=none; b=tqJZENpIlvq7Nl0MWdabuHebTkPCNiwFQQdVeK13xb9K0v91yXY4nAYzo+aeXEDOzIYfZ/q30zs5U6b1Zy7glG88M8Jhx0aMUXlDEMQ5JeCZ7EzBbqcP7U9gU8kNsXIxmEOaUIa6G8moBy4hWxV8/jOobkQm73Lb/0PicXe6/q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771305938; c=relaxed/simple;
	bh=UDGiA6u2Mh2ioc77iBLv2w+58RFL9PLVhVaFyxTpzu8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=UGSJXrFenIKvqehXGzK70u7wYXUZDOc6k+KdyFs8lzKWJEcf8dZOweScO1/dWBM5absLC2LTRoCAC68vCQbSNyRNb1sSBRQQOTCNjGD35IvM/1P4CWKErer4VpUGjqHWhtdnPdY6+T9fQ0f8twu+oS/Ltf2lGf0nLnQdYtM9Yoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Idl9gKHT; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=e0mxOXjw; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61GG1dQK048739
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 05:25:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=SW6o5m2x1c8
	kR5oWPSQwkrgwQFlNO/zECsmjC67PYuo=; b=Idl9gKHT+G95pNP2Yot+LIdGbLH
	kam3JYPNyEJC16sVK+CbNO8UQKtibkq7U3JDNTok+6120QnB2Z6IeEMveGgzyiwv
	GuncEre5lqsjPsDaK7vZhUOAnT0/KKWOZG0WfZg2bFZeZjZeBNh0UzqVeXT6o4Xh
	s1TpNWRE0RlXC3uCdxIcktwD/t9UA6UGXiPUPXUhQlejAEW8CriXnayTdXjwLGw1
	3uWbG4dY5s/KPqN/rr6udSaOdhOaJa8Pg5VmwjvegrYLTCORDr48S9ETgN16zHNX
	mk6qhYrtq1BYtiSO7Sjbhk+DJZeTqHRrcHphg4e63FmlEl3+AOMNFjTJXug==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc6d819rc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 05:25:37 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-354bc535546so3944979a91.3
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 21:25:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771305936; x=1771910736; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SW6o5m2x1c8kR5oWPSQwkrgwQFlNO/zECsmjC67PYuo=;
        b=e0mxOXjwZgE/F7jbrYSSChqDjl3s2YIGClArdspEvjvQH6hB6pmPThacCh7IQpphbu
         bq8l3+//QubnouI7LjegyZGIjKhAaDB6Din6vYASvK4x7Bszajj8eZoO0grAC+Eu4Z4N
         801Y7JIpnzkmca+nmGkmySpGawpl3jvfXlBk0ztvrscxLGqlSFzMLN7hq+hsVNTxPTz6
         GcDK9GYGg2+17xO6z9QFayDDBJStI9GgTWaVhPpi5hQfeAQp5W8tUHb8CUKNzyIXEnVV
         fibon8NP+HUxlE/shdW8EwxTmw3lmT0V7V36Wjmkud/k/i7PkSyK/OCnWb1e52wFRbQ1
         Bykg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771305936; x=1771910736;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=SW6o5m2x1c8kR5oWPSQwkrgwQFlNO/zECsmjC67PYuo=;
        b=iswbn3lsA23Qd3nffAVyBULs4F9NAbMIZhz2uCAbArFigv4QzKhW0NHPbBqIyjqipt
         qY4Tek1N1yEV8dcrOP7tQYwonJ2awBDK3tfIAgmQ7qchzUlLUMIEWnSXrmb5P7aWiPOB
         +3+iUFmjneKTkJAmlB3PVJCOrMdGN1YILxDlQ2HqhfPetVKvk6rpxUkM2kUYTKL1cZh6
         47b2PzqTn0Oj/rPehpOGV0oUmLTSZ8iCrYvqnMb+fNB1XLWPQWsY7aLk5gyLeKjv2tOE
         hl4gSkioN6ww5FjYnLy3b2beVAJVy2FLv3cPvdhSjdkKu4yDK5SQc8VCx6BbS1nyo7Po
         DURw==
X-Forwarded-Encrypted: i=1; AJvYcCXhEMVbFrVzhBXGr2hKbSEZ9VZoUs2/QRCZtig7BQOhmDTwJQib0J7r7aPlh4SEkx/SdU2NxzbBHCNW@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8yoMeEaOXZwMfmEmAXk97CkMyuYt6bz8l4I7NDtUWq1++8vtZ
	diRaJHIiVUsGpBDPlr9Ll+y78+ebngEH6xtWa6ukuuzv1gdS6bd58m/cFXLrr5hLWCTAC3DGuOS
	fxFdN1U2Wn7kXbP84ZbAUXSrn/FI7Npl4K7CS3kNHkivuxGAffbUM38J65zTvgne5
X-Gm-Gg: AZuq6aIhHWnhBFf7Yc6xKZ7FdpUIvJyJK8xm2CODHO1Ob1vws0ziSs2GV1pJXvorxyv
	yMFXRbU2Gak2D6ICruIqzOGf/0OFE/FDqouPWGZ/ZSWr112y5z0l5tPITCbM5gRAHOEysfXliBB
	EDT3JSorTpei6czrSByj3XP0p2gP4oDhW89/niUCN3O9WAl3E1xeEaybzXOuYz4BfQKlhGWm2bY
	HBGRMkdmdGN1O3CvlXzkHYb8bTpfw2d6vwrdlXxo3wVdb1LJlUNW9ylAy3JEAvEYklEoMN76FrM
	hnyLHfUWX8mEWyBW1Ek7j75gMuxvPwoIwDvL7WAOCBqYBhnzld1AeRaV5OUHWkPSWNAk6NQHChi
	KrTJ6yXn7HlvwV2a2wnkP+7IOFX1BMnbCEHIsQWVqvaGfKuly0TLF
X-Received: by 2002:a17:90b:4f88:b0:354:bfb7:db1a with SMTP id 98e67ed59e1d1-358450c9aebmr7523964a91.31.1771305936463;
        Mon, 16 Feb 2026 21:25:36 -0800 (PST)
X-Received: by 2002:a17:90b:4f88:b0:354:bfb7:db1a with SMTP id 98e67ed59e1d1-358450c9aebmr7523950a91.31.1771305935995;
        Mon, 16 Feb 2026 21:25:35 -0800 (PST)
Received: from hu-neersoni-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-356a87f47f1sm6537685a91.8.2026.02.16.21.25.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 21:25:35 -0800 (PST)
From: Neeraj Soni <neeraj.soni@oss.qualcomm.com>
To: ulf.hansson@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, neeraj.soni@oss.qualcomm.com,
        Abel Vesa <abel.vesa@linaro.org>,
        Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
Subject: [PATCH v4 1/3] dt-bindings: mmc: sdhci-msm: Add ICE phandle
Date: Tue, 17 Feb 2026 10:55:24 +0530
Message-Id: <20260217052526.2335759-2-neeraj.soni@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260217052526.2335759-1-neeraj.soni@oss.qualcomm.com>
References: <20260217052526.2335759-1-neeraj.soni@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=bqVBxUai c=1 sm=1 tr=0 ts=6993fbd1 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=VwQbUJbxAAAA:8
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=MkwR1HCittXvMrZHU44A:9
 a=iS9zxrgQBfv6-_F4QbHw:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDA0MiBTYWx0ZWRfX7vPYuR4/Kj6w
 VsmyQZxvCHLpB2Xrr19H/rC8ze/OX7uoF7lxjo5369b1ALwK60FvcjT8Ifv5pzrGDkLjeHRt+6c
 hgXHa2c9tOS3WYg5kJdr1r+p2tk0PiRg23X+YG8dmX3Dd0YCD4g40lh2oi4bQAQy1QvTkudryQX
 00egBpmlF/APnK1sA7l41ZjWdfhGT0+reZ6zJgp5IRZyx8g/JW3XPblrI1/YE7P8KUwQi0e3Rmo
 3fkt430Q4veKEeBi28phh77Goz3wy4xkF57jcFqgVbVbaZ5IUFEgyZm3zkjI8iDCwY5xe25dc0m
 zwAWeEY86HKhQFw8ZapGmSlDAYZAIq99W+6rtwtkcUfCb7e2hPm/FHpd+69ym25kWpf0bYmlSwK
 AxwDo8GThzBawLohSKeST2dWz2BvyqfpNLfJwengyUBtNPsLJzhT5oUk9MTRwcmYGFiKYUZnwUH
 HEycG7GH0QmlXKm38xw==
X-Proofpoint-GUID: wwNiNf8gc48ukDM73Dk9HawveZdFB3PF
X-Proofpoint-ORIG-GUID: wwNiNf8gc48ukDM73Dk9HawveZdFB3PF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-16_08,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 spamscore=0 adultscore=0 phishscore=0 clxscore=1015
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602170042
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-265964-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neeraj.soni@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,linaro.org:email,qualcomm.com:email,qualcomm.com:dkim];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 417DB148C9C
X-Rspamd-Action: no action

Starting with sc7280(kodiak), the ICE will have its own device-tree node.
So add the qcom,ice property to reference it.

To avoid double-modeling, when qcom,ice is present, disallow an embedded ICE
register region in the SDHCI node. Older SoCs without ICE remain valid as
no additional requirement is imposed.

Co-developed-by: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Co-developed-by: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
Signed-off-by: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
Signed-off-by: Neeraj Soni <neeraj.soni@oss.qualcomm.com>

---

Some initial work is done by Abel here:
https://lore.kernel.org/all/ba3da82d-999b-b040-5230-36e60293e0fd@linaro.org/
and by Abhinaba here:
https://lore.kernel.org/all/20251009-add-separate-ice-ufs-and-emmc-device-nodes-for-qcs615-platform-v1-1-2a34d8d03c72@oss.qualcomm.com/

This patch adds the purpose and usage for phandle in the description and encodes
it properly in the schema.
---
 .../devicetree/bindings/mmc/sdhci-msm.yaml        | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
index 938be8228d66..9b902e0c8d09 100644
--- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
+++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
@@ -140,6 +140,11 @@ properties:
     $ref: /schemas/types.yaml#/definitions/uint32
     description: platform specific settings for DLL_CONFIG reg.
 
+  qcom,ice:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      phandle to the Inline Crypto Engine (ICE) hardware block for this controller.
+
   iommus:
     minItems: 1
     maxItems: 8
@@ -223,6 +228,16 @@ allOf:
             - const: cqhci
             - const: ice
 
+  - if:
+      required:
+        - qcom,ice
+    then:
+      properties:
+        reg-names:
+          not:
+            contains:
+              const: ice
+
 unevaluatedProperties: false
 
 examples:
-- 
2.34.1


