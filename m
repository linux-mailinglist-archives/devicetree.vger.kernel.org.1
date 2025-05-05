Return-Path: <devicetree+bounces-173567-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E37B9AA8D6E
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 09:52:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C35761887DE8
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 07:53:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6136E1DB92E;
	Mon,  5 May 2025 07:52:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fKbbQnjl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72DFA18859B
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 07:52:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746431569; cv=none; b=O5rWHvlrtZLDUlq7TuvKZPu4ewBck6camCbSJNr6d4s5LKitgAx0BBiu3O5hcxfkGt2WuTWHy07qDWKAlULn8WW5bJxy2VRWTGl8CDSA7aAOoz9zrzEKvf6w3x0VWiW97AkbxnL0UwDdRWfXq175I1rcJjZ+HNziLHu27klZW04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746431569; c=relaxed/simple;
	bh=ZjSUP8jmlrb5+uP1brciCf5mZMhZ6YlpFsc/7NT/y40=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=gDiqJltEqTW1536q/L9WR5JuTO/PaxJIXDJTKSUjaDUmR0zSOvNW2Qq1oNDqBM/CVLl6hchefT4a51MFjk2bAKKXxHuZvmVHKm2asofSlnxyrFJ+/Z19yJA2OYBqEtKrYtdrKhZOLzdpnjE0xiA6/GCrEzd+lJYQgVOYTxp3ytU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fKbbQnjl; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-ad1b94382b8so166945866b.0
        for <devicetree@vger.kernel.org>; Mon, 05 May 2025 00:52:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746431566; x=1747036366; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aMDm0qfjOuYWTzr0Xo2QLnRNDzdiZPn1MuFHomJVvBY=;
        b=fKbbQnjlL/9lgskLhQ6P3tFgyTD8sCIVP94XAXZcyPkGNRCx0nuPf/HERTgo+Isnsn
         kL5DxwRKFFzeH/r+/yJFLIA9h96kMvJ52P/wppzK7VCSgNM00LIGIu1jJyFhgkLLiSDF
         sHcScJWM40IgsT0HDSBZXXYh8WtaDzqaCJX1uqVlrVKuq7E9SP0zTYUiJluKfVX3ypV+
         4W7dGZaTvkp2TXfXvZ2EXD7An9ycCj5l4yX0maxC6mL4r5AFNBVUivOV0nD8VWwY7IU8
         y/tTtMl5awCXF0rzHqnrklcGPOArkotqS0UmwwWAmUH2CrYMa4UvD5iKDeHwfPsIFx7Q
         qRsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746431566; x=1747036366;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aMDm0qfjOuYWTzr0Xo2QLnRNDzdiZPn1MuFHomJVvBY=;
        b=GirHlcqbP5YFfoWL4A5wHO5ISXY4xLhMoA9Jl28IbR0an+sYh70jHunpWKJQ/eKRpr
         KF3aA1uSwfL511scjJhVAlssWyQ7QHLCx1N9wnfm6QOf7nzUw7xdGKSgZartqzdeUJ/s
         0FDHo6DisMlrAkbCFlmmRWzvBaLmqsdq1DwCMSOGKn8mUhN4Kn3KfI0Mi2/6TaSG5cew
         OoH0ZNhqNna1uBbwbTz1KUYjmdJM6khKdfofnDg2+WX72udRIh0Bh8ItcCdY+6b5vxxv
         t6cYjPQpSP6+IcvY9m8zcq1vjI3k0Fcd45UCqujzQcFjAleIxFyQYfJizYQicRvVeLyV
         SrCw==
X-Forwarded-Encrypted: i=1; AJvYcCUGBNCleVUO0mfRuEKh4ElioNY30OR/vUyFrc351wtfKnXGHx2w0AWd0z1YsAr0i7IG81MG/hJeARwT@vger.kernel.org
X-Gm-Message-State: AOJu0YzuVHWQ3TrSO4jJzPckunGug4l5pblzYpAd9YhgOmU9MrTLvKdM
	gPoj9a89V4cXjUwnFYeTXhbRld5dDr2ZkvKteOMYOTxBYQZwhrt14BnY85AX00M=
X-Gm-Gg: ASbGnct1JfFpDNfeFjyvqGtS5MvDOiJblD1idb++XBax/5c0Nhk2kWZ0HjW3rL6+JrZ
	NsPz6NZtCERKA9Gezwh6A4MuboX8LOekI1oOTIPc8sFuCGxCjyrx7s7RiMt/SoN2vfWshQlFkHv
	EVCfHH4XIpg3So6i6EgmChUVjzRjFSWOcA81bL6DS6Z7G/saP/nN6KtRrGelEJyyChI8UmHLVOf
	C0RJ/zhx4V3RUkbdoWH5iOREnlwszOTigic0XToWSTqZp4ihLa0zHlqHFMzMcm+Vm6VuHeLMYFO
	A4s2HWlcVjJKXw7HtUHgw++sOtSKBnc+BIEfbCmnXITR8iEE3A==
X-Google-Smtp-Source: AGHT+IFKn1amEuiEsrKWv/SJZ/kZTwDtb/a8ekD/9m9gKUzOyHca4mZtzNEFzhzpC/nVZriKwygVQQ==
X-Received: by 2002:a17:906:c08e:b0:aca:db46:f9a6 with SMTP id a640c23a62f3a-ad190858be1mr564437066b.59.1746431565639;
        Mon, 05 May 2025 00:52:45 -0700 (PDT)
Received: from hackbox.lan ([62.231.96.41])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad189540d94sm446544666b.182.2025.05.05.00.52.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 May 2025 00:52:44 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
To: linux-kernel@vger.kernel.org,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>
Cc: Peng Fan <peng.fan@nxp.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	linux-amarula@amarulasolutions.com,
	Abel Vesa <abelvesa@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org
Subject: Re: (subset) [PATCH v12 00/19] Support spread spectrum clocking for i.MX8M PLLs
Date: Mon,  5 May 2025 10:52:35 +0300
Message-Id: <174643143452.2950397.16722215892279685541.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250424062154.2999219-1-dario.binacchi@amarulasolutions.com>
References: <20250424062154.2999219-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Thu, 24 Apr 2025 08:21:30 +0200, Dario Binacchi wrote:
> This version keeps the version v9 patches that can be merged and
> removes the patches that will need to be modified in case Peng's
> PR https://github.com/devicetree-org/dt-schema/pull/154 is accepted.
> The idea is to speed up the merging of the patches in the series
> that have already been reviewed and are not dependent on the
> introduction of the assigned-clocks-sscs property, and postpone
> the patches for spread spectrum to a future series once it becomes
> clear what needs to be done.
> 
> [...]

Applied, thanks!

[01/19] dt-bindings: clock: imx8mm: add VIDEO_PLL clocks
        commit: 20e5d201b5d8f830e702d7d183f6b1b246b78d8a
[02/19] clk: imx8mm: rename video_pll1 to video_pll
        commit: 26a33196b5b68cf199b6c4283a254aa92d2aaf4b
[03/19] dt-bindings: clock: imx8mp: add VIDEO_PLL clocks
        commit: 2d50415e2457c6f6621c2faa3b01b11150fb9c67
[04/19] clk: imx8mp: rename video_pll1 to video_pll
        commit: 21bb969f608cefd8d847cf6eb50a193d9f1fbb87
[05/19] dt-bindings: clock: imx8m-anatop: add oscillators and PLLs
        commit: 2ba124053687c933031a6dc5b2e16ceaca250934
[10/19] clk: imx: add hw API imx_anatop_get_clk_hw
        commit: 17e3c1a272d97e49b4f3fbfe1f1b889e120d2be8
[11/19] clk: imx: add support for i.MX8MM anatop clock driver
        commit: 3cbc38cf42ca42d2dc9a93c949e0381ff919df71
[12/19] clk: imx: add support for i.MX8MN anatop clock driver
        commit: 80badb1d7264e83b512475898e7459f464a009c9
[13/19] clk: imx: add support for i.MX8MP anatop clock driver
        commit: 4c82bbe8b5437c7f16b2891ce33210c0f1410597
[14/19] clk: imx8mp: rename ccm_base to base
        commit: 1a77907dbbecfbe5e6a1aec28afd49a1dc184b7a
[16/19] dt-bindings: clock: imx8m-clock: add PLLs
        commit: 6a55647af3334f1d935ece67de4a838a864b53fc

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>

