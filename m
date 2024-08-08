Return-Path: <devicetree+bounces-92040-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AB48B94BA08
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 11:49:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4BF4E1F21459
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 09:49:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 720DF18A6DD;
	Thu,  8 Aug 2024 09:48:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xEzB7Yfy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C5FB189F59
	for <devicetree@vger.kernel.org>; Thu,  8 Aug 2024 09:48:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723110521; cv=none; b=SPeZj/p+9EJ7Q5+BUHXKumB6HxTpIxGEa9lYfoCEw+UGICSnMzrliOQhSYoU5S8WrWeC/aMG2I06QhwtxZJ0o4V5OjlzGw6T2pM/W7b7irSJJWT7WACIuk5kNmYJhiPQQ8ULALqdCs+jGdTqQXwNFS7RWXMW3VIvIKdCbzB6eNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723110521; c=relaxed/simple;
	bh=tYgAmU1dlhccZqcNUyi27/tGhXE4LKclbQYuSvQ45g8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=NqlWvLw9ZioReOhzalVHihI/jScgFnQfix9vjT4k1tbfixnLfoxJEfAeizcr1KFhbs3IRMzRtUUpGwRltBkPqm8Fd8J3j7oknFqLnyWiefTErzyltMrEVyVdDj22r0JzH8Rzj9QHmNZFEjnITMnSdCr28aNTllkrx0rRVYdjKb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xEzB7Yfy; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-52efd08e6d9so861106e87.1
        for <devicetree@vger.kernel.org>; Thu, 08 Aug 2024 02:48:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723110517; x=1723715317; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C0BJ7RL6i1hu6kypPK6EZLbNRGROSmLUvIQdzrrc9Vg=;
        b=xEzB7YfyAbCtOqfasdMK2mPr80KUiiXnpFiotnk9HDQ6VP5PyeTljYrK5Akw3gAwlE
         kryC/TFtVfBVcBDqeqCJdafQDkdNmUwLFyZYGLUFFEzpjmHI6REcVtwBcWt13pDkEo4G
         tNU7mPTGL1eOzGParZqzHcW3lGJcl/6MO3D966Jx3RYUDwsDN84fFkiEQRfyzi493LIJ
         FdeGAGM+qjh7Qp5w4LdR3oRoGtPbeMzY89EkmAH9EWSy6efDiIOF77ixjCZWB+LSbebk
         Kv29DpXo2JpleLx1J4Cpy70GprnzaylYsapCCIF4dR7CP+l4YpOJ78zLHhCIMubEEkYh
         eyXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723110517; x=1723715317;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C0BJ7RL6i1hu6kypPK6EZLbNRGROSmLUvIQdzrrc9Vg=;
        b=KpLPJq48qhzs+X/t8uKur+mQOqGqjBGDAlpZeucmGV4R/R3DHk8OSTKZYFcO0jVPFW
         rVppHFP9jbV9SBnuuORDvi5hQZ+sHLyEUJpx/ORPt/SVYmU7c0I8+XoyZTkl8y7796O6
         bLOzOmkiMQs3rJ0iMk7NO5vWxIP+KgdhednkrrznU7DhLbqKcU2fJNbkl0nXn6z7sEJn
         mZXwLiAI/tdaR0x5Ltl3tFE7ivVI8qTcn1DU+utv/HzYhaqGhP2UOQ2PuduzScgCdKqN
         eg1LE4eC9h/Aon3UWEFXpEK6kobAD8zQ6kJqw+Aic6mlM9aiMXCeVZdGkuEzpzKCYO29
         +ifw==
X-Forwarded-Encrypted: i=1; AJvYcCUbXIgXaaGPNgCjl4BGRWKMtaWbPKEAWo4Hi78GwLDjXD8d5+5lYms4NoNu35k1RhgXTyocZgVYvG67jCf92pDu2eEaM7h4/nN2TA==
X-Gm-Message-State: AOJu0Yw6csU2kh8nbjV/h975qQKSuoxd0WxrRsZx2dN6FrKEiezoQGct
	SBzz9Zz0CtTU0Y9PFbePpPFiio1GfpxUQHN78zO7gsLW92+7kKhZ1rVCRpT9gQQ=
X-Google-Smtp-Source: AGHT+IF4YjK8zrHFMoWt/gQTkh4LphPSnVEM0mvSyWZxJgihuSSukPuWz2bZ7wqSvD6BqPRZW734cA==
X-Received: by 2002:a05:6512:3f04:b0:52e:9b92:4990 with SMTP id 2adb3069b0e04-530e584527cmr1083412e87.32.1723110517476;
        Thu, 08 Aug 2024 02:48:37 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7dc9e849a0sm719911966b.186.2024.08.08.02.48.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Aug 2024 02:48:36 -0700 (PDT)
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
Subject: Re: (subset) [PATCH v2 3/7] dt-bindings: clock: exynos7885: Add indices for USB clocks
Date: Thu,  8 Aug 2024 11:48:27 +0200
Message-ID: <172311048731.12963.1935261580196077122.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240806121157.479212-4-virag.david003@gmail.com>
References: <20240806121157.479212-1-virag.david003@gmail.com> <20240806121157.479212-4-virag.david003@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 06 Aug 2024 14:11:46 +0200, David Virag wrote:
> Exynos7885 SoC has a DWC3 USB Controller with Exynos USB PHY which in
> theory supports USB3 SuperSpeed, but is only used as USB2 in all known
> devices.
> 
> These, of course, need some clocks.
> Add indices for these clocks.
> 
> [...]

Applied, thanks!

[3/7] dt-bindings: clock: exynos7885: Add indices for USB clocks
      https://git.kernel.org/krzk/linux/c/b9dee49cc6f9efa97eee059d03b704dec0f45658

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

