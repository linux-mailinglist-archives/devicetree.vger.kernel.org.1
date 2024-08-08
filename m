Return-Path: <devicetree+bounces-92042-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A2FF394BA10
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 11:50:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D2B0A1C21C91
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 09:50:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6018518B490;
	Thu,  8 Aug 2024 09:48:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GlhkdyZB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB47018A95D
	for <devicetree@vger.kernel.org>; Thu,  8 Aug 2024 09:48:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723110524; cv=none; b=i5xDWF1nOK4Gd/fuPNGOGjuvnDPxJomrumiCkLeIbVtDaoBTg936KU8pOXrSMSNwKUfZ66ajePtdsEsjvCpRlcF/+N7YA54d7yesYqDIZlqfC1NFqJ0oF/HUTmNlaEGpbl3OFR+LUukFLF4kHlcJGEYGMuKE4XcHTyTWh3gGtLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723110524; c=relaxed/simple;
	bh=2+54UKwY+6OZ3C5jMc4dxdsS1Mc8kvt9ihKClx0FaP4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=rCsy9ZuELlriC4p5UsUiOqL2Y59mi7cnCyZNZ047hetRbtryT9qWNiopVas01Vr8lhF8fsk8OalegwhI5C6XYLNxeJDSGnz8VqB16KLtUU6mNPmpFO6C2HR8cfpqPBtsXuCD8vPd9spT2TKn43obItOEL1Ia7YpPfTbHqrsWunk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GlhkdyZB; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a7aac70e30dso90329866b.1
        for <devicetree@vger.kernel.org>; Thu, 08 Aug 2024 02:48:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723110521; x=1723715321; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=98Te9XHs0b4R6F3LHWV/8NF0vam7bkosWDODD3/D7Ps=;
        b=GlhkdyZBvw1lRfp4Qu6++ng9z12kH1y9e1WSxoITClVQ/BEjwn4LTPSnA+WiM3IM/J
         +0OCVY//hmYUUmsRgKiG5jlDbtWVT2sQsK0M9Z5cKjlQVYyFGBwjFtfD+0PeVGV6SlZS
         RRvlQFjgABj717yvSuzVLZo4QKyaKFDN29vT9Yw/LTpdXQ5KFdUA0ry7O/zjs/ncwSFo
         /BaylYmTE0XL2rdeLEQVi78XsZdLCcbjI+Oexu0HdwqAUv+Z+2i+uTNzuig7bgVcrwn+
         lpzfKo1pqoNrNrHJwIwAtCV6TzqpiXxHev67Yh2O0xunDLDHwuqbxB0O2+pvzgekwwO+
         BdUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723110521; x=1723715321;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=98Te9XHs0b4R6F3LHWV/8NF0vam7bkosWDODD3/D7Ps=;
        b=rjFk9A9YxGtoUmjJyRIrfVJlZsZh0yhAbbS8GmilNX73SQ2HvJUmQ/5aVg8gRjDOZY
         UAarSc3v03ABz8WGLIELuZhygWC5TmstVpiktxwMDznYclVSAhbvpxZiKeVL/qdQ6hvS
         AhNqcezJ8QJ/WFTVojqhF4cObJ6FcxhvB0VdIqi0PUzDlA68VH5bVoyTqFE6ComqlGmD
         S3MTeCljVthT7FGlVzPiimOx9fZv7YdAMl/AksdV7C9ocf6HHvxSmvx18W1ybLh81AU4
         7Am6rZRLNrv1wpkkqEiVNt9PqCAFkM3XeHVncCQukDnZ2KMd4xQZJsS/HnlOcgqnW8VK
         62Dg==
X-Forwarded-Encrypted: i=1; AJvYcCVa01uH8cRAG8pRaWBTI7/swGCTT9MA1IQBFU7Lyt8waXx0BN9t103fccsyqSI9o8S5k73Ng8JGmYmw6sCc6/c1ZD2/nH6a+A+C1w==
X-Gm-Message-State: AOJu0YwRHnQqkaBPxktR9K5QS5N2h7jSaggWRgJp9t8aY8l+fjnAJYhv
	TYs2MbjlrT4LxTprFBSeZkiOiRYtj9xAzU3e+gHtgK9U/U2CIyYrf3Wl+EJZImQ=
X-Google-Smtp-Source: AGHT+IGqfY8r5JL1RRRnhevzOCdhhwCU4ZuoAU0iSOK3XKT0/qxz4dNOCpYyRCQcFicXUDKPwa9zOA==
X-Received: by 2002:a17:907:968c:b0:a80:7c30:a836 with SMTP id a640c23a62f3a-a8090ea38e6mr99727866b.56.1723110520996;
        Thu, 08 Aug 2024 02:48:40 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7dc9e849a0sm719911966b.186.2024.08.08.02.48.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Aug 2024 02:48:40 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Virag <virag.david003@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH v2 5/7] clk: samsung: exynos7885: Add missing MUX clocks from PLLs in CMU_TOP
Date: Thu,  8 Aug 2024 11:48:29 +0200
Message-ID: <172311048731.12963.6553046797863200801.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240806121157.479212-6-virag.david003@gmail.com>
References: <20240806121157.479212-1-virag.david003@gmail.com> <20240806121157.479212-6-virag.david003@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 06 Aug 2024 14:11:48 +0200, David Virag wrote:
> In Exynos7885 (and seemingly all modern Exynos SoCs) all PLLs have a MUX
> attached to them controlled by bit 4 in the PLL's CON0 register.
> 
> These MUXes can select between OSCCLK or the PLL's output, essentially
> making the PLL bypassable.
> 
> These weren't modeled in the driver because the vendor provided drivers
> didn't model it properly, instead setting them when updating the PMS
> values.
> 
> [...]

Applied, thanks!

[5/7] clk: samsung: exynos7885: Add missing MUX clocks from PLLs in CMU_TOP
      https://git.kernel.org/krzk/linux/c/cc9e3e375f4f2e244695040aa416d16ef6d26ddd

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

