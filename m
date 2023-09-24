Return-Path: <devicetree+bounces-2843-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A75E47ACB83
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 21:02:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id C19EF281938
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 19:02:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 795D2DDDB;
	Sun, 24 Sep 2023 19:02:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCDEDDDD5
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 19:02:18 +0000 (UTC)
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0810101
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 12:02:16 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-405524e6769so15855035e9.1
        for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 12:02:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695582135; x=1696186935; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LkF7JgVYNaY5OfViOj6lUqtAlSrtAIr1kCOY4nY7GD0=;
        b=Y1GgWnz7gOJ126NUP7iyeG6mQlwLczFe4/W2XBdGOhPh0AGimZ3tVFq3wY918MgAm5
         TZhiXestE8mZi6PXgk9bFJYoEApA7p/AXkWpNrmgzuKo7hA5cNELCC2pdPVkevAzlhlA
         As4DsePH7Q8lZJHL1amdLDaYWS8lenphj1ROnl6t5dBP2YCR3gcyRUFUinAVl/MJD8ct
         WPluLcN4N13jAdzda62ZXH2wBjpWVcBGnn5uZjECdYetn1K14OsFgU1WmqTYx+uJQroM
         FHGwsUYHxMNrdMOMQ+6Rm8TEoy5GKKoidulN/h9X8ribKuxf7SivT/3VvCEARLC5qqai
         kOFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695582135; x=1696186935;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LkF7JgVYNaY5OfViOj6lUqtAlSrtAIr1kCOY4nY7GD0=;
        b=RD2RAEubQqaA4uX954HvHHwKUCyQXTdZ0GzmA10km8K6drN4XPWUvQtQyrlUlzCZsP
         JNq8bgMXesyn1KHMOlEyfWjqeykznon5z5M1C1VG+douXv/y6VktKa93bTz8XQoBMs7h
         3IRz3FysaicuKqZOdX55nkaynAcb1Wof6U8HqvuFGnvkaZKyQXHrBdgZthMAtJBe4yei
         YSVdZciFUI4bPwhVh9UaAo20I8Nps+PmQXXhO3vw/pnpaWGOyfkUn8sJuQBLVLrk3pUv
         7uGYPE9TmQBXUyVC4lVtkcIbP4BuQQD6Zr51Amo57ZOZu1QdPeOLWH+Wh+51XnpdizXF
         srZw==
X-Gm-Message-State: AOJu0YxtV718hVU7QMd1Po6CXGYZ1midg085wyFjf5z3OXFCvTuA3/sV
	idFuXCW9aGoT7pIcSmbDogYIZQ==
X-Google-Smtp-Source: AGHT+IE1uI85L56oHH3QPSVU9vJPlnkEum73fpvA3cHNbJ8go10pyPAVzK9pV7nUNt+Ki07fuKSNvw==
X-Received: by 2002:a05:600c:364b:b0:3fe:d67d:5040 with SMTP id y11-20020a05600c364b00b003fed67d5040mr6265372wmq.5.1695582135387;
        Sun, 24 Sep 2023 12:02:15 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.100])
        by smtp.gmail.com with ESMTPSA id v2-20020a1cf702000000b003feae747ff2sm12980507wmh.35.2023.09.24.12.02.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Sep 2023 12:02:14 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Khuong Dinh <khuong@os.amperecomputing.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] arm64: dts: apm: add missing space before {
Date: Sun, 24 Sep 2023 21:02:02 +0200
Message-Id: <169558197844.54884.8026582954120562930.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230705145934.293487-1-krzysztof.kozlowski@linaro.org>
References: <20230705145934.293487-1-krzysztof.kozlowski@linaro.org>
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


On Wed, 05 Jul 2023 16:59:34 +0200, Krzysztof Kozlowski wrote:
> Add missing whitespace between node name/label and opening {.
> 
> 

Patches were waiting long enough on the lists. I assume there are no objections,
at least none were shared, and this just slipped through the cracks. I applied
to my tree for further soc pull request, but if anyone wants to take it
instead, let me know.

Applied, thanks!

[1/1] arm64: dts: apm: add missing space before {
      https://git.kernel.org/krzk/linux-dt/c/05521ef09891dfd0e0dbc0b37fcca0f15174e60e

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

