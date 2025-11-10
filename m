Return-Path: <devicetree+bounces-236895-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A1BEC4907E
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 20:30:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EB92A188B2CB
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 19:30:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4755033B6D9;
	Mon, 10 Nov 2025 19:29:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jiR8GVoX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D396335573
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 19:29:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762802952; cv=none; b=D25qXwfWekCqENsBE/jmAyOOOc+NyFzV1knyx+MLJJNFDYR0u0o+aZWLALVOK4qNEvJmlHd/GTb9x8aZsOxWK6NasvYmpCVwZEAFKsYKTP8c9hbAo1xtJU8/WQtBbbEg8mIyMUicIHcCzP/WNFTg5YdYafz4+p2pFOaADU0aOrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762802952; c=relaxed/simple;
	bh=LFqwaRXkPRKZ74Dqqp+A0vwR8NwubHOzJRAJeqzjYvM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Ty6LEH1JCR88O1T3S0Kecv1Hn3oxjgRS2noEDMTjaZbavpMhGWxgj3mxPT8v3Qq9n0odQM+HV52lhg10yuG/ug5YWsTRBxpSz25AujNNCTfdkxXybP93Po2Bh1ecZ6w65Ct1xmsIgMXZN9RsWEEjO60Gq4wli5zUC/Ac/UfkXOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jiR8GVoX; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-b3e7cc84b82so641554766b.0
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 11:29:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762802945; x=1763407745; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5EBs/gWqE2YKHs84UApaIc3+cFTmlomp04y82/W90v8=;
        b=jiR8GVoXbgkuh/KishRQJfNZ57afnpugy778QxGm6RMfpiczGknpEvpHsT1hzpnve/
         FhHZs+MUVlCaGcYqkguvwTqLupayTOrL/Swh5t+pMipT2c3mhjruRK12ToJhK/pUvDo7
         6vwlrv1dxmhIjGnjDBDBKTSyKX8LzJv6ZTDVpM7LAFB/+8BKTwoVzY69ShjfiQsDrero
         s4D8KFclLPaJlffZJi2Qli0k7GniGMoGRX7n5NBl1jvGZC487zf2UPRqTgv1e4LacTG9
         2SX/l8gG41G95ynb2ZhZmL9yZIVb/pg8LL1axNxQom8li+8MlnTjD0flbUgvJYYqcgvE
         oIfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762802945; x=1763407745;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5EBs/gWqE2YKHs84UApaIc3+cFTmlomp04y82/W90v8=;
        b=ASR2McKsNSGxTxmLpYAgDsG3u9Z55ZTmv/J+ystl/3clhZ2GYsgVAez6dqcRjDNSnM
         K+mGIbQ1Dg9v6MCl6UA5V+EfNZ3yQHGmKrR5CIqWeQKI9PJEjUIZcArwXlCJjFF6+BsM
         wSsLZwBt7ZQQ4k/bGLGQt7DmpwMvFVVAKKzMJHcagDe2mKNk+BZhi5P1y8MQB4wtRCP7
         qIHn80+VPSp8utSxxNjLPwg4RS2JbNjO20ovSCD/kK5/PF5mHqCC+YCLJg+jGnDbOizx
         I8TmCiksgYjBRnzQCMS+C82WM7JX6YaO7U2mQPBzU9TRSu9AgjHHlpzM7LTk1bzEFN28
         Mqdw==
X-Forwarded-Encrypted: i=1; AJvYcCW5FNEYO3fu3qR8o0TFSkYeadkHVAwgWyElrQW3AORUGX06Pp1h1EBR0LTAJKGTvid79fCyQCVbEFrV@vger.kernel.org
X-Gm-Message-State: AOJu0YznUN3LypDXBZr4JG3lgjs0Fc+NokpcnqtDPCRmWrrgwgfiZyRU
	/C6OP2S2uWSukJsNmZR6Y8ausYFEi0ugTJIc6jMghEhojM825FS+AX4Dh96lEGTYIhY=
X-Gm-Gg: ASbGncs5j+LWoPkoJ1jPtDOFBpcKypsu0qTjdxxxwnp0AVQrd62CQG8spDCXTvY09yP
	rLIP2frU513sU8ha6V4ntGEncSm0QCo8mdrOQKhCEF2r0q8cfBTlF/F45DYCWLptInIcOdaaWU0
	SKnF8bkiM3RumAZtYLsznjDU2rcSFAJXUQiLhCAmS7IRpTSMytYCMA/uQnVOa76SUb0YR+MUzkJ
	OXL58xvLrglFGqs01iDjfOcdB4fwpl6ntfwG0m+sELY1fVRoMtl0TBb1p11DAA1Jq02hffZDhOF
	8nW9yJaG+I3A7o+yN5oLy6D4UC6hmmfBjhKq0RFl00imvV/j5fGyNz84kycUUwTybQZmZqiGfXJ
	JaW3iBVnguBR2rJqA6QjY4QDAOhBaAo9/XcDUyQWd7ceCS9gwwNAH3NUdiU+R/V2gu/197SDNDk
	3jg5VRpUyAuyWBJbFUrWLawzh4q580UAGrXR6/15YlgZr5dmow7VbYC/HjTU0DeGcnF3M/lBw=
X-Google-Smtp-Source: AGHT+IEw2F9SIUsYVJ6/B6ilFIzlh+rE7+nJUNc1mZL2I5c7Ls8Ayt61iA0IZHhJvuKlY8hxgKAypQ==
X-Received: by 2002:a17:907:3ccb:b0:b72:d43a:4fab with SMTP id a640c23a62f3a-b72e05e5a05mr774948566b.43.1762802945073;
        Mon, 10 Nov 2025 11:29:05 -0800 (PST)
Received: from puffmais2.c.googlers.com (254.48.34.34.bc.googleusercontent.com. [34.34.48.254])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72bf97d16esm1168178166b.35.2025.11.10.11.29.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 11:29:04 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 10 Nov 2025 19:28:54 +0000
Subject: [PATCH v4 11/20] regulator: s2mps11: drop two needless variable
 initialisations
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251110-s2mpg1x-regulators-v4-11-94c9e726d4ba@linaro.org>
References: <20251110-s2mpg1x-regulators-v4-0-94c9e726d4ba@linaro.org>
In-Reply-To: <20251110-s2mpg1x-regulators-v4-0-94c9e726d4ba@linaro.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Lee Jones <lee@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.2

The initialisations being removed are needless, as both variables are
being assigned values unconditionally further down. Additionally, doing
this eager init here might lead to preventing the compiler from issuing
a warning if a future code change actually forgets to assign a useful
value in some code path.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/regulator/s2mps11.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/regulator/s2mps11.c b/drivers/regulator/s2mps11.c
index 04ae9c6150bd5ae9dba47b9b3cfcfb62e4698b6d..1f51fbc6c7b6e158f9707c04d9f030b9eee5e842 100644
--- a/drivers/regulator/s2mps11.c
+++ b/drivers/regulator/s2mps11.c
@@ -1207,8 +1207,8 @@ static int s2mps11_pmic_probe(struct platform_device *pdev)
 	struct sec_pmic_dev *iodev = dev_get_drvdata(pdev->dev.parent);
 	struct regulator_config config = { };
 	struct s2mps11_info *s2mps11;
-	unsigned int rdev_num = 0;
-	int i, ret = 0;
+	unsigned int rdev_num;
+	int i, ret;
 	const struct regulator_desc *regulators;
 
 	s2mps11 = devm_kzalloc(&pdev->dev, sizeof(struct s2mps11_info),

-- 
2.51.2.1041.gc1ab5b90ca-goog


