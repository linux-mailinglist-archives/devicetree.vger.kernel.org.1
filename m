Return-Path: <devicetree+bounces-36413-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7923E8410E8
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 18:42:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 34F32285848
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 17:42:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8752476C9F;
	Mon, 29 Jan 2024 17:42:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WnYZn8QK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AD973F9C0
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 17:42:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706550124; cv=none; b=L2HpX1ZRZmTr0K9jheUEjAsQmXvkmPmyEMSkStZNIDbSe7UhIQhnUVa4j/+g457u1Y3J5Z5tDC8KE9adYF6b/fzA+x2uKxlS9rMyKb30GT9AJ+h7svN6cvwvcpZ+cOnFRdZCdrLxQzS98OuHvJA+/t4t8oEJl4kSI6krIsRGnN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706550124; c=relaxed/simple;
	bh=9Zx3aXA18R94SWzrgSUtc4EnGCzDqdY9//c/8FHjsGo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=b3ldmzGV7OeukEeOn42dL0csmRnae9esvZBqZjoa+gONmXdE5++wWI/Ox+/gSRyNwqnIecc0Sz9KJwW56T9Cp4sD9f5cV/j5tc4mMEnbxsDFvBL1WYuy9YUaEr++WqfbW+IpukB4RvKcph+SmOSEadLeYCboIwoMLSU82HZIrRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WnYZn8QK; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a3510d79ae9so315391066b.0
        for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 09:42:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706550120; x=1707154920; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pRPrglOzwRqa+H7Y4VRUrVxomNsbjEqwuGbyydOpG0o=;
        b=WnYZn8QK5RDqk0hn/Hkems0BFoTduw2sY23Ylk5SnxSDWXHYswQ+XMTplV7mwwJQPr
         kBKyDTO14vNJrglbZcWP1kIQXwnjygmwIisQ47eFJ0xeC8y/VCe0q6ba/2Yu/gecgJRI
         otTZRdKusVquMIGMIQoa6H3Z8ICa5spflBmXjo0Jj7D1kVwjOzTAX/TFkFIVPhGtPfZ0
         tkbkql9hro4emtiJ0Zlir0/TwA//cAkfWAQjw56Fe0HpJhQL0D0eDMF+CRjxlFzH/8CE
         674hP5Ja5raVspH99TvnujEdP4nTuXrNnz8d2iTGe8yWO2slpLB2+8QzciZNF/0iyd37
         SUeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706550120; x=1707154920;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pRPrglOzwRqa+H7Y4VRUrVxomNsbjEqwuGbyydOpG0o=;
        b=SHNrg2grPXa+5QRi1XZO4U/8XpavaVkvqdB5l3mg/xFy8896CYRB9Gq7nEkDoSM52N
         23IIbKFNAMcd4HNePdrk9D8tM/UuSUji/dwBPihqxcmtDitoUrvXnc6BMxvsR68rR8P4
         Fk+dbT235oGynZseuz4pNhPKAFUArvfp2teasXr6a9gpBzOz/yyKOZpkq1QJzDQBOPR6
         38g4XJIPzqKqnEtpf/+gY36x79yo3V3HNEk7na/0dDB/MZwUUDSbIkDywV8L1FHsUFsU
         /b7ijcwu0Sx7/v3WPbYDoeI1SOTGhxnHtdB7AaUBrtTWUh9TTIEN8F97gGGN8gP46gpQ
         A/uA==
X-Gm-Message-State: AOJu0YzLVyO8bei3GDTrTJZs/qmJMYBwWQAbjpHtegFixkVYcWZN9/DY
	rb0To7U0eqCsLmWtiKtzFoi98a08Yd3V04jfakR55LC8lF5cgZy/YOvW52FVgxQ=
X-Google-Smtp-Source: AGHT+IH7SnCVkKpDcbSdNp0DbMhNvvyF+vX+c9HHkogBjefDuaYJ7t+c82tOi7AZ9KE+TzdqrxqPSA==
X-Received: by 2002:a17:906:450:b0:a35:ad38:35e with SMTP id e16-20020a170906045000b00a35ad38035emr2735029eja.69.1706550119715;
        Mon, 29 Jan 2024 09:41:59 -0800 (PST)
Received: from puffmais.c.googlers.com.com (94.189.141.34.bc.googleusercontent.com. [34.141.189.94])
        by smtp.gmail.com with ESMTPSA id qx25-20020a170906fcd900b00a311a360433sm4237765ejb.143.2024.01.29.09.41.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jan 2024 09:41:59 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>
To: peter.griffin@linaro.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org,
	kernel-team@android.com,
	tudor.ambarus@linaro.org,
	willmcvicker@google.com,
	semen.protsenko@linaro.org,
	inux-kernel@vger.kernel.org,
	alim.akhtar@samsung.com,
	s.nawrocki@samsung.com,
	tomasz.figa@gmail.com,
	cw00.choi@samsung.com,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 0/7] gs101 oriole: peripheral block 1 (peric1) and i2c12 support
Date: Mon, 29 Jan 2024 17:40:03 +0000
Message-ID: <20240129174151.1174248-1-andre.draszik@linaro.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

This patch series implements support for the 2nd connectivity
peripheral block on gs101.
This block contains an additional 6 USI, 1 I3C and 1 PWM
interfaces/busses.

i2cdetect shows all expected devices on the one i2c bus that this patch
series enables.
Everything that's in scope in this series works also without the
clk_ignore_unused kernel command line argument.

While working on this, I noticed the existing peric0 support for gs101
has a couple issues. That explains why there are differences compared
to it and a separate patch series has been sent to fix up peric0
support.

Cheers,
Andre'

Changes in v2:
- squash original patches #3+#9 (Krzysztof)
- move original patch #7 to new #4
- squash original patches #4+#8 and make it #5 (Krzysztof)
- add short summary of devices attached to i2c bus 12 & add TODO (Sam & Peter)
- collect Reviewed-by: tags
- I kept Reviewed-by: tags for the squashed patches. Please shout if
  that wasn't expected

 .../bindings/clock/google,gs101-clock.yaml    |   9 +-
 .../soc/samsung/samsung,exynos-sysreg.yaml    |   1 +
 .../boot/dts/exynos/google/gs101-oriole.dts   |  10 +
 arch/arm64/boot/dts/exynos/google/gs101.dtsi  |  41 ++
 drivers/clk/samsung/clk-gs101.c               | 347 ++++++++++++++++-
 include/dt-bindings/clock/google,gs101.h      |  48 +++
 6 files changed, 452 insertions(+), 4 deletions(-)


