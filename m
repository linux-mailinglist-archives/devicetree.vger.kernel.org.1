Return-Path: <devicetree+bounces-247901-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AB318CCC801
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 16:36:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 146953117FC1
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 15:29:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E9D7345758;
	Thu, 18 Dec 2025 15:28:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com [209.85.222.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F72B3446B2
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 15:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766071737; cv=none; b=uFgzxKqRISco2oeDf3Ql6zq72jVmuzoJfzQLHNFHFjutn/fZok4YJ5dd71fE2SCIF9o0fm+gC7ROxPrQmG9WvZNnv2fhm63AwEYy+GXexiEX4ckUtEn66Ot0GyB+hn68BbY0i807LBEojLodwCMaGcfZkg2xBTZzjh/n+dIFuag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766071737; c=relaxed/simple;
	bh=azzl09Wx7rt0wPbIl6zF794mRt/KoBI4Cg5cx5Yj+oY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MSNvINVGciniPQyyU5rqwm8SbZo0CW/Nu62WgZGUzNu8CmF+AFVKdF/nCZozGMSUSkkjygRuYMJC4je0cH0o/h+Apua/J0aZwl4Q6fSz1+USySYAjLx97dArTy3GrfIKvfhzKLkSHkBqzzTr4VBzIWa+MyW+0yE+xvmY1+/AGJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-941063da73eso473236241.3
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 07:28:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766071731; x=1766676531;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mXHlTDVJTF5vvWPU3rkwyK6a19VuMS7dqDcJr9Xe7V4=;
        b=X59XPE+zuiEmU+5zjsWuRk3YBTkIfzhkOg3oZgEe42pz+/pR8H3JUTwAtsIq53UCkm
         YIkSNAH6MmQRL36hFFMeGBYCcIPsXR3M6MqRvnMIhBzb7TojqLzgiJuVSiP1s/bbi/xh
         CxOIZzgPPuamxSu/VdDqY4lX+TdbzTL/oP7xAMILCfA2YCnxh2/AtAxItcjXk6Brxpvs
         NFEOSdwcG8DdIOAlkvrBYM6G4UisXB7YZLK8ajp4t4G8g6DwpNaWga68XliUzw+JNH0p
         ysXz57c+r3AGA+ex4twkcCzJXmOKPKQC5D7GfT/L0hmpepUC/1FWpvl/m4jIpM+uLGm4
         Gtdg==
X-Forwarded-Encrypted: i=1; AJvYcCUAox+ANfNDLdMhWDx5uF1J0mcnmCuifFjsZTK2oQDM+DAZOApCCXfmWBZndzJo0I+da2jZ7jPOuwB4@vger.kernel.org
X-Gm-Message-State: AOJu0YxZCgOsPqGg4o9aPeQpfRRbNSA3+8ShpANz8zIQrqUJsAGyrBPt
	my+HLCZB8qGeYN4OoSkTiBDhdYKxN/se2Xt10n66mCuto/6ViOJPPb0KWk79KX8f
X-Gm-Gg: AY/fxX7Tk1XlIRPszLZH9AF4QKxXH+Zvw2T7zJrpX9gJ45jL8+cTKJ2ysz/AJoSvJ9A
	MKiT4toKUWFEKnzYBEOReqz+4fVofpfxe0v2d+AuyrEMP8Z/CDyZTBEEk3kA/UQj7Gi7TKojCU8
	uCTRssfaTEKmm0sSW9YfewAzV/PQNsS/Lewm/SN5OTmcPLfwKKdUMJt41UJ6PgSqXMrQLLl12bu
	uT/zaFihEQjZ2m4QPdnFcJcBtcWg9WRH+WA33UQy4rB1kfoVNewI509g8oeTWaP9m33xRsWTzyq
	xmCvGScbdzdWcecQKirOb3i6kdIbgng7qUnm6GyH4RZtOrtlfQlVZFNCb2sGJ3fFtLia6QVNCgH
	rwSYeSABi0RVtsk46dmHdbW0s4nFbKZ3dq4/A8//isMOtrYTLSHfYysA6OpI+4INfYcY8YyScdg
	84c9uVvpZF10Bry/fF/L6/9tI8z41G3AC75UXHDZos6fFsDt1h
X-Google-Smtp-Source: AGHT+IG6OB4S2uoRU3vx/F1+HvQ9/ZEVdLbe/gOaY9Q6KVsZEMiNo+Hv3SAfTzgaXdnMsfKN/DPHUw==
X-Received: by 2002:a05:6102:9d6:b0:5db:c9a7:bdef with SMTP id ada2fe7eead31-5e8276bba6fmr7934541137.14.1766071730910;
        Thu, 18 Dec 2025 07:28:50 -0800 (PST)
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com. [209.85.222.43])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5eb0577c934sm1014080137.2.2025.12.18.07.28.50
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Dec 2025 07:28:50 -0800 (PST)
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-93f69720a7cso392838241.1
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 07:28:50 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXej78d1h+OlgauT/LQXfOBeaOeMwQbBBnIL5EcV30dJBdVgY/EP4PGwv689VrEN3EPnJ5eolcQSE0V@vger.kernel.org
X-Received: by 2002:a05:6102:14a1:b0:5df:af0f:308c with SMTP id
 ada2fe7eead31-5e827854ca8mr8511390137.38.1766071730637; Thu, 18 Dec 2025
 07:28:50 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251218152058.1521806-1-alexander.stein@ew.tq-group.com>
In-Reply-To: <20251218152058.1521806-1-alexander.stein@ew.tq-group.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 18 Dec 2025 16:28:39 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUkghCNb96J38hbEZ8Jct6m2MPvnPumGp-y_dPfPW9eAg@mail.gmail.com>
X-Gm-Features: AQt7F2qLc82Kbfmr6BXfh2mc72SoQ2IFZ770WV9-Gsf5ezj4RJc3ZYutw9_Yvk4
Message-ID: <CAMuHMdUkghCNb96J38hbEZ8Jct6m2MPvnPumGp-y_dPfPW9eAg@mail.gmail.com>
Subject: Re: [PATCH 0/6] Support TQMa8QM
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Peter Chen <peter.chen@kernel.org>, 
	Pawel Laszczak <pawell@cadence.com>, Roger Quadros <rogerq@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Magnus Damm <magnus.damm@gmail.com>, Marek Vasut <marex@denx.de>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-usb@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux@ew.tq-group.com
Content-Type: text/plain; charset="UTF-8"

Hi Alexander,

On Thu, 18 Dec 2025 at 16:22, Alexander Stein
<alexander.stein@ew.tq-group.com> wrote:
> this series adds support for TQ's TQMa8QM. The first 3 patches are prepatory:
> 1. Add support for clock-output-names for clk-renesas-pcie. This is necessary
> as clk-imx8qxp-lpcg.c (driver for phyx1 phyx2 clock gating) reqiures that
> property on the parent clock.

Hmm, clock consumers should have no business with the names used by
clock providers, even less so whether those names are specified in DT
or not.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

