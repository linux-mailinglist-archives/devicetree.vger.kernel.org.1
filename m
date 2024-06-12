Return-Path: <devicetree+bounces-74885-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 462CE904E22
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 10:28:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ED9FB1F25B38
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 08:28:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D867916C86C;
	Wed, 12 Jun 2024 08:28:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mfOho6/J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280BA16C852
	for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 08:28:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718180899; cv=none; b=Dk80LMWFJG74xgOhJt55DbgRThZ/ZMbXKMS+hwt0zx38939Z3PUMVCQ/G46rqqJdqbL0oSYM/K4wntmYzA78JrvltZVO0Mt4ljLwxWxNe9qgdt0yvNu5Z6Z4Jf+K2yfdYKoh5UQdOIUz0MQWNunqOO57htmipoqmZTPwFDWHaE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718180899; c=relaxed/simple;
	bh=iHIU8qQAgMpCHnZdsBr96lYDwhYrXr8Ml/o4WS6UJE4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SKCdENEqal1dv9pTH7sbi7dyxiGMfdx/0lb53bhHlC9UPCU0w8+ZA2+yfbvE/uF1znTHGzQjv5+694LWlKk3Ysb2mfjKqqxcM+eNiUx118LrKjdQ3LlHcK/YnkSorfosRgClHt6S7+NR/ZREZjciDWzlGcoDPO/QLlL9oirUaRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mfOho6/J; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-52962423ed8so7578376e87.2
        for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 01:28:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718180896; x=1718785696; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iHIU8qQAgMpCHnZdsBr96lYDwhYrXr8Ml/o4WS6UJE4=;
        b=mfOho6/JyUq5kz4e+JTU2FVSplRAaYyzdnOQpWqaMth1l2C9TNaRm6zhBBDNINt5a1
         G/Ie12pgY1khHo4vjOzEanFpPe4bgM7VBow7uXbj2z92rJpLVVJfReyZNg7PQfaLCeh4
         sH8Ikhz54waiCD6+z8dxHxnIqTZD15ZeCqwHjL0brU5QGxwhVqjHbLXYFsYyIQMUGLPz
         iqilXGieWJJmoa/D8OxLouFSYjqzKQyDBAnGXDcvwAWDn3+8cJuaDxvR+0fVARIBK0OG
         Co3xfQsiiuq0NcTTazH15SvjTJPgyTqSnAXSztvKjGKwGoQnSchUF1m2PWhvLlDnJw83
         QnLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718180896; x=1718785696;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iHIU8qQAgMpCHnZdsBr96lYDwhYrXr8Ml/o4WS6UJE4=;
        b=rMKjSuvqnWa/ZL/VhuBrjzXjWmZ0nlIqhnsG18R9If6DGzK8uEktDWtuGKrfdpZ1AJ
         6iS5b2KSWwZ0UAjRaz4p0jgz3VZ0mw6r7Gyj6GrkF9sUb9ccyGja88IZjzdqATqGK05x
         aCaj5GRY1rPrQNns9atOjx3yNqvw1czpidGTeXyHYyWKRH9UFNbd03AcBLLzJHdj9v/M
         zzxmxQ7XGMsgVGx5znJX8KBS3ODfE82mIaTH4e41d2b6V7tvEPhkO8uMJOaDeU6QdxSF
         b4vrlFi0uTw9xycQOWbJTED5BgBzri0BtmQlv4hb7LPO3KFN/iOxj5C5FXmJlOSLzXPX
         Bw4Q==
X-Forwarded-Encrypted: i=1; AJvYcCVLQUwDgY8/qa0QVLV1WzyTS8poR5vk4ypgRtIctBEP/TcfaGSlnMr0Zg3T8WMaIr7LHgyWs5sldc39s0JEJTYEoOWlPJ0+gtM9EA==
X-Gm-Message-State: AOJu0YwrkJJ5pdWDw6xfqZn3Zl9xtpG9e7hPuJvlc6ZNILoiDkwZIDbO
	wVPdYzLdg++9ZmfMLTMTNRdENihzkpDYdU5z0rH+f04VdyP3smQx5c/Y2XbFybRWhqDZLJnDTCz
	TDTz4uHWP6lq6g5Fz5rYNLT562tQLp//jYmCBkQ==
X-Google-Smtp-Source: AGHT+IFw9+prbVxSs3HNSyj9e7plPqdTnKWGPywEjUoQF8PisEID5JZvnH7qSSFAGjEtlGH3v3qxcEBH4a828fHufeo=
X-Received: by 2002:a05:6512:33d2:b0:52c:8215:574 with SMTP id
 2adb3069b0e04-52c9a3df263mr827234e87.38.1718180896277; Wed, 12 Jun 2024
 01:28:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240531121801.2161154-1-festevam@gmail.com> <20240531121801.2161154-2-festevam@gmail.com>
In-Reply-To: <20240531121801.2161154-2-festevam@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 12 Jun 2024 10:28:04 +0200
Message-ID: <CACRpkdbe0u0cCt3Y4tNX_pC77vxhgR_a17SEkzsUiUaR700yZA@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: gpio: pca95xx: Document the TI TCA9535 variant
To: Fabio Estevam <festevam@gmail.com>
Cc: brgl@bgdev.pl, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 31, 2024 at 2:18=E2=80=AFPM Fabio Estevam <festevam@gmail.com> =
wrote:

> The TI TCA9535 variant has the same programming model as the NXP PCA9535.
>
> Document the "ti,tca9535" compatible string.
>
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

