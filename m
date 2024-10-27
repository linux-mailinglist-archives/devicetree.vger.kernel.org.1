Return-Path: <devicetree+bounces-116177-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E6C8E9B202D
	for <lists+devicetree@lfdr.de>; Sun, 27 Oct 2024 21:03:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 965121F21DFD
	for <lists+devicetree@lfdr.de>; Sun, 27 Oct 2024 20:03:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0DBA1865F6;
	Sun, 27 Oct 2024 20:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mh54FvPq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD94B183CA7
	for <devicetree@vger.kernel.org>; Sun, 27 Oct 2024 20:02:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730059374; cv=none; b=ErZ+N0eFL2y7b+qlvxtqHhUlIZCM3v1soflbLz+JUYNAIxaEDns+lnow9//GxBsuL823tlXPLU+QXmtJypEjI/L27RT9yzu9tozAqhEd7om+azYGRykWpNqN//mJr9w6DakOCdbe1lEn6SNd865eEYzhvGcZRI26+WmqEduvIDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730059374; c=relaxed/simple;
	bh=svMue+EYeRchsIpK4aOH8zOjqs/J7vIUaWNOqgA4Es0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=TKgrxu5a8rB6/yHbzrXMQM0LQ4+AcRkWsUEPNwPxYOQVln/TK5m9WPfueD3gzG81wU6QEQ1abf0H71iAO4JEJ/aYTup+6ahuftIk6RCPxgRg5KvyVRs6jZA7Jha4z9aQFYr6wmYiGxnCfsPtyhXroaOmF4h9JShAPshpEcvXFg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mh54FvPq; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-43158124a54so4227725e9.3
        for <devicetree@vger.kernel.org>; Sun, 27 Oct 2024 13:02:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730059370; x=1730664170; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kLTmMIJID3AGFwWG59EcP60iKJtkbZG1LGkHeuiSGE4=;
        b=mh54FvPqCzWX5pdlUd4QlQHYieqsV5GcGDOT7Q7p41F/1n04gEtBJAPkiJ4tBhwxal
         tZDKsSihEWDldokUrI6Nj0iGddB47MLSk6G5NL8tfTSZ+bIh1BEzvL70rL7xjl6/5JcH
         No8F+6GRSC7v/L/7736Ja4EYTpOs/nmTa4ktx2fDJR+DlKmZGpiOW2imIXjrmynWG9zy
         ephSNcEdv/qgvg56d3coGf8sfvhyRSNkvjmloU9w488rfRDs2HigluQPGfFgfqyFCkZ0
         yBAbBj0s81izryTrMMlPXiRghas1OtbKkhB/LrlFRYcpan+4LlKhMIL1KdEWD9TyGbeN
         WYSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730059370; x=1730664170;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kLTmMIJID3AGFwWG59EcP60iKJtkbZG1LGkHeuiSGE4=;
        b=L9it85sQ3bYWaO9KYBTvgB+LLBjovMBrbFK2tCuZFyophHKU5OYILSBN9CXqaFrv7P
         ow7S1ks1LidyohCPrAhICjt0lK23DQhj5Vouwqn83tjKmh134hEe6bceyFMA+gHopfxW
         ITujGqyThqtDoxh3qWaYWQqoPncbsLExg4tH0hhrl15zGdboUsE29b0Ju0Z4VcLZj/Qj
         +kSkor1MHVV5mIfgJc+y9r8HwTRRNnT5w9VP/0RAc9FJx1olYckHUEUPXp+7sNxRK6qh
         rF/VrZg8TdxhaupnqC/lqbVQw06/PeWhUnyKL/kDJTSlUYX61hP87yLgsC66TWNtJSX8
         5oKw==
X-Gm-Message-State: AOJu0YwE0f5uVK9UOk1+r8bcNIwywp4X8qEgMHBRI0sypdzK/nqJyrMH
	UkWfOEmQZVe0Y7UZtriyY0hHjJrNTZFKNh9BX85ntGE/UGs3ynBBNppEs7hU1VU=
X-Google-Smtp-Source: AGHT+IGFy5ReZ4pQxsghQ3Q5SAkMg3xbszhbMlXqP7CNsuS41wn845lvrqrdk2cF6zHoSJqbcmaS0Q==
X-Received: by 2002:a05:600c:35ca:b0:42c:bfd6:9d2f with SMTP id 5b1f17b1804b1-4319ac6f88amr19362195e9.1.1730059370093;
        Sun, 27 Oct 2024 13:02:50 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.211.167])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38058b70d50sm7526833f8f.76.2024.10.27.13.02.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Oct 2024 13:02:49 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Tomasz Figa <tomasz.figa@gmail.com>, Will Deacon <will@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, 
 Markuss Broks <markuss.broks@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-gpio@vger.kernel.org, 
 Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>, 
 Maksym Holovach <nergzd@nergzd723.xyz>
In-Reply-To: <20241026-exynos9810-v3-3-b89de9441ea8@gmail.com>
References: <20241026-exynos9810-v3-0-b89de9441ea8@gmail.com>
 <20241026-exynos9810-v3-3-b89de9441ea8@gmail.com>
Subject: Re: (subset) [PATCH v3 03/10] dt-bindings: pinctrl: samsung: Add
 compatible for Exynos9810 SoC
Message-Id: <173005936806.12757.10682268420257045105.b4-ty@linaro.org>
Date: Sun, 27 Oct 2024 21:02:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Sat, 26 Oct 2024 23:32:34 +0300, Markuss Broks wrote:
> Add a compatible for Samsung Exynos9810 pinctrl block to the schema.
> Exynos9810 has 9 total pin banks and it's similar to other Samsung
> SoC pinctrl blocks.
> 
> 

Applied, thanks!

[03/10] dt-bindings: pinctrl: samsung: Add compatible for Exynos9810 SoC
        https://git.kernel.org/pinctrl/samsung/c/47c3309d58b5e6fd3fc425253491c1ce014538c0

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


