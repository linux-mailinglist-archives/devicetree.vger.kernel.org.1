Return-Path: <devicetree+bounces-11963-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E87107D73A6
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 20:56:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 896EAB2119B
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 18:56:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2335030CEB;
	Wed, 25 Oct 2023 18:56:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="E8rtwGrf"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6240D2AB2B
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 18:56:48 +0000 (UTC)
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4DC7C111
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 11:56:47 -0700 (PDT)
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id DE8113FD3F
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 18:56:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1698260204;
	bh=FFiHmR7ukRwdZCsC7cixmRTY2MvrJS7s0z/YTGkE2iM=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type;
	b=E8rtwGrfaEYHWSNoBg/dCNr8pK5GmkvEEQYOAHRHCwb7UVtqmorKMzEOW0OHiHT+n
	 9EuPOCAFm5vlKxjfQvfbZxUJtROcuVmlhJDJ+QdCZmGN4EgEDtyhyio5wzLncE7ZRq
	 7E2FoVI6964wgeqLTrKj3GEHd2oXmvqA/VBaVkIOeyA5aBPt5o7vqYcdcIy4ogjosd
	 3ij+EJEoQN5/1DqRcbEggcFDEeTG/QWp28TJnDKEmc9qNR7OVCbX/y2l/8EMFlgGJ8
	 2dr3F+2tra5s4ZWB8d9CxksvwJYpfIRtmQwqNrPWnctJtD0eLv7w0YzP/pZaLXr/8S
	 cdG7mYbTmzE5g==
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-41e16b279ffso1453261cf.0
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 11:56:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698260202; x=1698865002;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FFiHmR7ukRwdZCsC7cixmRTY2MvrJS7s0z/YTGkE2iM=;
        b=qxjT/9HVAWdNL+3JKNlClWwwTg09I/ki9dRwoLd6yophisc/gI5NAzognHsaT7R7ZP
         4I04qhlZI37xjyKmGGBot0M+HMzbrXv3+U7F3pu+BTyXU4bPefefm1AkXMFmHtkloUgY
         ngFYiuE4W2q/GVL/sRHDiViwRFeSo/SHcaCHcRkwzkK2lrOd18T9ntLbThbBv3alPClZ
         KuabnVRlvVSwToGpx1MD9tXzTY6vu+N4T5RHiUkxnfrOMWGvthImTaoL/7WEGKhuJ1wy
         dtxrqwvAMnLCC2x5fVIPOvsYeE71+N3VvbAYu1P1kQkT+JD3KdvAezeZLp0jMp6FQXU9
         RcDA==
X-Gm-Message-State: AOJu0Ywcivhs6grhPzQdVgPA6w4ftYkjL9mPBwzzAdvpJZl9kz2Dwpk3
	e+Doo8gP0ECCQyAl9T4pqk1TC31u0CPwX56QWs7RxhB1A9H3g+2xSFSULtDstm9slLcjBMQw2Vk
	T8t9gg6ZHzQKRmPio0Rh5ng9qsXXebAu/6zbw8jMWrPtdncAnPO+KW2g=
X-Received: by 2002:a05:622a:14e:b0:41e:172f:6e78 with SMTP id v14-20020a05622a014e00b0041e172f6e78mr15135519qtw.29.1698260202169;
        Wed, 25 Oct 2023 11:56:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGRHDA8d43i/0eqTtRETVi4ef1AAWHZvlYua8G+9qwUeJ5hvjbzmci7qiMP/aXUn13Et1Ecrw6N0+hOCNM2Ze0=
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Received: by 2002:a05:622a:14e:b0:41e:172f:6e78 with SMTP id
 v14-20020a05622a014e00b0041e172f6e78mr15135502qtw.29.1698260201944; Wed, 25
 Oct 2023 11:56:41 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 25 Oct 2023 11:56:41 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
Date: Wed, 25 Oct 2023 11:56:41 -0700
Message-ID: <CAJM55Z8DXDs6LT0JrTyEMp8V6BHvsjUW7aJ8Gj+fRGsasHAi_A@mail.gmail.com>
Subject: [PATCH 3/4] dt-bindings: cache: sifive,ccache0: Add sifive,cache-ops property
To: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Cc: Conor Dooley <conor@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>
Content-Type: text/plain; charset="UTF-8"

This cache controller also supports flushing cache lines by writing
their address to a register. This can be used for cache management on
SoCs with non-coherent DMAs that predate the RISC-V Zicbom extension
such as the StarFive JH7100 SoC.

Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
---
 Documentation/devicetree/bindings/cache/sifive,ccache0.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/cache/sifive,ccache0.yaml
b/Documentation/devicetree/bindings/cache/sifive,ccache0.yaml
index 7e8cebe21584..36ae6f48ce0b 100644
--- a/Documentation/devicetree/bindings/cache/sifive,ccache0.yaml
+++ b/Documentation/devicetree/bindings/cache/sifive,ccache0.yaml
@@ -81,6 +81,11 @@ properties:
       The reference to the reserved-memory for the L2 Loosely
Integrated Memory region.
       The reserved memory node should be defined as per the bindings
in reserved-memory.txt.

+  sifive,cache-ops:
+    type: boolean
+    description: |
+      Use this cache controller for non-standard cache management operations.
+
 allOf:
   - $ref: /schemas/cache-controller.yaml#

-- 
2.40.1

