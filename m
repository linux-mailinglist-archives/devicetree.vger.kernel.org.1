Return-Path: <devicetree+bounces-106375-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C7148989E5C
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 11:32:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EFF051C22705
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 09:32:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DF7818872F;
	Mon, 30 Sep 2024 09:31:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="1mlAyy9d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE3A9188587
	for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 09:31:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727688702; cv=none; b=Tr+44uHXvKZTBcY+MMrJjGWBF1lyUB8Lm6JHmOmbIcFjEVKGxLpYMSTZm4fMecNTtu8740APGuf0zedo6Z8ebkvvYRQXlitZbwrkEMscq3wpfkE8GrHM+6P7wumtJ23R2vX1qAjxxLAaYtDFt8vOCNx6vxGXUgwKdr+JL6oJCng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727688702; c=relaxed/simple;
	bh=pQqea1cs7+qg74Lz/hGv4IeluB9zMEXXxVL9wZhlP4E=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Pl1FUv4dJ8+YjYxIQc0iL6KzBcVJICvQ3oq9vvA1VBYhow2LltiWpUh7zCub3ONEEPKgYNsXHCWGbysZnt3I2PGQcl6LlEgPM1B65r+sAHzp5iHrUc/rdFjaBjDuVLsnoYVoasUN923q+VA0EiCpJr6+sh8gwqOuQjVsl93rv2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=1mlAyy9d; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-42ca4e0299eso33101505e9.2
        for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 02:31:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1727688698; x=1728293498; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LwF53HfMvlXuhOmi8Jap57yZA7y1v6ek9XyMVgwuNQY=;
        b=1mlAyy9d+hZdS9NzKTBOqdhByMtK7hnYU8FWzRAsbyN1OY2ZUd1FfplyZvFDL73TPW
         wwLCGbIwnt+b8JDxZN4KD5xQ885jD/2+ftQUo5SArMsZZDEPrAu2SAGdmLYHDtlNdi3u
         EWPGqCp0tDkCFxLCqmImJzw8NeNJsTX42n6GROyLLAfGjyGbNhQVaNmOKL8+1n+SUbnF
         hO5w42OEnw2uDdl/jTRmzYQ6cf4y6ViPrSfAQg4S/xzJWNpbFs608EDv7FIthh8Mp1mq
         89/HbMr0IslPYz87KKPKrHg3VwQ2yE3t04HflHJ0lm9vOxXhTVD6ZIFWlANkw8pFMdr/
         DSYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727688698; x=1728293498;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LwF53HfMvlXuhOmi8Jap57yZA7y1v6ek9XyMVgwuNQY=;
        b=QN2LEqeUDl8pZH1XZCHq3zDnLA2jAXtoytDtei3EjvJtSMbUjXhDyNrxNPvnXcz+Q1
         5wPe4JLb0+6Xjg736A2ExNoBN0MAxQFObt4TqmVpUzJ4febtzQSJj/0kM1slRnNXDwu6
         BUi+yt1LlfQdEhCEHJIkAOInQq5MXJFDw2/z58nFg3VunNpjldrooV690lHv6mVPq/uZ
         0PGtEzzX65IzTRkM1VfwPE30dTYl97v8WjwNyZowP4KQ0fM84GU6cthMQLdtysd62Uwp
         PrKyUblKZ11wg4dGlBNVUnB0EF8akJz1WM3RwYjvDM/lZq9KvgrTLbxkEAzxdUsiR7yu
         VE5A==
X-Forwarded-Encrypted: i=1; AJvYcCVODp9/TgYkAfuuxhnqEcMuXbBBG4xr70VKyjAyuDpGEp/zU+430CHM1dwyth9fCOYKWgmSgd4wV/Jy@vger.kernel.org
X-Gm-Message-State: AOJu0YzlV61mxQKIwwd9AkuVjXtxP5RYHoOM3DEglk+vDWHm8C82h8tN
	Wr+ER3u5TeujZxrKTDhkNHS5hVSm2kHgTUoWwV22+cpXX94fjXDZ0/htp1iQPSQ=
X-Google-Smtp-Source: AGHT+IHzoe6B9tw2TkIPiu3wQYEMqRU3r49tMqeybrJ5X9qmi6lref0ezf3DDmzQDmXsOhKwsOO//g==
X-Received: by 2002:a05:600c:1e17:b0:42b:a88f:f872 with SMTP id 5b1f17b1804b1-42f584993aamr81370595e9.32.1727688698185;
        Mon, 30 Sep 2024 02:31:38 -0700 (PDT)
Received: from toaster.baylibre.com ([2a01:e0a:3c5:5fb1:b6ba:bab:ced3:2667])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-42e96a521f3sm145603465e9.40.2024.09.30.02.31.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Sep 2024 02:31:37 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20240911-topic-amlogic-arm32-upstream-bindings-fixes-convert-meson8-clkc-v1-1-e0b8623c090d@linaro.org>
References: <20240911-topic-amlogic-arm32-upstream-bindings-fixes-convert-meson8-clkc-v1-1-e0b8623c090d@linaro.org>
Subject: Re: [PATCH] dt-bindings: clock: convert amlogic,meson8b-clkc.txt
 to dtschema
Message-Id: <172768869708.21792.17420534128069202977.b4-ty@baylibre.com>
Date: Mon, 30 Sep 2024 11:31:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.1

Applied to clk-meson (clk-meson-next), thanks!

[1/1] dt-bindings: clock: convert amlogic,meson8b-clkc.txt to dtschema
      https://github.com/BayLibre/clk-meson/commit/6bac1ffa9ca4

Best regards,
--
Jerome


