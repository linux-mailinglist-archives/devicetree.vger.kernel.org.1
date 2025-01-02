Return-Path: <devicetree+bounces-135203-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F47A000C8
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 22:38:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0052E3A342A
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 21:38:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 566CE1B87FF;
	Thu,  2 Jan 2025 21:38:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cJ0Cauj+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89B061B85C2
	for <devicetree@vger.kernel.org>; Thu,  2 Jan 2025 21:38:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735853917; cv=none; b=WzdQ5JjC3daHcjzGzZuBvJIO+OV2mVIf7R5d1Umy8ayKynv6L0eP5emrVQjJswRy9UAb8Yvi+VvTD5zXp9sw/kE5PmjYIkS3XOGJCJNCFXL8B+h9xou06J4bcsiH4RM1dIwRjqcp+Kx4J5shBg3HuX0zaSubIYyDKMmOxEpI32k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735853917; c=relaxed/simple;
	bh=/QAvkI6HxTL5269JiZxSPsPSVibxMR8kD9bdLWJznEE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=c4/BX+Qq8l+VR/tSj5sHAWJFdrD2ewem+9OuacENg6v/vMpMAffnMIgEmF82XbVdM70LCMQiuWok796Jwg4S05Y1vd8rXTq3UOH+8kaEeMnaNGjD4IJqzySu4lE2eIlU6gG94IcJHlKcqekAEoCxdjuxf0DxJ1ODz+qNn2En5+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cJ0Cauj+; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-53f22fd6887so11267579e87.2
        for <devicetree@vger.kernel.org>; Thu, 02 Jan 2025 13:38:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735853914; x=1736458714; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/QAvkI6HxTL5269JiZxSPsPSVibxMR8kD9bdLWJznEE=;
        b=cJ0Cauj+jBQqQI2PQDa661APtWMmqRA8XIMiQ6nFRboYf4yY9iIf8scKnIdzcTalBo
         elVkikJH08+jS1mkOlPN0J3rDAZshP2EvVZC5kSw0tMrznz4UGBkLwhvYZNaEPWIk9Bd
         j15723jnh2/TTwomTA1PdQZS4WRA2b3h0S27OQuruy8VbSoElIDwGcfwAz1QApU2gWSS
         b6PBehQ+Y7gx2OtGJ1mHG2XeTxKTwu6mQNWjo0NAn10l1Oo+j32jivcFZzIi5znzDxbG
         tZSB0TnbUnyjduhPdgJOKpjP+qTv/+jNWRoAyQPoGMHq/og7FSTJLwrWiCOQtxtlyNuT
         DxYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735853914; x=1736458714;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/QAvkI6HxTL5269JiZxSPsPSVibxMR8kD9bdLWJznEE=;
        b=Ox0xKxjfGHQuzVoQrJggoQLfdIyK0zGz2XTmx+5CQkaYktnwrE/oGnKynIhluAltV6
         hwyz4Uks34NB6kUHqjFspTiqieIdcbrqE2LMV4Jydmrsz0l8F9zFV8EYlTXSKwPtbwjP
         dkUY1eP25oucIqCsd6cX26R9DVkuU190lJsZoKYExezsNTsb2QasqYwCgcc5Woq8eMZT
         cTTGgr0HJ7PG5MLJsAFmb7z5dKbq+KoVbaSthgbZaZ8YePmyNkm7mhHJdHJ5G4HnmhwK
         NuWwq0QW8sNSD+mqiSBxepceGqdBrWndLVnIZ2X0sMpa7Y4LW0l609wMdF29+GR6K8S8
         Tx+A==
X-Forwarded-Encrypted: i=1; AJvYcCWuvrhNFNeHQvT9t6JTQYTxdD9GW3QYKChSD9i8aIwW9kYTbjp1m4DoAxvXJYzWGhwEOH/BDxJolahX@vger.kernel.org
X-Gm-Message-State: AOJu0YzObbzeCTcmRUiBLjHNHT0WFdU37DR3QONTJUxznICBta/tFeq/
	Pz7wnK2BYc9e3VR++DrV1E7Ir0lpWVXzz/Arhx4968zjA1wD5jqJEvyFnUx+C/m43xEg8eB+m7k
	JuYJEWrSdaCf/e+3j54LGOp2jo+qU70wM3dzA+w==
X-Gm-Gg: ASbGncs6inHBB2pYZfRyjOsVGRWNWChAKNvrdRzL4gh6m4FZeGp7kDULP9f0DUtBTRx
	57wUb5O+X0S9g+/Cr9fenp74avo442oBMbZqe
X-Google-Smtp-Source: AGHT+IGgIsXivWdreYxsNQCB/NDjR4aFqFJyr5ZVnW9Z9Bg0saPdaxlqhTNHFFgWt31bWtKnl3+Z4uC7x6U9BW4+fD8=
X-Received: by 2002:a05:6512:b0d:b0:540:2576:d0d8 with SMTP id
 2adb3069b0e04-54229561a90mr12900419e87.40.1735853913704; Thu, 02 Jan 2025
 13:38:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250102-mpc83xx-v1-0-86f78ba2a7af@posteo.net> <20250102-mpc83xx-v1-13-86f78ba2a7af@posteo.net>
In-Reply-To: <20250102-mpc83xx-v1-13-86f78ba2a7af@posteo.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 2 Jan 2025 22:38:22 +0100
Message-ID: <CACRpkdZVKC9HhUT8LqNnOU5NSE_S-ucuZRWACesEejDWwCyV5w@mail.gmail.com>
Subject: Re: [PATCH 13/19] gpio: mpc8xxx: Add MPC8314 support
To: j.ne@posteo.net
Cc: Michael Ellerman <mpe@ellerman.id.au>, Nicholas Piggin <npiggin@gmail.com>, 
	Christophe Leroy <christophe.leroy@csgroup.eu>, Naveen N Rao <naveen@kernel.org>, 
	Madhavan Srinivasan <maddy@linux.ibm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Frank Li <Frank.Li@nxp.com>, linuxppc-dev@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 2, 2025 at 7:32=E2=80=AFPM J. Neusch=C3=A4fer via B4 Relay
<devnull+j.ne.posteo.net@kernel.org> wrote:

> From: "J. Neusch=C3=A4fer" <j.ne@posteo.net>
>
> GPIO input, output, and interrupts have been tested on a MPC8314E board.
>
> Signed-off-by: J. Neusch=C3=A4fer <j.ne@posteo.net>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Can Bartosz simply apply this and the binding patch and get these
two patches off our tail?

Yours,
Linus Walleij

