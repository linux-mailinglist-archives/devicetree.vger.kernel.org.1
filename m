Return-Path: <devicetree+bounces-5555-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EE06F7B6A0E
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 15:17:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 17E9FB208CC
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 13:17:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CA8A26286;
	Tue,  3 Oct 2023 13:17:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E9F2915
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 13:17:06 +0000 (UTC)
Received: from mail-yw1-x1136.google.com (mail-yw1-x1136.google.com [IPv6:2607:f8b0:4864:20::1136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDBAAA7
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 06:17:01 -0700 (PDT)
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-59e88a28b98so7927317b3.1
        for <devicetree@vger.kernel.org>; Tue, 03 Oct 2023 06:17:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696339021; x=1696943821; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3faYxTgXuQnbhfWmmQf6OvVCP1SKSiKoB+6fW+6tcM8=;
        b=rgCXF9YlZVF1mKGpOjsFZ6n6NbmsxkU/nHt96zv/q4NDZWzCvLgFLJLEGKUhA5Pfrk
         QFDU44UUNgMbVh76hmF/51RRZMYpmBfI9Zi/X1uPnjCdx8+/ZF+HzAnII0R9opZbuJmC
         oQxFOVUaOR80Osyqrge/kraKygaZSgTq3m9sXzcrM6ddMrg3j4sZVJJOSRNk/+mR6Isi
         MT1DOnJQQbIZoX6D9Q3SkitRNXwL7iCgmcsZargWqV6cKgS0fsLoAbw/6CbmZzdv235p
         srd5TcqXQmrMXZ/RxGT8+85AqUAYCk3MR1ARHO+snb+g+vSUttqjz6C+mHKKnZg5ZohI
         2dpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696339021; x=1696943821;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3faYxTgXuQnbhfWmmQf6OvVCP1SKSiKoB+6fW+6tcM8=;
        b=J+eX6XaZaxcQrl4FjWAs/fq4Tt2hM8GeMHuN/4wpRvzRJ0uRBsd35ewAlC9Cs0614T
         FUgS92wXdzDUeOMAQ7va37OQLszUPk+Toj7PgF2JUPhQIVZWriHea7apSPyykro8Np/f
         BYwcsf+vCOCzlfBsj41SEpuNsLimlBEbToeSBsBcI82ENCQj8BPX8S1EDfQTZ11zsu6J
         35yHH736VveFPCwlVC2GW3fmVspnu1HMKJLLp9WAIPBXbDzLNO8N3256nGqMXepVwkFD
         5QRCX6jUf0+c1JixBsPI+w7suhvQi4w6jzkzSetFXyNrI6GmeVujEx/TODPrWKfAAJmW
         wsKw==
X-Gm-Message-State: AOJu0YwWgtVidzyPy0kas1kSzXmaWfeyPmDM/v892tPo3SAT4AwjBaAV
	0APFtajgUe9vf5yGpnKTS3sShAPnSrZDP2DDLlmnRA==
X-Google-Smtp-Source: AGHT+IE7Y5KY9v77qq2SLyZ9BmZE77wqCusEmGoWV7nr2/Yf2hTAHCmxeNHeDb7ceRs3GwoInM+bm/dSk8igGsuHkh4=
X-Received: by 2002:a05:690c:23ca:b0:5a4:dde3:6db5 with SMTP id
 do10-20020a05690c23ca00b005a4dde36db5mr1806691ywb.10.1696339020779; Tue, 03
 Oct 2023 06:17:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231002021602.260100-1-takahiro.akashi@linaro.org> <20231002021602.260100-5-takahiro.akashi@linaro.org>
In-Reply-To: <20231002021602.260100-5-takahiro.akashi@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 3 Oct 2023 15:16:49 +0200
Message-ID: <CACRpkdZgmwhGYH43iAq=cERaGO9a-mVHXG8sQ2htPw0DcrnuNA@mail.gmail.com>
Subject: Re: [RFC 4/4] dt-bindings: gpio: Add bindings for SCMI pinctrl based gpio
To: AKASHI Takahiro <takahiro.akashi@linaro.org>
Cc: sudeep.holla@arm.com, cristian.marussi@arm.com, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	Oleksii_Moisieiev@epam.com, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Takahiro,

first, thanks for working on this important and crucial driver!

I'll try to clarify and also explain something of what the others
are saying (unless I misunderstand them...)

On Mon, Oct 2, 2023 at 4:17=E2=80=AFAM AKASHI Takahiro
<takahiro.akashi@linaro.org> wrote:

> A dt binding for SCMI pinctrl based gpio driver is defined in this
> commit. It basically conforms to generic pinctrl-gpio mapping framework.
>
> Signed-off-by: AKASHI Takahiro <takahiro.akashi@linaro.org>

I think like Christian says that SCMI maybe has nothing to do
with this binding? It is just one possible use case (though we don't know
of any others.) The resource it is using is generic functionality that exis=
t
in any pin controller that provides ways to drive lines high and low
etc.

Would it be named a generic pin control-based GPIO?

(...)
> +++ b/Documentation/devicetree/bindings/gpio/arm,scmi-gpio.yaml
(...)
> +$id: http://devicetree.org/schemas/gpio/arm,scmi-gpio.yaml#

So no ARM, no scmi, just pin-control-gpio.yaml, be bold!

(I like this long unabbreviated name)

> +title: SCMI pinctrl based generic GPIO controller

Pin control-based generic GPIO controller

Add

description:
  The pin control-based GPIO will facilitate a pin controllers ability
  to drive electric lines high/low and other generic properties of a
  pin controller to perform general-purpose one-bit binary I/O.

(At least I think this is the idea, I hope I understand correctly.)

> +properties:
> +  $nodename:
> +    pattern: "^scmi_gpio(@[0-9a-f]+)$"

These nodes are always just named gpio@...
the resource marker is "this is a GPIO" that's all it means.

> +  compatible:
> +    const: arm,scmi-gpio-generic

const: pin-control-gpio

Other than that I am aboard with the solution!

Yours,
Linus Walleij

