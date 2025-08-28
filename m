Return-Path: <devicetree+bounces-210172-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF30B3AA01
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 20:27:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4712B175C67
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 18:27:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94660273D92;
	Thu, 28 Aug 2025 18:27:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="u5ao/qRq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22FD02727E4
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 18:27:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756405658; cv=none; b=AiFw0EtP27To+fp1t44jUG5N2Z1Fifgx3crQv49dkf7c5od2B+N2/1sXGsCFbFdUBix/CNz6K6KoSTocdhRmgxRWSnY6mEsXsP5NbHY2IrTsN97wpkd8BsoHN/rtDb/EN0SfrD4jJ1hN/lTT8NyhlaBlxSQgwpig2pcKoSbSQkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756405658; c=relaxed/simple;
	bh=yUudGldIdimJfnVV7F3jVvnrtrGzbpei61zCHqvYDRw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SI3NP+cXZdlyW/hp35KTmHhoUeJs7Y/yURdxutvzLb9/8Wxms9drNCnx5Gd4CXWlQXgsY150cVCsVGPynzZr8aXDo4krk85OWHEwtG3HYjx2621EWWKMkJTFA0vzqJCugXszztVU2hjBq0lodYlufPXydB/BfMeH81hlroTkRDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=u5ao/qRq; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-55f3ce45abcso1488006e87.3
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 11:27:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756405654; x=1757010454; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pqwyb/SnnH1TinOPkVGbJlqbh2FEY+oG9aGa26NkltQ=;
        b=u5ao/qRqEbZVbijEzO5hnSNcEZreJOpjR7t2KS384DjiPdKGM1+vJ+KClsy1z5Hn5y
         IOpO6Ik3amodLIvfe3o2oZrbO3QZa7eKG2goNKGl2M1BjMJo/u/yA2sCVlW4gsdoCwXW
         lkImRj0oda5bKS7aaBuRqQNBOW3XTdaDNXaL0obDsU0qlIXLJHxH7ooWgqKuycqXzyLy
         c7/h5XXcin866TcI9GQdG8PR/pNIWbVJAVYep0nPIyfnMooJchfAs5Ih8IBNFFZE3Ioi
         IFDZbCU/lWLg9c4iL3UafcG+9RqGdLQz6QDe/x3QmwImdO0xKEcNXj0GQ8kFw7j49uhq
         20qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756405654; x=1757010454;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pqwyb/SnnH1TinOPkVGbJlqbh2FEY+oG9aGa26NkltQ=;
        b=sf4co5E+yR5jg7F7dM2MwTfskNASWA35Wff2vf+hc/9N5sEROGjUAz3vAy+tqMUb8z
         pW7gjcSYnFtQf4Blwt2JmlNpu2bFKD+gMbgWXPVEvkhFZllyUqsByz+bWLfS+UX0HX7Y
         M8sS6duGfRC0zxUHVnHbNVE4dmi1unkzkUlFBT+UyzvAiosbj2/l5vgv7YBNf4BhnwZi
         3bTXhfry7KA1a1G/DNF0YsiDgmo9jUEzRLmhmxh7uq/GYUAN9pV7fERbsEUtdMV1Xrma
         PEWs6RV1Hs2kJRfvk6TfTLpXHEidFskUbvXqfnjlw7H2xuP0paTN3S1QAA1FpNkVHwjB
         LzlA==
X-Forwarded-Encrypted: i=1; AJvYcCVH3SiOkBJ+EwZsTS1myQKqVxik3YPGwjeWsHHTbMxfgx3qyREYGxv8A7Pu2KuNdxrQBaGNUrenn73r@vger.kernel.org
X-Gm-Message-State: AOJu0YzQAxKbREdySO4dFnLYGLFcKkfRphzy44ZNpP7H8hENkBg4dJv8
	Gncw7Yv/rI8oxvMwA3WaKERiKMQz3UVpzItKie7rHjvtWGjnXeCc5jo/a+B2v+y1f5RijmXsTgZ
	UvoMicTEKzCAYWqeGocR2ierfCc+7A3BchI9LzpEItRJmnt+q8ITD
X-Gm-Gg: ASbGncsnSlWxkyWZ45qehtkRgdl509YyZ9TZmhVYt407xAPAWdlv45N3C5DM5t+Ar8X
	g0Cv0Wo4Zqc2dxyINyGz8GtRdI8RCJeMZg1mozvsSn6+TFCr9Bi+DQiaCLTzqmYc1z4cgKtrAEv
	1ppPlAlXhL/5q0wVaJlpT2Br+LMW1c45Bk4925oSmdyGPpQEyqaa0SIUU38Q/BTKvcGg7BvI4Is
	4xkRxeeYsCxCv0E4A==
X-Google-Smtp-Source: AGHT+IHjNr9ZC6xmrExTBjeycVEVqrH7imCeC/o/rJDawlJYvFFJ3EnVgmrnFIfcqveGRJTNAgtfNbpETKNQsRbUIjU=
X-Received: by 2002:a05:6512:6412:b0:55f:4c9c:27e5 with SMTP id
 2adb3069b0e04-55f4c9c2a0amr3876653e87.23.1756405654172; Thu, 28 Aug 2025
 11:27:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250827024222.588082-1-gary.yang@cixtech.com> <20250827024222.588082-3-gary.yang@cixtech.com>
In-Reply-To: <20250827024222.588082-3-gary.yang@cixtech.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 28 Aug 2025 20:27:22 +0200
X-Gm-Features: Ac12FXxAt5VeCD-YOlaMkQli9qerZ055DqxwpMYFqqyUfOtx4GPyUpzPDPyGmoI
Message-ID: <CACRpkdaX2VPAb+vihZ5BEAsGy+jNUdQ8q+3c3Q78uWmqZYeu=g@mail.gmail.com>
Subject: Re: [PATCH 2/3] dt-bindings: pinctrl: Add cix,sky1-pinctrl
To: Gary Yang <gary.yang@cixtech.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, cix-kernel-upstream@cixtech.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 27, 2025 at 4:42=E2=80=AFAM Gary Yang <gary.yang@cixtech.com> w=
rote:

> Add dt-bindings docs
>
> Signed-off-by: Gary Yang <gary.yang@cixtech.com>

I saw Krzysztof reacted to this:

> +++ b/include/dt-bindings/pinctrl/pads-sky1.h
(...)
> +#define CIX_PAD_GPIO001_OFFSET                 0x0
> +#define CIX_PAD_GPIO002_OFFSET                 0x4
(...)
> +#define CIX_PAD_GPIO001_FUNC_GPIO001                              0x0
> +#define CIX_PAD_GPIO002_FUNC_GPIO002                              0x0
(...)
> +#define PULL_UP                (1 << 6)
> +#define PULL_DOWN      (1 << 5)
> +#define ST             (1 << 4)
> +#define DS_LEVEL1      0x1
> +#define DS_LEVEL2      0x2
(...)

As stated, this isn't part of bindings so it should not be
include/dt-bindings/pinctrl/*.

If you are using the pinmux =3D <...>: property, what you can
do however is to put the same defines into
arch/arm64/boot/dts/cix/sky1-pinmux-props.dtsi
and use it the same way.

Then it is not bindings, just some DT data.

Sometimes this distinction isn't clear, and the kernel contain
many offenders to this rule.

Yours,
Linus Walleij

