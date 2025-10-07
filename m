Return-Path: <devicetree+bounces-224309-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 13041BC2A21
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 22:22:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 07FC81887E7A
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 20:22:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48F0822D4D3;
	Tue,  7 Oct 2025 20:22:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jEGsN72w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB98C1D5ABA
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 20:22:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759868547; cv=none; b=FQwK1aDfQ59yKIwnm4JPteKsD8PAaOhvXVIPDKhBMms1ogUOUx56e3GDIBUmIvQhM4yReT/FOU4f2rwYiZjeQmZoYNwyHgjR2OyGUHu5rbDtWCufOXBo0BaeweDW+yTVSPQis4ZTyHGEEWzxk2HOZlMZVCXGcxc7BcEDAwjqGwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759868547; c=relaxed/simple;
	bh=99kLDRNcHlgnavL66VTSyY3RE11yFNpexHuJRqTB2DE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HaO4mt0vcfHBVc3prcDD6QOzVYQVytsGojeCPyn5NECdZkLMlO3CDE1L8mdunIdY48WCtY0HtV2CBbbRuC50OEE8Nt4273UqSnp5ZQip8oiDmnfLUWxqI2uyrn54Zr+5l6odycPMCvrNxE5O9SF4VyZpcd0UePtX+XMsedTcnAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jEGsN72w; arc=none smtp.client-ip=209.85.210.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-74526ca79beso3930207a34.0
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 13:22:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759868544; x=1760473344; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=99kLDRNcHlgnavL66VTSyY3RE11yFNpexHuJRqTB2DE=;
        b=jEGsN72wwWOYB1s9dDZGGjmxvsBoZaVh+7og/6APuboLh1rbaknQlyOxctsbGBXkVp
         uv7vebONGNKGMkZ7mREY/w/MJf4XI3hYghO3cc+zMf0vxBINOeoLB7PnWyLZzEMQUtFx
         rdvmvb8AGtaCjsi6YAoSD/LDUIW/pxZlgmN+2dQ8hOEM/obiNmiZn6rH/IO6c7lx6Bv1
         g0oj99/4xc52fFLubwL7DW8kPqj4fwy3YFD+JZ0ouuw7sfTg3odhTs8+dU+Qx44QrXwr
         /JTYSoeY9rtNYDC2fM6twa3OZfamtzMetoIH6M8Hy7VGEua4CCVp2JwztLXwXZST9L6C
         ropw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759868544; x=1760473344;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=99kLDRNcHlgnavL66VTSyY3RE11yFNpexHuJRqTB2DE=;
        b=ESAIT5qF9/SE6lUhZO7vmfceRDJG175z+LCLWboJg7hvux39s3hCaaK0LZwyMZ2WJ5
         pvS5lmpNu6Tcd8hUKUIJOjLVZyQ9hhe8YENixDlT8X3jHqYBInKgmRc/sx6um1ScQknf
         +2MU20Ae5kyohjux76bLNLdD9wiU2M7Xu509FY0dW3nV64ziYnD0dnare+nBSvGjRFMF
         NwlYLmGqPUyMXAAOXQwPJjyE51Zko+pl6eak4nGSCAWmgkKChd3EMfFos9acRU+HDPyQ
         zQ0gCeu00f2OPYYdwEhEeVLDE+PN+RlF0ZvSYezA6w7lWzbued7b5LEBRMJ9+XQ0dxYF
         dHVQ==
X-Forwarded-Encrypted: i=1; AJvYcCXIZCPQb+Dg3FTF7tC7Q08lukpEj4O0rx6GNYPAXW2OeD17bQRwWgq9/NjfgBl0md12MO8yj0oOCisK@vger.kernel.org
X-Gm-Message-State: AOJu0YyqByR93yOZHw/1fm3PD98gegSLvhoKMVaDwWdBUKC7OdG7MIS/
	0PjUHviUFNDpwugj+fIZ2j9IVGnJc/8Uuf4v6WTEHKDf2a6vBS9Kz9FEJpEg+0ElZkNHIiFJ/tp
	w3WXnDAllzzO32N+xmyXVU1zBmzmBriNC5Etk8T79JA==
X-Gm-Gg: ASbGncvG0QCH2ATgpxHnxM3VTAe/7i0eKuf30JFgJHf9nn86NQiwPLMsw2r/utGSD/E
	So1VzziJBD6uLL+0+YrMHghBHiQZ/tbh4zCjPyd3UsfJ68aCNtTvuZzRMte+1CQxJAI4m0bFZ8d
	NDQRxSe321sGioJOqmvUPWjlfWmpUgPKaDkRhAmsDvENuKRb3z+dUTLGfmXk6n50+2/I7lrZiAE
	qXNJkwULQpyF5HqW7ylkSckA9VJus3LUplWnw==
X-Google-Smtp-Source: AGHT+IE/AGhWoEZF8eeHiwHizK+fQtU9vN562PI/VURhBYA8B0UfvYKXR081LitZs9K/HxZnjQrqasxdS5YMFPxMAew=
X-Received: by 2002:a05:6808:1586:b0:43f:2c27:b720 with SMTP id
 5614622812f47-4417b2fad79mr438719b6e.20.1759868543830; Tue, 07 Oct 2025
 13:22:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251007-power-domains-phy-samsung-usb3-drd-phy-v1-1-3cb5f80a72ef@linaro.org>
In-Reply-To: <20251007-power-domains-phy-samsung-usb3-drd-phy-v1-1-3cb5f80a72ef@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Tue, 7 Oct 2025 21:22:13 +0100
X-Gm-Features: AS18NWBUEeIDeP4sTK_A9MLo1ylabC6RjwGQmLe7UcknWuIT9I9jC3p7X44WHog
Message-ID: <CADrjBPokeXuKGQP1Pi6dwt46bYYTGOthfvFv=Zn3toi03wwDWA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: phy: samsung,usb3-drd-phy: add power-domains
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Will McVicker <willmcvicker@google.com>, 
	kernel-team@android.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 7 Oct 2025 at 17:00, Andr=C3=A9 Draszik <andre.draszik@linaro.org> =
wrote:
>
> The USB phy can be part of a power domain, so we need to allow the
> relevant property 'power-domains'.
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

