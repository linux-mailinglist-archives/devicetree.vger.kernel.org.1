Return-Path: <devicetree+bounces-256231-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F92DD37A12
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 18:29:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6C7F4300854A
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 17:29:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6614E3469FE;
	Fri, 16 Jan 2026 17:29:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cilUP49i";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KhYW2a5A"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8CFD2E719B
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 17:29:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768584569; cv=none; b=QocJWKO+pYgFgy/pozI6WXKCZLGhjJvEHKTVtZ6TDQqnDVL8h6LSvcCl1FabBzTFxFEaUW5s4Mm4wRBkVBIdejW0i1zyad6vs7GmoO6NsHJ8k/bD4UIaqss8WvN9C+g8PIqHVIHemApQmzFfVB+YTHNV4QomfBY1ItTK3nXZqzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768584569; c=relaxed/simple;
	bh=w5wYmYJ0Q4EcWsM7qxhCEMwCYB+GI1JfCsWL2CMYrtQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ueox+HfImZPirCStX6PM9MpegZkCpfLCMeaoiqqQzT0yAJt/BY+f7NpLcv0fI1cayW6yD2uF5TdlXERVxWtTMi71l8/0hPjmVrklBlFhUWw64GyxPHmRrP0uf1zMv4l0kBoufHi2Cr203vZHIei/mCI76bb+ZFYrkzDJ92mIpP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cilUP49i; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KhYW2a5A; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60GGCdR53192258
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 17:29:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=RienFMECRu2vQ3cFASNeEvCpTFY7hGKAL5Z
	iocRuErw=; b=cilUP49ixDv+tPMVcQ1cL2pJqlIuiPMvJl1GmcSUZ89HzuIBjm9
	Won7lB+tupT57JUEFkrqi+33q6tY9IxvaI7exFtJz1+62T/s1O3aQ2Zcedmy6cUx
	pri4ryWJtEJSNzdufu/ll9BGQf+61+geviftn7InS6L1URSvoRsVLlGGVHTug3O5
	w1AbXTh1Ud+NpHhHgFo4CGHTRG6wQyu+5m3siOyNgCrWLgc6aw7dGhER6hXQl8Yw
	Lmfwh+xEHOVWxXe7TfIo0U7TLapOxS4S/FGAW4X9oKUUhoY1PO+S2JTI3LSkUIZu
	tPjWurf2+R8/2IzDK8ik/J1gr9gWi5LKchQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bq968k2ay-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 17:29:27 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c6a87029b6so220744885a.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 09:29:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768584566; x=1769189366; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RienFMECRu2vQ3cFASNeEvCpTFY7hGKAL5ZiocRuErw=;
        b=KhYW2a5AVXoRnHyahapPgOFnAZqYv9dSx7NaFJy9SqRY1GjkoZ/dG6mEA0cXSCT73L
         baPn58yx2s43JOAIrdz4BnhKqARe8202m2GKer15VLoI9sOqtx9Dsl/rjr1JrNhEZlbt
         gCTGH3m8UFirxF5gGUyQJtqtIYo5bz5DXnZKUQNNtB0ldKZt/Xt77qSr7Mw0iFjDJUif
         Nj5Zuji3YfS2uTAUj5bX11qkkuQgQqyQMUiYuY3eEyiPPeCmMAPyaZSanK92GQH+heKP
         kYesJYXjp5pB0ktAvEs7WkePY8BamE7E8XE7muBEaCKeB5aJFu84WQy/EU2HdXDXgT19
         e8Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768584566; x=1769189366;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RienFMECRu2vQ3cFASNeEvCpTFY7hGKAL5ZiocRuErw=;
        b=eJxdX+uDkr5xqWZQjh9CIuBt671P6mfzSgM31MMIRqxJUgyIjWeolKjQp88rA1L0P0
         BvrvEeYoITQsiXMVTTF3KirdSS4aycliNDAXHZsULj0wN1Mi0ibkmOZtLv+N78iKwE4v
         ixjkgYVvGhOnek0/t8CtjLf8mv4VKAW2grT6MTJcQnccf+wW34GJ/eATk6Ey1eLwpzcM
         WgeR4fg/HDYZTrzoqJOzVEVEsxYbso8vwPNoOzX4xtQRvqm/V2lQ/G6s4AveIIQmJMjb
         3VQN0yU/YBBNpgxQbAWL4ukxWEGN0d5HkwfXi/uCc74ZTVO3ZVwaIhNJBWhM7B9a/m/l
         DwOg==
X-Forwarded-Encrypted: i=1; AJvYcCUuyrMLaLTiIyrOAyAb+dnIDYAMYpCtCRYdBpxnQfwWqFyVCzg/f6Z8vZTa/LsjuUVYoaAbDr2pLiWX@vger.kernel.org
X-Gm-Message-State: AOJu0YwiDTbQOdT9BodIO7RbUH7EcpxlOO3IYJgHm3qacTMG7X8KeWBO
	R8P+Kka4tsSgjEUDrJGmkigddvGm5Lld/k0rN+0FOZAAWaqrtx6XuP0nRiTPQlW0nTYBXszg/dW
	FgX/HLP5agyn2/PEFTq2wP/1pk/HIh4zhkz/JoDrbzl6ZybaW/vi2N5+ac3GflTaa
X-Gm-Gg: AY/fxX5h9yrm6q0rwUimN8LjGCJs/AUgL1gLk5/uPqByMwcVCsIz3bfRmjVkRrmotoj
	qBFgQ69Vutsl+8sVWo2pbMELOluTv2HEjf+/jlqdb27DWI0+fMNUHXT6Hm0grwaKKGKwLO/ho/G
	3jySs0u3uz9j+a0xWvL2LUk96ZCZBOSyDf2IwTXfL46BzZHLLwKGxekuoaHTv//Gi57tG4XNgMz
	kJ7E1j2p2AC25kvvTw2mprnaGOT8GxDAQkVjUBYtzDDOEcd10Kgu8LxV06VgKZkXT+lDBzIO8DG
	khAFlgC1CshUcMIHCgQ6ZGB0fc5vXwuPnrBBlGrPT/BcM+OBg+u9H3qoVKhE864s7sYQSnJ51pt
	tqrpJ/v6rLKtY1Hll/TUlUxQVnw==
X-Received: by 2002:a05:620a:461f:b0:8bb:78dd:1df with SMTP id af79cd13be357-8c6a67c30d7mr517345385a.76.1768584566271;
        Fri, 16 Jan 2026 09:29:26 -0800 (PST)
X-Received: by 2002:a05:620a:461f:b0:8bb:78dd:1df with SMTP id af79cd13be357-8c6a67c30d7mr517341685a.76.1768584565814;
        Fri, 16 Jan 2026 09:29:25 -0800 (PST)
Received: from quoll ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4801e8795f1sm52916095e9.6.2026.01.16.09.29.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 09:29:25 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-remoteproc@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH] dt-bindings: mediatek: Replace Tinghan Shen in maintainers
Date: Fri, 16 Jan 2026 18:29:16 +0100
Message-ID: <20260116172915.99811-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1790; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=w5wYmYJ0Q4EcWsM7qxhCEMwCYB+GI1JfCsWL2CMYrtQ=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpanVr7vSCa78OJVltP3F1F8lnT/0QOtvNVJH6A
 WdgmAkrbZuJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaWp1awAKCRDBN2bmhouD
 16EED/9Bt3RCNfZFEV/xizSMt9bKxX+UDTt78BnE/An3TSm7nTS7v35PifUWDhS/k2HgrHRGumo
 u8ECFg1GN8Z9hKsm+3v3MN4IH3jQQL9Bahtj1tOOXN4qnRVE9rGXnBCX8/HRJUxeYsLu9NmkuzX
 PjVPED2R/ZTs2CsPEiLYXGdyMneDZH5tu8KMysCxLPaSLcNFuzzbm0rpEZu5J0X6aWfpebuBhWa
 rF0CA1SbDW/jLt6X4kVfhzSdbsWKAefcrjroQ95gqYGuO/8eZNhFhSr8Xmk1OG7tQlnp/12VLdF
 PNXXbtrvlnKMdH+zAQGeatY9r4qwiMY5TpsKlvLt0XF4wue4ImVqMNFhVr0rVrBMtfiy2EKWYne
 6bd0ekQ2uIVrqKaU9VtdpSogakNxpoFgLog886FAOuUCTuw4NXtT3nkqdv3YQPhsrUckMksJtz7
 jcPvxzie+JPuOIQWKTcZZblw9ia7frXnOQ/QEHhhtGkfQCt4jRkp+QoQQIWjB9hznN5gpWEDWDO
 rJYYsObfoLOkxHEDvuZJo7krFzXSpGishb6HxU+5o1PXq604+qUTAYQcDlNKgC0707KkTUq69Mw
 pLJTLhyPFBVO1SO1WxYSDDuJ6j0P4i/5TSwiDlGBUNTCOarF9y5FiTOeWiywHFHzzgmhI/dqTtm asdA2zlU1VrINYA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=JNg2csKb c=1 sm=1 tr=0 ts=696a7577 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=gEfo2CItAAAA:8 a=mpaa-ttXAAAA:8 a=EUspDBNiAAAA:8 a=QX4gbG5DAAAA:8
 a=lNgBRxWjdUaVFYStBmQA:9 a=NFOGd7dJGGMPyQGDc5-O:22 a=sptkURWiP4Gy88Gu7hUp:22
 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-ORIG-GUID: YEN4Mrq3_0_J-_GqABUpWCuwWFYF6SXp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDEyNyBTYWx0ZWRfX9cyOKEneprDS
 GSd1qggK1VRnrbCnD7MQGw6c6VFmyFv40Ap+ajcRnj87sMYblBHx5nkJoYel6LcG7x26Nez0Ew0
 r0bxm3GCa4Lg0o7F+A3bFP4s3KciY0aHn5tbk7JG7HKU6mxrxLgeZ127TzQCF1iDELrhbI4Vwqx
 zNubGWsFtP76iHF7C7ETWvnjUHndxNoADh9q8kKHPsqC8dRbiaqOU2Oao3Lrn6D1IZ04zBkzq5p
 wuIFfqe6elM5JIqVuOLxMjHpmWZwbIskD0BSLnTKDwZ4+ji9omLcHOXdu63cuqMq9sMjvLpYmlp
 Eu/F1rQ5Ds3V4p6E3gXCDc56PWO8cZqICYejaJbmIWMyjW7voM5U9+BghcMe5csTTGfRWSkFc1m
 5w3VweIKKK2X6JS1Qd0F4ZGi77a8BgLGs8Br/G+Uvz9Zak/dSNqp6QqX6s3rWh6eETh4V/yJrCR
 v+eItKSwloc3Ne4pVOg==
X-Proofpoint-GUID: YEN4Mrq3_0_J-_GqABUpWCuwWFYF6SXp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_06,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 adultscore=0 suspectscore=0 priorityscore=1501
 bulkscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601160127

Emails to Tinghan Shen bounce permanently with "550 Relaying mail to
tinghan.shen@mediatek.com is not allowed (in reply to RCPT TO command)",
so switch to AngeloGioacchino Del Regno - Mediatek SoC platform
maintainer.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/dsp/mediatek,mt8186-dsp.yaml | 2 +-
 Documentation/devicetree/bindings/remoteproc/mtk,scp.yaml      | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/dsp/mediatek,mt8186-dsp.yaml b/Documentation/devicetree/bindings/dsp/mediatek,mt8186-dsp.yaml
index 88575da1e6d5..508b8c2f13a2 100644
--- a/Documentation/devicetree/bindings/dsp/mediatek,mt8186-dsp.yaml
+++ b/Documentation/devicetree/bindings/dsp/mediatek,mt8186-dsp.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: MediaTek mt8186 DSP core
 
 maintainers:
-  - Tinghan Shen <tinghan.shen@mediatek.com>
+  - AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
 
 description: |
   MediaTek mt8186 SoC contains a DSP core used for
diff --git a/Documentation/devicetree/bindings/remoteproc/mtk,scp.yaml b/Documentation/devicetree/bindings/remoteproc/mtk,scp.yaml
index 179c98b33b4d..bdbb12118da4 100644
--- a/Documentation/devicetree/bindings/remoteproc/mtk,scp.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/mtk,scp.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Mediatek SCP
 
 maintainers:
-  - Tinghan Shen <tinghan.shen@mediatek.com>
+  - AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
 
 description:
   This binding provides support for ARM Cortex M4 Co-processor found on some
-- 
2.51.0


