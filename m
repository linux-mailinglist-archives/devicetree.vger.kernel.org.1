Return-Path: <devicetree+bounces-209364-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C61EB36699
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 15:58:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 787FD8A80B8
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 13:47:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 647E9350D40;
	Tue, 26 Aug 2025 13:46:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="zbSI7+ng"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B0F7350845
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 13:46:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756216012; cv=none; b=rHJGc+mPmL/t5toayqdaLT5WkHLIOBV7TbJMOxeADm5JyHDnKYVWzQkZm3A2f5JB1SDIGk97axpV8Wv+nmSzVRomLWnFPvpffbOxOEpZnfZ9K6xm6cqIY9m1oEqZsfkZXT+2+f3TXXmDBhfwg1M/9nGHMP8hmVnnYqkr/Uvw4xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756216012; c=relaxed/simple;
	bh=jJUBEbotMJc4/7tNagC7dFAxP/nGnFXGjRAa45Uyr30=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=PX+Tw3icoh0Fe3PJbgLZneynuWc9S7B/Yl0SQPimzlgedXXp+NsggcsMmAF8axlfQ3kix0ry8NrZnb0OMLl5VHJiw5YrOGwS0rNptq3q5a6tpsXEd+dAyZ84NV0JRPJdeGEobcPGmI7FUE2m05CR0u3vdwAa4Mu9jPnks7GyfxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=zbSI7+ng; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-45a1b00797dso45766935e9.0
        for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 06:46:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1756216009; x=1756820809; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0bgIZihST00M2CtyLVGqxcGCSa4PCOhuFDLrOFCRzds=;
        b=zbSI7+ngDgAeufBxY0YA69pZH64+vtruMVXY0fyqR9bzvirWkCfc8fpqQYgktIN6oL
         TCzAuzfYTPECbMcualgYwgOna458I1w9IE2MbLNL40qUMFv81WHluAs9VNLNP/ChKn5Y
         cFo0dQjuvvwYYa3C0zitcJgq0yQG2YTihrGUxkVrUert1jGoPehvr+JsE7w/TUi7Veg6
         zxxWKj2+/yhJ5jh5Qi9Y3x2l+ETTRFgjwLt4ZBNOEbXWHOB3lZUV1VideovXGTB+jowx
         /ExQANvRuoH3qrqrLCnD+UINhA3k5UMmLU1q7HAjsUPH9Dg7D3gDElg3hgrGpumwxT/L
         8maQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756216009; x=1756820809;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0bgIZihST00M2CtyLVGqxcGCSa4PCOhuFDLrOFCRzds=;
        b=PYB00EgPrcdFWO2e3SSk1lh/dcvRZ4gbd14aSV0zgmX1Vf+ZvITxL3Wkeo60CFLF/v
         PFajo6SUdRwc1sNccyi0EYS1FNTGI0mxXMleUDX+ryTQwbTbjHute/WieFWpWYGebQ3b
         CxJc2Wh0M6WKT86xEW0aWLZqutbLgHcqlIZ/9gLED3MFnX9T5OsLQTKPc5BgV3wdjLa0
         vm9eYPC2hzT7YElMmxFYW2gMavv25Nbt4SmVtIzfftE9FvcNSFHpg238nQfBjATkodwD
         OZCK6qbkcNdr7RzlULRAgig/r1TeSRaX4ZBywjVgz2TScCHuS6cGvU1DRbj6zSGfplqd
         iFhg==
X-Forwarded-Encrypted: i=1; AJvYcCXKOFSeS6q9ZnIlqPBvYC5PsiJPITotIlS/TA15L4pXQjcydYmuVyznM1Q66Cj6PbaRY26ga1Bqi9+L@vger.kernel.org
X-Gm-Message-State: AOJu0YzsIFzzOfloLH8JFOll2mwVZydvkUiyx5nmhxgi3WiwBQivwELH
	x8dnYAP6ybbCxfvOU70sBAbFok8w7R4omMb3ChF4P6O0l2QA9MOcreO/iQDRWr17MMU=
X-Gm-Gg: ASbGncv1Z/T62a8A3B/XCY4afzKifnbl1eEjgGT+dPNh9nxGT6tZ3i9pZsxIAl+dyOK
	iPYOP09G4wvk+F+ehM4ojda0gsR2HIX7bDJBchXvocJy1i2MZtSYvQJZ9+rCNaLjVrV4oX9QUnX
	WB9ZhSMCsxpK7EzP7R1ggZh+ymHjlpgvududVZDfoIb6JKcUvgAcvg4gDavs7FFJ5PxmUhX2AMc
	rVRC3mzK5L3bPQpO+2D3GY7DdmcRsT8a6YT0+Y57Eosxmy8GQPTgEJpTBMMYyB7qyMgr5XKwAp0
	Mv/U3b7zv6X+fVDPJNmtkbDSZqp7jK7Cr1QdbYK5h9eFLKRNEdZeVU/wpen5M8m1pAhQmAmM0mm
	3mWCIuX4UYx59lh6kxkmJ+Mog
X-Google-Smtp-Source: AGHT+IH/vtben+jS8p+rxXWOqr702i8ga9ZchZdA6ANpXGCersQKl3QS+kocMs00UNNWRezs+Fzb3w==
X-Received: by 2002:a05:600c:190e:b0:459:e3f8:9308 with SMTP id 5b1f17b1804b1-45b517ad4bbmr141075015e9.11.1756216008734;
        Tue, 26 Aug 2025 06:46:48 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:fed4:79fc:9440:6629])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3c7117d5b10sm16231162f8f.47.2025.08.26.06.46.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Aug 2025 06:46:48 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yixun Lan <dlan@gentoo.org>,
	Lukas Wunner <lukas@wunner.de>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: [PATCH] dt-bindings: gpio: Minor whitespace cleanup in example
Date: Tue, 26 Aug 2025 15:46:46 +0200
Message-ID: <175621600512.33327.13991412012918423626.b4-ty@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250821083213.46642-2-krzysztof.kozlowski@linaro.org>
References: <20250821083213.46642-2-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Thu, 21 Aug 2025 10:32:14 +0200, Krzysztof Kozlowski wrote:
> The DTS code coding style expects exactly one space around '='
> character.
> 
> 

Applied, thanks!

[1/1] dt-bindings: gpio: Minor whitespace cleanup in example
      https://git.kernel.org/brgl/linux/c/604642fc148b5d98fbe5f55e4c2688f9ee0b5868

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

