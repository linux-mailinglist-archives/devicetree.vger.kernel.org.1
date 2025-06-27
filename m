Return-Path: <devicetree+bounces-190370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DBFDEAEB8EF
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 15:29:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 48E193B780E
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 13:29:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC1312DA765;
	Fri, 27 Jun 2025 13:29:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rsBYYXip"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CFB42D9EF7
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 13:29:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751030975; cv=none; b=hawT7JEQpKrNkn8Gk+29Hlv4gshAYyE2zRwlBs87e7kYM9yyuVCzB7wEiQo5+jxfb3mLk/v3FLzseh0dbSLTDQY6fX7hAghNNG6kUtiGVWSSCiyMh1+Pkfd9Qwp+NvXZI5JWhqIFCFzfglS8oEO7YnghefNEw8I/jYS6ELiTzK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751030975; c=relaxed/simple;
	bh=2oV3N21EVG9NEmZuJ5omnfKLZjJInSpP6WwU9F4mZpk=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=nP6MJchbVvsZUKyEyJFdnQs7po866VnsFYOT4f5BUu0DsLcDtPI9QHo0tf7DmzWaSMWzhPZIY3W31FHMHU9EBHbZwkBtNZoWODE6vfIhm7+n58XwLmIHI4zEyahXxnGY70NuMnPRGSPWoJpUshVR/hr1WBK5fw23f4PVogXRwIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rsBYYXip; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-60702d77c60so4023090a12.3
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 06:29:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751030971; x=1751635771; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=N2cruWPjz3gexVrRlJMt2yY2YOmBkTyGxfEJbYUktqI=;
        b=rsBYYXiphzUOQsbZBDgtPQ0Njfhr6BqWX3mnspQd10zuUNRlPnFDOjhWpqkr8fGmtR
         QMOkEy6ozIp5M1baudXkiY0fNWJkwkmQN2h36w7MalDQXhCvDFtm4eLMM9sUCim9NHPC
         hrAtZzDuzzj6WItwDs7Eufdez08apAxzKaWG4A92w9dlULTCK9fR6TDpmAN4WpAr7amX
         TEx9rWVP4Er/lHxgVEsy97d4ebln0jpjnrKK7J20R4zFUnWu3FE91oxxE/9B+glMTVgQ
         T8YYzQgHwiM97SsGBprUlZuWMd71zNndeKdmZDoJfpYV3o8W5Jb4axEIO1Y2VDK81CgK
         Clkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751030971; x=1751635771;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N2cruWPjz3gexVrRlJMt2yY2YOmBkTyGxfEJbYUktqI=;
        b=ZfKY4KRFBUHE40x6PFpWwFbEgRMuEZO89dc1VWqUdJ09e888Gx7qW1i5rKo7QNcdVy
         7E1yAhuWl/0S4b1Y6wytkozCSgJDv0PW+n2ZSEpDQXR8WV2gVOfVWOz+yewep28sVFpC
         OH5z3qa/y9NIgqtpyVoPldDapTEMzH1lWACjXLf48OvTJt9Z54abG1UP8Wgec7FwIp76
         3Rc9msXw1/4Ln4Yf5W69JZQv6y2bR5xt9SEC9inJbXiAFZXt7pPztY3QDt74hltMuA0x
         z5zy7EyA4m0vTqrfB7PFmJEovGFGQqLqXWkp31vgyVpfETj8O6pZbbQa2BnJKwHj9RQa
         LD9Q==
X-Forwarded-Encrypted: i=1; AJvYcCV2hJ9b5R1FSSkbqtwHiwZQxZF8b1//3uKpVud71MoEaMsl5PbpmHOK7UzvnpYU5fE++wpa5v5yDWXU@vger.kernel.org
X-Gm-Message-State: AOJu0YxNcjEKXMa223xDs5DQOcMpBoJmyFJ3LehfSi2Um2ZzrmFEV/WS
	opFZLpJUqFAQYg3+T9zhw2l1CROaxgZBODclrXxNOnptilmFM9CdSpq/S0a578lrgew=
X-Gm-Gg: ASbGncugzuEHzQQwEmkqOpbwgu2jkRnhiI1wIJi8qLzxl9w3qPT3oQ2nLKzLqI1L7GL
	BHLaFPtE5aKQTRFJNrDdBe4YXyDg6+KiqJtjjFutVmH7O0LTTZEKKWJgmKtFuOYFLmGbmV26Lf9
	H5ezvOMRt8JTgGgqRA0I06eUGzlUQR2IhlKavOijT/E6g1G55aNqZ5m55Cf/spiNqx7/HWKFpr9
	MwU9do9P4SFABwyS1XnUmB3BSEl6IwAonq99TZI6mFJrVn8m2ZPxVO8J9ove8Wn03+m+JAGZ9Ee
	b7Kr04aOLyMvYOHQKYZ5J4dm4bmyOczm+frjbgjQGHlALet5qEB1uGh0KtWwvMlPvsrLgwo/MeT
	OsdixLX4vsvX4rHzI7WUEkC/NQUzwkT3fqjuUp9y1rjfOmGWrHCMRx5LJ
X-Google-Smtp-Source: AGHT+IFZK5c46HhXnjcsG+iKu4lVg84Jm5gZqBHYsY+oJqop8E97nfkHet25Wa24z6oqjQJtzHQGZQ==
X-Received: by 2002:a05:6402:40d0:b0:607:4625:98f5 with SMTP id 4fb4d7f45d1cf-60c88e58024mr2569375a12.23.1751030971492;
        Fri, 27 Jun 2025 06:29:31 -0700 (PDT)
Received: from puffmais.c.googlers.com (140.20.91.34.bc.googleusercontent.com. [34.91.20.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60c82908297sm1462702a12.26.2025.06.27.06.29.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jun 2025 06:29:30 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH 0/3] gs101 s2mpg10 initial enablement & reboot update (DT)
Date: Fri, 27 Jun 2025 14:29:29 +0100
Message-Id: <20250627-gs101-reboot3-v1-0-c3ae49657b1f@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIALmcXmgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDMyNz3fRiQwND3aLUpPz8EmNdC+M0i2QjE/NEg6QkJaCegqLUtMwKsHn
 RsbW1AGKIwG1fAAAA
X-Change-ID: 20250627-gs101-reboot3-83f8c247a0bb
To: Catalin Marinas <catalin.marinas@arm.com>, 
 Will Deacon <will@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

This series goes on top of krzk/for-next commit 62cd64f5b915 ("Merge
branch 'next/dt64' into for-next") [1] for the reason outlined at the
bottom of this cover letter.

This series enables the s2mpg10 PMIC, updates the DT for Google Pixel 6
and 6 Pro (oriole / raven) boards accordingly, and switches these
boards to cold-reboot (instead of warm).

A cold-reboot is a bit more secure than warm-reboot as e.g. RAM
contents will be wiped, and the bootloader will not assume the HLOS has
crashed (as it does with warm-reboot) and will therefore be ready a bit
faster.

For cold-reboot to fully work, the reboot mode (i.e. what to do after
reboot) needs to have been stored in NVMEM for the bootloader.
Therefore this series runtime-depends on the Maxim MAX77759 nvmem
enablement from [2], which was applied to krzk/linux.git (for-next).

Link: https://git.kernel.org/krzk/c/62cd64f5b915 [1]
Link: https://lore.kernel.org/all/20250524-b4-max77759-mfd-dts-v2-0-b479542eb97d@linaro.org/ [2]

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
André Draszik (3):
      arm64: defconfig: enable Samsung PMIC over ACPM
      arm64: dts: exynos: gs101-pixel-common: add main PMIC node
      arm64: dts: exynos: gs101: switch to gs101 specific reboot

 .../boot/dts/exynos/google/gs101-pixel-common.dtsi   | 20 ++++++++++++++++++++
 arch/arm64/boot/dts/exynos/google/gs101.dtsi         |  5 +----
 arch/arm64/configs/defconfig                         |  1 +
 3 files changed, 22 insertions(+), 4 deletions(-)
---
base-commit: 62cd64f5b915617ea7978205b336ff21f0801c95
change-id: 20250627-gs101-reboot3-83f8c247a0bb

Best regards,
-- 
André Draszik <andre.draszik@linaro.org>


