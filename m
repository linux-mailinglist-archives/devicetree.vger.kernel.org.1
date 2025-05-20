Return-Path: <devicetree+bounces-179020-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 98896ABE6C6
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 00:14:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 528B44C57B3
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 22:14:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FBC217BD9;
	Tue, 20 May 2025 22:14:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oa/mr1tt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C952253F1D
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 22:14:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747779261; cv=none; b=ECg93FawedwdaNaY2SYaMfGjdtK6blJFckLND9JkbrJO0XMYv2UGG+vllnur4wrVfvaxrTnIJ9n+Oz77ydtoWAzy8MoOViXBUgampdjK96qdawzkhT76hnTkYpffkSUV05Fwx2i3s8CwslOKlkkVO19JnHZoEgXoGRW54eC40nM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747779261; c=relaxed/simple;
	bh=0KKxr0NhS0ebwaZO5bcBif23znaAXOSTxXvDT9vZo0g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QrcnD4Ve/JkyY/qXZCRWgHNo4H8wCXdN1c0wW3aVVWFR8HD2TClkKPO44A+EE14Kgx4CZYJFxdNupSShRCtTr26FaduiaTY2lN28I9B0AvvWolUJjCTQxzc/Fi8pyUHoBNCFkJ9GnOph+dk9ije174TXUpRd0gp2F5vMM3woqeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oa/mr1tt; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-30effbfaf4aso66847571fa.3
        for <devicetree@vger.kernel.org>; Tue, 20 May 2025 15:14:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747779257; x=1748384057; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0KKxr0NhS0ebwaZO5bcBif23znaAXOSTxXvDT9vZo0g=;
        b=oa/mr1ttNxpHiJVbOLzJSzaxUGjB5Ou2lgam79kh0wuUvalfFufsQGRB8QzHlTl6Gt
         unlS9073PNdQa4PPnoLOHbpmYK6NlJ9vozyJ0M4IGniOhkqN9v/Q8Q9MJIymP9VxxFMB
         Ho6GwNkYL6xh1XJstC60XlFhd1Fgj7S9UqGiApGXpC8CYHU0qEQ8jONJMW5DI0JUiVI9
         D5rQxZPD0GY2OLFgG3QMo4RTPwLY3ZZZ3zfwSRUw2guLIoxTMsY8/RpaivI+R3z6fgwt
         eN3RzpocGgOse6JuwOqjojnlkX/K1WycZGz+hfRMmqTXfRL8+Us3mZNRvCyI3s8/6z83
         /GUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747779257; x=1748384057;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0KKxr0NhS0ebwaZO5bcBif23znaAXOSTxXvDT9vZo0g=;
        b=di56BOIJ0IGIf1W4wJcpHK7CXVg6U9IHMKHTUGObe1X+Y3P7aw7GY4zNckCvu4bzkH
         /u40tu9PvnTOX3ErdJoXAS+NK7Wn8kDh8BIDDy/usRi3Aa0US+KvDkO2+Ea4uPOSbeKC
         3WjyABQyOis1F/QwS8WMkBMoHMIWKg/yrFKFZM+2qpELYuMyJ/a2+depQSSdlcsVQMfb
         8xNg3yOCCwseeWSshTSCslACPRWd0wVMnQgqFIZemGLGDHvkLeT5eaeMWgbkMLMuv2BJ
         TA9a2C1wBMOr3SRqVpWb8r4hWpZaV+ZaRi01q4P3pmCFJSkKKlJQn4IRPn85McGDwROY
         +6Gw==
X-Forwarded-Encrypted: i=1; AJvYcCULeSsqT+J/oMd8z4qDQ7A7XW7Uuy/vEACO3pcWGsKSQF/V5PF7dVdZWZ+aYQWDwb7RunPEXcwYKbJu@vger.kernel.org
X-Gm-Message-State: AOJu0YwzQzRxqYgs19/fhu6DX95hZfCyR7lG64eeABzVb6Bc42NGWBHC
	XgktTr7fUwLA0LkwP5ue4cZBQYhOlDbubwnxqMPb360/bDScuQyjYd68bQqVc0DJPJ9h/wVRfPf
	EUJ0Cor9oHHuEIMFFu2NpmBfSob5QrvfcDEo4iYmcQQ==
X-Gm-Gg: ASbGncvf2LR5QWNmVSjY1HUx64mI75DCHuo773kF/KQDgATEyIUuVeTLzFd8loTP+PB
	5ZxCkspfBs8few2xdY3C0L4bmO99wo78SM24toovl42AkQMmtLjBasWTY35txbixWUhYww38NXy
	yFyHRRHyvoBqUZarw8HUCwmpnvCSN5uXbd
X-Google-Smtp-Source: AGHT+IE2I9dkpHJtUzuV3F55HIcCy4H/0xE0bIT2P9EiCFLTqHbK469GeJi8kQXTq+VvjFFqjzVGAT63GH/fgS+P2nQ=
X-Received: by 2002:a2e:bc1a:0:b0:318:7f36:da6f with SMTP id
 38308e7fff4ca-3280974b19dmr60101281fa.26.1747779257574; Tue, 20 May 2025
 15:14:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250520-gpio-dts-v3-0-04771c6cf325@nxp.com> <20250520-gpio-dts-v3-2-04771c6cf325@nxp.com>
 <f0017caf-8fd7-4046-ab7c-71c6560b7a95@gmx.net>
In-Reply-To: <f0017caf-8fd7-4046-ab7c-71c6560b7a95@gmx.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 21 May 2025 00:14:06 +0200
X-Gm-Features: AX0GCFujWmK7RjwxHirjq3655UF2TsXAVvYT5SDx5SrWKMcU6UcS_lP2iMrNx4c
Message-ID: <CACRpkda1OKXnma11wKTrBsO_AAXrifVK8RDCKmufdHXBMmtMbQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] ARM: dts: add ngpios for vf610 compatible gpio controllers
To: Stefan Wahren <wahrenst@gmx.net>
Cc: Haibo Chen <haibo.chen@nxp.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Stefan Agner <stefan@agner.ch>, Bartosz Golaszewski <brgl@bgdev.pl>, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, peng.fan@nxp.com, 
	conor@kernel.org, Frank Li <Frank.Li@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, May 20, 2025 at 12:54=E2=80=AFPM Stefan Wahren <wahrenst@gmx.net> w=
rote:

> sorry for asking this dumb question: why do we need the redundant ngpio
> property in case there is already gpio-ranges defined? AFAIU the last
> cell already contains the necessary information. Or do I missed something=
?

Not all GPIOs on a gpio controller have to be present in
a range.

The ranges can be multiple and have holes in them.

The ranges are also optional.

The fact that this DTS file, for this SoC and on this controller
happens to have a range mapped right over all of the pins
is merely a coinicidence and not a general rule of any kind,
it just apophenia playing games on us.

Yours,
Linus Walleij

