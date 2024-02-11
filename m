Return-Path: <devicetree+bounces-40546-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BE7E850B9E
	for <lists+devicetree@lfdr.de>; Sun, 11 Feb 2024 22:24:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3DDA01C20A93
	for <lists+devicetree@lfdr.de>; Sun, 11 Feb 2024 21:24:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 413EF5F470;
	Sun, 11 Feb 2024 21:24:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qomv+3+F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61E825A784
	for <devicetree@vger.kernel.org>; Sun, 11 Feb 2024 21:24:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707686672; cv=none; b=AUwNzcXp3KIcPmu8cVQgQ6okl0kDzw/qDDltd4lCsEQYR4L6pOtcCgqswhoYTblDSDlU4aAHCM3W72oDozJtoAZ4LpM3kBDvx3faouc+CQGG+874f1LBBZleWz8AanJ0H1zCRSHEw+2GcBIeqyU6++gsdSjxAnJbnS7DFhOEctQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707686672; c=relaxed/simple;
	bh=k/EAP5HHSbdFVoiMgAUi/xYETsQ2zQ9YLI2XBqhLImY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Y/0+QsRbwkBGZDdbkW40EFkG1cGvY3qqTyUNHDihJIXh4M8+ubxw+2oR1AWOkhVKNl1vDWD1HWb8xQlqvhsT3h6nTFHjbB5FdArmf6/7TJyK2KDMJH5mhtEj9XQ4pdvjFXOFphnB1NA9LmbOJtlouKxa6hrp2hZGATuFq5JQ8Ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qomv+3+F; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-51171c9f4c0so3076639e87.3
        for <devicetree@vger.kernel.org>; Sun, 11 Feb 2024 13:24:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707686668; x=1708291468; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pOZPQzblliLGvQlVJKgtDAFcE2v0oGzscXkD2yWWm0s=;
        b=qomv+3+F48ynaxlwLQCR3zuPNgt9egAu2ddq26j64cLFqznL/hz9UV4TbNnBAakQJi
         e+2ofmc7atqdc77q7YuLCtTXS+2iLOeuaG80RNc8VpieYApcri3gsoOJsRWP6oi+bqNH
         jfm2BtvZTcthWp4eYKrXGuZSOK2jEYdhE1ObcifsarW/GfnvBXUv+yOkCl+7yvqfJ4BU
         28GZOqkXGEgKwO382qkpzwBjRmpjnXjW05PaO0O7NFY2DQ4CEGF7++fWjPaWNrCHBKqn
         SfIGpxUSd0JiIKXs85Ifr1WKHzHEqZHm7Nz0ZO4NM8SG3bjnjp75kLlOrwxSVVSLv5Dy
         OG+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707686668; x=1708291468;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pOZPQzblliLGvQlVJKgtDAFcE2v0oGzscXkD2yWWm0s=;
        b=nHFNKpPYAPkvdqQoXdd+047chbddDQiBwfGf/dLGc39R/1cOFAxKhHSfzhlyHTkfg2
         /t7e6qA9mhzAug5kI2C5j9Ajixm10TNwEMNIKLmxY1FgsUnRy10e1SLASsxYqlQZZ+HH
         BsyXmgRN4T8AXUBlVF0qAditr0vS4UNuf5MRjwM8peclT0qodOKAsowHJRm56F+9tY/9
         Z+cEH4zTNDPJD2YWn4bwwbqsE0rs40oLnYTtVv46lOT0/kG2LvJlLppfn9ompAmxUOOT
         6hDFca3uq8/qcBFgwP/8jl+MsAkxEE4h6QFF0vPDsjnb9D6xOS/+Ow58f92vpCCGxSdv
         rTIw==
X-Gm-Message-State: AOJu0Yya2cqOBPflxcw9abHj65aBScKs1lrb52plS83G9hCznmml9Gyu
	bivBGbJmc0nOCRCDGL+Vw2MabVA20U4yAK/yH/fae+wX1xI1wx39hkkJUMmfS7LZYU0YFT2gvcz
	l
X-Google-Smtp-Source: AGHT+IHPk7qAdsTNDbVQ8FQtbBNtfC6j/A3wk2JHaaHjhImkraLb+4bU1vovYByrKyhvxAgXVRftQA==
X-Received: by 2002:a05:6512:24f:b0:511:8c6b:bc7b with SMTP id b15-20020a056512024f00b005118c6bbc7bmr1173900lfo.4.1707686668087;
        Sun, 11 Feb 2024 13:24:28 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWO8zS51721JSeT0zXo7Dt9ygGanS7NdemrgZ0jFH4ipZZW1/m48rWdhBJ9rLm6mB+gqQKZ1ZrBsiUlklS0b+cPKaQqKsjAhctY6c+BrzJSNIdOvsfphG7VOLdMJHFQzDxwt+fiduS4IG6iASaupCJoEZpxzo1wFk6hoQqsV9YjzrKYDcjkSp2L2UEAmWwROEOOFKlbWjD6CEu9PtlrcASdKznKapcA4T0fcOgHh7iytw==
Received: from [127.0.1.1] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id h8-20020a056512220800b005115edd71c9sm623684lfu.165.2024.02.11.13.24.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Feb 2024 13:24:27 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 0/4] ARM: dts: gemini: Fix some minor DTS issues
Date: Sun, 11 Feb 2024 22:24:22 +0100
Message-Id: <20240211-gemini-dts-v1-0-6c09adeb4c2e@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAY7yWUC/x3MQQqAIBRF0a3EHyeYRmBbiQahT/uDLDQiEPeeN
 DyDewtlJEamuSuU8HDmMzYMfUd232KAYNdMSqpRKmlEwMGRhbuz0PDQ2sFOBtSCK8Hz+8+WtdY
 P0yRJglwAAAA=
To: Hans Ulli Kroll <ulli.kroll@googlemail.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.12.4

We have recommended practices for node naming and we have
some keys that could be better represented. Some compatible
top-level should be updated to the recommendation from the
bindings. This small series fixes up these minor issues.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
Linus Walleij (4):
      ARM: dts: gemini: Fix switch node names in the DIR-685
      ARM: dts: gemini: Fix wiligear compatible strings
      ARM: dts: gemini: Map reset keys to KEY_RESTART
      ARM: dts: gemini: Fix switch node names on Vitesse switches

 arch/arm/boot/dts/gemini/gemini-dlink-dir-685.dts | 30 +++++++++++------------
 arch/arm/boot/dts/gemini/gemini-dlink-dns-313.dts |  4 +--
 arch/arm/boot/dts/gemini/gemini-sl93512r.dts      | 16 ++++++------
 arch/arm/boot/dts/gemini/gemini-sq201.dts         | 16 ++++++------
 arch/arm/boot/dts/gemini/gemini-wbd111.dts        |  6 ++---
 arch/arm/boot/dts/gemini/gemini-wbd222.dts        |  6 ++---
 6 files changed, 39 insertions(+), 39 deletions(-)
---
base-commit: 6613476e225e090cc9aad49be7fa504e290dd33d
change-id: 20240209-gemini-dts-3efe33dec69e

Best regards,
-- 
Linus Walleij <linus.walleij@linaro.org>


