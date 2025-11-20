Return-Path: <devicetree+bounces-240843-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9E7C764FA
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 22:06:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id 82C6E2A74D
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 21:06:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 769022F49ED;
	Thu, 20 Nov 2025 21:06:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zQPGZnxD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EE3826ED55
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 21:06:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763672786; cv=none; b=m5OI3yOK9MrDvaVTEJS3oSl2jHg9vYbEjGIuzdEOAo8TQ9bntUjZnGKo9EDoTiV5Eej5vNzQc/liEGIC3ZD9oerKKttmK4pGXn9G+S9Yf63kJpMSXw2JQqk3HV51gTxGywJDo9iENxlHGz55ngiqjizbaKY52pwVkF+kUG4PzOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763672786; c=relaxed/simple;
	bh=zMmyX4hI98rT4xIF+GHY3RVx8brKYrtm3BxZE7xSi9Q=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=bgu7HOLxIF7PGWGLVLrVRhWu5+U4jBSWiVIBKNB3WAXNUHpFTPYpKtfpeawm+0Dd2S5QZlAVw/0xZs5vwnHV2yIRBNKFRgdAC/qETFsecFowOvAbzFWvI+800I6F5/eS/E6i/yMdgAUxM+MjuVs3bw9rGNEQ1aDwEPuz7si7WZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zQPGZnxD; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-42b3ad51fecso1087528f8f.1
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 13:06:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763672783; x=1764277583; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SnSclzJUYUD1UpejWX4wHVJELscJwkV6MRhyXGKL86M=;
        b=zQPGZnxDWDxhkQpTQyDQdfsu8ONYjANifpf8jIVELVbEcHJRk8l33W/HHmSx122I0U
         18WmItFlOLhnVcpD1xXt0ohMEOkQnDxgFsdKBHBNQVGgHb3KC0LGvHKVaAr1RyKYPSsa
         mDXdA3UIjMp8dIUh5a4HaGJ3mdWjzH+TABev6YrZhmS/fM7q51fEhGtcVfJWBnZAMrDv
         nTUycWHYtmDawBSJCz3APqr9A/opFl7t85a8Gfo9BQI3KpJjaq9dEAbpxHRgHJHNzhKd
         0tqCmJQc+jiSI3aqMisKXmfbqit/TsGngvpQm8Vlttebd7/cqMKdn0xTIF0ghGuDy26i
         FoEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763672783; x=1764277583;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SnSclzJUYUD1UpejWX4wHVJELscJwkV6MRhyXGKL86M=;
        b=PMd7fNGhWIKrImguTxfvriHiORZzywdSi5zk2skG8X7+hMy3n6GgpZMUy6nsauqGTH
         2fsG82uOo0gd/+ovN181kfzFfLZp4bRrYALLc2XupLK4aHKRy2OCIW8yt2EkAbhnWyC3
         ZJKOP2QsoOQZv9UbuLmrkPCK3Jmu23jyMMzk+Eq9hrt8LYCnLLRgTG5AsrWwyx3421ek
         AYG2SDfnCnJZ33H5eKmcJkHMc79SNITBToJPow7fIPJ6Tbax3iq8u750M+ZF9u42iWM4
         SOXQIepU0WbrWg+RN7j5jzkpPOX/nk//zVkaamXSKdQGloPUam8co0Bl1H8cVJh2vUH6
         p2ww==
X-Forwarded-Encrypted: i=1; AJvYcCVVD1QhfZLGnjF9l2SqgoMN/qaKIgod7iP2PSIG3jN/0AaINSqT39/i7Gx91IVViMq7wiE5ydCOgcPI@vger.kernel.org
X-Gm-Message-State: AOJu0YxyGmG1IPptbEHeu9IpdQnv64giIjo4RgSGvEpQHirdKPrP3S+O
	ClC0UI9PnEwAO9s5Kflu/dLHeWa57avtxtVn6vTsc0Xn3rGOtt6ZQ5LNb1gHKFT/uGg=
X-Gm-Gg: ASbGnctsKoJffsz1yP5+X3/xP11lHaUXK2rSLe5pvC6tijmYAqkwOsgxSfPS1HD7e3f
	seFcWK579YVSu/qil15RJgbUkf6it7kPZ7T+FjItmYhcX/GV/In1Q+KBzsnN+0YfCtRqevMJ9fy
	qNW4qq83ISTDZYXp88gm3FEYw152G4kVg0y17Joj2gqvM5f0bJlTNSQouCZbA7Lqz4LcIRgx8HW
	pWqDFgpQkkHXK+cL+bBoWWwoNCnJ8c7skpsBIiMo0Vym7MTe/dKm72ese+0iG4q7mn8klT//j+u
	gBh2TBS+BF4+8dM7hpFZSEeYX5O1EqyFtJCRUlpG0WgzD2zRt08Nmj33S2p1FAOyWnBDiVM9UNh
	+3w2+UQ5o5igW7aAvyqlEdoKVtdX8V7lod31AdIf89jq3Z3NG6s/6JPwoG2BDMDcO6WtUbsjTLk
	QWoqYRNsuYa4ZDP0FRwO2QhQ3lM/hw5MyWvDbD1kA=
X-Google-Smtp-Source: AGHT+IHCr7elXViwZypO3vz2gMF/QMkjwbp8BwuhgflwUBLArbYypsOsxTUGiDrcTKcrsd4O9fOqQA==
X-Received: by 2002:a05:6000:25c2:b0:42b:3ccc:91ec with SMTP id ffacd0b85a97d-42cb99f66b9mr4773737f8f.22.1763672782827;
        Thu, 20 Nov 2025 13:06:22 -0800 (PST)
Received: from gpeter-l.roam.corp.google.com ([150.228.9.80])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7f2e5b6sm7321287f8f.1.2025.11.20.13.06.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Nov 2025 13:06:22 -0800 (PST)
From: Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH 0/4] gs101: Add support for Display Process Unit (DPU)
 clocks
Date: Thu, 20 Nov 2025 21:06:10 +0000
Message-Id: <20251120-dpu-clocks-v1-0-11508054eab8@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMKCH2kC/0XMywrCMBCF4VcJszYwCaaNeRXpIk2mGtS25lKE0
 nc3tIjL/8D5VkgUAyUwbIVIS0hhGmuIEwN3t+ONePC1QaJUQkjkfi7cPSf3SLzttVQelcbWQj3
 MkYbw2bFrd3Skd6lmPsY/adgOImpuS55eNgf3Y+X5YvsGh0Y6MouCbtu+qQhbh6cAAAA=
X-Change-ID: 20251120-dpu-clocks-7b825d05807a
To: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>, 
 kernel-team@android.com, Will McVicker <willmcvicker@google.com>, 
 Juan Yescas <jyescas@google.com>, Doug Anderson <dianders@google.com>, 
 Peter Griffin <peter.griffin@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1640;
 i=peter.griffin@linaro.org; h=from:subject:message-id;
 bh=zMmyX4hI98rT4xIF+GHY3RVx8brKYrtm3BxZE7xSi9Q=;
 b=owEBbQKS/ZANAwAKAc7ouNYCNHK6AcsmYgBpH4LJSo5MK/FUkk0o+R9pPfE6qXx/ssGLCKTbJ
 odvNLZFlHKJAjMEAAEKAB0WIQQO/I5vVXh1DVa1SfzO6LjWAjRyugUCaR+CyQAKCRDO6LjWAjRy
 um7ND/0QmnOKBDjDsGJEHzq8JoLBEeeRK+2iHo4jSPsh+LX6XSG/y5frQ2LXNKkiX0wYn4lkuPZ
 7oCSxcRzsW0IDoorM07gZICU/rdPiqQ9I/E+Fwny2Nx4YsG0X3UrdHXhVmz6xQn+eSeb4f2oM9S
 Ev1yhUq2lJxsqGjvgXUDJ8q/5kjUOqsOzw+oNbUHCkXsWff3jBr2b0Y4yxA4C2desQuBs+ss352
 PzLes/1adCC8rKf92yV9XPZAy8sYpQDcbsQya9DL8S5qiqRAexOESoHOw5neKT6bGunmSfCi5/D
 bc/N3+VDG99bGQwlUxcj7t7/KJQWx4ezgVWKdfCjPc6jpQZl7t/nA8FahEnmNVaFvvMFHJceZxH
 0dLlYKVXHLFXWtB28NRzgWLWRko5182DPk7GrHlq9pJpL1XHRa/EPzd5OMJEbnkuY/bO2kRjtej
 WeOqcXAglj41e+YEhI72ap3qfAPRP1NUmMjBpivMbG08w6SxMWP2uwvZMw0lYcBvt8A/ZX23t8D
 Xm3ygoQMxEpBzyEPP8yFwXKopT9/8Lmglb0rqZZgGkJEiQ1FlG9vOyWFg3u7QZbQf7UIzDrJMrp
 tsRfthtirfylRyQHmPQXvUWxubwTXoCEczsNvuVim2htorwsdoMvt0rvn+wquxSdQeaORGU0HLV
 tYWkXgAZ+qp0nKw==
X-Developer-Key: i=peter.griffin@linaro.org; a=openpgp;
 fpr=0EFC8E6F5578750D56B549FCCEE8B8D6023472BA

Hi folks,

This series adds support for the Display Process Unit Clock Management Unit
(CMU_DPU) found on gs101. I've based this on top of the automatic clock
series to avoid conflicts [1].

As all the patches will go via Krzysztof tree it has been sent as one
series.

regards,

Peter.

[Link] https://lore.kernel.org/lkml/20251114-automatic-clocks-v5-0-efb9202ffcd7@linaro.org/ [1]

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
Peter Griffin (4):
      dt-bindings: clock: google,gs101-clock: Add DPU clock management unit
      dt-bindings: samsung: exynos-sysreg: add gs101 dpu compatible
      arm64: dts: exynos: gs101: add cmu_dpu and sysreg_dpu dt nodes
      clk: samsung: gs101: add support for Display Process Unit (DPU) clocks

 .../bindings/clock/google,gs101-clock.yaml         |  19 ++
 .../soc/samsung/samsung,exynos-sysreg.yaml         |   2 +
 arch/arm64/boot/dts/exynos/google/gs101.dtsi       |  17 ++
 drivers/clk/samsung/clk-gs101.c                    | 283 +++++++++++++++++++++
 include/dt-bindings/clock/google,gs101.h           |  36 +++
 5 files changed, 357 insertions(+)
---
base-commit: 7850d78b1aaae4eef59e519993bd8a8552b7c79d
change-id: 20251120-dpu-clocks-7b825d05807a
prerequisite-change-id: 20251008-automatic-clocks-249ab60f62ce:v5
prerequisite-patch-id: 6fec555c9a6442c6f0c53b27d096c90dc9f6e32a
prerequisite-patch-id: f01cfd5b3de005b646c158bb7277f417ca6b27d9
prerequisite-patch-id: 08f5690839af740c7975caff424288043474926d
prerequisite-patch-id: fee79bd7b5b1df942a0aedafd4d057faa354b057

Best regards,
-- 
Peter Griffin <peter.griffin@linaro.org>


