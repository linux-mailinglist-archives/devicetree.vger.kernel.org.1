Return-Path: <devicetree+bounces-216902-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 38CDDB567F8
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 13:45:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B2A0F1899FDF
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 11:45:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC78D257AC6;
	Sun, 14 Sep 2025 11:45:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SgvYWpGq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FF5011CA9
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 11:45:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757850304; cv=none; b=caAYMuHM+wj9ztqPyZnkVNxDa+6LxTKxhWoAwYZdJ48JAz8ZBkypIZy1oGIWvgqrVedx3XN0Fyf87MYaf6vxJyp0QdSdEoOfiYKT9ZJKcaqLPwDkV8kV8cVUGbDr3WQd7YJIGiu53IUTg6GruUyS6TiZ6/3OK5t+LPZCnR8Qnwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757850304; c=relaxed/simple;
	bh=fIdw23kCtB7mdE2ObsS2whaNsMI65r/FonqsAsCDIf4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=kM7c2Q8j05QxzBkUTTZ6GttH/xEEQf6gozGpvkpb8ch2ffO1WpkqmXPNWv0oLESY60avWRNSuPffaT7CqAJZgOk37Hh3do5/NwkS3FkoM/sP/9MBZdW6FQyKdqOBlFy7tCTV14JpDzPIuAS6yPhnIKVQ/ul0eW++UYgihBukshk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SgvYWpGq; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3ea3d3ae48fso149136f8f.1
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 04:45:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757850301; x=1758455101; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Zl9epDnVBDf5FGwQnol7WPxPj6t42uf2hUNcw7PBwX4=;
        b=SgvYWpGq43cB7t/JShNl/aLM3QH5u9bIB3pCoTaxzCbWGihOg5NeWk1sx5jlRRN2W/
         1hcEmxw8cjnqyQ82uXR5AJj8YkTgD4ASMagzuhe5BUsfgdxrIp9X15PGxBrGJnp5hfwU
         SJhad+5ot1AcgqYquRMtS/calSmiXLIiPxqxk8BCc1i1jBgXLO41azrxm3zhNLHGgt+f
         +m6snHE/CLDPCd7WBnG3bK/3Ur/bq3uLuXOnV6YxFHaQE3xuMTCkMFwcl571r5vYcTED
         8MwRQncNaxYJgNWro+1TzaoKmEQ1fVXgu8RMh9gmxp65xC4XpvaCN6gLrj91v3DPdxAI
         rhYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757850301; x=1758455101;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Zl9epDnVBDf5FGwQnol7WPxPj6t42uf2hUNcw7PBwX4=;
        b=tgReRwcKtQPEsE3UChqYMGMDLC0TppS0iJG7pGmD9ABRG36Ogm12iBombXFtSsyk0i
         lLUJwbj1v4lbLhL88pdsWgn3otn0k7aDKC42NSTIkJl/HBi4b1kaFn4atrtSVD1q5ZMY
         OuJRpfkmlLYrCFehUes2m2HaDZBkZBK/SrQXurlzlMWUJBZDQdehtI+bA5/s6gJcnLWD
         ldnnpAhn6oBziKVJ5aNVWKENpUZ+drKrxpVhzB2C/hpWYhP6/FUjd6syJHnW4oUceFmr
         D0odMNmQ1QNHNLppuaQnskEuQijEGdXXT/NyDVsixPZAk2AZ9RotwL+a0aou+NytbVF1
         gEhQ==
X-Forwarded-Encrypted: i=1; AJvYcCWT8GM/qhWS/wk+Sxkh5R+OOvxPaEulxM38NEqQbNYsDihxWSZM+IMpEkR9V/c3AlrQdBlKcBRKZARa@vger.kernel.org
X-Gm-Message-State: AOJu0YzjOlKWSincpxv2eP2TwZQv9xydWG/+QAGbpKGNr4M/wbluxSMh
	MVLrI+LKuTYL4cQJcrnu4Os6/01lrsOxeRmQOspNuqTmaXLMMiaM+Oq9
X-Gm-Gg: ASbGnctMldqdy9O4mvTy5zP3H+njgpCf1Uw6aBQ7ewIAY3AFkGPy2Z3c0S68zgxoDvu
	FVbZVziKy8RdKoBF/FUTzCvCw0DwJXA7FiWK/oPbm/bM///u9KPRtOTRVlV0Dp28kQEvAT3iZLh
	sE3uakqHMV2Xw0USpJQ+HT8oRMnmPuPU2OFG2n3a86H7Hk4IY/78uD13xbkjNZJNax2q/C7lb4p
	64wtCi5yEdeGY6e+2dk6RkA6yO2INye3ihRifSH6dpzS+EjUUi+6DCD6nZs1+WJuUNAYMCWwvZ/
	xzJSaikppJhHL9jiSJdRnF/auQPYF41bXVkf/bSs9JCTvV/CX77dzvXBliwS8WbXw91U+bWAP33
	lZyUirJcaqi7TTwLI5vIkhdvxQ/zjaahGTrkfegBu2yQuwdea77tfq7TmShypULvv5q4mhj440t
	JayTq2eBBg
X-Google-Smtp-Source: AGHT+IEKZoR43PuG4u0ovxcf8LSqoSkXytpnNXieBus8x9zq/gDUlem4pul2S/1lpLAukbDJ5yAyag==
X-Received: by 2002:a5d:5f53:0:b0:3e2:a287:2cf2 with SMTP id ffacd0b85a97d-3e765a0915amr6836384f8f.23.1757850301352;
        Sun, 14 Sep 2025 04:45:01 -0700 (PDT)
Received: from ivaylo-T580.. (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3ea21a6e4basm1503252f8f.11.2025.09.14.04.45.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 04:45:00 -0700 (PDT)
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Tomasz Figa <tomasz.figa@gmail.com>
Cc: linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/3] pinctrl: samsung: add exynos8890 SoC pinctrl
Date: Sun, 14 Sep 2025 14:44:54 +0300
Message-ID: <20250914114457.2610013-1-ivo.ivanov.ivanov1@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hey folks,

This patchset adds pinctrl support for the exynos8890 SoC.

Best regards,
Ivaylo

Ivaylo Ivanov (3):
  dt-bindings: pinctrl: samsung: add exynos8890 compatible
  dt-bindings: pinctrl: samsung: add exynos8890-wakeup-eint compatible
  pinctrl: samsung: add exynos8890 SoC pinctrl configuration

 .../samsung,pinctrl-wakeup-interrupt.yaml     |   1 +
 .../bindings/pinctrl/samsung,pinctrl.yaml     |   5 +-
 .../pinctrl/samsung/pinctrl-exynos-arm64.c    | 157 ++++++++++++++++++
 drivers/pinctrl/samsung/pinctrl-samsung.c     |   2 +
 drivers/pinctrl/samsung/pinctrl-samsung.h     |   1 +
 5 files changed, 165 insertions(+), 1 deletion(-)

-- 
2.43.0


