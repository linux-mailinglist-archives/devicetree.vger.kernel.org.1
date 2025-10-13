Return-Path: <devicetree+bounces-226282-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B7ABBD6A99
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 00:48:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 268804E7746
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 22:48:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA3E52C1788;
	Mon, 13 Oct 2025 22:48:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sdT/5tyw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E208E22DA1C
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 22:48:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760395726; cv=none; b=tneDL+UGncWud+QwBdyuQboFVIGyD4YGAmuZrsehxqmKrar0pGh/puHzYupW7kwi3fOkbZrGWTUUwdS30Fn44bL9UN8sMNFvk6zgl4P3saPeywMHUdEdoCdj3Mos7FUEPPRX7nz/S0hYvJkAnyLMTqtoSwJB4HIkhWD32iyX86k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760395726; c=relaxed/simple;
	bh=G+fhFzn3s185dsLph643rDU+nKHMFhMOKr/tuS3LLxU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=suvWE5i8cehl/A7JHEX0njgQLMbiB/FgFe3SGpZkQfv5bNWHrSvGKuG4K5j4trVO23/5VofTHlFyZLM/E89DTnF2Kf+ekoXBtPmf64ieaEp0nSj1w9KZ15ROmsBq598qgl4JO833NkMIXZWlF7teRQVDMo7KioQvw9iwXM41tdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sdT/5tyw; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-57b8fc6097fso1710388e87.1
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 15:48:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760395723; x=1761000523; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9VhD+CaTAnFEGvX8NVAnmhYkSF8vQCH/ncHAiaKEl7w=;
        b=sdT/5tyw6ZQ2aQi2Ko67Zf1ZMAnORoogPW1ADDthbj3a2ar1hzGGKQHkiq7xuRoiUG
         mQ5vxWyTO7ZGNALLwCkJbEIdOwzSe3K6qsPUJ/Udj4L5uBQ7LSDonB9j7Oiii87lSESy
         ArgNtlx+hFDF7DtSBuIU/sW+58pXOBhoTaT6BEP10a8JB+qX37AQzfHrUp3my2AuUlE7
         DcuzNDqOLvbmHu5329SviE9vLgGOdi/Lpn6DKHfp8zCaWLsOhaQE4Ls5TDrmLbUv6uhp
         UlDSpjLPydiaRXor0U2eY4LfJqwfhe5MFy83FNT3mD/i8N16iZrh+lgFn/83Pm3uVTsC
         IA6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760395723; x=1761000523;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9VhD+CaTAnFEGvX8NVAnmhYkSF8vQCH/ncHAiaKEl7w=;
        b=SljeTVgq6pam5dA+JW/dltCE2ur3omadIKgCvnC+E4xkXKtw1iSc3DeY8N7wjf4VO9
         qlBY7Lf0SqBZeSS+C57BJpBGs32r0z9eHTc3e6j/gwifv7AxoP2lJNgfclBWouvSVksb
         QKCehBHkiqf2IAlriWwZGk21XChqs3ZFY7xYW1Tl/jAPI3F1iwjyl0q6dY2fC6dq2VjH
         2JV5jMcmvU+fXt5jOJRU79huPfYI0QOxFuDb6Fbp+uascrRPcsxrHJ9DkhZV9Y9eYUOo
         ztMWHkG/tyBzQEv56bWZFrvGgp5Gu9NlyS/ifWAIBwNRWB4f+H3dxUPJBOYAYhfmqeS1
         iHvA==
X-Forwarded-Encrypted: i=1; AJvYcCWD6JZPy/SBh1iOGBLAI+DgngDdLoH9EAbFESk0CCa+axFN6ah/ZAnFXLTNDG4zqfqrxTw0AhjlExWy@vger.kernel.org
X-Gm-Message-State: AOJu0YzFZI/Qoj1uTCsV1s54FUSRLXxcVSKHpoA1vHMTj7j8kTitKdOV
	ehqrbC9dt4szAEtXDgMSO/w+QebRl5KgYbku1YuAP5uOodaEXGOYuxDz2FvIHv4V19Nn7BVlnR7
	bzyarxkWVDpw0cfozPOMxuYzJXyByud1b7tQRxEyHWw==
X-Gm-Gg: ASbGncuLNEsmn+DJKKRDV9MxQSeBBjNEG6M7wExqEK67R3mNyWL89IrZF4ZydFm9QWC
	ikkqffvP13pZk5kePrXVjpRak5j2td/qHT+ALgFaDg9fbfb2HcyQsjww4Wves011+w9eFrl9ssS
	2irPgIEAVx1iveWlLrcZoz3DxkaohzwBi8LfwnBbBoQ4yu7m3drB4jzS1wDT8LhjxFbywlNYqoh
	Dm6couKWUu/8QJP1S8D+TGBmaDjiw==
X-Google-Smtp-Source: AGHT+IFl74NSqW15IsNzPl0t9dfL86nU+K1sLMERr5mtjLBBOxObParOztphix/LcxuJdowoYR/BS+BlcXi+vhVMOq4=
X-Received: by 2002:a05:651c:1b96:b0:36d:ec4c:f476 with SMTP id
 38308e7fff4ca-37609d39ce3mr60243551fa.11.1760395722422; Mon, 13 Oct 2025
 15:48:42 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250811163749.47028-2-ziyao@disroot.org> <20250811163749.47028-3-ziyao@disroot.org>
In-Reply-To: <20250811163749.47028-3-ziyao@disroot.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 14 Oct 2025 00:48:31 +0200
X-Gm-Features: AS18NWA8SFvTqHrsvJetzuHren0gSb2rt-z-TJ-P_Xe_tgvYSWiLVp_doY2Zbk4
Message-ID: <CACRpkdYC6ueVGngC=KMqh9aW8DiMKWyxoa8dqb4N3sEEkpdsFg@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-binding: pinctrl: Document Loongson 2K0300 pin controller
To: Yao Zi <ziyao@disroot.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Huacai Chen <chenhuacai@kernel.org>, 
	WANG Xuerui <kernel@xen0n.name>, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, loongarch@lists.linux.dev, 
	Mingcong Bai <jeffbai@aosc.io>, Kexy Biscuit <kexybiscuit@aosc.io>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 11, 2025 at 6:39=E2=80=AFPM Yao Zi <ziyao@disroot.org> wrote:

> The pincontroller integarted in Loongson 2K0300 is able to configure
> function multiplexing for all the pins. It could also configure drive
> strength on basis of functions, which means all pins set to the same
> function share drive-strength setting. Drive-strength configuration
> isn't available for all functions, either.
>
> This binding utilizes two levels of subnodes, where the outer represents
> function and the inner represents groups. Drive-strength is allowed in
> the outer since it's shared among all groups configured to the function.
>
> Signed-off-by: Yao Zi <ziyao@disroot.org>
(...)
> +patternProperties:
> +  '^func-':
> +    type: object
> +
> +    $ref: pincfg-node.yaml#
> +
> +    properties:
> +      drive-strength:
> +        description:
> +          Maximum sink or source current as defined in pincfg-node.yaml.=
 Note
> +          that drive strength could only be configured on function basis=
, i.e.,
> +          all pins multiplexed to the same function share the same
> +          configuration.
> +
> +          This could only be configured for several functions, including=
 jtag,
> +          dvo, uart, gmac, sdio, spi, i2s, timer, usb and emmc.
> +        enum: [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]

As Rob points out this is really odd, or rather the first time I see
something like this.

It is clear from the driver that these are all set by writing bits
in a 32bit register, with 2 or 3 bits dedicated to each function.

Its a bit weird, like each function has driver totempoles/stages
before the mux instead of after (which is the normal). But
I guess it is engineered like that then!

It now looks like this:

+        func-uart {
+            drive-strength =3D <2>;
+
+            uart0-pins {
+                pinmux =3D <((40 << 8) | 0x3)>, <((41 << 8) | 0x3)>;
+            };

I think this is better:

uart0_default: uart0-pins {
     function =3D "uart0";
     drive-strength =3D <2>;
     pinmux =3D <((40 << 8) | 0x3)>, <((41 << 8) | 0x3)>;
 };

This is consistent with the bindings if you include both
$ref: pinmux-node.yaml#
$ref: pincfg-node.yaml#

And will configure it all in one go.

Sure you need a lookup for the function strings in the driver
but it's OK.

It's odd to have "function" without "group" but it seems legal
and works fine for your usecase. The normal would be to
skip pinmux, have just pins =3D <40, 41>; and look up the
function value for each function for a pin from a table that
cross-reference in this case "uart0" to 3. But I
guess you don't wanna do that so pinmux is fine too.

<((40 << 8) | 0x3)>, <((41 << 8) | 0x3)> is a bit odd, maybe
you want to also include an explanatory macro in the bindings.

Yours,
Linus Walleij

