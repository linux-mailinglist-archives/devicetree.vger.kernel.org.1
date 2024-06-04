Return-Path: <devicetree+bounces-72153-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A01628FAF47
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 11:55:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9A7BA1C20E48
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 09:55:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A8E81448C5;
	Tue,  4 Jun 2024 09:54:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="LCLjCLVn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3028512B17B
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 09:54:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717494899; cv=none; b=ek54Ovl5NUMVqM/guLAWezkQU6hwtdI4FXkJJSIM4P5fTQ0KUq3l3LTlIDHsJi9wbdYePaV0gVsGE8CslIqD/Cv1mVf7MY9mDPTdtK1aQmEF1OwmGsjdxZI7JBLNuTYgblj/d5nFNh8QWOaiT9p4EJAo/ZaYZQ7A+ABzt8t3HH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717494899; c=relaxed/simple;
	bh=X2ogPccdDTs13IL08Tf8Bkwcu0VIj1IFTLfvvR7wyB8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ohZh3DH9S8CyjO24TQcYo0jImETW8iajOELbGnFg81wG6wyitsxooAikyRPTE81CIGMJUv3HFHm6Ae6smgnl8U5eyywD7CONKwp7eOBrVqUHpR3oXRYsgTQyALck7qPzsBjY2gs8QCa3guewDzMBfL3mfEC5n9Wp2kTLlecdm+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=LCLjCLVn; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4214aa43a66so6399875e9.1
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2024 02:54:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1717494894; x=1718099694; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eqG33BTlDFY1JTtCCY4mtc8hNwHOOmvwm9Q2v4L26W0=;
        b=LCLjCLVne/CbZ0ImH+68XeDcA22TsbaROdqtIDs4S7haA/YRQXhm89ARnX8tJE8obx
         LGzfjQhDMj/HXqGt/vaZsLGdycm4hc7bs1cDj5S5Jc2W6mbm4zkelVrVkIfe6mQtx533
         tnHJ2NHpQMoiVZ7uem8cKXJUmhYkFUEX/YTOz697NC6gG0zZHbx+9CzlFgOnthRZZLHX
         Fj3vZkFohH4yjVGZVJ2vpTNLSnyMPUhe/nsoApVkqTXkcwjgCgMWtLhsizQyolgchsVH
         UMz9ooqCiy4eFGbmgf5ld4J8HcMtHbWvgg7b1jmUPG/T87Zx/OyGHasL3ARRlqtssriy
         88LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717494894; x=1718099694;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eqG33BTlDFY1JTtCCY4mtc8hNwHOOmvwm9Q2v4L26W0=;
        b=Csf1wbd0Vf5lDYbQfaRvY9jwMmS+crnfWrSTK0EXd3NBtSp5cej5SdBopw7kCVOkIT
         iLoupT46aT9I2YhlWR8MD59Vn/dON90QY1wXjKkrP/hCy7Qx/DMg6i6bcIeAvPX95ryC
         NzCW7ckbGljOo9sDei+oL5/UY0te/0dp12iJr2YvwY3ricZA+1WaBFSjc2MKbFiSaKpX
         UGgNt7nDrnA9xF64vBwkSyQ0DrRG7SCkwpcXqIT5vMHV4krYJTh6ADc9GYHnPn0WH5+x
         5MtX7WKEqkbBcOO1Ss6BLkoD+YOHc78U7T3qGo/4Llsidh0DmT9xMBiAVwgvKGHJtlXT
         Pu3w==
X-Forwarded-Encrypted: i=1; AJvYcCUhbwF6wlk1k0XI4NRvr1tdIY/rqy6iRgrYsI9LdRaHvwFJ8TE2R0zp+DuFADm7o7YuMwFqCRJmRhMBL0wimQgN+QqnwJEnCHc5qw==
X-Gm-Message-State: AOJu0Ywa9GnNmbLOiUq/Di349x1snJXd8o8o4geHRJtb0rvWv69Cpvoi
	HPt7wR/hyUkboAZMli+BKofR3LgBUy4Ork6kW6GE/CprfqDQwk4JWQqbpYf09Nw=
X-Google-Smtp-Source: AGHT+IFuWoB4BQKHWujuBNN/tLqUteBjiY6L1E/xsaU6QhnEcgVTXAv++hch3aOpdGEUYNU8pLbWlw==
X-Received: by 2002:a05:600c:46cb:b0:41a:a521:9699 with SMTP id 5b1f17b1804b1-4212e045342mr108000555e9.4.1717494894440;
        Tue, 04 Jun 2024 02:54:54 -0700 (PDT)
Received: from toaster.lan ([2a01:e0a:3c5:5fb1:60ea:fe6c:6bbc:4888])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4212f9b9ef1sm136678955e9.9.2024.06.04.02.54.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jun 2024 02:54:53 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: linux-amlogic@lists.infradead.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Xianwei Zhao <xianwei.zhao@amlogic.com>
Cc: Jerome Brunet <jbrunet@baylibre.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kevin Hilman <khilman@baylibre.com>
Subject: Re: [PATCH v9 0/5] Add C3 SoC PLLs and Peripheral clock
Date: Tue,  4 Jun 2024 11:53:49 +0200
Message-ID: <171749479841.590656.11363124184470308378.b4-ty@baylibre.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240522082727.3029656-1-xianwei.zhao@amlogic.com>
References: <20240522082727.3029656-1-xianwei.zhao@amlogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

Applied to clk-meson (v6.11/drivers), thanks!

[1/5] dt-bindings: clock: add Amlogic C3 PLL clock controller
      https://github.com/BayLibre/clk-meson/commit/0e6be855a96d
[2/5] dt-bindings: clock: add Amlogic C3 SCMI clock controller support
      https://github.com/BayLibre/clk-meson/commit/d309989a0a0a
[3/5] dt-bindings: clock: add Amlogic C3 peripherals clock controller
      https://github.com/BayLibre/clk-meson/commit/fc1c7f941c71
[4/5] clk: meson: c3: add support for the C3 SoC PLL clock
      https://github.com/BayLibre/clk-meson/commit/8a9a129dc565
[5/5] clk: meson: c3: add c3 clock peripherals controller driver
      https://github.com/BayLibre/clk-meson/commit/f06ac3ed04e8

Best regards,
--
Jerome

