Return-Path: <devicetree+bounces-24519-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A942580F6E8
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 20:39:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6386A281FA9
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 19:39:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E544B52771;
	Tue, 12 Dec 2023 19:39:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AcVreaZH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C776DB
	for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 11:39:32 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-40c55872d80so4577545e9.1
        for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 11:39:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702409971; x=1703014771; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FbsTXFKXTrY5tLa2ITZ+RhWD1cGIYo+QvwAZu2caETo=;
        b=AcVreaZHp4zOY1JXfxcrmD4ag+g8Io1IhgxSy8CGSzyuIy3824HR33vkfvvTct2NT6
         iC3x6VIyUnA2B1HZNvHP4qImnlz8ik88UfGqRB2RTY7ZsRHRQ8bLglpf++W3sTqhy5AK
         5bebs0FO+Z5tf+Xtw15wUp71WErbR6Ro2xYSNuRvzcMFQ2Wcv/ezt7ND5ooB4EMPJJYP
         DnOjYndae3HKyfypF2ruEZCHUp3oSEez04O/UMrA3OPn/1VXhnunbCGlrTT84th9Goiy
         Jcz5CNilwCMleMMr7NyF63P0FBC5OJxhap0StY6GDSes9C3IJ4XB504UdvrpBFYhHYzV
         Clog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702409971; x=1703014771;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FbsTXFKXTrY5tLa2ITZ+RhWD1cGIYo+QvwAZu2caETo=;
        b=jBoOK4FsF/+e8EHX6W9QFdFoO8jPzxAbpUcl3dXBzE4FbaP1qpfZsYhB6q729CK02a
         D7HEY4Rv6vh8mpoZzyoiguT3PEb/anMnR70J0HrCkQe+eixsJJui0dNMuRwrwO/qoHZU
         5mqft7ZAoWgmrazFJYuwXUL4fyRx8PM+7B2Gf9wnlyZgnGQCWgty2lcGzVBnIiYbq5Yi
         eGj/0cLReaTFicHEaTcY12qlGbw/gS0vjsZWC5f6iJxlA1GJkvvgu9YLsF7o1UsSqJMO
         nMmodyn7wTvS6K3sM+Wq38F7DyOfI0Ilzpa3X184LBeqQPFQ4IG9JY316dx2c5brMgWA
         TvVg==
X-Gm-Message-State: AOJu0Yzcnn4Elu4dKJ24J2c+KSkGMb8B0SXKY6okTlXJCRKhWzilZSXX
	SubNyYtVTyI7w3XhAj8I6YXXTg==
X-Google-Smtp-Source: AGHT+IECFv0mPrPqCAXunm7Vy99xWj4CTFmeC1IPksAqK1hsqYuerO0HXIHbmdgpTQzRxFSjYbcuEA==
X-Received: by 2002:a05:600c:1656:b0:40c:5822:133a with SMTP id o22-20020a05600c165600b0040c5822133amr254490wmn.69.1702409971213;
        Tue, 12 Dec 2023 11:39:31 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id i9-20020a05600c354900b003fee6e170f9sm17345530wmq.45.2023.12.12.11.39.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Dec 2023 11:39:30 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	conor+dt@kernel.org,
	sboyd@kernel.org,
	tomasz.figa@gmail.com,
	s.nawrocki@samsung.com,
	linus.walleij@linaro.org,
	wim@linux-watchdog.org,
	linux@roeck-us.net,
	catalin.marinas@arm.com,
	will@kernel.org,
	arnd@arndb.de,
	olof@lixom.net,
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	cw00.choi@samsung.com,
	alim.akhtar@samsung.com,
	Peter Griffin <peter.griffin@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	semen.protsenko@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	soc@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-watchdog@vger.kernel.org,
	kernel-team@android.com,
	linux-serial@vger.kernel.org
Subject: Re: (subset) [PATCH v7 05/16] dt-bindings: soc: samsung: usi: add google,gs101-usi compatible
Date: Tue, 12 Dec 2023 20:39:14 +0100
Message-Id: <170240988144.242356.15535258892382463057.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231211162331.435900-6-peter.griffin@linaro.org>
References: <20231211162331.435900-1-peter.griffin@linaro.org> <20231211162331.435900-6-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Mon, 11 Dec 2023 16:23:20 +0000, Peter Griffin wrote:
> Add google,gs101-usi dedicated compatible for representing USI of Google
> GS101 SoC.
> 
> 

Applied, thanks!

[05/16] dt-bindings: soc: samsung: usi: add google,gs101-usi compatible
        https://git.kernel.org/krzk/linux/c/d793f7c471fb1cc9b5cf5aee5484f4231ef48dc8

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

