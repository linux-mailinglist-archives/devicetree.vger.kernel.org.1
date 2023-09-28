Return-Path: <devicetree+bounces-4045-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 270167B123F
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 07:55:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id A412A2820B8
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 05:55:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83AEA18626;
	Thu, 28 Sep 2023 05:55:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5377618623
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 05:55:04 +0000 (UTC)
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78DFB122
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 22:55:01 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-99bdcade7fbso1545469266b.1
        for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 22:55:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695880500; x=1696485300; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=54qiU08t2GpO/MWMIDTzBVyjApX/CcNuywPfrqlHKm4=;
        b=dJJZ4Guq+CFyIZwye+WyoJz8yQA22E8NlyN7hLBGCCtKxxhthNm843CeRamKazmdlb
         pKlwy6K6kRaw4TkqO3W66slIQgoVI8khOQGNLxCgnC7K17JVgy9rbJCNJhzUfmOJGVVa
         koPzX/scSfQf0RNyrkG87kL8/TTI5Hf9fm4/nJb89c080ZfZB3eSfFoUNDCRSq+oMytH
         KqQteGlx70HTxuQFtF7kecnrRcHCbk+RLxQsYHvkSuvaMdtsGsNx8ZnqQj8QWz+TF74/
         e7DbmPr0vY2UGPmkhz+RAcrSdBEyO7TI3m9vTHQ3cKiVhqMhcK/m1Zu3FSm+HCCGBS7C
         LiDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695880500; x=1696485300;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=54qiU08t2GpO/MWMIDTzBVyjApX/CcNuywPfrqlHKm4=;
        b=D3ol9mXle0Fnx1FedL8mlgOgSuoDrl5rsGFLR74MdPCYvfurrLou+zYXCo/To33uBE
         YkAR7X6w/hPlYphKR4aGo9tVhbgeFF1sZM1TCbhfrW4cXV3KO4a5tWoA6C/JY6eqvCKC
         kkjFpPKShxYYEaZ0R1flzSwHbeAcw6k3S45q7ocQB2wR+RkJHsIP/KSdc6xRkLibHsQ9
         npUZ+cVDX/T4pHpGWvV7mBYALgXdtZNJEAVUtZSN+hHSalWNANsxnh4ySkaih9W2TdNW
         M191azSttxSbH1jrbCZedw0dKcNY71MC5GFVKOnV5q9TDXuZuklH3TAf+f1cbhZ4aIIV
         x72A==
X-Gm-Message-State: AOJu0YwX+UGO8L1erFLSrHYhLHotuVuJyFMFi0XGdEZD3ugipujSeGOJ
	vmRhVtz1gQ5ezr+aHHTs7Ap3IA==
X-Google-Smtp-Source: AGHT+IEzM4GVvXhhGjAdh17D1G62ZiQP9XY8Q28w1XdHkASHmuCPrX5v/hiOPIopi46147BEe3T8Hg==
X-Received: by 2002:a17:906:769a:b0:9b2:982e:339a with SMTP id o26-20020a170906769a00b009b2982e339amr259099ejm.22.1695880499957;
        Wed, 27 Sep 2023 22:54:59 -0700 (PDT)
Received: from krzk-bin.homenet.telecomitalia.it (host-87-4-82-94.retail.telecomitalia.it. [87.4.82.94])
        by smtp.gmail.com with ESMTPSA id k17-20020a170906681100b00992b50fbbe9sm10355749ejr.90.2023.09.27.22.54.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Sep 2023 22:54:59 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Paul Cercueil <paul@crapouillou.net>,
	Sergei Shtylyov <sergei.shtylyov@gmail.com>,
	Tony Lindgren <tony@atomide.com>,
	Roger Quadros <rogerq@kernel.org>,
	Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: memory-controllers: Make "additionalProperties: true" explicit
Date: Thu, 28 Sep 2023 07:54:53 +0200
Message-Id: <169588049053.10364.12898939958860054639.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230925212626.1974676-1-robh@kernel.org>
References: <20230925212626.1974676-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


On Mon, 25 Sep 2023 16:26:21 -0500, Rob Herring wrote:
> Make it explicit that child nodes have additional properties and the
> child node schema is not complete. The complete schemas are applied
> separately based the compatible strings.
> 
> 

Applied, thanks!

[1/1] dt-bindings: memory-controllers: Make "additionalProperties: true" explicit
      https://git.kernel.org/krzk/linux-mem-ctrl/c/387bb6fdd0af1f853deeb1cdd8331c07b6a66b32

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

