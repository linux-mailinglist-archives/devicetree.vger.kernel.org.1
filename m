Return-Path: <devicetree+bounces-21965-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 456B9805E06
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 19:48:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F26CE281B48
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 18:48:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1D9463DF4;
	Tue,  5 Dec 2023 18:48:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="QtEMLXZR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-xc36.google.com (mail-oo1-xc36.google.com [IPv6:2607:f8b0:4864:20::c36])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4C0CD43
	for <devicetree@vger.kernel.org>; Tue,  5 Dec 2023 10:48:15 -0800 (PST)
Received: by mail-oo1-xc36.google.com with SMTP id 006d021491bc7-58dd5193db4so501424eaf.1
        for <devicetree@vger.kernel.org>; Tue, 05 Dec 2023 10:48:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1701802095; x=1702406895; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vDgn1SrDftxmBi54zNdMtJUWGA9ZxIzk+fgRKHhw/lM=;
        b=QtEMLXZR5fcHbcLUT4m6kHVdo/6Rk4WgCFLe8+Wzei1nyhxKG/CO046VvhXG5s+von
         i3FjB3oStaA7mNvXRZGy7c6bkqfPvM/chff/5l6veCF/5LNhLxvkaXtVHBuHbxniBrUD
         eY0/r2q+GWA2SxnfRdJZVdIspWd058+ENn784=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701802095; x=1702406895;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vDgn1SrDftxmBi54zNdMtJUWGA9ZxIzk+fgRKHhw/lM=;
        b=SB0Yzih5837kG8l6BCigRKuR/lR9+ybLzOE8TcIZGS/NsY3ZN8W86XFTQcHtjf0XHl
         eS/6KE5wOHF3krA1jtLcf+m4h5+TLts4Hvr030J2FeFz+OhDmtkJDnlfyDh0Ol0Hkutp
         qVg87lPbKrkUwnZMqCVLI3AucBaXlY8rBXt4oW9mmsVWB1Bnz5EE7pqGjU6rcx3NOToD
         GqSOt6G5wpuuB+H2nGSHcvuWTruP70iaQU7Cltlu2YYEvAURwpwOjvtyB+HOZ9/ZHYQf
         ikwzYZztFYbq5oMSGcW2P6IFNpKfAIa1133Mr12zp9K9epaoMLdd+bAniGTDolscoHSf
         SOLQ==
X-Gm-Message-State: AOJu0Yw2K5ONfPgMSwd69XY7HRa0sPYaGD4J7q+WFNflwikR0xl09Zfh
	gvXagWHg1Z/W0Yi+nTxKIeShrA==
X-Google-Smtp-Source: AGHT+IFI1UF+i4Lmh7XXhTATcjR+n/TABBYg+KiFDvGwEmkJJjxPFfcqdC4o+UQvAJ0jSDdQON+qcg==
X-Received: by 2002:a05:6359:a25:b0:16e:4d4c:68a2 with SMTP id el37-20020a0563590a2500b0016e4d4c68a2mr20644814rwb.2.1701802094712;
        Tue, 05 Dec 2023 10:48:14 -0800 (PST)
Received: from lbrmn-mmayer.ric.broadcom.net ([192.19.161.248])
        by smtp.gmail.com with ESMTPSA id m27-20020a637d5b000000b005c6746620cfsm3151046pgn.51.2023.12.05.10.48.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Dec 2023 10:48:13 -0800 (PST)
Received: by lbrmn-mmayer.ric.broadcom.net (Postfix, from userid 1000)
	id DC55DD02; Tue,  5 Dec 2023 10:48:10 -0800 (PST)
From: Markus Mayer <mmayer@broadcom.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Markus Mayer <mmayer@broadcom.com>,
	Linux ARM Kernel List <linux-arm-kernel@lists.infradead.org>,
	Device Tree Mailing List <devicetree@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH 1/4] dt-bindings: memory: additional compatible strings for Broadcom DPFE
Date: Tue,  5 Dec 2023 10:47:34 -0800
Message-ID: <20231205184741.3092376-2-mmayer@broadcom.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231205184741.3092376-1-mmayer@broadcom.com>
References: <20231205184741.3092376-1-mmayer@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add versioned compatible strings for Broadcom DPFE. These take the form
brcm,dpfe-cpu-v<N> where <N> is a number from 1 to 4.

These API version related compatible strings are more specific than the
catch-all "brcm,dpfe-cpu" and more generic than chip-specific compatible
strings.

Signed-off-by: Markus Mayer <mmayer@broadcom.com>
---
 .../bindings/memory-controllers/brcm,dpfe-cpu.yaml        | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml b/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml
index 08cbdcddfead..6dffa7b62baf 100644
--- a/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml
@@ -16,6 +16,11 @@ properties:
       - enum:
           - brcm,bcm7271-dpfe-cpu
           - brcm,bcm7268-dpfe-cpu
+      - enum:
+          - brcm,dpfe-cpu-v1
+          - brcm,dpfe-cpu-v2
+          - brcm,dpfe-cpu-v3
+          - brcm,dpfe-cpu-v4
       - const: brcm,dpfe-cpu
 
   reg:
@@ -40,7 +45,8 @@ additionalProperties: false
 examples:
   - |
     dpfe-cpu@f1132000 {
-        compatible = "brcm,bcm7271-dpfe-cpu", "brcm,dpfe-cpu";
+        compatible = "brcm,bcm7271-dpfe-cpu", "brcm,dpfe-cpu-v1",
+              "brcm,dpfe-cpu";
         reg = <0xf1132000 0x180>,
               <0xf1134000 0x1000>,
               <0xf1138000 0x4000>;
-- 
2.43.0


