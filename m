Return-Path: <devicetree+bounces-211159-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E0D2B3DC30
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 10:21:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C2B0A1897661
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 08:21:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC3182D73BE;
	Mon,  1 Sep 2025 08:21:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="f/CcCz6N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B138233149
	for <devicetree@vger.kernel.org>; Mon,  1 Sep 2025 08:21:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756714864; cv=none; b=HVxFQDN7M9qCa1JbSzMpNETSuibYkASEKXSIqC6iU5xyQ7xXqo0AgvlKx6XwQqZFLlKWdgXxLnzS3S3iRNu6Qp4rarGQ850krnt1QoqWE4AU35ZaRipFhDWnEMAQXLlH7cS5WKJylMvnkT1iIzG5ZD1IhtDCE5DJx2aCkWRZW5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756714864; c=relaxed/simple;
	bh=Ey5r5LzZ5mqJQFa5/hwzZOTkBASnqgBYv8P5zjbafME=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=P6Tjkf+KDbeQUz9ED6iemeofiXmZBkzuhgZOTIko+Qf2BemDC5Tj5n+ny8go99reKTp8roa/6Ujsd3A4o7NShFbBTINXNsF14bunEtsFtR3nxkBcEICNW+35L4HTTkSWTdcv26f9xKq+6eEDYgBVbfKY+q5UYWEPHxU8jz5Q+Tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=f/CcCz6N; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-45b86157e18so8213675e9.0
        for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 01:21:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1756714860; x=1757319660; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RDXy5RfngT3BXReqDhGp/CaxOwU22Ty4Zht0U5yrbxs=;
        b=f/CcCz6NIx8iSV6esOMPK1nz8CnQddf2Wi1Q0gtBUAVp/QJ9ZAiS5hi0IwQWeDS9iK
         VP6rtGEs033pEnlCozwntYiiCzRaq8lQrD4hm67MEg+Lk35Bm9EWi00QB5hLPYCMKwJb
         cuuHGUWsy2pNcj+/4MFKuhkqG8Y/JNcyz6JQF3vW8J3HOjMX6PN+V9CWIarquHLdn8bD
         Dcs6hVDV+jBeT0qgWaAsfDL9c6oeFTx9PW0px3feQ6H2EcAcS+8ZcU94KMIAVrNMecXe
         1YVBsomdGnB2LJKo0iZRcC7zZy+I8VSP395+xDLIU0BQ6Kx9bIiRvyk74EPKVf8YV8+W
         kjVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756714860; x=1757319660;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RDXy5RfngT3BXReqDhGp/CaxOwU22Ty4Zht0U5yrbxs=;
        b=c9tA6IHrS+p0hI/rsmQdizhTssW22rAUZXGr+/xe9seaKl7f0sKAkKBbXAzkWypuos
         /xhV4ZF7Hm6avRkZL78pzP3RIT76/pL33ArgzhUyHv/9h3tPbyP38RP2IHFyknriffuy
         Nz66bo/iLhAE/wHdTKy12jqK5syAYflt4k5T45lCUhordmI9cRjyzaW8GSRXOYUiYT5a
         g/3ecf/AoQnGZgw6eqagAQXZp4oOnSpuM5fj2vM5CbwlxI8TisevGiB0zB3Ea1Vpr5rB
         RkavNJgZK8uszZdumYrb3aLKqreI4CTUvCi4IrDFeuDuocoZzWYy5OB5sEeo6rYu0A9g
         5yGw==
X-Forwarded-Encrypted: i=1; AJvYcCXXihaM4Xtvbe7Vx901WFlAZUBH9Xcyn3LvKNxveal6gaSvx/kwXUj4jR6ivL3heG02w3iPg65O78V6@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3zwiS+qe3gUj205RVoh5XaKMRpqM7ML7DyerX4gXXIWsThBrV
	9RXCe8ah/XVbOyTiGNLYrjntzscDss8+dx07/bn1LtsuPhHHjSMhNVP3M7dHF5ZE9Q0=
X-Gm-Gg: ASbGncski6pzyltmvzApG4eiEaqnGcw6VXV+mTr7zCCfBEtI4WgemQuRNZII3lRVjuW
	DnxdPR9BnzlW8aRL/OTi/qoBfN0wJJabsDHoFlL6tXOV2GDf4u0zqLo9wFpNkVjEBWRWW+Z8ra/
	N0YRh5Hbd9Kubll+Bb71c1tmflP0mxuxAlPazWqu073YPcjFfDfj6egPcbc/2aEUGyyJsE3Bu6Q
	zGIf+4cf/XKsadJ31vFITRgQV6K8pwB+oIjr1nnZE+yx8kYuxtb/5ibA800HoptKMtgBT0oMRaj
	VMRvst7gciMkqRTxzhnpaVuCYaA+xI4YnZuwn4/qPyfHj3+JOlVjtnDr0kSN/hgAY7ukwrxVsXW
	eSTl72P5XmEQ+2hEWWI1zdt44joSN9wBiaBS5qrGeVV1J
X-Google-Smtp-Source: AGHT+IGofJVjCphxVAkG9bd6t3NPeX+I5lacWK7xENnvALEAJUtz7D2qJ/sUSwpC4SDSpnSpZ8DDsw==
X-Received: by 2002:a05:600c:35ca:b0:45b:87a6:cdb with SMTP id 5b1f17b1804b1-45b87a60f9amr44731385e9.14.1756714860306;
        Mon, 01 Sep 2025 01:21:00 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:fab9:fd92:e2cb:ddcb])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b7e8879cesm145166475e9.12.2025.09.01.01.20.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Sep 2025 01:20:59 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: linus.walleij@linaro.org,
	brgl@bgdev.pl,
	thierry.reding@gmail.com,
	jonathanh@nvidia.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prathamesh Shete <pshete@nvidia.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: [PATCH 1/2] dt-bindings: gpio: Add Tegra256 support
Date: Mon,  1 Sep 2025 10:20:58 +0200
Message-ID: <175671485425.37050.14912737741264685322.b4-ty@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250823055420.24664-1-pshete@nvidia.com>
References: <20250823055420.24664-1-pshete@nvidia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Sat, 23 Aug 2025 11:24:19 +0530, Prathamesh Shete wrote:
> Extend the existing Tegra186 GPIO controller device tree bindings with
> support for the GPIO controller found on Tegra256. The number of pins is
> slightly different, but the programming model remains the same
> 
> Add a new header, include/dt-bindings/gpio/tegra256-gpio.h,
> that defines port IDs as well as the TEGRA256_MAIN_GPIO() helper,
> both of which are used in conjunction to create a unique specifier
> for each pin. The OS can reconstruct the port ID and pin from
> these values to determine the register region for the corresponding
> GPIO. However, the OS does not use the macro definitions in this file.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: gpio: Add Tegra256 support
      https://git.kernel.org/brgl/linux/c/eef6dcbc52fa83c392a2f4a52845f347b233a584
[2/2] gpio: tegra186: Add support for Tegra256
      https://git.kernel.org/brgl/linux/c/db12ee08726e55c8a1a70c2308f98d121d96edc6

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

