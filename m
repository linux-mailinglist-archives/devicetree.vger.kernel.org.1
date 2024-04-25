Return-Path: <devicetree+bounces-62589-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 081938B1B82
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 09:10:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BCE18286311
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 07:10:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D14136BB48;
	Thu, 25 Apr 2024 07:10:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="w10Qpr/b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18BE96AFB6
	for <devicetree@vger.kernel.org>; Thu, 25 Apr 2024 07:10:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714029003; cv=none; b=LxKFcFxezpypjhhaC00q2Xq2iptCGyIs7miTCwLOvHRAry3pnbRejYSjB2+Q/+USEUFvJsVVV7R8QbuCeGUsUa6aOdBM8Jivg/cvp16CSRLy+9WlNWTbHbfW4lqKpj1KJoaGdkkLl/KsKsm+Zybm+bilEsh0P3dFqsRhCvJY6gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714029003; c=relaxed/simple;
	bh=kFy2c2MMRc7/mbY6XyHT0rM8BuRQOTFXPjjUtO+dJqw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=C9OrffgkxObqOks9d0pdZT9TJP+wcsSqFT/AVZ53tJfp6N0zI4Qj9e5RSoYNBPUX6/qarPOAcHOVR/hmP96hjs02ecQCku2FhTviJM2K64NyPFNdPaVeBk7jvzAdXRgwpItBFQVqMh3Ykj8Isfi1H/buf+CRL8aqXECYYQ7Vbbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=w10Qpr/b; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a55ab922260so82959166b.3
        for <devicetree@vger.kernel.org>; Thu, 25 Apr 2024 00:10:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714029000; x=1714633800; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pKbtdaZh3aa5WKKWvhlJ2SkTdhHq3DflemRgyxWAUJY=;
        b=w10Qpr/baTrdev26UCwAElEdXPrUBSkYufqNP5zfAEBPRP7y9riJj519ad6u9vEIiT
         uJXlUC7az14fnUo9PUgtJYkMo3sFq7KOIef3WcvR42FRgoAaWeaaBazrBgCs1SkWsXt9
         wdiK/zmH3zine7A6vms5+7DI8RvBpZyludQ6i2R0jiIFAOsHTyqM6QvfYfDBhT9nzLpS
         i/Hofu/VxHWSkj0fMl2l6vvS3jEt4R0qS9VdvZ5267NkOhNVH6sZVgSuiO+t1YQ71C9F
         G9HMg5zuV7RGo5BLWsMAOURV7+ODBeOe9vDpj0qEO93B0S4Nt65tyNSKlrXEQpAQ1esO
         ATZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714029000; x=1714633800;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pKbtdaZh3aa5WKKWvhlJ2SkTdhHq3DflemRgyxWAUJY=;
        b=AEWjC0Hq2z+2uzmDfzx31REqAxFiu71FKXAfYqqLTRDE+fCN04BF/qckJYmpxlh8wT
         YaHeOm0oN6oeC4nWhPAEsG2pCHI8uPMiJTZOnfyR7jtE1FGfWwUxarS3glZp7hV6pyjY
         fYT87CZ7sPkTKn3Zv57rm2nClDAs7w2gHerJk4XMPKpeujHheEIuirtndOsaWCm+CZN5
         lQS6wU5JkOEIB5x4nQOozz362KHrddpoVZpY6zLVkgs+HL+oabxBmrYDVd23pf+miE+J
         47OnKoLAIfmxyIOzS3ejEDq5dlhMMf51Ml1hvHaPAOdYziUj6KHsWGL8tbEM5+BE52br
         TQvQ==
X-Forwarded-Encrypted: i=1; AJvYcCVHaAHbzQ3OwRPWy2o1V0zS6h1hPKuQkvulRNOXxV7NhImdFzqdhnGnza/VcSHB+bwo+FaeQSiCwQBR3HpcMSiFnE1wvqvrs21fAw==
X-Gm-Message-State: AOJu0YztGaQ2Wp4md1+z/L9bRYJwYdrmn0n+HB32XIFp2h/BhYLgzzLI
	XN1zeFNC5qR7pKY/FfKGTk2ReXyVYCy5qzGoRyQIja/YACw54KaIVPmMQTjU2Sk=
X-Google-Smtp-Source: AGHT+IEs7Co328LLOzTBckFT/nv1oG4AADn4/nugSXCSJvSnYFZ91QkC3IWACxkGxn3XSoA8+ThZGQ==
X-Received: by 2002:a17:906:e0c7:b0:a51:f463:cfa6 with SMTP id gl7-20020a170906e0c700b00a51f463cfa6mr3235443ejb.29.1714029000353;
        Thu, 25 Apr 2024 00:10:00 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id z6-20020a170906434600b00a518c69c4e3sm9136727ejm.23.2024.04.25.00.09.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Apr 2024 00:09:59 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20240423-hsi0-gs101-v1-1-2c3ddb50c720@linaro.org>
References: <20240423-hsi0-gs101-v1-0-2c3ddb50c720@linaro.org>
 <20240423-hsi0-gs101-v1-1-2c3ddb50c720@linaro.org>
Subject: Re: (subset) [PATCH 1/3] dt-bindings: clock: google,gs101-clock:
 add HSI0 clock management unit
Message-Id: <171402899869.8385.7722233712941698013.b4-ty@linaro.org>
Date: Thu, 25 Apr 2024 09:09:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.13.0


On Tue, 23 Apr 2024 15:31:03 +0100, André Draszik wrote:
> Add dt-schema documentation and clock IDs for the high speed interface
> 0 HSI0 clock management unit. This is used (amongst others) for USB.
> 
> While the usual (sed) script has been used to derive the linux clock
> IDs from the data sheet, one manual tweak was applied to fix a typo
> which we don't want to carry:
>     HSI0_USPDPDBG_USER -> HSI0_USBDPDBG_USER (note USB vs USP).
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: clock: google,gs101-clock: add HSI0 clock management unit
      https://git.kernel.org/krzk/linux/c/dbf76c0d3da8d18a46f75130bdfae7b3b54407c5

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


