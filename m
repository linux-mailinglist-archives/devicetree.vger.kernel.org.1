Return-Path: <devicetree+bounces-10289-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FCF47D0A87
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 10:29:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B2EBFB21328
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 08:29:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D6CE10963;
	Fri, 20 Oct 2023 08:29:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Zd8AjeQ4"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0209110955;
	Fri, 20 Oct 2023 08:29:40 +0000 (UTC)
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B248112;
	Fri, 20 Oct 2023 01:29:39 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-507d7b73b74so728544e87.3;
        Fri, 20 Oct 2023 01:29:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697790577; x=1698395377; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HjHnYS/roHyURAgzXLOkXsDbtDs4sZ8GsZC8irxBauc=;
        b=Zd8AjeQ4qDi1StKGmV5r1XgzlJk/MjRKwv0zkewW3UsVxelTteNEQQlgmSGRYeK1El
         9Kr35/z6ssYaJakFMhMU3k9GMNXZ04h745w4ej7GO08ZW7xqsQ00T1MQRZUPxjFdOzIq
         aTd5OWjVJUZhVUOMnnKx52vXi8qM9Jko7c6XybCQbVc26S1Z3NlAfcFpo3bER/zkPDDx
         VtX3qQ4bqhlbmHi86m5t8HqTLolgRxkq8WU6atEveGkYdsOF+K81OAJlyNkLWMSb7gj3
         7xDDPAYPmEufj8SzsaI3u1yiSFztSZJa1ICbIYbJQRn/I9kPhHF+h2rTxDyZ1GVWG4Um
         2z1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697790577; x=1698395377;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HjHnYS/roHyURAgzXLOkXsDbtDs4sZ8GsZC8irxBauc=;
        b=PtQEv6+JbOJak6eSrXNu3BMbmNx6TEj4pddrQ6hD2y1RKblpDEq4y2I04zaMjBr01/
         MfVAXYf9OwXQvHvP1deieGReZ5GuIOMJhroVw9a9Xxw1QRzSaScae+v4eJ3CU9CUIerG
         QRcEmSgEiSMRQefPWiPwKygYxxwSswWoFPpYZBDk8wXDLGWlyoGS6G+etltektVySFQj
         kk5z21+FQdvoyPyy8yHeMHypHTGirWkqZJKaVyF6KidiIzuvsLeBi5ac4f6ZMK4glda9
         lcxSyhBN2ejdDKa+CinZ3Vqj76qnx3HsWvOlbG10jzocuq+8IH45kA1HYRjD2lMOiX32
         MMqQ==
X-Gm-Message-State: AOJu0YwHxhhj+kMOsU4CBdu0/tdUdy0dn5wRfcPrDRdtmJcaOieK8IPH
	fj6IyymhRe1CloA7QbLlquU=
X-Google-Smtp-Source: AGHT+IGA/e5+nN72zB3XtxDhDZwdP+Bj0yTuHoesZIEDzpmiKotKlFPQ5wsRmuGhTq8XVsjeuPnzzg==
X-Received: by 2002:ac2:4e85:0:b0:507:ab58:7f7a with SMTP id o5-20020ac24e85000000b00507ab587f7amr660874lfr.10.1697790576929;
        Fri, 20 Oct 2023 01:29:36 -0700 (PDT)
Received: from skbuf ([188.26.57.160])
        by smtp.gmail.com with ESMTPSA id k17-20020a5d6291000000b003217cbab88bsm1192220wru.16.2023.10.20.01.29.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Oct 2023 01:29:36 -0700 (PDT)
Date: Fri, 20 Oct 2023 11:29:34 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: "David S. Miller" <davem@davemloft.net>, Andrew Lunn <andrew@lunn.ch>,
	Eric Dumazet <edumazet@google.com>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Woojung Huh <woojung.huh@microchip.com>,
	Arun Ramadoss <arun.ramadoss@microchip.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>, kernel@pengutronix.de,
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
	UNGLinuxDriver@microchip.com,
	"Russell King (Oracle)" <linux@armlinux.org.uk>,
	devicetree@vger.kernel.org
Subject: Re: [PATCH net-next v6 5/9] net: dsa: microchip: ksz9477: Add Wake
 on Magic Packet support
Message-ID: <20231020082934.teh24h557qox5hna@skbuf>
References: <20231019122850.1199821-1-o.rempel@pengutronix.de>
 <20231019122850.1199821-1-o.rempel@pengutronix.de>
 <20231019122850.1199821-6-o.rempel@pengutronix.de>
 <20231019122850.1199821-6-o.rempel@pengutronix.de>
 <20231019172953.ajqtmnnthohnlek7@skbuf>
 <20231020050856.GB3637381@pengutronix.de>
 <20231020082350.f3ttjnn6qfcmskno@skbuf>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231020082350.f3ttjnn6qfcmskno@skbuf>

On Fri, Oct 20, 2023 at 11:23:50AM +0300, Vladimir Oltean wrote:
> On Fri, Oct 20, 2023 at 07:08:56AM +0200, Oleksij Rempel wrote:
> > On Thu, Oct 19, 2023 at 08:29:53PM +0300, Vladimir Oltean wrote:
> > > I don't get it, why do you release the reference on the MAC address as
> > > soon as you successfully get it? Without a reference held, the
> > > programmed address still lingers on, but the HSR offload code, on a
> > > different port with a different MAC address, can change it and break WoL.
> > 
> > It is ksz9477_get_wol() function. We do not actually need to program
> > here the MAC address, we only need to test if we would be able to get
> > it. To show the use more or less correct information on WoL
> > capabilities. For example, instead showing the user that Wake on Magic
> > is supported, where we already know that is not the case, we can already
> > show correct information. May be it will be better to have
> > extra option for ksz_switch_macaddr_get() to not allocate and do the
> > refcounting or have a separate function.
> 
> Ah, yes, it is from get_wol(). Maybe a ksz_switch_macaddr_tryget(ds, port)
> which returns bool (true if dev->switch_macaddr is NULL, or if non-NULL
> and ether_addr_equal(dev->switch_macaddr->addr, port addr))?

Hmm, I've checked other uses of the "tryget" name in the kernel and
their semantics all seem to imply that upon success, a reference is
acquired. That would not be the case here, so the naming would be
confusing. How about a bool ksz_switch_macaddr_check(ds, port)?

