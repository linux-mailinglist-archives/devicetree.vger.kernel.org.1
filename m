Return-Path: <devicetree+bounces-88902-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A10D93F570
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 14:31:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E38DC1F2253D
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 12:31:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 171091487E7;
	Mon, 29 Jul 2024 12:31:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RA1Vd/YF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F25C146013
	for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 12:31:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722256277; cv=none; b=gUF+InQuFqFEcvCW0l8jD9/3z1I5MC+8qjnoliduHDaqCEUeAL8Hd89zjv6e83Qi5Zm4QZlQ2CyYc3eBYoiLYqE/Pznpe77qN1pwLIB7tA3iABSRTGSp72lFIVqXaT7rqwItQ74vD75T0iO9g8myQ0E/mGe0uFg4Cx/yNoUAbOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722256277; c=relaxed/simple;
	bh=1MJdqvR4l66CFymtTigURAQi+Ak55GLMbQ2E/5ReGDM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=RhztffOpt7U4rgDtQ6iSBk31AQDKkpNqMayo3eEtMz8pKidcJjRiUxajowAL6Na5oTFzGhSi86NoqFCKnjetsrjEv0XZDNPrReI4USPira6i+ucwhj5SR3odDGbqKFPee7WGq6LaKbdfd7lSHDzVXSjdRjLNzQ6SKtkTWCNr7zE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RA1Vd/YF; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-a7a94478a4eso701301866b.1
        for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 05:31:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722256274; x=1722861074; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aXEWCd7FqpXeUoPV5fLPpv01DhdKsxKfAinrkombeok=;
        b=RA1Vd/YFLsDhjZBh4ET3F2CyuWwWNz+nVsbtGY9VzzsPOqGIxYFBE4yg9ekUGV10OS
         DHALFcbESjfOHJTwAfyn3qiM3HSLbe1/Hyzzel3YmaZY403Zdee9aVruysamQx3DMC1l
         ta0cgLR3minX/JIB7JyKhcgIu0rfWcrW5wvMW8bkdyHMqI4GOTf5N5Eo5z0acMLAP6W8
         4p9DhWrCNfRrcVt/5O/4UtSGBxUEz/p1xnm9kUZOF6Df26uuLGEulyodywkpU40QH5Y6
         e1l/9cr5WgJkiDgG8IRGq0tl6Khxzn5yLT5pPh5i5w3N+qyYlx56LTqEHD4YcxWotjdK
         uZ/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722256274; x=1722861074;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aXEWCd7FqpXeUoPV5fLPpv01DhdKsxKfAinrkombeok=;
        b=Plx8rbDXbWDPm2YVMPXgkHAZdKbdJC9nmBPVCyhlqW6jLf22pQ7QRj1esFwpSpKVTr
         b9Sr6EceW6OiEMEfyq3vWvdYsYVt8gcmM7zz/2RYuJVRLgiCQJtnUkxo39eVR7Gnp2pf
         W6djCIv1GShgs7ULFDDaKujlp9gL/ZD41Weq2cA72OkYdTM3sdVpLx+N1lCMYkz8bJR3
         BCWqoNus601o8/KvGpxzHiUaeDHRE1sAY7LIfdChRD/6qsisKrWiAitLxr4Qpop/bx9N
         43RwG4vVkZLesTfKGdzsWGRPdhi9/hRxfiF+xgHgkzUf65cs4iSww/vzIriGn6N4WyiR
         q39A==
X-Forwarded-Encrypted: i=1; AJvYcCVljMWabvNyBG4WYw2MUD+QAPM0fhLd3DpdhaFCdLczX3kIphCYlgpaDj9TTKlBuEwACKQtyuEKPhqjwdNGvjIT06xWrnbSVwSsPw==
X-Gm-Message-State: AOJu0Yz7bTlNUqcW8mC4RWcO2YiSGiO6kdqq5FZkMS58UlmFw6JyBh0x
	hwGvpParzOwkYMNLQJQ0OVNan9w33usNy8q44NUmIHkhinRf5caIlkcJPTaNNE0=
X-Google-Smtp-Source: AGHT+IEcCCNjVqMjw+SlV2NGC1JBsZBQwl83wS/81hnJwhDhzkYKop8654LkJwHocVtqfIz4Gw4IXg==
X-Received: by 2002:a17:907:1c19:b0:a6f:e03a:99d with SMTP id a640c23a62f3a-a7d3f514a03mr869934766b.0.1722256273697;
        Mon, 29 Jul 2024 05:31:13 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7acab22ff1sm501973966b.35.2024.07.29.05.31.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jul 2024 05:31:13 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 alim.akhtar@samsung.com, s.nawrocki@samsung.com, cw00.choi@samsung.com, 
 mturquette@baylibre.com, sboyd@kernel.org, 
 Peter Griffin <peter.griffin@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, tudor.ambarus@linaro.org, 
 andre.draszik@linaro.org, kernel-team@android.com, willmcvicker@google.com, 
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org
In-Reply-To: <20240628223506.1237523-3-peter.griffin@linaro.org>
References: <20240628223506.1237523-1-peter.griffin@linaro.org>
 <20240628223506.1237523-3-peter.griffin@linaro.org>
Subject: Re: (subset) [PATCH v2 1/3] arm64: dts: exynos: gs101: add
 syscon-poweroff and syscon-reboot nodes
Message-Id: <172225627208.280610.7893124858038384866.b4-ty@linaro.org>
Date: Mon, 29 Jul 2024 14:31:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.1


On Fri, 28 Jun 2024 23:35:04 +0100, Peter Griffin wrote:
> Reboot of gs101 SoC can be handled by setting the
> bit(SWRESET_SYSTEM[1]) of SYSTEM_CONFIGURATION register(PMU + 0x3a00).
> 
> Poweroff of gs101 SoC can be handled by setting bit(DATA[8]) of
> PAD_CTRL_PWR_HOLD register (PMU + 0x3e9c).
> 
> Tested using "reboot" and "poweroff -p" commands.
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: exynos: gs101: add syscon-poweroff and syscon-reboot nodes
      https://git.kernel.org/krzk/linux/c/2d0c7ae784b487343b4813db9cb133ca51c674c3

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


