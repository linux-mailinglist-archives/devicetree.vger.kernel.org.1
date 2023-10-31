Return-Path: <devicetree+bounces-13211-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CB3177DCED8
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 15:15:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0771E1C20C12
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 14:15:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29CFD1DDFC;
	Tue, 31 Oct 2023 14:15:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="Vjy1LLO9"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B55D1DDF6
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 14:15:02 +0000 (UTC)
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7F54C1
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 07:15:00 -0700 (PDT)
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com [209.85.218.69])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id D841340822
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1698761693;
	bh=K+d8FOi611qgqDiSGAqowSPHYlSjp+mGUPNXtAF6OWs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version;
	b=Vjy1LLO9xUSCgh0u2jA4PTzzPU+X87yOCqzdD8lE6uurXofu7IU84F0FmNwdYM+Ve
	 LJK+ocPW8VkV+pxqt+jo9LKOEkHf4d9ltAuEo96iJV0plhN9BOjfnF/Ni6aV5Roexj
	 iot3JjB7v0p8g9j7oeJ1ltdvjNv0rUTQPGwCpgTxnjWwbzLjnayMkY7n02fKQ2bt87
	 SvbwR9Esklg3hMlhPVyjPu1ols5hSDDGO/sL/19Xmk3lUolYQRgZr6WJ/hCQQkMDN4
	 QAvsKh6GNbnFS8sHc7tlQcXX2WWSHgeMiZCTtNYrg6Z/kWHoFRLyriIh79JX8j6yvC
	 NQ7/N2srjplAA==
Received: by mail-ej1-f69.google.com with SMTP id a640c23a62f3a-9d216597f5fso205330166b.1
        for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 07:14:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698761689; x=1699366489;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K+d8FOi611qgqDiSGAqowSPHYlSjp+mGUPNXtAF6OWs=;
        b=qlNssC2ZraBPL30cveNYhkFl5PPMk0Urto5VIeu2udyxKYjw1gYmaCfnFaRjnv/voz
         n03dAIXPwt+zY1IapyB2a87K2zgDQpPWrKE5fWBdUDst4pbA13qsT7Wcduwjt3ReXYU9
         0iXw9TEy6Qu6m5QZMMzjZnbiPF/kQIyYsYTcJIZnhdel7ziF+aAI0qSpmoxMvSu8MT73
         Ps7+BVeHZ/blu3+HosTsAECN/NgdTOwqqDenGKnM1Z6jXsqFB+5FtbuM2UrohX4rQlUk
         2qbgPB9hrJXiT9VmmE6yHAEk3VmF8y5renkLGq3vzbGy7DzqJsHGMsLQ/kPJsnXfqRlM
         8pOA==
X-Gm-Message-State: AOJu0YyUFQaK+w8+tx/p9o4hhzEL53n5arGGzJfLDUSmYslevp/kp8O0
	DEQXbGp83IpwT8zEK4YcOsG2fJ2EGSzY9TeGTZiS0bc0024VaOjjlShS1lFxZAojLiupq5zrdG2
	Skry4nnSUvNAYsDy6vUlsgzNdLx+mlHelzyExinY=
X-Received: by 2002:a17:906:ee8c:b0:9bd:dfaa:3f3 with SMTP id wt12-20020a170906ee8c00b009bddfaa03f3mr11080305ejb.7.1698761688984;
        Tue, 31 Oct 2023 07:14:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFkm4eTftMYL/pLkJ6rc17J8JPzS7UGZtP1W0Jm3fINC348oTDOAtfZqM1Xw64GNQBGyCSGeA==
X-Received: by 2002:a17:906:ee8c:b0:9bd:dfaa:3f3 with SMTP id wt12-20020a170906ee8c00b009bddfaa03f3mr11080294ejb.7.1698761688788;
        Tue, 31 Oct 2023 07:14:48 -0700 (PDT)
Received: from stitch.. ([2a02:aa7:4003:190e:bd47:7b6e:876:4bdc])
        by smtp.gmail.com with ESMTPSA id p5-20020a1709061b4500b009d23e00a90esm1037395ejg.24.2023.10.31.07.14.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Oct 2023 07:14:48 -0700 (PDT)
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
To: linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Conor Dooley <conor@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: [PATCH v2 1/2] dt-bindings: cache: sifive,ccache0: Add StarFive JH7100 compatible
Date: Tue, 31 Oct 2023 15:14:43 +0100
Message-Id: <20231031141444.53426-2-emil.renner.berthing@canonical.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231031141444.53426-1-emil.renner.berthing@canonical.com>
References: <20231031141444.53426-1-emil.renner.berthing@canonical.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This cache controller is also used on the StarFive JH7100 SoC.
Unfortunately it needs a quirk to work properly, so add dedicated
compatible string to be able to match it.

Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
---
 Documentation/devicetree/bindings/cache/sifive,ccache0.yaml | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/cache/sifive,ccache0.yaml b/Documentation/devicetree/bindings/cache/sifive,ccache0.yaml
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


