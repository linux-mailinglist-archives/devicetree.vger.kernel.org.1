Return-Path: <devicetree+bounces-70822-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B9ABF8D4953
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 12:12:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 73FBE2821BC
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 10:12:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A52B176ACF;
	Thu, 30 May 2024 10:11:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="T6kxHMix"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58986433B3
	for <devicetree@vger.kernel.org>; Thu, 30 May 2024 10:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717063915; cv=none; b=iPU7FASSNp02QTaEEtBkArK1pvjc4WjxOYdUllMeKROVzlqS8R5Xhd/ZDFnbc9sYG1C11g6vMzinnIfHYPKIrijo9kv/kSeq18LHtmcuvqXbLF+twWlmGpBnhgCpR3zpvpWHcxd5Q0U46kqesoCG+MLas0kh2RpDPoLqFzFSsIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717063915; c=relaxed/simple;
	bh=9k25ZsPTf+WrTiK8qVLkskl+r232la4YhtO+5MWY/Sk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SuSvaKAPTYHKHNGUuAauxw1fY6KSZ8P505bv01xyNuUFs2XeqcsPBs94GTE+JkfblxtBrKAgm89y3o6mxqpUSZ3JUGgLOUpLk4VuxTA4Vl/Uxy1aEdalN6b3tlmI2MVx7BhQDTK8NZEuRexkwW3bvyMZvqnVQ5nc5laJGch13JM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=T6kxHMix; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a63359aaaa6so68036466b.2
        for <devicetree@vger.kernel.org>; Thu, 30 May 2024 03:11:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1717063912; x=1717668712; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sE1zrpU4sY3RHfj/RfOgVZHYb52D/eP6ho+94PIl9YU=;
        b=T6kxHMix00GpftiiKyv0VD52d6SEqvdtSVWywrdtzjb63fAvKoKt6orxpxBQgV9xva
         nhSCNE1HZP1fMTMKkbZySpOou3JqM0ffQslwjf/sHUuYgUORiAr0Ugsp7Apj8cg9UHhC
         XId+dw4kQSOIWRSfYFL7b6v4H9DbuZcG0ceLlCqVvfWDr38nTFaTs3/h+Nh9D5z0qbbb
         HmqVRw2Tbw4uO817Lcr3K8RL8U+Ah8/S71U/fKA+Sx8uUdcB0R3IhzCjFIbIw1674RIQ
         IVMclMlbQc77yetlHO22Jv120plLHVqCxKvUI05ztKudo3oHiaxkznJbgYTA/yi+/vfe
         Ioiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717063912; x=1717668712;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sE1zrpU4sY3RHfj/RfOgVZHYb52D/eP6ho+94PIl9YU=;
        b=ovxOunYE2yvAzrEIUKpp8184MromT2vNLtwx12peqHlvzbW5Cm39pS6Qn5QbVwagYW
         TvOm1qFKLOo2sYu1dCQuEdYXLD+9p4Z5Dylie7vIDnqqxZol2XVL/+x0Nnf4Ad8wVixJ
         islgpNV2FQfKLA1as6cVbTbmZSwVNHuPLoSZkntU615mrfz6CQM+n9vUBCrTr70nh2zX
         jz4fckyJQBXRjrBbhoA9jqVALBKqZkkUF32WFPmQg5ODKzIbQFSMQ3IIydgcNKY7PQwM
         9tN3fPN5ca8S7qnaD1x+LSTLoiwogG8nm+lAW03x7uUX7l39p/JIS4HsPAzHUzN84N3a
         EouA==
X-Forwarded-Encrypted: i=1; AJvYcCWj5xYG7FwJGVPwzgk9iIr+MNy1QKbLn16uF6E3ox9+hkTQEK+aIMX2plBHjBz3v+0ndcBqUIUM/vDDnZWG7xNCAmQM2DRNWkW+eQ==
X-Gm-Message-State: AOJu0Yyz8PgO4xKnFLhAuCgzqXscQOQasUBxy4Gbc9e8TGitqaOP56oA
	uJUTNSBRcEFiAaFra8AmhgwBQl7LH7W7tC2M1Wc0XRxUPBYqXucbnH/t/vk6Na8=
X-Google-Smtp-Source: AGHT+IG6vOKxmXv8nCgMHO2OvGUDB3hI/jUTu/PT7FJEt883f78DKzfcgjYenxqhkoix+4qZL8F/vg==
X-Received: by 2002:a17:906:40ce:b0:a62:d348:8df4 with SMTP id a640c23a62f3a-a65e8e5d49amr108103766b.30.1717063911753;
        Thu, 30 May 2024 03:11:51 -0700 (PDT)
Received: from localhost (host-87-16-233-11.retail.telecomitalia.it. [87.16.233.11])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a63570e5d0esm217427966b.214.2024.05.30.03.11.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 May 2024 03:11:50 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Kamal Dasu <kamal.dasu@broadcom.com>,
	Al Cooper <alcooperx@gmail.com>,
	Stefan Wahren <wahrenst@gmx.net>,
	devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mmc@vger.kernel.org
Cc: Andrea della Porta <andrea.porta@suse.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v5 1/4] dt-bindings: arm: bcm: Add BCM2712 SoC support
Date: Thu, 30 May 2024 12:11:58 +0200
Message-ID: <cfc4db17981ef946a71d40d522118a560aa0f15b.1717061147.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1717061147.git.andrea.porta@suse.com>
References: <cover.1717061147.git.andrea.porta@suse.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The BCM2712 SoC is found on Raspberry Pi 5. Add compatible string to
acknowledge its new chipset.

Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
Reviewed-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml b/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
index 162a39dab218..e4ff71f006b8 100644
--- a/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
+++ b/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
@@ -23,6 +23,12 @@ properties:
               - raspberrypi,4-model-b
           - const: brcm,bcm2711
 
+      - description: BCM2712 based Boards
+        items:
+          - enum:
+              - raspberrypi,5-model-b
+          - const: brcm,bcm2712
+
       - description: BCM2835 based Boards
         items:
           - enum:
-- 
2.35.3


