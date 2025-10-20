Return-Path: <devicetree+bounces-228615-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B48DABEF886
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 08:56:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 64C7F4E4DF9
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 06:55:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AAB22D9EE5;
	Mon, 20 Oct 2025 06:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="s3C7y5ti"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D48D12D46DA
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 06:55:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760943354; cv=none; b=L02JN8Dwswx4GLiYJDY17UEFQjtLTZcgLKtw5D9AAFEEi1RlELxaSadIfBCvXmCEGtAuoeNvkydMZGbeLWxyL7y4qH6c8CxisII1CLWlTWzIgd94siJkTGMv0D6sMiV69+7Lp4g0HQfBIs5WBMLl/UfyN/QFUeBZy+aN/kxC/Mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760943354; c=relaxed/simple;
	bh=IKZ1q6LfIYFaUJY0dyFQno0dTQoazdrIq/AGAGI3qVc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=QkV2RREuu4FDKOxvvRzb1K6vgDDUqpWwVNoS4RL7zGaIGdU5YLN4BrW/Kx6vkk25osOFjSHcrETUL8NLHPwPiB+YIElFJsrDPiy3G2bVWByBxCewDIhyvXCi0oVblawEFFkz/iCL7OPav/DWiyVIOg7zGNZwTpw6eHScM/x2h/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=s3C7y5ti; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-b6a29291cebso8806566b.0
        for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 23:55:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760943351; x=1761548151; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=06zgkTdvLdS4MNITPMlUpp0m9/L1LkTY9remEcOcFr4=;
        b=s3C7y5tihsoPIL89q5f/2OMvqHvqK/8wDNfPkGjWu4yawYC4cTTA6YlRFkRo9B9qEr
         rmmtd1ylbPvBpO1JatrK2Yp1DCyWGKkjbvQdguyLiy5Ft2J8L8HMb3AjYX2sYVD7ptLN
         J6QjQ52MYQPKDVOJS4KBX2ij3v+sFHL+YfynPsNY7gtT77FPEzPYmAJcu9Xcxh6eIlwg
         ++xpJBNojPz0wUIaRZZbBQKqlP3p4NsSTOKc7QzrL1KDerc0l0USM2yoWao0X9pzAiEu
         TvvcB1ODyNSm1uJ2cuymCJlERI2D5l6CvRfAbjAzvDCKe1HygsJo5lbYgSJwhpprYpvC
         AtbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760943351; x=1761548151;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=06zgkTdvLdS4MNITPMlUpp0m9/L1LkTY9remEcOcFr4=;
        b=DDbvkYTbfpKkcuOKfx6a9NrYb1L26aeVYGnchyRP3rGZrIsvC7Uqu/Pp1eC8NXPFjl
         b/VqrdJQZ2NJOR3J88I57HTjShb7VSzQHqJTmmNC1ZtT9d818MXs+cQYo7k+tNvBNoRI
         YSH0W2qJTmlZslgnmK+EQFa/daGo5Q4B0Lo5gIUlSyA22/3xKLoIi2u7C82mgG4bDlXf
         AUjT+zp3VluHA9ftJFjskYn5NEq7IAUw3c5x+pcJHDB6gcNdKRUEhaTt7jv/gsHzD1Pg
         yAZxKRAe8XwY3wzTO2wGW4ir9IzWY7xHFikLK6C0kHIi2aA4YiIHX3xtyGjO8UdnIr7c
         pA/g==
X-Forwarded-Encrypted: i=1; AJvYcCX6g2jTD/fC+NZjjTdI0ynppve0R6zy4GRxkjksd4qudqHY+9Z4X8lJoMxtInrL0Tr4snxYvIu+QSsx@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6XRJ/24RBUCjSfflCZMgUO6rgds2c7hmZYh/jzFYojjVHCO5Z
	cGo6wlp3zz+gZANt9i6PNl1Pfczg2hXib9+oolMchsJkTdrm/6wq0y9P67d3u/ZxsTY=
X-Gm-Gg: ASbGncsR1u6GZeO9THOHGjTcJiCk1LBiCmbdamHw7wq2CXd2HkmhRs6b0AEao7vWjeP
	fe8pbgh9UZ2zSnk75EqhO2tNIbviHJd99is9dMzxpgkLawYnMbMvEPiRhSxmJSHPSnKQjgGiBn0
	txs7vavVz1i5dXqF8qvHKMJM7NV/lO64zoHJ0k+PAhD1XZjD73mhToDcXfqjv+fNdyRK+pkGlZK
	HMapR4GhBn6WS7DZiplXLP2Sq1hsnsSymbjrTAj7X/Zpo/rJJk3//ku7WayskcIND3V56wQHOo3
	9fvQinsAASzrnWnyiD7TKSSkwsytYfWk8shRyTZbKCzsUlVtUpPIRl20wE9oeUSwIghPw8Nxpit
	H9ltW5IKk+DbYL0TO5s5hvTnJ+maqZa/wcnFBLF/APaQN7qr4IjqDplEkgh8BUTItbfZmg1a4EL
	lTqdGlKzsAUt83AnCLrBFjgeQu5bo=
X-Google-Smtp-Source: AGHT+IHAht6KxB0Ngh4X743mU/9uv/8gNjvcOQoHdUUnr/RK7iqnks8KTRJG0OT6ymzSEGD6XZTvrw==
X-Received: by 2002:a17:907:7f8a:b0:b50:891f:66ae with SMTP id a640c23a62f3a-b6474639388mr840879066b.9.1760943351216;
        Sun, 19 Oct 2025 23:55:51 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65eb036a3esm711731466b.46.2025.10.19.23.55.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Oct 2025 23:55:50 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-clk@vger.kernel.org, willmcvicker@google.com, kernel-team@android.com
In-Reply-To: <20251010-acpm-clk-v6-1-321ee8826fd4@linaro.org>
References: <20251010-acpm-clk-v6-0-321ee8826fd4@linaro.org>
 <20251010-acpm-clk-v6-1-321ee8826fd4@linaro.org>
Subject: Re: (subset) [PATCH v6 1/6] dt-bindings: firmware:
 google,gs101-acpm-ipc: add ACPM clocks
Message-Id: <176094334888.18498.257368855953115301.b4-ty@linaro.org>
Date: Mon, 20 Oct 2025 08:55:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3


On Fri, 10 Oct 2025 12:46:31 +0000, Tudor Ambarus wrote:
> The firmware exposes clocks that can be controlled via the
> Alive Clock and Power Manager (ACPM) interface.
> 
> Make the ACPM node a clock provider by adding the mandatory
> "#clock-cells" property, which allows devices to reference its
> clock outputs.
> 
> [...]

Applied, thanks!

[1/6] dt-bindings: firmware: google,gs101-acpm-ipc: add ACPM clocks
      https://git.kernel.org/krzk/linux/c/83c4e3c39b2b55afe56ed0d14b93b5f219350c81

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


