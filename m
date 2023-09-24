Return-Path: <devicetree+bounces-2846-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F8277ACB82
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 21:02:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 1C3701F24010
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 19:02:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1B6EDDD8;
	Sun, 24 Sep 2023 19:02:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46ADAD293
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 19:02:22 +0000 (UTC)
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C552CE
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 12:02:21 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-4053d53a1bfso38739405e9.1
        for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 12:02:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695582139; x=1696186939; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5L27vyhB+29gla8F3SJpsrlKTGzHdOCjPLcg4h4ukig=;
        b=sSnBQ4XO88nc402Jpx2dQOHq16N54qiG6DBwHiUqXXyUVA5X0PaY8eRMFRDB5pGFh4
         u1qwq+xcNP8GrS/0+7cEFpTZbh6+Xy9N4cNRJo0Y7Fm2LYiEELpWLQ9WPVhLmVRT0aaW
         uI2bsoK26SaSD7SnuMIYnkWqxmX2j9JnhPy/elS2syMppnvsFs7faxPMt2Mk7xrU6OF1
         qR6cZiGHgBvk0jS7ZEk7g+R9gk5aXCcOLZF5HfCkDBUsbmL1zlie5MGCvYF/rrTIez1h
         lCnWiNiv0dK/FZl4Bc0KrM91YtbXUnC8xFuIr8jeB6hjw+MuCaLkL2GTBy4mN6ay8fOB
         ogLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695582139; x=1696186939;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5L27vyhB+29gla8F3SJpsrlKTGzHdOCjPLcg4h4ukig=;
        b=sIocGKfWzcChbvFCrK6NjhljbyjBKKuvQNxjt0oGbKER/8FL32rGd/KTI8oGHOKrA3
         r8huafLGWaImVlvBlzYsYxHRP3lDaqz8RCU6Ft0DuN3orAdA+O/Pj0Pj8yGv5vDVGFOu
         y9N7yjOO+PH9+XEpIHwfkTsj1XMD7JQYBQyn6K51hJ1rcQENdIwy3FTJNa6rliRHQS0F
         3oVFgH9wQq8tSrQy6doMu9Zr0IwoRt9MMiiwa7GLneZ2bFD37E3gsvDJ3M1DgceBxdDl
         zIvnAgvoKivpszdd3c6M3BR1eTWTMz4i8rXEbSDIGKJ2vqyWoZx/mM1VzAheInYt0wx8
         12dg==
X-Gm-Message-State: AOJu0YyjgmmQ+5i+wzdN5E08+8e4e9dO6Ng4KsCXZnoOqdZch8EhRmZt
	SVWr+SJcfsoweoL64b4KWc4VNQ==
X-Google-Smtp-Source: AGHT+IErq5Wt5aJa91F9/ZnewsJx+gdkW3B8V6qLAXXHgkuVJWQLKuUo78IbX63mkvUfQKV2Y4swOg==
X-Received: by 2002:a05:600c:2215:b0:402:e68f:888c with SMTP id z21-20020a05600c221500b00402e68f888cmr3731029wml.7.1695582139484;
        Sun, 24 Sep 2023 12:02:19 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.100])
        by smtp.gmail.com with ESMTPSA id v2-20020a1cf702000000b003feae747ff2sm12980507wmh.35.2023.09.24.12.02.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Sep 2023 12:02:19 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Avi Fishman <avifishman70@gmail.com>,
	Tomer Maimon <tmaimon77@gmail.com>,
	Tali Perry <tali.perry1@gmail.com>,
	Patrick Venture <venture@google.com>,
	Nancy Yuen <yuenn@google.com>,
	Benjamin Fair <benjaminfair@google.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	openbmc@lists.ozlabs.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] ARM: dts: nuvoton: add missing space before {
Date: Sun, 24 Sep 2023 21:02:05 +0200
Message-Id: <169558197845.54884.14770173145446066681.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230705150045.293879-1-krzysztof.kozlowski@linaro.org>
References: <20230705150045.293879-1-krzysztof.kozlowski@linaro.org>
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


On Wed, 05 Jul 2023 17:00:45 +0200, Krzysztof Kozlowski wrote:
> Add missing whitespace between node name/label and opening {.
> 
> 

Patches were waiting long enough on the lists. I assume there are no objections,
at least none were shared, and this just slipped through the cracks. I applied
to my tree for further soc pull request, but if anyone wants to take it
instead, let me know.

Applied, thanks!

[1/1] ARM: dts: nuvoton: add missing space before {
      https://git.kernel.org/krzk/linux-dt/c/73f20a373811b303fc5bd8f3d5a4c5c1582f1ba2

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

