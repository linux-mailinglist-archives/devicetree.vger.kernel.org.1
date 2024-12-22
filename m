Return-Path: <devicetree+bounces-133336-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4580D9FA52C
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 11:08:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BB03E18836C5
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 10:08:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C93F18A6AF;
	Sun, 22 Dec 2024 10:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CLta0Ikr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A48618872A
	for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 10:08:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734862103; cv=none; b=izLON5Y06qmCzz1JHXB+UNdbz1Ua1IbHdgVnuGGNj1ONMn0GrtmNye2CmYgLheVD+8QlGWuvdvWK+KxRvku2zGtQbmImeSzAdwbRVnqac7Bab0nHOxsF4ct1MOaUX5y1WeyfzZXVPHxmh1Bt9JgtvpeTV0skk0qUuEJ90+eqIiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734862103; c=relaxed/simple;
	bh=f7qlKwjyHU2R/7epqrorIwViobfnknfYkuky5gSijWA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=mJ/Usg7RxHJlYcrp/gPgJKQURmPN+TufVkU1aFp9ITNCmoSWDUScnzbGXPGSZFX5vsRlftKepXM41ab+z7r2j/PCna3P7lImaUAsWoK3tGEAYGA3C0Cv/VXUGJbPUrUVTucYJxsV82HWIBSiw4Gh5ctR/+FYe2fnfQ8HZ12GaL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CLta0Ikr; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5d44550adb7so592766a12.2
        for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 02:08:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734862099; x=1735466899; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vKBsYFS9v4iubTvWXqou78ADw4DmyfMOcWadZXgDRNA=;
        b=CLta0IkrHu0ZkmFMoTTlY1daiolc2B/qIolQ8oJC5CBe3goozyNLQ79KdfFzH8lASu
         z+Ok/C5J+8JFhxM9/b5zs748f+Dygw2O55RJ+cLc2YGGl0qwcKEwhh0hRpw1E/Z9jg2Z
         HuzHokiVTdRExbk3WMkgvX8vJR/hLpSnP7LAQ1rbyFfaWkuRdTiL7KBNK2he68F3whzT
         6MtDOQ6EMZMQ3dWRPN9JpTMWAeFC+8FVNDd0VSiBtT5hzHXiX+K9EqIXhKG7TEpxig5/
         QYA+C1Qk9yFaBdtgEX1d41TzLuAJeyL4nfCnpfODFLoj2x/B/NbErwfN/xLqYgZ8jCum
         woDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734862099; x=1735466899;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vKBsYFS9v4iubTvWXqou78ADw4DmyfMOcWadZXgDRNA=;
        b=ROfjhbh0nKFnb0oIgkQMkfQ2SDwboL/uKX5qnt8NMPlC3NVutiQuawFOsPF9+/gQjO
         Ljj/q95Xjyrc8zDNwP/sYi1xIBQkrVIe3VZVOFpw5lomPRvguz1rqG6wEOqIDz4SmnWA
         aPA0Q/qpxefbB5dbADDP94V6VI7gPjAR7RbV8at+kxVH/8gmybAds8bBvwEntowSYQwA
         fA+HE7bot9BudaLYSwm1GOrNSlxIHAnSQZn1ToRoEqhFyyrwfsCMEm6Djk3OqkIad/oi
         6gYcsPrXmHFcGFSkf6Oez1xP+FtxPVOQPuwfMLJPaaa5WGcPX2+kXB273oUi0ejB1lAZ
         SLzQ==
X-Forwarded-Encrypted: i=1; AJvYcCWODYidwf54WT/Qp3w3PXd/nIfDvUfLzl/Z9G4t6TImAxYOeCHbNdGsRUQq0OgnkW3wAbBUh+hs2whO@vger.kernel.org
X-Gm-Message-State: AOJu0YyW6Vx98YuIHfSVerqvYbLnbDwF7ItypxfXTsFL3o6ART9UmP1x
	R/DkGhZYFexeMqGc7aaLtdS8d/iai4aO/4Hr4qBVSrrXrVDyedUAkxTsZ/WOiCo=
X-Gm-Gg: ASbGnctPZEFImg2LfOKL1vjfAZLBy4FgPXnWl3xMgkRkEqjfn+mt5QCwttVd37CZrn7
	wY8U9DiLMts8YeWVQInYh5V1dUyG9fvQWuSL6RXGjPuEB4CsrZT4HrCQ54RA14L7qF0VY9LgUO/
	PBCX4CaLwdPFLDTCFon4JwgTK4k0iE3zu7INLoM0kcZ6/EaTcx31RhAeuNqi5KJQwT4L58uSL3U
	pjgbX23vpdfkfzGorpkAoPI8Ur6UEHkismWERg+hqDmtluYRiorW8vmbO71hhuYGA72r0GEq6cy
	P3WmJMQfRW6Wtv4YHC7ynLG7sfXVAw==
X-Google-Smtp-Source: AGHT+IE54OW7NxT5X1sBmLNd/D0kS8uVGSQ68xoYttBlaJ2oUwzQEa9S1NxTmY5pBfaOMmcVqyxeVA==
X-Received: by 2002:a17:907:1c22:b0:aa6:8dd8:8152 with SMTP id a640c23a62f3a-aac33559ff6mr278592066b.10.1734862098635;
        Sun, 22 Dec 2024 02:08:18 -0800 (PST)
Received: from [127.0.1.1] (46-253-189-43.dynamic.monzoon.net. [46.253.189.43])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f015b53sm372279266b.163.2024.12.22.02.08.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 02:08:17 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20241220-gs101-simplefb-oriole-v2-1-df60e566932a@linaro.org>
References: <20241220-gs101-simplefb-oriole-v2-1-df60e566932a@linaro.org>
Subject: Re: [PATCH v2] arm64: dts: exynos: gs101-oriole: configure
 simple-framebuffer
Message-Id: <173486209717.9271.11039463162908346528.b4-ty@linaro.org>
Date: Sun, 22 Dec 2024 11:08:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.2


On Fri, 20 Dec 2024 10:32:50 +0000, André Draszik wrote:
> The bootloader configures the display hardware for a framebuffer at the
> given address, let's add a simple-framebuffer node here until we get a
> proper DRM driver.
> 
> This has several benefits since it's an OLED display:
> * energy consumption goes down significantly, as it changes from white
>   (as left by bootloader) to black (linux console), and we generally
>   don't run out of battery anymore when plugged into a USB port
> * less of a burn-in effect I assume
> * phone stays cooler due to reduced energy consumption by display
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: exynos: gs101-oriole: configure simple-framebuffer
      https://git.kernel.org/krzk/linux/c/e32a7fc0b14564f9094f90053c74f500809ddf3c

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


