Return-Path: <devicetree+bounces-212030-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 79FF2B41954
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 10:56:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 00E411BA55BC
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 08:56:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32DE02F068E;
	Wed,  3 Sep 2025 08:52:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="E3uC/N1h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F9B62EC567
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 08:52:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756889565; cv=none; b=hq+V569wGKI4Uq2wdhdHYElJ+KBnVr4YkAcfIi0szjQbLaA56Nr6f1bFgoz10rwoBQUla+q2L1QWRRCGJF1+niht6w7NA+QDfbFTo3HloK2zXFl3FRKfISEp0aDYqLjp3Z8kJ2YmtKnkCFbmXQEl424vcj+TCZDm7fOxqxV803I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756889565; c=relaxed/simple;
	bh=xgkUY21Rbxol8p2BuC1ppQ62HUjYK3ElgQPpX3aSKvM=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=PU4GkV8vINcvB4IPrfBY9liPRz9sJDx58O1uvB8S60CQbvJxgDBIZtCN62C49WuaKnGBg16jpeNTVSDQvIdRbI+L+GiRVt1cJadqAY4wcOu7S/UiDKSYRGwIqXv69oSXYFwA8OKvnWNyK9SgyObWlSsxCTA1ZgwJEendSFR9cuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=E3uC/N1h; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-afcb731ca55so123898466b.0
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 01:52:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756889561; x=1757494361; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SXuAsC4/EYitpuT7j2ogEhP8VRvM8f6E0D+ICyRlOQs=;
        b=E3uC/N1h8fYevu8eZo9KF4dE1PfoHmRoazEJAAGAL6IshPEiQC3pT5W/b6h0+gJGlJ
         nwTkWJAW0J5hf1GPE0ELag+KGmDBCstmInbve2p/+lIgjr5URKLKu6qS7gIq22wTo6h1
         HDGxeu3KZI7aMG4NwNFdhQO57XOn5iWOy0pz1BRHie8dNnKPyymsW9ESUiRMEp1VLpNH
         1kAhOxwsId6Xk/9Pd898cZWP6syIYb5oETBCHP+rQFg1K/eLjFoMcc4obY+ZilsREr5j
         9Ah9DaR55nz/PQnvvrDOSyJsvyQklHNk3lS4ncGrBh3YkHaqO51far7MxPZHzcr8tgGT
         ZaKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756889561; x=1757494361;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SXuAsC4/EYitpuT7j2ogEhP8VRvM8f6E0D+ICyRlOQs=;
        b=defi5XObNY1/LPrlse0RGhk8yaj0+9CKkoKHIW1wvBlv4Vx/c24+D96AMVmPOjpkHi
         OpoJ6x/UMJzDR46XNc8vT+Go3D1CtdyjXMbzrtuKNhwUvlL8OxUkSljrP/8F5MB3dWuB
         1Yl329D+eWn644cARisy6keRdpsjoh/jMIHhLq7ScUDgm1uKP/nErFtDF6JuChlnuB0e
         xlpxMyWioKBlCN18OmMYgrvHMFXaFSeo5WMmgFd+mJyAv4wESWUWhY19NOisx22vR8aX
         DYNSSPOEOIerE7GGJnN8ZbgRG+cyTORxN/d7wzQrCVq+llc6TEcc+Pzz9t/ZjejQcfa6
         CsXg==
X-Forwarded-Encrypted: i=1; AJvYcCVvmf/60Jtv0K2u6jYPxwmjGHLVA8cTkXOzoNwKdAP9VrIKpaggKTP5wE1VBZlrGSxQtXcHWPRbvdsz@vger.kernel.org
X-Gm-Message-State: AOJu0YzWRCchCbeXdKAfPgA1m9z+9xX19OH+nuyor9Hb83gnf1POde+u
	TLZmx3anZMpvgiTGcLCOQOOs/G9T4ekvpJOqyKNwm1Yt5ZxSGr4iWYJWSDFBPqJmfEY=
X-Gm-Gg: ASbGnctu04iMGYLcGV8/AP4CaER3SdzNX9UkLTLmQ0A6ulFTRXv+Ez9BTY+2ssGk+/L
	SSH1VuI5296SE7nung2abro2Qtedsw62HdIhJdef42i0Qny5vzyOQ9pKTu+em16Mqj1O5G9nkFW
	MN2l7/G6CYn9CPMTccMi+dS4bE9/6UReqzhwmpfz6t8PKSzcVPBcMllGfYOsVVP80T/WDrTpflN
	lk2fhxrSHuvQNIT18vnF+N569WLyZrMxlXVYcK5Vyh9dWGGDPurGEK/vEpe/nH/SFDT0jEzHb6b
	Zblhoy0RmGtjXZZGBV/604DY2c3CKtEaCfXtGD/0tfcH4KDdGwwVQTs1Dxr2KYfztmf/T+kOsdk
	ifZFgrElFbwE0VWASEzFLvfLVe56UQSID5bUlHQQ=
X-Google-Smtp-Source: AGHT+IF79RuXHW2pwxOc2+riBp+Wf+b0VTzVijhXxVtt7yjNxZVsCII4hmqvTw9cMwLtHMrwtHfYWQ==
X-Received: by 2002:a17:907:1c25:b0:b04:53be:7652 with SMTP id a640c23a62f3a-b0453be78a7mr304851666b.8.1756889561565;
        Wed, 03 Sep 2025 01:52:41 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b046eb335f5sm53713366b.28.2025.09.03.01.52.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 01:52:40 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20250819131641.86520-2-krzysztof.kozlowski@linaro.org>
References: <20250819131641.86520-2-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] arm64: dts: exynos8895: Minor whitespace cleanup
Message-Id: <175688956033.32106.10753846034561344868.b4-ty@linaro.org>
Date: Wed, 03 Sep 2025 10:52:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Tue, 19 Aug 2025 15:16:42 +0200, Krzysztof Kozlowski wrote:
> The DTS code coding style expects exactly one space around '='
> character.
> 
> 

Applied, thanks!

[1/1] arm64: dts: exynos8895: Minor whitespace cleanup
      https://git.kernel.org/krzk/linux/c/045bf0f825cf8dd53468e70fa494b06aa17e2d33

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


