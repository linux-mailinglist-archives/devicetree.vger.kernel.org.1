Return-Path: <devicetree+bounces-133360-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 55BD59FA636
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 15:47:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 689401659B5
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 14:47:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEBB718F2EF;
	Sun, 22 Dec 2024 14:47:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PnhvYlfF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03CFA18DF65
	for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 14:47:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734878840; cv=none; b=Cia/9cvWY3IoRlygkloQQsi4BJqSjLcTeASzx66cWYpErOSVwA0hyUIXseQoPI3MGKTYKEq2rSJLkFDOhIeCDnYoXTc4Szxys4uOG/ALXHKb7QQQFmtIZpXl6YvS/rMUtuzDtcNgvjx4vCKPHiIji7tNOpM/88lfzJ4FxZYwKoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734878840; c=relaxed/simple;
	bh=woSSopwRnElbelpPMs1jT3Qe4qW97goolW3OP2OkN1U=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=A6fbF/7ir6j4gsElEcK3u+gopODd+pzH7lA3+Lnm90ZSds8/ZLWoXSX/KW27g4h734j/mlfKd/+CTf4n1NYRcnfbMVhZgLQh7dRfaJqslUim9tAidUi35R1RDsIQ+RKs5aYIlIcmS/AxH+hh+jc1vv5yQjHvNDfDS+cXfcTJjz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PnhvYlfF; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-aa67bc91f87so57126866b.1
        for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 06:47:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734878837; x=1735483637; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KOQ/XEh+IEpTSwG/pPspXvcZX55H6TJ74NlDqWEG6xw=;
        b=PnhvYlfFiTA+RnarSz5cOJz8WRMZW/b9KVEVHo3AHnQPtqbx9ylAyEIzoqsOisuRd9
         KVQ6tLFKDILkO8kB5sdi1pqdFaKHUcywjKUrEMpHTtlTIGzUTgCIpYW6a46aS8vuOWxP
         afl/dlftH3ZR2jbd6PkpWgt9s8QunIXTm4v7Y2YiKvQKFOiXuCjLygqKbHl+PJxMpLkN
         ofFre2FP1MtF5cU+rkGUTUhUyRoCCPWz66AWjQa4HqsFHbdcwtYiTp6bPFPjRPJZeHZw
         YIj465Bgkm3DypboLU0zQMUdP9x3JB8g+RA43utkFYPVqQpMgcmrKt7yoCoCylPQy37f
         8sfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734878837; x=1735483637;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KOQ/XEh+IEpTSwG/pPspXvcZX55H6TJ74NlDqWEG6xw=;
        b=sFP9iZrAO+WfVnN5TOMom5/Cg3kCDG9lawVRzdhXghJG37hWfIEk5xi+AB4cavuG58
         xG0AHC5cC1DLu0tStOaSM5Er3ZXPM1C4v71vNkZ9IKnMBGwx+ycOjsVemdlTwyXU0clk
         o3CZVA+Dizl2JzhW07IgPoEESKeTKMlZ5gybhekkILfeA5mdx6o8Gc8TsMLg1lbT9aFP
         w6jWCnqsK+xZ52ubHzP5QQLhTPJG2HgaaUWuvEUHMFu/Ex0scij/Fi5xRylEiWssepAd
         74KgIlDz1ugiHi1rpXnmpT7d5z4EC3JrqgjLZ27+vy9UBnaMXEB8avBF3YiNF3+s3fN6
         HjlA==
X-Gm-Message-State: AOJu0YwH/g45nbHQJLVTuqsxSWo1hhRvIjypsiGju77WJzKcfGvKoHA4
	xFzHzLWtJZYKGzjSz4Wm/fmNbeQobUQWmRXq2KtIwNalLjpqVNUexd0AOMokj4Y=
X-Gm-Gg: ASbGncvZmmTGGQ9C02LyQGM8GZaRESlWFoWubJmmqSvQ4Ugzf4Vd8391XybOxbW1c/5
	DUao6QOHAxsDHTnB46ZdbnvRh1OPk6tLSqfeQZDGAZVrSgDkzUZ1gUFbF0vLn9E0JK/lRTEdBbg
	qb705CQyCKnxQKzplM4sghajmLiDlTLO52WMX/4BFhDg0MqJ0rND41e+zk8cfob/M3FdtFzwNgl
	zhhg3N2JtZ6r2ewc2IT6P5GuXCVEtR0QUJEQTij3bXPRDxiUfNmPTYCm+EGNS/4HZ+cIYqldQgi
	BvZonGERfIJsNseIvDnSClw7lYk6q1c=
X-Google-Smtp-Source: AGHT+IHtQGYsCivCQdxdxbhIMcr1C6rTSuDeTm2poJaxHYzRC9Hx9uYNv/i6n4uQrNAoTdj6lsN2iQ==
X-Received: by 2002:a05:6402:3596:b0:5d0:8e70:cf86 with SMTP id 4fb4d7f45d1cf-5d81de05c1emr3525793a12.7.1734878837303;
        Sun, 22 Dec 2024 06:47:17 -0800 (PST)
Received: from [127.0.1.1] (78-11-220-99.static.ip.netia.com.pl. [78.11.220.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0eae3b3dsm396496866b.82.2024.12.22.06.47.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 06:47:16 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Tomasz Figa <tomasz.figa@gmail.com>, Will Deacon <will@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, 
 Markuss Broks <markuss.broks@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-gpio@vger.kernel.org, 
 Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>, 
 Maksym Holovach <nergzd@nergzd723.xyz>
In-Reply-To: <20241214-exynos9810-v4-0-4e91fbbc2133@gmail.com>
References: <20241214-exynos9810-v4-0-4e91fbbc2133@gmail.com>
Subject: Re: [PATCH RESEND v4 0/2] Add support for Exynos9810 SoC and
 Samsung Galaxy S9 (SM-G960F)
Message-Id: <173487883501.18913.4157239259617984127.b4-ty@linaro.org>
Date: Sun, 22 Dec 2024 15:47:15 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Sat, 14 Dec 2024 16:56:45 +0200, Markuss Broks wrote:
> This series adds initial SoC support for the Samsung Exynos 9810
> SoC and initial board support for Samsung Galaxy S9 phone (SM-G960F),
> codenamed starlte.
> 
> The Exynos 9810 SoC is also used in S9 Plus (star2lte), Note 9 (crownlte),
> and perhaps more devices. Currently only Galaxy S9 DTS file is added but it
> should be fairly simple to add support for other devices based on this SoC,
> considering they're quite similar.
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: exynos: Add Exynos9810 SoC support
      https://git.kernel.org/krzk/linux/c/698be6fe8f89b5edf533a85fba7258339c8b72d6
[2/2] arm64: dts: exynos: Add initial support for Samsung Galaxy S9 (SM-G960F)
      https://git.kernel.org/krzk/linux/c/63da297f0303c39025172cccafca7b55b169ec3c

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


