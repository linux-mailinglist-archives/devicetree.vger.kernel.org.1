Return-Path: <devicetree+bounces-11961-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 42AEB7D73A0
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 20:56:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7310B1C20E5A
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 18:56:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CF772E645;
	Wed, 25 Oct 2023 18:56:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="n0h5vAub"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BACB32C874
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 18:56:42 +0000 (UTC)
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F23B123
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 11:56:41 -0700 (PDT)
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 32BCC420B9
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 18:56:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1698260200;
	bh=dpC5A+l/P4E3TUZnqSQSiD+h/0pN6MHwAsvozKjAyuE=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type;
	b=n0h5vAubFSF8HklEHnm0IiBJXrCYXVWEBTFwKU+Ftu71v4YK+0MLH5qHc+pjM64aw
	 +m3xIt4wgNS+nOsIYMDlb7pOCEwMCGvFSWpal5w1xAh8/kEneR7fmp9MNUsqzTyLoW
	 nu5vCvJsP+f5Rkd7626X090kW0DFEflFkDUXnGqmY+yNzr1sGJ3Pvb+ZviSLY0YcJr
	 PtJzvrTZr9Gojhyz032kgcsXU27TyPI9VVT7wjLRGwC4SZStrKVz3qnZAjZ3uPlKJG
	 AWh/AtkOUZ6l+L2KQy6Hf3nZM7tjvZjvJ+eqzFCQTr9YCDD6/qd041bu2IIFbLCZnh
	 qF2dfPo9NzYsg==
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-41cdce61dcbso1249941cf.3
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 11:56:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698260198; x=1698864998;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dpC5A+l/P4E3TUZnqSQSiD+h/0pN6MHwAsvozKjAyuE=;
        b=wl7vxK22VMDdl6PVzB/kmBnwkEDlESlgtsAIOMawg5FZng/PKvqrCM1lI6tjPxfXTT
         HiginjE1NU6wQuavvg32V+iSEbPcf1rLOY1PvvjQ7qlaMpMyriaoxGC+RWMS8ickz8Y2
         CqKFEPZGrAayXN4IlPGm4OQ/cOssrTXvXHr2adT0Q/HbYNzCiNPZ+4USpW0faS8KobYB
         El318HYHuQSOuzFI+X60Yl9Jp7K1k0DWOynJUuOw+haw7/5/cOcKxu5xSmHmIG5KO1dX
         KleYWlvYA6bvrc5Yqm9fQx8UAXRXCyxIGX/XEpSZ17D5grO+hmBm2NJn4nD/kIC9slkO
         b5vw==
X-Gm-Message-State: AOJu0YxRtQ2j6qdAC1J35KY7iih1WdsDDES6KjKymM94Lyq0rGhdrVsT
	rNvl6xhLfz07cI8N4I2go57qGQwqtAGQujqGrzP3eLvYxJlW8h17Tjszt270Zqz+gUwbVKR0XtD
	NvHvcvXEBwVAuDmV34JPolotp+8/TgOoIxr4WYJz7mKoy7bOgjvKwWxg=
X-Received: by 2002:a05:622a:1492:b0:41e:3de2:c8ff with SMTP id t18-20020a05622a149200b0041e3de2c8ffmr481499qtx.51.1698260198102;
        Wed, 25 Oct 2023 11:56:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEODfT6JXWwGmjJQBhTKiW+hVEHvY4WjoEtxUQiB6AZJTG4R8jFdnVJvecEIj+8lVHfkYW9vqesF3eZs9EmsZA=
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Received: by 2002:a05:622a:1492:b0:41e:3de2:c8ff with SMTP id
 t18-20020a05622a149200b0041e3de2c8ffmr481483qtx.51.1698260197850; Wed, 25 Oct
 2023 11:56:37 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 25 Oct 2023 11:56:37 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
Date: Wed, 25 Oct 2023 11:56:37 -0700
Message-ID: <CAJM55Z-vw1sbks0KcHOXMzP-6c9NMg+GOndi2pQ7iyWh0=oQiQ@mail.gmail.com>
Subject: [PATCH 1/4] dt-bindings: cache: sifive,ccache0: Add StarFive JH7100 compatible
To: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Cc: Conor Dooley <conor@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>
Content-Type: text/plain; charset="UTF-8"

This cache controller is also used on the StarFive JH7100 SoC.
Unfortunately it needs a quirk to work properly, so add dedicated
compatible string to be able to match it.

Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
---
 Documentation/devicetree/bindings/cache/sifive,ccache0.yaml | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/cache/sifive,ccache0.yaml
b/Documentation/devicetree/bindings/cache/sifive,ccache0.yaml
index 8a6a78e1a7ab..7e8cebe21584 100644
--- a/Documentation/devicetree/bindings/cache/sifive,ccache0.yaml
+++ b/Documentation/devicetree/bindings/cache/sifive,ccache0.yaml
@@ -38,7 +38,9 @@ properties:
               - sifive,fu740-c000-ccache
           - const: cache
       - items:
-          - const: starfive,jh7110-ccache
+          - enum:
+              - starfive,jh7100-ccache
+              - starfive,jh7110-ccache
           - const: sifive,ccache0
           - const: cache
       - items:
@@ -88,6 +90,7 @@ allOf:
           contains:
             enum:
               - sifive,fu740-c000-ccache
+              - starfive,jh7100-ccache
               - starfive,jh7110-ccache
               - microchip,mpfs-ccache

@@ -111,6 +114,7 @@ allOf:
           contains:
             enum:
               - sifive,fu740-c000-ccache
+              - starfive,jh7100-ccache
               - starfive,jh7110-ccache

     then:
-- 
2.40.1

