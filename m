Return-Path: <devicetree+bounces-10387-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A62B7D0FF8
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 14:56:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4A0F6281F4A
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 12:56:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27D3D1A5AD;
	Fri, 20 Oct 2023 12:56:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Tg2pYOHd"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF60C18E14
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 12:56:27 +0000 (UTC)
Received: from mail-yw1-x112c.google.com (mail-yw1-x112c.google.com [IPv6:2607:f8b0:4864:20::112c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 378AFD5E
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 05:56:26 -0700 (PDT)
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-5a7db1f864bso8082767b3.3
        for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 05:56:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697806585; x=1698411385; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yrcL+xKT1Haqzn96R/mZhFMvTo6rkNolacJ4Cmk/A44=;
        b=Tg2pYOHdpZsN+CW46JWHwJhGGFR7os++Mbd3U0w6RYUE/+L1Rk3kGdhei0ing/Yoao
         4wmwnaH6gn/Znz+Ij3K8mv5cfF6tf70oMVTMy9F8uzsLA4B2CAv7yzyg1qpP2J3EdRQn
         mjhluWsrQqFy7XhMO7rGRuRxQQn29xDALIgtK83ThCvwUCtdCoal1DTMDfd3UEKkDGGC
         g/+R0BrM0x6tWIslOSzzp+zHnaATRnGE82mZeV0WWMmIKOeRsReFKZKBjR/pjIA+MjTT
         uJ5vBaP34rQ+OQ6zjD1s2os1zslKxc9VjBe6TDYm93qhCpV6SW2boud55joMHT5iTG92
         o76w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697806585; x=1698411385;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yrcL+xKT1Haqzn96R/mZhFMvTo6rkNolacJ4Cmk/A44=;
        b=oYIwrmNDHg19O5K+UPGIsd8hUab1dajMDAkx0tHecAsce0NoVA+GqZMLVrMSGRkhwX
         pn/cpktPEg17i1ZjvEIPSEGhdV5DHW7nPpzLHR0BrZzZTvCULzkvtT2R7t7iFMkDO0qc
         JY8koBJPjM45q9G8lX45DcUSRHwkl+PcAIS6F/onUHK5n13V72iFMX8FbcTdtJhlyPWk
         S2ywsI9Y63e1oMhhcZXh023rpg3wJIlVcQlgAJLFdzg1oRQXtS1BsPHAy3CeD5wDS/Xc
         N3aW/eeuu0AfhETySu41ZAFfV8PzptS4RI+fy6nMyjzTx3ENYJ58YcR7bmQfE9/hXY0x
         mQgA==
X-Gm-Message-State: AOJu0YwJAZkywemlMexp0EUeMO5Dr+EJiaQo3mwX9zai2CmNImmnRTx0
	m7tGkZ53QOmqVlkeuE+jUuVGKNnw6tAFAN+oUIs0Fg==
X-Google-Smtp-Source: AGHT+IGrmN5jknlgIsjAyhgTDyk0Jj0AJJ69byvTmw81BZ3lafG/4P93aegl+ccQttzXcDL8T8XrYIIK66wdeeleL1c=
X-Received: by 2002:a0d:d488:0:b0:594:e97b:f6fa with SMTP id
 w130-20020a0dd488000000b00594e97bf6famr2050189ywd.30.1697806585447; Fri, 20
 Oct 2023 05:56:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231018-marvell-88e6152-wan-led-v4-0-3ee0c67383be@linaro.org>
 <20231018-marvell-88e6152-wan-led-v4-1-3ee0c67383be@linaro.org>
 <169762516670.391804.7528295251386913602.robh@kernel.org> <CACRpkdZ4hkiD6jwENqjZRX8ZHH9+3MSMMLcJe6tJa=6Yhn1w=g@mail.gmail.com>
 <cfc0375e-50eb-4772-9104-3b1a95b7ca4a@linaro.org> <CACRpkdbKxmMk+-OcB6zgH7Nf_jL-AV7H_S4eEcjjjywK0xCJ4Q@mail.gmail.com>
 <20231020122725.2fotbdwmmu575ndd@skbuf>
In-Reply-To: <20231020122725.2fotbdwmmu575ndd@skbuf>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 20 Oct 2023 14:56:13 +0200
Message-ID: <CACRpkdZGT=iWGjc+ROpd=Ofa6EMY761pudxcRsUKLvHZ3Ke5zg@mail.gmail.com>
Subject: Re: [PATCH net-next v4 1/7] dt-bindings: net: dsa: Require ports or ethernet-ports
To: Vladimir Oltean <olteanv@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Rob Herring <robh@kernel.org>, 
	Christian Marangi <ansuelsmth@gmail.com>, Andrew Lunn <andrew@lunn.ch>, 
	Florian Fainelli <f.fainelli@gmail.com>, linux-arm-kernel@lists.infradead.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Russell King <linux@armlinux.org.uk>, 
	devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Eric Dumazet <edumazet@google.com>, 
	Rob Herring <robh+dt@kernel.org>, netdev@vger.kernel.org, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	"David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org, 
	Gregory Clement <gregory.clement@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 20, 2023 at 2:27=E2=80=AFPM Vladimir Oltean <olteanv@gmail.com>=
 wrote:
> On Fri, Oct 20, 2023 at 01:41:22PM +0200, Linus Walleij wrote:
> > I can't reproduce this, make dt_bindings_check in the mainline kernel
> > does not yield this warning
>
> You used the actual command that the bot posted, right? aka "make DT_CHEC=
KER_FLAGS=3D-m dt_binding_check"?
> I am also seeing the yamllint warning.

Yep I added that.

(But I think the kernels dt_binding_check should ultimately add
the same flag, otherwise the world gets super confusing.)

Yours,
Linus Walleij

