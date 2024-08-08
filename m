Return-Path: <devicetree+bounces-92039-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 281C094BA01
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 11:49:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C22751F22549
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 09:49:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 979A7189F5D;
	Thu,  8 Aug 2024 09:48:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FRxeQddw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FDC4189F27
	for <devicetree@vger.kernel.org>; Thu,  8 Aug 2024 09:48:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723110519; cv=none; b=a05sClxeElp/I9Z7jkpzNC4TMnps4v1VJ+yq3XXxQENYC07NNkO+RoWk4bJdcHOFtu1+nSDcmPt4Aa4H1DhMG1ZTmN/05IMK1cf4I2LWWhRJS8U38cEjtXBrEL2FvaXOqttjQJKX6R2/tY63DIYk3BBeCxYKgx1BrztKeE0sVR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723110519; c=relaxed/simple;
	bh=t4Oi6qrhhn59SzTgCUimyxAUyoyLx7ZjHE7Smpgi1Wc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=fF86tL28XQX6A4iU+r/374Dw+ZgqMngOCA4mKsvGeDHVl4R27Zc3DWK5FMANqxJuy5V49UO/mcTFs4SBXKXKS85H4S9+Exr+vYDg1HXknAG371RFohO9RZH9pvw4WRvRHOxyzfX9Mu2S1RtsCnlciAqn318lVnaCs2Evd9aRaI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FRxeQddw; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5af6a1afa7bso872565a12.1
        for <devicetree@vger.kernel.org>; Thu, 08 Aug 2024 02:48:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723110516; x=1723715316; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XTXsOp2Q2opTktrwF5DF7pgCqzg6HCRDQctoBjhR6tk=;
        b=FRxeQddwVbqWOW+u4SFetDSrpWXuf3dnjFmETwobPf+DaVuMkNQDFIrQpHxN0myNJU
         rGJwvn/DIkeUaexE8kJBzyTB0w1wX44NtPZFbQMln/ZSfu484EkeclOBkr8COgJZ1r3D
         /hAX+2klHbdHApL4qlbfcmd+jX5Cu+Liq0haecav2JPdxCJSPwQIRnAX30mFIHx37Gir
         Ju0jh81NnB21dI51cioCCzD55eq1bsOb2VJGAdO1l+L/VsJ7190E+mfnc3NW7eZKlQXq
         TPha6zoVJZy5muczJ/ZopcT7Il2xYSmUZH75USyyTGVVi1minM6lXjI106CmwwrKCGaY
         5Nrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723110516; x=1723715316;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XTXsOp2Q2opTktrwF5DF7pgCqzg6HCRDQctoBjhR6tk=;
        b=AtZ31YV5fE/jiYPcBeZ79I4GHj0pE2ZCyvnUOD+vc4Lj8RAn8Oo5JFfazhU7MlHhE/
         kCXujMpiHRD2+bDYIokdKJQqRJ8bhke8NMtn926xzrIObBA8bzvR77/FyLVr3rMGqfXx
         GacLaIfA0wc1KqMZ6PRPxCkaVelTbNt9Rd9fHGZJG4F51kPKN/fZuSfi/4c0AELfqW5y
         /2jFxfCSdWl6iWwnsxmgkE3KZhJ+wlVN125hhAMjazePxV6xdZhNPX19UMRvueFZiHsG
         G7Qj7s7JaeiLQONdq6lm1t1jxEJrwoZ4LEuUjKJLjkKo9wh2R6w5gXg7ulUkT3GsmUf4
         podQ==
X-Forwarded-Encrypted: i=1; AJvYcCWJwT8XpW10FLuNVuiFiumX6CR/sbOJ3npFOyxLBzQZEdxP5eS5gf6p5AoAJtQ7ciHRNP3AAXpldICH0ekXxEy0hVPR1psBCBAuhg==
X-Gm-Message-State: AOJu0YxgOvAt0ima1xPQfRTSnhKxuZ0O4MYxEo3Oymh4Iwy5uELXiySV
	J0Zxtyhe9fyBWkZgDmkgPN6Xqfrexrz5UTaNSzmFGXy8I6uEGmV11qgEHMQT05s=
X-Google-Smtp-Source: AGHT+IF3xoL+kb9I8cnpq9kAoMaPYR5z6cI5EjyOnhfkzCaXFnxM87pPrTSXdTQKrmq9f9JMKookJw==
X-Received: by 2002:a17:907:f788:b0:a7d:a29e:5c33 with SMTP id a640c23a62f3a-a8090d7d46cmr92028466b.28.1723110515904;
        Thu, 08 Aug 2024 02:48:35 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7dc9e849a0sm719911966b.186.2024.08.08.02.48.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Aug 2024 02:48:35 -0700 (PDT)
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
Subject: Re: (subset) [PATCH v2 2/7] dt-bindings: clock: exynos7885: Add CMU_TOP PLL MUX indices
Date: Thu,  8 Aug 2024 11:48:26 +0200
Message-ID: <172311048731.12963.10299933550707027039.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240806121157.479212-3-virag.david003@gmail.com>
References: <20240806121157.479212-1-virag.david003@gmail.com> <20240806121157.479212-3-virag.david003@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 06 Aug 2024 14:11:45 +0200, David Virag wrote:
> Add indices for missing MUX clocks from PLLs in CMU_TOP.
> 
> 

Applied, thanks!

[2/7] dt-bindings: clock: exynos7885: Add CMU_TOP PLL MUX indices
      https://git.kernel.org/krzk/linux/c/59baa83e30f82b74b4c7dc07c20eac9899b6c0c6

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

