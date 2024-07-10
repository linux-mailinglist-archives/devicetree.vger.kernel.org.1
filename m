Return-Path: <devicetree+bounces-84689-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 92EF992D2BE
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 15:29:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C4EDE1C22664
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 13:29:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3605D192B81;
	Wed, 10 Jul 2024 13:29:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="P+eqcgPg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C2E1DDC5
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 13:29:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720618160; cv=none; b=jDAee+8w31JDbqYWRpKV/zarAY26JcxUxzPORNI6ntvE0fSqULjqy0/DCkxROzD0cmRh1lWNpsMWJv0jY8A3QsmLpFcQ4NEF71T+p6FEHnvCMVASVU4QCdO+bEavE8prhtEL5MlWHa+ED1lbwe9Owjo6d4W/pk7n8x1z4qsMTTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720618160; c=relaxed/simple;
	bh=hmDdPq+Ml7N5KSGIoFc3upULiXo/C6/HEWo6DoDhM3g=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=lbXXv3gUvq7WqrSrmDufmtRugvqw9utZHrQHv1IZdoyjJlQT0WCyp2Z288n9ItHFiuSwFUEOMv8UQ6lUoHV16aARaJslugeHqKMLaQNigfdEE9ucvVd0NsfFZsLseLgD2azLF/pKG+NZBN0MoEtl/E3p6rEDHD/4tJIGOvD3vtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=P+eqcgPg; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a77c0b42a8fso127232666b.1
        for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 06:29:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720618155; x=1721222955; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fqkUDQRLOhVOBxGwhtG+94Ov7Hs2ibJxuA1/lSFMk8I=;
        b=P+eqcgPg8DN7B2J1lsAezXzy7DoZV+BbKEvMt5gR570V2VqXnvYylJ+/0zwEt57OAf
         9s51H5Zc5t7r8JWDjuuF4pCJU5hsaTzPxle/5fSm4MV9zRCwYEO51FiBvvpj2nAbTp80
         wQfkp0+2uscnFvcH3MD/wBC7AsoVUgO+vx2L0E/qM+fDkcBIqa8Wi8exYlltqhJOaILC
         eKA3f/z/cVcp8dZlwBdxLb0NniZYevZVC76TOYa51cZ/tibUQO3hxg0+ARZwZEVpz1Zo
         93IY50Mi9JQMwZqqEfBaM7j84sXetO9tTGHShf+HP3Tv+Y1XHuSu6hwgtK/Kw7EmL9Vu
         PFEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720618155; x=1721222955;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fqkUDQRLOhVOBxGwhtG+94Ov7Hs2ibJxuA1/lSFMk8I=;
        b=cEwk3eiK+x2qJRSrxLonBn/p3H3e0Nlus3o1cvheIEgWzZHBN8zAjGUQlIurMU41ry
         fqenQ+J6izDyZxdTKblVnlq5GdUuDDhUY6KpvsueuRF21HPfCHaHJDQ/XO3Dv3rEMKpy
         GDU7A2HBziuY0p8JYLG701GwXkZRnNbHJjL5gNB6tCcQiP/Zc7av0bC3jKj/K4smZGJM
         sC2vQfOYjF5mOEYwL6B32Lpd5Nf1fHuU8qYkl3JwDp6Y+xXzT9K+bJponolQfdESfzOR
         yrYgg6MN9Qb9UKgvsxkhbQv6WVMJlATp9bK0MomZZ4x/+l+IpuosukXjULX/euPMmPl8
         PpIw==
X-Forwarded-Encrypted: i=1; AJvYcCUofSF3O6flhNHZXHm2D1WQho/0C/jNzQ45Z4aIG4k42pJAIi/sjslIMU27MgYWYVcMwORxOLw20p/tbG53bFQ2JzdFzlLgIoSCPg==
X-Gm-Message-State: AOJu0YxvYa2HOlEGJV2dsBXpo0gCck1aaeO44fm5qvmcbneRflno2ieV
	5e9tXbjpmgGrD9KrfqmV2GZIO3NG70BmvMXji0Q8cxgd7RcV9HBT2r+TPWDZwbc=
X-Google-Smtp-Source: AGHT+IHSy01Wy6Dt26CFpsV4fBDVFgMdKfVhr2nI8OmMjxpgSQCjsvn8YeKN5v4jdEUlosAgoIYCfA==
X-Received: by 2002:a17:907:9710:b0:a72:4207:479b with SMTP id a640c23a62f3a-a780d205cc9mr468422466b.5.1720618155461;
        Wed, 10 Jul 2024 06:29:15 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-594bd45a162sm2204844a12.68.2024.07.10.06.29.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jul 2024 06:29:15 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH v3 0/2] gs101 oriole: UART clock fixes
Date: Wed, 10 Jul 2024 14:29:13 +0100
Message-Id: <20240710-gs101-non-essential-clocks-2-v3-0-5dcb8d040d1c@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAKqMjmYC/0XMwQ6CMAwA0F8xO1uybojoyf8wHioUaMDNtMQYC
 f8u8eLxXd7ijFXY3Hm3OOWXmOS0Ie53rhko9QzSbnbBh9KX0UNv6BFSTsBmnGahCZopN6NBgIp
 iqH1HeOfabcVTuZP3r7/eNneaHzAPyvRPMXp/ijWGAo9ldcAACJRa5aJVso+Ml0kSaS6y9m5dv
 5yNNMCyAAAA
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Jiri Slaby <jirislaby@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Sam Protsenko <semen.protsenko@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0

Hi,

This series fixes two issues in the gs101 clocking / uart handling & related
device tree binding:
1) the binding omitted specifying the required number of clocks for the UART
2) an incorrect work-around in the gs101 clock driver

The 2nd point is essentially the last remaining patch [1] with all review
comments addressed, from the series [2] that was sent earlier this year, see
lore links below.

As requested, I'm also documenting (in the binding) the hand-over issue
between earlycon and (real) console driver that we have on gs101, see [3].
While doing that, I noticed the omission mentioned in point 1) above, hence
this series.

To avoid confusion, I'm marking this whole series as v3 because the patch to
clk-gs101.c had been sent as v2 previously, and this supersedes it.

Signed-off-by: André Draszik <andre.draszik@linaro.org>

[1] https://lore.kernel.org/all/20240130093812.1746512-6-andre.draszik@linaro.org/
[2] https://lore.kernel.org/all/20240130093812.1746512-1-andre.draszik@linaro.org/
[3] https://lore.kernel.org/all/d45de3b2bb6b48653842cf1f74e58889ed6783ae.camel@linaro.org/

---
André Draszik (2):
      dt-bindings: serial: samsung: fix maxItems for gs101 & document earlycon requirements
      clk: samsung: gs101: don't mark non-essential (UART) clocks critical

 Documentation/devicetree/bindings/serial/samsung_uart.yaml | 14 ++++++++++++++
 drivers/clk/samsung/clk-gs101.c                            |  6 ++----
 2 files changed, 16 insertions(+), 4 deletions(-)
---
base-commit: 523b23f0bee3014a7a752c9bb9f5c54f0eddae88
change-id: 20240430-gs101-non-essential-clocks-2-6a3280fa1be8

Best regards,
-- 
André Draszik <andre.draszik@linaro.org>


