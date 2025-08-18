Return-Path: <devicetree+bounces-205687-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 788C0B29CAC
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 10:50:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7C8F018A30BB
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 08:48:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B61D8305E18;
	Mon, 18 Aug 2025 08:47:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xGlCf3RQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BECE3303CB0
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 08:47:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755506857; cv=none; b=jqEHukWdohO8jpIJ0IojRbjBsyi2PBgQ8S6nszr+O7rA86Tkch0CeKO/ewsyB6Q3E74AI5tTcdvXMokirRFifcillDq+w3yAeAL4VaFT6u39oBc9677ivmhUUVY4+76PYzREBY0BVmOCMuzPI4qki6WLl7Ts0guNk49vzTdDRNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755506857; c=relaxed/simple;
	bh=cfhhhzhQxZrXxPloRoYunXy+b+gOmZJrF1u84C5Mzbs=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Iuu7BeAwcEMoA10Gd4bObGEl+vcEJmUBh4+dc6hPP0S0nc0hlzU7iIGB7+Vl1xoP5On/dq5EbZaenEJAYU3c5HNB6cAlq+BxSJjfiFdfXIMne8dMEzrViRPmJcE3RKrK8LfCiA+6tYHhUBVGotKp/IPSpkZuOmxjKA8H3Ln8rBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xGlCf3RQ; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-6188b6f5f9aso646239a12.2
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 01:47:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755506854; x=1756111654; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p0L7vCqnemiga4MJSGEdKnywkyS4sL50zcZbVWgOu40=;
        b=xGlCf3RQ4OmYcH5KpurF2OaO1+xexpMa7V1UcD1BKoR60Qyf5OdIGs5eLIfRfjd8sB
         GwoJow6gXrqivJeYhMZ7n3IAPAwP1TrKollsllF/aqm5/S3fRQk8cklGJARp7VMDD7oV
         G2JZvvk4hC6VpCYnYCufufk3nBMESnf600hcp/o8imuSeytayRJgvB8DbsBkZ+FYvvL+
         S0+UzRXh4Sv4ztoWVxjTahRrVZIYAm03B9oWwVizrsxRxSfPvAOrqiT6E2BCMWFBeklJ
         BVuQAmvTlUyhngkfX04Ksi/ZaJq5TW+lWXjWy8tmaziLZYTSm3tbNR8pDoYsmIQHdO/T
         yDpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755506854; x=1756111654;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p0L7vCqnemiga4MJSGEdKnywkyS4sL50zcZbVWgOu40=;
        b=F1FeaTaB0FnePfFz2pngO0dOBNoweWtedEJtMCc3vcmKCNInPXQIoS2zLlOYDkjF3R
         8KVxRMDRHWo2mKQ165EIGk+l1FOpi+qbBUbBPGVZ+/OBb/dwClTU8M39PFTN6wKe1zvk
         WI7qIikIG8qI1jU/tCRxJc5uEAeCRwhCwzZIVjhLDGwzhsptkZ/eAVhNKnAllSJEUkci
         To7e2VWErwY3xB1Hek1E8pgiOjYt4kXfMs5uiN3r2m1uoHzeP7GwE7HKq8dReNyXgM1Y
         JQ3qAs3En4RGUdLTrq14O08J8m1VnOXJ95XtERyJJA5Hu5I2RelqK74e12U1wneZUosS
         +Scg==
X-Forwarded-Encrypted: i=1; AJvYcCVdQNGNBkEKylZoOZHFn8Vr3ynjjsZTRy0xegnnMnbS9DGulB//xLyBrUpIslDDR/2+6bFMvxmOsySy@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3AH2PnkkxfHJvYgoGqZ9YwBx9zf1ZYvcV7YY4t4P6fHnldId0
	1Nyb8cz9HNQ8JeDDeVUgawisLZUmHoSLB/KSImPf870J3mm6xkR491LNjsdBITpQ2Ow=
X-Gm-Gg: ASbGncuajSWjAXgthKCBHB2EtPGqm7lPHf9wZ1GGELOyxWKnoc4Wju7A5fi68YLhviC
	T/5yIR7opg6KjE3niL0+gh8ZtfDL9ImaY/q1rEqXM46OgLN2A8M/k+vi4us653yJtOdmJxf8kPu
	EmY/LmVNmoVqdJuORZlip262PaIEuBmHxOYV5kbwe1XvRpxYEZ8GLcq865lyOwixZHzaLiJ0LO0
	DsVR6ulWJ78K08sG+DmVM/3Bc67suqBE+fWSL+IQtMOprlY2YG8YKIf5Z9+PGag/fH9+Mbl18+L
	bsKt5AXOnQKTUvmN0Wuc27eqbwbIQExPrZMX0Ei6bZN7JfVcUv9Or+jyBt+Qhx/8rK4R6z7cLt/
	CObxr5X2h4PinJl2ATVGHJUEJsMOv5x1SuyeY1v0=
X-Google-Smtp-Source: AGHT+IHknpi+jVcAiHPe7qLq8tMu11yKP03M4lXkXrorN3kjMjAvXVfdd/sJwjbdKxYg4VZrpI7G9w==
X-Received: by 2002:a05:6402:1d54:b0:615:5cc1:3446 with SMTP id 4fb4d7f45d1cf-618b0f1c504mr4641443a12.5.1755506853905;
        Mon, 18 Aug 2025 01:47:33 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-618af9da68fsm6627647a12.22.2025.08.18.01.47.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Aug 2025 01:47:33 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, 
 krzk+dt@kernel.org, conor+dt@kernel.org, krzk@kernel.org, 
 s.nawrocki@samsung.com, s.hauer@pengutronix.de, shawnguo@kernel.org, 
 cw00.choi@samsung.com, rmfrfs@gmail.com, laurent.pinchart@ideasonboard.com, 
 martink@posteo.de, mchehab@kernel.org, linux-fsd@tesla.com, will@kernel.org, 
 catalin.marinas@arm.com, pankaj.dubey@samsung.com, shradha.t@samsung.com, 
 ravi.patel@samsung.com, Inbaraj E <inbaraj.e@samsung.com>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, alim.akhtar@samsung.com, 
 linux-samsung-soc@vger.kernel.org, kernel@puri.sm, kernel@pengutronix.de, 
 festevam@gmail.com, linux-media@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org
In-Reply-To: <20250814140943.22531-3-inbaraj.e@samsung.com>
References: <20250814140943.22531-1-inbaraj.e@samsung.com>
 <CGME20250814141009epcas5p153e4aacfc1ead3db8c9bb647c6e5c7c4@epcas5p1.samsung.com>
 <20250814140943.22531-3-inbaraj.e@samsung.com>
Subject: Re: (subset) [PATCH v2 02/12] clk: samsung: fsd: Add clk id for
 PCLK and PLL in CAM_CSI block
Message-Id: <175550685171.11777.14695565851704310683.b4-ty@linaro.org>
Date: Mon, 18 Aug 2025 10:47:31 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Thu, 14 Aug 2025 19:39:33 +0530, Inbaraj E wrote:
> Add clock id for PCLK and PLL. These clock id will be used for
> operation of CSI driver. PCLK is AXI2APB clock used for register
> access. PLL clock is main clock source for CAM_CSI block.
> 
> 

Applied, thanks!

[02/12] clk: samsung: fsd: Add clk id for PCLK and PLL in CAM_CSI block
        https://git.kernel.org/krzk/linux/c/1a713bd3b0c60d826bdde633919bedc1fd38df4d

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


