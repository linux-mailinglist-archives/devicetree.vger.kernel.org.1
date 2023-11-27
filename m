Return-Path: <devicetree+bounces-19250-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E4EA7FA27C
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 15:21:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9031E1C20E08
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 14:21:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C726315B2;
	Mon, 27 Nov 2023 14:21:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bjcb1Q47"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-x1131.google.com (mail-yw1-x1131.google.com [IPv6:2607:f8b0:4864:20::1131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01E8235A4
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 06:20:53 -0800 (PST)
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-5cc5988f85eso43117677b3.2
        for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 06:20:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701094853; x=1701699653; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sVX1ZdZzljfmPCYv1WhnlNhNZCpdUFWAqA4zgj/34kc=;
        b=bjcb1Q47mnhyYQZsMO6BA4J6qIEzhtXDoLXcgbFZhFFU+jK/cilyru07Wxtx/rozkE
         +3XDLLMZTyPZOH0xnP6sCaFRFJ07X9dWm/pofKVUq4b10oRcKE3ibSz1i1nT0G9B0udk
         tMOHsEEBnlUxk6wAQrCAboub8iZHviJ9tnuFcrjz4Jb2UOxLsLdHCBvr2MPY58d3B1vk
         udqzk12Gp2CQ8d14l6rlIhBjknDXKV/UU/ui4lMtozOV2Ftjc2l2tE2/6IBYzY2Uu+jK
         D9Ey/T4yFMvCmIBUDSj8UchSQqiFiLwaIR5Wxj0Wkh+fJELbXR/GeCqiRa2iUa2a6gDX
         gdeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701094853; x=1701699653;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sVX1ZdZzljfmPCYv1WhnlNhNZCpdUFWAqA4zgj/34kc=;
        b=GweLZQXkETHKlaqIWEtzNHwtGPGsNHUGxJ3IA/atUlbU9u841e4C4qn43vy6NTZnVD
         FS/m4tIeWGgG0X2JQ1fiQNNMPtIgtDUC7Dd7k3oOY7XnN7/NCijkbb+awwB+Fkn7erm9
         aUiqkAwBfNCA2sSZu2Rg/SUTMKFPPbjOykR8C9KC036w134MLo0rrEp5Xf4sY4Q7XWQh
         ISZb5gnLmqs6f5LfqeEascxcvDSOuOgvmtr4QpNvJz/SZ3R4vPZpgzvy++x/KDbd4Jx1
         yAH2jn7fGeIEMQMWMK+PbMXUQKtKJ6H4w0Zjd/Z3mzujy5xY5vwSwRi5fLyGkTLaXvkM
         oMFg==
X-Gm-Message-State: AOJu0YzUgScoL9o1MOFXIZHUSMg7t4ca6czkcjko31yXGWIZ3W7cg8jf
	r5FeBw7HuFIgisWAzIlWa6UIo0mIuGHOHu6U9LfkqA==
X-Google-Smtp-Source: AGHT+IHPLnftzFinUokqEwBA0munIRtTDqhYJlD301948Ll5EDt+4sZPM19h7PS/NqDz2lnMSdp/6dzJPxFKf2QKxp8=
X-Received: by 2002:a25:4c81:0:b0:d9a:bddd:f714 with SMTP id
 z123-20020a254c81000000b00d9abdddf714mr9648302yba.9.1701094852552; Mon, 27
 Nov 2023 06:20:52 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231114-marvell-88e6152-wan-led-v8-0-50688741691b@linaro.org>
 <0bd7809b-7b99-4f88-9b06-266d566b5c36@lunn.ch> <CACRpkdZQj57CjArhcNKVDQ5fC+dsuYWsc6YXjQDC80QiASPB7A@mail.gmail.com>
 <CACRpkdZvMRXHKktM-HPZZRCrV0JgErqDOHmkyKAcB36ObwOX7A@mail.gmail.com> <9c1a2484-6631-42e1-a576-10e9d600e8c5@lunn.ch>
In-Reply-To: <9c1a2484-6631-42e1-a576-10e9d600e8c5@lunn.ch>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 27 Nov 2023 15:20:40 +0100
Message-ID: <CACRpkdZ4Eqv4TtojQDVDOo8eP=gdeoBsH3_wvJcAbf_z5u6Q5A@mail.gmail.com>
Subject: Re: [PATCH net-next v8 0/9] Create a binding for the Marvell
 MV88E6xxx DSA switches
To: Andrew Lunn <andrew@lunn.ch>
Cc: Shawn Guo <shawnguo@kernel.org>, Gregory Clement <gregory.clement@bootlin.com>, 
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Russell King <linux@armlinux.org.uk>, Florian Fainelli <f.fainelli@gmail.com>, 
	Vladimir Oltean <olteanv@gmail.com>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	=?UTF-8?B?TWFyZWsgQmVow7pu?= <kabel@kernel.org>, 
	Christian Marangi <ansuelsmth@gmail.com>, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	netdev@vger.kernel.org, Rob Herring <robh@kernel.org>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Vladimir Oltean <vladimir.oltean@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Nov 26, 2023 at 10:06=E2=80=AFPM Andrew Lunn <andrew@lunn.ch> wrote=
:
> > Shawn is busy I guess, but looking at the activity in arch/arm/boot/dts=
/nxp
> > iIt seems pretty risk-free to apply.
> >
> > An alternative is to simply apply all but patch 4/9 (the NXP patch), be=
cause
> > the rest is Andrew territory.
>
> Could you split it into two patchsets? Gregory and I can deal with all
> the Marvell patches.

OK good idea. Actually three:

1. Bindings only (for netdev/dsa)
2. Marvell cleanups (for DTS files/SoCs)
3. The NXP cleanup patch

Yours,
Linus Walleij

