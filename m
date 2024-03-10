Return-Path: <devicetree+bounces-49722-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E87A68777FD
	for <lists+devicetree@lfdr.de>; Sun, 10 Mar 2024 19:31:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 54F65B20D14
	for <lists+devicetree@lfdr.de>; Sun, 10 Mar 2024 18:31:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C26736137;
	Sun, 10 Mar 2024 18:31:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="E+TRzJb2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D3BFEAD8
	for <devicetree@vger.kernel.org>; Sun, 10 Mar 2024 18:31:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710095507; cv=none; b=cKm3EAKgowCnICT+hNVXMZ0Ph+LcKgwRnE2YynzYvkqEXCj/t1qY1Jo1Jidm6s8iLnbu1uvhO9UaRgKT0FNB/nIXBNNGTLOWOCLpEd3InCUneTAKYLLUyajNvTpR0vDVIp3TEZ52gbJp56Z+o97ijXVKXybmFCQAxGLxMyTf+eE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710095507; c=relaxed/simple;
	bh=j3ovDNHw1DUrtlGaftn3ME3K9ncRDSyv+PMYASrvVIQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tNQ9CdrLWJryG6gErTJct7F6E708+L0NbCsEIqXlzVOgYUYfqxtBuJeBWCDZN4qJ79qlYPMNl8ZusKQI1W0Gqt2m7lLtocICvN/JGV5t/M9w5ele9uW9H5HemaOcCnWGzoLZAETdy7J4cTZI2sO5hcK9eE1f4jpbguegVYH5meM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=E+TRzJb2; arc=none smtp.client-ip=209.85.128.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-609fc742044so30787907b3.1
        for <devicetree@vger.kernel.org>; Sun, 10 Mar 2024 11:31:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710095504; x=1710700304; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c8CxfH0DQ2y0RcJVd6Jmeye2WBcFK69dhW8SnjoYT4Q=;
        b=E+TRzJb2rpe2EtwwQt0WsdoHqP47wC3ZiZTgcs5+VZT7VtCfLEidcoVnH9A/70hqco
         4k8PdTTw9xdup+mO+yYEAewEXWW45xY8sQ0nI5DZRIaqSfDL8eyBNN6fOlgXTSV9w1Rq
         0Xdy+L8G9IhWhP8+LwGcNG005cvK+Ywj5qfxD2n69UtG+U1nbYd0ROUDVbIJcIXYDqe1
         +wkf/4ieQ4FZRTuy8tcJ9nn9nFloeAKrAtgqXwbwzAsRrRDzBpM0ynWAT4WYyRQeGWC5
         aYTd/2LLGU/WjTN+12NXhnSUq1Jp3RjKqzsOlafeOmczz+04yC/kdFt2A72ecFNHG6WO
         IisQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710095504; x=1710700304;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c8CxfH0DQ2y0RcJVd6Jmeye2WBcFK69dhW8SnjoYT4Q=;
        b=a9N0KHHs0uW555hGMgndfTkiuJldY8gVFPwHp+qtdnQjCrZiU4GnDuP+YwTdxQ1uUT
         mHzIVfNRseCH1QbeMa6W3QoFVGEBBV2XGjL9OP3VRDojAykgebtowkIBpR4vTUtFXYBR
         Vdxe6x+WT1pdbvL1O5PRlfH06w4LGV05gkuwag62RmWVh/zN7Q9H8suoJNRnJb3wxpHF
         KA/2XVS6GN1bePpCac/Xr8Z+wJ0j9DX+Iq4BRpEzIPSr13OQeWvGAz7h1k64xfHlvuY6
         xa7w8eFoW6Q+eKMV7qd899ndV4Z+fpl3dgwWtur3Lqo8lHwbi0hoRbIDq4bDe0eVTIrH
         vxTQ==
X-Forwarded-Encrypted: i=1; AJvYcCXYVQshFKRBM45oJwLckGUKJJVi8I1BmTf+BjiQ8z1vk6kT0yna1WbRUDJabqHk4XhuUoV2R4d0CGKUy9vdyapBx4KEfExBOiWFsw==
X-Gm-Message-State: AOJu0YyroNM/UtAz5620EVE/AvYriLieUHh8ueu0vZUBfKUmUT/F3/Iq
	+cDn/pYRFfeyxnECDnw5bxYutMYGoQb+dSycMJWORIRNmlbwsbJcbiR5tRqKntZSJlONelSFwfF
	q6kTgJlfope2oQ0xAdEbRYTUIo+n0xDXgzx9bEg==
X-Google-Smtp-Source: AGHT+IEV+iu1uabaSpr2TRUQ50f7WMDyp4Z/vE0s4fatf8cSvUEG5mXnY/KkiwQA3MqCqRjXMJ13mqQbn9W8PdzWyrU=
X-Received: by 2002:a0d:d8cc:0:b0:60a:2585:2601 with SMTP id
 a195-20020a0dd8cc000000b0060a25852601mr2655029ywe.44.1710095504403; Sun, 10
 Mar 2024 11:31:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240310-realtek-led-v1-0-4d9813ce938e@gmail.com> <20240310-realtek-led-v1-1-4d9813ce938e@gmail.com>
In-Reply-To: <20240310-realtek-led-v1-1-4d9813ce938e@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 10 Mar 2024 19:31:32 +0100
Message-ID: <CACRpkdasa4VBZUk2gwFjwCQyHkFyozokXqeOJqM8hq3BqmCJzQ@mail.gmail.com>
Subject: Re: [PATCH net-next 1/4] dt-bindings: net: dsa: realtek: describe LED usage
To: Luiz Angelo Daros de Luca <luizluca@gmail.com>
Cc: =?UTF-8?Q?Alvin_=C5=A0ipraga?= <alsi@bang-olufsen.dk>, 
	Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>, 
	Vladimir Oltean <olteanv@gmail.com>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Mar 10, 2024 at 5:52=E2=80=AFAM Luiz Angelo Daros de Luca
<luizluca@gmail.com> wrote:

> Each port can have up to 4 LEDs (3 for current rtl8365mb devices). The
> LED reg property will indicate its LED group.
>
> An example of LED usage was included in an existing switch example.
>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Luiz Angelo Daros de Luca <luizluca@gmail.com>

But... is this patch even needed at all?

On the top of Documentation/devicetree/bindings/net/dsa/realtek.yaml:

allOf:
  - $ref: dsa.yaml#/$defs/ethernet-ports

In Documentation/devicetree/bindings/net/dsa/dsa.yaml:

$defs:
  ethernet-ports:
    description: A DSA switch without any extra port properties
    $ref: '#'

    patternProperties:
      "^(ethernet-)?ports$":
        patternProperties:
          "^(ethernet-)?port@[0-9a-f]+$":
            description: Ethernet switch ports
            $ref: dsa-port.yaml#
            unevaluatedProperties: false

(NB, just "ports" is fine.)
In Documentation/devicetree/bindings/net/dsa/dsa-port.yaml:

$ref: /schemas/net/ethernet-switch-port.yaml#

In Documentation/devicetree/bindings/net/ethernet-switch-port.yaml:

$ref: ethernet-controller.yaml#

In Documentation/devicetree/bindings/net/ethernet-controller.yaml:

  leds:
    description:
      Describes the LEDs associated by Ethernet Controller.
      These LEDs are not integrated in the PHY and PHY doesn't have any
      control on them. Ethernet Controller regs are used to control
      these defined LEDs.

    type: object

    properties:
      '#address-cells':
        const: 1

      '#size-cells':
        const: 0

    patternProperties:
      '^led@[a-f0-9]+$':
        $ref: /schemas/leds/common.yaml#

        properties:
          reg:
            maxItems: 1
            description:
              This define the LED index in the PHY or the MAC. It's really
              driver dependent and required for ports that define multiple
              LED for the same port.

        required:
          - reg

        unevaluatedProperties: false

    additionalProperties: false

Try to introduce small errors in your DTS leds node and it should warn!

I'm not claiming that above include chain is "easy to read"... It makes
perfect sense to machines but maybe is a bit to construed for human
readers.

What you should do instead (IMO) is to just keep the last part that
adds a leds node example.

Yours,
Linus Walleij

