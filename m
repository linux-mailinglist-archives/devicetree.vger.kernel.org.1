Return-Path: <devicetree+bounces-250789-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 61C7CCEBDCE
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 12:30:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 33DFF300788D
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 11:30:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C87D27FB28;
	Wed, 31 Dec 2025 11:30:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jfYMCGoR";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KO4OVOyT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A20AF1F4176
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 11:30:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767180640; cv=none; b=Zld9KGcg8fzvh0deOo6v61c4oM6WsjKbdV8bjJuXrtcvh4mZycF2PmiAkmBvkQNIeGB5JIdO7lB2YBTpfUfEpa+JsOsheBq0/ylDUl9JU/KUJaKokbJ/iUHQElHTgxgtCmdNAIJQ+8cGQZuE14hx0PPGlf6nArXQIdAYfgykul8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767180640; c=relaxed/simple;
	bh=tQf77PodBdqmbolNBCutYqS5tt8KzbwybEq/MlTmp/M=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=IrbBKjwFEqdar1SdL6RBExr58dIML/RWwGVq3cuq5qD1WmpPBMGZx7PjimhYdnpI+MDDCvUcPCOCJb35MmJBmSg2urf93omJamclmuPSX6gLJNglk0zynthXXrlNYLmPLYmPzlO4q6gsA2jqVIX94TtP4RV1CEwdyI0LONIKtgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jfYMCGoR; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KO4OVOyT; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BV62sT12051717
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 11:30:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=ZNP5yC0LQm6TwkzUFLaybwwhqxxTEH3fOF2
	tQoEAqCs=; b=jfYMCGoRDiZn5qfmMUz+APKb5q5zs5KfjbE7U0SKK5NlCJ8rXdR
	pZpltIDABhozj00Gb4WGc5UE84vhgFRUNZui/8IukjIDqql4B6L517myKZ5AFvFG
	PqHE2nDb3K7BWs+IP/WhYPoqCwudNg7W8tGEaOu3zj4iU4DZYhztcXmTbdfOz9Pj
	ppbtmzSiiBlAgW7NIAIkupaRcilA06S+NS0N9MA6Lp7fymwgdIjmpV8fpsQdX4wd
	kXved2XXppSRZkk/fBC3DYSYXtJd4qK3uRNhKiMT4HYPhyhBsfC7l8ucz5MIt+9a
	5RsgKQ515/qgxIxHEy1a9F5LjN44NTIncCg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bcx748hnp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 11:30:37 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a0d59f0198so139020025ad.1
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 03:30:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767180636; x=1767785436; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZNP5yC0LQm6TwkzUFLaybwwhqxxTEH3fOF2tQoEAqCs=;
        b=KO4OVOyTdgy7HCf6Qom/NldNhRUnkjuJVjYWPD5O+1ThTlq06mddAK5EwIrnYhW9gR
         QqxlSxjay8FK0CcQEpkb6zEzZtwcnOAzJnfbZJDi05Yc40OG9piDBzEEFxFPEGHI/znV
         CTpO/254jKj3djqc6Jdp5+maV1yiGXKDw8+VTz1p2N75vQDroQQiXL9EYhNEfUKRNFei
         c1KJsNsPnYN4J2Ci3cmCqRhOGR4t6X8Qlx7r54ZpcbYVnBTaxJMwXBNFQqvf1I7qRYYf
         jRVsqJ3D0ES5NF5bN2KTY9LzisI5J5Qd1mGq+T3QEpJmixPkrhSVfYoxqE1hvydnyYAI
         /GUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767180636; x=1767785436;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZNP5yC0LQm6TwkzUFLaybwwhqxxTEH3fOF2tQoEAqCs=;
        b=i631be+gEouv6EqJDWGyYY8cgHprC2ULWv2BYB5Lp+oxVIv9U0sIOeXGAAjkbZx/Nq
         +3VltlMDLRUsSRuqu4Bgwwz7h65U+YJA5DSVFCLA0tezVF5Y65aayQa/jSfGRDMkazqq
         10v+0nrAaMV6pNZcdJP/fLrCBqNX3eySPxbApppKFuRqpE8CZ53sryo1yTDIXBvh/j2/
         ePfy2re4tDj1SOJKJD3c/nfSge2FZJWLhDLyCVcTtNpA2lYvH3aDpfTMbu1cHFQpRlBj
         BRPY1jjwaKZKVmcnFQ7diDvSsqgWz6mRmPVKCvFm6Zw3HxXKWNv+E4No9aKX/e2ivqv0
         d9Zg==
X-Forwarded-Encrypted: i=1; AJvYcCXImVGU+Bb4yGxs/kwjyymIo2KRA5yYRakqmnNHKId1q8yXl38L3RjA4EbqnWTn2S007+15T7VJWnUt@vger.kernel.org
X-Gm-Message-State: AOJu0Yzl+vn757gp0X2x4+ClY6UXMV7x3xSmEr6klROzgxiMJ6YJ4Hxc
	CxSY7A9RK0ndRFkppoqclzBNj9A5QFXTwTC93Tikv5gSivy2mNgpW56Ztd9zEe+qliTT6sFMs7R
	23bM7JOHosaBoZHc6gOl4OWX0VlrI4hVFUyY2UoJKvZVBCGR+G08oSMU/ZN7MfA/Rgtb3ejnv
X-Gm-Gg: AY/fxX5YxeC2Umsca+Fq2H2ia1iVmxZ9sz3OJ/yRc2Y47ZDoBd8d45h0yNZTw/m6FAz
	jO8yJnSaeBPuYBRrRDM44is+gq2g8EaaBYbpC04Y2yAmajOwszqVNnUfbUhwWdhzf6tGkq6GeFq
	UhEnEA85rYKZv1vVeOVmkpOhvVVTrDE8EtaE03KQ5zuJslYoY0rXSk2UK5fgvqqinROu5arlgw5
	tDQ6dADBeFsiGmfO25fdPW0pxopDwq9w3zMlrehKL2I46bh6OJKvigWkM96ICSlKjqzgYaSYy2S
	zyy0aCrmFkhF9GAb0inlU94xhKWAvjsTe+0ZHrIfAfabXDtgqeMMTQxJFGdWIPJF0mcoBuzM45P
	zGkZe+dzsIoDgTyPE53WEQC0gQQ8HN0YseutP+wXzl8azPTE0KhUNMbWbf8f7ZVpaQE/t8czuFU
	snSPRnQ44w2MVjFcFxnTeRm0loJBulAQ==
X-Received: by 2002:a17:902:ea10:b0:295:5da6:6011 with SMTP id d9443c01a7336-2a2f2202e57mr356267635ad.11.1767180636290;
        Wed, 31 Dec 2025 03:30:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHthg58OBNQG/Lt4JRwDWGGDzbSvGU/ATfkOZO4w2trkTgWW1svBGwDniNHui3fRK8h1zqsIw==
X-Received: by 2002:a17:902:ea10:b0:295:5da6:6011 with SMTP id d9443c01a7336-2a2f2202e57mr356267415ad.11.1767180635804;
        Wed, 31 Dec 2025 03:30:35 -0800 (PST)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3c66634sm328219835ad.12.2025.12.31.03.30.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Dec 2025 03:30:35 -0800 (PST)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
To: maz@kernel.org, tglx@linutronix.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: interrupt-controller: arm: Drop redundant node name restrictions
Date: Wed, 31 Dec 2025 17:00:26 +0530
Message-Id: <20251231113026.2480092-1-pankaj.patil@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767180626; l=1390; i=pankaj.patil@oss.qualcomm.com; s=20251121; h=from:subject; bh=tQf77PodBdqmbolNBCutYqS5tt8KzbwybEq/MlTmp/M=; b=/7NEJLwAd/ctXb/QqKYMOgJmmsgB5b8b4yLqtitiiaD2g1v+aMRDtrwCneUo0Lcg2kGkCBQAT nbGpyYES5QgBBYHpyEJqGLoFhMN/Aa5udRZu81mcukWc/HmteV2UFVq
X-Developer-Key: i=pankaj.patil@oss.qualcomm.com; a=ed25519; pk=pWpEq/tlX6TaKH1UQolvxjRD+Vdib/sEkb8bH8AL6gc=
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: ZSuO-2S4_XrwkkD9R3n6krFYZSFQE5sx
X-Proofpoint-GUID: ZSuO-2S4_XrwkkD9R3n6krFYZSFQE5sx
X-Authority-Analysis: v=2.4 cv=HNvO14tv c=1 sm=1 tr=0 ts=6955095d cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=JG_jA3zTBri8dChhomsA:9 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDEwMSBTYWx0ZWRfX+Ecn+YO7C+O5
 h7SY5k0YcQgSYGwdC5DQxpxI6Bvm64x5uR44tHHKAB4YWQzlJ1RTILcWgcNgmY2j/4Rti17/Xl6
 1ZaABHt/AKnpEuylnvx2u7hrljzXc79b3rbViTAohtqi78s8u28mhYqdjVNP/nsNYfnSJfon4Zv
 W+NZQ8kfhVA8g/RDofKB73EhqRvY84mNo5TBxzorOtxYfeHgdSCQtsmnhj4Hg2vAZWgoblCTzCI
 vBVBqMasUHtdrDG1ldZzC84vvn58ufpIk+pdxGPySfeBVhFSPW08+I/lcXAfVKzqjjl4c7VqBHW
 BzXPKWkNjPxiXw0cdXoChHfZJSeD7vzpYZ5wn9ZoPf1+2sl6HyCEk/AahofkFaGhQ3LYoUZi0Uo
 z/VkYb5GDmdq5R+Ok3vwEVrkdLXl0COKSThUWhB7le7a/zl1PJCzen2NN8+m2jyQDRWKJy6BPxu
 WHrH3SIxBL7i3iRaMbA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_03,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 bulkscore=0 adultscore=0 suspectscore=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512310101

Drop the redundant 'false' patterns so that allowed names
('msi-controller', 'gic-its', and 'interrupt-controller') work as intended

GICv3 binding currently disallows child nodes named 'gic-its@' and
'interrupt-controller@' via patternProperties set to 'false'. However,
these names are already permitted (though not preferred) by a subsequent
pattern that applies the correct schema.

Since the 'false' patterns take precedence, valid nodes such as
'gic-its@<addr>' and 'interrupt-controller@<addr>' fail dtbs_check with
"False schema does not allow" errors

Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 .../devicetree/bindings/interrupt-controller/arm,gic-v3.yaml    | 2 --
 1 file changed, 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml b/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml
index bfd30aae682b..462305f8047d 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml
@@ -186,8 +186,6 @@ required:
   - reg
 
 patternProperties:
-  "^gic-its@": false
-  "^interrupt-controller@[0-9a-f]+$": false
   # msi-controller is preferred, but allow other names
   "^(msi-controller|gic-its|interrupt-controller)@[0-9a-f]+$":
     type: object
-- 
2.34.1


