Return-Path: <devicetree+bounces-96222-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4629195D2E8
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 18:16:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F16401F22542
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 16:16:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D198194AD9;
	Fri, 23 Aug 2024 16:13:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sdeqLSoS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D882194A45
	for <devicetree@vger.kernel.org>; Fri, 23 Aug 2024 16:13:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724429583; cv=none; b=WEmQDPIAE8BRm/PM9JXyO7pJ7nA8hPf11rCYAfK1cBv/xBiwyTzZmvcm0yBVn9mct+Dm/+VryJxBG89M21yebp4mJ0huYSz6OaSeezUKMp/NPRXUOCjM9yO7DabH67A8FqYwzapJxyhLqg06Ek2RZJ/XtcQDXXIlM+maVF+NdXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724429583; c=relaxed/simple;
	bh=v3tl121UFcqjaRW1cQWXFFukEED+sZyQ1Hsg/FKSyTw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Sf9KrsDh5PJJwVGngkDBN5w/YofQc3LUvoAYFbMBRWh+0804Pjott+uD1VZjsJziZouUSOk4PHJ/if2V1JCS9/gG96PyrzB0mnCTdh2BLhV25BfzI8V5Me0oBkjvVtIqq4P6DeCmuCryVFpHdF8FE0T9szTrspEZ94fKzxfUkNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sdeqLSoS; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-53351642021so2253816e87.3
        for <devicetree@vger.kernel.org>; Fri, 23 Aug 2024 09:13:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724429579; x=1725034379; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v3tl121UFcqjaRW1cQWXFFukEED+sZyQ1Hsg/FKSyTw=;
        b=sdeqLSoS+cceR6ApQSN6cimmYONbktn16U4f0nXIbhbinKuLz03woTI8WuAR2goGow
         QVm0m/9uiYxGwUhQHbyekpGFcwzPJhEMqrE6G8d6oHVY/a+Cl5Pfr6reG2t/3oahIjfu
         dRGTR+3velXi48dsyPAgWclGpqRbnySvY/bxdxBkZW1cyIM/lEIK9Lt+pI06uf9hrxhT
         QhpW9N6fB5+xwh5qF6P4ht86uVQmw9Snxb0Damnty9Cxhms/6Xr3nIfFtcoSHCwf2d8R
         b7rDlIskAQUJwLEwNTukRKmtyfH7Ek2tX7fi1eLyFJERo5C6uHp9NGd6pzazFnjAu2It
         IoRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724429579; x=1725034379;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v3tl121UFcqjaRW1cQWXFFukEED+sZyQ1Hsg/FKSyTw=;
        b=RQLCMGOEoPjHHG8X9tTUcSHHfdAnOUFKxNdoqrkKHKL2KrpAK/aPtU9EcN6EPBG5o+
         P1laYUEyXCRIBReU1tVhufjfkj54ACPYIqDen9e1juZh7rO3YHmSB2mE8Lve30i2R0Iv
         OjTxbWrmFtGAi8vG7wiVMyMNrPt5VLaTvu+K3YF7k4EU9fM44yvyMvVdgeje+/g+iIzO
         j0S6XzDRXEYtxcBhrNf/TL7donFLZnnJa8MAwsG+/w+WPCtuCFsNg07IR6lIuQJeI7B8
         LD6hzSjt9YQI4HQ4uxbpN9/R/ChFhRl71FCmwV7ewVF4AQe5CC2xFNC4EVXv7SnHOa4w
         nsDg==
X-Forwarded-Encrypted: i=1; AJvYcCXwc/OLfWR0/PjX3nmAqxbFfkjVV4pL+hOGZL3XJPDBHVRxtaIO8jUDOjmU2DOPXvfLPqWATxv0VMFc@vger.kernel.org
X-Gm-Message-State: AOJu0YxZ+OUcjaEcjfLAhI6v1/tGSEeLUecTMFZFDbzVTOsmAAES9ugi
	3bo9DC1kRKqtUHOE4BeFk8rf0lMayTTddYl/nQZuDBF3amamqMS7jZuBLvwkCFHD8+ufLD4Gqjt
	v76Lsm6EQg6R0q8LV3bmeYb2KUWUa9+3fu9XvqA==
X-Google-Smtp-Source: AGHT+IH1hynyymLz1ZuEZUhvfWZZ/Hkkj2g0Tl04dlGTeLjC9tjjJISAp+o+SHgwFRjXGoZ1puRhp7iBRORVJcZyH3Q=
X-Received: by 2002:a05:6512:6cf:b0:52f:c14e:2533 with SMTP id
 2adb3069b0e04-534387be6d8mr1996904e87.48.1724429578471; Fri, 23 Aug 2024
 09:12:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240811-dt-bindings-serial-peripheral-props-v1-0-1dba258b7492@linaro.org>
 <20240811-dt-bindings-serial-peripheral-props-v1-5-1dba258b7492@linaro.org>
In-Reply-To: <20240811-dt-bindings-serial-peripheral-props-v1-5-1dba258b7492@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 23 Aug 2024 18:12:47 +0200
Message-ID: <CACRpkdagjGv79pJy8Ry2+OM8ShCE8sWNafQtzrPM_-2MJYNzLQ@mail.gmail.com>
Subject: Re: [PATCH 5/6] dt-bindings: bluetooth: reference serial-peripheral-props.yaml
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Jiri Slaby <jirislaby@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Marcel Holtmann <marcel@holtmann.org>, 
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Johan Hovold <johan@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Daniel Kaehn <kaehndan@gmail.com>, linux-serial@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-bluetooth@vger.kernel.org, netdev@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-sound@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Aug 11, 2024 at 8:17=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:

> Reference common serial properties schema (for children of UART
> controllers) to bring common definition of "current-speed" and
> "max-speed" properties.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

