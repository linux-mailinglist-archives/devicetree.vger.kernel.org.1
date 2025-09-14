Return-Path: <devicetree+bounces-216966-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 75FABB569A8
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 16:18:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3C9A1179700
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 14:18:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A90D20102B;
	Sun, 14 Sep 2025 14:18:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EYr1itAM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D40A1A2630
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 14:17:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757859479; cv=none; b=CrUbkGhp7Ip7JBpQsiXU0QPTHz0eC/xSXxJPBoqamfue06PXw6wrKIRSycfX2vpeVM4fbnrEUPoWOipVvWPBqJFdwAryQAKmIB+1hSnNUl+9rqXcw7cQ2q7k8w/oQV0dRqb/vMyu5mjz7xJdR/7BJr9jqZ8WG0W3TDsmr2xI5J4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757859479; c=relaxed/simple;
	bh=oanHDB/HU2SsYAo3QKajuMOnq/wtBoc5Vph6yvBts6g=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=e4nWdeAl5d+YbpbAJ6oVK31bKMAudmoNxAcWSVKYdlohEOiLvLlRoWTcdUNI2MXtRWmqIW3d3XyeJ4FFJBlyasUpFxDo2Q5OCDj9xpqu/iindy/T4bCeIMgtNUQfjrR91DMqRsSSAz1/zVYaXU2APARlx0omXvqngS6xV2omIfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EYr1itAM; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3df2f4aedc7so2190721f8f.2
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 07:17:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757859476; x=1758464276; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rsUHVkzZaZp36viUnZ0K/EbyNwm+EVEnUQ5b1FzHDOg=;
        b=EYr1itAMOIfdrCpe2HS62umcPEJL6+uAcVycupbYnWKiGsxhiehGGIN19MMcP1ricl
         mgJJr1nScQRJ2FN2KIFvX7kODSpUEE3KvK141IJWVR0+AkoWVTdwqlH/pxvKr3c1vxsh
         U76N7XBdMtMlZD5tgmGk56ybae8SKd/FMTBpBSN40edAb9g/1OcPvtE7wSvtSVbnETmY
         3lRLyMVatgLoafCu6vTq77vsWmTdqZoh6mCHDI+QHVD1EQz1Vo95ITxs7nDQ/Hgp2eUI
         Hf+hynf7ABYoyjg8oSMJ0VWqst3yA/auB9nAa8PE4o/wnA/ND/rMB6VpUZbbBHj+lMGJ
         U9cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757859476; x=1758464276;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rsUHVkzZaZp36viUnZ0K/EbyNwm+EVEnUQ5b1FzHDOg=;
        b=obRpYJ19SSuPybS7XQiInGaQ9TYYS6iX38zwr3nkCMjAiJfhMaoHqTaEKvcUZG+1CK
         lk41E6ZMqPRSTW4gYTlf3nJYQhoo0RRt2XirhhivQTkoAbm1iK1XJR34Z1ibciI8NNM4
         D4RcUizXZU8RS8RA9LQyWMosCyY+f1E7MdqW24DUxJubR9QESpzbD5+fe6SgkoSH0LzV
         pkpRSqgawmcamXziMzQ67/pdo6/8MgslGIPjjUzucOEwbVLcxrAoFkhGCi0ZD3VTl6TM
         /aqwg4fgKvR4tVngKeft5pbqZwMz0n49EJPz00GmZeNgEsmelU4Z6hA0ssXmCDVwJsLA
         uDCg==
X-Forwarded-Encrypted: i=1; AJvYcCXL079v139kU6/Ges+mKeJzslNszLVgObSZcTnT5TeDj4jeEeCJ/7ug+pa8LsNF+bMJEj+WM8PdyEkI@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7Bwd9CDCDxnPF2jiJ8Lz5hAsjqvadrwnP3n4gHSEfPANDrQUv
	GoN7EynRh0ZxH1RGbI0PtP6C242qVV6b/dKoq4l6hcIYokAyL7D7cO+4
X-Gm-Gg: ASbGncsKSJymsaJzBXWeD+dUUaFHVyUBrXUKqBxx+2OjLVvLJaVCOeQhCaLu5KBSC3v
	LnNKoMXxVnm8hOLVyHVs9FXRMxFIPYTwLVk4hnk3NzA1kIzPopztk4kXQBy0TUHqpeV7uzNWw+Z
	xoKHCPzOHrlyp7m0Y73nCjvgEef8x2xvZJ7BpjgS6uw8ssdk0blkQYO2K7t96eo1mmk9wGvo3rJ
	DuWO5gEgRY9MjOHQ0JeFzM4IJAXHh/ah4GP55jaJ0N5k6GulhRVzWJrCPGYfr0gwM+ZjKQzhtlS
	6QrIZ+Xdq2Pvh5IGeKDLVNzAu9JlisIhzPnmfddknCZ8P/B/KHuTbhBUjuu+mVL/aV5ghPpzZV6
	x5Gry0mIcnwmhoGBBt13Z4WDQjYPDsJ8CstulE+MF+FN97e+UpTmq1sh9XsHiqp05wUdh5s1U38
	wgihB0nDLR
X-Google-Smtp-Source: AGHT+IG7SrhD2n8YR6eRCNsiBeL2SRv1fue30YukLFK37eQXkOEUvQbSB53x/xhqHBpjrKKhjtKgHg==
X-Received: by 2002:a05:6000:270e:b0:3e7:9d76:beb5 with SMTP id ffacd0b85a97d-3e79d76c25emr4400712f8f.14.1757859475877;
        Sun, 14 Sep 2025 07:17:55 -0700 (PDT)
Received: from ivaylo-T580.. (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e813eb46f3sm7319270f8f.23.2025.09.14.07.17.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 07:17:55 -0700 (PDT)
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>
Cc: linux-samsung-soc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/2] phy: exynos5-usbdrd: support the exynos8890 USBDRD
Date: Sun, 14 Sep 2025 17:17:41 +0300
Message-ID: <20250914141745.2627756-1-ivo.ivanov.ivanov1@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hey folks,

This patchset adds support for the usbdrd phy for exynos8890. The SoC
features 2 dwc3 controllers and 2 usb phy controllers. One of the USBs
is used for DRD, whereas the second - for host. The host one seems to
only be used on the MV8890 SBC, which... I don't think anyone has,
really.

Code from this patchset can and will be reused for 8895 (I actually based
it on my old 8895 work but decided to upstream it)

Best regards,
Ivaylo

Ivaylo Ivanov (2):
  dt-bindings: phy: samsung,usb3-drd-phy: add exynos8890 support
  phy: exynos5-usbdrd: support the exynos8890 USBDRD controller

 .../bindings/phy/samsung,usb3-drd-phy.yaml    |  25 +++
 drivers/phy/samsung/phy-exynos5-usbdrd.c      | 210 ++++++++++++++++++
 2 files changed, 235 insertions(+)

-- 
2.43.0


