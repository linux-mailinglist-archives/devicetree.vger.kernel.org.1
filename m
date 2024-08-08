Return-Path: <devicetree+bounces-92041-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 19CD894BA0C
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 11:49:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C691A1F2128B
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 09:49:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3253818B472;
	Thu,  8 Aug 2024 09:48:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eVE3oVBC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3637B18A6C9
	for <devicetree@vger.kernel.org>; Thu,  8 Aug 2024 09:48:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723110523; cv=none; b=hFgFlk3ki4e0RbOlEfLJSjhQuOVSIfvbDdvRSxGGQI5YMiqIjLyFwoI4k7mEjSOUIhhpo1CzIgFfTjK4fLelYDhlq0RtZl1tPwvDzsJNzGozVBCh6C6SvXe8sqE4KXkZ5E+G4o03h1JSeWQHDuKlmmMU9Hd1EGHckFQFn4HW1J0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723110523; c=relaxed/simple;
	bh=T+zH2BgTs6Nf9Od4NpzImwUSRTMC/ptukpQbdQB4pis=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ETqp2JVSGatbbYU3q9f48BG8h9w7Gqd/SdDB6aBID7P57AX2BLDizhR05WzHeEkRfgg8cHCrBW//RtugvkUvflhsA7bbuVMfn8BTr1hFoOyi8v+fY5B0mQgZLO5UkglGrnDCv+uVb4umDaToXPcY8kbvUhErIMM8cPxB6uSIVjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eVE3oVBC; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a7a9a7af0d0so93436466b.3
        for <devicetree@vger.kernel.org>; Thu, 08 Aug 2024 02:48:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723110519; x=1723715319; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L5ZPOCd2ys4aq2QG+W66XIhWJ3hLTGW0abklTxDzsPk=;
        b=eVE3oVBCedTbPFsDAx0PtxVRDkNHRDzNdu2ARfckCDjAleuMG8wv+f+KRmrbr7rcGK
         91ATy2PGEc0tr7SD0Q+1IMA6QRZqaaptY7bGAjgka9rAKucao/0ZsOhFDweoajW3aJJo
         Izw21jKdCRwqQZYnzu0YmVpu0FQo492y5fcU7OXZPxt31Vl2unIRYl4pkWsa3BaEXzZP
         HIjGhm/8Wtqf//SXLybI2ZAHcTrKN9X/5/om9vixkoPff7sGbysd3FS0ysGgaAs9apD9
         LzQlUXjCht6X2nj1qaDaywFb6xZIEpIZhJqplmdOKDTRrPt9xmewG1EVMeAp53HaeZf9
         HLeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723110519; x=1723715319;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L5ZPOCd2ys4aq2QG+W66XIhWJ3hLTGW0abklTxDzsPk=;
        b=HDAzmFLOwqE4hPapGOzH3PcE7XQaLKdCkB7qKf1I1/CDo4s7ebxry6tLlPuFENWJbo
         m8xEPj2oaWUGzGgIunvCW1qhY9qItWi+B8WaNTpQj6bzmdxPd0fVYEUZ1+1ukKdpGnB2
         cmYgLSulkSORlhzzuFdHFEf4VlIdfFUXwPu5WAdgG8FSZxBZa/fTGN9/RuvWVhmpB3T1
         /AvR1K7S+21yhlEEEVe6wee3So+Qk+f6bU7gXrXHxiTVThgdTTBYfTSzpgXsM7MuGGBF
         YkPs1OuHdPKUnJCjUrq0uVa2RIRpXJwSvIgGAM6BYQF9RuK3YtvXlKpLslE7iYqH/dGj
         Nx8g==
X-Forwarded-Encrypted: i=1; AJvYcCXSCgAEh6mt+I2jzczjTdBRTtMgzRTfSg3a2EnUZDRXc8SAsRvAXFvCwo8TTx0WilWrrRUgDRE1/qwMlqz7gtnV92txCRKdQQkh7A==
X-Gm-Message-State: AOJu0YzvBR88y/k4kinOwsmY8V5XaQjXIxleiQPWLkU1JmAWlsHa0hX6
	mXT4Ah0SyBlJr3vpqiDbQe/ol3bm6ISdUdG1+iMuUAa6b11Wk9oV02k3eftJXI4=
X-Google-Smtp-Source: AGHT+IHIAfemOxK3Z14hz1PDOFK8L359QZw/rvItiO3sxRls0UpGZVwKzIX8CSey6QGV/gcesGqHtw==
X-Received: by 2002:a17:907:5c7:b0:a72:8c15:c73e with SMTP id a640c23a62f3a-a8090eac7a2mr93527566b.55.1723110519508;
        Thu, 08 Aug 2024 02:48:39 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7dc9e849a0sm719911966b.186.2024.08.08.02.48.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Aug 2024 02:48:38 -0700 (PDT)
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
Subject: Re: (subset) [PATCH v2 4/7] clk: samsung: exynos7885: Update CLKS_NR_FSYS after bindings fix
Date: Thu,  8 Aug 2024 11:48:28 +0200
Message-ID: <172311048731.12963.13183436852631483399.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240806121157.479212-5-virag.david003@gmail.com>
References: <20240806121157.479212-1-virag.david003@gmail.com> <20240806121157.479212-5-virag.david003@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 06 Aug 2024 14:11:47 +0200, David Virag wrote:
> Update CLKS_NR_FSYS to the proper value after a fix in DT bindings.
> This should always be the last clock in a CMU + 1.
> 
> 

Applied, thanks!

[4/7] clk: samsung: exynos7885: Update CLKS_NR_FSYS after bindings fix
      https://git.kernel.org/krzk/linux/c/217a5f23c290c349ceaa37a6f2c014ad4c2d5759

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

