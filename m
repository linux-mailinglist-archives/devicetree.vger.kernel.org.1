Return-Path: <devicetree+bounces-43584-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C0DFC85AD0D
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 21:23:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 77FA81F25F62
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 20:23:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 483F8535DB;
	Mon, 19 Feb 2024 20:23:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="AraKtE0A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C444752F98
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 20:23:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708374211; cv=none; b=mtNcsiPg8/cs5XpLUM6xIlAm6Hm7YwHmvJYKejTGcweU1WbP0gTn9Pkn2hXKn5MBU9tiVJyIpT6LwQ/YhrNmtBfBYChZKKTrAdOZTD8Ny6r8UFRJxLaqZ269lfcw3gi27OVCdPbraA8TPuoIAF13yrFE8d1HCZRN46VDf3tjxhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708374211; c=relaxed/simple;
	bh=l5a7ia9IlLLgaF40+x245tcDiaLXDStmBzlkO9wsMRE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=lb3aIwhhyErtZJRuHa6ggpaQAKgoz5N22RP7hHfRx1BmnNwzdKna96PEgMhAyx/3W8swmf+gunVawWzEmbfTBbhrTxFqqzHaWlJS5BfXduZanxXZmrFoZinomh1iFZJspJIiEYFDHvyiLDFqw5qJtklhbNmxT32Gd54Vaj5Ley4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=AraKtE0A; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-6e32a92e0fdso562640b3a.0
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 12:23:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1708374209; x=1708979009; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=secGjYcmf+kGbl9y3oNWHWyDsYIjbQerI2pVhqZBL+Y=;
        b=AraKtE0ABwzYYK0Lp4zxJ9aeDlLr+ejsNGslTsJkDEreQPColCGg2eZCx+iRFNojX3
         YGZ9m2doq5Q6KlxDWFl+vtuOQ6zLF+oEfUpWRAOAh/s6Q5pgi/NNCJo4vFVlOYz4L4rO
         fjORYxnPfCWG84eOOHSNFhsQWQm5Vfwr6X4JQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708374209; x=1708979009;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=secGjYcmf+kGbl9y3oNWHWyDsYIjbQerI2pVhqZBL+Y=;
        b=JI8Mn8fQeDftH45MNxPY/XniJEfpPjaAjCNHLRd+AzKNEwhcRZKQIs2i+8pF9x9LCI
         ktPM+0KzDBrf9x+K0GI8g9fyxUJqyId8C6SrUznLtsdK/3O3x9yLW+4Zqdl9iuZNiNzm
         kQFK4dyhylcy0M2rzupEZq7Hsn+k3E0GSAIEo81yt6fUHmmc41WTzpSw3rKK9fDsk3UR
         A+8QFlBNxj/nAWNtT0KsnIG9fVzzRIrGcN2lJ1A3ojWJnmDxIdnN8ny1pE3vYGjdOyWy
         ENXYWppCOyKayGTHqd/Cdp9zSt3TZBdpOLnH8dWCHx5ZJqv5ZscBhMpN0HobFtLadtOc
         fNpg==
X-Forwarded-Encrypted: i=1; AJvYcCXdsZpf3PaDKfLCOrSUU7bY+VlKBR8Yq+HJJH3Y8i/04Z8Oa/nMgcnsxXr86pbCWo/Q8T55fzKStOAHqj8gUqwn3jp4TAZBSdpdUA==
X-Gm-Message-State: AOJu0Yyykfu0F1h8Kie/AyA+umysqqdO9Vq5nku8NzBHLS7VSlL2OlOI
	BidN+bYG6/zAUE3u4Ke/Cu9p025M5XdUKeXixks4UNOn8dC9O2wPpJcC5seYCA==
X-Google-Smtp-Source: AGHT+IEOuEc8BZ3sbq0Aa1nPkexoG1gStEF1O3PcZO88wMSU3rcw8RjvnUna2Xk+VmRtqkQ8RN/+Gw==
X-Received: by 2002:a17:903:98c:b0:1db:be91:c5f8 with SMTP id mb12-20020a170903098c00b001dbbe91c5f8mr9235117plb.29.1708374208967;
        Mon, 19 Feb 2024 12:23:28 -0800 (PST)
Received: from localhost (175.199.125.34.bc.googleusercontent.com. [34.125.199.175])
        by smtp.gmail.com with UTF8SMTPSA id lc11-20020a170902fa8b00b001d8a93fa5b1sm4803195plb.131.2024.02.19.12.23.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Feb 2024 12:23:28 -0800 (PST)
From: Stephen Boyd <swboyd@chromium.org>
To: Lee Jones <lee@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	patches@lists.linux.dev,
	devicetree@vger.kernel.org,
	chrome-platform@lists.linux.dev,
	Douglas Anderson <dianders@chromium.org>,
	Pin-yen Lin <treapking@chromium.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Benson Leung <bleung@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Guenter Roeck <groeck@chromium.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 0/2] mfd: cros_ec_dev: Add gpio device and DT binding
Date: Mon, 19 Feb 2024 12:23:22 -0800
Message-ID: <20240219202325.4095816-1-swboyd@chromium.org>
X-Mailer: git-send-email 2.44.0.rc0.258.g7320e95886-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This is the mfd part of a larger series[1] that describes the USB
topology on ARM based chromebooks. These two patches add the gpio device
and DT bindings when the GPIO feature is present. The gpio driver will
be sent separately.

Stephen Boyd (2):
  dt-bindings: cros-ec: Add properties for GPIO controller
  mfd: cros_ec_dev: Add gpio device if feature present on EC

 .../devicetree/bindings/mfd/google,cros-ec.yaml          | 7 +++++++
 drivers/mfd/cros_ec_dev.c                                | 9 +++++++++
 2 files changed, 16 insertions(+)

Cc: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Benson Leung <bleung@chromium.org>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Guenter Roeck <groeck@chromium.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>

[1] https://lore.kernel.org/r/20240210070934.2549994-1-swboyd@chromium.org

base-commit: 6613476e225e090cc9aad49be7fa504e290dd33d
-- 
https://chromeos.dev


