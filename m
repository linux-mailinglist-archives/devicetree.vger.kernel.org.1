Return-Path: <devicetree+bounces-226500-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E36B1BD9343
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 14:03:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3441118A27BA
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 12:04:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88659310620;
	Tue, 14 Oct 2025 12:03:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KeRbIqUR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17DF725D546
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 12:03:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760443429; cv=none; b=B1pR6ldkg+IN0H6NZ8fFYqbZyz9ae+iW1zDima2ZsTk28XRH9se6uh72aHalkA6m7ZuIy+q6zmEALcg4MfnR1U6xZPTf54MRdfJF3ZWYp2yVX8TBJGp21QsWGASotZiE5T3BZ9+qnwK3xgTE5QauRlsuPrgEsQ+HfTH1mz4yCK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760443429; c=relaxed/simple;
	bh=0NzeDm4YRr+qmfFJMboOlJS287Q0PmtLlAQtT9HyscU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ld7lgnZKs0Ymqp8KXBvHpLRg28TCg0qnjcgaQwlfRmBEKImHIpVffl8Eahx/QDUodbHryejj0EIDdJE8YMIsgrVztP0jtiFm8A6eoZCH49K8tfT5EJH3sXtwjFZiB5/4Z4lyIZDfX1fttTpcGlyy64ey7RDCSezJQPvPUdlXoEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KeRbIqUR; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-579d7104c37so6346298e87.3
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 05:03:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760443425; x=1761048225; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0NzeDm4YRr+qmfFJMboOlJS287Q0PmtLlAQtT9HyscU=;
        b=KeRbIqURvSmDKHLD9BjfyIl86pAK4C1iZUq/tjbs9bCMuphFQdxqW/bAwAcKUAv6Lm
         t2wwL6yXnVXaxgrF0sLYb737SQ8RdSXjPkeXO5507NRFOtJA4msOXarJBHf2TSkPrEfZ
         pxFqUgNRQ7AKGBqXyiDY7KwpgVVKEutHHW2tS7ahbfy4iBGKMRlFQyzT/5jYpbWmfRXe
         lf/ysQHLr3QRASu7pWgUnhdiN1VaT6ddwnnzRTyJY8hWJDGJTH7ftYZHxcgmQyuu+m1+
         +N+7s27oeoUcsRHx5dygwN8+RN/TogsDtRbxTubRDheKks491Bi1l0+2JQtjj6ZQrTq6
         7KhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760443425; x=1761048225;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0NzeDm4YRr+qmfFJMboOlJS287Q0PmtLlAQtT9HyscU=;
        b=qvJoXhF46MdmKWBLt8T6lSw9wbV+izFbxP5qqKcgdoB3N7AiRKG8RYpsyDtdqo8Yb3
         O67e88OW3+bklgt6UcVukx5fEUZhYooGKX/0z+ZJY6h71Xl2gGjga/ARfGO/z/Kt/93X
         TI5JHv+laFiK/APs8F2yr0ZhFd0zZ/zWrb+fTf4YvLMRoA64JPeaYD3lxSzhBzqiFdPo
         QBDwg3kNu082/tyDKfWWnFUCp3MDiRlshkeEN7WmD9wlSCwjZsO1YxO5ZkwBCGEk/8BS
         id4RU+SgVZsbOLBHMT5WmPIcEFd8Bl5qwfvwM4hWzXTkqkYgwiB3X4a9fZxP0+i5SAf5
         ykNg==
X-Forwarded-Encrypted: i=1; AJvYcCVV1453SjTdsQgeT8l7n/y4wRyTc2Msr09UCuJsLdzZ/2MohQYrfjLdFaPmAAvmoJm2Ncf1YYesl1tx@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6MagoFqycWRiv0Euo7w+gH/Y02A1Op1CjMR6CmJYV56J8k0s6
	DPbX0xLLQ9pP/wKe/2psqPPZJBGDiy+nAK+AmC8wapmGYhcvgRpiLtWIsQrUZQ1sVv5RvKpyZgJ
	vdiPqtv73/dhxMB/Enl4I8fTtqO4Smzc/PfJ07PVa3A==
X-Gm-Gg: ASbGncsJAW+iSS5v2hZ4/Ja8em6lL7X1hxOrHYeA0iVrgn85LM8j25DQzaHW4sLwSKc
	4MmvhfMOFZ6fGTIF3tSJjljONPU5eqeZNmFobFqLuDQg1yFzO9mU22zDKVvEXjQKViv2RQ6XF1N
	5X1U+WGGDO4zY9j9GiQv/WA0Ppau8i1xzWQOo6qagictj2DhcfyDXVmh5bXza2DKuZKOqOlIo2W
	+CnaEWrthgBV2rA7Uti4ZERCn3kW3/kbu+lR/Je
X-Google-Smtp-Source: AGHT+IFD0BB7RH2Ep9aDetjvf52TraFr1nZFUAFZVtaRLq2brbGFG6VPJ0RQdb2vqcIUZBE6o0FGikD6X+TXoiS5UhI=
X-Received: by 2002:a05:6512:3d10:b0:58b:26:11da with SMTP id
 2adb3069b0e04-5906d8ef684mr6189769e87.29.1760443425099; Tue, 14 Oct 2025
 05:03:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251008073046.23231-1-clamor95@gmail.com> <20251008073046.23231-2-clamor95@gmail.com>
In-Reply-To: <20251008073046.23231-2-clamor95@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 14 Oct 2025 14:03:32 +0200
X-Gm-Features: AS18NWCj_bKF0VIZCo40xgE2nZcym7DwrLVXQ08YjlTg5hV9lzx6rx-fa2x4Vss
Message-ID: <CACRpkdb74fh_eFCd0MM4RK1_KtNRugLPp2yMA20FrpHq+-o6YA@mail.gmail.com>
Subject: Re: [PATCH v4 01/24] pinctrl: tegra20: register csus_mux clock
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Sowjanya Komatineni <skomatineni@nvidia.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	Prashant Gaikwad <pgaikwad@nvidia.com>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Mikko Perttunen <mperttunen@nvidia.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	=?UTF-8?Q?Jonas_Schw=C3=B6bel?= <jonasschwoebel@yahoo.de>, 
	Dmitry Osipenko <digetx@gmail.com>, Charan Pedumuru <charan.pedumuru@gmail.com>, 
	Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>, Aaron Kling <webgeek1234@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-staging@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 8, 2025 at 9:31=E2=80=AFAM Svyatoslav Ryhel <clamor95@gmail.com=
> wrote:

> Add csus_mux for further use as the csus clock parent, similar to how the
> cdev1 and cdev2 muxes are utilized. Additionally, constify the cdev paren=
t
> name lists to resolve checkpatch warnings.
>
> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>

This patch 1/24 applied to the pinctrl tree!

Yours,
Linus Walleij

