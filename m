Return-Path: <devicetree+bounces-23712-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 74E4B80C1FF
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 08:36:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EB8EEB20957
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 07:36:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEC8C20310;
	Mon, 11 Dec 2023 07:36:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BLCdW7ef"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09A95F2
	for <devicetree@vger.kernel.org>; Sun, 10 Dec 2023 23:36:25 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-40c0e7b8a9bso53913255e9.3
        for <devicetree@vger.kernel.org>; Sun, 10 Dec 2023 23:36:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702280183; x=1702884983; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2YHBWFSpjhw0+JPItFiuftFwl12od6x19Q3Kp1H3E6I=;
        b=BLCdW7efF2tjpduz+TWYaE9woLpNDYKcrX2wH+l9JJAYZ/rdYKH2CPjyRTJl6TYke/
         eM7OwIYX7IVqwmND0ZRtX8cBrvrVaBcv5h41sto8GK/d5UfLXLmc3qt5EiUf+bd550jm
         DVT/DpRY+IJRagODb2tGkGJSWqHTx731HO+KmJERi+aebPqiaEOAUOyFuWunzVrZJeCb
         YdwxJBWfW8lqcNqSr3LkPQCU297oQSFteHAByRHCdQe41TetOBSTrWNJCBIPqjmnh04D
         v7tL/J0yE8sCu2kUzCjr/GQtHSXIlfigyY61o71goOldx8JaH+kIsTViHDY3V3nEINcV
         mBgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702280183; x=1702884983;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2YHBWFSpjhw0+JPItFiuftFwl12od6x19Q3Kp1H3E6I=;
        b=PvqVLxOMBAP4FiUe5g8qUvLGST+rMi3jg6GkQyQ1lom1kruUzanWdTboaX5f6zhquQ
         jw7/ZzpTVzGPeB+7ImDlPaZsxGc5rW1kd2BBs3w4dPswgVzUoOnlxShlChxSsQ8DaBn1
         L8PslDb/T7ItkNNHNmIWkuemdsnIhtAltruLhZUAapASFSqu5fKOas6GFLggqLwcSWU6
         EkvCoTnrelLQYskBgtTwhv4ksM6kvrmmPCPM8vGyEmlTYyXKkB0LYlEoLalhTXC4iNqN
         brf9adrnECqkxScAr1X+/qzeBiVK9qKrj23JoBD+bRQG25GIsYm6TE23Rc4xfyK840OA
         RHVQ==
X-Gm-Message-State: AOJu0YwHbNdf8odmDeC5XV4S6p7+jXXLnjb1pSvvonkMzjjJhw+xvfse
	GGKu+Mfg5mHMs/ap7y5pmmXM5A==
X-Google-Smtp-Source: AGHT+IHK1+dJ3/6VbSmAjUHE3obgzLfsu3H2LPctpshzkB4sycS+dJ6werIvZjF7MuQxeZLkp64tiw==
X-Received: by 2002:a05:600c:2289:b0:40c:317b:79f0 with SMTP id 9-20020a05600c228900b0040c317b79f0mr2120989wmf.140.1702280183340;
        Sun, 10 Dec 2023 23:36:23 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id s10-20020a05600c45ca00b0040c3dcc36e6sm7700311wmo.47.2023.12.10.23.36.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Dec 2023 23:36:22 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Tomasz Figa <tomasz.figa@gmail.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jaewon Kim <jaewon02.kim@samsung.com>, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20231210133915.42112-1-krzysztof.kozlowski@linaro.org>
References: <20231210133915.42112-1-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] dt-bindings: pinctrl: samsung: correct ExynosAutov920
 wake-up compatibles
Message-Id: <170228018218.6375.7978493220422861783.b4-ty@linaro.org>
Date: Mon, 11 Dec 2023 08:36:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3


On Sun, 10 Dec 2023 14:39:15 +0100, Krzysztof Kozlowski wrote:
> ExynosAutov920 SoC wake-up pin controller has different register layout
> than Exynos7, thus it should not be marked as compatible.  Neither DTS
> nor Linux driver was merged yet, so the change does not impact ABI.
> 
> 

Applied, thanks!

[1/1] dt-bindings: pinctrl: samsung: correct ExynosAutov920 wake-up compatibles
      https://git.kernel.org/pinctrl/samsung/c/e1564d6f93496bcea3a6b2110eb54cc08f2aca72

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


