Return-Path: <devicetree+bounces-10117-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 76B497CFB81
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 15:45:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8185BB20E12
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 13:45:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 640D327474;
	Thu, 19 Oct 2023 13:45:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B40EEDDA6;
	Thu, 19 Oct 2023 13:45:18 +0000 (UTC)
Received: from mail-oo1-f52.google.com (mail-oo1-f52.google.com [209.85.161.52])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DB8811F;
	Thu, 19 Oct 2023 06:45:17 -0700 (PDT)
Received: by mail-oo1-f52.google.com with SMTP id 006d021491bc7-581d4f9a2c5so1613020eaf.0;
        Thu, 19 Oct 2023 06:45:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697723116; x=1698327916;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DSXRmER3WgAhRNug88ev6LstRhcib4oUMzRNImQ+1AU=;
        b=PwouMT6IXzgUlLN6a6W6u6XZU//B/W4yZZkPG5Z70VOzAU+ek4q8VlC4pNVQsx0x4G
         YwwA0IHpzIB8XEHIDd/fQ5Dta6EV1AqhD1zrsXetiN241/L0CWWJtPSsSnoqNKZ5yflo
         WEnzt1vv/i8f+Fzg5Vy2ooeA/n7UXzLVEQLHqZhPZh/AHxwqNVSRwlgiji2ET65HWXXu
         4LImbKNGi/6RnCo8wVllZoJHzybKaN5uFE2SRiKuxefw+VAXSG4Y448EasYbAxM+aGqQ
         aCMAhIdmyg1OAl9yEZLe3b/Wi/j6bx3Iymu/nAkKUdnUCmsxoi322+CXUdu1Ezp+vtWm
         /yhw==
X-Gm-Message-State: AOJu0YyK6zaoef5R5U9C6LlAUNQgUSyO9GRuM4YtRyUTPYRUtg8eiBb0
	OrHIIbv7Sqy4y22tTR1klw==
X-Google-Smtp-Source: AGHT+IG32dAaJ1o7CB4NsqboA8jJm+qAlsHz5yLXkF6WKvRAnU+FUYyc+kE9102jX/09adNZSXXWsg==
X-Received: by 2002:a4a:e9b0:0:b0:581:e750:9995 with SMTP id t16-20020a4ae9b0000000b00581e7509995mr2227050ood.3.1697723115777;
        Thu, 19 Oct 2023 06:45:15 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id y9-20020a0568301d8900b006ce2e464a45sm97418oti.29.2023.10.19.06.45.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Oct 2023 06:45:15 -0700 (PDT)
Received: (nullmailer pid 198509 invoked by uid 1000);
	Thu, 19 Oct 2023 13:45:14 -0000
Date: Thu, 19 Oct 2023 08:45:14 -0500
From: Rob Herring <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Vladimir Oltean <olteanv@gmail.com>, "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>, linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>, devicetree@vger.kernel.org, Christian Marangi <ansuelsmth@gmail.com>, netdev@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>, Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org, Gregory Clement <gregory.clement@bootlin.com>, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH net-next v4 2/7] dt-bindings: net: mvusb: Fix up DSA
 example
Message-ID: <20231019134514.GA193647-robh@kernel.org>
References: <20231018-marvell-88e6152-wan-led-v4-0-3ee0c67383be@linaro.org>
 <20231018-marvell-88e6152-wan-led-v4-2-3ee0c67383be@linaro.org>
 <169762516741.391849.18342287891015837205.robh@kernel.org>
 <CACRpkdZff9fbeJdxqudCtjad=FVKTKQtvo_=GiEBOvnw5xQapw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CACRpkdZff9fbeJdxqudCtjad=FVKTKQtvo_=GiEBOvnw5xQapw@mail.gmail.com>

On Wed, Oct 18, 2023 at 01:37:10PM +0200, Linus Walleij wrote:
> On Wed, Oct 18, 2023 at 12:32 PM Rob Herring <robh@kernel.org> wrote:
> 
> > dtschema/dtc warnings/errors:
> > Documentation/devicetree/bindings/net/marvell,mvusb.example.dtb: /example-0/usb/mdio@1/ethernet-switch@0: failed to match any schema with compatible: ['marvell,mv88e6190']
> 
> Isn't that just because the bindings now come last in the series.
> Which is in response to a review comment, hence this warning
> didn't appear before.

Yes. The only option that avoids this is squashing the 2 patches. I 
think it is fine to leave this as-is.

Rob

