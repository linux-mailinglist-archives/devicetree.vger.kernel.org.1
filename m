Return-Path: <devicetree+bounces-223892-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5B7BBEB05
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 18:43:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 1B52D348F6F
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 16:43:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49FA32DE6FC;
	Mon,  6 Oct 2025 16:43:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tMc9fMnW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 134D81E98F3
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 16:43:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759769012; cv=none; b=SojAqc3+2D78l3ARA3jH0pEUNjGjXMOU1IFMR51aSjtxIHWjwPiuUwYct6MthSkftP6D03r34XBUFIme8n4F8Wjk+M8cNp10z49kHfnnUT1pxpCiymE+1iuwuH1IV2EtLQ0eTwzjIBhxNZPpOT39QM7dsbOzTqTC27yy3fbWLxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759769012; c=relaxed/simple;
	bh=HMtcLDEIKjq6G2Zgr0JytIoIw9ewVlt1cHK9VF+l//w=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=QljOfTGf5OQ2pd9SsWiwT6LNed8FBrCPHkLfD97ioPbimblMemvmxnWv5NeuQ7wNHfhgVDdUD0sX/0DEbWAHGfv3Hv3hd1wFN6wssj2R5SPVa5uM2GKS8VJEvEtM36lv6Z9JhsqCzVYUCuXvw4Axb4EVXihxHdUy+hxjfBpz7QY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tMc9fMnW; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-b4736e043f9so924368166b.0
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 09:43:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759769008; x=1760373808; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oKtphuJ/4di9yNIsz6yNlkrtQKgCMc1BLXd/ATWAWto=;
        b=tMc9fMnWJiszVnxWCzpauPGyIxTsvBolcKNfpM2X6yK1w79upYCSF4SuOdm78GkLbl
         8uTaAwDZziqJrKughTM1EUR7cR5ztBLGVBlcTT1iza5Tvt4l+ZC5ENf2pjHYvhqv3vub
         7Iqcu3KhnuCzkLuDSf2s+lARm11qdCUgqY2AjXic4HhKgHeA4Y48MkQ/S68k3kMbFoCl
         Ha042F+gF4iJ3wHFXtz2lMrFMWH38w+6JpSkqGIVYZTkrSwfK2+5h1dmqDUHA4E8Gudn
         eE+a/972ST2e5F01hWkVBbZR75stysD1C33NDz+paYOYmFYzBZuRLz1W386bsZ79QmVl
         7bZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759769008; x=1760373808;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oKtphuJ/4di9yNIsz6yNlkrtQKgCMc1BLXd/ATWAWto=;
        b=jYyqAYOwgy5bxsOZWpQNs8eH4fL1eD2xQFSdmX+Juk3uEEhSPw5E86SbAeplZd+e47
         GCIH/l57fw9/1de796FNP9flSg4BLDD4PQCEowqwMHQRZWPqEBLn0TlNXgA2Hr4XBAvO
         70LpReT0itY8XGBgdcRqanmJJoksmtphM3nxBSoK2mzN6DZlrN2MlI44Ioh5Z0hHRSMT
         KytJK+mIKTX4a70qRd/Voi1O+FFAy8XMh7UWvWW8dFUL1AaW0O/yuXj5P7qCt+tacFUS
         ljyeRkZzZAyoLNj2xkEllyHdfWUNqBd5vLTFTRcBt1yuTQxJwK36PVi3EGbbmB3r8goY
         VO2w==
X-Forwarded-Encrypted: i=1; AJvYcCXM1Pez+KwTytLue9bu/c8/akqVcG8BEbMdn4MfS7p2mnbq6iMhRdcbBO7UvOsOgX8MeSoyN5oNa7H0@vger.kernel.org
X-Gm-Message-State: AOJu0YyNxEnVYAqs9aRdrzlK7/sF4UmqcWifXr5AcUgszPuZlhVF3Eya
	GEHR6Fgs+i+RuKYH/FqCJJjWwKvZPdXmLMbZkxfKYhu7UtbVF0fjnKQOfie1iJ4r6kg=
X-Gm-Gg: ASbGnctKlEIfvTdt+mPibncuCj1UKqIQDNasTT9rjiIvrQQ7Ra7h+5G/0Dt0kO6T7Ot
	4i5E9X+WmPNFSGGJsyFGrOHGiYJNoR3nLhFRJ2DU1OUXQ4Y9zTQ7BViaDWMA5ELzpaC2NO7gUIB
	Leed/3AqflIpWInwJP5oyjUJ7Q5SZ/g+yHrIj9bfiegYWoLnStvt8L3rXVmzzwOGix0TPlcSTTL
	4QnAb+Ghdt2c6zq26El0gj8LAd9d74/RiiG7dpsSC/jAKZ3jzdHr0OkSNA2d8mWb/k7eH5ZdPcD
	N3PHGxG/gSMqYNMH0wCovTg45TXYIu3gUwhGDqo1WOZM87pdgQhAOXLO8M8xZD1JxKe3g4tW+6a
	HInjU4oulYHaf+O2rupDr5KMNAS3KW27+9RKgFKfCVe12R5vzQCNdo/Ryen5E9K0ackY5WaaPR5
	H7SKBvnR6+ekBbC5JsnETfdZ9vW7cm9d0MTJ77WYoeOcUUXLZXUSc=
X-Google-Smtp-Source: AGHT+IEH9sBJd0VNAAJtz9rRu8u+k/yXhel69FaA4JYwSprBvbLGJFT33oMJuv5fmnK6KbnU7ExmwA==
X-Received: by 2002:a17:906:7951:b0:b44:7c83:cd9 with SMTP id a640c23a62f3a-b49c47accbdmr1839696566b.40.1759769008357;
        Mon, 06 Oct 2025 09:43:28 -0700 (PDT)
Received: from puffmais2.c.googlers.com (224.138.204.35.bc.googleusercontent.com. [35.204.138.224])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b48652aa01esm1193841866b.2.2025.10.06.09.43.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 09:43:28 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH 00/10] pmdomain: samsung: add supoort for Google GS101
Date: Mon, 06 Oct 2025 17:43:26 +0100
Message-Id: <20251006-gs101-pd-v1-0-f0cb0c01ea7b@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAK7x42gC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDAwND3fRiQyBZkKKbYpKSbGmeYm6QaGGiBFReUJSallkBNio6trYWAAe
 OGYtaAAAA
X-Change-ID: 20251001-gs101-pd-d4dc97d70a84
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Ulf Hansson <ulf.hansson@linaro.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

Hi,

This series adds support for the power domains on Google GS101. It's
fairly similar to SoCs already supported by this driver, except that
register acces does not work via plain ioremap() / readl() / writel().
Instead, the regmap created by the PMU driver must be used (which uses
Arm SMCC calls under the hood).

The DT update to add the new required properties on gs101 will be
posted separately.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
André Draszik (10):
      dt-bindings: power: samsung: add google,gs101-pd
      dt-bindings: soc: samsung: exynos-pmu: allow power domains as child on g101
      pmdomain: samsung: use to devm_kstrdup_const() to simplify error handling
      pmdomain: samsung: convert to using regmap
      pmdomain: samsung: convert to regmap_read_poll_timeout()
      pmdomain: samsung: don't hardcode offset for registers to 0 and 4
      pmdomain: samsung: selectively handle enforced sync_state
      pmdomain: samsung: try to get PMU (syscon) regmap
      pmdomain: samsung: use dev_err() instead of pr_err()
      pmdomain: samsung: add support for google,gs101-pd

 .../devicetree/bindings/power/pd-samsung.yaml      |   1 +
 .../bindings/soc/samsung/exynos-pmu.yaml           |  53 ++++++++-
 drivers/pmdomain/samsung/exynos-pm-domains.c       | 126 +++++++++++++++------
 3 files changed, 145 insertions(+), 35 deletions(-)
---
base-commit: a5f97c90e75f09f24ece2dca34168722b140a798
change-id: 20251001-gs101-pd-d4dc97d70a84

Best regards,
-- 
André Draszik <andre.draszik@linaro.org>


