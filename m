Return-Path: <devicetree+bounces-96221-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2543B95D2CB
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 18:14:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 585FD1C20F32
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 16:14:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AF30192585;
	Fri, 23 Aug 2024 16:12:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="q7lF8JQx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E358191F8D
	for <devicetree@vger.kernel.org>; Fri, 23 Aug 2024 16:12:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724429558; cv=none; b=ZLBRYsDwCFMtphbh5i+c9PIYy2snleEpvZdJhwVD6tOm9LTACbNqXSURmzZiHPLjDleMQV9z4b9KvT/WLJfDPcqBa2Rn+F6RpQ7yP4hQ23l8I7k0/08p3LwvA3Rps9ielopzgu/W8vqt2kBtM+9JDblOM8gCjdftUWKTFK6yrJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724429558; c=relaxed/simple;
	bh=foDX8nSpdBE7Stl1C+tjFDYcGaddTLXx38TRzjSaijg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iISdx5cdjcgE58SvdaryRdZDI87Wcj5sWSptZOCZOHQpBz0Ed76TheQoQNCpLGkC7YMfT6rCG96opAUrdoo+SNNEyY2V4mpidoOqPBWvt9QmIB0qFjYoENZOsn/AIpN2v/gA4Gm3zHNZmZOZ6MuREQ7vy9Jj7DAQjYqdk/iqWSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=q7lF8JQx; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-5343617fdddso2714681e87.0
        for <devicetree@vger.kernel.org>; Fri, 23 Aug 2024 09:12:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724429555; x=1725034355; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k1jmXMGgCEe3vyECBk95vJ+hBk5w1rZzr4yvt3CADUo=;
        b=q7lF8JQx9kaMQYqIConQky3t+HpxtW3GmsnxciWj2X5f+e6FAQhKUEiPASxiYC9Ubs
         ly45/guzT1gcKdyizYSAT+I/IgQ8qvv+Q8RZoow/GEAbxjdfeCaEZ7gS7eBzMA4O7icu
         P2XGLCnVA4NBCsGjP7FkdPwtZvf0mS6bi8/A5U4k5qhOdqahRHDLuPa7aoHV1orSzX3w
         m+OmPjQXNtDI70BapCyWG4wfxhl8/5n9YgOB2r5dTI/iCsvrqEFcapPRVpe6H2ZrmloI
         kAmtTAUpoooM4By7rNfB21Lfd3kD/B4vBd+7fkUcTWvtZ3c0tgPd03mBXCXFCRfRi0j2
         pClQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724429555; x=1725034355;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k1jmXMGgCEe3vyECBk95vJ+hBk5w1rZzr4yvt3CADUo=;
        b=OZHZLCxNLgJwJv5O9M4jJ6GTLP4/kgsqRCvGOXHVPMySKbVvfwLIkakd5Hu7LjGTLA
         3kfXJJcBn8oHotugN7t2srIFf9J2ub8xnKVzUssssO7WMS2CBhsQuAT5JtQn+ACj+H/9
         5c04xzyB8gI8sNe6zZ3IixWuDAI/LNRDAjuLbjsCZFfJYHNvjH4rusw8LEeT4Cl5pOpd
         gwsRmfMxdb4ZF0XZtmoRwThJ1TxuHuk+gCxIOKF7twP1V7FRjgV0gXToKgtWGqSQD/e6
         lMo1EBWrUJZj1Au+dnrVRImE67Y394YSqORWJvf/2ty1K4gG3NJiGqnQxVii+GV4bPQg
         kXLA==
X-Forwarded-Encrypted: i=1; AJvYcCW4yNezJe0luCMtG623gbc7jTwoKZwix3C0EfdpkDd5K5WeW5vORQ36HsXgDeow1IAZR9rj/3Aag/te@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+Ou2OL5AU3hwzfnOtZbf5534dnADburUJfyozVpUvGYb7RXp3
	zE2rB9aOSqlfSKA3xB4fTIoBRwCoRpj+5RekRAFZuIZuWKmwlVZ0YxNZHya16eUEFBP4N2F46yP
	T9vHw42pW49X+1KFWmPjo+ZIH2WY5SOuTmVj/pA==
X-Google-Smtp-Source: AGHT+IG7mSCIWYZ8bpH8IAQGda1ENwR9WbQciD7o/G7QbH41YO9wcFnvMe+Pbl1EVS7OeQRr0SFN9rrPBxhDD4ALEaE=
X-Received: by 2002:a05:6512:b22:b0:52c:ddef:4eb7 with SMTP id
 2adb3069b0e04-53438846f4cmr2471437e87.20.1724429554337; Fri, 23 Aug 2024
 09:12:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240811-dt-bindings-serial-peripheral-props-v1-0-1dba258b7492@linaro.org>
 <20240811-dt-bindings-serial-peripheral-props-v1-4-1dba258b7492@linaro.org>
In-Reply-To: <20240811-dt-bindings-serial-peripheral-props-v1-4-1dba258b7492@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 23 Aug 2024 18:12:23 +0200
Message-ID: <CACRpkdbaHqJfK7989rx8OaS9mpmdYO2Hpna6dUty_fDgYa3chA@mail.gmail.com>
Subject: Re: [PATCH 4/6] dt-bindings: gnss: reference serial-peripheral-props.yaml
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

> The "current-speed" property is not a common property for all GNSS
> devices, but only to these connected with serial.  Drop the property
> from the common GNSS properties schema and instead reference common
> serial properties schema (for children of UART controllers).
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

