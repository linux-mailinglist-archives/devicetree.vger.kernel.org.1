Return-Path: <devicetree+bounces-24517-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4961980F6D3
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 20:39:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7795A1C20B33
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 19:39:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D661D5275F;
	Tue, 12 Dec 2023 19:39:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KjIIFB/l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D073E9
	for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 11:39:26 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-40c1e3ea2f2so61204895e9.2
        for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 11:39:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702409965; x=1703014765; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fzatjt4r0YJeTezf0VgwrU2TmLicfYhSYlspY5uEu3k=;
        b=KjIIFB/la4MtWxibPv4m7qimINy3xneZAk+kVP0PEm/B/jgPIiWRUox8JBrJjPodWx
         8wkuDdIMOL0rVEDNQazdxpPG3T7BKmJ2awyqkZjwzvMLr5KqGl1FOSnfTS2K4SLOQTvy
         /8tpXRjPFFy6W1GFlFloE8ANa8P3iSZ7YqFFukVby7j6RyHWA/aErULWG/ZOC+I8z6G7
         EpEiIAhDDnK0+4I13ea7HNJATMEcPchFlRgGYrF8KrHoUW5XaQx04IpdSPnl6RywCukz
         6Bkzbvlt6USP5uVridUxX2EZEkOXHlcInSo1s9Eu7yTOAH4IK+gBDHNE046ZH3JU38Rg
         nf8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702409965; x=1703014765;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fzatjt4r0YJeTezf0VgwrU2TmLicfYhSYlspY5uEu3k=;
        b=J7Pilr04ww6Ck0y75u2FboEEw0CQIPVdfdkukzKz5DnH1HrnVs127cwLS5BKlbEpyj
         h6WSmO654tHIQfoQZkX77fldb52JSx/2O3jJDGx8h2yhrtJySh2mEFtIJw4FHuza/js5
         nS2rCMcZd6zx3vt3R6Su5+TDMz/zLBkivvpj/LgRziwNUbMXBRAUZ5JVNbqHfeYHvRre
         REYcIZ7bixoHJX/X1fsCX5vkzqInY5wprfarpVni+A2Gv4fEJpKNdn78bQYqkW7nZ3qV
         /D3TcSIMXmaU2CQSrcLOuYFtuN9B+FIKw1QwfvxOfCLRgg8gkBrINtKv/vVM/8lBkFFe
         YAfg==
X-Gm-Message-State: AOJu0Yz1YXRSCq5iC0+R0vrKjjJdMuAlo4muLtVMkWWe+V4XFnjZytNI
	je+eQRnbzS2bayBUam76h91zqg==
X-Google-Smtp-Source: AGHT+IExqguIxesNEgHsaolxmotlLbzMQysC3FbvqaGIWeGrARbpAWQMYBHhwo+guartnGUfkSkRuA==
X-Received: by 2002:a05:600c:1393:b0:40c:4b43:d98e with SMTP id u19-20020a05600c139300b0040c4b43d98emr1834457wmf.84.1702409965061;
        Tue, 12 Dec 2023 11:39:25 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id i9-20020a05600c354900b003fee6e170f9sm17345530wmq.45.2023.12.12.11.39.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Dec 2023 11:39:24 -0800 (PST)
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
Subject: Re: (subset) [PATCH v7 03/16] dt-bindings: serial: samsung: Add google-gs101-uart compatible
Date: Tue, 12 Dec 2023 20:39:12 +0100
Message-Id: <170240988143.242356.7915762427739298874.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231211162331.435900-4-peter.griffin@linaro.org>
References: <20231211162331.435900-1-peter.griffin@linaro.org> <20231211162331.435900-4-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Mon, 11 Dec 2023 16:23:18 +0000, Peter Griffin wrote:
> Add dedicated google-gs101-uart compatible to the dt-schema for
> representing uart of the Google Tensor gs101 SoC.
> 
> 

Applied, thanks!

[03/16] dt-bindings: serial: samsung: Add google-gs101-uart compatible
        https://git.kernel.org/krzk/linux/c/bad3bc0a23b74e7b353978b6f58eed6c0f3b51a0

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

