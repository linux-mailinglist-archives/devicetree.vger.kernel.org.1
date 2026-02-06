Return-Path: <devicetree+bounces-263325-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eE5ZJsnPhWlBGwQAu9opvQ
	(envelope-from <devicetree+bounces-263325-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 12:26:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E6EECFD38C
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 12:26:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AEB72309B521
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 11:21:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 791C339A800;
	Fri,  6 Feb 2026 11:21:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eChFmc3s";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NfUyiDa3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4785E396B88
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 11:21:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770376864; cv=none; b=fuYmgcxZbCY0LsEmfcCTL273Yo/PvzHwRrScOBhPwMSHS8m4cJdcJ9Qa+xh4ZPd3UkxGn/ef3nMwg3/ysctBdLIAoQ/6Ie6ctfYPkxbp8CzBe+zYNWwUOIF4AHZMBXaX9r6Kk4PoLkZhM2TbqQMqrrRTz/S2czV5BexZXvHTKGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770376864; c=relaxed/simple;
	bh=7fzCRKNeico0VkgpfXHDz6wAtWNgExE6Orne5o+vyFo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=DJ4qawzJ5LYghgtZtd/7+XBlcejeLbdlgNf7+DMsNOIrNQ82baIvFttlEApmgbe07McTSvPCpkNnHAlLxXdBhe5LP1SN3z5c12E4uzRqFMDtEndZ3nG0JyffZQjPj4Zdg/Z0x1reR1ILvc7wOuNzFxbSshQD1If1uSJZzukhkHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eChFmc3s; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NfUyiDa3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6167XibB1852748
	for <devicetree@vger.kernel.org>; Fri, 6 Feb 2026 11:21:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Qd51hyAwErx
	4oKxNGOcfF+v2MJgkyQ9ErDoevb4XkJI=; b=eChFmc3sIqK0qklziDh8XPT21yo
	8kl130gRHf+xarJUmpPBqizhe8YKBl0IRNufWZwUt0EUbYxKwwcGFIS8KdNJe1k1
	4KLKgMNyzkXwVxxCxO/eHg9PBg9fhQ9y3CI02V99alX8KgJ44tlCOBNUMzJGJGJn
	aMxjC6mNM6cpVLBskqQlosK6quTqJ8STDdomBy+TjhTsdZQ3XCtDElza7Q40T/V3
	q/OuLwLA6klIVYchfXGprKszrWMd0U5E/k4oePUbyzkG7Nif51Lus6nSE4R5PFNI
	Da5+aOQ7zds81+xrlpQE7wqtC8YOEufsGCXtWgAKX9DyJwaEVPUMXwTm7Kw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5c148q15-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 11:21:03 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-352e6fcd72dso1073982a91.3
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 03:21:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770376863; x=1770981663; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qd51hyAwErx4oKxNGOcfF+v2MJgkyQ9ErDoevb4XkJI=;
        b=NfUyiDa3E03K8z4N9xtV1xkY+Uh2UQGGDQv4ovLqjFbs3OFreHtcGekGlQwrVrsJgv
         jz7FltGdQJcWw9jrq2zNj+eWxaLOBOF7uPxtK3w/Dt/qIjMjs9vB0u63hw5XT2ISe9Of
         dSnh02MjJ1vIrkwFTBfUDVMOIvZdju16H0aO8KBZQYhZoFE/pasR4p13Dfa70S6G1a7f
         u2bZjmmFICdhnoX+foV4ZpdGmVMjULhqai0f1tXz6p/g7iBhaC4isTTXDdhi7Bk/j44e
         s4axFsHwQpEw5/pTWD9YRVFE/BtD23/5Rx9LcRDSAzljvNPj1/2Gacy1BH1qX2BVLhhR
         ruDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770376863; x=1770981663;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Qd51hyAwErx4oKxNGOcfF+v2MJgkyQ9ErDoevb4XkJI=;
        b=O0xy7MXPu++UUKq//XLAvgNjaXgWsuNgJW8NkIftJmRYmgz0SUF0SL59AnY7pKbYKz
         /kkFEeSD3ITzKPC3uqhPDhZH0FbKUm2UUN6lI/+6Mq99s+TZG65ii0omGdnB3HsrXGxE
         A6MYS8cnOU630WLCi6p59AiQER0zgR9yDyaf9qG/eoKJJs9Rk0B32fd4DWmGhT6mWEA8
         k47jHli9zIWpVqi4+SC4AaBN6kAfxjUU9JKNc8D9ln2fhcZc0gfG4UEfLMq1GA4/oade
         7z/DYRWQM94TLxBSJ8qAuonY38XgtD/ViXt9beWM2BmKuEl+wJQAemoLKeiacsyspUMn
         IV+w==
X-Forwarded-Encrypted: i=1; AJvYcCUEr+/8y83NP5Up6cbKOSHAcM59mVqBwAH8DAYZqKaLYNSOJuigE7wTk38kOfJ1UYeHyOUn14XaEHsN@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6ZcFxyv1EuQMb/68qEenIzv4UU7GhT3K99jUhCNYPb9Qdu9Mz
	kSILxQIiIHx4Nch6eAEQYsEVEobOGQtljJ/sgh4G2Qv8cKkxo2ZjQ9YIGm15wmRrsUNo4lGjDHe
	NOEr8MgBpUSW3mRj03AJI3HbHO+skSa8jxjsmF/1dmy1xmZHo2xFK/tZzbb0pbxJB
X-Gm-Gg: AZuq6aLLhN65fEvWaf357XoNZaumrfy0uBt2hdZleHo0UbyxOW/T8tjLJzYBCeRRJha
	KDL7q5eMrXDNiQ79/5ZXoJOT+JZRpS9y4yAOUc6LTVYZ71niw13R88HuSKT/fsooeR5OwaQY9Pj
	b99k9az1X+xYt1dLuFffCgoChZ4vJ9YjTIPk2e0BuhTNZ/TGxbPCkUTsyZMwfpmxOWF48sCYq8r
	WEnrZmHg9NNculpCEu7prY0LMYFdnHbJOf2IhSPhtWnDYJCe4qL7bkWnVgHwu4Hy2kqahCLrGR4
	bjONXLvTJWXZp3QQnJ8mYICyEdLtse3dYTleV3CxXjTEdDvKMYmu2lAaSDGp0HM/A4hkNK9kQsT
	rPznPydrgRJB/zGFN7ZV45Z5viOcKiEs5YorDBr8G
X-Received: by 2002:a17:903:1ac8:b0:298:5abe:4b1 with SMTP id d9443c01a7336-2a951984b31mr25177315ad.52.1770376862820;
        Fri, 06 Feb 2026 03:21:02 -0800 (PST)
X-Received: by 2002:a17:903:1ac8:b0:298:5abe:4b1 with SMTP id d9443c01a7336-2a951984b31mr25177065ad.52.1770376862367;
        Fri, 06 Feb 2026 03:21:02 -0800 (PST)
Received: from hu-neersoni-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a951c50211sm21675905ad.5.2026.02.06.03.20.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 03:21:02 -0800 (PST)
From: Neeraj Soni <neeraj.soni@oss.qualcomm.com>
To: ulf.hansson@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, neeraj.soni@oss.qualcomm.com,
        Abel Vesa <abel.vesa@linaro.org>,
        Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
Subject: [PATCH v3 1/2] dt-bindings: mmc: sdhci-msm: Add ICE phandle
Date: Fri,  6 Feb 2026 16:50:52 +0530
Message-Id: <20260206112053.3287756-2-neeraj.soni@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260206112053.3287756-1-neeraj.soni@oss.qualcomm.com>
References: <20260206112053.3287756-1-neeraj.soni@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=P5k3RyAu c=1 sm=1 tr=0 ts=6985ce9f cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=VwQbUJbxAAAA:8
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=yDwxroIEoajhRIdHyBUA:9
 a=+jEqtf1s3R9VXZ0wqowq2kgwd+I=:19 a=mQ_c8vxmzFEMiUWkPHU9:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA2MDA3OSBTYWx0ZWRfX8szZYfP1YsEz
 8bzNo8mweLf5kJ/JluAjCTz625bFHwRDSIsYEQ9Y5VCBcY0ZFmGsa0JCELmX0FpvlhTNCzxJG7t
 OFo2ZTTF6cMUpgEr67Krr17ivPlK3GM8+hiMRImKUIxb88xk2m5i5fd4LgB3LpJZNIKXi1Dpx3F
 /v5dzkwbbIpZ3/ho5PrD8jIl+YwepYKln6uJTsFrdLL5sAtKA7X0DvCzlSBgSoorA66VOfEHtA8
 YnnKGB1rG6wAHp3M6L+CFQBV7/1qb6SX2NxlQKWFAFJn1F3YlcOMXpej9/9EM0G75yEsXvJwtLn
 0+S9GKon4yI0ZmwpcKUxjfvuKJTrlDOsGYC1TWtKBE8sq4EG5gZwSFyeYWlY/K0vnq2FIb0gBIo
 CSoP0h9Tsm8mrit3bzu7SAkrNggC5osoXN8Q+xe1Uu3o0GZysQR4u5Q8cKnte7WRh08dswEyKmr
 ttoNzwGAY+opXi1wj+g==
X-Proofpoint-ORIG-GUID: 7BOxUN0DBkIf69JFO5uf1Rkif_-yZ8sJ
X-Proofpoint-GUID: 7BOxUN0DBkIf69JFO5uf1Rkif_-yZ8sJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-06_03,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 priorityscore=1501 phishscore=0 suspectscore=0
 malwarescore=0 adultscore=0 lowpriorityscore=0 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602060079
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263325-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,linaro.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_NEQ_ENVFROM(0.00)[neeraj.soni@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E6EECFD38C
X-Rspamd-Action: no action

Starting with sc7280(kodiak), the ICE will have its own device-tree node.
So add the qcom,ice property to reference it.

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
 .../devicetree/bindings/mmc/sdhci-msm.yaml    | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
index 938be8228d66..f35b675c9f16 100644
--- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
+++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
@@ -140,6 +140,12 @@ properties:
     $ref: /schemas/types.yaml#/definitions/uint32
     description: platform specific settings for DLL_CONFIG reg.
 
+  qcom,ice:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: |
+      phandle to the Inline Crypto Engine node. ICE having its own platform driver will use this phandle to
+      manage its resources independently. Either add this phandle or ICE address space for ICE to work.
+
   iommus:
     minItems: 1
     maxItems: 8
@@ -223,6 +229,26 @@ allOf:
             - const: cqhci
             - const: ice
 
+  - if:
+      required:
+        - qcom,ice
+    then:
+      properties:
+        reg:
+          minItems: 1
+          maxItems: 3
+        reg-names:
+          minItems: 1
+          maxItems: 3
+    else:
+      properties:
+        reg:
+          minItems: 1
+          maxItems: 4
+        reg-names:
+          minItems: 1
+          maxItems: 4
+
 unevaluatedProperties: false
 
 examples:
-- 
2.34.1


