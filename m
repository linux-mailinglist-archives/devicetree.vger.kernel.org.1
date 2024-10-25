Return-Path: <devicetree+bounces-115593-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BBD69B0168
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 13:34:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7D7881C2213C
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 11:34:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DD411FE107;
	Fri, 25 Oct 2024 11:34:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="K9OeYlbp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304B41C9B62
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 11:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729856064; cv=none; b=ZAQ6gsw2jOPlECe3dOBFaxKYCqF40awj2KkfvGzHleXPR3eP4+ND1MVcEgBAHwegvhirZHtf8t1Zp1CIlQulmY7qCs6wMYp0xtsnMB/N4MxcJ+cvydaDbz1U4+/jwhqimRVzByE5psMey0SevADX0gUnVNo7/hnCWSl8i1qM+4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729856064; c=relaxed/simple;
	bh=0Jh3nkr0XpvYMLZKDO8ZRbuyRPBtnsuz9UxzKWw/th0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=bZdSVCREe6bbFKoNInfJqBKtUp+AMl6l3K4g4efHq/1tex2qmobsDEEqdB9DGF/MtkKQV0S8YYCcVK8gTX8/BaoT61jMVWa4dr28TBquY/al5qw/omc3izdO2sEQwZCNkv56jigcjiSGpkSBoHuJqtASFbgJFcLewRnNdZNy2ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=K9OeYlbp; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-20caccadbeeso18936655ad.2
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 04:34:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729856062; x=1730460862; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=heyBNtwR5INeI/YOzN3Ric17B0+0kdCrYxxPYSiTxXo=;
        b=K9OeYlbpHs95hZUuyD1qDjBTrdHEitGrQKtlmaqKzQUmbPUE535lWQ/dMr6drxAVzC
         pG866I/JYkHGNQoHvedrvDaCrrXqbUIpA6/6VRzq+4ScEA2JRGRADgkCg39plrWRNcJx
         oG3Z2JR9MKHIjsX7OtsyUNn0wSWCKDd5cJIXHY6UA/C4EgFQyLToboNaozFyiIs7vHaz
         TnPmDdmeUyI9hGbqBjogXGhGhIk4tWzG0aMDsGuWdqcb82qMknMsuIrjxYALSwggzwb+
         mASBXNPbvhV8481+TzotYJ4xsQ0HGQAedRZ9X2gaJgUCUnc5Tw6628WZdV7yFZ6zXsev
         uCqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729856062; x=1730460862;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=heyBNtwR5INeI/YOzN3Ric17B0+0kdCrYxxPYSiTxXo=;
        b=bV1IB53eWCBGgO3i9BJRSSrGUikIGUPGhTvHtdBh0+MvvdBJepkPtu4aF0TgXkX9SY
         Q1HVinfcurRGH0c2HOGCnVIwbYmjWVeytZCq84Q2DXxaGnrntru6FfZJCuT066A2VBu8
         VDI6nr3VPGk27FvjcLIRnd5HLGI2/Lrh4EVhNN4XOdn5ng3/g3RgznndH91tb+rVsmIH
         k7CF/HcKSOF6Bzudeii4u11jHyP7Jwa+ukFKjDvhsHLs0xHg3Riekh5NDOvweYkDVZAZ
         v+vYYp3Muac5mq/imfsNwBONj6mhskuWU/9aX7EL5c64KaYMdDkksjjrN2pH3rtU2E14
         vrng==
X-Forwarded-Encrypted: i=1; AJvYcCWWnJ8u7ju0M7TCb6SMv4Z0FsF7ySDbw2cnMio5JDrwwK9WUiUMhTcC6HI0iGgc5SGaqf77crMs1i3Q@vger.kernel.org
X-Gm-Message-State: AOJu0YxRQX79+Sq0P+6J1BSbYZqqFUMSxAiJgvusWMj7bnp9+MTZoP9b
	dVe5mGlwslFrfGT/56GY+zcV1+tXaCB6xJjt/tnjVvs6nTyaGoV/
X-Google-Smtp-Source: AGHT+IHPDVv5FVBaXC3fXD4MiW0j1VlKgp12lMIobfZOHpeZ1yfL+S73kRUMWayRr/+gJErPFzikKw==
X-Received: by 2002:a17:902:e883:b0:20e:5ab1:2c80 with SMTP id d9443c01a7336-20fa9de9fd5mr140128065ad.7.1729856062358;
        Fri, 25 Oct 2024 04:34:22 -0700 (PDT)
Received: from localhost ([2001:da8:7001:11::cb])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-210bbf6d5d9sm7952125ad.75.2024.10.25.04.34.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Oct 2024 04:34:21 -0700 (PDT)
From: Inochi Amaoto <inochiama@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@outlook.com>,
	Guo Ren <guoren@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: Inochi Amaoto <inochiama@gmail.com>,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH] riscv: dts: Replace deprecated snps,nr-gpios property for snps,dw-apb-gpio-port devices
Date: Fri, 25 Oct 2024 19:33:55 +0800
Message-ID: <172985594069.1201275.463002763036096177.b4-ty@gmail.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241022091428.477697-8-u.kleine-koenig@baylibre.com>
References: <20241022091428.477697-8-u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Tue, 22 Oct 2024 11:14:30 +0200, Uwe Kleine-König wrote:
> snps,dw-apb-gpio-port is deprecated since commit ef42a8da3cf3
> ("dt-bindings: gpio: dwapb: Add ngpios property support"). The
> respective driver supports this since commit 7569486d79ae ("gpio: dwapb:
> Add ngpios DT-property support") which is included in Linux v5.10-rc1.
> 
> This change was created using
> 
> [...]

Applied to sophgo/fixes, thanks!

[1/1] riscv: dts: Replace deprecated snps,nr-gpios property for snps,dw-apb-gpio-port devices
      https://github.com/sophgo/linux/commit/d99913e1b80b51a058020835e7ea1a44397cb4d7

Thanks,
Inochi


