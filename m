Return-Path: <devicetree+bounces-240728-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 434D6C74918
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 15:31:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 42F4E4EF25A
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 14:22:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D479733A71C;
	Thu, 20 Nov 2025 14:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yRQOsFat"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED228348468
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 14:22:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763648542; cv=none; b=u6/TFXTm/vWFVGtvsiHvwQzUv42OM+iuWQ2TdqbQB1njnqBA/1/I7t9ir3A2EPHBslxWkXhLT6NwqzJO4/NRehdHiTSUNuANRV/gnLRgnjt0sqdnCj6CpJzlVov9ZaR5XroBGJI7arSP3LulLbsVkHcDhqLtvPu/AOHOsqC6wwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763648542; c=relaxed/simple;
	bh=oBNH8eUjmKYO/3xhfUUA363GVWbTM9WGGCw76nOKELg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=VKI4xZ8hkaKtyn4KzeukN2zZhWTKfpUQPVzdyH5860gKN6B/6SdtLulAYhK305qma0zwepL3hvRxJuk/Pd2XNRo30+CGdxlhWI3vLt/f/fXpwCLoXORfRUx16mbYBXqQ3lgCLOHVD87dzfUGJRapQeCuct8kUPMkMpyr0rQZmlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yRQOsFat; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-42b3377aaf2so548136f8f.2
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 06:22:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763648539; x=1764253339; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ImsNgbxyduoUICuKtNWRzS77ROdXymoggItSs8rqsZ4=;
        b=yRQOsFataZr5kpygt3QIGcCWi6IQiF6AkU1hQlXXuIAUiY1gPh003W7r2WiBpOAh26
         u9Ule6HojtjDAehtHQAZ1v2r/Lu9bOewR+Fp1oyDhhDuIJezcJpOsBoniltvoqk6LI+Q
         U8NWIsBm7ZJRWOGl3oriRdAQqNHouU9oKiuag5PGEiJDeegyXsbkGyiqK/IjjQGCcUN7
         w+MA6vzYen2O7Q8Q2RGWL7h9tfnL/f3/0hxFTc35rReiGs1xk/syIeHN6WNwpu/CppNV
         WWJWS4v1+AF9gxPaBotnwfCqO6G3Z+Atb8+eaGqjaN9vCnyT4sHg7IeWjHFgOZUOorUF
         +yQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763648539; x=1764253339;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ImsNgbxyduoUICuKtNWRzS77ROdXymoggItSs8rqsZ4=;
        b=dFHK4D5JHd21bd8ot8xUSR4ouOxUfUZ/Ln4kbCsw7wlC4zlW/xAjpffzj4u3FDYSr9
         /okuMVuKi4uZ1BTABxQ5MXDOzqQpgS05B1lMEe7/2Jk1ZY9JY62b038XnIkZykPH87hs
         QkHc/m/K771iZCAb8leJzQZbUIFfhAUZjwVweogbp6UqVJPuxWw2r5nndLmHJ0+GkSx3
         BT9J5UB3g49klzHb2eOJV0FU3nTQS5lQrK7KmaCePQk1qMFNHb9HHFeJW6gOPahTrxtx
         EAYUZZJhesFYE5xVf6sJGYjmNrFm+lL0Lw3qcngwQAf/JrxbYetlII/WYAPZH/MluGyW
         i9ew==
X-Forwarded-Encrypted: i=1; AJvYcCVseioOOdj/EXFCgy4M2DIYLY0QqNrxLen1TuLNld5ewq070h/pP9IE2HCYvovydoT7siBG+yRGpC34@vger.kernel.org
X-Gm-Message-State: AOJu0YxiJuJRWdiBfXEuXoGlQp1bIx7RMz4ffLYD33v8BC5mLKk00OvK
	CMf5xBQ4TK3bfsjy1G0HhuzhROctgurA72pDv/NaufPTbGlPk5OM8hQkO3B/WxRkyDA=
X-Gm-Gg: ASbGncvcxZC9+uK6Unhb1qv1GZVrulheRyK0Db815M5zPsHwrks/Rn5FjlATQ6KoyvK
	BVdqvM0GB0lDMPIywircmY4UEOQ2tXclc3XBsR2jD6FZ/Bly8ccKx4rX7Yumno1Mkj9PuJMXFUT
	x7jn4y/7zMyYIth4golH9DN1lf4PO2v4oJEy5Pg0MnT9EYZl1HE0MBZL9PPxd8K6aa8C6ldZO4J
	Zdhl8YXwlzuwGoexmvgraKV3RH/dsCuZF+tTSjGRP+D4yc6rV+x1GcnZGfXtMobnbbnxPhE/H4F
	ByUZxTPzx7idLk5bRM08I8A1LyAccn0zCcETtLIYpGaimJpbK3PoyYV8fha4Y/UGgsQZLH/WjL0
	djLaIrLOzJR3psZJz45HNp/RPJszckvrgs4w8OhLmSR+ka7/fGF96yqtFRXB+YUUV/jaBDxUlxI
	WAhtutL2IJU2Yecnc+9ZlZz8jqTQ+9noM=
X-Google-Smtp-Source: AGHT+IEGseLKbFavKV9xaiJK1w+nleecfiJIQQYI2QNSmK0kaikQ4QsqFmQRSpA3dOYxpV3ByNTjGQ==
X-Received: by 2002:a5d:5f48:0:b0:42b:3ad7:fdb3 with SMTP id ffacd0b85a97d-42cb9a1177fmr3052135f8f.4.1763648539064;
        Thu, 20 Nov 2025 06:22:19 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7fa41d2sm5565338f8f.22.2025.11.20.06.22.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Nov 2025 06:22:18 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Heiner Kallweit <hkallweit1@gmail.com>, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
In-Reply-To: <20251105-irqchip-gpio-s6-s7-s7d-v1-0-b4d1fe4781c1@amlogic.com>
References: <20251105-irqchip-gpio-s6-s7-s7d-v1-0-b4d1fe4781c1@amlogic.com>
Subject: Re: (subset) [PATCH 0/5] Add GPIO interrupt support for Amlogic S6
 S7 and S7D
Message-Id: <176364853839.2628478.10260053331001764353.b4-ty@linaro.org>
Date: Thu, 20 Nov 2025 15:22:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3

Hi,

On Wed, 05 Nov 2025 17:45:31 +0800, Xianwei Zhao wrote:
> This patch adds GPIO interrupt support for Amlogic S6 S7 and S7D SoCs.
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.19/arm64-dt)

[3/5] arm64: dts: Add gpio_intc node for Amlogic S6 SoCs
      https://git.kernel.org/amlogic/c/96ce4313d6f9d5131937b449f9a2484277658c13
[4/5] arm64: dts: Add gpio_intc node for Amlogic S7 SoCs
      https://git.kernel.org/amlogic/c/8e8059d1747da43b0d8dafff216cbf32b647a7ca
[5/5] arm64: dts: Add gpio_intc node for Amlogic S7D SoCs
      https://git.kernel.org/amlogic/c/691db5908724f2f63b3a2fbe8394f2cc35b02c31

These changes has been applied on the intermediate git tree [1].

The v6.19/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
for inclusion in their intermediate git branches in order to be sent to Linus during
the next merge window, or sooner if it's a set of fixes.

In the cases of fixes, those will be merged in the current release candidate
kernel and as soon they appear on the Linux master branch they will be
backported to the previous Stable and Long-Stable kernels [2].

The intermediate git branches are merged daily in the linux-next tree [3],
people are encouraged testing these pre-release kernels and report issues on the
relevant mailing-lists.

If problems are discovered on those changes, please submit a signed-off-by revert
patch followed by a corrective changeset.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git
[2] https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git
[3] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git

-- 
Neil


