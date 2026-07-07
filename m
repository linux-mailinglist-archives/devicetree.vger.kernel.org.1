Return-Path: <devicetree+bounces-321982-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id iWvtKaLqTGotsAEAu9opvQ
	(envelope-from <devicetree+bounces-321982-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 14:01:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D5C9C71B2CA
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 14:01:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linaro.org header.s=google header.b=ldZ5cxtd;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321982-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-321982-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A91BE30D91E1
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 11:56:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FD2B3FCB05;
	Tue,  7 Jul 2026 11:56:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 718FE37F72C
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 11:56:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783425385; cv=none; b=fSMBP4jd4IHOifjlGvWZNh62aws9tICDPIj6GpJqaLQIva42H2zqC+pb6g5dkGcTRssfl+8Kf1ZCyMAgolEd4bY4mtEnqjcFoJd3nsB64Xcn8v+gUZBmhw3k86Lo4peW9xAvpe0sKZCm7iHoVebP2WCudNkHH5KNfXHK8iN2tK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783425385; c=relaxed/simple;
	bh=ZLTVpv9wJNbdOGR/YGPybRYtcHah3LwOyod0rOkZ0Ws=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Yvfv7fMp8rdZTZOUYsNXBmqbRFT6/KgUhp40lR9158iXZPr9ztzukiJ2uBgHP4z+9llKpFxSylR94FKzKvO0XJdI7Gcb60IgMvHNQxVxjkvB+s2t0GOwBvTa/ayRPlJYWyfAeJKACYyMdiqlTlV2A0IQGFQCUUtxF9rqvFq7sBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ldZ5cxtd; arc=none smtp.client-ip=209.85.128.42
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-493c2c0b9a8so35878475e9.1
        for <devicetree@vger.kernel.org>; Tue, 07 Jul 2026 04:56:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1783425383; x=1784030183; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=lgMT9Upuh5KVAe4sPSM1sPIhFZuI5vEjoVoPpztrNMM=;
        b=ldZ5cxtd51/PBZYW3at6nGX45mmMgr9aUWBEMrJbRORVxJi3c/jo6hDxNeF6HfHgMH
         FSqhySe2alKfbHjj+Ul6numCtkz41G7b9an5n564SQ7tROr2dDzNTfAZHTvI6PnIRcPM
         TtLMa2y4lyXX5ReaXg4deQKRjWF31EHXIgugYnZJBixZc8oYQlDOrjEWqBGyLWNkVhgV
         OFRZ781mQcTnyBik9Szou33+sHXL63j9gjxePueJlYnFPyf2JgTC87kTbLFuBxdVD35K
         F7IAf9Puh/uPmcz+gRW0vyGyOayeyaT2SDnP4TkXExjDFB+IefvA4vw9Y56jcbu+Gyl2
         K+Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783425383; x=1784030183;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=lgMT9Upuh5KVAe4sPSM1sPIhFZuI5vEjoVoPpztrNMM=;
        b=ARTUJd5aEZ42+4hXkMsBO+SVwD6ssb4Rhs6/UFU/3LiStLqL1cmsih8tW6wuRUORJn
         07/4g2OQdNerjDp70ATjlKQBEJ6wtRe1OMDWnrr1RMcKquSCOGQpsgBRWap5Q19P4pDL
         yRzaeDihOZdAl7ewm41EFcP34hP99q5u8OjGANpNE2kyhjud739QHnYxy42zOC3YBkLn
         CgJsQoOk05JfL1NSMbzvDCsk5a80xa2s4CsnCnRoaEMEdCssmmUlxYHGoFZWsQH0098t
         ay3AMSCA6OqfeZnAOdsnYAIqZW1A4XJuvUOGUsZiRLFFrDzXvSe0UQjdReWrPKrl5XxJ
         QL8A==
X-Forwarded-Encrypted: i=1; AHgh+RqYb//sBpODlvvaRq8EoXKriJaEVuiy19K+iMC10yLM2QVn3bmNX5XEUm9m4+6glnJzZfQwMS/kmsNc@vger.kernel.org
X-Gm-Message-State: AOJu0YxWy3o6QeooquE1MVVm9vnKMlT6/xfMfH9jRIjFk50gSH7beMT7
	kCXun8f8pHvDgwDLKssyFnVZT0vjJI9FHyq9rYp71Xf3dxwsdhFupdS15mXEujTHN2ZjsqIDmCd
	esn82Zhc=
X-Gm-Gg: AfdE7cl+Jf6lYruYtUZtH/+k9nNzpSE08jeT17DbcI17MmaOk/uoUgzRPTDyB3HfPA8
	GwQB7FOWq9+4HrHJ5PUMme+Y9+vj93A+Av67i3wotTJh2I+pubnLn3j5nUbOPuoMdaUEm+eh5Gh
	AftLkoOS+ybmz9tkwUgV37yAuhiqNxrLwBTleXt5f3CkyAIod9VXd3Jn14pf24iKuV4hEK7bfZO
	KSRSnsCS05ODSEB6rsxzQE1/7xetF73IsXnzC+jp8iSN3JssBtg/8Ls4wOfqO9OIkwW8zWxqwX/
	Gyo1AwlPymfyQDf0mH9xyRN9Owvv0WDgA6iHyr7Zaeglc7VGsH1Uc+qYCTT/0NY+tnaG5ZoFQS0
	nv6gnxz0q1pnarL017MNSKaAp1V1kTTsLFLpj+3CZ9GgJZTV7vF8iZD2QiAOAHnSSf0PvqF4JdS
	H7D0MmUwi7JgWAuPGyXPDzdi76Ig==
X-Received: by 2002:a05:600c:1d0c:b0:493:bed9:b53d with SMTP id 5b1f17b1804b1-493df09b330mr53502095e9.31.1783425382814;
        Tue, 07 Jul 2026 04:56:22 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff24:7210:adab:817c:53a0:8f31])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493e0f5ca1fsm55401235e9.15.2026.07.07.04.56.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jul 2026 04:56:22 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Tue, 07 Jul 2026 13:56:01 +0200
Subject: [PATCH v2 1/4] dt-bindings: mtd: qcom,nandc: Add MDM9607 QPIC NAND
 controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260707-qcom-nandc-mdm9607-v2-1-d906f7e8b814@linaro.org>
References: <20260707-qcom-nandc-mdm9607-v2-0-d906f7e8b814@linaro.org>
In-Reply-To: <20260707-qcom-nandc-mdm9607-v2-0-d906f7e8b814@linaro.org>
To: Manivannan Sadhasivam <mani@kernel.org>, 
 Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Richard Weinberger <richard@nod.at>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-mtd@lists.infradead.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-321982-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[stephan.gerhold@linaro.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_RECIPIENTS(0.00)[m:mani@kernel.org,m:miquel.raynal@bootlin.com,m:richard@nod.at,m:vigneshr@ti.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-mtd@lists.infradead.org,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:konrad.dybcio@oss.qualcomm.com,m:krzysztof.kozlowski@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stephan.gerhold@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:from_mime,linaro.org:email,linaro.org:mid,linaro.org:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D5C9C71B2CA

Add the qcom,mdm9607-nand compatible for the QPIC NAND controller used
inside the MDM9607 SoC.

On MDM9607 and other recent SoCs, the QPIC hardware requires 3 clocks
(core, aon, ahb). However, access to these clocks is restricted to the RPM
firmware that controls the shared power resources for the whole SoC. The
clocks cannot be controlled separately, for the OS view of the hardware
there is only a single RPM_SMD_QPIC_CLK clock that implicitly enables all
of the 3 clocks. The only exception to this are some IPQ* SoC that are not
using RPM, there the clocks are directly controlled by the kernel via the
clock controller (GCC). Require only one clock in the dt-bindings for
MDM9607 to avoid having to define dummy clock entries.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Reviewed-by: Manivannan Sadhasivam <mani@kernel.org>
Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 .../devicetree/bindings/mtd/qcom,nandc.yaml        | 25 ++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/Documentation/devicetree/bindings/mtd/qcom,nandc.yaml b/Documentation/devicetree/bindings/mtd/qcom,nandc.yaml
index 5511389960f0..a916cac53af6 100644
--- a/Documentation/devicetree/bindings/mtd/qcom,nandc.yaml
+++ b/Documentation/devicetree/bindings/mtd/qcom,nandc.yaml
@@ -22,17 +22,20 @@ properties:
               - qcom,ipq4019-nand
               - qcom,ipq6018-nand
               - qcom,ipq8074-nand
+              - qcom,mdm9607-nand
               - qcom,sdx55-nand
 
   reg:
     maxItems: 1
 
   clocks:
+    minItems: 1
     items:
       - description: Core Clock
       - description: Always ON Clock
 
   clock-names:
+    minItems: 1
     items:
       - const: core
       - const: aon
@@ -101,6 +104,27 @@ allOf:
           items:
             - const: rxtx
 
+  # On MDM9607, the OS can only control a single clock.
+  # The 3 hardware clocks (core, aon, ahb) are invisible to the OS.
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,mdm9607-nand
+    then:
+      properties:
+        clocks:
+          maxItems: 1
+        clock-names:
+          maxItems: 1
+    else:
+      properties:
+        clocks:
+          minItems: 2
+        clock-names:
+          minItems: 2
+
   - if:
       properties:
         compatible:
@@ -121,6 +145,7 @@ allOf:
               - qcom,ipq4019-nand
               - qcom,ipq6018-nand
               - qcom,ipq8074-nand
+              - qcom,mdm9607-nand
               - qcom,sdx55-nand
 
     then:

-- 
2.54.0


