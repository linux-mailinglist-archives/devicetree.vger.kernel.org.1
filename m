Return-Path: <devicetree+bounces-92038-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A400194B9FC
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 11:48:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 09145281EDE
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 09:48:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2936189F32;
	Thu,  8 Aug 2024 09:48:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="skKLWAmh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D791A1442FB
	for <devicetree@vger.kernel.org>; Thu,  8 Aug 2024 09:48:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723110517; cv=none; b=NRS64yLD7srxdYUdHOo6am6XVflbLr1pRnVqv5ZVEmPQG7d+DCBYECy+UE+nSrDDV9hAEK89uESd6I0GdDRerEyEyfGNe2zQWxmkZqUNZCOm+tjfP2FDlzcA5Zw+wwODYUT0lC/J+0H2IJglPcWHhLErSvW5bRTeFmEuARahsaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723110517; c=relaxed/simple;
	bh=Oz/4FlxMMsehe7Ce7PmjbmGoqd8fGJ0XyCfS5Cq97YA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=K3/3gQW7sr6yeEXz6ytQWSZFmdlm25FPlEKV+WqpP1LVDMOoL2l+BeSyJ7CLwJ+qE8PePPXuaoWJHqjHP0Af74HqLvBjjyEiGiE2dFW+bfd6uzti7KVVhaoub5pjliyACvOIO76OZS10DX4cbxz8clH7/gteC5N7oZiVr039iD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=skKLWAmh; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a7ab76558a9so113233666b.1
        for <devicetree@vger.kernel.org>; Thu, 08 Aug 2024 02:48:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723110514; x=1723715314; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fD4Fbo0bLU0vBdFevb+9sQ5UqHYLrq4vOipE19dCblo=;
        b=skKLWAmhLk5POTtwZQ7hRsw9SNTCYJ2yZ5NpfEhxgTcw1mWeT7OK72VwIhGYbGSk7V
         KU18HBq8WppB5iKxZD0ZCnRWu2sqR38NJbf5L9LthiDZzHaNBWcRgB8PVvQ6bvPPMA7/
         iJjJxAmbmwtqpa/ur0f8mXZ6rELcQE3b1AdbzUy8Klqvur3+AqaVPzPS+JD5UgGWfxfL
         cAxm1unZJOJgMsi5DDuYR9dujC2TklzY1C9pAWm+2aHo73ZDkGINBfUzFmbnUr4ouQ3F
         2bBszitgZXcgaS9WG0Brt1GR75Rw8v4eDkEe66wiqwqP5J/In2BaC6gbcJSMvjuKPRCL
         HN0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723110514; x=1723715314;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fD4Fbo0bLU0vBdFevb+9sQ5UqHYLrq4vOipE19dCblo=;
        b=PKdWujHI/RiAzAeRo3mlxzmNlg+QeF9BPgSap4IGWQCge3GukCJVeLqa8MurhrLSCJ
         sLfEwXZCXLzYSDvrFDQlSFf0bKH9kCd2a878kkeWSTK222/3KjLwB0mz2UedHButMtaE
         x2E+MDYjdniL79ExZmQWbGTinfwlsarjM4KCBd+dXl66fPK6P9Q9H5MQvON8AsIPx5YB
         VKglgBWT1m9VJvDxMSlbBV0s3tJRrePYyn2kee3HPXsfNPssz4+n5e3/hb/18UJvDy2c
         f6ApCKaMw7ET/IRtqQ0UTBYd7xNWVzHpkEQmfaKZrJ++p/GRY6DjhZH/JTgLT8+2i2ME
         Pktw==
X-Forwarded-Encrypted: i=1; AJvYcCXSPQ/t86LsyuPaXS/5Xole5S2XUJ/d5LK3UcE5C5BdP2PLuV6jqxRxkM2MOF2DyvIf2hVTglvR/2jvGLbGj9Ro1v0c9n4Gy/+GNQ==
X-Gm-Message-State: AOJu0YyAXdO4qphvOgFHTVruTItJDFe54/uyad/B25JhFSvMtiaAvKC/
	4NVNALRnO4JCaISo0cQjWM2AYyXNzeObdSmJDnYdyXJp7ioGcpQ7oAxtHaKNf+k=
X-Google-Smtp-Source: AGHT+IFJgY0IwRIPW1jKkuP1Rul52UIi5cW5qomgars0dlYdYtx6uT0furoQPy4Yo+tQkmj7tqJo2Q==
X-Received: by 2002:a17:907:3da3:b0:a73:9037:fdf5 with SMTP id a640c23a62f3a-a8091ed1fecmr91422366b.6.1723110514125;
        Thu, 08 Aug 2024 02:48:34 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7dc9e849a0sm719911966b.186.2024.08.08.02.48.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Aug 2024 02:48:33 -0700 (PDT)
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
	stable@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH v2 1/7] dt-bindings: clock: exynos7885: Fix duplicated binding
Date: Thu,  8 Aug 2024 11:48:25 +0200
Message-ID: <172311048730.12963.13971450848126539088.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240806121157.479212-2-virag.david003@gmail.com>
References: <20240806121157.479212-1-virag.david003@gmail.com> <20240806121157.479212-2-virag.david003@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 06 Aug 2024 14:11:44 +0200, David Virag wrote:
> The numbering in Exynos7885's FSYS CMU bindings has 4 duplicated by
> accident, with the rest of the bindings continuing with 5.
> 
> Fix this by moving CLK_MOUT_FSYS_USB30DRD_USER to the end as 11.
> 
> Since CLK_MOUT_FSYS_USB30DRD_USER is not used in any device tree as of
> now, and there are no other clocks affected (maybe apart from
> CLK_MOUT_FSYS_MMC_SDIO_USER which the number was shared with, also not
> used in a device tree), this is the least impactful way to solve this
> problem.
> 
> [...]

Applied, thanks!

[1/7] dt-bindings: clock: exynos7885: Fix duplicated binding
      https://git.kernel.org/krzk/linux/c/abf3a3ea9acb5c886c8729191a670744ecd42024

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

