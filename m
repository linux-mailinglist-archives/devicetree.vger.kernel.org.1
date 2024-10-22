Return-Path: <devicetree+bounces-114348-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 16BEB9AB569
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 19:47:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B4BD71F2414D
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 17:47:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CAD91C2DB5;
	Tue, 22 Oct 2024 17:47:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="kqnXt4Qj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f48.google.com (mail-oo1-f48.google.com [209.85.161.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEBBE1C2441
	for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 17:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729619231; cv=none; b=eUTXWTwfNIXF+lu+KRJ81QBc6CARVSlj4jbFK9kbzaIAFAIYxLGhrWu2xjCEIdiqvnh1DgZRrJFEE771tcU0o6yLfUQ2KYnmfNdWiy+E/fzhF+/otnFSUfujZQ0bVqSnk/xrMcdoR/QcsT8ZhueXaGlpzSZtFvQ7v6khsppiuSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729619231; c=relaxed/simple;
	bh=z3Q1lZ93bNfCGzvIrdovcH2nYuWY7+uWZanQ4ngU4I8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Z8Cbhx+3J0O1NwEEH97LzzKTAHjBMAl7aTSChn4CDdxbrGR65SNjWO3tuSTeFtu13R+K3IIT8JKrEqBlAmXvm7rqTUiLfLsQgIF8dNbbNLpQovakmcSxiAr+/5G5bC8BW55joKXsF6Bl2OVMiDGJhCWX6lc4w/vlVGghh5arL2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=kqnXt4Qj; arc=none smtp.client-ip=209.85.161.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f48.google.com with SMTP id 006d021491bc7-5ebc0c05e25so1328455eaf.3
        for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 10:47:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729619229; x=1730224029; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WZ6BO7JQGKnf9YHuY5qzRmWkXlEdrFxY0wBGYJpddts=;
        b=kqnXt4QjS5AGxW1UFGvzaTVmvL4PkSYzpGRt9rlLoXqBwCOyRv1T8hbJeCizP0iI3U
         f8EkLQSjIxV0O4emRVBlAiQJYg7vvJw/VPpmgO9X9dNl/YlfEoEn3eZpwe4cz70wWHqK
         ouNFu32Spq3dojVgyh/A36orjh82RDrzfEvcj8MUUcBHtqu7vj+9gmiasVDIsNr6MdOa
         Q/sq5JsvkvXXG6WntHd+u+yttvxowGQzJlXR+RDNWVfO+1WWifxP8K6aITxMWiU73hu1
         hfL+NDDhIXFRrgpmuOtznYIWsXDkkrwJdP4ADEvifolMVlk2KIzIfro42dFejaDFGNoJ
         v3gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729619229; x=1730224029;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WZ6BO7JQGKnf9YHuY5qzRmWkXlEdrFxY0wBGYJpddts=;
        b=J403QJerZMfVrTxdXc22jHlu96Hm1vOBHEHle2x+F1Jimpk0b2YB9VhkDBzsfuiiVT
         F1mOtQOmGdGCZDoskEYk8ez3gRj2aePbthmQrsyXQVq/iNcvac5vAmfVk1YwstixDE+Q
         mIaoJugEg8S9TywfHg+5zvjp5JJRbNfC5NeV335Y2ZOpMgfwmshLrHiAdXleVqX+P6yn
         9UHBY69QYi+XdaSitRyfDHow2p1+O0Po+fWm0HnRMmHz1fHxWehr/UX79FVhYJTN5/CE
         EHbhpT7hk2m12H3jEVDpSQC3nQLe9wCNc83IexCBQs9GsLR0Tfgr9ZAu6uGDlxv3kLq/
         lkhA==
X-Forwarded-Encrypted: i=1; AJvYcCVf9AbOQM5frXashc/zlg2X72agPbZhdHCDYA8glWiDdQHGNLu6qXO/RHemB96vBhshtsdl5M5z7KIT@vger.kernel.org
X-Gm-Message-State: AOJu0YwgP9s112RaVY5qfCLycKHyI0EMaLTSq22q3/8f09EYCLQAK2ik
	/wBIXObKrF0pbWS9eqUvImhG6/KIakfeDXoS5ks+OIeC6eZ0CowUGGrUzpzH1k0=
X-Google-Smtp-Source: AGHT+IHdp9OlsGzeS6gDxUdePR2Vr1pSb8/P2TOXAQaAjnRnLrCAIfBudjI8ESRogO+kzmPoIXeKdw==
X-Received: by 2002:a05:6871:714:b0:278:1c68:9c03 with SMTP id 586e51a60fabf-28ccb3a3e59mr76726fac.8.1729619228948;
        Tue, 22 Oct 2024 10:47:08 -0700 (PDT)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7182eb22312sm1353300a34.13.2024.10.22.10.47.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Oct 2024 10:47:08 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
Date: Tue, 22 Oct 2024 12:46:41 -0500
Subject: [PATCH 2/2] dt-bindings: dma: adi,axi-dmac: deprecate adi,channels
 node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241022-axi-dma-dt-yaml-v1-2-68f2a2498d53@baylibre.com>
References: <20241022-axi-dma-dt-yaml-v1-0-68f2a2498d53@baylibre.com>
In-Reply-To: <20241022-axi-dma-dt-yaml-v1-0-68f2a2498d53@baylibre.com>
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Nuno Sa <nuno.sa@analog.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, dmaengine@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.1

Deprecate the adi,channels node in the adi,axi-dmac binding. Prior to
IP version 4.3.a, this information was required. Since then, there are
memory-mapped registers that can be read to get the same information.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---

For context, the adi,channels node has not been required in the Linux
kernel since [1].

[1]: https://lore.kernel.org/all/20200825151950.57605-7-alexandru.ardelean@analog.com/
---
 .../devicetree/bindings/dma/adi,axi-dmac.yaml        | 20 +++++---------------
 1 file changed, 5 insertions(+), 15 deletions(-)

diff --git a/Documentation/devicetree/bindings/dma/adi,axi-dmac.yaml b/Documentation/devicetree/bindings/dma/adi,axi-dmac.yaml
index e457630ec7c0..d5e87fceb3bb 100644
--- a/Documentation/devicetree/bindings/dma/adi,axi-dmac.yaml
+++ b/Documentation/devicetree/bindings/dma/adi,axi-dmac.yaml
@@ -28,8 +28,12 @@ properties:
     const: 1
 
   adi,channels:
+    deprecated: true
     type: object
-    description: This sub-node must contain a sub-node for each DMA channel.
+    description:
+      This sub-node must contain a sub-node for each DMA channel. This node is
+      only required for IP versions older than 4.3.a and should otherwise be
+      omitted.
 
     properties:
       "#size-cells":
@@ -109,7 +113,6 @@ required:
   - interrupts
   - clocks
   - "#dma-cells"
-  - adi,channels
 
 additionalProperties: false
 
@@ -121,17 +124,4 @@ examples:
         interrupts = <0 57 0>;
         clocks = <&clkc 16>;
         #dma-cells = <1>;
-
-        adi,channels {
-            #size-cells = <0>;
-            #address-cells = <1>;
-
-            dma-channel@0 {
-                reg = <0>;
-                adi,source-bus-width = <32>;
-                adi,source-bus-type = <0>; /* AXI_DMAC_TYPE_AXI_MM */
-                adi,destination-bus-width = <64>;
-                adi,destination-bus-type = <2>; /* AXI_DMAC_TYPE_AXI_FIFO */
-            };
-        };
     };

-- 
2.43.0


