Return-Path: <devicetree+bounces-228619-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 35202BEF8C2
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 08:57:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6F9CE4EEEF5
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 06:56:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2ACB72DFF0D;
	Mon, 20 Oct 2025 06:56:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zKBlNSmA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF0C2DECB0
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 06:56:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760943363; cv=none; b=ipLx/D2/6TOZCGzVfu3n+goPA49c8mjNVZJpWmb+gAPDa+SlLrYrTShJZvOsMmoQY02i48IKtme+9p+ndjf/dH8WEF/32u6C6jPsx63ssBzm+ReqxJBdCxLUSgApHFUvk47f/gObn4i0rEmwRMU38PzI2HcJhbJRhfXExgDbThY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760943363; c=relaxed/simple;
	bh=IuhePpDwW9vcsRvZZXVskNe/TnkA6rORionZyn8mAx0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=ch6glDc9EAcS55BphK/kuPJ4DacLF0+JpUe+fgVws/vl4dmf/tfMAQIkBJAbTaQpDD8FIB59y+RGh8WDg8WMVdxObw7DnWvuXVomCwBnwPXhKOtESRQq6MSsVdnaCypwbaILQxu3GfKox4YPk/vtbg0g4V77r/yRUEvQrgUaMTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zKBlNSmA; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b3ce040db85so61756066b.2
        for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 23:56:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760943359; x=1761548159; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Czacv4czTyoltt/AnMN+6IUHG+NujxotRkdbKUYJy0Y=;
        b=zKBlNSmAII4Ekas7fQzlbz97M24xN5Qzz+W6cv1LVd+tIuXDoTC8a6LXfZ/quMtXRf
         Gx1Ke8hBAcStlXb9dHUcDApsfQInPb1BmZP8fz/whZ3unlwnBItFdB2/ZL66EruVnZkX
         d+5dvVZ0V5U96iOQob6Ac45qpqu+ESoERYNDwwMJX9/WlL1DL0SwMyY2DlfnL3I74tIj
         KJ1fPslyPq7UlXqDYqv4mziYi82BWK1s0ysKdm1Pd6KeKRCW+lej/2kHoDHrx8j6Vgjg
         5Pr79ZdidFQBcjQvVXpF1afDLOps3YUjAOm6I/e7AL6TQzPJEDnej5Q5JB0iFomLmTee
         aodg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760943359; x=1761548159;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Czacv4czTyoltt/AnMN+6IUHG+NujxotRkdbKUYJy0Y=;
        b=F19YAK4n7G5vMtk9xUyUzHFZqp3aAdOa57cgnlbRz15XfnScguU0Z9IM0+B8sCzSP3
         PqXF91WF15WbpDbrJrCunAOHMqQF+b4/qViDeJuYzngYHksUJ0k6h1OvUI5VJptFvMic
         prfp5Xjj3n8dL4iLFpje5ZvUw+1D7urYYTHsBo+nxog+uzQRX+OdrlNv84F3AbUEgZQh
         EQqHCb0rnuEiT+VJiTKmbVVsoBMJ6zUYKlUlaBZnDSv56jsYNIe+IwBMO7ATKh7rpkmT
         rBC7eLn3felbBELi9YACZjOPvuA7D7+8As5JFsAYeuMjeegVZn8jNq67/Hr4b4u2amsM
         Co1g==
X-Forwarded-Encrypted: i=1; AJvYcCVFV8eRr7ujPloxNoWtZJYG3mbm9+VRNaEqsoYApX2VIIJuyuavCzbNrYpkAzY6Xj+UGm04exTkrrP9@vger.kernel.org
X-Gm-Message-State: AOJu0Yzojehdkp8vNd4X5KMYHXkknaQ5kmkL593yV1pF5lwoFTWFQfh9
	94f1F+3l9zvCJ9/LBWGU0/5xwzeNPhZSZyAHJ4ueD8FPPqO+tjmVy2TTJIrJVNsZblY=
X-Gm-Gg: ASbGnctwK/tA7Z8D4rmhw5WNDhhj7NU/NmFQIZT3FEOfzhNmVfLIdyK+hwnydGukc6B
	xd1AdG80/C63e9gLCxAdWuRgnoKifJGiRn0dmSA7uFWqBAlYJhgN/ePJRiy1ma+BCHeeun3TaZg
	Fhh8QLBvgJsOWc5yd7mvc40KJC0YnEhRTiEZ/vwxMfDS97s6/yxMSdo3RF96bdaLMwHGbmWcO3/
	GIIzv5HZmBMo6BkOBKmatZJ4qDXMjw+CVDtyEZi0pGTqmA+bZNQUWzfZvJRgNsnxL3lEQxOj3ix
	68clC3CWUn3l5nTg7HW8VYGS9oH0PKpu1SCgEDcvGoI1MoFhKtPwjUbdh4bCtrn1PpeyAHNTuKA
	id1wuqi12C0VC4wlKf2GRm0A4dDcpCeFV8jBULZh0FQiTwtUL+yWrXKoKAOMg9Aa/w/utV0/IW+
	3ZxY0EeOmr4bdQKZwErJhhW2GVIBE=
X-Google-Smtp-Source: AGHT+IElilp8owkCzZnU/XdgVG40znc7ITwT4r+CN9LxeRdB7kJwCrsiR6HU18MteHFSt74cs5hlHw==
X-Received: by 2002:a17:906:9c83:b0:b3e:c7d5:4cb9 with SMTP id a640c23a62f3a-b647395aab0mr764832166b.5.1760943359427;
        Sun, 19 Oct 2025 23:55:59 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65eb036a3esm711731466b.46.2025.10.19.23.55.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Oct 2025 23:55:58 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-clk@vger.kernel.org, willmcvicker@google.com, kernel-team@android.com
In-Reply-To: <20251010-acpm-clk-v6-5-321ee8826fd4@linaro.org>
References: <20251010-acpm-clk-v6-0-321ee8826fd4@linaro.org>
 <20251010-acpm-clk-v6-5-321ee8826fd4@linaro.org>
Subject: Re: (subset) [PATCH v6 5/6] arm64: defconfig: enable Exynos ACPM
 clocks
Message-Id: <176094335744.18498.3151941406927244021.b4-ty@linaro.org>
Date: Mon, 20 Oct 2025 08:55:57 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3


On Fri, 10 Oct 2025 12:46:35 +0000, Tudor Ambarus wrote:
> Enable the Exynos ACPM clocks driver. Samsung Exynos platforms
> implement ACPM to provide support for clock configuration, PMIC
> and temperature sensors.
> 
> 

Applied, thanks!

[5/6] arm64: defconfig: enable Exynos ACPM clocks
      (no commit info)

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


