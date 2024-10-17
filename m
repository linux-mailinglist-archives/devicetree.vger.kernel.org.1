Return-Path: <devicetree+bounces-112361-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 434EB9A1E3C
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 11:26:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0788E280E8F
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 09:26:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F37A1D8A14;
	Thu, 17 Oct 2024 09:26:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lFbfvjzu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D66E1D89F7
	for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 09:26:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729157177; cv=none; b=iDECkTDV0ZcfFWK/moXtfOW/B+/mYoJMOqRB7DjSqmPtVAs1m9wohWybnjxjEbNf3Rt/skHq6wrCVYNvxq9N/ie64vdUE0kzQxIvGqD4RBfmHhoZCyxLUnmozgo+aUSy7t8COkrtWs/7wa5UF131DSxGuySTr4BHYYzcV1R39iM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729157177; c=relaxed/simple;
	bh=3LziUkpGNIhFW55U6jvI4l+L7hcBt5ps7U1v7+ZnWE8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ntHR08Empl7GqWOwpLHOw75JN4dXzvCN3zLym2CkVQwHbI/WW4h11o73aaLLPK1ChGPRyErYE8R30vHB30LKnPaJSB6jRPUllGNwe2v4PODt9Ww1pKRJrzjDBIBtHBkJVIj2ihSzvOYqR7SB/iI2fyd5kSapia4tDRNFo/kPTw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lFbfvjzu; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-37d4ee8d15aso82400f8f.2
        for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 02:26:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729157171; x=1729761971; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WKRTLaQgO/TM93Yyvkgu4VGnv97Xsi7IUB1bI/d1ppA=;
        b=lFbfvjzud7AeNEtMf07QbfItFsdr2hictm+jwqLUD/roLUfLzqsKH54d35ZcZFW7jm
         SugSo2+I7PpSc/6YAR/CojrFHGyc9uARbvFH1h7HzYXPZX4jAGhKvYgfPqdkrSxIDNDi
         UItMhZYmGrBsZo0N7oBa1WpB8SrEC5guZjHcCG2d2DXHH0yB/OJBnlrQ1M+XE28yc5/r
         7t4gp6Fpy7r55KeZmxP9joHQk8hUTT/hDwmh3tFYSZWOqt7YeYYyRXBGvIicrY0/dAAz
         mtQEO/F8X7AVGTIk4Tu8OEbQ7wwjkeoOr8PQilwtDCV0TeAsjllHuPd1xKHC6Iz8QAhc
         a7FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729157171; x=1729761971;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WKRTLaQgO/TM93Yyvkgu4VGnv97Xsi7IUB1bI/d1ppA=;
        b=HM2OSdiax1Acxm/hQgnz4wEXc/wjLotZsGDW27fXbOn3eci1MVYoWjgwXeBJiYJjwO
         X6itOUCV2+fMlOE+9SzbEot3Gs8oCt3NA2HslOVbvrzSvf6YFMAqwI3HbQ9LDKKh2iHG
         xdN12BjFoxNvz5EEojUwYuT6Z45jR3IDx+W4Hu/ocj/3JczBw0NVDYUou0+ZsXYbjeFY
         U/GgN4JxoqKljj+/XWSAeKI5vxxFIYFQcGWjYja2AjTw3dvT1v5TPUYdiKryOmMHGyx9
         abzH5uYSbXoZZjUOeNvq7hh++O+pH6BnsOPlI5D2QevIrQXWi2VMIQ/AmnCp+IPA3Vpe
         BQJg==
X-Forwarded-Encrypted: i=1; AJvYcCVwMMDf2fiJFm4sGhmzmZKGjeEFYY86ns3A1FhmNtFsUzT154k2g5F/DqQZ+FhLRnNxjrkHgIwA/C12@vger.kernel.org
X-Gm-Message-State: AOJu0YwOmfHt7t25oJRt5VlaYJ0pPBk+pckPpSV/eFP6zH/z3o8pOzlB
	w3fwCYzUnB4SsOycbs6zUiIEz8sLkkuKluJ9ejZJv2yJuwCYKPfzNaJ0H6EgU5I=
X-Google-Smtp-Source: AGHT+IH+1FFMQXSkaxdSxuGBb7V+JV0JImK9YzOxutCNXeTuZ9qFf9RlGrNqx2QrK3J03IFumUdDeg==
X-Received: by 2002:a05:6000:4024:b0:37d:50a3:f34d with SMTP id ffacd0b85a97d-37d9322e239mr801272f8f.0.1729157171549;
        Thu, 17 Oct 2024 02:26:11 -0700 (PDT)
Received: from krzk-bin.. ([178.197.211.167])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d7fa7a173sm6612920f8f.15.2024.10.17.02.26.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Oct 2024 02:26:11 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Igor Belwon <igor.belwon@mentallysanemainliners.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-gpio@vger.kernel.org
Subject: Re: (subset) [PATCH v3 2/3] dt-bindings: pinctrl: samsung: add exynos990-wakeup-eint compatible
Date: Thu, 17 Oct 2024 11:26:08 +0200
Message-ID: <172915712848.42336.1934974031781144072.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241016154838.64515-3-igor.belwon@mentallysanemainliners.org>
References: <20241016154838.64515-1-igor.belwon@mentallysanemainliners.org> <20241016154838.64515-3-igor.belwon@mentallysanemainliners.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 16 Oct 2024 17:48:37 +0200, Igor Belwon wrote:
> Add a dedicated compatible for the exynos990-wakeup-eint node.
> This SoC pin controller does not mux interrupts. It's compatible with
> Exynos 850's node, while also being compatible with the Exynos7
> fallback.
> 
> 

Applied, thanks!

[2/3] dt-bindings: pinctrl: samsung: add exynos990-wakeup-eint compatible
      https://git.kernel.org/pinctrl/samsung/c/e690012f4f924f4ef4e105427b04ea3d496c6a38

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

