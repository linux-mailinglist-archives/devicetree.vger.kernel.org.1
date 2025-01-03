Return-Path: <devicetree+bounces-135425-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BCE2A00ED4
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 21:33:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E781218849C4
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 20:33:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CD6B1B6CF5;
	Fri,  3 Jan 2025 20:33:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="nbbpLkP0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A691A1534FB
	for <devicetree@vger.kernel.org>; Fri,  3 Jan 2025 20:33:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735936409; cv=none; b=Iy2+UecsNBcPGXqCjYrtdaW/g47X81RIHyjHAfCGszMB9y6E10eojzq+pll9l6fsiMOzbvBTLsHKGqdrliS1jN3Fop6G/QzQNsqpyMUk2gw5p0ODQCneOQK2V5DVaAzmPYj3DOxCgbvrGvExfhAxeCk2OEjtRRP8pgM8Zs97wiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735936409; c=relaxed/simple;
	bh=7qvijtl+uci1QxvkfrmlTk5KGNt25E9ZXoOhhCGy028=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=VSq47SJuDflFhxU+OzF4AtCTav87RPWXtFqr3snn4P36Du1OVk1JEkvzLlIYXvFSD3KRnXjnBkNGqaVGkIICfbv8dKAR3pASK+Kv4hTilSCUG8ywAoevijoAH7L5o4iNf6o5m+ReCIzZdl0RjeNsSCbVd2LvSXFivd8Z9jltifs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=nbbpLkP0; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-436637e8c8dso128076805e9.1
        for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 12:33:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1735936406; x=1736541206; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yDgRWvkZidrljBmoxcEC6CZzIdEjYR3sC/Gp8v8NalQ=;
        b=nbbpLkP0HWML1zo+59qklhc8Div7/r+Z/R4A1PMAVZa6qmacoNxNAkOHaVSIeybTJ/
         SrdR4BXL/m+XbXzg+khuwG9BKyfskvjPn4aTGcTwC9IT6SSAvu3dr8DqgqdEwXRpn8ia
         18JR9083F3iIHMy8Nr6HCpIj0Vp79fQHTJTwAU11yYV4ZsNkoQ6tzLkz9/RFh13iIUzn
         Va0OTv2IuKkv5FuQzHJWBKJJuCj9TN3ypHVjKfLpOPTj7HLsMl9hMb/ZLXvJ/qRFMeB6
         /ll3oNrufQYL6WV/DUqyicbwsr9P5RxvLEZEtUtIaHQcjkZL84QpZv47Izf0dIpw4NYb
         kKMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735936406; x=1736541206;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yDgRWvkZidrljBmoxcEC6CZzIdEjYR3sC/Gp8v8NalQ=;
        b=F7p5Ew/QW5EisYM9ygenvMnF3uRmwTk1+cVD1byB3L6UDLZrTxRafIjpen/YnrdrN9
         JTTg9gbwcCSTDIlp4BLHd1ayZ8ZwW7W0z7T3jDFtTSmMczDmPuMOwVQ8FPPteZEqA3BB
         dzpGF7ZSISSEI+zoAW4/mEeAH4+4MXDBLZfe2zUmHpyvUxTyfLt41vFCD6eiE0cX3f98
         OqCG4GUOEADuC8jVBF4I7eNlKHg5OhDkrZPPMefvpr6rCbRb3nejyqUwJ/rB6OeQXtw9
         dOslZogyQXDj3oBFmnJgGMtr7C7CPfOJ6/SO5pNujGy1fMsKCqvRkw+J47I9YZJQ2PaR
         7+Mg==
X-Forwarded-Encrypted: i=1; AJvYcCUOjfEloDOGN37p6OryicN0c/nszkd+0E87CEGfhh1Ac03K804xXs0d42gkLaNFPsIlpUiDgar2Aph6@vger.kernel.org
X-Gm-Message-State: AOJu0YwpprYh1+XZTjVMr7jSDA0jbgDaMq7tODNW7/9tu7IGxhbqDQl0
	iT4vWJphZPicMQ9X2rpuvAPKWnZWL2G9VJyXCXUl7e0sVLoh+YjK67jhquROhq8=
X-Gm-Gg: ASbGnctY5YlzUjZJ//rFRZjei1acJd9iH5WrEv1eVL+E/RD2YxpEEuIRhn4b1Q1DfxG
	1ScAoVTSebtsdsxULBqDk4TJGPh/4KlEB5zDBGIoil2keV9il3t6RBYQlTAoLngmhTCOW2vlnhO
	hfdzjQ4h40h8WnutLedCUHBQ0QYzn0wx7hlGRLt9FB+ga50Ez7bq7J4B2lOUS2++mUTVu7Ta17/
	F/k/25I68Yp5b3QpO9qdDU+fTXaelnnqthUaPDX6RNhZLxE9+aOmtvP
X-Google-Smtp-Source: AGHT+IEqSUoMnxqFYxqhi6yJB5tGf0TWJ6ZwCoPZpOBqWpxtfDLFD+pPBfNuT8BvP4lqlHvOCgft0w==
X-Received: by 2002:a05:600c:294c:b0:436:51bb:7a53 with SMTP id 5b1f17b1804b1-43668643ba9mr454975295e9.12.1735936405697;
        Fri, 03 Jan 2025 12:33:25 -0800 (PST)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:2e17:369c:dc82:262e])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43656b442dasm524414255e9.42.2025.01.03.12.33.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jan 2025 12:33:25 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Ripard <mripard@kernel.org>,
	=?UTF-8?q?J=2E=20Neusch=C3=A4fer?= <j.ne@posteo.net>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/3] gpio: 74HC595 / 74x164 shift register improvements
Date: Fri,  3 Jan 2025 21:33:23 +0100
Message-ID: <173593634037.257292.1488097273042214180.b4-ty@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241224-gpio74-v2-0-bbcf14183191@posteo.net>
References: <20241224-gpio74-v2-0-bbcf14183191@posteo.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Tue, 24 Dec 2024 09:02:09 +0100, J. Neuschäfer wrote:
> This patchset adds a compatible string for another part, and clarifies
> the role of the latch clock pin on 74x164-compatible shift registers.
> 
> 

Applied, thanks!

[1/3] dt-bindings: gpio: fairchild,74hc595: Add On Semi MC74HC595A compat
      commit: 0ba6cec7acbb666d28998780683deb83a3e677e3
[2/3] gpio: 74x164: Add On Semi MC74HC595A compat
      commit: b1468db9d865deb5271c9a20d05201b1c0636895
[3/3] dt-bindings: gpio: fairchild,74hc595: Document chip select vs. latch clock
      commit: b97263d14cd6400ab54f2675792b26e966e41168

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

