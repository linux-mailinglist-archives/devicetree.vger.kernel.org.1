Return-Path: <devicetree+bounces-109057-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D16DD9950EE
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 16:03:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EF29C1C24E53
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 14:03:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E036F1DF74E;
	Tue,  8 Oct 2024 14:02:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="JUgMDHgP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58B5A1DF72E
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 14:02:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728396178; cv=none; b=NbhOjWpa9W2ZWnFLDyes1efwfZRpkdu70BUS6hrtH2SRLyafOQhyQotXK/44rg+FpcOeMaDwiC7jUsYrgWNsyeRdG9aXjNH1nOgqsBDMVV6Pma8rZ5Yd+LXiF7jDSNgaT3PzlZVe2+xgx50ngegkZYzcXFoRITtcm+S0/e/CHXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728396178; c=relaxed/simple;
	bh=acPg9HeQJ5h5qnAYasmTJ/Dv0cCea4ZzsVf1ipGbU30=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=NdLYekWJie1wBVPiQMbTkQBdpcqdyUpLhklJYsHKtKlcSRVubx6bO6DUOnBIIKCZ3wzNqziPgm67E+XoR2/1Zt+95hOOPu/F1ciQ32nxpDJ2EC/MT52cWob2s1eXfjbdddjxuVFmeY2eK3RnPAd1Ei4f5+K+4K2TsjRLA3IZZdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=JUgMDHgP; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-42cae4eb026so58834335e9.0
        for <devicetree@vger.kernel.org>; Tue, 08 Oct 2024 07:02:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1728396176; x=1729000976; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wrB8SyBEggX7gkCJYrDAfUW+IVD/j7Ve4yJ4nlFfibo=;
        b=JUgMDHgP8Leo+fy/6lZpGNTZAuGgBFK4mvu7vP/6PW4XKX0uM50UMyS+9/c7c9SdBW
         4389N2k9LaDMkyfHWEyVt/LcZsTVqGRbU6kh814T4T35XDT1jEketze8M331ofmKuw5r
         f1IsoQp5P2aaq7dazqwKYvRWfigDdcPAEoZf0SFZk+t5nv1h77x44FdkGoh4RZxR56bO
         KOkr6RMihlsTZy7CSkd59lKH9e/lMW48v7H07lZrsCzPplBtDu37C4+eBCkfUlQ43kDm
         AGo+vfWUXjuAunuGoMduDvBf+jlOmYV6I28QkNdDRkwzXoKdae0pLHekWEgFxLxFgvSE
         s2lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728396176; x=1729000976;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wrB8SyBEggX7gkCJYrDAfUW+IVD/j7Ve4yJ4nlFfibo=;
        b=G/zTo0h+p6FET92gFR+Btum3gyeuP8Z85eGhTYhxzj10c2QiPXzn/ImKdYdKiaYC2o
         Pm83nplAiyz/2QObKqwAghN5HWrlgcb33GpCkHCODYBKS+EwDYlEkRUCSgAbOfD4f+qq
         jyja1mC1gVTuxTZP93hiiqsGu5XV10VXT6/GqrPOzJxJ9HyPBmR5OE/vT0nTsOid5uzm
         pZcDsxSltsMxJ2vidMcngUjibQ2Eb3zNGQB8JhK56N3aJ24c1veWiN3/KZTjPz0zqlb+
         1onCUOS0csuu5EuCArjs6ZjoWnoe4bpjLUzFENizgmm9LcpjavHlE5FLsGPb6jWncb+q
         qVrg==
X-Forwarded-Encrypted: i=1; AJvYcCUQU9aMyvaVmL7P07Sy3J46Is9t/C02zrcnfrt1UpV0/45kYz3S8nFwDOkOUVFvJ7SNAq9twTKIocpZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwaqpJza2Mfam04cLrruiNs2HR1IVNLUz6v3szyDK5nZhnBxJly
	8CZZ1AZE8IB9ilXfxRL2jZ3Q23Tj66PYuB4z5UDVdXLmFnKzj1Z0UtQR1mqyV7k=
X-Google-Smtp-Source: AGHT+IEV/6cDSkCaLspx7rOPlHS533C+1XbFqrGunzht3iptdfLNh8w9eozrda6COlsrBspViWACGg==
X-Received: by 2002:a05:600c:1d0e:b0:42c:b995:2100 with SMTP id 5b1f17b1804b1-42f85a6d722mr101173635e9.6.1728396175387;
        Tue, 08 Oct 2024 07:02:55 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:738a:20da:f541:94ff])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d16920be2sm8205953f8f.60.2024.10.08.07.02.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Oct 2024 07:02:53 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: linus.walleij@linaro.org,
	brgl@bgdev.pl,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	joel@jms.id.au,
	andrew@codeconstruct.com.au,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	BMC-SW@aspeedtech.com,
	Peter.Yin@quantatw.com,
	Jay_Zhang@wiwynn.com,
	Billy Tsai <billy_tsai@aspeedtech.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: (subset) [PATCH v7 0/7] Add Aspeed G7 gpio support
Date: Tue,  8 Oct 2024 16:02:52 +0200
Message-ID: <172839616610.55104.2573120540182552334.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241008081450.1490955-1-billy_tsai@aspeedtech.com>
References: <20241008081450.1490955-1-billy_tsai@aspeedtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Tue, 08 Oct 2024 16:14:43 +0800, Billy Tsai wrote:
> The Aspeed 7th generation SoC features two GPIO controllers: one with 12
> GPIO pins and another with 216 GPIO pins. The main difference from the
> previous generation is that the control logic has been updated to support
> per-pin control, allowing each pin to have its own 32-bit register for
> configuring value, direction, interrupt type, and more.
> This patch serial also add low-level operations (llops) to abstract the
> register access for GPIO registers and the coprocessor request/release in
> gpio-aspeed.c making it easier to extend the driver to support different
> hardware register layouts.
> 
> [...]

Applied, thanks!

[1/7] gpio: aspeed: Add the flush write to ensure the write complete.
      commit: 1bb5a99e1f3fd27accb804aa0443a789161f843c
[2/7] gpio: aspeed: Use devm_clk api to manage clock source
      commit: a6191a3d18119184237f4ee600039081ad992320

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

