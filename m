Return-Path: <devicetree+bounces-9635-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 763EC7CDA9B
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 13:37:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A3B461C20C26
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 11:37:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EAF42D79C;
	Wed, 18 Oct 2023 11:37:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="q2lLG2lw"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1560C1F951
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 11:37:24 +0000 (UTC)
Received: from mail-yw1-x1132.google.com (mail-yw1-x1132.google.com [IPv6:2607:f8b0:4864:20::1132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99CA3112
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 04:37:22 -0700 (PDT)
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-5a7afd45199so84707287b3.0
        for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 04:37:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697629042; x=1698233842; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ibBJyoflxMS2afxFGqsv5c5GwukKSXqA1+zh4x2as+k=;
        b=q2lLG2lw8LkDsY/Fcj+qsMhuRDPN30MnTc6ddL82FBkdpEdyxTO4PwArBProNwvQtI
         +fc3FHXUgjaej4mUJLCnu4N585chfulmBWStl9EsHShSPYBWn12H+t6ww4iV4rcIPOEm
         eoM0abM+Y8ep7Uz47kZuBSFtq/6Ewd6Vk0/h/wYWplmFBrI32qMNYsGKsc1BFO6eqUph
         HLLBZbrDSa+yFgW4Fx+MG4yjmcYrR/osRuEWbZTRvn8rsuW2X6N4fAdHqZHEltD2SN2P
         150+rY5UVnzX2M/pAY+EJVkyavc3WSxk/rsqyPt5ouB4qsTi296AgTgVl6al03/WI7Sn
         og1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697629042; x=1698233842;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ibBJyoflxMS2afxFGqsv5c5GwukKSXqA1+zh4x2as+k=;
        b=thnCY8eMXue04hZrIPLF5EkjqnHlHzO0/QYJsPn6Aanhsbc9V+1p5Fe9YhL1zw/s8Y
         xHyrGjhoh7lMC1IMG0cQx34OZ0XFSqRDrVjzwMXlXNa1cuesIsAa5V4Lw5iLzX0NgjEa
         dg0363yAIyi/2R0j0P5nHSShirBSz8fCI5lFfgFxY1NZzxV1vGcPd5gTWIhfe22MLfP9
         +GB1K9i3kdwVc+OtWdeIu9+zamrKqlMhnr17y2yh0lDpJ8YfAbGoVhuG0AJ8DSVbGGUW
         3iU2adrOaGBcxv9Ceko1tryGrOtiJ9XQXJ5KSszNfCc95aU7aAwJUr9JfEbHf9jSzB1m
         wTog==
X-Gm-Message-State: AOJu0YxYvE6u0yJitqIsFRXxYCpPhcl2xQkoyr7HSZlJRRSWQy/yO2m/
	2f/DhC65HKjRurR0Wxabzu2ZuVsFZV3CSq4yHXi0Zw==
X-Google-Smtp-Source: AGHT+IE75mXYYgUQv5l73Vl5L22dr+4CYg+Lk4Ei4q1AvQqBIy5FH+CDcNjtjq5F7t62tXm4y3QBwhP/N0B5gX/8qPo=
X-Received: by 2002:a81:6dca:0:b0:5a7:a874:d83e with SMTP id
 i193-20020a816dca000000b005a7a874d83emr4891684ywc.42.1697629041772; Wed, 18
 Oct 2023 04:37:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231018-marvell-88e6152-wan-led-v4-0-3ee0c67383be@linaro.org>
 <20231018-marvell-88e6152-wan-led-v4-2-3ee0c67383be@linaro.org> <169762516741.391849.18342287891015837205.robh@kernel.org>
In-Reply-To: <169762516741.391849.18342287891015837205.robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 18 Oct 2023 13:37:10 +0200
Message-ID: <CACRpkdZff9fbeJdxqudCtjad=FVKTKQtvo_=GiEBOvnw5xQapw@mail.gmail.com>
Subject: Re: [PATCH net-next v4 2/7] dt-bindings: net: mvusb: Fix up DSA example
To: Rob Herring <robh@kernel.org>
Cc: Vladimir Oltean <olteanv@gmail.com>, "David S. Miller" <davem@davemloft.net>, 
	Jakub Kicinski <kuba@kernel.org>, Rob Herring <robh+dt@kernel.org>, Eric Dumazet <edumazet@google.com>, 
	linux-arm-kernel@lists.infradead.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Andrew Lunn <andrew@lunn.ch>, 
	Florian Fainelli <f.fainelli@gmail.com>, devicetree@vger.kernel.org, 
	Christian Marangi <ansuelsmth@gmail.com>, netdev@vger.kernel.org, 
	Paolo Abeni <pabeni@redhat.com>, Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org, 
	Gregory Clement <gregory.clement@bootlin.com>, Conor Dooley <conor+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, Oct 18, 2023 at 12:32=E2=80=AFPM Rob Herring <robh@kernel.org> wrot=
e:

> dtschema/dtc warnings/errors:
> Documentation/devicetree/bindings/net/marvell,mvusb.example.dtb: /example=
-0/usb/mdio@1/ethernet-switch@0: failed to match any schema with compatible=
: ['marvell,mv88e6190']

Isn't that just because the bindings now come last in the series.
Which is in response to a review comment, hence this warning
didn't appear before.

Yours,
Linus Walleij

