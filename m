Return-Path: <devicetree+bounces-10140-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 714B77CFC74
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 16:27:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 11BD4B20FCB
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 14:27:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C1B929D15;
	Thu, 19 Oct 2023 14:26:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="H1OppBzy"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A42D129D0A;
	Thu, 19 Oct 2023 14:26:57 +0000 (UTC)
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E2EBD76;
	Thu, 19 Oct 2023 07:26:51 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-9bdf5829000so978876566b.0;
        Thu, 19 Oct 2023 07:26:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697725610; x=1698330410; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ANPRrxI+fIR5f5AhEGCz13wMOFrWpvb4MuqzDfnz8fE=;
        b=H1OppBzygoiSoS4oxmRZpZVT714+wEjKurBUkgNlu4RjpMeEya9rpe0D262qXu//Mp
         fxvVGJquYQ7O3akmuHp6uh0tutchAHmNQ3fn7nkUa3ffyTfbyncrRczWnZNtEEEwsy6v
         d+QU9NYaTxLwirpvnbtuYxKhslbm2WWI5KithNkSgBnzTImBFYeqrEiYHK/jNc8rfDiB
         X1KSMGg7ZajSv4RH3KKdBG/VwrLQm1ZLnUrwskWl6sR1XZxdQfkY2eddbPb4jSZqXUu+
         zWVmp5nxruC3WDQ+CQWsiDXVmuIV9zfDcWlWoYerZZrEj3/Vy16Ov+0mjz+aMhT9n25q
         /dMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697725610; x=1698330410;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ANPRrxI+fIR5f5AhEGCz13wMOFrWpvb4MuqzDfnz8fE=;
        b=f3p/jKwxma6RkJDSRrI9psMhnyJLpbcq4lu5hYvEma1JDfLcui2G7Xxtm4vcW1ttCp
         Kx0bHbxR6kHXBtMd6c4lOppAT/uBzQMSNzV1TUnqSkhUXTauq4MpR9o2BtD3q1YKOJ/y
         L6EpK0ZxFVAx5iavDGfbP+Njb39jtIVIZ5RrMY/CNhdQP2I8RUl4IxIb2+GRu6o713Tx
         sWNvRQdgXx+bBENDr/A9KR7oG84jHhdtDWFKwsenOI0N1Bo5MbtBkBgf6eRRg7vlrz4p
         PDb1f78nUKJX63gBqW7tMVGwajuzUOTvO77nbt8tfj1DHT8GFTpR3KQkG16v/FkR6HbH
         LRvw==
X-Gm-Message-State: AOJu0YzvspNGxPCLXYHL27gDN0uZQebgPBbkQ88p7FKmjvIec04mmSY6
	XpDQUUPIX0jutL1C00QUlNg=
X-Google-Smtp-Source: AGHT+IELS/atS/J8KuLWpafdm5LGQoyw401tryiwKpNzWoBHZRQBCOdAVuGKRa7iX1Bms1/0BFyDYw==
X-Received: by 2002:a17:906:db07:b0:9be:aebc:d479 with SMTP id xj7-20020a170906db0700b009beaebcd479mr2001505ejb.19.1697725609594;
        Thu, 19 Oct 2023 07:26:49 -0700 (PDT)
Received: from skbuf ([188.26.57.160])
        by smtp.gmail.com with ESMTPSA id g11-20020a170906348b00b009ad8acac02asm3703327ejb.172.2023.10.19.07.26.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Oct 2023 07:26:49 -0700 (PDT)
Date: Thu, 19 Oct 2023 17:26:46 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Rob Herring <robh@kernel.org>
Cc: Linus Walleij <linus.walleij@linaro.org>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Eric Dumazet <edumazet@google.com>,
	linux-arm-kernel@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Florian Fainelli <f.fainelli@gmail.com>, devicetree@vger.kernel.org,
	Christian Marangi <ansuelsmth@gmail.com>, netdev@vger.kernel.org,
	Paolo Abeni <pabeni@redhat.com>,
	Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
	Gregory Clement <gregory.clement@bootlin.com>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH net-next v4 2/7] dt-bindings: net: mvusb: Fix up DSA
 example
Message-ID: <20231019142646.iw6x72y6sqt4q2uw@skbuf>
References: <20231018-marvell-88e6152-wan-led-v4-0-3ee0c67383be@linaro.org>
 <20231018-marvell-88e6152-wan-led-v4-2-3ee0c67383be@linaro.org>
 <169762516741.391849.18342287891015837205.robh@kernel.org>
 <CACRpkdZff9fbeJdxqudCtjad=FVKTKQtvo_=GiEBOvnw5xQapw@mail.gmail.com>
 <20231019134514.GA193647-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231019134514.GA193647-robh@kernel.org>

On Thu, Oct 19, 2023 at 08:45:14AM -0500, Rob Herring wrote:
> On Wed, Oct 18, 2023 at 01:37:10PM +0200, Linus Walleij wrote:
> > On Wed, Oct 18, 2023 at 12:32 PM Rob Herring <robh@kernel.org> wrote:
> > 
> > > dtschema/dtc warnings/errors:
> > > Documentation/devicetree/bindings/net/marvell,mvusb.example.dtb: /example-0/usb/mdio@1/ethernet-switch@0: failed to match any schema with compatible: ['marvell,mv88e6190']
> > 
> > Isn't that just because the bindings now come last in the series.
> > Which is in response to a review comment, hence this warning
> > didn't appear before.
> 
> Yes. The only option that avoids this is squashing the 2 patches. I 
> think it is fine to leave this as-is.
> 
> Rob

Anyway, I'm surprised that the bot would send this email, since the
warning existed prior to this patch, and I would expect that the bot
only notifies of newly introduced issues.

