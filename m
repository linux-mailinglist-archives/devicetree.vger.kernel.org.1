Return-Path: <devicetree+bounces-135588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EA5D6A0169D
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2025 21:07:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CF266163191
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2025 20:07:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A2D51B78E7;
	Sat,  4 Jan 2025 20:07:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=purelymail.com header.i=@purelymail.com header.b="wGES/bLD"
X-Original-To: devicetree@vger.kernel.org
Received: from sendmail.purelymail.com (sendmail.purelymail.com [34.202.193.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7F5D1D5CFA
	for <devicetree@vger.kernel.org>; Sat,  4 Jan 2025 20:07:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=34.202.193.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736021235; cv=none; b=uRK1ewciesJ6+xOKv0v060ei7T2f5iYpnuX6RZ8hvJ0O4jExTKOb7meLxawiH7QxJFujYmHfPIPIgwTQREB9pQkJn1akIrUd6osLeSDMRzJUSTwNj8bj3Lnj+lX2sQAdRupnpD01cJy/AqtYqBdgAG0vPqZPXGVhq3P5Njfgg3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736021235; c=relaxed/simple;
	bh=V/nUDPrqehsYT2yC9Qo0YHujbwIxs8k3Tqn1Wb9VDTE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=eMf9kbBqC1jcxVk88xNPi05rhlVnUpEwIpIr1dXn3A/vc0sU7iLG+KqthLgjskc+8PcOdSz5/cqcP8eLmu+dCn9U4fAuKJ1gFZpbGq0xuWGBO6gVhBmUlnVvUJj8Mgs2obw1FQ0GXHclCF0wsjF9EC4RttCyiv5yqc/nPpJQPrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mentallysanemainliners.org; spf=pass smtp.mailfrom=mentallysanemainliners.org; dkim=pass (2048-bit key) header.d=purelymail.com header.i=@purelymail.com header.b=wGES/bLD; arc=none smtp.client-ip=34.202.193.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mentallysanemainliners.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mentallysanemainliners.org
Authentication-Results: purelymail.com; auth=pass
DKIM-Signature: a=rsa-sha256; b=wGES/bLDuWb3tSuPnT5lWt1j0C/PE9M/8w4fM4wxatWPGLejd4YlgCPDzEkb47TwbuwEquFXVlSxC9/UeXJIorV8w6AhWmK2edLKTuB/mrYaRO141a2Ja/UNKGS9bTlXD60d4MvH+v+JBjYwbvNXchu1uvUahJDlwhPcdxb/98C7a6eSRaDQIGuQkU4JShOSX8Ym4nDfQFXMe3Ct5FItmGs+8jhQIfJTbavLlfbAUhyuNmb8nWVtK9XtE1PFetWpTr2CmwD8FooZAjGmaqmb2VaoZ3J2vYkCtghcFYOg1Sj3MjfTfnjabR4PSqnNUw8fGSAzYzWBPb7++gr/6nw71A==; s=purelymail3; d=purelymail.com; v=1; bh=V/nUDPrqehsYT2yC9Qo0YHujbwIxs8k3Tqn1Wb9VDTE=; h=Feedback-ID:Received:From:Subject:Date:To;
Feedback-ID: 68247:10037:null:purelymail
X-Pm-Original-To: devicetree@vger.kernel.org
Received: by smtp.purelymail.com (Purelymail SMTP) with ESMTPSA id -1683504375;
          (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
          Sat, 04 Jan 2025 20:06:26 +0000 (UTC)
From: Igor Belwon <igor.belwon@mentallysanemainliners.org>
Subject: [PATCH 0/2] Add CMU_PERIS support for Exynos990 SoC
Date: Sat, 04 Jan 2025 21:05:55 +0100
Message-Id: <20250104-exynos990-cmu-v1-0-9f54d69286d6@mentallysanemainliners.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKOUeWcC/x3MQQqAIBBA0avIrBNUdGFXiRZpU80iDaUwxLsnL
 d/i/woZE2GGkVVI+FCmGDrkwMAfS9iR09oNSigjpNAcyxtitlZwf97cSdQGlXROK+jNlXCj8v+
 mubUPGeh/zl8AAAA=
X-Change-ID: 20250104-exynos990-cmu-b1e45e21bb42
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Igor Belwon <igor.belwon@mentallysanemainliners.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736021184; l=773;
 i=igor.belwon@mentallysanemainliners.org; s=20241206;
 h=from:subject:message-id; bh=V/nUDPrqehsYT2yC9Qo0YHujbwIxs8k3Tqn1Wb9VDTE=;
 b=zxHYCpPh2K1jFvPOnpsX72dwbnGlZ/N6TzwpwkPXkA1n9ypOs/OuRhG+K3ANsQ2kEd16SSA9V
 WoK/bk0Sn0eBhyxa9V7ruX+q2qgyiwvDbvwLj/tiUcG3ajwuu+pg+G+
X-Developer-Key: i=igor.belwon@mentallysanemainliners.org; a=ed25519;
 pk=qKAuSTWKTaGQM0vwBxV0p6hPKMN4vh0CwZ+bozrG5lY=

Hi all and Happy New Year!

This small patchset adds support for CMU_PERIS for the
Exynos990 SoC.

Best regards
Igor

Signed-off-by: Igor Belwon <igor.belwon@mentallysanemainliners.org>
---
Igor Belwon (2):
      dt-bindings: clock: exynos990: Add CMU_PERIS block
      clk: samsung: exynos990: Add CMU_PERIS block

 .../bindings/clock/samsung,exynos990-clock.yaml    |  19 +++
 drivers/clk/samsung/clk-exynos990.c                | 180 ++++++++++++++++++++-
 include/dt-bindings/clock/samsung,exynos990.h      |  21 +++
 3 files changed, 219 insertions(+), 1 deletion(-)
---
base-commit: 662de07504eff1a965b43a0399d6ff3fbdd6f7e3
change-id: 20250104-exynos990-cmu-b1e45e21bb42

Best regards,
-- 
Igor Belwon <igor.belwon@mentallysanemainliners.org>


