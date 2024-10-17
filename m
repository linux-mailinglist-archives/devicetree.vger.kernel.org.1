Return-Path: <devicetree+bounces-112308-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 60E759A1C24
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 09:58:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 07A951F25FC4
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 07:58:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65A0A1D0DF7;
	Thu, 17 Oct 2024 07:57:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zQwCDJDv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99D801D0E03
	for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 07:57:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729151867; cv=none; b=e6H/+KBtvOvukWqUieGQAIJCvH+ewJra9Ad2E8FuB1JS1Pn8r72NJ3Mo4joHNb1Shx2DdttFGoRtNcyMQCzDaY0k4Zv5REi1MXLJxO1hWIvNYIcbWkX03RetITVgsZ4ZUTVBlg1MH/aCXBJc/1CZa8o4dq+B2NYiO0L+oKKs/SQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729151867; c=relaxed/simple;
	bh=sMESluCjwuh1gF1SzEYV45WLJoo9UZr9n+8BurAg5No=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=VoFJw+CIAn2dn/zhoSDCE+wahDZtRlyfVqzuih5X5dp6oJu12n++SrKvVa5tfzVS/xNIff+FUPJUaYDyC3di5V1TfXhf32HeyngBM5HM++noJbzj3MJD+7LIVIYuOu2vK5MBINlW0P9mR1UkWU41nMZiccoCga5UPw2MBu3VQn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zQwCDJDv; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a966de2f4d3so5536166b.2
        for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 00:57:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729151861; x=1729756661; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T3wcQ4UPqj+L4/ONxDndjC37MjWRBQ1/xZ/WSL2iWGk=;
        b=zQwCDJDvpW+lXZb9oNu9b+cmL4jbZWP+US/AREVeYJpyHPUcfpHYhHCYL0HKHhQWiU
         D1Ez9J2GCvX0S0ST7FBWRravZCpxrUWx4z9Gd+89y78Zd93aSxtOyllFz/REKACEQuaR
         ry3oe1u5RQrZNBezmhXn4gioFVA27rU1wruhDm8RX16avtlUimzk1qSUVgBehXtAGWh+
         fssw5LcNDM8pZQa9lSq+ZQCHStDsX5/q61QKERQ4uQrfZCvFSx7KzBbYUsjRBvlWKuR9
         VOQDO+dC+7kDJWshKlmtz09w6zuC2lM46ch2KE5hfkKWLfAQV8nhrlVaOoXpI8DDX41S
         4giQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729151861; x=1729756661;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T3wcQ4UPqj+L4/ONxDndjC37MjWRBQ1/xZ/WSL2iWGk=;
        b=oKxr7+ZaOf0cuGz9UDjt8Cu4cvToMTyGLQ+aaF9L0OFCyv4mSdFTiZ8NXwm192dI3Q
         FeU5H4YnUYizpiacEF1Tyg/e40xNtJSOlgBOqnwC2ppJusw5XxLX3okxIapzmZaQnbZX
         ZoFZyxuM7xj+lT1FuQMZUuXDCRKPiTyDQAFZ3hk89r1Noaw9AUP+zvG3cyEXiob20kbn
         o0OtMYabBw66aBnQMWvQ3p4lfoEMR7+lcXfWJYWrnBXrjqPtvXNBO7vg4zix0OUb7vMY
         NA1ehpcCEVNxDi9vvVZ5ARrSVVEESwcX/05A8GUIPa5epBTmFj4QhIu69aiw9vofR7Wr
         2kzA==
X-Forwarded-Encrypted: i=1; AJvYcCUP91lIx0t845ma+puZPkC4XXnmhArgZFvQ+WrPvz2Ld6VDN8rlOLnM6lJ43iLqUg+GLVX9TMiPWNtV@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6xi4J4DVJR50P8dcco5RpkOyTceA0fgfQFJhyVSegOm+rwT+9
	N7Ks71LRQLTKD2as6bsBGfMzVD9owWzZm/IJpexIRMSrDRa+6HbiCVB3gXDZ6Lo=
X-Google-Smtp-Source: AGHT+IHKHAcEv/+f4PokOR4xx0bHsIFvt0eimGI41fc1yyadCLLPNQYZdDiO4KeD55QJq3KgowcpyQ==
X-Received: by 2002:a17:907:980e:b0:a99:63d8:a1d7 with SMTP id a640c23a62f3a-a9a3b242aa6mr212217766b.3.1729151860735;
        Thu, 17 Oct 2024 00:57:40 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.211.167])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9a2974a49asm260165766b.89.2024.10.17.00.57.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Oct 2024 00:57:39 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Igor Belwon <igor.belwon@mentallysanemainliners.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-gpio@vger.kernel.org
In-Reply-To: <20241016154838.64515-1-igor.belwon@mentallysanemainliners.org>
References: <20241016154838.64515-1-igor.belwon@mentallysanemainliners.org>
Subject: Re: [PATCH v3 0/3] Add Exynos990 pinctrl drivers
Message-Id: <172915185885.16570.9895535622578273627.b4-ty@linaro.org>
Date: Thu, 17 Oct 2024 09:57:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Wed, 16 Oct 2024 17:48:35 +0200, Igor Belwon wrote:
> This series adds support for the pinctrl driver for the Exynos 990 SoC.
> The pinctrl bank types are the same as in the Exynos 850 chip.
> 
> Changes in v3:
>  - Reword cover letter (remove chipid mentions)
>  - Rewrite message of commit <cbc4242192b7> ("add exynos990-wakeup-eint
>  compatible")
>  - Move device tree changes to SoC bringup commit.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: pinctrl: samsung: Add exynos990-pinctrl compatible
      https://git.kernel.org/pinctrl/samsung/c/5b653cb60275e1ad1a85f0d056a3084c4635623c
[2/3] dt-bindings: pinctrl: samsung: add exynos990-wakeup-eint compatible
      https://git.kernel.org/pinctrl/samsung/c/e690012f4f924f4ef4e105427b04ea3d496c6a38
[3/3] pinctrl: samsung: Add Exynos 990 SoC pinctrl configuration
      https://git.kernel.org/pinctrl/samsung/c/2193074458dee3c4382c023740d86578db050bd8

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


