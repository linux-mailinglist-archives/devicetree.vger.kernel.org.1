Return-Path: <devicetree+bounces-240203-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 631B3C6E685
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 13:16:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 0E1E934458E
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 12:16:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 872B42F6929;
	Wed, 19 Nov 2025 12:16:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xyCYeZHO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA4851CEADB
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 12:16:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763554592; cv=none; b=jBRQ/J5Jrg/r6Jhrz4SXmoTYRYJKcP8L18CjXGwoi08HrNunoi19Yz2qCpdPdeQ/Y20RQbBeB1sO6eKE8PVXPk8yt5DA+4aqTaPejpiTczN1VsKLXhY0QbVE6RyvmwL05cxeuQo2uJw1jfUaBlChL6fnh2R/A8vDGBbWdZv8IeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763554592; c=relaxed/simple;
	bh=6/PhrrVSQDzzgciifbMK5F9YvfY+nnwOb5SXC9Sks0o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EISDGKUuVWj3LnOkBdlumChzWFWIG8UygCQpxTWQbdf8qaJumtC/E7zleuJYkIKQ8JEuRp1r1L6pSmRV1/a0lVHUtuY8NGH/mGEha3wNCkeDGXOqIS4zKDvsu7LC/LODwLDmXUoWpTpJBuwUf6RHuM84Ws5TlIKfW7d4ooX95qA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xyCYeZHO; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-59584301f0cso6867521e87.0
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 04:16:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763554589; x=1764159389; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sHPaeKsEbeRiFEHcjj+tBilONoLgLzURpxTSyMgOFPA=;
        b=xyCYeZHO9IvtOyecCZbcHN3CIpb7hhZkw3PynVCA3yBYq7iThGYLOtxnDUM146ihYm
         W2ws4hLulGds+g96vuSsw74ecOfXCawgKmESbwVjjhIrJHLKhjN5aTblmRBjn+ioDVOL
         v98J/osc802jPIKUl1lL3lfMQgfafpzit8njf6DBeKofD6OzdevblwBfBNO8OMEg621/
         +hE9Pje+HmySW8GrDkKDgYq8Nsc4QwsBilsAeBCfG6wEyIZwu2p8u4jEGJ3SK8hpaIKA
         3+e3z2Lw8huUYwueyycd6s9mnJAfaKJyBipRKFepAb1mqGi3KIdkHTQWqbwIVzffVSEF
         0wnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763554589; x=1764159389;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=sHPaeKsEbeRiFEHcjj+tBilONoLgLzURpxTSyMgOFPA=;
        b=J7Xxxo2gdgV3ig3IJFN6f89xNdpJooOVgWqW8SEF5yR92dOMSqH6MiiZmt3g+V7tvB
         +a6cTaW8pk6/Jq9fAJy+0UJitgWnUeZaF1TWYM/X7sHqxeBAKmrCMTmi+VQqYF7JTVNO
         QRl1A7B4BExE4ViTZmkQiGf8DI+0oC1bOu8/XMlR3HeUJcuacn38KseOw+f5J9z4bDyy
         MArWTrASb228ufd/GLQQELsYcc5Jex8PVuTJrYhHlJSZIHH+35pPpx5+pN8cmOTLdzvz
         AA0yWMruoO8pGJ7TP87A57m9TjhzSl0Bre8Qf135Zct/ChyWYFjeaX3VzC24oMBJMS2p
         kYvg==
X-Forwarded-Encrypted: i=1; AJvYcCVeaqywNfzquH+3WMcQSflbSZUo8Kl8jETKyQdAtKDiUWFfsm0YKqsOAt9I0/KghZxLCjNzkH9W8xj6@vger.kernel.org
X-Gm-Message-State: AOJu0YzQVW0d+u/iZA5DmrqO0Sqcbd49WBn6ybB3oCmOHXkyQe7Eld14
	k0lW9nJ3QfCq8sWQ9SWyKERZ2HLbwHNoLeGVd2m/QcrzQrFPFkELB1Z+t61/nmJlEIkKFwEiNQx
	C7PN4eQ7jvFLkbLzR7CH7Fe7F2mQvazT9PW3XXFoLLw==
X-Gm-Gg: ASbGncve7atfDKenPu+f2vxuUePNwgK0k1GLzfdFShEQ+/yEsTgh3FCSp9RvcdGvLO4
	HCLqQoQJ9U3gNAMNUS3/7m1JPyqLg9uhGQi0C5TidxlDZylIQ1z6BN879/3L/QnsTzxO4CWAcn7
	08h2SZ+4wh3sLGkEcrJ2UDTIlASzygwnB1KNPGRR0aFJEaIop/95Gqh0RNcxGt+lQBGVJ6gvWEv
	DQ60W2dV90HmgCJIwOwpryocju9yvAolXikGgufwrfBE9sYz2gVJDocuewhZjCxByKYyFAoYUw3
	QJIE4w==
X-Google-Smtp-Source: AGHT+IHDywYiWcri0I745jv79pvTBz4VunGvT3/T6dEdfyVdHk1YRWLlH1QfwFM6eBV3bVpEzskWBVibEPo3gaoFC64=
X-Received: by 2002:a05:6512:3056:b0:595:8258:ccc7 with SMTP id
 2adb3069b0e04-5958419ebccmr5995505e87.1.1763554588792; Wed, 19 Nov 2025
 04:16:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251112-lantern-sappy-bea86ff2a7f4@spud>
In-Reply-To: <20251112-lantern-sappy-bea86ff2a7f4@spud>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 19 Nov 2025 13:16:16 +0100
X-Gm-Features: AWmQ_blX1Suu08MFi1LMSKPgGOqo8LltGij5xY2-PL2zAc2tvG1HjaDITzQtWKs
Message-ID: <CACRpkdZuopbAyHaZQpeGh0+V7v6Cg5uJwscmVPCfjHghNbPymg@mail.gmail.com>
Subject: Re: [RFC v1 0/4] Microchip mpfs/pic64gx pinctrl part 2
To: Conor Dooley <conor@kernel.org>
Cc: Conor Dooley <conor.dooley@microchip.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	Valentina.FernandezAlanis@microchip.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 12, 2025 at 3:33=E2=80=AFPM Conor Dooley <conor@kernel.org> wro=
te:

> Got the other driver that I was talking about here for you...
> It's in RFC state because I'd like to get some feedback on the approach
> while I try to figure out a) what ibufmd is

I was going to ask about that :D

> and b) how the bank voltage
> interacts with the schmitt trigger setting.

Please check if "bank voltage" is somewhat analogous to
this generic config:

* @PIN_CONFIG_POWER_SOURCE: if the pin can select between different power
 *      supplies, the argument to this parameter (on a custom format) tells
 *      the driver which alternative power source to use.

> There's some specific @Linus questions in the driver, mostly where I was
> unsure about how config bits should be handled and looking around at
> other drivers wasn't sufficient because they did different things.

I tried to answer as best I could.

> Finally, on the dt side, this was using the pinmux property before the
> other drivers were submitted, but I didn't really like it to begin with
> (shoving two things into entries of the same property gives me the ick).
> I moved to using pins + function which at least looks prettier in the
> devicetree.

I think this looks way better than any pinmux properties.

> I had been hoping that I could move to some sort of generic
> dt_node_to_map function, but I couldn't figure out one that'd work
> without creating groups in the driver. If there is, I'd love to get rid
> of the custom dt_node_to_map stuff.

It seems like something that could be added to the core
(drivers/pinctrl/devicetree.c), if you feel like and have time for going
the extra mile. Maybe it would be simple to move some drivers
over to using it if done right.

> I want to avoid doing having set groups, because of the number of
> possible configurations in the MSS Configurator FPGA tool is fairly
> large, and I believe that MSS Configurator actually undersells the
> number of possible combinations for ease of use.

FPGA:s often have this "phone exchange" property.

> I haven't tested that
> and the driver technically doesn't support it, but I feel like not trying
> to define groups statically and using pins instead would permit those
> combos in the future should that use case ever materialise.

It makes sense for a driver for this type of very flexible hardware.

Yours,
Linus Walleij

