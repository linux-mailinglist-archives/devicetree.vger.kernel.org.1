Return-Path: <devicetree+bounces-25821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 68524814AB0
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 15:40:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1C8501F2207D
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 14:40:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D354B374D4;
	Fri, 15 Dec 2023 14:39:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="bYyoIIIo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85A3D36AE3
	for <devicetree@vger.kernel.org>; Fri, 15 Dec 2023 14:39:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com [209.85.218.69])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 8849F3F2BD
	for <devicetree@vger.kernel.org>; Fri, 15 Dec 2023 14:39:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1702651155;
	bh=5d0QhzVl7C6w8MyPA6on/NHcmfCtxfOh1Mcdqcw1JG8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version;
	b=bYyoIIIowGXb8//aNctKmzMiKCGa/JuSam238X5sqVLTTfamCwaOp7byQroAeLf2R
	 MkGlJ1IidyBUf0UKL/XL7gLyGGutEzIjB0ko1xeZiAXQx33oBqUs5rR27H8tyN8doy
	 S56IVYdK5c3wnNaOjB0LcJXycO+UoG0vZ1Fzj3pLP0xHCmq0mBaX2F3D0CQjs6C43O
	 3caJXM2Lf1rt2UZHjwgsajr48phtYwpKLhZjWSqaWc1/rW6iNpWNCdK9y2TtTXgLLj
	 sTbi/lhNSnPO3P6PNXoDdIxyoz6pdF8CcLgyTb95wYQ7kUwH1Bb06/6zXKQ4MmSWDK
	 aMxKWbDOXELwg==
Received: by mail-ej1-f69.google.com with SMTP id a640c23a62f3a-a1d38492da7so45862066b.0
        for <devicetree@vger.kernel.org>; Fri, 15 Dec 2023 06:39:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702651155; x=1703255955;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5d0QhzVl7C6w8MyPA6on/NHcmfCtxfOh1Mcdqcw1JG8=;
        b=K0/W67qRMIMQmhqYOf6h3i/IPy6GRHjFufMrmaOll4OsApwz+VDbmDEOxpTo+LtUH5
         a9Km3oy6gzV2AShyb/yoqJaW6BuqAoNJkTqKvfafOG3xfmrcmp7xyglnR0kGhPMYGXjN
         gsfmIsPy3kG9WXk4jGECiMJMMK20US5b2zDy3UJ/RMCAAf5Fg7Ntlrvl7oOrfPJFFpu6
         70eG2mO2TcB85Ck9Za5F/hH/2NqtAG3v8Lqg2CV0KHm4FbOhWyFKK+2AFkLGHHc4SrO7
         MSPmNHlDetNz4i55wXhfV0WbpUluzosEvYHuWxmjWLnWiLGOjjCWVpcHL2R3Xrxsq/9Y
         7/ew==
X-Gm-Message-State: AOJu0YzT1BXKeEdLuz70h/BgRhaN4sRNeRG4MsBv4s7rsma7M8OayXm6
	yvAlJirX9Yk27X+G+4McEZOxtHhpHQjLnfvLnOzhy/aoYEAY0exRNahkci2aNK0efnqQW7WF1I4
	nEkrw+845wajWJi+OX78gdOt1Tk09uJH/HrNT1R0=
X-Received: by 2002:a17:907:e88:b0:a1c:ad6e:f27b with SMTP id ho8-20020a1709070e8800b00a1cad6ef27bmr3397171ejc.78.1702651154976;
        Fri, 15 Dec 2023 06:39:14 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEhb7PhCXQlTmlO8Dr2ltcQSzgklP4jZY0/NHHCOpfEFcHKcRabJYeTEWK6MtrnQyFAiYLIWg==
X-Received: by 2002:a17:907:e88:b0:a1c:ad6e:f27b with SMTP id ho8-20020a1709070e8800b00a1cad6ef27bmr3397152ejc.78.1702651154724;
        Fri, 15 Dec 2023 06:39:14 -0800 (PST)
Received: from stitch.. ([152.115.213.158])
        by smtp.gmail.com with ESMTPSA id tm6-20020a170907c38600b00a1db955c809sm10789122ejc.73.2023.12.15.06.39.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Dec 2023 06:39:14 -0800 (PST)
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
To: linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Cc: Hoan Tran <hoan@os.amperecomputing.com>,
	Serge Semin <fancer.lancer@gmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Andy Shevchenko <andy@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jisheng Zhang <jszhang@kernel.org>,
	Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>
Subject: [PATCH v1 4/8] dt-bindings: gpio: dwapb: allow gpio-ranges
Date: Fri, 15 Dec 2023 15:39:02 +0100
Message-Id: <20231215143906.3651122-5-emil.renner.berthing@canonical.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231215143906.3651122-1-emil.renner.berthing@canonical.com>
References: <20231215143906.3651122-1-emil.renner.berthing@canonical.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Allow the generic gpio-ranges property so GPIOs can be mapped to their
corresponding pin. This way control of GPIO on pins that are already used
by other peripherals can be denied and basic pinconf can be done on pin
controllers that support it.

Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
---
 Documentation/devicetree/bindings/gpio/snps,dw-apb-gpio.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpio/snps,dw-apb-gpio.yaml b/Documentation/devicetree/bindings/gpio/snps,dw-apb-gpio.yaml
index eefe7b345286..ab2afc0e4153 100644
--- a/Documentation/devicetree/bindings/gpio/snps,dw-apb-gpio.yaml
+++ b/Documentation/devicetree/bindings/gpio/snps,dw-apb-gpio.yaml
@@ -65,6 +65,8 @@ patternProperties:
         minItems: 1
         maxItems: 32
 
+      gpio-ranges: true
+
       ngpios:
         default: 32
         minimum: 1
-- 
2.40.1


