Return-Path: <devicetree+bounces-206314-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EC526B2C084
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 13:33:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A974E723B6B
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 11:30:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BDF632BF39;
	Tue, 19 Aug 2025 11:30:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Z5NNZKBS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B68232A3F8
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 11:30:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755603011; cv=none; b=D/3IomDVx7e2e2WlHQKS00xCfIjk57woKSZ04bQ41NJ3xKIEshNQSSo/wrPxzXVsIRPp3OGdYeseYrUz0ANVizBt5wab5ITy3CKhJ1AIRbImS9O/GxrW3HR+BS6TAktTNjgnG+FN3GYu0CYaAikphx3jb6ckaNoUHa4EzcfFM4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755603011; c=relaxed/simple;
	bh=lMubVHIOYZHjuIy4jzyQtspupuCgz8Yv3TMEP2lh7GY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=C9F61mHmkSFoDvEA4BPoRG/nnGv5pOr0RzvU/6gxcRpDNwfcv4mh2w732kw2aQEcxCzHC4OkkhjNs+V89NzdzkQ1xys4kqwFXqEI2vZV7u2Hqk+Imt6viFy+kB7M1a2Rc7V/5ww9SJiPpz6RTDg8MnOm29AbAoFxANoKD/i1QZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Z5NNZKBS; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-55ce5097638so5406147e87.0
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 04:30:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755603007; x=1756207807; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g8Zt8RWp0BgkL/argy/j/Sx1Y0JjzJHgLTbPSG2Iyz4=;
        b=Z5NNZKBSSh4otR1Jge/1ROUAWFsBfwWVaD9qPmacpgOb5ZO//S+Uz9uQ4viMMAWFf9
         YGTi6/Hw96RChy+2MA8q+Oow9fBuLUu1lWJh6yqDNP1Qk6U3mtjoB/ia4IVYAg6VDGtI
         tBZd4WiOknuv7ZyQ627c/KXO5CywOgF2CP0lE0hMHi239W9i6+lrmVtiCCWpyFu9D3sv
         FCRSn17nHEQKkVnENzYFyzu/Yb5OiWms933FV8UD9pWcAPoNf7DmIJizSzyjtHIGcNS2
         HOrtPhfOLCh5OcBGUFswsx0NembOxLaTOFt7FCyobj2JwkJOZj4zLOgVooysdXPcDBxe
         aK2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755603007; x=1756207807;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g8Zt8RWp0BgkL/argy/j/Sx1Y0JjzJHgLTbPSG2Iyz4=;
        b=LOKK19Xiwk+GX+ecebjlA2WjMl936e9IUIZQiJ8uFbzIhFu7mIdaA2NGeER7QXNK/K
         ucegr9nmJCgb05dbaISkr25N0dpiQToHWYGG83bD1tPaGLz8qib1dz7qu1ywucS8XQZ2
         KOat0jlvTdbzCn3vAANnrWMh/X2g4b2uBTrfsL5jabzrnyC5B6ZZATXJqIV6SKDNFK9s
         kak5uYlfbTrXe5FjP+WK6QX0eZ/jTXK+yDIZpLpdWOjjjmnJOQJb5W9pASanDYpGRw3r
         3pZIW5bZ8tRk+KANv0lTAYXicjYxSOqBeHkXJzjGjsTw2ofjcRBiVBy0hvRlWfsw0pvv
         5THA==
X-Forwarded-Encrypted: i=1; AJvYcCXNvtJDJ4L9fqHSrnQytszhgFANHXFD6uJkAL098zo5PBBVRtHtFyje1R8F66HaUap7gTZNaSZS6Thy@vger.kernel.org
X-Gm-Message-State: AOJu0YzuSCA5yIZ1v9jSYdvWSTDZEvqpjdKawSVYbeJSW5ct/aPUQqZl
	WYjry/675gYA/B7p4eR6jFZlChpD4sDP5P2xtdnpIFzAAwhjlKz2QM7voGXVOIpDH+qo2T9nqHM
	1H9g/cGE2p3g6hRcyNaPYkGzlqyVdpjCmAhtRG8lJ9A==
X-Gm-Gg: ASbGncuFy8ciNWpZF6xX30mX6UxqWafDmvO6PdYroKYzZJ9M1vCCcgQMTY9ds8y+9iM
	0B89Jl9lEXicSA973ZTX4X1EOA/1Ug7LM+dIITOz+2K59noNXF6zMuUTm7lMFIzwexvkU1QRAOO
	wggCT0l+RuwvIcRzaGavvAFCneu1wsrX+NGbLjFqsMmIEXphb9vvVtfnzBW1upt0bGdtT5HrYpg
	r0BGt+cC7TyaspuKA==
X-Google-Smtp-Source: AGHT+IGIQkeqWSXk6UW50B0lvRJ9yh6Ui0meCyjjUOq/i3AdK3dvZnjrLz811wrbO084+jFl2Soan4QZclj+LnmGujI=
X-Received: by 2002:a05:6512:318d:b0:55b:9460:2a30 with SMTP id
 2adb3069b0e04-55e007959edmr704413e87.11.1755603007489; Tue, 19 Aug 2025
 04:30:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250812-tegra186-pinctrl-v3-0-115714eeecb1@gmail.com>
In-Reply-To: <20250812-tegra186-pinctrl-v3-0-115714eeecb1@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 19 Aug 2025 13:29:55 +0200
X-Gm-Features: Ac12FXyJeMR015VuulCaDAkb5ecQnwsNmUlrUKxO75YDJ_lmXPNInWa--QpmnnU
Message-ID: <CACRpkdb=U=h5OguMuy9G6avCCN6Aem=2_60C+_uBsrY+UvD5ng@mail.gmail.com>
Subject: Re: [PATCH v3 0/3] pinctrl: tegra: Add Tegra186 pinmux driver
To: webgeek1234@gmail.com
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Bartosz Golaszewski <brgl@bgdev.pl>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 12, 2025 at 11:24=E2=80=AFPM Aaron Kling via B4 Relay
<devnull+webgeek1234.gmail.com@kernel.org> wrote:

> This series adds support for Tegra186 pin control, based on a downstream
> driver, updated to match the existing Tegra194 driver.
>
> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
(...)
> Aaron Kling (3):
>       dt-bindings: pinctrl: Document Tegra186 pin controllers
>       pinctrl: tegra: Add Tegra186 pinmux driver

These two applied to the pin control git tree.

>       arm64: tegra: Add Tegra186 pin controllers

Please funnel this one through the Tegra SoC tree!
(I don't know who managed that, probably Thierry.)

Yours,
Linus Walleij

