Return-Path: <devicetree+bounces-23367-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 13ABE80B0D2
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 01:10:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AB7E41F213E4
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 00:10:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84AE6637;
	Sat,  9 Dec 2023 00:10:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rRAfzhI1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com [IPv6:2607:f8b0:4864:20::22f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58CBE199A
	for <devicetree@vger.kernel.org>; Fri,  8 Dec 2023 16:10:22 -0800 (PST)
Received: by mail-oi1-x22f.google.com with SMTP id 5614622812f47-3b9d2b8c3c6so1718762b6e.1
        for <devicetree@vger.kernel.org>; Fri, 08 Dec 2023 16:10:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702080621; x=1702685421; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=azix/yRrG4Km4lzOJULD3ZaeZVJ1BPo9SUg9XKCQAZ8=;
        b=rRAfzhI1Bu73y4wJw7Z2Vuvs51N1WT2chCsnW4yuUOeYzuq2xWV6zbhlV5ZWYSFYvS
         jxLrj1IlnO09p4O4ECLk+ySz8hToRXyiGYsoi5WC9SK3IKlybken4LtWTNMfcIj3YWev
         QBnSw+RoPmUfphsbyS+gbEfWJwi3oag+2TleGWno+f9Ts6GRuid/xd9FAwwmrScp9U33
         HNsYZSQ0NJBrYukVDrVmJg6tfu2t8DeWnpk732wTIKeqwuAuW3BRQKo1AFimMggrglah
         vCFPsytNTIGM7YzrrW+ommXqTyBuvfBUsI3ctaf8TmpyeoxD9wRwsSIOO72TQAHwC10B
         NfbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702080621; x=1702685421;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=azix/yRrG4Km4lzOJULD3ZaeZVJ1BPo9SUg9XKCQAZ8=;
        b=nqiZ0rDBrdOj09L1NJlRlRDjxqvdmUe30X/OxH+qMzhDuXr3oCOZxZ4eAS4z23Xxb8
         v2C9VsscIEy0dC47Lo2RkUWJq6K77YgY1EFyGgf2lVcGL3Dq00O/CXTIs7jMRBCXdZzr
         wDsN5xKXVGIzS+5zzclOuotig7njqwRIIpLYQNfCaDZ7dIqgDMfEzy6kw2f5zoddhGAB
         uop6we+YGtJYDRi5crqsmD0swb8lKLoKiSsIhxWQ8AqAuGZHseQllkrrhfTpNxCnLj8W
         lQgPy6QRbk3DwIypXq3xxu0nhn+MBaF6P2Yv9awFmVshxDPrZM7Xox74tGG90OC1FjpQ
         fL6g==
X-Gm-Message-State: AOJu0YyOl/k80zOu1Ux3QrYH1xUm8G9iea8IFzdYFsSXrdwVW5UgeNZe
	AsQoGAhxHUEQIgLdJ6jWW4wZYh3oBHxOwNw8qsA5yA==
X-Google-Smtp-Source: AGHT+IHz7/iskB7s5RD0vmm831Z1V5eHiAlf4apNR66Oq422LsMXkYYMGiWwLPJO+HLNaKpMMTj16w2DrWT9VIou5yI=
X-Received: by 2002:a05:6808:6549:b0:3b9:dd3b:464c with SMTP id
 fn9-20020a056808654900b003b9dd3b464cmr742599oib.103.1702080621671; Fri, 08
 Dec 2023 16:10:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231201160925.3136868-1-peter.griffin@linaro.org>
 <20231201160925.3136868-3-peter.griffin@linaro.org> <6e595a110444033de6ecd35bedc6e84ea1c43fdc.camel@linaro.org>
In-Reply-To: <6e595a110444033de6ecd35bedc6e84ea1c43fdc.camel@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Sat, 9 Dec 2023 00:10:10 +0000
Message-ID: <CADrjBPq+jvULhG4vezCCt4xXsQrybTsOuiCBB3LZZq32OrJjoA@mail.gmail.com>
Subject: Re: [PATCH v5 02/20] dt-bindings: clock: Add Google gs101 clock
 management unit bindings
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	mturquette@baylibre.com, conor+dt@kernel.org, sboyd@kernel.org, 
	tomasz.figa@gmail.com, s.nawrocki@samsung.com, linus.walleij@linaro.org, 
	wim@linux-watchdog.org, linux@roeck-us.net, catalin.marinas@arm.com, 
	will@kernel.org, arnd@arndb.de, olof@lixom.net, gregkh@linuxfoundation.org, 
	jirislaby@kernel.org, cw00.choi@samsung.com, alim.akhtar@samsung.com, 
	tudor.ambarus@linaro.org, semen.protsenko@linaro.org, saravanak@google.com, 
	willmcvicker@google.com, soc@kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-watchdog@vger.kernel.org, kernel-team@android.com, 
	linux-serial@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andr=C3=A9

On Wed, 6 Dec 2023 at 12:30, Andr=C3=A9 Draszik <andre.draszik@linaro.org> =
wrote:
>

<cut>

> > +#define CLK_DOUT_HSI2_PCIE           118
> > +#define CLK_DOUT_HSI2_UFS_EMBD               119
> > +#define CLK_DOUT_IPP_BUS             107
>
> You're restarting at 107 here, but the numbers should continue at 120...

I've fixed this in v6.

Peter.

