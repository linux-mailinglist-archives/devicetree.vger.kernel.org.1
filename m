Return-Path: <devicetree+bounces-10388-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D97C77D1011
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 15:00:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8C188281CFF
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 12:59:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0A031A717;
	Fri, 20 Oct 2023 12:59:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="foUvfQU0"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65EDD1A704
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 12:59:57 +0000 (UTC)
Received: from mail-yw1-x1133.google.com (mail-yw1-x1133.google.com [IPv6:2607:f8b0:4864:20::1133])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CE9BD5F
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 05:59:55 -0700 (PDT)
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-5a86b6391e9so8602247b3.0
        for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 05:59:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697806794; x=1698411594; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QFC/B00tUI2hXABfcSdP/RdnPPeUlHvWc23J3vC1mo8=;
        b=foUvfQU0BLptbJBxK7DRcxWBDl4s950H52WKbEUUpoUd22VoX9RtTPpI4OxOYnF4az
         TXtJeBEVMDZk1Yfnwzq8oVRxeJ8GN27HmTjhxGu2buqcu5jKb2kx6pwC8Gj1Msy7JvEu
         YV9INu23Imn4YcTKACkoRMRPVXXA+X3febVFAHUHKVb74Q3aIThxbcZZuX3So7+IFPOa
         O4zmP4WvFCnFS3MA5tnaWQi5ubJGT53/HBmCXv84y7+OEecycOCIGJg0iiWTvbpL8ZBC
         fiVFAz0KmRKmMS/AcRiBToz6JAnNdpszKHGtBsrakLOcohCPEl9z+sNrcMJMOPyxnNWj
         hfjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697806794; x=1698411594;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QFC/B00tUI2hXABfcSdP/RdnPPeUlHvWc23J3vC1mo8=;
        b=ii9JdnqTlIMMswY22TALp/k5WanuE9alwMG1lnx2dleTufPAEsCAOOKeg3lzoO+DO/
         RC28SezSeVOptoVY10lxKxrZUMOp5mg7XXRbU+yOhtqttrEgNxDPP2E/N8IgLzi9XX0+
         JbW89QWTObJXOjDt3Se54485dr0YO1Rc0BenAuNG9cBVF9s53JEI7BZeCdbmIPpwmYGV
         hHw0rw8YKTF/15d5JD0H1wHBA0+dWaeTAsyN5aSoXlbOdrROFbz3bV97tr+tFXkU0D4R
         XfONvUaDKu3zCCSFub9udgasZzKKgufcxUVFKY16YlMh5paBQanKIkoHwtmm1SCKxSbH
         pV9w==
X-Gm-Message-State: AOJu0YwxSQjW3Wgi69NnmcxWBcYhS99P+9AQaNYOljfMT+ZajfL2hdtn
	okGNc6s67ly+clCedQ/ve9xjhbeYaIStrNwxPyO55w==
X-Google-Smtp-Source: AGHT+IFaEnMKB0meMkvyhN4BbXF4gAdnlozEeoARMKEWNdhaivAk0ry/mu1R4xUPut/elXgpxZq5kcDKovovpb4EQoQ=
X-Received: by 2002:a0d:e843:0:b0:5a7:dac8:440c with SMTP id
 r64-20020a0de843000000b005a7dac8440cmr1964960ywe.23.1697806794468; Fri, 20
 Oct 2023 05:59:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231018-marvell-88e6152-wan-led-v4-0-3ee0c67383be@linaro.org>
 <20231018-marvell-88e6152-wan-led-v4-5-3ee0c67383be@linaro.org>
 <20231019144021.ksymhjpvawv42vhj@skbuf> <20231019144935.3wrnqyipiq3vkxb7@skbuf>
 <20231019172649.784a60d4@dellmb> <20231019162232.5iykxtlcezekc2uz@skbuf>
In-Reply-To: <20231019162232.5iykxtlcezekc2uz@skbuf>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 20 Oct 2023 14:59:43 +0200
Message-ID: <CACRpkdam5UZWbB_tAKoU3_jdZLbH0TFT3yt3Xf9G1b=_42e4zQ@mail.gmail.com>
Subject: Re: [PATCH net-next v4 5/7] ARM64: dts: marvell: Fix some common
 switch mistakes
To: Vladimir Oltean <olteanv@gmail.com>
Cc: =?UTF-8?B?TWFyZWsgQmVow7pu?= <kabel@kernel.org>, 
	Andrew Lunn <andrew@lunn.ch>, Gregory Clement <gregory.clement@bootlin.com>, 
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Russell King <linux@armlinux.org.uk>, Florian Fainelli <f.fainelli@gmail.com>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Christian Marangi <ansuelsmth@gmail.com>, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	netdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 19, 2023 at 6:22=E2=80=AFPM Vladimir Oltean <olteanv@gmail.com>=
 wrote:
> On Thu, Oct 19, 2023 at 05:26:49PM +0200, Marek Beh=C3=BAn wrote:
> > Yes, unfortunately changing that node name will break booting.
> >
> > Maybe we could add a comment into the DTS to describe this unfortunate
> > state of things? :)
>
> Well, the fact that Linus didn't notice means that there are insufficient
> signals currently, so I guess a more explicit comment would help. Could
> you prepare a patch?

I can just include a blurb in my patch so we don't get colliding
changes.

Yours,
Linus Walleij

