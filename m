Return-Path: <devicetree+bounces-226457-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F368FBD8CB7
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 12:44:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B40944F51B9
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 10:44:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 231702F99A3;
	Tue, 14 Oct 2025 10:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lhv2rd2W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 798D52F7AD6
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 10:44:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760438673; cv=none; b=gVB07hb7bpzj2YsoAsoeu28IvmyFERuOPUD2tqCMWILfvfP92SNI3hare4dl2mjSINkau/b1fae1OHtwqD6PH5/Dw6WyqF3ogYmZg3yMQNmulnxfYCmbV5TE05waXkPXpbxyOez04ciF7d0e0H6LfCk+K7OdmuoJwSfCHtM8+hA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760438673; c=relaxed/simple;
	bh=s3P3SxQQQdWjgG+0wxnCeO4S365wlkK1npK4z7KMX4I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cuAdhSugrBuUUp+FOpFtDFNfo35/AKbpydciBmXzYjWH78eOV2ok1rT9WOrrFwckhfto2mbUibUKiP4uWX6mj7rU58STV08D3yUaRTm0POMoKLGh5v7h5/8V+GH2fbS+Qd+dUMRDiBqn5q9jSjkSFcyoqBFF6TEXvUF8VdTRzOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lhv2rd2W; arc=none smtp.client-ip=209.85.128.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-78142734156so14967627b3.2
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 03:44:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760438670; x=1761043470; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=THAYM86a8lGfJC89oRqulnlUSAmMtqdsc6KSglKPv6Q=;
        b=lhv2rd2WH9CZuFONezi4NEyOx2PohReRg+WuXsteVAy3mTZnfIBBL0yKNW6pshaf+c
         L1uouiMZwnO0gI2ActMrSsqF5O5g3GTH8FyddAYuOPjB/ZnegPG6gf4V+cfPKztQme66
         Y1/TbVe+Nxje5DEYZ9rRCEx7L6qFh+BKONDI6IxppbCCcDXmsqeovfq/f7CnFZo9bMwF
         XWvSPpYpWsxexsIIH26rE9POCgGKjvhKNOtEkIFxYYueUl9CgF+xh6hRf6cURJufu1L/
         YATa3cFJOo4HKE/Qg1vnoj3wIGpU9/gR77YBAi6FSIqWe3wbKZVM9JzapJCqH0yS1fr/
         nFfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760438670; x=1761043470;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=THAYM86a8lGfJC89oRqulnlUSAmMtqdsc6KSglKPv6Q=;
        b=h/fP4cN3HFRHNuU05K/1nTwMg/gC2vdP1/GWCLUdAJHOxmAIhzW+XnkH6i4IEHY5Ti
         lLsHt+Zvmbt8sKNZc5Zpazj0eS5Ll8YZtbADrBdhKPkXYOn9NXKNpefVtRgLuhpmhDA8
         dXrcmXL1vFazkN2Ea1qzFjKpsZla5NF3XIg1jnm+0awaNhKwCbl9kvL23r0+IOxjRlEW
         moeamzDPKoX82FzyAjphmCcfL+LMdSjc2tV0fF2gt9k59YC+xdy1V88zKcmyLhVCtMRQ
         goRCHvxtek5xpQ5EtWXKHYUJJNRN4Z6b1mmXn3dCllBITYjurEdRb+Xd+dc+Q7zFyBeo
         CwuQ==
X-Forwarded-Encrypted: i=1; AJvYcCVbiRCQdP8H22iu4NlgDzaqVf6XZAqNglbYPC4CrgngQ+y7Cj92XvGJ48lAsSA7gyy8w8ypeaEdEJ0Q@vger.kernel.org
X-Gm-Message-State: AOJu0YxqQrkekQhZ+aGyl2jWUNN5Rrd+Uz9NE2PelM/AsO5SPtPSsjJL
	+gVRziZxld9LVGUKwirXPMk76kMVZp5DjCAvF3YCeEVyp4oWuTMdd+H3mOuE0NwO/t7Q0Zp8NOz
	Zz8eTs1Pl9TFlASoQs9z0O/2A4/By5DkNbIuTKb6Xkw==
X-Gm-Gg: ASbGncuyewTrFtX30M+Qm4iUeZ1SPtnSVlLZmbEhjo3g8qqe6Gzj0XgYgBObCmI3Yl3
	ruUKPzmTDb/KWCjCZ5rDbu0hlt3K/QPBLEY6mtOkwcNTfNip6lM5lic+qTm2SXpjZ4OX2rIK5x8
	QeScq+VkXyW40O3vwZnHWVIYrZkK/alK9bpkNDweXpZ9IOM/7LzVjjsXPTnuBecA9N85moUc3mY
	iQNYjILRI/SIC8wT6P8/a14uEDkOw==
X-Google-Smtp-Source: AGHT+IFp4+6M8ipAZ5PvzMBFmhPMOi8dNCbnfx7iCHUB+I0mJ3szARsJfZuBKpYg4FajfdIRV8gYXT4SlaoN9/M/6LQ=
X-Received: by 2002:a05:690e:182:b0:63c:f5a7:400 with SMTP id
 956f58d0204a3-63cf5a70a44mr7374154d50.68.1760438670439; Tue, 14 Oct 2025
 03:44:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251014015712.2922237-1-gary.yang@cixtech.com> <20251014015712.2922237-2-gary.yang@cixtech.com>
In-Reply-To: <20251014015712.2922237-2-gary.yang@cixtech.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 14 Oct 2025 12:44:15 +0200
X-Gm-Features: AS18NWAu8xsDVfGUGNQZd3TKgpRR7nZFuc-hAgCzcqzNK32irDscIbUpkUaITw8
Message-ID: <CACRpkda-2BNj+Pt2kS9u_bbr41bsWGRGDqNd3EXVnys-xSqg0g@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: pinctrl: Add cix,sky1-pinctrl
To: Gary Yang <gary.yang@cixtech.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	cix-kernel-upstream@cixtech.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Gary,

thanks for your patch!

On Tue, Oct 14, 2025 at 3:57=E2=80=AFAM Gary Yang <gary.yang@cixtech.com> w=
rote:


> +# Client device subnode's properties
> +patternProperties:
> +  'pins$':
> +    type: object
> +    additionalProperties: false
> +    patternProperties:
> +      '(^pins|pins?$)':
> +        type: object
> +        additionalProperties: false
> +        description:
> +          A pinctrl node should contain at least one subnodes representi=
ng the
> +          pinctrl groups available on the machine. Each subnode will lis=
t the
> +          pins it needs, and how they should be configured, with regard =
to muxer
> +          configuration, pullups, and drive strength.
> +
> +        properties:
> +          pinmux:
> +            description:
> +              Values are constructed from pin number and mux setting and=
 are
> +              defined as macros in arch/arm64/boot/dts/cix/sky1-pinfunc.=
h directly.
> +
> +          bias-disable: true
> +
> +          bias-pull-up: true
> +
> +          bias-pull-down: true
> +
> +          drive-strength:
> +            description:
> +              Can support 15 levels, from DS_LEVEL1 to DS_LEVEL15.
> +              defined as macros in arch/arm64/boot/dts/cix/sky1-pinfunc.=
h.
> +
> +        required:
> +          - pinmux

Can't you just include both pinmux-node.yaml and pincfg-node.yaml
to get validation from the generic schemas?

'pins$':
  type: object
  additionalProperties: false
  patternProperties:
    '(^pins|pins?$)':
      type: object
      $ref: /schemas/pinctrl/pinmux-node.yaml
      $ref: /schemas/pinctrl/pincfg-node.yaml
      additionalProperties: false

Something like this, I never get this right before actually testcompiling..=
.

Yours,
Linus Walleij

