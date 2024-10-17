Return-Path: <devicetree+bounces-112327-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B7CE9A1C8A
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 10:08:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9C1BA1C254A0
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 08:08:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F2771DB37C;
	Thu, 17 Oct 2024 08:03:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TY+IwGkP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63D171D5CCD
	for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 08:03:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729152215; cv=none; b=G9mjfD1SlqeXbgLVo5k4BmaIU44F0mOhPeHfg168SxWdaMqcoJNbjC/StOHcBnqqM/UBBnee/U07wIdcrVZIsA3IRUX8FvFehBk6BiIa5JviK+PDEGw1aVJUgb9yi9pzazy9P7Ykv1QmJX+B14r5LjQFYaCBWyJpqzhsoMpFDvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729152215; c=relaxed/simple;
	bh=83Dd0h1px/j5ajoCG4zVpqu1+In9jyu17dpSI+y3J5k=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=dYXnpZcJjdC+4lDZQ2Dke1svT4uYMZCjR6pPGDcehc5QgFjKyrGYtmPXTRvi1VRGpBP9VBWsKzJyhLtoFQ5v+4yw1/xp/GzAflNT4EkGA5gc2SCr2Q25NlPARQ3eRXQEslspMo1dYvVojkndyz29sT2R1VD4HPxcxlrPrbc5N44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TY+IwGkP; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-43159469053so950595e9.2
        for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 01:03:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729152210; x=1729757010; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yXsd7OwDazZFDqhWrK2bvttfQ59ruGxGdVAPrWSzcns=;
        b=TY+IwGkPAKVf6gSp04CMoJyk/S2f1TYIAmGRkgxDHbinSstGfgD/i8D+K5gxrpylmP
         hjrtVkWApzu6243hS2zr/HSJl1f4AVyWHvAzaqO3xT42h/QXVIHBtaDThu9KoK01HBxZ
         9CMF1mRAR+FVcLn2ivvdRX5Tb5nehOXHrzBYNK4l6pLJwYbT6F9ITFmtIHM8AEMfi/PF
         NgUKhB0XVzvB2ERF9uqNrct3Fj0OK3+e/YObLJAssB/EATyf0h3LQQuP5SqDoZMAugHW
         JEgtHFDFpBl5XEka/L2ycpSyHl6MN5So+olD4Zmg5atSdGkNWYLHCGgD+pqkQU5vVhfq
         nrzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729152210; x=1729757010;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yXsd7OwDazZFDqhWrK2bvttfQ59ruGxGdVAPrWSzcns=;
        b=JW3SMVy6ku/JlMx3UyEjmQtiRe/MStuGh1Mk9pGTF2WQnY6N17cFXp+mTG5BXSPlxG
         Xpw+STfRo+cg9rM128nQXdNy4vO293nUipx15g0Snxz17D/P/qRUA1+fsvRE7ZMsSZiw
         N+ERcTiIkIBlaj6LE6R+xcji9ky870v0EMETnA5AGPCPEJjN5PDvlQwGuyqxE/jKuMXE
         YC4KHeZJqsTUPYeqYomQYtZO0NlzFGs6YhGjc/Q2CFNJScPQmPUl2nyFfb1Kvu3Tc1A0
         Jw25+KHSV5K7e9UxlZCL7vKEjIMX1wyA8Y9nDQRrBxyKtCu0r/RfwBiwbxy6y++nK3D2
         fTvQ==
X-Gm-Message-State: AOJu0YxaC7oWH/7mjJ0UYe3qBWFrwReizoCrK/aT29dJ7vGZP6KKqzw5
	GxG2NDdgIghvDFuReGGN5YsJxhOokGtzTFUTUneGe+SdC4eJFgLiWT95FsM029k=
X-Google-Smtp-Source: AGHT+IHr1OcjFahO9alclfAwT/WY6QFt68A+u/zlKpWaJcX2JRHqW5bckWKzwqLpuoosFBGXYQ1Bbg==
X-Received: by 2002:a05:600c:4f10:b0:431:558c:d9e9 with SMTP id 5b1f17b1804b1-431585e4aa1mr7672805e9.5.1729152209621;
        Thu, 17 Oct 2024 01:03:29 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.211.167])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43158c61aedsm17631915e9.43.2024.10.17.01.03.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Oct 2024 01:03:29 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Igor Belwon <igor.belwon@mentallysanemainliners.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
In-Reply-To: <20241016154747.64343-3-igor.belwon@mentallysanemainliners.org>
References: <20241016154747.64343-1-igor.belwon@mentallysanemainliners.org>
 <20241016154747.64343-3-igor.belwon@mentallysanemainliners.org>
Subject: Re: (subset) [PATCH v3 2/6] dt-bindings: hwinfo: exynos-chipid:
 Add compatible for Exynos 990 chipid
Message-Id: <172915220833.18392.17035280597662284700.b4-ty@linaro.org>
Date: Thu, 17 Oct 2024 10:03:28 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Wed, 16 Oct 2024 17:47:43 +0200, Igor Belwon wrote:
> Add a compatible for the exynos990-chipid node, used by
> Exynos 990 platforms.
> 
> 

Applied, thanks!

[2/6] dt-bindings: hwinfo: exynos-chipid: Add compatible for Exynos 990 chipid
      https://git.kernel.org/krzk/linux/c/c6dac8443dabe7a9215f00025f78a9c55a0651e6

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


